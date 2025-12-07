uint64_t sub_20CD32298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD32308@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v71 = a2;
  v68 = a1;
  v69 = a3;
  v79 = sub_20CD62AB4();
  v78 = *(v79 - 8);
  v3 = MEMORY[0x28223BE20](v79);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v62 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = (&v62 - v10);
  v76 = sub_20CD62654();
  v73 = *(v76 - 8);
  v12 = MEMORY[0x28223BE20](v76);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v62 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v74 = &v62 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v62 - v31;
  sub_20CD62564();
  v75 = v11;
  v33 = v77;
  sub_20CD62A24();
  if (v33)
  {
    return (*(v78 + 8))(v9, v79);
  }

  v77 = v25;
  v64 = v16;
  v65 = v28;
  v62 = v22;
  v63 = v19;
  v66 = v32;
  v35 = v76;
  v36 = *(v78 + 8);
  v37 = v79;
  v36(v9, v79);
  v39 = v74;
  v38 = v75;
  sub_20CD62A84();
  v75 = v36;
  v36(v38, v37);
  v40 = v66;
  v78 = 0;
  sub_20CD62594();
  v41 = (v73 + 8);
  v42 = *(v73 + 8);
  v42(v39, v35);
  v43 = v70;
  sub_20CD62564();
  v44 = v72;
  v45 = v78;
  sub_20CD62A74();
  if (v45)
  {
    v75(v43, v37);
    return (v42)(v40, v35);
  }

  else
  {
    v74 = v41;
    v46 = v75;
    v75(v43, v37);
    v47 = v77;
    sub_20CD62A84();
    v46(v44, v37);
    v48 = v65;
    sub_20CD62614();
    v49 = v76;
    v78 = 0;
    v42(v47, v76);
    sub_20CD42728(&qword_28110F7F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v50 = v68;
    v51 = sub_20CD63204();
    v52 = *(v73 + 16);
    if (v51)
    {
      v53 = v62;
      v54 = v62;
      v55 = v50;
    }

    else
    {
      v56 = v48;
      v53 = v62;
      v54 = v62;
      v55 = v56;
    }

    v52(v54, v55, v49);
    v57 = v49;
    v58 = v66;
    if (sub_20CD63204())
    {
      v59 = v53;
    }

    else
    {
      v59 = v58;
    }

    v60 = v53;
    v61 = v63;
    v52(v63, v59, v57);
    v52(v64, v61, v57);
    v52(v67, v60, v57);
    sub_20CD624D4();
    v42(v61, v57);
    v42(v60, v57);
    v42(v65, v57);
    return (v42)(v66, v57);
  }
}

uint64_t sub_20CD32944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = swift_task_alloc();
  *(v9 + 16) = v14;
  *v14 = v9;
  v14[1] = sub_20CCED908;

  return sub_20CD32A44(a1, a5, a6, a7, a8, v18, v19, a9);
}

uint64_t sub_20CD32A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 144) = a7;
  *(v9 + 152) = v8;
  *(v9 + 705) = v20;
  *(v9 + 704) = a8;
  *(v9 + 128) = a4;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v10 = sub_20CD62C54();
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  v11 = sub_20CD62FD4();
  *(v9 + 184) = v11;
  *(v9 + 192) = *(v11 - 8);
  *(v9 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F20, &qword_20CD64960);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v12 = sub_20CD62654();
  *(v9 + 224) = v12;
  *(v9 + 232) = *(v12 - 8);
  *(v9 + 240) = swift_task_alloc();
  v13 = sub_20CD62AB4();
  *(v9 + 248) = v13;
  *(v9 + 256) = *(v13 - 8);
  *(v9 + 264) = swift_task_alloc();
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
  v14 = sub_20CD629A4();
  *(v9 + 384) = v14;
  *(v9 + 392) = *(v14 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v15 = sub_20CD62F24();
  *(v9 + 424) = v15;
  *(v9 + 432) = *(v15 - 8);
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  v16 = sub_20CD62E74();
  *(v9 + 464) = v16;
  *(v9 + 472) = *(v16 - 8);
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  v17 = sub_20CD62514();
  *(v9 + 504) = v17;
  *(v9 + 512) = *(v17 - 8);
  *(v9 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD32ED8, 0, 0);
}

uint64_t sub_20CD32ED8()
{
  v22 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[14];
  v5 = sub_20CD631B4();
  v0[66] = __swift_project_value_buffer(v5, qword_28110F878);
  (*(v3 + 16))(v1, v4, v2);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[65];
  v10 = v0[63];
  v11 = v0[64];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_20CD42728(&qword_28110F7F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v14 = sub_20CD63574();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_20CD6153C(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Querying next batch with dateInterval = %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F3115B0](v13, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v0[67] = type metadata accessor for SnapshotProcessor(0);
  v18 = swift_task_alloc();
  v0[68] = v18;
  *v18 = v0;
  v18[1] = sub_20CD33168;
  v19 = v0[14];

  return sub_20CD4DBF4(v19, 0);
}

uint64_t sub_20CD33168(uint64_t a1)
{
  v3 = *v2;
  v3[69] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v3[70] = v6;
    *v6 = v3;
    v6[1] = sub_20CD3347C;
    v7 = v3[18];
    v8 = v3[14];

    return sub_20CD546C8(v8, v7);
  }
}

uint64_t sub_20CD3347C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 568) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v4 = sub_20CD36474;
  }

  else
  {
    v4 = sub_20CD33594;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD33594()
{
  v1 = sub_20CD55174(v0[69]);
  v0[73] = v1;
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = sub_20CD33658;
  v3 = v0[17];
  v4 = v0[14];

  return sub_20CD51014(v4, v3, v1);
}

uint64_t sub_20CD33658(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v5 = sub_20CD36660;
  }

  else
  {

    *(v4 + 608) = a1;
    v5 = sub_20CD33788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD33788()
{
  v171 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);
  v159 = *(v0 + 240);
  v3 = *(v0 + 232);
  v167 = *(v0 + 224);
  v144 = *(v0 + 608);
  *(v0 + 80) = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F28, &qword_20CD64968);
  sub_20CD42500(&qword_28110F180, &qword_27C810F28, &qword_20CD64968);
  sub_20CD42728(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
  *(v0 + 616) = sub_20CD632B4();

  *(v0 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F30, &qword_20CD64970);
  sub_20CD42500(&qword_28110F188, &qword_27C810F30, &qword_20CD64970);
  *(v0 + 624) = sub_20CD632B4();

  *(v0 + 96) = v144;
  v141 = (v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F38, &qword_20CD64978);
  sub_20CD42500(&qword_28110F178, &qword_27C810F38, &qword_20CD64978);
  v163 = v1;
  *(v0 + 632) = sub_20CD632B4();

  sub_20CD62C14();
  sub_20CD62C24();
  sub_20CD62C34();
  sub_20CD624E4();
  sub_20CD62564();
  v4 = *(v3 + 8);
  *(v0 + 640) = v4;
  *(v0 + 648) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v159, v167);
  swift_beginAccess();
  while (1)
  {
    v5 = *(v0 + 640);
    v6 = *(v0 + 368);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    sub_20CD624C4();
    sub_20CD62564();
    v5(v9, v10);
    sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    v11 = sub_20CD63224();
    v12 = *(v8 + 8);
    *(v0 + 656) = v12;
    *(v0 + 664) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v6, v7);
    v160 = v12;
    if ((v11 & 1) == 0)
    {
      v105 = *(v0 + 496);
      v107 = *(v0 + 472);
      v106 = *(v0 + 480);
      v108 = *(v0 + 464);
      v135 = *(v0 + 440);
      v136 = *(v0 + 456);
      v109 = *(v0 + 424);
      v110 = *(v0 + 432);
      v111 = *(v0 + 392);
      v137 = *(v0 + 400);
      v138 = *(v0 + 416);
      v112 = *(v0 + 384);
      v140 = *(v0 + 376);
      v139 = *(v0 + 248);

      (*(v107 + 16))(v106, v105, v108);
      (*(v110 + 16))(v135, v136, v109);
      (*(v111 + 16))(v137, v138, v112);
      sub_20CD62C04();
      (*(v111 + 8))(v138, v112);
      (*(v110 + 8))(v136, v109);
      (*(v107 + 8))(v105, v108);
      v160(v140, v139);

      v113 = *(v0 + 8);
      goto LABEL_42;
    }

    v13 = sub_20CD63194();
    v14 = sub_20CD633D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v170[0] = v16;
      *v15 = 136315138;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v17 = sub_20CD63574();
      v19 = sub_20CD6153C(v17, v18, v170);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20CCEA000, v13, v14, "Processing %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F3115B0](v16, -1, -1);
      MEMORY[0x20F3115B0](v15, -1, -1);
    }

    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v23 + 16);
    *(v0 + 672) = v24;
    *(v0 + 680) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v21, v20, v22);
    v142 = sub_20CD62A44();
    if (v163)
    {
      v165 = *(v0 + 496);
      v114 = *(v0 + 472);
      v115 = *(v0 + 432);
      v148 = *(v0 + 424);
      v151 = *(v0 + 456);
      v116 = *(v0 + 392);
      v145 = *(v0 + 384);
      v146 = *(v0 + 416);
      v154 = *(v0 + 376);
      v157 = *(v0 + 464);
      v117 = *(v0 + 360);
      v118 = *(v0 + 248);

      v12(v117, v118);
      (*(v116 + 8))(v146, v145);
      (*(v115 + 8))(v151, v148);
      (*(v114 + 8))(v165, v157);
      v12(v154, v118);
      goto LABEL_41;
    }

    v25 = *(v0 + 376);
    v26 = *(v0 + 352);
    v27 = *(v0 + 248);
    v12(*(v0 + 360), v27);
    v24(v26, v25, v27);
    sub_20CD62564();
    v150 = sub_20CD62A94();
    v28 = *(v0 + 624);
    v29 = *(v0 + 376);
    v30 = *(v0 + 352);
    v31 = *(v0 + 336);
    v32 = *(v0 + 248);
    v12(*(v0 + 344), v32);
    v33 = (v12)(v30, v32);
    v34 = MEMORY[0x20F311060](v33);
    v35 = v24;
    v36 = v34;
    v168 = v35;
    v35(v31, v29, v32);
    if (!*(v28 + 16) || (v37 = sub_20CD52DAC(*(v0 + 336)), (v38 & 1) == 0))
    {
      v12(*(v0 + 336), *(v0 + 248));
LABEL_11:
      v42 = 1;
      goto LABEL_12;
    }

    v39 = *(v0 + 336);
    v40 = *(v0 + 248);
    v41 = *(*(*(v0 + 624) + 56) + 8 * v37);

    v12(v39, v40);
    if (!*(v41 + 16))
    {

      goto LABEL_11;
    }

    (*(*(v0 + 192) + 16))(*(v0 + 216), v41 + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)), *(v0 + 184));

    v42 = 0;
LABEL_12:
    v43 = *(v0 + 616);
    v44 = *(v0 + 376);
    v45 = *(v0 + 328);
    v46 = *(v0 + 248);
    (*(*(v0 + 192) + 56))(*(v0 + 216), v42, 1, *(v0 + 184));
    v168(v45, v44, v46);
    if (*(v43 + 16) && (v47 = sub_20CD52DAC(*(v0 + 328)), (v48 & 1) != 0))
    {
      v156 = *(*(*(v0 + 616) + 56) + 8 * v47);
    }

    else
    {
      v156 = MEMORY[0x277D84F90];
    }

    v49 = *(v0 + 632);
    v50 = *(v0 + 376);
    v51 = *(v0 + 320);
    v52 = *(v0 + 248);
    v12(*(v0 + 328), v52);
    v168(v51, v50, v52);
    if (*(v49 + 16) && (v53 = sub_20CD52DAC(*(v0 + 320)), (v54 & 1) != 0))
    {
      v153 = *(*(*(v0 + 632) + 56) + 8 * v53);
    }

    else
    {
      v153 = MEMORY[0x277D84F90];
    }

    v55 = *(v0 + 216);
    v56 = *(v0 + 184);
    v57 = *(v0 + 192);
    v12(*(v0 + 320), *(v0 + 248));
    v58 = *(v57 + 48);
    v147 = v36;
    if (v58(v55, 1, v56) != 1 || *(v156 + 16) || (*(v153 + 16) != 0) | (*(v0 + 704) | v142) & 1 || v150 <= 89)
    {
      v59 = *(v0 + 208);
      v60 = *(v0 + 184);
      sub_20CD1D9A8(*(v0 + 216), v59, &qword_27C810F20, &qword_20CD64960);
      v61 = v58(v59, 1, v60);
      v62 = *(v0 + 184);
      if (v61 == 1)
      {
        v63 = *(v0 + 208);
        sub_20CD62FC4();
        if (v58(v63, 1, v62) != 1)
        {
          sub_20CD1DA10(*(v0 + 208), &qword_27C810F20, &qword_20CD64960);
        }
      }

      else
      {
        (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 208), *(v0 + 184));
      }

      v64 = *(v0 + 192);
      v65 = *(v0 + 200);
      v66 = *(v0 + 184);
      v168(*(v0 + 296), *(v0 + 376), *(v0 + 248));
      *(v0 + 40) = v66;
      *(v0 + 48) = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
      (*(v64 + 16))(boxed_opaque_existential_1, v65, v66);
      sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410], MEMORY[0x277D0A408]);
      sub_20CD62F64();
      v69 = *(v0 + 488);
      v68 = *(v0 + 496);
      v71 = *(v0 + 464);
      v70 = *(v0 + 472);
      v72 = *(v0 + 376);
      v73 = *(v0 + 288);
      v74 = *(v0 + 248);
      v12(*(v0 + 296), v74);
      (*(v70 + 8))(v68, v71);
      __swift_destroy_boxed_opaque_existential_0(v141);
      (*(v70 + 32))(v68, v69, v71);
      v168(v73, v72, v74);
      sub_20CD551BC(v156);

      sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578], MEMORY[0x277D0A570]);
      sub_20CD62F74();
      v75 = *(v0 + 456);
      v77 = *(v0 + 424);
      v76 = *(v0 + 432);
      v143 = *(v0 + 448);
      v78 = *(v0 + 376);
      v79 = *(v0 + 280);
      v80 = *(v0 + 288);
      v81 = *(v0 + 248);

      v160(v80, v81);
      (*(v76 + 8))(v75, v77);
      (*(v76 + 32))(v75, v143, v77);
      v168(v79, v78, v81);
      sub_20CD55408(v153);

      sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28], MEMORY[0x277D09F20]);
      sub_20CD62F74();
      v82 = *(v0 + 416);
      v84 = *(v0 + 384);
      v83 = *(v0 + 392);
      v85 = *(v0 + 280);
      v86 = *(v0 + 248);
      v164 = *(v0 + 216);
      v169 = *(v0 + 408);
      v87 = *(v0 + 192);
      v88 = *(v0 + 200);
      v89 = *(v0 + 184);

      v160(v85, v86);
      (*(v87 + 8))(v88, v89);
      (*(v83 + 8))(v82, v84);
      sub_20CD1DA10(v164, &qword_27C810F20, &qword_20CD64960);
      (*(v83 + 32))(v82, v169, v84);
      v36 = v147;
    }

    else
    {
      v97 = *(v0 + 376);
      v98 = *(v0 + 304);
      v99 = *(v0 + 248);

      v168(v98, v97, v99);
      sub_20CD62A24();
      v100 = *(v0 + 248);
      v101 = *(v0 + 216);
      v102 = *(v0 + 376);
      v103 = *(v0 + 312);
      v104 = *(v0 + 256);
      v12(*(v0 + 304), v100);
      sub_20CD1DA10(v101, &qword_27C810F20, &qword_20CD64960);
      (*(v104 + 40))(v102, v103, v100);
    }

    *(v0 + 688) = 0;
    v90 = *(v0 + 705);
    objc_autoreleasePoolPop(v36);
    if (v90 == 1)
    {
      if (v142 & 1 | (v150 < 90))
      {
        break;
      }
    }

    v91 = *(v0 + 688);
    (*(v0 + 672))(*(v0 + 264), *(v0 + 376), *(v0 + 248));
    sub_20CD62A24();
    v92 = *(v0 + 656);
    if (v91)
    {
      v166 = *(v0 + 496);
      v130 = *(v0 + 472);
      v131 = *(v0 + 432);
      v155 = *(v0 + 424);
      v158 = *(v0 + 456);
      v132 = *(v0 + 392);
      v149 = *(v0 + 384);
      v152 = *(v0 + 416);
      v161 = *(v0 + 376);
      v162 = *(v0 + 464);
      v133 = *(v0 + 264);
      v134 = *(v0 + 248);

      v92(v133, v134);
      (*(v132 + 8))(v152, v149);
      (*(v131 + 8))(v158, v155);
      (*(v130 + 8))(v166, v162);
      v92(v161, v134);
LABEL_41:

      v113 = *(v0 + 8);
LABEL_42:

      return v113();
    }

    v93 = *(v0 + 376);
    v94 = *(v0 + 272);
    v95 = *(v0 + 248);
    v96 = *(v0 + 256);
    v92(*(v0 + 264), v95);
    (*(v96 + 40))(v93, v94, v95);
    v163 = 0;
  }

  v119 = *(v0 + 456);
  v121 = *(v0 + 432);
  v120 = *(v0 + 440);
  v123 = *(v0 + 416);
  v122 = *(v0 + 424);
  v125 = *(v0 + 392);
  v124 = *(v0 + 400);
  v126 = *(v0 + 384);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 496), *(v0 + 464));
  (*(v121 + 16))(v120, v119, v122);
  (*(v125 + 16))(v124, v123, v126);
  sub_20CD62C04();
  v127 = swift_task_alloc();
  *(v0 + 696) = v127;
  *v127 = v0;
  v127[1] = sub_20CD34E84;
  v128 = *(v0 + 176);

  return sub_20CD36A68(v128);
}

uint64_t sub_20CD34E84()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20CD34FDC, 0, 0);
}

uint64_t sub_20CD34FDC()
{
  v150 = v0;
  while (1)
  {
    v1 = *(v0 + 688);
    (*(v0 + 672))(*(v0 + 264), *(v0 + 376), *(v0 + 248));
    sub_20CD62A24();
    v2 = *(v0 + 656);
    if (v1)
    {
      v100 = *(v0 + 472);
      v145 = *(v0 + 464);
      v148 = *(v0 + 496);
      v101 = *(v0 + 432);
      v139 = *(v0 + 424);
      v140 = *(v0 + 456);
      v102 = *(v0 + 392);
      v135 = *(v0 + 384);
      v137 = *(v0 + 416);
      v142 = *(v0 + 376);
      v103 = *(v0 + 264);
      v104 = *(v0 + 248);

      v2(v103, v104);
      (*(v102 + 8))(v137, v135);
      (*(v101 + 8))(v140, v139);
      (*(v100 + 8))(v148, v145);
      v2(v142, v104);

      v124 = *(v0 + 8);
      goto LABEL_39;
    }

    v3 = *(v0 + 376);
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v2(*(v0 + 264), v5);
    (*(v6 + 40))(v3, v4, v5);
    v7 = *(v0 + 640);
    v8 = *(v0 + 368);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);
    sub_20CD624C4();
    sub_20CD62564();
    v7(v11, v12);
    sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    LOBYTE(v3) = sub_20CD63224();
    v13 = *(v10 + 8);
    *(v0 + 656) = v13;
    *(v0 + 664) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v8, v9);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v14 = sub_20CD63194();
    v15 = sub_20CD633D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v149[0] = v17;
      *v16 = 136315138;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v18 = sub_20CD63574();
      v20 = sub_20CD6153C(v18, v19, v149);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20CCEA000, v14, v15, "Processing %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F3115B0](v17, -1, -1);
      MEMORY[0x20F3115B0](v16, -1, -1);
    }

    v21 = *(v0 + 376);
    v22 = *(v0 + 360);
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    v25 = *(v24 + 16);
    *(v0 + 672) = v25;
    *(v0 + 680) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v22, v21, v23);
    v131 = sub_20CD62A44();
    v146 = v25;
    v26 = *(v0 + 376);
    v27 = *(v0 + 352);
    v28 = *(v0 + 248);
    v13(*(v0 + 360), v28);
    v25(v27, v26, v28);
    sub_20CD62564();
    v134 = sub_20CD62A94();
    v29 = *(v0 + 624);
    v30 = *(v0 + 376);
    v31 = *(v0 + 352);
    v32 = *(v0 + 336);
    v33 = *(v0 + 248);
    v13(*(v0 + 344), v33);
    v34 = (v13)(v31, v33);
    v35 = MEMORY[0x20F311060](v34);
    v36 = v33;
    v37 = v25;
    v25(v32, v30, v36);
    if (*(v29 + 16) && (v38 = sub_20CD52DAC(*(v0 + 336)), (v39 & 1) != 0))
    {
      v40 = *(v0 + 336);
      v41 = *(v0 + 248);
      v42 = *(*(*(v0 + 624) + 56) + 8 * v38);

      v13(v40, v41);
      if (*(v42 + 16))
      {
        (*(*(v0 + 192) + 16))(*(v0 + 216), v42 + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)), *(v0 + 184));

        v43 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13(*(v0 + 336), *(v0 + 248));
    }

    v43 = 1;
LABEL_12:
    v44 = *(v0 + 616);
    v45 = *(v0 + 376);
    v46 = *(v0 + 328);
    v47 = *(v0 + 248);
    (*(*(v0 + 192) + 56))(*(v0 + 216), v43, 1, *(v0 + 184));
    v37(v46, v45, v47);
    if (*(v44 + 16) && (v48 = sub_20CD52DAC(*(v0 + 328)), (v49 & 1) != 0))
    {
      v138 = *(*(*(v0 + 616) + 56) + 8 * v48);
    }

    else
    {
      v138 = MEMORY[0x277D84F90];
    }

    v50 = *(v0 + 632);
    v51 = *(v0 + 376);
    v52 = *(v0 + 320);
    v53 = *(v0 + 248);
    v13(*(v0 + 328), v53);
    v146(v52, v51, v53);
    if (*(v50 + 16) && (v54 = sub_20CD52DAC(*(v0 + 320)), (v55 & 1) != 0))
    {
      v136 = *(*(*(v0 + 632) + 56) + 8 * v54);
    }

    else
    {
      v136 = MEMORY[0x277D84F90];
    }

    v56 = *(v0 + 216);
    v58 = *(v0 + 184);
    v57 = *(v0 + 192);
    v13(*(v0 + 320), *(v0 + 248));
    v59 = *(v57 + 48);
    v133 = v35;
    if (v59(v56, 1, v58) != 1 || *(v138 + 16) || (*(v136 + 16) != 0) | (*(v0 + 704) | v131) & 1 || v134 <= 89)
    {
      v60 = *(v0 + 208);
      v61 = *(v0 + 184);
      sub_20CD1D9A8(*(v0 + 216), v60, &qword_27C810F20, &qword_20CD64960);
      v62 = v59(v60, 1, v61);
      v63 = *(v0 + 184);
      if (v62 == 1)
      {
        v141 = v13;
        v64 = *(v0 + 208);
        sub_20CD62FC4();
        if (v59(v64, 1, v63) != 1)
        {
          sub_20CD1DA10(*(v0 + 208), &qword_27C810F20, &qword_20CD64960);
        }
      }

      else
      {
        v141 = v13;
        (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 208), v63);
      }

      v65 = *(v0 + 192);
      v66 = *(v0 + 200);
      v67 = *(v0 + 184);
      v146(*(v0 + 296), *(v0 + 376), *(v0 + 248));
      *(v0 + 40) = v67;
      *(v0 + 48) = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(v65 + 16))(boxed_opaque_existential_1, v66, v67);
      sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410], MEMORY[0x277D0A408]);
      sub_20CD62F64();
      v70 = *(v0 + 488);
      v69 = *(v0 + 496);
      v72 = *(v0 + 464);
      v71 = *(v0 + 472);
      v73 = *(v0 + 376);
      v74 = *(v0 + 288);
      v75 = *(v0 + 248);
      v141(*(v0 + 296), v75);
      (*(v71 + 8))(v69, v72);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      (*(v71 + 32))(v69, v70, v72);
      v146(v74, v73, v75);
      sub_20CD551BC(v138);

      sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578], MEMORY[0x277D0A570]);
      sub_20CD62F74();
      v76 = *(v0 + 456);
      v78 = *(v0 + 424);
      v77 = *(v0 + 432);
      v132 = *(v0 + 448);
      v79 = *(v0 + 376);
      v81 = *(v0 + 280);
      v80 = *(v0 + 288);
      v82 = *(v0 + 248);

      v141(v80, v82);
      (*(v77 + 8))(v76, v78);
      (*(v77 + 32))(v76, v132, v78);
      v146(v81, v79, v82);
      sub_20CD55408(v136);

      sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28], MEMORY[0x277D09F20]);
      sub_20CD62F74();
      v83 = *(v0 + 416);
      v85 = *(v0 + 384);
      v84 = *(v0 + 392);
      v86 = *(v0 + 280);
      v87 = *(v0 + 248);
      v144 = *(v0 + 216);
      v147 = *(v0 + 408);
      v88 = *(v0 + 192);
      v89 = *(v0 + 200);
      v90 = *(v0 + 184);

      v141(v86, v87);
      (*(v88 + 8))(v89, v90);
      (*(v84 + 8))(v83, v85);
      sub_20CD1DA10(v144, &qword_27C810F20, &qword_20CD64960);
      (*(v84 + 32))(v83, v147, v85);
    }

    else
    {
      v92 = *(v0 + 376);
      v93 = *(v0 + 304);
      v94 = *(v0 + 248);

      v146(v93, v92, v94);
      sub_20CD62A24();
      v95 = *(v0 + 248);
      v96 = *(v0 + 216);
      v97 = *(v0 + 376);
      v98 = *(v0 + 312);
      v99 = *(v0 + 256);
      v13(*(v0 + 304), v95);
      sub_20CD1DA10(v96, &qword_27C810F20, &qword_20CD64960);
      (*(v99 + 40))(v97, v98, v95);
    }

    *(v0 + 688) = 0;
    v91 = *(v0 + 705);
    objc_autoreleasePoolPop(v133);
    if (v91 == 1 && v131 & 1 | (v134 < 90))
    {
      v113 = *(v0 + 456);
      v115 = *(v0 + 432);
      v114 = *(v0 + 440);
      v117 = *(v0 + 416);
      v116 = *(v0 + 424);
      v119 = *(v0 + 392);
      v118 = *(v0 + 400);
      v120 = *(v0 + 384);
      (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 496), *(v0 + 464));
      (*(v115 + 16))(v114, v113, v116);
      (*(v119 + 16))(v118, v117, v120);
      sub_20CD62C04();
      v121 = swift_task_alloc();
      *(v0 + 696) = v121;
      *v121 = v0;
      v121[1] = sub_20CD34E84;
      v122 = *(v0 + 176);

      return sub_20CD36A68(v122);
    }
  }

  v105 = *(v0 + 496);
  v107 = *(v0 + 472);
  v106 = *(v0 + 480);
  v108 = *(v0 + 464);
  v125 = *(v0 + 440);
  v126 = *(v0 + 456);
  v109 = *(v0 + 424);
  v110 = *(v0 + 432);
  v127 = *(v0 + 400);
  v128 = *(v0 + 416);
  v143 = v13;
  v111 = *(v0 + 384);
  v112 = *(v0 + 392);
  v130 = *(v0 + 376);
  v129 = *(v0 + 248);

  (*(v107 + 16))(v106, v105, v108);
  (*(v110 + 16))(v125, v126, v109);
  (*(v112 + 16))(v127, v128, v111);
  sub_20CD62C04();
  (*(v112 + 8))(v128, v111);
  (*(v110 + 8))(v126, v109);
  (*(v107 + 8))(v105, v108);
  v143(v130, v129);

  v124 = *(v0 + 8);
LABEL_39:

  return v124();
}

uint64_t sub_20CD36474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD36660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD36890@<X0>(uint64_t a1@<X8>)
{
  sub_20CD62FB4();
  v2 = sub_20CD62AB4();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t sub_20CD36934@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20CD62654();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  sub_20CD62564();
  (*(v5 + 8))(v8, v4);
  v9 = sub_20CD62AB4();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

uint64_t sub_20CD36A68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CD62AB4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20CD62C54();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD36B84, 0, 0);
}

uint64_t sub_20CD36B84()
{
  v1 = v0[3];
  v2 = type metadata accessor for SnapshotProcessor(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_20CD36C38;
  v4 = v0[2];

  return sub_20CD1E3C8(v4);
}

uint64_t sub_20CD36C38()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD36D80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20CD36D80()
{
  v32 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = sub_20CD631B4();
  __swift_project_value_buffer(v6, qword_28110F878);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v10)
  {
    v30 = v9;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 32);
    v28 = *(v0 + 88);
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v17 = 136315394;
    v26 = v8;
    sub_20CD62BF4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v18 = sub_20CD63574();
    v20 = v19;
    (*(v14 + 8))(v15, v16);
    (*(v11 + 8))(v12, v13);
    v21 = sub_20CD6153C(v18, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v28;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v27 = v23;
    _os_log_impl(&dword_20CCEA000, v26, v30, "Failed to save snapshot %s: %@", v17, 0x16u);
    sub_20CD1DA10(v27, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F3115B0](v29, -1, -1);
    MEMORY[0x20F3115B0](v17, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20CD37094(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62B44();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F80, &qword_20CD64A20);
  v2[21] = swift_task_alloc();
  v5 = sub_20CD62CE4();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_20CD62D24();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_20CD626F4();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_20CD62654();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v9 = sub_20CD62EF4();
  v2[40] = v9;
  v2[41] = *(v9 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v2[46] = swift_task_alloc();
  v10 = sub_20CD62AB4();
  v2[47] = v10;
  v2[48] = *(v10 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v11 = sub_20CD62E94();
  v2[54] = v11;
  v2[55] = *(v11 - 8);
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3761C, 0, 0);
}

uint64_t sub_20CD3761C()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for SnapshotProcessor(0) + 20);
  *(v0 + 560) = v2;
  v3 = __swift_project_boxed_opaque_existential_1((v1 + v2), *(v1 + v2 + 24));
  *(v0 + 456) = sub_20CD62E74();
  *(v0 + 464) = sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410], MEMORY[0x277D0A408]);
  sub_20CD62F44();
  v4 = *v3;
  *(v0 + 472) = *v3;

  return MEMORY[0x2822009F8](sub_20CD3770C, v4, 0);
}

uint64_t sub_20CD37734()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[62] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v4 = v0;
  v4[1] = sub_20CD37840;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v5);
}

uint64_t sub_20CD37840()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_20CD38888;
  }

  else
  {

    v2 = sub_20CD3795C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3795C()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v94 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v94;
    v7 = *(v6 + 16);
    v6 += 16;
    v86 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v88 = *(v6 + 56);
    v90 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[42];
      v11 = v1[40];
      v90(v10, v8, v11);
      sub_20CD62EC4();
      (*v9)(v10, v11);
      v13 = *(v94 + 16);
      v12 = *(v94 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CD46B04((v12 > 1), v13 + 1, 1);
      }

      v14 = v1[49];
      v15 = v1[47];
      *(v94 + 16) = v13 + 1;
      (*(v5 + 32))(v94 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      v8 += v88;
      --v3;
    }

    while (v3);
    v2 = v86;
  }

  v16 = v1[47];
  v17 = v1[48];
  v18 = v1;
  v19 = v1[46];
  sub_20CD3F9E0(v4, v19);

  if ((*(v17 + 48))(v19, 1, v16) == 1)
  {
    v20 = v1[46];

    sub_20CD1DA10(v20, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v18[57] - 8) + 56))(v18[3], 1, 1);

    v21 = v18[1];
LABEL_12:

    return v21();
  }

  v22 = v1[63];
  v23 = v1[53];
  v24 = v1[39];
  v25 = v1[4];
  (*(v1[48] + 32))(v23, v1[46], v1[47]);
  v26 = swift_task_alloc();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  sub_20CD52264(sub_20CD42770, v2, v24);
  if (v22)
  {
    v27 = v1[53];
    v29 = v1[47];
    v28 = v1[48];

    (*(v28 + 8))(v27, v29);

    v21 = v1[1];
    goto LABEL_12;
  }

  v32 = v1[40];
  v31 = v1[41];
  v33 = v18[39];

  v34 = *(v31 + 48);
  v35 = v34(v33, 1, v32);
  v36 = v18[53];
  if (v35 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[39];
LABEL_17:

    sub_20CD1DA10(v39, &qword_27C810F68, &unk_20CD649F0);
    (*(v38 + 8))(v36, v37);
    goto LABEL_9;
  }

  v40 = v18[38];
  v41 = v18[4];
  v42 = *(v18[41] + 32);
  (v42)(v18[45], v18[39], v18[40]);
  v43 = swift_task_alloc();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_20CD52264(sub_20CD4278C, v2, v40);
  v44 = v18[40];
  v45 = v18[38];

  v46 = v34(v45, 1, v44);
  v36 = v18[53];
  if (v46 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[38];
    (*(v18[41] + 8))(v18[45], v18[40]);
    goto LABEL_17;
  }

  v91 = v18[40];
  v47 = v18[37];
  v42(v18[44], v18[38]);
  *(swift_task_alloc() + 16) = v36;
  sub_20CD52264(sub_20CD427AC, v2, v47);

  v48 = v34(v47, 1, v91);
  v49 = v18[53];
  if (v48 == 1)
  {
    v50 = v18[47];
    v51 = v18[48];
    v52 = v18[45];
    v53 = v18[40];
    v54 = v18[37];
    v55 = *(v18[41] + 8);
    v55(v18[44], v53);
    v55(v52, v53);
    sub_20CD1DA10(v54, &qword_27C810F68, &unk_20CD649F0);
    (*(v51 + 8))(v49, v50);
    goto LABEL_9;
  }

  (v42)(v18[43], v18[37], v18[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v79 = v18[45];
  v74 = v18[44];
  v77 = v18[43];
  v92 = v18[41];
  v82 = v18[40];
  v56 = v18[35];
  v57 = v18[36];
  v58 = v18[34];
  v59 = v18[30];
  v89 = v18[29];
  v73 = v18[28];
  v75 = v18[27];
  v60 = v18[25];
  v93 = v18[26];
  v62 = v18[23];
  v61 = v18[24];
  v64 = v18[21];
  v63 = v18[22];
  v76 = (v18[4] + *(v18 + 140));
  (*(v18[32] + 8))(v18[33], v18[31]);
  v87 = *(v56 + 16);
  v87(v61, v57, v58);
  v85 = *(v62 + 104);
  v85(v61, *MEMORY[0x277D0A2D0], v63);
  v84 = sub_20CD62FE4();
  v83 = *(*(v84 - 8) + 56);
  v78 = v64;
  v83(v64, 1, 1, v84);
  sub_20CD62FA4();
  sub_20CD42728(&qword_28110F660, MEMORY[0x277D0A610], MEMORY[0x277D0A618]);
  sub_20CD632F4();
  sub_20CD62B84();
  sub_20CD42728(&qword_28110F740, MEMORY[0x277D0A1B8], MEMORY[0x277D0A1C8]);
  sub_20CD632F4();
  v65 = v59;
  sub_20CD42728(&qword_28110F6E0, MEMORY[0x277D0A388], MEMORY[0x277D0A380]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v66 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20CD64880;
  v92 += 16;
  v81 = *v92;
  (*v92)(v67 + v66, v79, v82);
  v80 = *(v93 + 16);
  v80(v89, v65, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A2B0], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20CD64880;
  v81(v68 + v66, v74, v82);
  v80(v89, v73, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A290], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20CD64880;
  v81(v69 + v66, v77, v82);
  v80(v89, v75, v60);
  sub_20CD62BB4();
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v70 = swift_task_alloc();
  v18[64] = v70;
  *v70 = v18;
  v70[1] = sub_20CD38B7C;
  v71 = v18[20];
  v72 = v18[15];

  return sub_20CD1903C(v72, v71);
}

uint64_t sub_20CD38888()
{
  v1 = *(v0 + 472);

  return MEMORY[0x2822009F8](sub_20CD388F4, v1, 0);
}

uint64_t sub_20CD388F4()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  return MEMORY[0x2822009F8](sub_20CD3896C, 0, 0);
}

uint64_t sub_20CD3896C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD38B7C()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_20CD38E68;
  }

  else
  {
    v2 = sub_20CD38C90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD38C90()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  v2[1] = sub_20CD38D54;
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);

  return sub_20CD1903C(v4, v3);
}

uint64_t sub_20CD38D54()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_20CD39388;
  }

  else
  {
    v2 = sub_20CD391B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD38E68()
{
  v23 = v0[47];
  v24 = v0[53];
  v21 = v0[45];
  v22 = v0[48];
  v19 = v0[43];
  v20 = v0[44];
  v1 = v0[41];
  v18 = v0[40];
  v2 = v0[35];
  v16 = v0[34];
  v17 = v0[36];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[26];
  v14 = v0[20];
  v15 = v0[30];
  v12 = v0[19];
  v13 = v0[28];
  v6 = v0[16];
  v7 = *(v0[17] + 8);
  v7(v0[18], v6);
  v8 = *(v5 + 8);
  v8(v3, v4);
  v7(v12, v6);
  v8(v13, v4);
  v7(v14, v6);
  v8(v15, v4);
  (*(v2 + 8))(v17, v16);
  v9 = *(v1 + 8);
  v9(v19, v18);
  v9(v20, v18);
  v9(v21, v18);
  (*(v22 + 8))(v24, v23);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20CD391B0()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_20CD39274;
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);

  return sub_20CD1903C(v4, v3);
}

uint64_t sub_20CD39274()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_20CD39EB4;
  }

  else
  {
    v2 = sub_20CD396EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD39388()
{
  v25 = v0[47];
  v26 = v0[53];
  v23 = v0[45];
  v24 = v0[48];
  v21 = v0[43];
  v22 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v20 = v0[36];
  v18 = v0[30];
  v19 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v16 = v0[28];
  v17 = v0[20];
  v14 = v0[27];
  v15 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810E28, &unk_20CD64A10);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v14, v4);
  v9(v15, v8);
  v10(v16, v4);
  v9(v17, v8);
  v10(v18, v4);
  (*(v3 + 8))(v20, v19);
  v11 = *(v2 + 8);
  v11(v21, v1);
  v11(v22, v1);
  v11(v23, v1);
  (*(v24 + 8))(v26, v25);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD396EC()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810E28, &unk_20CD64A10);
  v6 = *(v4 + 48);
  v57 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v8 = v0[50];
    v9 = v0[47];
    v53 = v0[12];
    v10 = v0[5];
    sub_20CD62EE4();
    v5(v8, v7, v9);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v53, 1, v10) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v11 = v0[11];
  v12 = v0[5];
  sub_20CD1D9A8(v0[14], v11, &qword_27C810E28, &unk_20CD64A10);
  if (v6(v11, 1, v12) == 1)
  {
    v13 = v0[53];
    v14 = v0[50];
    v15 = v0[47];
    v54 = v0[11];
    v16 = v0[5];
    sub_20CD62EE4();
    v5(v14, v13, v15);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v54, 1, v16) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v17 = v0[10];
  v18 = v0[5];
  sub_20CD1D9A8(v0[13], v17, &qword_27C810E28, &unk_20CD64A10);
  if (v6(v17, 1, v18) == 1)
  {
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v5;
    v55 = v0[10];
    v23 = v0[5];
    v22(v0[51], v19, v21);
    v22(v20, v19, v21);
    sub_20CD42728(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62C74();
    if (v57(v55, 1, v23) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810E28, &unk_20CD64A10);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v24 = v0[57];
  v56 = v0[47];
  v58 = v0[53];
  v51 = v0[45];
  v52 = v0[48];
  v49 = v0[43];
  v50 = v0[44];
  v25 = v0[41];
  v48 = v0[40];
  v45 = v0[34];
  v46 = v0[36];
  v43 = v0[30];
  v44 = v0[35];
  v26 = v0[25];
  v27 = v0[26];
  v41 = v0[28];
  v42 = v0[20];
  v39 = v0[27];
  v40 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v37 = v0[15];
  v38 = v0[18];
  v30 = v0[13];
  v36 = v0[14];
  v47 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v30, &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v36, &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v37, &qword_27C810E28, &unk_20CD64A10);
  v31 = *(v28 + 8);
  v31(v38, v29);
  v32 = *(v27 + 8);
  v32(v39, v26);
  v31(v40, v29);
  v32(v41, v26);
  v31(v42, v29);
  v32(v43, v26);
  (*(v44 + 8))(v46, v45);
  v33 = *(v25 + 8);
  v33(v49, v48);
  v33(v50, v48);
  v33(v51, v48);
  (*(*(v24 - 8) + 56))(v47, 0, 1, v24);
  (*(v52 + 8))(v58, v56);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20CD39EB4()
{
  v26 = v0[47];
  v27 = v0[53];
  v24 = v0[45];
  v25 = v0[48];
  v22 = v0[43];
  v23 = v0[44];
  v1 = v0[41];
  v21 = v0[40];
  v2 = v0[35];
  v19 = v0[34];
  v20 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v17 = v0[20];
  v18 = v0[30];
  v15 = v0[19];
  v16 = v0[28];
  v13 = v0[18];
  v14 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v7, &qword_27C810E28, &unk_20CD64A10);
  v8 = *(v5 + 8);
  v8(v13, v6);
  v9 = *(v4 + 8);
  v9(v14, v3);
  v8(v15, v6);
  v9(v16, v3);
  v8(v17, v6);
  v9(v18, v3);
  (*(v2 + 8))(v20, v19);
  v10 = *(v1 + 8);
  v10(v22, v21);
  v10(v23, v21);
  v10(v24, v21);
  (*(v25 + 8))(v27, v26);

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD3A234(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62BC4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F78, &qword_20CD64A08);
  v2[21] = swift_task_alloc();
  v5 = sub_20CD62CE4();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_20CD62EA4();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_20CD626F4();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_20CD62654();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v9 = sub_20CD62EF4();
  v2[40] = v9;
  v2[41] = *(v9 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v2[46] = swift_task_alloc();
  v10 = sub_20CD62AB4();
  v2[47] = v10;
  v2[48] = *(v10 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v11 = sub_20CD62E94();
  v2[54] = v11;
  v2[55] = *(v11 - 8);
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3A7BC, 0, 0);
}

uint64_t sub_20CD3A7BC()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for SnapshotProcessor(0) + 20);
  *(v0 + 560) = v2;
  v3 = __swift_project_boxed_opaque_existential_1((v1 + v2), *(v1 + v2 + 24));
  *(v0 + 456) = sub_20CD62F24();
  *(v0 + 464) = sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578], MEMORY[0x277D0A570]);
  sub_20CD62F44();
  v4 = *v3;
  *(v0 + 472) = *v3;

  return MEMORY[0x2822009F8](sub_20CD3A8AC, v4, 0);
}

uint64_t sub_20CD3A8D4()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[62] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v4 = v0;
  v4[1] = sub_20CD3A9E0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v5);
}

uint64_t sub_20CD3A9E0()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_20CD3BA28;
  }

  else
  {

    v2 = sub_20CD3AAFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3AAFC()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v94 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v94;
    v7 = *(v6 + 16);
    v6 += 16;
    v86 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v88 = *(v6 + 56);
    v90 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[42];
      v11 = v1[40];
      v90(v10, v8, v11);
      sub_20CD62EC4();
      (*v9)(v10, v11);
      v13 = *(v94 + 16);
      v12 = *(v94 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CD46B04((v12 > 1), v13 + 1, 1);
      }

      v14 = v1[49];
      v15 = v1[47];
      *(v94 + 16) = v13 + 1;
      (*(v5 + 32))(v94 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      v8 += v88;
      --v3;
    }

    while (v3);
    v2 = v86;
  }

  v16 = v1[47];
  v17 = v1[48];
  v18 = v1;
  v19 = v1[46];
  sub_20CD3F9E0(v4, v19);

  if ((*(v17 + 48))(v19, 1, v16) == 1)
  {
    v20 = v1[46];

    sub_20CD1DA10(v20, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v18[57] - 8) + 56))(v18[3], 1, 1);

    v21 = v18[1];
LABEL_12:

    return v21();
  }

  v22 = v1[63];
  v23 = v1[53];
  v24 = v1[39];
  v25 = v1[4];
  (*(v1[48] + 32))(v23, v1[46], v1[47]);
  v26 = swift_task_alloc();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  sub_20CD52264(sub_20CD42770, v2, v24);
  if (v22)
  {
    v27 = v1[53];
    v29 = v1[47];
    v28 = v1[48];

    (*(v28 + 8))(v27, v29);

    v21 = v1[1];
    goto LABEL_12;
  }

  v32 = v1[40];
  v31 = v1[41];
  v33 = v18[39];

  v34 = *(v31 + 48);
  v35 = v34(v33, 1, v32);
  v36 = v18[53];
  if (v35 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[39];
LABEL_17:

    sub_20CD1DA10(v39, &qword_27C810F68, &unk_20CD649F0);
    (*(v38 + 8))(v36, v37);
    goto LABEL_9;
  }

  v40 = v18[38];
  v41 = v18[4];
  v42 = *(v18[41] + 32);
  (v42)(v18[45], v18[39], v18[40]);
  v43 = swift_task_alloc();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_20CD52264(sub_20CD4278C, v2, v40);
  v44 = v18[40];
  v45 = v18[38];

  v46 = v34(v45, 1, v44);
  v36 = v18[53];
  if (v46 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[38];
    (*(v18[41] + 8))(v18[45], v18[40]);
    goto LABEL_17;
  }

  v91 = v18[40];
  v47 = v18[37];
  v42(v18[44], v18[38]);
  *(swift_task_alloc() + 16) = v36;
  sub_20CD52264(sub_20CD427AC, v2, v47);

  v48 = v34(v47, 1, v91);
  v49 = v18[53];
  if (v48 == 1)
  {
    v50 = v18[47];
    v51 = v18[48];
    v52 = v18[45];
    v53 = v18[40];
    v54 = v18[37];
    v55 = *(v18[41] + 8);
    v55(v18[44], v53);
    v55(v52, v53);
    sub_20CD1DA10(v54, &qword_27C810F68, &unk_20CD649F0);
    (*(v51 + 8))(v49, v50);
    goto LABEL_9;
  }

  (v42)(v18[43], v18[37], v18[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v79 = v18[45];
  v74 = v18[44];
  v77 = v18[43];
  v92 = v18[41];
  v82 = v18[40];
  v56 = v18[35];
  v57 = v18[36];
  v58 = v18[34];
  v59 = v18[30];
  v89 = v18[29];
  v73 = v18[28];
  v75 = v18[27];
  v60 = v18[25];
  v93 = v18[26];
  v62 = v18[23];
  v61 = v18[24];
  v64 = v18[21];
  v63 = v18[22];
  v76 = (v18[4] + *(v18 + 140));
  (*(v18[32] + 8))(v18[33], v18[31]);
  v87 = *(v56 + 16);
  v87(v61, v57, v58);
  v85 = *(v62 + 104);
  v85(v61, *MEMORY[0x277D0A2D0], v63);
  v84 = sub_20CD63004();
  v83 = *(*(v84 - 8) + 56);
  v78 = v64;
  v83(v64, 1, 1, v84);
  sub_20CD62FF4();
  sub_20CD42728(&qword_28110F658, MEMORY[0x277D0A640], MEMORY[0x277D0A648]);
  sub_20CD632F4();
  sub_20CD62D14();
  sub_20CD42728(&qword_28110F6E8, MEMORY[0x277D0A328], MEMORY[0x277D0A338]);
  sub_20CD632F4();
  v65 = v59;
  sub_20CD42728(&qword_28110F688, MEMORY[0x277D0A458], MEMORY[0x277D0A450]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v66 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20CD64880;
  v92 += 16;
  v81 = *v92;
  (*v92)(v67 + v66, v79, v82);
  v80 = *(v93 + 16);
  v80(v89, v65, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A2B0], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20CD64880;
  v81(v68 + v66, v74, v82);
  v80(v89, v73, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A290], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20CD64880;
  v81(v69 + v66, v77, v82);
  v80(v89, v75, v60);
  sub_20CD62BB4();
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v70 = swift_task_alloc();
  v18[64] = v70;
  *v70 = v18;
  v70[1] = sub_20CD3BB0C;
  v71 = v18[20];
  v72 = v18[15];

  return sub_20CD18B4C(v72, v71);
}

uint64_t sub_20CD3BA28()
{
  v1 = *(v0 + 472);

  return MEMORY[0x2822009F8](sub_20CD3BA94, v1, 0);
}

uint64_t sub_20CD3BA94()
{
  (*(v0[55] + 8))(v0[56], v0[54]);

  return MEMORY[0x2822009F8](sub_20CD427A8, 0, 0);
}

uint64_t sub_20CD3BB0C()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_20CD427C8;
  }

  else
  {
    v2 = sub_20CD3BC20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3BC20()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  v2[1] = sub_20CD3BCE4;
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);

  return sub_20CD18B4C(v4, v3);
}

uint64_t sub_20CD3BCE4()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_20CD3BFD0;
  }

  else
  {
    v2 = sub_20CD3BDF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3BDF8()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_20CD3BEBC;
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);

  return sub_20CD18B4C(v4, v3);
}

uint64_t sub_20CD3BEBC()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_20CD3CAFC;
  }

  else
  {
    v2 = sub_20CD3C334;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3BFD0()
{
  v25 = v0[47];
  v26 = v0[53];
  v23 = v0[45];
  v24 = v0[48];
  v21 = v0[43];
  v22 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v20 = v0[36];
  v18 = v0[30];
  v19 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v16 = v0[28];
  v17 = v0[20];
  v14 = v0[27];
  v15 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810E78, &qword_20CD646C8);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v14, v4);
  v9(v15, v8);
  v10(v16, v4);
  v9(v17, v8);
  v10(v18, v4);
  (*(v3 + 8))(v20, v19);
  v11 = *(v2 + 8);
  v11(v21, v1);
  v11(v22, v1);
  v11(v23, v1);
  (*(v24 + 8))(v26, v25);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD3C334()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810E78, &qword_20CD646C8);
  v6 = *(v4 + 48);
  v57 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v8 = v0[50];
    v9 = v0[47];
    v53 = v0[12];
    v10 = v0[5];
    sub_20CD62EE4();
    v5(v8, v7, v9);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v53, 1, v10) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v11 = v0[11];
  v12 = v0[5];
  sub_20CD1D9A8(v0[14], v11, &qword_27C810E78, &qword_20CD646C8);
  if (v6(v11, 1, v12) == 1)
  {
    v13 = v0[53];
    v14 = v0[50];
    v15 = v0[47];
    v54 = v0[11];
    v16 = v0[5];
    sub_20CD62EE4();
    v5(v14, v13, v15);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v54, 1, v16) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v17 = v0[10];
  v18 = v0[5];
  sub_20CD1D9A8(v0[13], v17, &qword_27C810E78, &qword_20CD646C8);
  if (v6(v17, 1, v18) == 1)
  {
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v5;
    v55 = v0[10];
    v23 = v0[5];
    v22(v0[51], v19, v21);
    v22(v20, v19, v21);
    sub_20CD42728(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62C74();
    if (v57(v55, 1, v23) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810E78, &qword_20CD646C8);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v24 = v0[57];
  v56 = v0[47];
  v58 = v0[53];
  v51 = v0[45];
  v52 = v0[48];
  v49 = v0[43];
  v50 = v0[44];
  v25 = v0[41];
  v48 = v0[40];
  v45 = v0[34];
  v46 = v0[36];
  v43 = v0[30];
  v44 = v0[35];
  v26 = v0[25];
  v27 = v0[26];
  v41 = v0[28];
  v42 = v0[20];
  v39 = v0[27];
  v40 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v37 = v0[15];
  v38 = v0[18];
  v30 = v0[13];
  v36 = v0[14];
  v47 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v30, &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v36, &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v37, &qword_27C810E78, &qword_20CD646C8);
  v31 = *(v28 + 8);
  v31(v38, v29);
  v32 = *(v27 + 8);
  v32(v39, v26);
  v31(v40, v29);
  v32(v41, v26);
  v31(v42, v29);
  v32(v43, v26);
  (*(v44 + 8))(v46, v45);
  v33 = *(v25 + 8);
  v33(v49, v48);
  v33(v50, v48);
  v33(v51, v48);
  (*(*(v24 - 8) + 56))(v47, 0, 1, v24);
  (*(v52 + 8))(v58, v56);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20CD3CAFC()
{
  v26 = v0[47];
  v27 = v0[53];
  v24 = v0[45];
  v25 = v0[48];
  v22 = v0[43];
  v23 = v0[44];
  v1 = v0[41];
  v21 = v0[40];
  v2 = v0[35];
  v19 = v0[34];
  v20 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v17 = v0[20];
  v18 = v0[30];
  v15 = v0[19];
  v16 = v0[28];
  v13 = v0[18];
  v14 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v7, &qword_27C810E78, &qword_20CD646C8);
  v8 = *(v5 + 8);
  v8(v13, v6);
  v9 = *(v4 + 8);
  v9(v14, v3);
  v8(v15, v6);
  v9(v16, v3);
  v8(v17, v6);
  v9(v18, v3);
  (*(v2 + 8))(v20, v19);
  v10 = *(v1 + 8);
  v10(v22, v21);
  v10(v23, v21);
  v10(v24, v21);
  (*(v25 + 8))(v27, v26);

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD3CE7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62954();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F60, &qword_20CD649E8);
  v2[21] = swift_task_alloc();
  v5 = sub_20CD62CE4();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_20CD62994();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_20CD626F4();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_20CD62654();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F68, &unk_20CD649F0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v9 = sub_20CD62EF4();
  v2[40] = v9;
  v2[41] = *(v9 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v2[46] = swift_task_alloc();
  v10 = sub_20CD62AB4();
  v2[47] = v10;
  v2[48] = *(v10 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v11 = sub_20CD62E94();
  v2[54] = v11;
  v2[55] = *(v11 - 8);
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD3D404, 0, 0);
}

uint64_t sub_20CD3D404()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for SnapshotProcessor(0) + 20);
  *(v0 + 560) = v2;
  v3 = __swift_project_boxed_opaque_existential_1((v1 + v2), *(v1 + v2 + 24));
  *(v0 + 456) = sub_20CD629A4();
  *(v0 + 464) = sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28], MEMORY[0x277D09F20]);
  sub_20CD62F44();
  v4 = *v3;
  *(v0 + 472) = *v3;

  return MEMORY[0x2822009F8](sub_20CD3D4F4, v4, 0);
}

uint64_t sub_20CD3D51C()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = swift_task_alloc();
  v0[61] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[62] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v4 = v0;
  v4[1] = sub_20CD3D628;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD427CC, v3, v5);
}

uint64_t sub_20CD3D628()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_20CD3BA28;
  }

  else
  {

    v2 = sub_20CD3D744;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3D744()
{
  v1 = v0;
  v2 = v0[2];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[48];
    v6 = v0[41];
    v94 = MEMORY[0x277D84F90];
    sub_20CD46B04(0, v3, 0);
    v4 = v94;
    v7 = *(v6 + 16);
    v6 += 16;
    v86 = v2;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v88 = *(v6 + 56);
    v90 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = v1[42];
      v11 = v1[40];
      v90(v10, v8, v11);
      sub_20CD62EC4();
      (*v9)(v10, v11);
      v13 = *(v94 + 16);
      v12 = *(v94 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20CD46B04((v12 > 1), v13 + 1, 1);
      }

      v14 = v1[49];
      v15 = v1[47];
      *(v94 + 16) = v13 + 1;
      (*(v5 + 32))(v94 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      v8 += v88;
      --v3;
    }

    while (v3);
    v2 = v86;
  }

  v16 = v1[47];
  v17 = v1[48];
  v18 = v1;
  v19 = v1[46];
  sub_20CD3F9E0(v4, v19);

  if ((*(v17 + 48))(v19, 1, v16) == 1)
  {
    v20 = v1[46];

    sub_20CD1DA10(v20, &qword_27C810DE0, &unk_20CD64800);
LABEL_9:
    (*(*(v18[57] - 8) + 56))(v18[3], 1, 1);

    v21 = v18[1];
LABEL_12:

    return v21();
  }

  v22 = v1[63];
  v23 = v1[53];
  v24 = v1[39];
  v25 = v1[4];
  (*(v1[48] + 32))(v23, v1[46], v1[47]);
  v26 = swift_task_alloc();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  sub_20CD52264(sub_20CD42678, v2, v24);
  if (v22)
  {
    v27 = v1[53];
    v29 = v1[47];
    v28 = v1[48];

    (*(v28 + 8))(v27, v29);

    v21 = v1[1];
    goto LABEL_12;
  }

  v32 = v1[40];
  v31 = v1[41];
  v33 = v18[39];

  v34 = *(v31 + 48);
  v35 = v34(v33, 1, v32);
  v36 = v18[53];
  if (v35 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[39];
LABEL_17:

    sub_20CD1DA10(v39, &qword_27C810F68, &unk_20CD649F0);
    (*(v38 + 8))(v36, v37);
    goto LABEL_9;
  }

  v40 = v18[38];
  v41 = v18[4];
  v42 = *(v18[41] + 32);
  (v42)(v18[45], v18[39], v18[40]);
  v43 = swift_task_alloc();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_20CD52264(sub_20CD426C0, v2, v40);
  v44 = v18[40];
  v45 = v18[38];

  v46 = v34(v45, 1, v44);
  v36 = v18[53];
  if (v46 == 1)
  {
    v37 = v18[47];
    v38 = v18[48];
    v39 = v18[38];
    (*(v18[41] + 8))(v18[45], v18[40]);
    goto LABEL_17;
  }

  v91 = v18[40];
  v47 = v18[37];
  v42(v18[44], v18[38]);
  *(swift_task_alloc() + 16) = v36;
  sub_20CD52264(sub_20CD42708, v2, v47);

  v48 = v34(v47, 1, v91);
  v49 = v18[53];
  if (v48 == 1)
  {
    v50 = v18[47];
    v51 = v18[48];
    v52 = v18[45];
    v53 = v18[40];
    v54 = v18[37];
    v55 = *(v18[41] + 8);
    v55(v18[44], v53);
    v55(v52, v53);
    sub_20CD1DA10(v54, &qword_27C810F68, &unk_20CD649F0);
    (*(v51 + 8))(v49, v50);
    goto LABEL_9;
  }

  (v42)(v18[43], v18[37], v18[40]);
  sub_20CD626C4();
  sub_20CD62A84();
  v79 = v18[45];
  v74 = v18[44];
  v77 = v18[43];
  v92 = v18[41];
  v82 = v18[40];
  v56 = v18[35];
  v57 = v18[36];
  v58 = v18[34];
  v59 = v18[30];
  v89 = v18[29];
  v73 = v18[28];
  v75 = v18[27];
  v60 = v18[25];
  v93 = v18[26];
  v62 = v18[23];
  v61 = v18[24];
  v64 = v18[21];
  v63 = v18[22];
  v76 = (v18[4] + *(v18 + 140));
  (*(v18[32] + 8))(v18[33], v18[31]);
  v87 = *(v56 + 16);
  v87(v61, v57, v58);
  v85 = *(v62 + 104);
  v85(v61, *MEMORY[0x277D0A2D0], v63);
  v84 = sub_20CD62A04();
  v83 = *(*(v84 - 8) + 56);
  v78 = v64;
  v83(v64, 1, 1, v84);
  sub_20CD629F4();
  sub_20CD42728(&qword_28110F798, MEMORY[0x277D09F30], MEMORY[0x277D09F38]);
  sub_20CD632F4();
  sub_20CD62974();
  sub_20CD42728(&qword_28110F7B8, MEMORY[0x277D09EE8], MEMORY[0x277D09EF8]);
  sub_20CD632F4();
  v65 = v59;
  sub_20CD42728(&qword_28110F7A8, MEMORY[0x277D09F18], MEMORY[0x277D09F10]);
  sub_20CD62B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F70, &qword_20CD64A00);
  v66 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20CD64880;
  v92 += 16;
  v81 = *v92;
  (*v92)(v67 + v66, v79, v82);
  v80 = *(v93 + 16);
  v80(v89, v65, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A2B0], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20CD64880;
  v81(v68 + v66, v74, v82);
  v80(v89, v73, v60);
  sub_20CD62BB4();
  v87(v61, v57, v58);
  v85(v61, *MEMORY[0x277D0A290], v63);
  v83(v78, 1, 1, v84);
  sub_20CD632F4();
  sub_20CD632F4();
  sub_20CD62B04();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20CD64880;
  v81(v69 + v66, v77, v82);
  v80(v89, v75, v60);
  sub_20CD62BB4();
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v70 = swift_task_alloc();
  v18[64] = v70;
  *v70 = v18;
  v70[1] = sub_20CD3E670;
  v71 = v18[20];
  v72 = v18[15];

  return sub_20CD18540(v72, v71);
}

uint64_t sub_20CD3E670()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_20CD427C8;
  }

  else
  {
    v2 = sub_20CD3E784;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3E784()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  v2[1] = sub_20CD3E848;
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);

  return sub_20CD18540(v4, v3);
}

uint64_t sub_20CD3E848()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_20CD3EB34;
  }

  else
  {
    v2 = sub_20CD3E95C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3E95C()
{
  v1 = (*(v0 + 32) + *(v0 + 560));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_20CD3EA20;
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);

  return sub_20CD18540(v4, v3);
}

uint64_t sub_20CD3EA20()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_20CD3F660;
  }

  else
  {
    v2 = sub_20CD3EE98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD3EB34()
{
  v25 = v0[47];
  v26 = v0[53];
  v23 = v0[45];
  v24 = v0[48];
  v21 = v0[43];
  v22 = v0[44];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[35];
  v20 = v0[36];
  v18 = v0[30];
  v19 = v0[34];
  v4 = v0[25];
  v5 = v0[26];
  v16 = v0[28];
  v17 = v0[20];
  v14 = v0[27];
  v15 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_20CD1DA10(v0[15], &qword_27C810DC0, &qword_20CD64518);
  v9 = *(v6 + 8);
  v9(v7, v8);
  v10 = *(v5 + 8);
  v10(v14, v4);
  v9(v15, v8);
  v10(v16, v4);
  v9(v17, v8);
  v10(v18, v4);
  (*(v3 + 8))(v20, v19);
  v11 = *(v2 + 8);
  v11(v21, v1);
  v11(v22, v1);
  v11(v23, v1);
  (*(v24 + 8))(v26, v25);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD3EE98()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0[48] + 16);
  v5(v0[52], v0[53], v0[47]);
  sub_20CD1D9A8(v1, v2, &qword_27C810DC0, &qword_20CD64518);
  v6 = *(v4 + 48);
  v57 = v6;
  if (v6(v2, 1, v3) == 1)
  {
    v7 = v0[53];
    v8 = v0[50];
    v9 = v0[47];
    v53 = v0[12];
    v10 = v0[5];
    sub_20CD62EE4();
    v5(v8, v7, v9);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v53, 1, v10) != 1)
    {
      sub_20CD1DA10(v0[12], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[9], v0[12], v0[5]);
  }

  v11 = v0[11];
  v12 = v0[5];
  sub_20CD1D9A8(v0[14], v11, &qword_27C810DC0, &qword_20CD64518);
  if (v6(v11, 1, v12) == 1)
  {
    v13 = v0[53];
    v14 = v0[50];
    v15 = v0[47];
    v54 = v0[11];
    v16 = v0[5];
    sub_20CD62EE4();
    v5(v14, v13, v15);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    v6 = v57;
    sub_20CD62C74();
    if (v57(v54, 1, v16) != 1)
    {
      sub_20CD1DA10(v0[11], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[11], v0[5]);
  }

  v17 = v0[10];
  v18 = v0[5];
  sub_20CD1D9A8(v0[13], v17, &qword_27C810DC0, &qword_20CD64518);
  if (v6(v17, 1, v18) == 1)
  {
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v5;
    v55 = v0[10];
    v23 = v0[5];
    v22(v0[51], v19, v21);
    v22(v20, v19, v21);
    sub_20CD42728(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62C74();
    if (v57(v55, 1, v23) != 1)
    {
      sub_20CD1DA10(v0[10], &qword_27C810DC0, &qword_20CD64518);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[10], v0[5]);
  }

  v24 = v0[57];
  v56 = v0[47];
  v58 = v0[53];
  v51 = v0[45];
  v52 = v0[48];
  v49 = v0[43];
  v50 = v0[44];
  v25 = v0[41];
  v48 = v0[40];
  v45 = v0[34];
  v46 = v0[36];
  v43 = v0[30];
  v44 = v0[35];
  v26 = v0[25];
  v27 = v0[26];
  v41 = v0[28];
  v42 = v0[20];
  v39 = v0[27];
  v40 = v0[19];
  v28 = v0[17];
  v29 = v0[16];
  v37 = v0[15];
  v38 = v0[18];
  v30 = v0[13];
  v36 = v0[14];
  v47 = v0[3];
  sub_20CD62F34();
  sub_20CD1DA10(v30, &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v36, &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v37, &qword_27C810DC0, &qword_20CD64518);
  v31 = *(v28 + 8);
  v31(v38, v29);
  v32 = *(v27 + 8);
  v32(v39, v26);
  v31(v40, v29);
  v32(v41, v26);
  v31(v42, v29);
  v32(v43, v26);
  (*(v44 + 8))(v46, v45);
  v33 = *(v25 + 8);
  v33(v49, v48);
  v33(v50, v48);
  v33(v51, v48);
  (*(*(v24 - 8) + 56))(v47, 0, 1, v24);
  (*(v52 + 8))(v58, v56);

  v34 = v0[1];

  return v34();
}

uint64_t sub_20CD3F660()
{
  v26 = v0[47];
  v27 = v0[53];
  v24 = v0[45];
  v25 = v0[48];
  v22 = v0[43];
  v23 = v0[44];
  v1 = v0[41];
  v21 = v0[40];
  v2 = v0[35];
  v19 = v0[34];
  v20 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v17 = v0[20];
  v18 = v0[30];
  v15 = v0[19];
  v16 = v0[28];
  v13 = v0[18];
  v14 = v0[27];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_20CD1DA10(v0[14], &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v7, &qword_27C810DC0, &qword_20CD64518);
  v8 = *(v5 + 8);
  v8(v13, v6);
  v9 = *(v4 + 8);
  v9(v14, v3);
  v8(v15, v6);
  v9(v16, v3);
  v8(v17, v6);
  v9(v18, v3);
  (*(v2 + 8))(v20, v19);
  v10 = *(v1 + 8);
  v10(v22, v21);
  v10(v23, v21);
  v10(v24, v21);
  (*(v25 + 8))(v27, v26);

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CD3F9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CD62AB4();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_20CD42728(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
        v20 = sub_20CD63204();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_20CD3FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(char *, uint64_t))
{
  v22 = a5;
  v21 = a3;
  v7 = sub_20CD62AB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_20CD62EE4();
  v15 = v13;
  v16 = a4(v14);
  if (v5)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v17 = v16;
    v18 = *(v8 + 8);
    v18(v13, v7);
    if (v17)
    {
      sub_20CD62EE4();
      v15 = v22(v11, v21);
      v18(v11, v7);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

BOOL sub_20CD3FE54()
{
  v0 = sub_20CD62AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD62EE4();
  sub_20CD42728(&qword_28110F768, MEMORY[0x277D09F70], MEMORY[0x277D09F90]);
  sub_20CD632D4();
  sub_20CD632D4();
  (*(v1 + 8))(v3, v0);
  return v5[3] == v5[1];
}

uint64_t sub_20CD3FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20CD3FFD0, 0, 0);
}

uint64_t sub_20CD3FFD0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) invalidate];
  v2 = *(type metadata accessor for SnapshotProcessor(0) + 20);
  *(v0 + 48) = v2;
  __swift_project_boxed_opaque_existential_1((v1 + v2), *(v1 + v2 + 24));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_20CD4008C;

  return sub_20CD2616C();
}

uint64_t sub_20CD4008C()
{

  return MEMORY[0x2822009F8](sub_20CD40188, 0, 0);
}

uint64_t sub_20CD40188()
{
  v1 = (*(v0 + 24) + *(v0 + 48));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20CD4022C;

  return sub_20CD266A8();
}

uint64_t sub_20CD4022C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CD40320(uint64_t *a1)
{
  v2 = *(sub_20CD62EF4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CD41E40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CD403C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20CD403C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CD63564();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD62EF4();
        v6 = sub_20CD63304();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CD62EF4() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20CD40894(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CD404F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CD404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20CD62AB4();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_20CD62EF4();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20CD62EE4();
      v32 = v59;
      sub_20CD62EE4();
      v62 = sub_20CD62A64();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CD40894(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_20CD62AB4();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v133 - v11;
  v12 = sub_20CD62EF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v156 = &v133 - v19;
  result = MEMORY[0x28223BE20](v18);
  v160 = &v133 - v21;
  v22 = a3[1];
  v145 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_20CD41C10(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_20CD41494(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20CD41C10(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_20CD41B84(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_20CD62EE4();
      v34 = v158;
      sub_20CD62EE4();
      LODWORD(v148) = sub_20CD62A64();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_20CD62EE4();
        v46 = v158;
        sub_20CD62EE4();
        LOBYTE(v161) = sub_20CD62A64() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20CD41D3C(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_20CD41D3C((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20CD41494(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20CD41C10(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_20CD41B84(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v145[1];
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_20CD62EE4();
    v120 = v158;
    sub_20CD62EE4();
    LODWORD(v161) = sub_20CD62A64();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_20CD41494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_20CD62AB4();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v56 - v10;
  v72 = sub_20CD62EF4();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_20CD62EE4();
            v49 = v67;
            sub_20CD62EE4();
            v69 = sub_20CD62A64();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_20CD62EE4();
        v29 = v67;
        sub_20CD62EE4();
        v69 = sub_20CD62A64();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_20CD41C54(&v76, &v75, &v74, MEMORY[0x277D0A558]);
  return 1;
}

uint64_t sub_20CD41B84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CD41C10(v3);
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

uint64_t sub_20CD41C54(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_20CD41D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F10, &qword_20CD64E60);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_20CD41E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotProcessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD41ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotProcessor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD41F34(uint64_t a1)
{
  v4 = *(type metadata accessor for SnapshotProcessor(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CCEE040;

  return sub_20CD3FFB0(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for SnapshotProcessor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_20CD626F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[12]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[13]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[14]));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CD42178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CCEE040;

  return sub_20CD2EB1C(a1, v4, v5, v6);
}

uint64_t sub_20CD4222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(type metadata accessor for SnapshotProcessor(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_20CD62514() - 8);
  v27 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v14 = *(v13 + 64);
  v15 = *(sub_20CD62C54() - 8);
  v16 = (v27 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_20CD62654() - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_20CD62AB4() - 8);
  v22 = (v19 + v20 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = *(v9 + 16);
  v24 = *(v9 + 24);
  v25 = swift_task_alloc();
  *(v28 + 16) = v25;
  *v25 = v28;
  v25[1] = sub_20CCEE040;

  return sub_20CD32944(a1, v23, v24, v9 + v11, v9 + v27, v9 + v16, v9 + v19, v9 + v22, a9);
}

uint64_t sub_20CD42500(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CD4255C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD425CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CCED908;

  return sub_20CD31E64(a1, v5, v4);
}

uint64_t sub_20CD42728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD427D0()
{
  v1 = [v0 metadata];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_20CD631C4();

  v4 = sub_20CD62874();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_20CD52E80(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_8;
  }

  sub_20CD28ED4(*(v3 + 56) + 32 * v6, v11);

  v9 = 1;
LABEL_8:
  sub_20CD428C0(v11);
  return v9;
}

uint64_t sub_20CD428C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F88, &qword_20CD64A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD42928()
{
  v0 = sub_20CD631B4();
  __swift_allocate_value_buffer(v0, qword_28110F878);
  __swift_project_value_buffer(v0, qword_28110F878);
  return sub_20CD631A4();
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

uint64_t SeymourStore.init()@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_20CD628A4();
  v13 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD626C4();
  v5 = type metadata accessor for SeymourStore(0);
  v14 = *(v5 + 20);
  v12[1] = sub_20CD62824();
  sub_20CD42CB8();
  sub_20CD633F4();
  v6 = *MEMORY[0x277D4F368];
  v7 = *(v2 + 104);
  v7(v4, v6, v1);
  v8 = sub_20CD62894();
  v17 = v8;
  v18 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_20CD62884();
  sub_20CD628D4();
  swift_allocObject();
  sub_20CD628C4();
  sub_20CD633F4();
  v9 = sub_20CD62814();
  v10 = v15;
  *(v15 + v14) = v9;
  v14 = *(v5 + 24);
  sub_20CD62864();
  sub_20CD633F4();
  v7(v4, v6, v13);
  v17 = v8;
  v18 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_20CD62884();
  swift_allocObject();
  sub_20CD628C4();
  sub_20CD633F4();
  result = sub_20CD62854();
  *(v10 + v14) = result;
  return result;
}

uint64_t type metadata accessor for SeymourStore(uint64_t a1)
{
  result = qword_28110F590;
  if (!qword_28110F590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CD42CB8()
{
  result = qword_28110F148;
  if (!qword_28110F148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110F148);
  }

  return result;
}

uint64_t SeymourStore.archivedSessions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F90, &qword_20CD64A38);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD42DD0, 0, 0);
}

uint64_t sub_20CD42DD0()
{
  v1 = v0[7];
  type metadata accessor for SeymourStore(0);
  sub_20CD62804();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 27;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F98, &qword_20CD64A40);
  *v3 = v0;
  v3[1] = sub_20CD42F10;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD47C18, v2, v4);
}

uint64_t sub_20CD42F10()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    v3 = sub_20CD43130;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v2[11] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20CD43070;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD43070()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_20CD4329C(sub_20CD47C30, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_20CD43130()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD431B0()
{
  v0 = sub_20CD62654();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
  v4 = sub_20CD624F4();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

unint64_t sub_20CD4329C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_20CD62764();
  v7 = MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9);
  v50 = a3;
  v51 = &v40 - v13;
  v14 = 0;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v50 + 48);
    v25 = v48;
    v42 = *(v48 + 72);
    v26 = v45;
    (*(v48 + 16))(v45, v24 + v42 * (__clz(__rbit64(v20)) | (v14 << 6)), v6);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v51;
    v30 = v28;
    v27(v51, v26);
    v31 = v46(v29);
    v4 = v23;
    if (v23)
    {
      (*v43)(v51, v30);
      v39 = v41;

      return v39;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v40, v51, v30);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CD46C8C(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v52;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v41 = v35;
        sub_20CD46C8C((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v41;
        v6 = v30;
        v32 = v52;
      }

      *(v32 + 16) = v36;
      v37 = *(v48 + 80);
      v41 = v32;
      result = (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v42, v40, v6);
    }

    else
    {
      v6 = v30;
      result = (*v43)(v51, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v41;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SeymourStore.workouts(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62764();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA0, &qword_20CD64A50);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD43734, 0, 0);
}

uint64_t sub_20CD43734()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[6];
    v23 = MEMORY[0x277D84F90];
    sub_20CD46CD0(0, v2, 0);
    v3 = v23;
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[7];
      v9 = v0[5];
      v22(v8, v6, v9);
      v10 = sub_20CD62734();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v23 + 16);
      v13 = *(v23 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46CD0((v13 > 1), v14 + 1, 1);
      }

      *(v23 + 16) = v14 + 1;
      v15 = v23 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v21;
      --v2;
    }

    while (v2);
  }

  v16 = v0[10];
  type metadata accessor for SeymourStore(0);
  sub_20CD48898(v3);

  sub_20CD62834();

  v17 = swift_task_alloc();
  v0[11] = v17;
  *(v17 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v17 + 24) = 50;
  *(v17 + 32) = 2;
  *(v17 + 40) = 35;
  *(v17 + 48) = v16;
  v18 = swift_task_alloc();
  v0[12] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA8, &qword_20CD64A58);
  *v18 = v0;
  v18[1] = sub_20CD439A0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD48930, v17, v19);
}

uint64_t sub_20CD439A0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_20CD43C48;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20CD43B00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD43B00()
{
  v10 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D52828];
    v4 = sub_20CD444AC(*(v1 + 16), 0, &qword_27C811018, &qword_20CD64B48, MEMORY[0x277D52828]);
    v5 = *(sub_20CD627A4() - 8);
    v6 = sub_20CD48310(&v9, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v2, v1, v3);
    sub_20CD48948(v9);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_20CD43C48()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t SeymourStore.modalities()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB0, &qword_20CD64A68);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD43D9C, 0, 0);
}

uint64_t sub_20CD43D9C()
{
  v1 = v0[6];
  type metadata accessor for SeymourStore(0);
  sub_20CD62844();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 41;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB8, &qword_20CD64A70);
  *v3 = v0;
  v3[1] = sub_20CD43EDC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD48950, v2, v4);
}

uint64_t sub_20CD43EDC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v3 = sub_20CD44178;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];
    v2[10] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20CD4403C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD4403C()
{
  v10 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D52AF8];
    v4 = sub_20CD444AC(*(v1 + 16), 0, &qword_27C811008, &qword_20CD64B38, MEMORY[0x277D52AF8]);
    v5 = *(sub_20CD627D4() - 8);
    v6 = sub_20CD48310(&v9, &v4[(*(v5 + 80) + 32) & ~*(v5 + 80)], v2, v1, v3);
    sub_20CD48948(v9);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_20CD44178()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD441F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD49268;

  return SeymourStore.archivedSessions(for:)(a1);
}

uint64_t sub_20CD4428C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD49268;

  return SeymourStore.workouts(for:)(a1);
}

uint64_t sub_20CD44320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CD443AC;

  return SeymourStore.modalities()();
}

uint64_t sub_20CD443AC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void *sub_20CD444AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20CD445A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20CD62654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_20CD631D4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CD49218(&qword_27C811048, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_20CD63234();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CD455F4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CD44888(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_20CD63624();
  sub_20CD62AB4();
  sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
  sub_20CD631E4();
  v11 = *(v4 + 36);
  v29 = a2;
  v26 = v11;
  v27 = v4;
  sub_20CD631E4();
  v12 = sub_20CD63644();
  v28 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_20CD49140(*(v28 + 48) + v16 * v14, v8);
      sub_20CD49218(&qword_28110F770, MEMORY[0x277D09F70], MEMORY[0x277D09F88]);
      if (sub_20CD63234())
      {
        v18 = sub_20CD63234();
        sub_20CD491B0(v8);
        if (v18)
        {
          sub_20CD491B0(v29);
          sub_20CD49140(*(v28 + 48) + v16 * v14, v25);
          return 0;
        }
      }

      else
      {
        sub_20CD491B0(v8);
      }

      v14 = (v14 + 1) & v15;
      v17 = v29;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v17 = v29;
LABEL_9:
  v20 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v23;
  sub_20CD49140(v17, v23);
  v30 = *v20;
  sub_20CD45898(v22, v14, isUniquelyReferenced_nonNull_native);
  *v20 = v30;
  sub_20CD4255C(v17, v25);
  return 1;
}

uint64_t sub_20CD44B8C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20CD63624();
  sub_20CD63284();
  v8 = sub_20CD63644();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20CD63594() & 1) != 0)
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

    sub_20CD45B84(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CD44CDC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20CD62654();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  result = sub_20CD63484();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_20CD631D4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20CD45038(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  result = sub_20CD63484();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v1;
    v30 = v5;
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
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_20CD4255C(v19 + v20 * (v16 | (v8 << 6)), v33);
      sub_20CD63624();
      sub_20CD62AB4();
      sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
      sub_20CD631E4();
      sub_20CD631E4();
      result = sub_20CD63644();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_20CD4255C(v33, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v29;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20CD45394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  result = sub_20CD63484();
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
      sub_20CD63624();
      sub_20CD63284();
      result = sub_20CD63644();
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

uint64_t sub_20CD455F4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20CD62654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20CD44CDC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20CD45D04();
      goto LABEL_12;
    }

    sub_20CD46284(v10 + 1);
  }

  v12 = *v3;
  sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v13 = sub_20CD631D4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20CD49218(&qword_27C811048, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_20CD63234();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20CD635B4();
  __break(1u);
  return result;
}

uint64_t sub_20CD45898(uint64_t a1, unint64_t a2, char a3)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_20CD45038(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20CD45F3C();
      goto LABEL_15;
    }

    sub_20CD465A0(v10 + 1);
  }

  v12 = *v3;
  sub_20CD63624();
  sub_20CD62AB4();
  sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
  sub_20CD631E4();
  v26 = *(v27 + 36);
  sub_20CD631E4();
  v13 = sub_20CD63644();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_20CD49140(*(v12 + 48) + v16 * a2, v9);
      sub_20CD49218(&qword_28110F770, MEMORY[0x277D09F70], MEMORY[0x277D09F88]);
      if (sub_20CD63234())
      {
        v17 = sub_20CD63234();
        sub_20CD491B0(v9);
        if (v17)
        {
          sub_20CD635B4();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_20CD491B0(v9);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_20CD4255C(a1, *(v18 + 48) + *(v24 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_20CD45B84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20CD45394(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CD46128();
      goto LABEL_16;
    }

    sub_20CD468CC(v8 + 1);
  }

  v10 = *v4;
  sub_20CD63624();
  sub_20CD63284();
  result = sub_20CD63644();
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

      result = sub_20CD63594();
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
  result = sub_20CD635B4();
  __break(1u);
  return result;
}

void *sub_20CD45D04()
{
  v1 = v0;
  v2 = sub_20CD62654();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  v6 = *v0;
  v7 = sub_20CD63474();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_20CD45F3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  v6 = *v0;
  v7 = sub_20CD63474();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_20CD49140(*(v6 + 48) + v21, v5);
        result = sub_20CD4255C(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_20CD46128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  v2 = *v0;
  v3 = sub_20CD63474();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CD46284(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20CD62654();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  v7 = sub_20CD63484();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_20CD631D4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20CD465A0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v28 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  result = sub_20CD63484();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v1;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_20CD49140(v19 + v20 * (v16 | (v8 << 6)), v32);
      sub_20CD63624();
      sub_20CD62AB4();
      sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
      sub_20CD631E4();
      sub_20CD631E4();
      result = sub_20CD63644();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_20CD4255C(v32, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20CD468CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  result = sub_20CD63484();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20CD63624();

      sub_20CD63284();
      result = sub_20CD63644();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_20CD46B04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810FE8, &qword_20CD64B08, MEMORY[0x277D09F70]);
  *v3 = result;
  return result;
}

void *sub_20CD46B48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C811060, &qword_20CD64B90, &qword_27C810D08, &qword_20CD64280);
  *v3 = result;
  return result;
}

void *sub_20CD46B88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C810FF0, &unk_20CD64B10, &qword_27C810EB8, &qword_20CD64810);
  *v3 = result;
  return result;
}

void *sub_20CD46BC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C810FF8, &unk_20CD64B20, &qword_27C810EC0, &qword_20CD64818);
  *v3 = result;
  return result;
}

void *sub_20CD46C08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C811000, &qword_20CD64B30, &qword_27C810EC8, &qword_20CD64820);
  *v3 = result;
  return result;
}

void *sub_20CD46C48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810FE0, &qword_20CD64B00, MEMORY[0x277D0A6A0]);
  *v3 = result;
  return result;
}

void *sub_20CD46C8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C811030, &qword_20CD64B68, MEMORY[0x277D50978]);
  *v3 = result;
  return result;
}

char *sub_20CD46CD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CD46CF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD4713C(a1, a2, a3, *v3, &qword_27C810FD0, &qword_20CD64AF0, &qword_27C810FD8, &qword_20CD64AF8);
  *v3 = result;
  return result;
}

void *sub_20CD46D30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD4713C(a1, a2, a3, *v3, &qword_27C810FC0, &qword_20CD64AE0, &qword_27C810FC8, &qword_20CD64AE8);
  *v3 = result;
  return result;
}

void *sub_20CD46D70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810F70, &qword_20CD64A00, MEMORY[0x277D0A558]);
  *v3 = result;
  return result;
}

void *sub_20CD46DB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &unk_27C811068, qword_20CD64B98, MEMORY[0x277D0A248]);
  *v3 = result;
  return result;
}

void *sub_20CD46E48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_20CD47030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811028, &qword_20CD64B60);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20CD4713C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_20CD47284(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_20CD47460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811010, &qword_20CD64B40);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20CD631B4();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v17 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20CD634C4();
    v38 = v8;
    v22 = sub_20CD6153C(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20CCEA000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F3115B0](v29, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB0, &qword_20CD64A68);
  v33 = sub_20CD627E4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20CD48EA8;
  *(v34 + 24) = v32;

  v33(sub_20CD49264, v34);
}

uint64_t sub_20CD4783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811038, &qword_20CD64B70);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20CD631B4();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v17 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20CD634C4();
    v38 = v8;
    v22 = sub_20CD6153C(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20CCEA000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F3115B0](v29, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F90, &qword_20CD64A38);
  v33 = sub_20CD627E4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20CD48FEC;
  *(v34 + 24) = v32;

  v33(sub_20CD49040, v34);
}

uint64_t sub_20CD47C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811020, &unk_20CD64B50);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20CD631B4();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v17 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20CD634C4();
    v38 = v8;
    v22 = sub_20CD6153C(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20CCEA000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F3115B0](v29, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA0, &qword_20CD64A50);
  v33 = sub_20CD627E4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20CD48EBC;
  *(v34 + 24) = v32;

  v33(sub_20CD49264, v34);
}

unint64_t sub_20CD4802C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F3115C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F3115C0](&v3, 8);
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

uint64_t sub_20CD480B8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_20CD631B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD628B4();
  v18 = sub_20CD63194();
  v19 = sub_20CD633D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_20CD634C4();
    v26 = sub_20CD6153C(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_20CCEA000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x20F3115B0](v27, -1, -1);
    MEMORY[0x20F3115B0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_20CD63334();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD48310(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20CD485B8(uint64_t a1)
{
  v2 = sub_20CD62654();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  result = MEMORY[0x20F310D70](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20CD445A8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20CD48754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CD4908C();
  result = MEMORY[0x20F310D70](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_20CD49140(v12, v6);
      sub_20CD44888(v8, v6);
      sub_20CD491B0(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_20CD48898(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F310D70](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20CD44B8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t dispatch thunk of SeymourStoreProtocol.archivedSessions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CD49260;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SeymourStoreProtocol.workouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CD49260;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SeymourStoreProtocol.modalities()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD48CE8;

  return v7(a1, a2);
}

uint64_t sub_20CD48CE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20CD48E0C(uint64_t a1)
{
  result = sub_20CD626F4();
  if (v2 <= 0x3F)
  {
    result = sub_20CD62824();
    if (v3 <= 0x3F)
    {
      result = sub_20CD62864();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_18Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t *sub_20CD49044(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

unint64_t sub_20CD4908C()
{
  result = qword_28110F198;
  if (!qword_28110F198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D08, &qword_20CD64280);
    sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70], MEMORY[0x277D09F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F198);
  }

  return result;
}

uint64_t sub_20CD49140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD491B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD49218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD49284()
{
  v1 = *v0;
  sub_20CD63624();
  MEMORY[0x20F311000](v1);
  return sub_20CD63644();
}

uint64_t sub_20CD492F8(uint64_t a1)
{
  v2 = *v1;
  sub_20CD63624();
  MEMORY[0x20F311000](v2);
  return sub_20CD63644();
}

char *sub_20CD4933C(void *a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider] = 0;
  sub_20CD62694();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_identifier], v6, v3);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_healthStore] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CCD6A8]);
  v8 = a1;
  v9 = [v7 initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_nanoSyncControl] = v9;
  v10 = type metadata accessor for SnapshotDatabaseClient(0);
  v18.receiver = v1;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  sub_20CD62DB4();
  (*(v4 + 16))(v6, &v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_identifier], v3);
  v12 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v13 = sub_20CD63244();

  v14 = sub_20CD62674();
  v15 = [v12 initWithHealthStore:v8 taskIdentifier:v13 exportedObject:v11 taskUUID:v14];

  (*(v4 + 8))(v6, v3);
  v16 = *&v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider];
  *&v11[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider] = v15;

  return v11;
}

id sub_20CD495A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotDatabaseClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SnapshotDatabaseClient(uint64_t a1)
{
  result = qword_28110F858;
  if (!qword_28110F858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD496C8(uint64_t a1)
{
  result = sub_20CD626A4();
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

void sub_20CD49770(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CD28ED4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110E8, &qword_20CD64C00);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CD1CEF0();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_20CD49844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_20CD498B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20CD4991C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4D250;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4D228;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_77;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4D250;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_80;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C8110F0, &qword_20CD64C08);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD49CEC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_20CD4D264;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A078;
  aBlock[3] = &block_descriptor_86;
  v10 = _Block_copy(aBlock);

  [a1 listCacheIndexesWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_20CD49E9C(uint64_t a1, unint64_t *a2)
{
  v4 = sub_20CD62AB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
    return sub_20CD63334();
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v16 = MEMORY[0x277D84F90];
      sub_20CD46B04(0, v10, 0);
      v11 = v16;
      v12 = a1 + 32;
      do
      {
        v12 += 8;
        sub_20CD62AC4();
        v16 = v11;
        v14 = v11[2];
        v13 = v11[3];
        if (v14 >= v13 >> 1)
        {
          sub_20CD46B04((v13 > 1), v14 + 1, 1);
          v11 = v16;
        }

        v11[2] = v14 + 1;
        (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
        --v10;
      }

      while (v10);
    }

    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4A084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v36 = &v34 - v10;
  v12 = sub_20CD62E94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = *(v5 + 16);
  v15(v11, v42, v4);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v5 + 80);
  v38 = v17 | 7;
  v18 = swift_allocObject();
  v19 = v12;
  v20 = v35;
  (*(v13 + 32))(v18 + v16, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v41 = v5;
  v21 = *(v5 + 32);
  v21(v18 + ((v14 + v17 + v16) & ~v17), v36, v20);
  v22 = v39;
  v15(v39, v42, v20);
  v15(v43, v22, v20);
  v23 = swift_allocObject();
  v21(v23 + ((v17 + 16) & ~v17), v22, v20);
  v24 = *(v40 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v24)
  {
    v25 = swift_allocObject();
    v25[2] = sub_20CD4DB38;
    v25[3] = v23;
    v25[4] = sub_20CD4D76C;
    v25[5] = v18;
    v48 = sub_20CD1DF94;
    v49 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD49844;
    v47 = &block_descriptor_165;
    v26 = _Block_copy(&aBlock);
    v27 = v24;

    v48 = sub_20CD4DB38;
    v49 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD498B4;
    v47 = &block_descriptor_168;
    v28 = _Block_copy(&aBlock);

    [v27 fetchProxyWithHandler:v26 errorHandler:v28];

    _Block_release(v28);
    _Block_release(v26);

    v29 = v43;
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v31 = 0;
    v32 = v43;
    sub_20CD1B6B4(v30, v43, &unk_27C8110F8, &unk_20CD64C10);

    v29 = v32;
  }

  return (*(v41 + 8))(v29, v20);
}

void sub_20CD4A548(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  sub_20CD62E84();
  v9 = sub_20CD63244();

  (*(v6 + 16))(v8, a3, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_20CD4DB3C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_174;
  v12 = _Block_copy(aBlock);

  [a1 mostRecentCheckpointsWithType:v9 completion:v12];
  _Block_release(v12);
}

void sub_20CD4A728(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = sub_20CD632E4();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_20CD4A7B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = a4;
  v34 = a2;
  v37 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v33);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(v6 + 16);
  v14(&v32 - v12, a1);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  v35 = a3;
  v36 = v16;
  v17 = v39;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  v38 = v6;
  v18 = *(v6 + 32);
  v19 = v33;
  v18(v16 + ((v15 + 32) & ~v15), v13, v33);
  (v14)(v11, v37, v19);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v14)(v37, v11, v19);
  v20 = swift_allocObject();
  v18(v20 + ((v15 + 16) & ~v15), v11, v19);
  v21 = *(v34 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v21)
  {
    v22 = swift_allocObject();
    v22[2] = sub_20CD4D520;
    v22[3] = v20;
    v23 = v36;
    v22[4] = sub_20CD4D4A0;
    v22[5] = v23;
    v44 = sub_20CD1DF94;
    v45 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_20CD49844;
    v43 = &block_descriptor_143;
    v24 = _Block_copy(&aBlock);
    sub_20CD1CF44(v35, v39);
    v25 = v21;

    v44 = sub_20CD4D520;
    v45 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_20CD498B4;
    v43 = &block_descriptor_146;
    v26 = _Block_copy(&aBlock);

    [v25 fetchProxyWithHandler:v24 errorHandler:v26];

    _Block_release(v26);
    _Block_release(v24);

    v27 = v37;
  }

  else
  {
    sub_20CD1CEF0();
    v28 = swift_allocError();
    *v29 = 0;
    sub_20CD1CF44(v35, v39);
    v30 = v37;
    sub_20CD1B6B4(v28, v37, &unk_27C8110F8, &unk_20CD64C10);

    v27 = v30;
  }

  return (*(v38 + 8))(v27, v19);
}

void sub_20CD4ABBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_20CD62524();
  (*(v7 + 16))(v9, a4, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_20CD4D534;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_152;
  v13 = _Block_copy(aBlock);

  [a1 listIntermediateCheckpointsWithStep:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_20CD4AD8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_20CD62EF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
    return sub_20CD63334();
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v17[0] = a3;
      v18 = MEMORY[0x277D84F90];
      sub_20CD46D70(0, v12, 0);
      v13 = v18;
      v17[1] = v7 + 32;
      v14 = (a1 + 40);
      do
      {
        sub_20CD1CF44(*(v14 - 1), *v14);
        sub_20CD4D5B8();
        sub_20CD62D54();
        v18 = v13;
        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          sub_20CD46D70((v15 > 1), v16 + 1, 1);
          v13 = v18;
        }

        v14 += 2;
        v13[2] = v16 + 1;
        (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v9, v6);
        --v12;
      }

      while (v12);
    }

    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4AFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v39 = v7;
  v8 = *(v7 - 8);
  v42 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v40 = &v39 - v13;
  v15 = sub_20CD62E94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  (*(v16 + 16))(&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v15);
  v48 = v8;
  v18 = *(v8 + 16);
  v18(v14, a1, v7);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = *(v8 + 80);
  v21 = (v17 + v20 + v19) & ~v20;
  v22 = swift_allocObject();
  v23 = v47;
  *(v22 + 16) = v46;
  *(v22 + 24) = v23;
  v24 = v22 + v19;
  v25 = v39;
  v26 = v15;
  v27 = v22;
  (*(v16 + 32))(v24, &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v28 = *(v48 + 32);
  v44 = v27;
  v28(v27 + v21, v40, v25);
  v29 = v43;
  v18(v43, v41, v25);
  v18(v49, v29, v25);
  v30 = swift_allocObject();
  v28(v30 + ((v20 + 16) & ~v20), v29, v25);
  v31 = *(v45 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v31)
  {
    v32 = swift_allocObject();
    v32[2] = sub_20CD4DB30;
    v32[3] = v30;
    v33 = v44;
    v32[4] = sub_20CD4D330;
    v32[5] = v33;
    v54 = sub_20CD1DF94;
    v55 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_20CD49844;
    v53 = &block_descriptor_121_0;
    v34 = _Block_copy(&aBlock);
    sub_20CD1CF44(v46, v47);
    v35 = v31;

    v54 = sub_20CD4DB30;
    v55 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_20CD498B4;
    v53 = &block_descriptor_124;
    v36 = _Block_copy(&aBlock);

    [v35 fetchProxyWithHandler:v34 errorHandler:v36];

    _Block_release(v36);
    _Block_release(v34);
  }

  else
  {
    sub_20CD1CEF0();
    v35 = swift_allocError();
    *v37 = 0;
    sub_20CD1CF44(v46, v47);
    sub_20CD1B6B4(v35, v49, &qword_27C810EB0, &unk_20CD64BF0);
  }

  return (*(v48 + 8))(v49, v25);
}

void sub_20CD4B4C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = sub_20CD62524();
  sub_20CD62E84();
  v12 = sub_20CD63244();

  (*(v8 + 16))(v10, a5, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_20CD4D414;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4B738;
  aBlock[3] = &block_descriptor_130;
  v15 = _Block_copy(aBlock);

  [a1 saveWithRecordsData:v11 type:v12 completion:v15];
  _Block_release(v15);
}

uint64_t sub_20CD4B6C0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63334();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63344();
  }
}

void sub_20CD4B738(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_20CD4B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v36 = &v34 - v10;
  v12 = sub_20CD62AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = *(v5 + 16);
  v15(v11, v42, v4);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v5 + 80);
  v38 = v17 | 7;
  v18 = swift_allocObject();
  v19 = v12;
  v20 = v35;
  (*(v13 + 32))(v18 + v16, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v41 = v5;
  v21 = *(v5 + 32);
  v21(v18 + ((v14 + v17 + v16) & ~v17), v36, v20);
  v22 = v39;
  v15(v39, v42, v20);
  v15(v43, v22, v20);
  v23 = swift_allocObject();
  v21(v23 + ((v17 + 16) & ~v17), v22, v20);
  v24 = *(v40 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v24)
  {
    v25 = swift_allocObject();
    v25[2] = sub_20CD4DB30;
    v25[3] = v23;
    v25[4] = sub_20CD4D2F0;
    v25[5] = v18;
    v48 = sub_20CD1DF94;
    v49 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD49844;
    v47 = &block_descriptor_99;
    v26 = _Block_copy(&aBlock);
    v27 = v24;

    v48 = sub_20CD4DB30;
    v49 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD498B4;
    v47 = &block_descriptor_102;
    v28 = _Block_copy(&aBlock);

    [v27 fetchProxyWithHandler:v26 errorHandler:v28];

    _Block_release(v28);
    _Block_release(v26);

    v29 = v43;
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v31 = 0;
    v32 = v43;
    sub_20CD1B6B4(v30, v43, &qword_27C810EB0, &unk_20CD64BF0);

    v29 = v32;
  }

  return (*(v41 + 8))(v29, v20);
}

void sub_20CD4BC74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = sub_20CD62AA4();
  (*(v6 + 16))(v8, a3, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_20CD4D32C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4BE34;
  aBlock[3] = &block_descriptor_108;
  v12 = _Block_copy(aBlock);

  [a1 invalidateAfter:v9 completion:v12];
  _Block_release(v12);
}

void sub_20CD4BE34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20CD4BEA0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4DB30;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4D108;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_55;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4DB30;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_58_0;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD4C270(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_20CD4DB34;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4BE34;
  aBlock[3] = &block_descriptor_64_0;
  v10 = _Block_copy(aBlock);

  [a1 cleanUpWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_20CD4C420(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63334();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4C494(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4DB30;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4CFCC;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_33;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4DB30;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_36;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

uint64_t sub_20CD4C864(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_20CD4C8A8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4CF9C;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4CF6C;
    v19[5] = v20;
    v39 = sub_20CD1CF98;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_1;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4CF9C;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_14;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD4CC78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - v13;
  (*(v12 + 16))(aBlock - v13, a2, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4C864;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  [a1 *a6];
  _Block_release(v17);
}

void sub_20CD4CE84()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v0 = sub_20CD631B4();
  __swift_project_value_buffer(v0, qword_28110F878);
  oslog = sub_20CD63194();
  v1 = sub_20CD633D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20CCEA000, oslog, v1, "SnapshotDatabaseClient connection invalidated", v2, 2u);
    MEMORY[0x20F3115B0](v2, -1, -1);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CD4D130(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_20CD4D264(uint64_t a1, unint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);

  return sub_20CD49E9C(a1, a2);
}

void sub_20CD4D330(void *a1)
{
  v3 = *(sub_20CD62E94() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20CD4B4C4(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_20CD4D414(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);

  return sub_20CD4B6C0(a1, a2);
}

void sub_20CD4D4A0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_20CD4ABBC(a1, v4, v5, v6);
}

unint64_t sub_20CD4D5B8()
{
  result = qword_28110F680;
  if (!qword_28110F680)
  {
    sub_20CD62EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F680);
  }

  return result;
}

uint64_t objectdestroy_88Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;
  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return MEMORY[0x2821FE8E8](v3, v14 + v15, v16 | 7);
}

uint64_t sub_20CD4D7A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v13 = v5 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return a5(a1, v5 + v10, v13);
}

uint64_t getEnumTagSinglePayload for SnapshotDatabaseClient.SnapshotDatabaseClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotDatabaseClient.SnapshotDatabaseClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CD4DA20()
{
  result = qword_27C811108;
  if (!qword_27C811108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811108);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CD4DB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20CD4DB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD4DBF4(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F20, &qword_20CD64960);
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_20CD626A4();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811170, &qword_20CD64D58);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_20CD63084();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD4DD84, 0, 0);
}

uint64_t sub_20CD4DD84()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_20CD4DE44;
  v5 = *(v0 + 136);
  v6 = *(v0 + 16);

  return MEMORY[0x2821612A8](v6, v5, v2, v3);
}

uint64_t sub_20CD4DE44(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 112) = v8;
    *v8 = v5;
    v8[1] = sub_20CD4DFEC;
    v9 = *(v4 + 136);

    return sub_20CD4E518(a1, v9);
  }
}

uint64_t sub_20CD4DFEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_20CD4E484;
  }

  else
  {
    v4 = sub_20CD4E100;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_20CD4E100()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    v2 = sub_20CD63524();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = sub_20CD46C48(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[10];
  v26 = v1 & 0xC000000000000001;
  v27 = v0[15];
  v6 = v28;
  v23 = v0[13] + 32;
  v24 = v2;
  v25 = (v0[6] + 8);
  do
  {
    if (v26)
    {
      v7 = MEMORY[0x20F310EA0](v4, v0[13]);
    }

    else
    {
      v7 = *(v23 + 8 * v4);
    }

    v8 = v7;
    v9 = v0[8];
    v10 = sub_20CD62704();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = [v8 UUID];
    sub_20CD62684();

    if (*(v27 + 16) && (sub_20CD52EF8(v0[7]), v12 = v0[7], v13 = v0[5], (v14 & 1) != 0))
    {
      v15 = *v25;

      v15(v12, v13);
    }

    else
    {
      (*v25)(v0[7], v0[5]);
    }

    v16 = v0[4];
    v17 = sub_20CD62FD4();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_20CD63074();
    v19 = *(v28 + 16);
    v18 = *(v28 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_20CD46C48((v18 > 1), v19 + 1, 1);
    }

    v20 = v0[11];
    v21 = v0[9];
    ++v4;
    *(v28 + 16) = v19 + 1;
    (*(v5 + 32))(v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v20, v21);
  }

  while (v24 != v4);

LABEL_18:

  v22 = v0[1];

  return v22(v6);
}

uint64_t sub_20CD4E484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD4E518(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v4 = sub_20CD626A4();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD4E5DC, 0, 0);
}

uint64_t sub_20CD4E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + 32);
  if (v6 >> 62)
  {
    v7 = sub_20CD63524();
    *(v5 + 72) = v7;
    if (v7)
    {
LABEL_3:
      v8 = *(v5 + 32);
      v9 = *MEMORY[0x277CCCB90];
      *(v5 + 80) = *MEMORY[0x277CCCB10];
      *(v5 + 88) = v9;
      v10 = *MEMORY[0x277CCCC90];
      *(v5 + 96) = *MEMORY[0x277CCCB40];
      *(v5 + 104) = v10;
      v11 = MEMORY[0x277D84F98];
      *(v5 + 112) = *MEMORY[0x277CCCCD0];
      *(v5 + 120) = v11;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F310EA0](0);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282161238](v7, v8, a3, a4, a5);
        }

        v12 = *(v8 + 32);
      }

      v13 = v12;
      *(v5 + 128) = v12;
      *(v5 + 136) = 1;
      v14 = [v12 workoutActivityType];
      if (v14 <= 36)
      {
        if (v14 == 13)
        {
          v15 = *(v5 + 80);
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_20CD64CF0;
          v18 = (v17 + 32);
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          goto LABEL_20;
        }

        if (v14 != 24)
        {
LABEL_17:
          if ((sub_20CD427D0() & 1) == 0)
          {
            v17 = MEMORY[0x277D84F90];
LABEL_21:
            *(v5 + 144) = v17;
            v19 = *(v5 + 40);
            v20 = *(v5 + 184);
            *(v5 + 16) = v17;
            v21 = swift_task_alloc();
            *(v5 + 152) = v21;
            *(v21 + 16) = v19;
            *(v21 + 24) = v13;
            *(v21 + 32) = v20;
            v22 = swift_task_alloc();
            *(v5 + 160) = v22;
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811178, &qword_20CD64D78);
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811180, &qword_20CD64D80);
            a5 = sub_20CD4F5F0();
            *v22 = v5;
            v22[1] = sub_20CD4E938;
            v7 = &unk_20CD64D70;
            v8 = v21;
            a3 = v23;
            a4 = v24;

            return MEMORY[0x282161238](v7, v8, a3, a4, a5);
          }

          v15 = *(v5 + 88);
          goto LABEL_19;
        }
      }

      else if (v14 != 37 && v14 != 52)
      {
        if (v14 == 84)
        {
          v16 = *(v5 + 104);
          v15 = *(v5 + 112);
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_20CD64D00;
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          *(v17 + 32) = MEMORY[0x20F310DB0](v16);
          v18 = (v17 + 40);
LABEL_20:
          *v18 = MEMORY[0x20F310DB0](v15);
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v16 = *(v5 + 88);
      v15 = *(v5 + 96);
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v5 + 72) = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v5 + 8);
  v26 = MEMORY[0x277D84F98];

  return v25(v26);
}