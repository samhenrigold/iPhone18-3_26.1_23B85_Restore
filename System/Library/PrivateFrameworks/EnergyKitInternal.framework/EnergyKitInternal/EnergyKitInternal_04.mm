uint64_t sub_20DF2BE48()
{

  return MEMORY[0x2822009F8](sub_20DF2BF28, 0, 0);
}

uint64_t sub_20DF2BF28()
{
  v1 = *(v0 + 336);
  [*(v0 + 256) invalidate];
  sub_20DF47EE4();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF2BFEC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEBA16C;

  return sub_20DF2B6E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20DF2C0F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  [*(v0 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  return sub_20DF47EE4();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EnergySite.generateMockAMIData(startDate:endDate:forceAllReadingsToConstant:recordInterval:batchSize:rateSchedule:netMetering:direction:randomization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 235) = v16;
  *(v9 + 104) = v15;
  *(v9 + 112) = v8;
  *(v9 + 234) = v14;
  *(v9 + 88) = a8;
  *(v9 + 96) = v13;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 233) = a5;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_20DF47BD4();
  *(v9 + 120) = v10;
  *(v9 + 128) = *(v10 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2C308, 0, 0);
}

uint64_t sub_20DF2C308(uint64_t a1)
{
  v125 = v1;
  if (sub_20DF47794())
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v2 = *(v1 + 200);
    v3 = *(v1 + 120);
    v4 = *(v1 + 128);
    v5 = __swift_project_value_buffer(v3, qword_281122F18);
    swift_beginAccess();
    v123 = *(v4 + 16);
    v123(v2, v5, v3);

    v6 = sub_20DF47BB4();
    v7 = sub_20DF47FF4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 200);
    v11 = *(v1 + 120);
    v10 = *(v1 + 128);
    v120 = v5;
    if (v8)
    {
      v117 = *(v1 + 200);
      v12 = *(v1 + 112);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v124 = v14;
      *v13 = 136315138;
      v15 = *(v12 + 16);
      v16 = sub_20DF479B4();
      v18 = v17;

      v19 = sub_20DED38E8(v16, v18, &v124);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_20DEAF000, v6, v7, "Configs that will be used to generate mock data for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v20 = v14;
      v5 = v120;
      MEMORY[0x20F329700](v20, -1, -1);
      MEMORY[0x20F329700](v13, -1, -1);

      v21 = *(v10 + 8);
      v21(v117, v11);
    }

    else
    {

      v21 = *(v10 + 8);
      v21(v9, v11);
    }

    v123(*(v1 + 192), v5, *(v1 + 120));

    v24 = sub_20DF47BB4();
    v25 = sub_20DF47FF4();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v1 + 192);
    v28 = *(v1 + 120);
    v118 = v21;
    if (v26)
    {
      v30 = *(v1 + 40);
      v29 = *(v1 + 48);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v124 = v32;
      *v31 = 136315138;
      v33 = v30;
      v21 = v118;
      *(v31 + 4) = sub_20DED38E8(v33, v29, &v124);
      _os_log_impl(&dword_20DEAF000, v24, v25, "Start date: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      v34 = v32;
      v5 = v120;
      MEMORY[0x20F329700](v34, -1, -1);
      MEMORY[0x20F329700](v31, -1, -1);
    }

    v21(v27, v28);
    v123(*(v1 + 184), v5, *(v1 + 120));

    v35 = sub_20DF47BB4();
    v36 = sub_20DF47FF4();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v1 + 184);
    v39 = *(v1 + 120);
    if (v37)
    {
      v41 = *(v1 + 56);
      v40 = *(v1 + 64);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v124 = v43;
      *v42 = 136315138;
      v44 = v41;
      v21 = v118;
      *(v42 + 4) = sub_20DED38E8(v44, v40, &v124);
      _os_log_impl(&dword_20DEAF000, v35, v36, "End date: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v45 = v43;
      v5 = v120;
      MEMORY[0x20F329700](v45, -1, -1);
      MEMORY[0x20F329700](v42, -1, -1);
    }

    v21(v38, v39);
    v123(*(v1 + 176), v5, *(v1 + 120));
    v46 = sub_20DF47BB4();
    v47 = sub_20DF47FF4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 176);
    v50 = *(v1 + 120);
    if (v48)
    {
      v51 = *(v1 + 233);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v124 = v53;
      *v52 = 136315138;
      if (v51)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (v51)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      v56 = sub_20DED38E8(v54, v55, &v124);

      *(v52 + 4) = v56;
      v5 = v120;
      _os_log_impl(&dword_20DEAF000, v46, v47, "Force all readings to be constant: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x20F329700](v53, -1, -1);
      MEMORY[0x20F329700](v52, -1, -1);

      v118(v49, v50);
    }

    else
    {

      v21(v49, v50);
    }

    v123(*(v1 + 168), v5, *(v1 + 120));
    v57 = sub_20DF47BB4();
    v58 = sub_20DF47FF4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v1 + 72);
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v59;
      _os_log_impl(&dword_20DEAF000, v57, v58, "Record interval: %ld seconds", v60, 0xCu);
      MEMORY[0x20F329700](v60, -1, -1);
    }

    v62 = *(v1 + 160);
    v61 = *(v1 + 168);
    v63 = *(v1 + 120);

    v118(v61, v63);
    v123(v62, v5, v63);

    v64 = sub_20DF47BB4();
    v65 = sub_20DF47FF4();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v1 + 160);
    v68 = *(v1 + 120);
    if (v66)
    {
      v70 = *(v1 + 88);
      v69 = *(v1 + 96);
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v124 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_20DED38E8(v70, v69, &v124);
      _os_log_impl(&dword_20DEAF000, v64, v65, "Rate Schedule: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      v73 = v72;
      v5 = v120;
      MEMORY[0x20F329700](v73, -1, -1);
      MEMORY[0x20F329700](v71, -1, -1);
    }

    v118(v67, v68);
    v74 = v118;
    v123(*(v1 + 152), v5, *(v1 + 120));
    v75 = sub_20DF47BB4();
    v76 = sub_20DF47FF4();
    v77 = os_log_type_enabled(v75, v76);
    v78 = *(v1 + 152);
    v79 = *(v1 + 120);
    if (v77)
    {
      v80 = *(v1 + 234);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v124 = v82;
      *v81 = 136315138;
      if (v80)
      {
        v83 = 1702195828;
      }

      else
      {
        v83 = 0x65736C6166;
      }

      if (v80)
      {
        v84 = 0xE400000000000000;
      }

      else
      {
        v84 = 0xE500000000000000;
      }

      v85 = sub_20DED38E8(v83, v84, &v124);

      *(v81 + 4) = v85;
      v5 = v120;
      _os_log_impl(&dword_20DEAF000, v75, v76, "Net metering: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v86 = v82;
      v74 = v118;
      MEMORY[0x20F329700](v86, -1, -1);
      MEMORY[0x20F329700](v81, -1, -1);
    }

    v74(v78, v79);
    v123(*(v1 + 144), v5, *(v1 + 120));
    v87 = sub_20DF47BB4();
    v88 = sub_20DF47FF4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = *(v1 + 104);
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      *(v90 + 4) = v89;
      _os_log_impl(&dword_20DEAF000, v87, v88, "Direction of energy flow: %ld", v90, 0xCu);
      MEMORY[0x20F329700](v90, -1, -1);
    }

    v92 = *(v1 + 136);
    v91 = *(v1 + 144);
    v93 = *(v1 + 120);

    v74(v91, v93);
    v123(v92, v5, v93);
    v94 = sub_20DF47BB4();
    v95 = sub_20DF47FF4();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v1 + 136);
    v98 = *(v1 + 120);
    if (v96)
    {
      v99 = *(v1 + 235);
      v100 = swift_slowAlloc();
      v101 = v74;
      v102 = swift_slowAlloc();
      v124 = v102;
      *v100 = 136315138;
      if (v99)
      {
        v103 = 1702195828;
      }

      else
      {
        v103 = 0x65736C6166;
      }

      if (v99)
      {
        v104 = 0xE400000000000000;
      }

      else
      {
        v104 = 0xE500000000000000;
      }

      v105 = sub_20DED38E8(v103, v104, &v124);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_20DEAF000, v94, v95, "Demo mode: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x20F329700](v102, -1, -1);
      MEMORY[0x20F329700](v100, -1, -1);

      v101(v97, v98);
    }

    else
    {

      v74(v97, v98);
    }

    v122 = *(v1 + 235);
    v107 = *(v1 + 104);
    v106 = *(v1 + 112);
    v108 = *(v1 + 234);
    v110 = *(v1 + 88);
    v109 = *(v1 + 96);
    v111 = *(v1 + 233);
    v112 = *(v1 + 64);
    v119 = *(v1 + 48);
    v121 = *(v1 + 72);
    v113 = *(v1 + 40);
    v114 = swift_task_alloc();
    *(v1 + 208) = v114;
    *(v114 + 16) = v106;
    *(v114 + 24) = v113;
    *(v114 + 32) = v119;
    *(v114 + 48) = v112;
    *(v114 + 56) = v111;
    *(v114 + 64) = v121;
    *(v114 + 80) = v110;
    *(v114 + 88) = v109;
    *(v114 + 96) = v108;
    *(v114 + 104) = v107;
    *(v114 + 112) = v122;
    v115 = swift_task_alloc();
    *(v1 + 216) = v115;
    *v115 = v1;
    v115[1] = sub_20DF2CF64;
    v116 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v1 + 232, 0, 0, 0xD00000000000008CLL, 0x800000020DF4FFC0, sub_20DF2ED44, v114, v116);
  }

  else
  {

    v22 = *(v1 + 8);

    return v22(0);
  }
}

uint64_t sub_20DF2CF64()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_20DF2D158;
  }

  else
  {

    v2 = sub_20DF2D080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF2D080()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DF2D158()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20DF2D238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v53 = a8;
  v43 = a3;
  v44 = a4;
  v51 = a7;
  v52 = a14;
  v49 = a6;
  v50 = a13;
  v48 = a12;
  v46 = a11;
  v47 = a5;
  v45 = a10;
  v41 = a2;
  v42 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v39 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v40 = &v38 - v21;
  v23 = sub_20DF47F04();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v16 + 16))(v19, a1, v15);
  v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  (*(v16 + 32))(v29 + v24, v19, v39);
  *(v29 + v25) = v41;
  v30 = (v29 + v26);
  v31 = v44;
  *v30 = v43;
  v30[1] = v31;
  v32 = v29 + v38;
  v33 = v46;
  v34 = v49;
  *v32 = v47;
  *(v32 + 8) = v34;
  *(v32 + 16) = v51;
  *(v29 + v27) = v53;
  *(v29 + v28) = v42;
  v35 = v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v35 = v45;
  *(v35 + 8) = v33;
  *(v35 + 16) = v48;
  v36 = v29 + ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v36 = v50;
  *(v36 + 8) = v52;

  sub_20DEBB534(0, 0, v40, &unk_20DF4BCE8, v29);
}

uint64_t sub_20DF2D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 332) = v21;
  *(v8 + 224) = v18;
  *(v8 + 232) = v20;
  *(v8 + 331) = v19;
  *(v8 + 208) = v16;
  *(v8 + 216) = v17;
  *(v8 + 192) = v13;
  *(v8 + 200) = v15;
  *(v8 + 330) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  *(v8 + 240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 + 64);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2D634, 0, 0);
}

uint64_t sub_20DF2D634()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v20 = *(v0 + 332);
  v3 = *(v0 + 240);
  v19 = *(v0 + 232);
  v18 = *(v0 + 331);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v21 = *(v0 + 330);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 272) = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  (*(v2 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF2F230, v7);
  *(v0 + 280) = v8;

  v9 = *(v5 + 16);
  sub_20DF479B4();

  v10 = sub_20DF47D04();
  *(v0 + 288) = v10;

  v11 = sub_20DF47D04();
  *(v0 + 296) = v11;
  v12 = sub_20DF47D04();
  *(v0 + 304) = v12;
  v13 = sub_20DF47D04();
  *(v0 + 312) = v13;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 328;
  *(v0 + 24) = sub_20DF2D904;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF3B890;
  *(v0 + 104) = &block_descriptor_16;
  *(v0 + 112) = v14;
  LOBYTE(v17) = v20;
  LOBYTE(v16) = v18;
  [v8 generateMockAMIDataWithSiteID:v10 startDate:v11 endDate:v12 forceAllReadingsToConstant:v21 recordInterval:v22 batchSize:v23 rateSchedule:v13 netMetering:v16 direction:v19 randomization:v17 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF2D904()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_20DF2DAE0;
  }

  else
  {
    v2 = sub_20DF2DA14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF2DA14()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 328);
  swift_unknownObjectRelease();

  [*(v5 + 16) invalidate];
  *(v0 + 329) = v6;
  sub_20DF47EE4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DF2DAE0(uint64_t a1)
{
  v3 = v1[39];
  v2 = v1[40];
  v5 = v1[37];
  v4 = v1[38];
  v6 = v1[36];
  swift_willThrow();

  swift_unknownObjectRelease();

  v1[18] = v2;
  sub_20DF47ED4();

  v7 = v1[1];

  return v7();
}

uint64_t sub_20DF2DBB4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20DED38E8(0xD00000000000008CLL, 0x800000020DF4FFC0, &v22);
    *(v13 + 12) = 2080;
    v21[1] = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "%s error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t EnergySite.generateMultipleMeterMockAMIData(startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_20DF2DEA0, 0, 0);
}

uint64_t sub_20DF2DEA0(uint64_t a1)
{
  if (sub_20DF47794())
  {
    v3 = *(v1 + 72);
    v2 = *(v1 + 80);
    v4 = *(v1 + 48);
    v12 = *(v1 + 32);
    v13 = *(v1 + 56);
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = swift_task_alloc();
    *(v1 + 88) = v7;
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v12;
    *(v7 + 56) = v4;
    *(v7 + 64) = v13;
    *(v7 + 80) = v3;
    v8 = swift_task_alloc();
    *(v1 + 96) = v8;
    *v8 = v1;
    v8[1] = sub_20DF2E01C;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v1 + 112, 0, 0, 0xD00000000000005FLL, 0x800000020DF50050, sub_20DF2EDA0, v7, v9);
  }

  else
  {
    v10 = *(v1 + 8);

    return v10(0);
  }
}

uint64_t sub_20DF2E01C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20DF2E150;
  }

  else
  {

    v2 = sub_20DF2E138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF2E150()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20DF2E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v44 = a10;
  v45 = a6;
  v42 = a9;
  v43 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v37 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v38 = &v36 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v12 + 32))(v26 + v20, v15, v37);
  v27 = v40;
  *(v26 + v21) = v39;
  v28 = (v26 + v22);
  v30 = v41;
  v29 = v42;
  *v28 = v27;
  v28[1] = v30;
  v31 = (v26 + v23);
  v32 = v45;
  *v31 = v43;
  v31[1] = v32;
  v33 = v47;
  *(v26 + v24) = v46;
  v34 = (v26 + v25);
  *v34 = v33;
  v34[1] = v29;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;

  sub_20DEBB534(0, 0, v38, &unk_20DF4BCD8, v26);
}

uint64_t sub_20DF2E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2E544, 0, 0);
}

uint64_t sub_20DF2E544()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v16 = v0[25];
  v17 = v0[28];
  v4 = v0[19];
  v5 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = sub_20DF3D598(sub_20DF2EF80, v7);
  v0[34] = v8;

  v9 = *(v5 + 16);
  sub_20DF479B4();

  v10 = sub_20DF47D04();
  v0[35] = v10;

  v11 = sub_20DF47D04();
  v0[36] = v11;
  v12 = sub_20DF47D04();
  v0[37] = v12;
  v13 = sub_20DF47D04();
  v0[38] = v13;
  v0[2] = v0;
  v0[7] = v0 + 40;
  v0[3] = sub_20DF2E7D8;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_8;
  v0[14] = v14;
  [v8 generateMultipleMeterMockAMIDataWithSiteID:v10 startDate:v11 endDate:v12 recordInterval:v16 rateSchedule:v13 multipleMeters:v17 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF2E7D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_20DF2E9B4;
  }

  else
  {
    v2 = sub_20DF2E8E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF2E8E8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 320);
  swift_unknownObjectRelease();

  [*(v5 + 16) invalidate];
  *(v0 + 321) = v6;
  sub_20DF47EE4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DF2E9B4(uint64_t a1)
{
  v3 = v1[38];
  v2 = v1[39];
  v5 = v1[36];
  v4 = v1[37];
  v6 = v1[35];
  swift_willThrow();

  swift_unknownObjectRelease();

  v1[18] = v2;
  sub_20DF47ED4();

  v7 = v1[1];

  return v7();
}

uint64_t sub_20DF2EA88(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20DED38E8(0xD00000000000005FLL, 0x800000020DF50050, &v22);
    *(v13 + 12) = 2080;
    v21[1] = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "%s error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF2EDD8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v12 = *(v1 + v5);
  v7 = *(v1 + v6 + 8);
  v11 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DF2E454(a1, v14, v13, v1 + v4, v12, v11, v7, v8);
}

uint64_t sub_20DF2EFB0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v14 = *(v1 + v5);
  v8 = (v1 + v6);
  v12 = v8[1];
  v13 = *v8;
  v11 = *(v1 + v7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEBA16C;

  return sub_20DF2D520(a1, v16, v15, v1 + v4, v14, v13, v12, v11);
}

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF2F248(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20DF2F2E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1801807223;
    }

    else
    {
      v3 = 7954788;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x68746E6F6DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x68746E6F4D786973;
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1918985593;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1801807223;
    }

    else
    {
      v9 = 7954788;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68746E6F4D786973;
    v6 = 0xE900000000000073;
    if (a2 != 3)
    {
      v5 = 1918985593;
      v6 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x68746E6F6DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_20DF483D4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t EnergySite.historicalEnergyUsage(interval:start:timezone:utilityID:subscriptionID:bulk:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 249) = v15;
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  *(v9 + 64) = a1;
  *(v9 + 72) = a3;
  v11 = sub_20DF47BD4();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D058, &qword_20DF4BCF8);
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v12 = sub_20DF474E4();
  *(v9 + 176) = v12;
  *(v9 + 184) = *(v12 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 250) = *a2;

  return MEMORY[0x2822009F8](sub_20DF2F604, 0, 0);
}

uint64_t sub_20DF2F604()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  LOBYTE(v122) = *(v0 + 250);
  sub_20DF30B0C(&v122, v2, v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) == 1)
  {
    sub_20DED8730(*(v0 + 168), &qword_27C84D058, &qword_20DF4BCF8);
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 72);
    v12 = __swift_project_value_buffer(v10, qword_27C851F60);
    swift_beginAccess();
    (*(v9 + 16))(v8, v12, v10);
    (*(v6 + 16))(v5, v11, v7);
    v13 = sub_20DF47BB4();
    v14 = sub_20DF47FF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 250);
      v16 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v122 = v118;
      *v16 = 136315650;
      *(v16 + 4) = sub_20DED38E8(0xD00000000000004DLL, 0x800000020DF500B0, &v122);
      v17 = 0xE300000000000000;
      *(v16 + 12) = 2080;
      v18 = 0xE500000000000000;
      v19 = 0x68746E6F6DLL;
      v20 = 0x68746E6F4D786973;
      v21 = 0xE900000000000073;
      if (v15 != 3)
      {
        v20 = 1918985593;
        v21 = 0xE400000000000000;
      }

      if (v15 != 2)
      {
        v19 = v20;
        v18 = v21;
      }

      v22 = 1801807223;
      if (v15)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v22 = 7954788;
      }

      if (v15 <= 1)
      {
        v23 = v22;
      }

      else
      {
        v23 = v19;
      }

      if (v15 <= 1)
      {
        v24 = v17;
      }

      else
      {
        v24 = v18;
      }

      v25 = *(v0 + 184);
      v26 = *(v0 + 192);
      v27 = *(v0 + 176);
      v28 = *(v0 + 136);
      v113 = *(v0 + 128);
      v116 = *(v0 + 144);
      v29 = sub_20DED38E8(v23, v24, &v122);

      *(v16 + 14) = v29;
      *(v16 + 22) = 2080;
      sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v30 = sub_20DF483B4();
      v32 = v31;
      (*(v25 + 8))(v26, v27);
      v33 = sub_20DED38E8(v30, v32, &v122);

      *(v16 + 24) = v33;
      _os_log_impl(&dword_20DEAF000, v13, v14, "%s error calculating intervals parameters. interval:%s, start:%s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F329700](v118, -1, -1);
      MEMORY[0x20F329700](v16, -1, -1);

      (*(v28 + 8))(v116, v113);
    }

    else
    {
      v46 = *(v0 + 184);
      v45 = *(v0 + 192);
      v47 = *(v0 + 176);
      v49 = *(v0 + 136);
      v48 = *(v0 + 144);
      v50 = *(v0 + 128);

      (*(v46 + 8))(v45, v47);
      (*(v49 + 8))(v48, v50);
    }

LABEL_23:
    v51 = *(v0 + 64);
    v52 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);

    v53 = *(v0 + 8);

    return v53();
  }

  v119 = v4;
  v34 = *(v0 + 216);
  v35 = *(v0 + 224);
  v36 = *(v0 + 176);
  v37 = *(v0 + 184);
  v38 = *(v0 + 168);
  v39 = *(v0 + 249);
  v40 = *(v3 + 48);
  v41 = sub_20DF475C4();
  v111 = *(*(v41 - 8) + 8);
  v114 = v41;
  v111(v38);
  v108 = *(v37 + 32);
  v108(v35, v38 + v40, v36);
  v42 = *(v37 + 16);
  v42(v34, v35, v36);
  if (v39 == 1)
  {
    v43 = *(v0 + 250);
    if (v43 == 3)
    {

      v44 = 3;
    }

    else
    {
      v55 = sub_20DF483D4();

      if (v55)
      {
        v44 = v43;
      }

      else
      {
        v44 = 4;
      }
    }

    v56 = *(v0 + 160);
    v57 = *(v0 + 72);
    LOBYTE(v122) = v44;
    sub_20DF30B0C(&v122, v57, v56);
    if (v119(v56, 1, v3) == 1)
    {
      sub_20DED8730(*(v0 + 160), &qword_27C84D058, &qword_20DF4BCF8);
      if (qword_27C84C730 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 200);
      v59 = *(v0 + 176);
      v60 = *(v0 + 152);
      v62 = *(v0 + 128);
      v61 = *(v0 + 136);
      v63 = *(v0 + 72);
      v64 = __swift_project_value_buffer(v62, qword_27C851F60);
      swift_beginAccess();
      (*(v61 + 16))(v60, v64, v62);
      v42(v58, v63, v59);
      v65 = sub_20DF47BB4();
      v66 = sub_20DF47FF4();
      if (os_log_type_enabled(v65, v66))
      {
        v120 = v66;
        v67 = *(v0 + 250);
        v68 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v122 = v117;
        *v68 = 136315650;
        *(v68 + 4) = sub_20DED38E8(0xD00000000000004DLL, 0x800000020DF500B0, &v122);
        *(v68 + 12) = 2080;
        v69 = 0xE500000000000000;
        v70 = 0x68746E6F6DLL;
        v71 = 0xE400000000000000;
        v72 = 1918985593;
        if (v67 == 3)
        {
          v72 = 0x68746E6F4D786973;
          v71 = 0xE900000000000073;
        }

        if (v67 != 2)
        {
          v70 = v72;
          v69 = v71;
        }

        v73 = 0xE300000000000000;
        v74 = 1801807223;
        if (v67)
        {
          v73 = 0xE400000000000000;
        }

        else
        {
          v74 = 7954788;
        }

        if (v67 <= 1)
        {
          v75 = v74;
        }

        else
        {
          v75 = v70;
        }

        if (v67 <= 1)
        {
          v76 = v73;
        }

        else
        {
          v76 = v69;
        }

        v112 = *(v0 + 216);
        v115 = *(v0 + 224);
        v77 = *(v0 + 200);
        v79 = *(v0 + 176);
        v78 = *(v0 + 184);
        v80 = *(v0 + 136);
        v109 = *(v0 + 128);
        v110 = *(v0 + 152);
        v81 = sub_20DED38E8(v75, v76, &v122);

        *(v68 + 14) = v81;
        *(v68 + 22) = 2080;
        sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v82 = sub_20DF483B4();
        v84 = v83;
        v85 = *(v78 + 8);
        v85(v77, v79);
        v86 = sub_20DED38E8(v82, v84, &v122);

        *(v68 + 24) = v86;
        _os_log_impl(&dword_20DEAF000, v65, v120, "%s error calculating intervals parameters. interval:%s, start:%s", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F329700](v117, -1, -1);
        MEMORY[0x20F329700](v68, -1, -1);

        (*(v80 + 8))(v110, v109);
        v85(v112, v79);
        v85(v115, v79);
      }

      else
      {
        v99 = *(v0 + 216);
        v100 = *(v0 + 224);
        v101 = *(v0 + 200);
        v102 = *(v0 + 176);
        v103 = *(v0 + 184);
        v104 = *(v0 + 152);
        v105 = *(v0 + 128);
        v106 = *(v0 + 136);

        v107 = *(v103 + 8);
        v107(v101, v102);
        (*(v106 + 8))(v104, v105);
        v107(v99, v102);
        v107(v100, v102);
      }

      goto LABEL_23;
    }

    v87 = *(v0 + 208);
    v88 = *(v0 + 216);
    v89 = *(v0 + 176);
    v90 = *(v0 + 160);
    (*(*(v0 + 184) + 8))(v88, v89);
    v108(v87, v90 + *(v3 + 48), v89);
    (v111)(v90, v114);
    v108(v88, v87, v89);
  }

  *(v0 + 248) = *(v0 + 250);
  v91 = swift_task_alloc();
  *(v0 + 232) = v91;
  *v91 = v0;
  v91[1] = sub_20DF30100;
  v92 = *(v0 + 216);
  v93 = *(v0 + 96);
  v94 = *(v0 + 104);
  v95 = *(v0 + 80);
  v96 = *(v0 + 88);
  v97 = *(v0 + 64);
  v98 = *(v0 + 72);

  return EnergySite.historicalEnergyUsageInterval(interval:start:end:timezone:utilityID:subscriptionID:)(v97, (v0 + 248), v98, v92, v95, v96, v93, v94);
}

uint64_t sub_20DF30100()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_20DF30360;
  }

  else
  {
    v2 = sub_20DF30214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF30214()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = *(v0[23] + 8);
  v3(v0[27], v2);
  v3(v1, v2);
  v4 = v0[8];
  v5 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DF30360()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[22];
  v4 = *(v0[23] + 8);
  v4(v0[27], v3);
  v4(v2, v3);

  v5 = v0[8];
  v6 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DF304B8(uint64_t a1)
{
  result = MEMORY[0x20F328B90](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_20DF357FC(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF305B0(uint64_t a1)
{
  v2 = sub_20DF474E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  result = MEMORY[0x20F328B90](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_20DF358DC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF30810(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_20DF357FC(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF308F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_20DF358DC(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF30B0C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v107 = a3;
  v4 = sub_20DF47BD4();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v98 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v88 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C958, qword_20DF499C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v87 - v13;
  v15 = sub_20DF47604();
  v96 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v87 - v19;
  v20 = sub_20DF47574();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20DF475D4();
  v102 = *(v24 - 8);
  v103 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_20DF474E4();
  v104 = *(v106 - 8);
  v27 = MEMORY[0x28223BE20](v106);
  v91 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v87 - v29;
  v31 = sub_20DF475C4();
  v93 = *(v31 - 8);
  v94 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v95 = &v87 - v35;
  v36 = *a1;
  v105 = v30;
  v37 = v26;
  sub_20DF474D4();
  (*(v21 + 104))(v23, *MEMORY[0x277CC9830], v20);
  sub_20DF47584();
  (*(v21 + 8))(v23, v20);
  v38 = *(v101 + 16);
  sub_20DF47A04();
  v40 = v39;

  if (!v40)
  {
    goto LABEL_4;
  }

  sub_20DF475E4();

  v41 = v96;
  if ((*(v96 + 48))(v14, 1, v15) == 1)
  {
    sub_20DED8730(v14, &qword_27C84C958, qword_20DF499C8);
LABEL_4:
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v42 = v100;
    v43 = __swift_project_value_buffer(v100, qword_27C851F60);
    swift_beginAccess();
    v45 = v98;
    v44 = v99;
    (*(v99 + 16))(v98, v43, v42);
    v46 = sub_20DF47BB4();
    v47 = sub_20DF47FF4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v107;
    v50 = v105;
    if (v48)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v108 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF50160, &v108);
      _os_log_impl(&dword_20DEAF000, v46, v47, "%s valid timezone set for EnergySite required", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x20F329700](v52, -1, -1);
      MEMORY[0x20F329700](v51, -1, -1);
    }

    (*(v44 + 8))(v45, v42);
    (*(v102 + 8))(v37, v103);
    (*(v104 + 8))(v50, v106);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
    v54 = *(*(v53 - 8) + 56);
    v55 = v49;
    goto LABEL_9;
  }

  v57 = v97;
  (*(v41 + 32))(v97, v14, v15);
  v58 = v41;
  v59 = *(v41 + 16);
  v101 = v15;
  v59(v18, v57, v15);
  v60 = v26;
  sub_20DF475B4();
  if (v36 <= 1)
  {
    v61 = v104;
    v63 = v93;
    v62 = v94;
    if (!v36)
    {
      v71 = v91;
      v72 = v95;
      sub_20DF47AF4();
      (*(v58 + 8))(v97, v101);
      v66 = v72;
      (*(v102 + 8))(v60, v103);
      v68 = v105;
      v67 = v106;
      (*(v61 + 8))(v105, v106);
      v69 = *(v61 + 32);
      v73 = v71;
      v62 = v94;
      v69(v68, v73, v67);
      (*(v63 + 104))(v66, *MEMORY[0x277CC9980], v62);
      goto LABEL_16;
    }

    v79 = *MEMORY[0x277CC9968];
    v80 = *(v93 + 104);
    v80(v95, v79, v94);
    v80(v34, v79, v62);
    v78 = v88;
  }

  else
  {
    v61 = v104;
    v63 = v93;
    v62 = v94;
    if (v36 == 2)
    {
      v75 = *(v93 + 104);
      v75(v95, *MEMORY[0x277CC9968], v94);
      v75(v34, *MEMORY[0x277CC9998], v62);
      v76 = &v109;
    }

    else
    {
      if (v36 == 3)
      {
        v64 = v95;
        (*(v93 + 104))(v95, *MEMORY[0x277CC9940], v94);
        v65 = v91;
        sub_20DF47A54();
        (*(v58 + 8))(v97, v101);
        v66 = v64;
        (*(v102 + 8))(v60, v103);
        v68 = v105;
        v67 = v106;
        (*(v61 + 8))(v105, v106);
        v69 = *(v61 + 32);
        v70 = v65;
        v62 = v94;
        v69(v68, v70, v67);
LABEL_16:
        v74 = v107;
LABEL_24:
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
        v85 = *(v84 + 48);
        (*(v63 + 32))(v74, v66, v62);
        v69((v74 + v85), v68, v67);
        v54 = *(*(v84 - 8) + 56);
        v55 = v74;
        v56 = 0;
        v53 = v84;
        return v54(v55, v56, 1, v53);
      }

      v77 = *(v93 + 104);
      v77(v95, *MEMORY[0x277CC9998], v94);
      v77(v34, *MEMORY[0x277CC9988], v62);
      v76 = &v110;
    }

    v78 = *(v76 - 32);
  }

  v81 = v60;
  v82 = v78;
  sub_20DF475A4();
  v83 = *(v63 + 8);
  v83(v34, v62);
  (*(v58 + 8))(v97, v101);
  (*(v102 + 8))(v81, v103);
  v68 = v105;
  v67 = v106;
  (*(v61 + 8))(v105, v106);
  if ((*(v61 + 48))(v82, 1, v67) != 1)
  {
    v69 = *(v61 + 32);
    v69(v68, v82, v67);
    v74 = v107;
    v66 = v95;
    goto LABEL_24;
  }

  v83(v95, v62);
  sub_20DED8730(v82, &qword_27C84C988, &qword_20DF4AD10);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
  v54 = *(*(v53 - 8) + 56);
  v55 = v107;
LABEL_9:
  v56 = 1;
  return v54(v55, v56, 1, v53);
}

uint64_t EnergySite.historicalEnergyUsageInterval(interval:start:end:timezone:utilityID:subscriptionID:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v17;
  *(v9 + 144) = v8;
  *(v9 + 120) = a7;
  *(v9 + 128) = a8;
  *(v9 + 104) = a5;
  *(v9 + 112) = a6;
  *(v9 + 88) = a3;
  *(v9 + 96) = a4;
  *(v9 + 80) = a1;
  v11 = sub_20DF47BD4();
  *(v9 + 152) = v11;
  *(v9 + 160) = *(v11 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D070, &qword_20DF4BD10);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v12 = sub_20DF474E4();
  *(v9 + 232) = v12;
  *(v9 + 240) = *(v12 - 8);
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v13 = type metadata accessor for EnergySite.EnergyUsage(0);
  *(v9 + 280) = v13;
  *(v9 + 288) = *(v13 - 8);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D078, &qword_20DF4BD18);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v14 = sub_20DF47834();
  *(v9 + 352) = v14;
  *(v9 + 360) = *(v14 - 8);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D080, &qword_20DF4BD20);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 552) = *a2;

  return MEMORY[0x2822009F8](sub_20DF31AF0, 0, 0);
}

uint64_t sub_20DF31AF0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = swift_task_alloc();
  *(v0 + 488) = v4;
  v5 = *(v0 + 88);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v10;
  *(v4 + 56) = v9;
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
  v6 = swift_task_alloc();
  *(v0 + 496) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D088, &qword_20DF4BD28);
  *(v0 + 504) = v7;
  *v6 = v0;
  v6[1] = sub_20DF31C2C;

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0xD000000000000054, 0x800000020DF50100, sub_20DF357DC, v4, v7);
}

uint64_t sub_20DF31C2C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_20DF33ED0;
  }

  else
  {

    v2 = sub_20DF31D48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF31D48(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v108 = v8;
  v9 = 0;
  v10 = *(v8 + 64);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = -1;
  v94 = *(v8 + 64);
  v15 = -1 << *(v94 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & v11;
  v17 = (63 - v15) >> 6;
  v18 = *(v8 + 160);
  v96 = *(v8 + 408);
  v89 = *(v8 + 240);
  v95 = (v89 + 1);
  v85 = (v18 + 8);
  v86 = (v18 + 16);
  v84 = (*(v8 + 360) + 32);
  v82 = *(v8 + 360);
  v19 = *(v8 + 512);
  v20 = MEMORY[0x277D84F98];
  v87 = v17;
  v88 = v12;
  while (1)
  {
    *(v8 + 520) = v20;
    if (!v16)
    {
      while (1)
      {
        v23 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v23 >= v17)
        {
          break;
        }

        v16 = *(v12 + 8 * v23);
        ++v9;
        if (v16)
        {
          v99 = v19;
          v102 = v20;
          v9 = v23;
          goto LABEL_13;
        }
      }

      v76 = *(v8 + 552);
      v77 = *(v8 + 144);
      v103 = *(v8 + 112);
      v106 = *(v8 + 128);
      v78 = *(v8 + 104);
      v101 = *(v8 + 88);

      v79 = swift_task_alloc();
      *(v8 + 528) = v79;
      *(v79 + 16) = v76;
      *(v79 + 24) = v101;
      *(v79 + 40) = v106;
      *(v79 + 56) = v103;
      *(v79 + 72) = v78;
      *(v79 + 80) = v77;
      v80 = swift_task_alloc();
      *(v8 + 536) = v80;
      *v80 = v8;
      v80[1] = sub_20DF325F4;
      a8 = *(v8 + 504);
      a6 = sub_20DF35D0C;
      a1 = v8 + 72;
      a5 = 0x800000020DF50100;
      a2 = 0;
      a3 = 0;
      a4 = 0xD000000000000054;
      a7 = v79;

      return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v99 = v19;
    v102 = v20;
LABEL_13:
    v24 = *(v8 + 472);
    v25 = *(v8 + 480);
    v26 = *(v8 + 464);
    v27 = *(v8 + 232);
    v28 = __clz(__rbit64(v16)) | (v9 << 6);
    v92 = v89[9];
    v90 = v89[2];
    v90(v25, *(v94 + 48) + v92 * v28, v27, a4, a5, a6, a7, a8);
    v104 = *(*(v94 + 56) + 16 * v28);
    *(v25 + *(v96 + 48)) = v104;
    v29 = (v24 + *(v96 + 48));
    v30 = v89[4];
    v30(v24, v25, v27);
    *v29 = v104;
    sub_20DED8804(v24, v26, &qword_27C84D080, &qword_20DF4BD20);
    v31 = (v26 + *(v96 + 48));
    v33 = *v31;
    v32 = v31[1];
    sub_20DED8AA0(v104, *(&v104 + 1));
    sub_20DED8A4C(v33, v32);
    sub_20DF47324();
    swift_allocObject();
    sub_20DF47314();
    sub_20DF3AB8C(&qword_27C84D090, MEMORY[0x277D073A8], MEMORY[0x277D073B8]);
    v34 = v99;
    sub_20DF47304();
    v35 = *(v8 + 464);
    if (v99)
    {
      v100 = v30;
      v105 = v34;
      v36 = *(v8 + 232);

      v98 = *v95;
      (*v95)(v35, v36);
      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v37 = *(v8 + 472);
      v38 = *(v8 + 432);
      v39 = *(v8 + 176);
      v40 = *(v8 + 152);
      v41 = __swift_project_value_buffer(v40, qword_281122F18);
      swift_beginAccess();
      (*v86)(v39, v41, v40);
      sub_20DED8804(v37, v38, &qword_27C84D080, &qword_20DF4BD20);
      v42 = sub_20DF47BB4();
      v43 = sub_20DF47FF4();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v8 + 432);
      if (v44)
      {
        v46 = *(v8 + 424);
        v91 = v43;
        v47 = *(v8 + 272);
        v48 = *(v8 + 232);
        v97 = *(v8 + 176);
        v93 = *(v8 + 152);
        v49 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v107[0] = v83;
        *v49 = 136315138;
        sub_20DED8804(v45, v46, &qword_27C84D080, &qword_20DF4BD20);
        sub_20DED8A4C(*(v46 + *(v96 + 48)), *(v46 + *(v96 + 48) + 8));
        v100(v47, v46, v48);
        sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v50 = sub_20DF483B4();
        v52 = v51;
        v98(v47, v48);
        sub_20DED8730(v45, &qword_27C84D080, &qword_20DF4BD20);
        v53 = sub_20DED38E8(v50, v52, v107);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_20DEAF000, v42, v91, "Failed to decode entry for imports on %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x20F329700](v83, -1, -1);
        MEMORY[0x20F329700](v49, -1, -1);

        (*v85)(v97, v93);
      }

      else
      {
        v21 = *(v8 + 176);
        v22 = *(v8 + 152);

        sub_20DED8730(v45, &qword_27C84D080, &qword_20DF4BD20);
        (*v85)(v21, v22);
      }

      v17 = v87;
      v12 = v88;
      v20 = v102;
      goto LABEL_6;
    }

    v55 = *(v8 + 392);
    v54 = *(v8 + 400);
    v56 = *(v8 + 352);

    v57 = v56;
    v58 = *v84;
    (*v84)(v55, v54, v57);
    v20 = v102;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v102;
    a1 = sub_20DEEFA5C(v35);
    v60 = *(v102 + 16);
    v61 = (a2 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v64 = a2;
    if (*(v102 + 24) < v63)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v75 = a1;
      sub_20DEF0C94();
      v67 = v90;
      a1 = v75;
      v20 = v107[0];
      goto LABEL_24;
    }

LABEL_23:
    v67 = v90;
LABEL_24:
    if (v64)
    {
      (*(v82 + 40))(v20[7] + *(v82 + 72) * a1, *(v8 + 392), *(v8 + 352));
    }

    else
    {
      v68 = *(v8 + 464);
      v69 = *(v8 + 392);
      v70 = *(v8 + 352);
      v71 = *(v8 + 232);
      v20[(a1 >> 6) + 8] |= 1 << a1;
      v72 = a1;
      v67(v20[6] + a1 * v92, v68, v71);
      a1 = v58(v20[7] + *(v82 + 72) * v72, v69, v70);
      v73 = v20[2];
      v62 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v62)
      {
        goto LABEL_38;
      }

      v20[2] = v74;
    }

    v17 = v87;
    v12 = v88;
    (*v95)(*(v8 + 464), *(v8 + 232));
LABEL_6:
    v16 &= v16 - 1;
    a1 = sub_20DED8730(*(v8 + 472), &qword_27C84D080, &qword_20DF4BD20);
    v19 = 0;
  }

  v65 = *(v8 + 464);
  sub_20DEF0154(v63, isUniquelyReferenced_nonNull_native);
  v20 = v107[0];
  a1 = sub_20DEEFA5C(v65);
  if ((v64 & 1) == (v66 & 1))
  {
    goto LABEL_23;
  }

  return sub_20DF48424();
}

uint64_t sub_20DF325F4()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_20DF340D8;
  }

  else
  {
    v2 = sub_20DF32728;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20DF32728()
{
  v251 = v0;
  v1 = 0;
  v2 = *(v0 + 72);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v226 = *(v0 + 72);
  v7 = -1 << *(v226 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 544);
  v11 = MEMORY[0x277D84F98];
  v210 = v9;
  v212 = v4;
  while (1)
  {
    v235 = v11;
    v239 = v10;
    if (v8)
    {
      goto LABEL_12;
    }

    do
    {
      v16 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v16 >= v9)
      {
        v72 = *(v0 + 520);

        v73 = sub_20DEB843C(0, *(v72 + 16), 0, MEMORY[0x277D84F90]);
        v74 = v73;
        if (v11[2])
        {
          v211 = v72;

          v76 = sub_20DF305B0(v75);

          v78 = sub_20DF308F0(v77, v76);
          v79 = *(v78 + 16);
          if (v79)
          {
            v80 = *(v0 + 240);
            v81 = sub_20DF355D8(v79, 0);
            v82 = sub_20DF3A454(v250, &v81[(*(v80 + 80) + 32) & ~*(v80 + 80)], v79, v78);
            v83 = v250[0];

            sub_20DEB599C(v83);
            if (v82 != v79)
            {
              goto LABEL_91;
            }

            v10 = v239;
          }

          else
          {
            v81 = MEMORY[0x277D84F90];
          }

          v249 = v81;
          sub_20DF37AA0(&v249);
          if (!v10)
          {

            v90 = v249[2];
            if (!v90)
            {
LABEL_77:

              if (v74[2])
              {
                v188 = (v0 + 248);
                v187 = *(v0 + 248);
                v189 = *(v0 + 296);
                v190 = *(v0 + 232);
                v191 = *(v0 + 240);
                v192 = *(*(v0 + 288) + 80);
                sub_20DF3AA34(v74 + ((v192 + 32) & ~v192), v189);
                (*(v191 + 16))(v187, v189, v190);
                sub_20DF3AA98(v189);
                v193 = *(v0 + 240);
                v194 = (v193 + 32);
              }

              else
              {
                v193 = *(v0 + 240);
                v194 = (v193 + 16);
                v188 = (v0 + 88);
              }

              v195 = *v188;
              v196 = *(v0 + 552);
              v197 = *(v0 + 256);
              v198 = *(v0 + 232);
              v199 = *(v0 + 80);
              (*v194)(v197, v195, v198);
              v200 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
              v201 = &v199[v200[7]];
              *v201 = 0;
              v201[8] = 1;
              v202 = &v199[v200[8]];
              *v202 = 0;
              v202[8] = 1;
              *v199 = v196;
              (*(v193 + 32))(&v199[v200[5]], v197, v198);

              *&v199[v200[6]] = v74;

              v203 = *(v0 + 8);

              v203();
              return;
            }

            v204 = *(v0 + 520);
            v91 = *(v0 + 360);
            v209 = *(v0 + 288);
            v206 = *(v0 + 280);
            v92 = *(v0 + 240);
            v93 = v249 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
            v207 = *(v92 + 72);
            v231 = (v91 + 56);
            v234 = *(v92 + 16);
            v205 = (v91 + 16);
            v241 = (v91 + 48);
            v227 = (v91 + 8);
            while (2)
            {
              v220 = v93;
              v224 = v90;
              v234(*(v0 + 264));
              if (*(v211 + 16) && (v94 = sub_20DEEFA5C(*(v0 + 264)), (v95 & 1) != 0))
              {
                (*v205)(*(v0 + 224), *(v204 + 56) + *(*(v0 + 360) + 72) * v94, *(v0 + 352));
                v96 = 0;
              }

              else
              {
                v96 = 1;
              }

              v97 = *(v0 + 352);
              v99 = *(v0 + 216);
              v98 = *(v0 + 224);
              v100 = *v231;
              (*v231)(v98, v96, 1, v97);
              sub_20DED8804(v98, v99, &qword_27C84D070, &qword_20DF4BD10);
              v101 = *v241;
              if ((*v241)(v99, 1, v97) == 1)
              {
                sub_20DED8730(*(v0 + 216), &qword_27C84D070, &qword_20DF4BD10);
                v102 = 0.0;
              }

              else
              {
                v103 = *(v0 + 352);
                v104 = *(v0 + 216);
                sub_20DF47824();
                v102 = v105;
                (*v227)(v104, v103);
              }

              v106 = *(v0 + 352);
              v107 = *(v0 + 208);
              sub_20DED8804(*(v0 + 224), v107, &qword_27C84D070, &qword_20DF4BD10);
              if (v101(v107, 1, v106) == 1)
              {
                sub_20DED8730(*(v0 + 208), &qword_27C84D070, &qword_20DF4BD10);
                v214 = sub_20DED5560(MEMORY[0x277D84F90]);
                if (!v235[2])
                {
LABEL_53:
                  v112 = 1;
                  goto LABEL_54;
                }
              }

              else
              {
                v108 = *(v0 + 352);
                v109 = *(v0 + 208);
                v214 = sub_20DF47814();
                (*v227)(v109, v108);
                if (!v235[2])
                {
                  goto LABEL_53;
                }
              }

              v110 = sub_20DEEFA5C(*(v0 + 264));
              if ((v111 & 1) == 0)
              {
                goto LABEL_53;
              }

              (*v205)(*(v0 + 200), v235[7] + *(*(v0 + 360) + 72) * v110, *(v0 + 352));
              v112 = 0;
LABEL_54:
              v113 = *(v0 + 352);
              v115 = *(v0 + 192);
              v114 = *(v0 + 200);
              v100(v114, v112, 1, v113);
              sub_20DED8804(v114, v115, &qword_27C84D070, &qword_20DF4BD10);
              if (v101(v115, 1, v113) == 1)
              {
                sub_20DED8730(*(v0 + 192), &qword_27C84D070, &qword_20DF4BD10);
                v116 = 0.0;
              }

              else
              {
                v117 = *(v0 + 352);
                v118 = *(v0 + 192);
                sub_20DF47824();
                v116 = v119;
                (*v227)(v118, v117);
              }

              v247 = v74;
              v120 = *(v0 + 352);
              v121 = *(v0 + 184);
              sub_20DED8804(*(v0 + 200), v121, &qword_27C84D070, &qword_20DF4BD10);
              if (v101(v121, 1, v120) == 1)
              {
                sub_20DED8730(*(v0 + 184), &qword_27C84D070, &qword_20DF4BD10);
                v122 = MEMORY[0x277D84F90];
                v123 = sub_20DED5560(MEMORY[0x277D84F90]);
              }

              else
              {
                v124 = *(v0 + 352);
                v125 = *(v0 + 184);
                v123 = sub_20DF47814();
                (*v227)(v125, v124);
                v122 = MEMORY[0x277D84F90];
              }

              v126 = *(v0 + 312);
              v215 = *(v0 + 304);
              v127 = *(v0 + 272);
              v128 = *(v0 + 232);
              v237 = *(v0 + 240);
              (v234)(v127, *(v0 + 264), v128);
              v129 = sub_20DED5560(v122);
              v130 = sub_20DED5560(v122);
              (v234)(v126, v127, v128);
              *(v126 + v206[8]) = 1;
              *(v126 + v206[9]) = 1;
              *(v126 + v206[5]) = v102 - v116;
              *(v126 + v206[6]) = v102;
              *(v126 + v206[7]) = v116;
              *(v126 + v206[11]) = v123;
              *(v126 + v206[10]) = v214;

              *(v126 + v206[13]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v123, v214);
              *(v126 + v206[12]) = v131;

              v133 = sub_20DED59C0(v132, 5uLL);

              *(v126 + v206[14]) = v133;
              v134 = sub_20DED59C0(v214, 5uLL);

              *(v126 + v206[15]) = v134;
              v135 = sub_20DED59C0(v123, 5uLL);

              *(v126 + v206[16]) = v135;
              *(v126 + v206[18]) = v130;
              *(v126 + v206[17]) = v129;

              *(v126 + v206[20]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v130, v129);
              *(v126 + v206[19]) = v136;

              v138 = sub_20DED59C0(v137, 3uLL);

              *(v126 + v206[21]) = v138;
              v139 = sub_20DED59C0(v129, 3uLL);

              *(v126 + v206[22]) = v139;
              v140 = sub_20DED59C0(v130, 3uLL);

              v141 = *(v237 + 8);
              v141(v127, v128);
              *(v126 + v206[23]) = v140;
              sub_20DF3AA34(v126, v215);
              v143 = v247[2];
              v142 = v247[3];
              if (v143 >= v142 >> 1)
              {
                v247 = sub_20DEB843C((v142 > 1), v143 + 1, 1, v247);
              }

              v144 = *(v0 + 304);
              v145 = *(v0 + 264);
              v147 = *(v0 + 224);
              v146 = *(v0 + 232);
              v148 = *(v0 + 200);
              sub_20DF3AA98(*(v0 + 312));
              sub_20DED8730(v148, &qword_27C84D070, &qword_20DF4BD10);
              sub_20DED8730(v147, &qword_27C84D070, &qword_20DF4BD10);
              v141(v145, v146);
              v74 = v247;
              v247[2] = v143 + 1;
              sub_20DEF159C(v144, v247 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v143);
              v93 = &v220[v207];
              v90 = v224 - 1;
              if (v224 == 1)
              {
                goto LABEL_77;
              }

              continue;
            }
          }
        }

        else
        {
          v84 = *(v72 + 16);
          if (v84)
          {
            v246 = v73;
            v85 = *(v0 + 520);
            v86 = sub_20DF356D4(v84, 0);
            v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
            v88 = sub_20DF3A6F8(v250, v86 + ((*(v87 + 80) + 32) & ~*(v87 + 80)), v84, v85);
            v89 = v250[0];

            sub_20DEB599C(v89);
            if (v88 != v84)
            {
              goto LABEL_92;
            }

            v74 = v246;
          }

          else
          {
            v86 = MEMORY[0x277D84F90];
          }

          v249 = v86;
          sub_20DF37B48(&v249);
          if (!v10)
          {
            v149 = 0;
            v150 = *(v0 + 280);
            v151 = v249;
            v225 = *(v0 + 288);
            v228 = v249[2];
            v218 = (*(v0 + 360) + 8);
            v221 = v249;
            while (1)
            {
              if (v149 == v228)
              {
                v152 = *(v0 + 336);
                v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
                (*(*(v153 - 8) + 56))(v152, 1, 1, v153);
                v242 = v228;
              }

              else
              {
                if ((v149 & 0x8000000000000000) != 0)
                {
                  goto LABEL_87;
                }

                if (v149 >= *(v151 + 16))
                {
                  goto LABEL_88;
                }

                v154 = *(v0 + 336);
                v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
                v156 = *(v155 - 8);
                sub_20DED8804(v151 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v149, v154, &qword_27C84D098, &qword_20DF4BD30);
                v242 = v149 + 1;
                (*(v156 + 56))(v154, 0, 1, v155);
              }

              v157 = *(v0 + 344);
              sub_20DED9CE8(*(v0 + 336), v157, &qword_27C84D078, &qword_20DF4BD18);
              v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
              if ((*(*(v158 - 8) + 48))(v157, 1, v158) == 1)
              {
                goto LABEL_77;
              }

              v159 = *(v0 + 344);
              v248 = v74;
              v160 = *(v0 + 328);
              v238 = *(v0 + 320);
              v161 = *(v0 + 272);
              v163 = *(v0 + 232);
              v162 = *(v0 + 240);
              (*(*(v0 + 360) + 32))(*(v0 + 368), v159 + *(v158 + 48), *(v0 + 352));
              v232 = v163;
              (*(v162 + 32))(v161, v159, v163);
              sub_20DF47824();
              v165 = v164;
              v166 = sub_20DF47814();
              v167 = MEMORY[0x277D84F90];
              v168 = sub_20DED5560(MEMORY[0x277D84F90]);
              v169 = sub_20DED5560(v167);
              v170 = sub_20DED5560(v167);
              (*(v162 + 16))(v160, v161, v163);
              *(v160 + v150[8]) = 1;
              *(v160 + v150[9]) = 1;
              *(v160 + v150[5]) = v165;
              *(v160 + v150[6]) = v165;
              *(v160 + v150[7]) = 0;
              *(v160 + v150[11]) = v168;
              *(v160 + v150[10]) = v166;

              *(v160 + v150[13]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v168, v166);
              *(v160 + v150[12]) = v171;

              v173 = sub_20DED59C0(v172, 5uLL);

              *(v160 + v150[14]) = v173;
              v174 = sub_20DED59C0(v166, 5uLL);

              *(v160 + v150[15]) = v174;
              v175 = sub_20DED59C0(v168, 5uLL);

              *(v160 + v150[16]) = v175;
              *(v160 + v150[18]) = v170;
              *(v160 + v150[17]) = v169;

              *(v160 + v150[20]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v170, v169);
              *(v160 + v150[19]) = v176;

              v178 = sub_20DED59C0(v177, 3uLL);

              *(v160 + v150[21]) = v178;
              v179 = sub_20DED59C0(v169, 3uLL);

              *(v160 + v150[22]) = v179;
              v180 = sub_20DED59C0(v170, 3uLL);

              (*(v162 + 8))(v161, v232);
              *(v160 + v150[23]) = v180;
              v181 = v160;
              v74 = v248;
              sub_20DF3AA34(v181, v238);
              v183 = v248[2];
              v182 = v248[3];
              if (v183 >= v182 >> 1)
              {
                v74 = sub_20DEB843C((v182 > 1), v183 + 1, 1, v248);
              }

              v184 = *(v0 + 368);
              v185 = *(v0 + 352);
              v186 = *(v0 + 320);
              sub_20DF3AA98(*(v0 + 328));
              (*v218)(v184, v185);
              v74[2] = v183 + 1;
              sub_20DEF159C(v186, v74 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v183);
              v151 = v221;
              v149 = v242;
            }
          }
        }

        return;
      }

      v8 = *(v4 + 8 * v16);
      ++v1;
    }

    while (!v8);
    v1 = v16;
LABEL_12:
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);
    v19 = *(v0 + 408);
    v229 = *(v0 + 440);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = __clz(__rbit64(v8)) | (v1 << 6);
    v222 = v20[9];
    v216 = v20[2];
    v216(v17, *(v226 + 48) + v222 * v22, v21);
    v23 = v20[4];
    v243 = *(*(v226 + 56) + 16 * v22);
    *(v17 + *(v19 + 48)) = v243;
    v24 = (v18 + *(v19 + 48));
    v213 = v23;
    v23(v18, v17, v21);
    *v24 = v243;
    sub_20DED8804(v18, v229, &qword_27C84D080, &qword_20DF4BD20);
    v25 = (v229 + *(v19 + 48));
    v26 = *v25;
    v27 = v25[1];
    sub_20DED8AA0(v243, *(&v243 + 1));
    sub_20DED8A4C(v26, v27);
    sub_20DF47324();
    swift_allocObject();
    sub_20DF47314();
    sub_20DF3AB8C(&qword_27C84D090, MEMORY[0x277D073A8], MEMORY[0x277D073B8]);
    sub_20DF47304();
    v28 = *(v0 + 440);
    if (!v239)
    {
      break;
    }

    v244 = v239;
    v29 = *(v0 + 232);
    v30 = *(v0 + 240);

    v240 = *(v30 + 8);
    v240(v28, v29);
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 448);
    v32 = *(v0 + 416);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v35 = *(v0 + 152);
    v36 = __swift_project_value_buffer(v35, qword_281122F18);
    swift_beginAccess();
    (*(v33 + 16))(v34, v36, v35);
    sub_20DED8804(v31, v32, &qword_27C84D080, &qword_20DF4BD20);
    v37 = sub_20DF47BB4();
    v38 = sub_20DF47FF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 416);
      v40 = *(v0 + 424);
      v217 = v39;
      v208 = *(v0 + 408);
      v223 = v38;
      v41 = *(v0 + 272);
      v42 = *(v0 + 232);
      v236 = *(v0 + 168);
      v230 = *(v0 + 160);
      v233 = *(v0 + 152);
      v43 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v250[0] = v219;
      *v43 = 136315138;
      sub_20DED8804(v39, v40, &qword_27C84D080, &qword_20DF4BD20);
      sub_20DED8A4C(*(v40 + *(v208 + 48)), *(v40 + *(v208 + 48) + 8));
      v213(v41, v40, v42);
      sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v44 = sub_20DF483B4();
      v46 = v45;
      v240(v41, v42);
      sub_20DED8730(v217, &qword_27C84D080, &qword_20DF4BD20);
      v47 = sub_20DED38E8(v44, v46, v250);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_20DEAF000, v37, v223, "Failed to decode entry for exports on %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v219);
      MEMORY[0x20F329700](v219, -1, -1);
      MEMORY[0x20F329700](v43, -1, -1);

      (*(v230 + 8))(v236, v233);
    }

    else
    {
      v12 = *(v0 + 416);
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 152);

      sub_20DED8730(v12, &qword_27C84D080, &qword_20DF4BD20);
      (*(v14 + 8))(v13, v15);
    }

    v11 = v235;
    v9 = v210;
    v4 = v212;
LABEL_6:
    v8 &= v8 - 1;
    sub_20DED8730(*(v0 + 448), &qword_27C84D080, &qword_20DF4BD20);
    v10 = 0;
  }

  v49 = *(v0 + 376);
  v48 = *(v0 + 384);
  v50 = *(v0 + 352);
  v51 = *(v0 + 360);

  v245 = *(v51 + 32);
  v245(v49, v48, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v250[0] = v235;
  v53 = sub_20DEEFA5C(v28);
  v55 = v235[2];
  v56 = (v54 & 1) == 0;
  v57 = __OFADD__(v55, v56);
  v58 = v55 + v56;
  if (v57)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v59 = v54;
  if (v235[3] >= v58)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = v235;
      v62 = v216;
      if ((v54 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v63 = v53;
      sub_20DEF0C94();
      v53 = v63;
      v11 = v250[0];
      v62 = v216;
      if ((v59 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_24;
  }

  v60 = *(v0 + 440);
  sub_20DEF0154(v58, isUniquelyReferenced_nonNull_native);
  v11 = v250[0];
  v53 = sub_20DEEFA5C(v60);
  if ((v59 & 1) != (v61 & 1))
  {

    sub_20DF48424();
    return;
  }

  v62 = v216;
  if (v59)
  {
LABEL_24:
    (*(*(v0 + 360) + 40))(v11[7] + *(*(v0 + 360) + 72) * v53, *(v0 + 376), *(v0 + 352));
LABEL_28:
    (*(*(v0 + 240) + 8))(*(v0 + 440), *(v0 + 232));
    v9 = v210;
    v4 = v212;
    goto LABEL_6;
  }

LABEL_26:
  v64 = *(v0 + 440);
  v65 = *(v0 + 376);
  v66 = *(v0 + 352);
  v67 = *(v0 + 360);
  v68 = *(v0 + 232);
  v11[(v53 >> 6) + 8] |= 1 << v53;
  v69 = v53;
  v62(v11[6] + v53 * v222, v64, v68);
  v245(v11[7] + *(v67 + 72) * v69, v65, v66);
  v70 = v11[2];
  v57 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (!v57)
  {
    v11[2] = v71;
    goto LABEL_28;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_20DF33ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DF340D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DF342E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 336) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF343D0, 0, 0);
}

uint64_t sub_20DF343D0()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v18 = sub_20DF3D598(sub_20DF3B400, v6);
  v0[34] = v18;

  v7 = v0[28];
  v17 = sub_20DF47D04();
  v0[35] = v17;

  v8 = sub_20DF47464();
  v0[36] = v8;
  v9 = sub_20DF47464();
  v0[37] = v9;
  v10 = sub_20DF47D04();
  v0[38] = v10;
  v11 = sub_20DF47D04();
  v0[39] = v11;
  v12 = sub_20DF475F4();
  v0[40] = v12;
  v13 = *(v7 + 16);
  sub_20DF479B4();

  v14 = sub_20DF47D04();
  v0[41] = v14;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF3471C;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C0, &qword_20DF4BD68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF347FC;
  v0[13] = &block_descriptor_18_0;
  v0[14] = v15;
  [v18 leanHistoricalEnergyUsageWithInterval:v17 start:v8 end:v9 subscriptionID:v10 utilityID:v11 timeZone:v12 flowDirection:1 siteID:v14 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF3471C()
{

  return MEMORY[0x2822009F8](sub_20DF3B3F4, 0, 0);
}

uint64_t sub_20DF347FC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_20DF474E4();
    sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v4 = sub_20DF47C34();
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

uint64_t sub_20DF348C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a7;
  v67 = a8;
  v63 = a5;
  v64 = a6;
  v56 = a1;
  v57 = a3;
  v62 = a2;
  v68 = a12;
  v61 = a11;
  v65 = a10;
  v58 = a9;
  v59 = a4;
  v12 = sub_20DF47604();
  v70 = *(v12 - 8);
  v71 = v12;
  v60 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v69 = sub_20DF474E4();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v69);
  v53 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v52 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v50 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v51 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v49 - v26;
  v55 = &v49 - v26;
  v28 = sub_20DF47F04();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  (*(v21 + 16))(v24, v56, v20);
  v49 = v15;
  v29 = *(v15 + 16);
  v30 = v69;
  v29(v19, v57, v69);
  v29(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v30);
  v31 = v70;
  (*(v70 + 16))(v14, v58, v71);
  v32 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v33 = v32 + v22;
  v34 = *(v15 + 80);
  v35 = (v34 + v32 + v22 + 1) & ~v34;
  v36 = (v16 + v34 + v35) & ~v34;
  v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v31 + 80) + v38 + 16) & ~*(v31 + 80);
  v40 = (v60 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  (*(v21 + 32))(v41 + v32, v51, v50);
  *(v41 + v33) = v62;
  v42 = *(v49 + 32);
  v43 = v69;
  v42(v41 + v35, v52, v69);
  v42(v41 + v36, v53, v43);
  v44 = (v41 + v37);
  v45 = v64;
  *v44 = v63;
  v44[1] = v45;
  v46 = (v41 + v38);
  v47 = v67;
  *v46 = v66;
  v46[1] = v47;
  (*(v70 + 32))(v41 + v39, v54, v71);
  *(v41 + v40) = v65;

  sub_20DEBB534(0, 0, v55, v68, v41);
}

uint64_t sub_20DF34D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 336) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF34E30, 0, 0);
}

uint64_t sub_20DF34E30()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v18 = sub_20DF3D598(sub_20DF3AE24, v6);
  v0[34] = v18;

  v7 = v0[28];
  v17 = sub_20DF47D04();
  v0[35] = v17;

  v8 = sub_20DF47464();
  v0[36] = v8;
  v9 = sub_20DF47464();
  v0[37] = v9;
  v10 = sub_20DF47D04();
  v0[38] = v10;
  v11 = sub_20DF47D04();
  v0[39] = v11;
  v12 = sub_20DF475F4();
  v0[40] = v12;
  v13 = *(v7 + 16);
  sub_20DF479B4();

  v14 = sub_20DF47D04();
  v0[41] = v14;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF3517C;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C0, &qword_20DF4BD68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF347FC;
  v0[13] = &block_descriptor_9;
  v0[14] = v15;
  [v18 leanHistoricalEnergyUsageWithInterval:v17 start:v8 end:v9 subscriptionID:v10 utilityID:v11 timeZone:v12 flowDirection:2 siteID:v14 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF3517C()
{

  return MEMORY[0x2822009F8](sub_20DF3525C, 0, 0);
}

uint64_t sub_20DF3525C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[33];
  v9 = v0[18];
  swift_unknownObjectRelease();

  [*(v8 + 16) invalidate];
  v10 = MEMORY[0x277D84F98];
  if (v9)
  {
    v10 = v9;
  }

  v0[19] = v10;
  sub_20DF47EE4();

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DF3535C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to get insights. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  return sub_20DF47ED4();
}

void *sub_20DF355D8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C8F0, &qword_20DF49758);
  v4 = *(sub_20DF474E4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_20DF356D4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A8, &qword_20DF4BD40);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF357FC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_20DF48484();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_20DF36550(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20DF358DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_20DF47C94();
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
      sub_20DF3AB8C(&qword_27C84C9A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_20DF47CF4();
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
    sub_20DF36670(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20DF35BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20DF48494();
  sub_20DF47D54();
  v8 = sub_20DF484D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20DF483D4() & 1) != 0)
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

    sub_20DF36914(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20DF35D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  result = sub_20DF48124();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_20DF48484();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20DF35F94(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20DF474E4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  result = sub_20DF48124();
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
      sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_20DF47C94();
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

uint64_t sub_20DF362F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  result = sub_20DF48124();
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
      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
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

uint64_t sub_20DF36550(uint64_t result, unint64_t a2, char a3)
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
    sub_20DF35D70(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20DF36A94();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20DF36F68(v5 + 1);
  }

  v8 = *v3;
  result = sub_20DF48484();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

uint64_t sub_20DF36670(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20DF474E4();
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
    sub_20DF35F94(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20DF36BD4();
      goto LABEL_12;
    }

    sub_20DF37158(v10 + 1);
  }

  v12 = *v3;
  sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v13 = sub_20DF47C94();
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
      sub_20DF3AB8C(&qword_27C84C9A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_20DF47CF4();
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

uint64_t sub_20DF36914(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20DF362F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20DF36E0C();
      goto LABEL_16;
    }

    sub_20DF37474(v8 + 1);
  }

  v10 = *v4;
  sub_20DF48494();
  sub_20DF47D54();
  result = sub_20DF484D4();
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

      result = sub_20DF483D4();
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

void *sub_20DF36A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  v2 = *v0;
  v3 = sub_20DF48114();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_20DF36BD4()
{
  v1 = v0;
  v2 = sub_20DF474E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  v6 = *v0;
  v7 = sub_20DF48114();
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

void *sub_20DF36E0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  v2 = *v0;
  v3 = sub_20DF48114();
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

uint64_t sub_20DF36F68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  result = sub_20DF48124();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_20DF48484();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_20DF37158(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20DF474E4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  v7 = sub_20DF48124();
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
      sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_20DF47C94();
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

uint64_t sub_20DF37474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  result = sub_20DF48124();
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
      sub_20DF48494();

      sub_20DF47D54();
      result = sub_20DF484D4();
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

void *sub_20DF376AC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A8, &qword_20DF4BD40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
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

void *sub_20DF378C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_20DF37AA0(uint64_t *a1)
{
  v2 = *(sub_20DF474E4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DF3A9D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DF37BFC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DF37B48(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DF3AA20(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DF37D28(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DF37BFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DF483A4();
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
        sub_20DF474E4();
        v6 = sub_20DF47E94();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20DF474E4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DF38380(v8, v9, a1, v4);
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
    return sub_20DF37E6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DF37D28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DF483A4();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
        v6 = sub_20DF47E94();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DF38DA8(v8, v9, a1, v4);
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
    return sub_20DF38130(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DF37E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20DF474E4();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_20DF47CD4();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DF38130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_20DED8804(v22, v16, &qword_27C84D098, &qword_20DF4BD30);
      sub_20DED8804(v19, v12, &qword_27C84D098, &qword_20DF4BD30);
      v23 = sub_20DF47484();
      sub_20DED8730(v12, &qword_27C84D098, &qword_20DF4BD30);
      result = sub_20DED8730(v16, &qword_27C84D098, &qword_20DF4BD30);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_20DED9CE8(v22, v34, &qword_27C84D098, &qword_20DF4BD30);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20DED9CE8(v24, v19, &qword_27C84D098, &qword_20DF4BD30);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DF38380(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_20DF474E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_20DF3A26C(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_20DF396E8(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20DF3A26C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_20DF3A1E0(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v133) = sub_20DF47CD4();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_20DF47CD4() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20DEB8338(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_20DEB8338((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_20DF396E8(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20DF3A26C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_20DF3A1E0(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v109 = sub_20DF47CD4();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_20DF38DA8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v113 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v99 - v14;
  result = MEMORY[0x28223BE20](v13);
  v117 = &v99 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_20DF3A26C(v4);
    }

    v94 = v6;
    v119 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v96 = result;
        v97 = *(result + 16 * (v4 - 1) + 40);
        sub_20DF39CDC(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *(result + 16 * (v4 - 1) + 32), v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_20DF3A26C(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_20DF3A1E0(v4 - 1);
        result = v119;
        v4 = *(v119 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v100 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v104 = a3;
  while (1)
  {
    v20 = v18;
    v108 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v102 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v113 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v117;
      sub_20DED8804(a4, v117, &qword_27C84D098, &qword_20DF4BD30);
      v25 = v118;
      sub_20DED8804(v22 + v23 * v21, v118, &qword_27C84D098, &qword_20DF4BD30);
      LODWORD(v112) = sub_20DF47484();
      sub_20DED8730(v25, &qword_27C84D098, &qword_20DF4BD30);
      result = sub_20DED8730(v24, &qword_27C84D098, &qword_20DF4BD30);
      v101 = v21;
      v4 = v21 + 2;
      v114 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v117;
        sub_20DED8804(v26, v117, &qword_27C84D098, &qword_20DF4BD30);
        v28 = v118;
        sub_20DED8804(a4, v118, &qword_27C84D098, &qword_20DF4BD30);
        v29 = v17;
        v30 = sub_20DF47484() & 1;
        sub_20DED8730(v28, &qword_27C84D098, &qword_20DF4BD30);
        result = sub_20DED8730(v27, &qword_27C84D098, &qword_20DF4BD30);
        ++v4;
        v26 += v114;
        a4 += v114;
        v31 = (v112 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v20 = v101;
      v6 = v102;
      if (v112)
      {
        if (v17 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v17)
        {
          v4 = v114 * (v17 - 1);
          v32 = v17 * v114;
          v33 = v17;
          v34 = v17;
          v35 = v101;
          a4 = v101 * v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_20DED9CE8(v36 + a4, v107, &qword_27C84D098, &qword_20DF4BD30);
              if (a4 < v4 || v36 + a4 >= (v36 + v32))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_20DED9CE8(v107, v36 + v4, &qword_27C84D098, &qword_20DF4BD30);
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            a4 += v114;
          }

          while (v35 < v34);
          v20 = v101;
          v6 = v102;
          a3 = v104;
          v17 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v100)
      {
        if (__OFADD__(v20, v100))
        {
          goto LABEL_128;
        }

        if (v20 + v100 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v20 + v100;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v108;
    }

    else
    {
      result = sub_20DEB8338(0, *(v108 + 2) + 1, 1, v108);
      v19 = result;
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      result = sub_20DEB8338((v39 > 1), v4 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_20DF39CDC(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v19[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v41);
        if (v6)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_20DF3A26C(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v119 = v82;
        v4 = &v119;
        result = sub_20DF3A1E0(v42);
        v19 = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v20;
  v102 = v6;
  v84 = *a3;
  v85 = *(v113 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v105 = v85;
  v106 = v38;
  v114 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v111 = v86;
  v112 = v17;
  v109 = a4;
  v110 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v117;
    sub_20DED8804(a4, v117, &qword_27C84D098, &qword_20DF4BD30);
    v90 = v118;
    sub_20DED8804(v89, v118, &qword_27C84D098, &qword_20DF4BD30);
    v91 = sub_20DF47484();
    sub_20DED8730(v90, &qword_27C84D098, &qword_20DF4BD30);
    result = sub_20DED8730(v4, &qword_27C84D098, &qword_20DF4BD30);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v112 + 1;
      v18 = v106;
      v86 = v111 + v105;
      v88 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v20 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v92 = v115;
    sub_20DED9CE8(a4, v115, &qword_27C84D098, &qword_20DF4BD30);
    swift_arrayInitWithTakeFrontToBack();
    sub_20DED9CE8(v92, v89, &qword_27C84D098, &qword_20DF4BD30);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_20DF396E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_20DF474E4();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v35) = sub_20DF47CD4();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v22) = sub_20DF47CD4();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_20DF3A280(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_20DF39CDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v8 = MEMORY[0x28223BE20](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_20DED8804(v30, v44, &qword_27C84D098, &qword_20DF4BD30);
          v32 = v27;
          v33 = v45;
          sub_20DED8804(v32, v45, &qword_27C84D098, &qword_20DF4BD30);
          v34 = sub_20DF47484();
          sub_20DED8730(v33, &qword_27C84D098, &qword_20DF4BD30);
          sub_20DED8730(v31, &qword_27C84D098, &qword_20DF4BD30);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_20DED8804(a2, v44, &qword_27C84D098, &qword_20DF4BD30);
        v21 = v45;
        sub_20DED8804(a4, v45, &qword_27C84D098, &qword_20DF4BD30);
        v22 = sub_20DF47484();
        sub_20DED8730(v21, &qword_27C84D098, &qword_20DF4BD30);
        sub_20DED8730(v20, &qword_27C84D098, &qword_20DF4BD30);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_20DF3A364(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_20DF3A1E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DF3A26C(v3);
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

uint64_t sub_20DF3A280(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20DF474E4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20DF3A364(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20DF3A454(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20DF474E4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20DF3A6F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v38 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = sub_20DF474E4();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = sub_20DF47834();
      (*(*(v31 - 8) + 16))(&v10[*(v40 + 48)], v30 + *(*(v31 - 8) + 72) * v26, v31);
      a1 = v39;
      sub_20DED9CE8(v10, v39, &qword_27C84D098, &qword_20DF4BD30);
      sub_20DED9CE8(a1, a2, &qword_27C84D098, &qword_20DF4BD30);
      a3 = v37;
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20DF3AA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF3AA98(uint64_t a1)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DF3AAF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F328B90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20DF35BBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20DF3AB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DF3ABD4(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50) - 8);
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = v17 + *(v2 + 64);
  v4 = *(sub_20DF474E4() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 1) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20DF47604();
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v10 = *(v1 + v9);
  v11 = *(v1 + v3);
  v12 = swift_task_alloc();
  *(v16 + 16) = v12;
  *v12 = v16;
  v12[1] = sub_20DEBA16C;

  return sub_20DF34D40(a1, v15, v14, v1 + v17, v11, v1 + v6, v1 + v8, v10);
}

uint64_t objectdestroyTm_2()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v18 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + v18 + 1) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v17 = (((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_20DF47604();
  v10 = *(v19 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + v17 + 16) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v18, v20);
  v15 = *(v5 + 8);
  v15(v0 + v7, v4);
  v15(v0 + v9, v4);

  (*(v10 + 8))(v0 + v12, v19);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_20DF3B09C(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50) - 8);
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = v17 + *(v2 + 64);
  v4 = *(sub_20DF474E4() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 1) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20DF47604();
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v10 = *(v1 + v9);
  v11 = *(v1 + v3);
  v12 = swift_task_alloc();
  *(v16 + 16) = v12;
  *v12 = v16;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF342E0(a1, v15, v14, v1 + v17, v11, v1 + v6, v1 + v8, v10);
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_20DF3B404()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v14 = v0[4];
  v15 = v0[6];
  v16 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0D8, &unk_20DF4BF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DF4BD90;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v8;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v9 = sub_20DED8600(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F8, &unk_20DF49F30);
  swift_arrayDestroy();
  if (v5)
  {
    v19 = v8;
    *&v18 = v14;
    *(&v18 + 1) = v5;
    sub_20DED8390(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0(v17, 0x4C5255706174, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {
    v19 = v8;
    *&v18 = v15;
    *(&v18 + 1) = v6;
    sub_20DED8390(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0(v17, 0x4449656D6F68, 0xE600000000000000, v11);
  }

  v19 = MEMORY[0x277D839B0];
  LOBYTE(v18) = v16;
  sub_20DED8390(&v18, v17);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF0E9A0(v17, 0xD000000000000012, 0x800000020DF50270, v12);
  return v9;
}

uint64_t HomeEnergyNotificationStatus.description.getter(uint64_t a1)
{
  result = 0xD000000000000025;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003ALL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000037;
    }

    goto LABEL_10;
  }

  if (a1 && a1 != 1)
  {
LABEL_10:
    result = sub_20DF483F4();
    __break(1u);
  }

  return result;
}

unint64_t sub_20DF3B6F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20DF3B748(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void __swiftcall HomeEnergyNotificationContext.init(title:body:tapURL:homeID:seriesNotifications:)(EnergyKitInternal::HomeEnergyNotificationContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String_optional tapURL, Swift::String_optional homeID, Swift::Bool seriesNotifications)
{
  retstr->title = title;
  retstr->body = body;
  retstr->tapURL = tapURL;
  retstr->homeID = homeID;
  retstr->seriesNotifications = seriesNotifications;
}

unint64_t sub_20DF3B748(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20DF3B75C()
{
  result = qword_27C84D0D0;
  if (!qword_27C84D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D0D0);
  }

  return result;
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

uint64_t sub_20DF3B7E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_20DF3B82C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20DF3B890(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t static PerfDebug.forceIndependentTokenRotate(token:utility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF3B980, 0, 0);
}

uint64_t sub_20DF3B980()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_20DF3BA90;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002BLL, 0x800000020DF50290, sub_20DF3BE5C, v3, v5);
}

uint64_t sub_20DF3BA90()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DF3BBC8;
  }

  else
  {

    v2 = sub_20DF3BBAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF3BBC8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20DF3BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v17, v12, v8);
  v20 = (v19 + v18);
  v21 = v25;
  *v20 = v24;
  v20[1] = a3;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v21;
  v22[1] = a5;

  sub_20DEBB534(0, 0, v15, &unk_20DF4BF68, v19);
}

uint64_t sub_20DF3BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v8[26] = *(v10 + 64);
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF3BF44, 0, 0);
}

uint64_t sub_20DF3BF44()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[24];
  v4 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = sub_20DF3D598(sub_20DF3C8DC, v6);
  v0[29] = v7;

  v8 = sub_20DF47D04();
  v0[30] = v8;
  v9 = sub_20DF47D04();
  v0[31] = v9;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_20DF3C174;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_10;
  v0[14] = v10;
  [v7 forceIndependentTokenRotateWithToken:v8 utility:v9 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF3C174()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_20DF3C33C;
  }

  else
  {
    v2 = sub_20DF3C284;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DF3C284()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  *(v0 + 265) = v4;
  sub_20DF47EE4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20DF3C33C(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  swift_willThrow();
  swift_unknownObjectRelease();

  v1[18] = v2;
  sub_20DF47ED4();

  v5 = v1[1];

  return v5();
}

uint64_t sub_20DF3C400(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = a1;
    v22 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "Failed to conduct perf test. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF3C698()
{
  sub_20DED4D6C();
  swift_allocError();
  *v1 = 8;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF3C77C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20DEBA16C;

  return sub_20DF3BE68(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_20DF3C8DC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20DF3C400(a1, v4);
}

void sub_20DF3C970(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20DF3C9D8()
{
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = *(v0 + 16);
  *(v0 + 16) = v3;

  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    v9 = *(v0 + 16);
    if (v9)
    {
      v42 = sub_20DF3DF74;
      v43 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_20DF3D2EC;
      v41 = &block_descriptor_16_0;
      v10 = _Block_copy(&aBlock);
      v11 = v9;

      [v11 setInterruptionHandler_];
      _Block_release(v10);

      v12 = *(v0 + 16);
      if (v12)
      {
        v42 = sub_20DF3DF78;
        v43 = v0;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_20DF3D2EC;
        v41 = &block_descriptor_19_0;
        v13 = _Block_copy(&aBlock);

        v14 = v12;

        [v14 setInvalidationHandler_];
        _Block_release(v13);
      }
    }
  }

  sub_20DF3DCB8();
  inited = swift_initStackObject();
  inited[4] = sub_20DF3DF1C(0, &qword_281122980, 0x277CBEA60);
  v16 = sub_20DF3DF1C(0, &qword_27C84C708, 0x277CBEA90);
  inited[5] = v16;
  v17 = sub_20DF3DF1C(0, &qword_27C84C700, 0x277CBEAA8);
  inited[6] = v17;
  v18 = sub_20DF3DF1C(0, &qword_27C84C718, 0x277CBEAC0);
  inited[7] = v18;
  v33 = sub_20DF3DF1C(0, &qword_27C84C6F0, 0x277CCA9B8);
  inited[8] = v33;
  v34 = sub_20DF3DF1C(0, &qword_27C84C6E8, 0x277CCABB0);
  inited[9] = v34;
  v35 = sub_20DF3DF1C(0, &qword_27C84C6E0, 0x277CCACA8);
  inited[10] = v35;
  v36 = sub_20DF3DF1C(0, &qword_27C84C6F8, 0x277CCAD78);
  inited[11] = v36;
  v37 = sub_20DF3DF1C(0, &qword_27C84C710, 0x277CBEBC0);
  inited[12] = v37;
  v19 = *(v0 + 16);
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [v19 remoteObjectInterface];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    aBlock = inited[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v16;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v17;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v18;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v33;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v34;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v35;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v36;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v37;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = 0;
    v23 = v22;
    sub_20DF47F84();

    if (!aBlock)
    {
      goto LABEL_17;
    }

    v24 = sub_20DF47F74();

    [v21 setClasses:v24 forSelector:sel_clearEnergyKitDataForAllHomesWithCompletionHandler_ argumentIndex:0 ofReply:0];
  }

  v25 = *(v0 + 16);
  if (!v25 || (v26 = [v25 remoteObjectInterface]) == 0)
  {
LABEL_14:
    swift_setDeallocating();
    v31 = *(v0 + 16);
    if (!v31)
    {
      return v0;
    }

LABEL_15:
    [v31 resume];
    return v0;
  }

  v27 = v26;
  v28 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  aBlock = inited[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v16;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v17;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v18;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v33;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v34;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v35;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v36;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v37;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = 0;
  v29 = v28;
  sub_20DF47F84();

  if (aBlock)
  {
    swift_setDeallocating();
    v30 = sub_20DF47F74();

    [v27 setClasses:v30 forSelector:sel_clearEnergyKitDataForAllHomesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    v31 = *(v0 + 16);
    if (!v31)
    {
      return v0;
    }

    goto LABEL_15;
  }

LABEL_17:
  result = sub_20DF48204();
  __break(1u);
  return result;
}

uint64_t sub_20DF3D2EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_20DF3D330()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 suspend];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_20DF47D04();
  v5 = [v3 initWithMachServiceName:v4 options:0];

  v6 = *(v0 + 16);
  *(v0 + 16) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];
  }

  v9 = *(v0 + 16);
  if (v9 && (v21 = sub_20DF3DD30, v22 = v0, v17 = MEMORY[0x277D85DD0], v18 = 1107296256, v19 = sub_20DF3D2EC, v20 = &block_descriptor_10, v10 = _Block_copy(&v17), v11 = v9, , , [v11 setInterruptionHandler_], _Block_release(v10), v11, (v12 = *(v0 + 16)) != 0))
  {
    v21 = sub_20DF3DD50;
    v22 = v0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_20DF3D2EC;
    v20 = &block_descriptor_13;
    v13 = _Block_copy(&v17);

    v14 = v12;

    [v14 setInvalidationHandler_];
    _Block_release(v13);

    v15 = *(v0 + 16);
  }

  else
  {
    v15 = 0;
  }

  return [v15 resume];
}

uint64_t sub_20DF3D598(uint64_t a1, uint64_t a2)
{
  v5 = sub_20DF47BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  if (v9 || (sub_20DF3D330(), (v9 = *(v2 + 16)) != 0))
  {
    v10 = swift_allocObject();
    v10[2] = v2;
    v10[3] = a1;
    v10[4] = a2;
    v22 = sub_20DF3DC24;
    v23 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DF3C970;
    v21 = &block_descriptor_11;
    v11 = _Block_copy(aBlock);
    v12 = v9;

    v13 = [v12 remoteObjectProxyWithErrorHandler_];
    _Block_release(v11);

    sub_20DF48074();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_20DF3DC48(v24, aBlock);
  if (!v21)
  {
    sub_20DEDCE24(aBlock);
LABEL_9:
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_27C851F60);
    swift_beginAccess();
    (*(v6 + 16))(v8, v15, v5);
    v16 = sub_20DF47BB4();
    v17 = sub_20DF47FF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DEAF000, v16, v17, "Returned host vended by XPC service doesn't conform to HomeEnergyXPCProtocol.", v18, 2u);
      MEMORY[0x20F329700](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    exit(1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0E0, &qword_20DF4BFC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_20DEDCE24(v24);
  return v19[1];
}

uint64_t sub_20DF3D8BC(void *a1, void **a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_20DF47BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_281122F18);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = a1;
  v14 = sub_20DF47BB4();
  v15 = sub_20DF47FF4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315394;
    v30 = *a2;
    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0E8, &unk_20DF4BFD0);
    v18 = sub_20DF47D24();
    v29 = a3;
    v20 = sub_20DED38E8(v18, v19, &v31);
    v28[1] = a4;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v30 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v23 = sub_20DF47D24();
    v25 = sub_20DED38E8(v23, v24, &v31);
    a3 = v29;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_20DEAF000, v14, v15, "%s: remoteObjectProxyWithErrorHandler error: %{public}s", v16, 0x16u);
    v26 = v28[0];
    swift_arrayDestroy();
    MEMORY[0x20F329700](v26, -1, -1);
    MEMORY[0x20F329700](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  [a2[2] invalidate];
  return a3(a1);
}

uint64_t sub_20DF3DBC8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DF3DC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA00, &qword_20DF4A170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF3DCB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27C84D0F8;
    v3 = &unk_20DF4BFE8;
  }

  else
  {
    v2 = &unk_27C84D100;
    v3 = &unk_20DF4BFF0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_20DF3DD70(const char *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DEAF000, v7, v8, a1, v9, 2u);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20DF3DF1C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

EnergyKitInternal::GuidanceType_optional __swiftcall GuidanceType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_20DF3DFB4@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_20DF3E094()
{
  result = qword_27C84D108;
  if (!qword_27C84D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D108);
  }

  return result;
}

uint64_t sub_20DF3E0E8()
{
  sub_20DF48494();
  sub_20DF484B4();
  return sub_20DF484D4();
}

uint64_t sub_20DF3E15C(uint64_t a1)
{
  sub_20DF48494();
  sub_20DF484B4();
  return sub_20DF484D4();
}

unint64_t sub_20DF3E1B0()
{
  result = qword_27C84D110;
  if (!qword_27C84D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D110);
  }

  return result;
}

uint64_t sub_20DF3E204(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_20DF47DA4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DF3E254()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 0x64656767756C70;
  v4 = 0x7465736572;
  if (v1 != 4)
  {
    v4 = 0x4E474F4345524E55;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 0x656767756C706E75;
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

uint64_t sub_20DF3E304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DF43D14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DF3E32C(uint64_t a1)
{
  v2 = sub_20DF3ECAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E368(uint64_t a1)
{
  v2 = sub_20DF3ECAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E3B0(uint64_t a1)
{
  v2 = sub_20DF3EEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E3EC(uint64_t a1)
{
  v2 = sub_20DF3EEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E428(uint64_t a1)
{
  v2 = sub_20DF3EE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E464(uint64_t a1)
{
  v2 = sub_20DF3EE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E4A0(uint64_t a1)
{
  v2 = sub_20DF3EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E4DC(uint64_t a1)
{
  v2 = sub_20DF3EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E518(uint64_t a1)
{
  v2 = sub_20DF3ED54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E554(uint64_t a1)
{
  v2 = sub_20DF3ED54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E5A4(uint64_t a1)
{
  v2 = sub_20DF3ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E5E0(uint64_t a1)
{
  v2 = sub_20DF3ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E61C(uint64_t a1)
{
  v2 = sub_20DF3EDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E658(uint64_t a1)
{
  v2 = sub_20DF3EDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D118, &qword_20DF4C130);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D120, &qword_20DF4C138);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D128, &qword_20DF4C140);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D130, &qword_20DF4C148);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v35 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D138, &qword_20DF4C150);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v32 = &v30 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D140, &qword_20DF4C158);
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D148, &qword_20DF4C160);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *v2;
  v22 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF3ECAC();
  sub_20DF484F4();
  if (v22 != 1)
  {
    v52 = 5;
    sub_20DF3ED00();
    v27 = v44;
    sub_20DF48314();
    v28 = v46;
    sub_20DF48374();
    (*(v45 + 8))(v27, v28);
    return (*(v18 + 8))(v20, v17);
  }

  v23 = (v18 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v49 = 2;
      sub_20DF3EDFC();
      v24 = v35;
      sub_20DF48314();
      v26 = v36;
      v25 = v37;
    }

    else if (v21 == 3)
    {
      v50 = 3;
      sub_20DF3EDA8();
      v24 = v38;
      sub_20DF48314();
      v26 = v39;
      v25 = v40;
    }

    else
    {
      v51 = 4;
      sub_20DF3ED54();
      v24 = v41;
      sub_20DF48314();
      v26 = v42;
      v25 = v43;
    }

    goto LABEL_12;
  }

  if (v21)
  {
    v48 = 1;
    sub_20DF3EE50();
    v24 = v32;
    sub_20DF48314();
    v26 = v33;
    v25 = v34;
LABEL_12:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v17);
  }

  v47 = 0;
  sub_20DF3EEA4();
  sub_20DF48314();
  (*(v30 + 8))(v16, v31);
  return (*v23)(v20, v17);
}

unint64_t sub_20DF3ECAC()
{
  result = qword_27C84D150;
  if (!qword_27C84D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D150);
  }

  return result;
}

unint64_t sub_20DF3ED00()
{
  result = qword_27C84D158;
  if (!qword_27C84D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D158);
  }

  return result;
}

unint64_t sub_20DF3ED54()
{
  result = qword_27C84D160;
  if (!qword_27C84D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D160);
  }

  return result;
}

unint64_t sub_20DF3EDA8()
{
  result = qword_27C84D168;
  if (!qword_27C84D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D168);
  }

  return result;
}

unint64_t sub_20DF3EDFC()
{
  result = qword_27C84D170;
  if (!qword_27C84D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D170);
  }

  return result;
}

unint64_t sub_20DF3EE50()
{
  result = qword_27C84D178;
  if (!qword_27C84D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D178);
  }

  return result;
}

unint64_t sub_20DF3EEA4()
{
  result = qword_27C84D180;
  if (!qword_27C84D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D180);
  }

  return result;
}

uint64_t LoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D188, &qword_20DF4C168);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D190, &qword_20DF4C170);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  MEMORY[0x28223BE20](v6);
  v61 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D198, &qword_20DF4C178);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x28223BE20](v9);
  v60 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1A0, &qword_20DF4C180);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1A8, &qword_20DF4C188);
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1B0, &qword_20DF4C190);
  v47 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1B8, &qword_20DF4C198);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v24 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_20DF3ECAC();
  v25 = v63;
  sub_20DF484E4();
  if (!v25)
  {
    v45 = v17;
    v46 = v16;
    v26 = v60;
    v27 = v61;
    v28 = v62;
    v63 = v21;
    v29 = v23;
    v30 = sub_20DF48304();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 6)
      {
        if (*(v30 + 32) > 2u)
        {
          v58 = v30;
          v39 = v63;
          if (v31 == 3)
          {
            v41 = v59;
            v68 = 3;
            sub_20DF3EDA8();
            sub_20DF48264();
            (*(v53 + 8))(v26, v52);
            (*(v39 + 8))(v29, v20);
            swift_unknownObjectRelease();
            v34 = 1;
            v33 = 3;
LABEL_18:
            *v41 = v33;
            *(v41 + 8) = v34;
            return __swift_destroy_boxed_opaque_existential_1(v64);
          }

          v40 = v29;
          if (v31 == 4)
          {
            v69 = 4;
            sub_20DF3ED54();
            sub_20DF48264();
            (*(v55 + 8))(v27, v54);
            (*(v39 + 8))(v29, v20);
            swift_unknownObjectRelease();
            v34 = 1;
            v33 = 4;
          }

          else
          {
            v70 = 5;
            sub_20DF3ED00();
            sub_20DF48264();
            v43 = v56;
            v33 = sub_20DF482D4();
            (*(v57 + 8))(v28, v43);
            (*(v39 + 8))(v40, v20);
            swift_unknownObjectRelease();
            v34 = 0;
          }
        }

        else if (*(v30 + 32))
        {
          if (v31 == 1)
          {
            v66 = 1;
            sub_20DF3EE50();
            v32 = v46;
            sub_20DF48264();
            (*(v48 + 8))(v32, v49);
            (*(v63 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v33 = 1;
            v34 = 1;
          }

          else
          {
            v67 = 2;
            sub_20DF3EDFC();
            v42 = v58;
            sub_20DF48264();
            (*(v50 + 8))(v42, v51);
            (*(v63 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v34 = 1;
            v33 = 2;
          }
        }

        else
        {
          v65 = 0;
          sub_20DF3EEA4();
          sub_20DF48264();
          (*(v47 + 8))(v19, v45);
          (*(v63 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 1;
        }

        v41 = v59;
        goto LABEL_18;
      }
    }

    v35 = sub_20DF48194();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C0, &qword_20DF4C1A0);
    *v37 = &type metadata for LoadState;
    sub_20DF48274();
    sub_20DF48184();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v63 + 8))(v29, v20);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_20DF3F85C()
{
  v1 = 0x726568746FLL;
  v2 = 0x6369727463656C65;
  if (*v0 != 2)
  {
    v2 = 0x4E474F4345524E55;
  }

  if (*v0)
  {
    v1 = 1667331688;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DF3F8E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DF43F10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DF3F914(uint64_t a1)
{
  v2 = sub_20DF4011C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3F950(uint64_t a1)
{
  v2 = sub_20DF4011C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3F98C(uint64_t a1)
{
  v2 = sub_20DF401C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3F9C8(uint64_t a1)
{
  v2 = sub_20DF401C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FA04(uint64_t a1)
{
  v2 = sub_20DF40218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FA40(uint64_t a1)
{
  v2 = sub_20DF40218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FA7C(uint64_t a1)
{
  v2 = sub_20DF4026C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FAB8(uint64_t a1)
{
  v2 = sub_20DF4026C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FAF4()
{
  sub_20DF48494();
  MEMORY[0x20F329080](0);
  return sub_20DF484D4();
}

uint64_t sub_20DF3FB38(uint64_t a1)
{
  sub_20DF48494();
  MEMORY[0x20F329080](0);
  return sub_20DF484D4();
}

uint64_t sub_20DF3FB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20DF483D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DF3FBF8(uint64_t a1)
{
  v2 = sub_20DF40170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FC34(uint64_t a1)
{
  v2 = sub_20DF40170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadDeviceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C8, &qword_20DF4C1A8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1D0, &qword_20DF4C1B0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1D8, &qword_20DF4C1B8);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v30 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1E0, &qword_20DF4C1C0);
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1E8, &qword_20DF4C1C8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF4011C();
  sub_20DF484F4();
  if (v18 == 1)
  {
    v19 = (v14 + 8);
    if (v17)
    {
      v20 = v17 == 1;
      v21 = v13;
      if (v20)
      {
        v40 = 1;
        sub_20DF40218();
        v25 = v30;
        sub_20DF48314();
        v27 = v31;
        v26 = v32;
      }

      else
      {
        v41 = 2;
        sub_20DF401C4();
        v25 = v33;
        sub_20DF48314();
        v27 = v34;
        v26 = v35;
      }

      (*(v27 + 8))(v25, v26);
      return (*v19)(v16, v21);
    }

    else
    {
      v39 = 0;
      sub_20DF4026C();
      sub_20DF48314();
      (*(v28 + 8))(v12, v29);
      return (*v19)(v16, v13);
    }
  }

  else
  {
    v42 = 3;
    sub_20DF40170();
    v22 = v36;
    sub_20DF48314();
    v23 = v38;
    sub_20DF48374();
    (*(v37 + 8))(v22, v23);
    return (*(v14 + 8))(v16, v13);
  }
}

unint64_t sub_20DF4011C()
{
  result = qword_27C84D1F0;
  if (!qword_27C84D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D1F0);
  }

  return result;
}

unint64_t sub_20DF40170()
{
  result = qword_27C84D1F8;
  if (!qword_27C84D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D1F8);
  }

  return result;
}

unint64_t sub_20DF401C4()
{
  result = qword_27C84D200;
  if (!qword_27C84D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D200);
  }

  return result;
}

unint64_t sub_20DF40218()
{
  result = qword_27C84D208;
  if (!qword_27C84D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D208);
  }

  return result;
}

unint64_t sub_20DF4026C()
{
  result = qword_27C84D210;
  if (!qword_27C84D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D210);
  }

  return result;
}

uint64_t LoadDeviceType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D218, &qword_20DF4C1D0);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v47 = &v36 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D220, &qword_20DF4C1D8);
  v38 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v36 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D228, &qword_20DF4C1E0);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D230, &qword_20DF4C1E8);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D238, &unk_20DF4C1F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20DF4011C();
  v15 = v48;
  sub_20DF484E4();
  if (!v15)
  {
    v16 = v9;
    v37 = v7;
    v17 = v6;
    v19 = v46;
    v18 = v47;
    v48 = v11;
    v20 = v13;
    v21 = sub_20DF48304();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_20DF48194();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C0, &qword_20DF4C1A0);
      *v27 = &type metadata for LoadDeviceType;
      sub_20DF48274();
      sub_20DF48184();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v21 + 32) > 1u)
      {
        v42 = v21;
        v30 = v45;
        v31 = v48;
        if (v23 == 2)
        {
          v52 = 2;
          sub_20DF401C4();
          sub_20DF48264();
          (*(v38 + 8))(v19, v43);
          (*(v31 + 8))(v20, v10);
          swift_unknownObjectRelease();
          v35 = 1;
          v29 = 2;
        }

        else
        {
          v53 = 3;
          sub_20DF40170();
          v32 = v18;
          v33 = v20;
          sub_20DF48264();
          v34 = v41;
          v29 = sub_20DF482D4();
          (*(v44 + 8))(v32, v34);
          (*(v31 + 8))(v33, v10);
          swift_unknownObjectRelease();
          v35 = 0;
        }
      }

      else
      {
        if (*(v21 + 32))
        {
          v51 = 1;
          sub_20DF40218();
          sub_20DF48264();
          (*(v40 + 8))(v17, v42);
          (*(v48 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v29 = 1;
        }

        else
        {
          v50 = 0;
          sub_20DF4026C();
          sub_20DF48264();
          (*(v39 + 8))(v16, v37);
          (*(v48 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v29 = 0;
        }

        v35 = 1;
        v30 = v45;
      }

      *v30 = v29;
      *(v30 + 8) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t LoadEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LoadEvent.id.setter(uint64_t a1)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LoadEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadEvent(0) + 20);
  v4 = sub_20DF474E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LoadEvent(uint64_t a1)
{
  result = qword_27C84D288;
  if (!qword_27C84D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LoadEvent.state.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for LoadEvent(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t LoadEvent.deviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for LoadEvent(0) + 32));

  return v1;
}

uint64_t LoadEvent.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for LoadEvent(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t LoadEvent.siteID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadEvent(0) + 40);
  v4 = sub_20DF47564();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoadEvent.energyFlowDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LoadEvent(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t LoadEvent.guidanceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LoadEvent(0) + 60);

  return sub_20DF40E2C(v3, a1);
}

uint64_t sub_20DF40E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LoadEvent.init(timestamp:state:level:deviceID:type:siteID:followingGuidance:guidanceID:energy:power:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a8;
  v47 = a7;
  v45 = a9;
  v48 = a10;
  Event = type metadata accessor for LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *a6;
  v43 = v19;
  v44 = v21;
  v22 = *(a6 + 8);
  sub_20DF47554();
  *&v18[Event[16]] = 0x3FF0000000000000;
  if (a3 > 0x64)
  {
    v23 = 6;
LABEL_10:

    sub_20DEDD4D8();
    swift_allocError();
    *v25 = v23;
    swift_willThrow();
    v26 = sub_20DF47564();
    v27 = *(*(v26 - 8) + 8);
    v27(v47, v26);
    v28 = sub_20DF474E4();
    (*(*(v28 - 8) + 8))(a1, v28);
    sub_20DED8730(v48, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v27)(v18, v26);
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
LABEL_9:
    v23 = 5;
    goto LABEL_10;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if (sub_20DF47D94() > 64)
    {
      goto LABEL_9;
    }
  }

  else if (v24 > 64)
  {
    goto LABEL_9;
  }

  HIDWORD(v42) = v22;
  if (v46)
  {
    v30 = sub_20DF47564();
    v23 = 1;
    if ((*(*(v30 - 8) + 48))(v48, 1, v30) == 1)
    {
      goto LABEL_10;
    }
  }

  v31 = Event[5];
  v32 = sub_20DF474E4();
  (*(*(v32 - 8) + 32))(&v18[v31], a1, v32);
  v33 = &v18[Event[6]];
  v34 = v44;
  *v33 = v43;
  v33[8] = v20;
  *&v18[Event[7]] = a3;
  v35 = &v18[Event[8]];
  *v35 = a4;
  *(v35 + 1) = a5;
  v36 = &v18[Event[9]];
  *v36 = v34;
  v36[8] = BYTE4(v42);
  v37 = Event[10];
  v38 = sub_20DF47564();
  (*(*(v38 - 8) + 32))(&v18[v37], v47, v38);
  v18[Event[11]] = v46 & 1;
  v39 = &v18[Event[13]];
  *v39 = 0;
  v39[8] = 0;
  v40 = &v18[Event[12]];
  *v40 = 0;
  v40[8] = 0;
  v41 = v48;
  sub_20DF40E2C(v48, &v18[Event[15]]);
  v18[Event[14]] = 1;
  sub_20DF41234(v18, v45);
  sub_20DED8730(v41, &qword_27C84CCB8, &qword_20DF4AC48);
  return sub_20DF41298(v18);
}

uint64_t sub_20DF41234(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for LoadEvent(0);
  (*(*(Event - 8) + 16))(a2, a1, Event);
  return a2;
}

uint64_t sub_20DF41298(uint64_t a1)
{
  Event = type metadata accessor for LoadEvent(0);
  (*(*(Event - 8) + 8))(a1, Event);
  return a1;
}

uint64_t LoadEvent.init(timestamp:state:level:deviceID:type:siteID:followingGuidance:energyFlowDirection:guidanceID:energy:power:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v52 = a9;
  v53 = a8;
  v54 = a1;
  v55 = a7;
  v56 = a11;
  Event = type metadata accessor for LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v24 = *(a2 + 8);
  v51 = *a6;
  v25 = *(a6 + 8);
  v26 = *a10;
  sub_20DF47554();
  *&v22[Event[16]] = 0x3FF0000000000000;
  if (a3 > 0x64)
  {
    v27 = 6;
LABEL_10:

    sub_20DEDD4D8();
    swift_allocError();
    *v41 = v27;
    swift_willThrow();
    v42 = sub_20DF47564();
    v43 = *(*(v42 - 8) + 8);
    v43(v55, v42);
    v44 = sub_20DF474E4();
    (*(*(v44 - 8) + 8))(v54, v44);
    sub_20DED8730(v56, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v43)(v22, v42);
  }

  if (!sub_20DF4407C(a4, a5))
  {
    v27 = 5;
    goto LABEL_10;
  }

  v50 = v26;
  if (v53)
  {
    v28 = sub_20DF47564();
    v27 = 1;
    if ((*(*(v28 - 8) + 48))(v56, 1, v28) == 1)
    {
      goto LABEL_10;
    }
  }

  v29 = Event[5];
  v30 = sub_20DF474E4();
  (*(*(v30 - 8) + 32))(&v22[v29], v54, v30);
  v31 = &v22[Event[6]];
  *v31 = v23;
  v31[8] = v24;
  *&v22[Event[7]] = a3;
  v32 = &v22[Event[8]];
  *v32 = a4;
  *(v32 + 1) = a5;
  v33 = &v22[Event[9]];
  *v33 = v51;
  v33[8] = v25;
  v34 = Event[10];
  v35 = sub_20DF47564();
  (*(*(v35 - 8) + 32))(&v22[v34], v55, v35);
  v22[Event[11]] = v53 & 1;
  if (!v24)
  {
    v36 = v50;
    if (v23 == 4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v40 = a15;
    v39 = a14;
    v38 = a13;
    v37 = a12;
    goto LABEL_13;
  }

  v36 = v50;
  if (v23 < 4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
LABEL_13:
  v46 = &v22[Event[13]];
  *v46 = v37;
  v46[8] = v38 & 1;
  v47 = &v22[Event[12]];
  *v47 = v39;
  v47[8] = v40 & 1;
  v48 = v56;
  sub_20DF40E2C(v56, &v22[Event[15]]);
  v22[Event[14]] = v36;
  sub_20DF41234(v22, v52);
  sub_20DED8730(v48, &qword_27C84CCB8, &qword_20DF4AC48);
  return sub_20DF41298(v22);
}