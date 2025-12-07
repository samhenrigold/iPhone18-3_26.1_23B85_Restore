uint64_t sub_26640EADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v68 = a3;
  v69 = a4;
  v11 = sub_2664DFE38();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE438();
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;

  v24 = a7;
  v70 = v22;
  sub_2664DE428();
  v25 = sub_2663742F8(a2);
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v68;
    v29[3] = v69;
    v29[4] = sub_266410CC8;
    v29[5] = v23;

    v30 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v31 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v30, &dword_26629C000, v31, "initalizeIPStoreEntity", 22, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (v66[1].isa)(v19, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266410DD8;
    *(v32 + 24) = v29;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v32);
  }

  else
  {
    v33 = v69;
    v62 = a6;
    v63 = a5;
    v66 = v24;
    v67 = v23;
    v64 = v14;
    v34 = v65;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v36 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v16;
    v61 = v36;
    v60 = v37;
    v37(v16, v36, v11);
    v39 = v33;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2662A320C(v68, v39, v74);
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingUsage#signal received unexpected empty item query for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v44 = *(v34 + 8);
    v44(v38, v35);
    v46 = v62;
    v45 = v63;
    v47 = MEMORY[0x277D84F90];
    v48 = sub_266386140(MEMORY[0x277D84F90]);
    v49 = sub_266385CA8(v47);
    swift_beginAccess();
    *(v45 + 16) = v48;

    swift_beginAccess();
    *(v46 + 16) = v49;

    v50 = v64;
    v60(v64, v61, v35);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v44;
      v55 = v54;
      v73 = v54;
      *v53 = 136315138;
      v56 = sub_2664E01D8();
      v58 = sub_2662A320C(v56, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v51, v52, "NowPlayingUsageSignal#signal usage podcasts complete with counts %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      v69(v64, v35);
    }

    else
    {

      v44(v50, v35);
    }

    dispatch_group_leave(v66);
  }

  (*(v71 + 8))(v70, v72);
}

uint64_t sub_26640F228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v68 = a3;
  v69 = a4;
  v11 = sub_2664DFE38();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE438();
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;

  v24 = a7;
  v70 = v22;
  sub_2664DE428();
  v25 = sub_2663742F8(a2);
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v68;
    v29[3] = v69;
    v29[4] = sub_266410CA0;
    v29[5] = v23;

    v30 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v31 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v30, &dword_26629C000, v31, "initalizeIPStoreEntity", 22, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (v66[1].isa)(v19, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266410DD8;
    *(v32 + 24) = v29;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v32);
  }

  else
  {
    v33 = v69;
    v62 = a6;
    v63 = a5;
    v66 = v24;
    v67 = v23;
    v64 = v14;
    v34 = v65;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v36 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v16;
    v61 = v36;
    v60 = v37;
    v37(v16, v36, v11);
    v39 = v33;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2662A320C(v68, v39, v74);
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingUsage#signal received unexpected empty item query for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v44 = *(v34 + 8);
    v44(v38, v35);
    v46 = v62;
    v45 = v63;
    v47 = MEMORY[0x277D84F90];
    v48 = sub_266386140(MEMORY[0x277D84F90]);
    v49 = sub_266385CA8(v47);
    swift_beginAccess();
    *(v45 + 16) = v48;

    swift_beginAccess();
    *(v46 + 16) = v49;

    v50 = v64;
    v60(v64, v61, v35);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v44;
      v55 = v54;
      v73 = v54;
      *v53 = 136315138;
      v56 = sub_2664E01D8();
      v58 = sub_2662A320C(v56, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v51, v52, "NowPlayingUsageSignal#signal usage books complete with counts %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      v69(v64, v35);
    }

    else
    {

      v44(v50, v35);
    }

    dispatch_group_leave(v66);
  }

  (*(v71 + 8))(v70, v72);
}

uint64_t sub_26640F974(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v68 = a3;
  v69 = a4;
  v11 = sub_2664DFE38();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE438();
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;

  v24 = a7;
  v70 = v22;
  sub_2664DE428();
  v25 = sub_2663742F8(a2);
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v68;
    v29[3] = v69;
    v29[4] = sub_266410C78;
    v29[5] = v23;

    v30 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v31 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v30, &dword_26629C000, v31, "initalizeIPStoreEntity", 22, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (v66[1].isa)(v19, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266410DD8;
    *(v32 + 24) = v29;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v32);
  }

  else
  {
    v33 = v69;
    v62 = a6;
    v63 = a5;
    v66 = v24;
    v67 = v23;
    v64 = v14;
    v34 = v65;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v36 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v16;
    v61 = v36;
    v60 = v37;
    v37(v16, v36, v11);
    v39 = v33;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2662A320C(v68, v39, v74);
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingUsage#signal received unexpected empty item query for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v44 = *(v34 + 8);
    v44(v38, v35);
    v46 = v62;
    v45 = v63;
    v47 = MEMORY[0x277D84F90];
    v48 = sub_266386140(MEMORY[0x277D84F90]);
    v49 = sub_266385CA8(v47);
    swift_beginAccess();
    *(v45 + 16) = v48;

    swift_beginAccess();
    *(v46 + 16) = v49;

    v50 = v64;
    v60(v64, v61, v35);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v44;
      v55 = v54;
      v73 = v54;
      *v53 = 136315138;
      v56 = sub_2664E01D8();
      v58 = sub_2662A320C(v56, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v51, v52, "NowPlayingUsageSignal#signal usage radio complete with counts %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      v69(v64, v35);
    }

    else
    {

      v44(v50, v35);
    }

    dispatch_group_leave(v66);
  }

  (*(v71 + 8))(v70, v72);
}

uint64_t sub_2664100C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v68 = a3;
  v69 = a4;
  v11 = sub_2664DFE38();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE438();
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;

  v24 = a7;
  v70 = v22;
  sub_2664DE428();
  v25 = sub_2663742F8(a2);
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v68;
    v29[3] = v69;
    v29[4] = sub_266410C40;
    v29[5] = v23;

    v30 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v31 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v30, &dword_26629C000, v31, "initalizeIPStoreEntity", 22, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (v66[1].isa)(v19, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266410C68;
    *(v32 + 24) = v29;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410C74, v32);
  }

  else
  {
    v33 = v69;
    v62 = a6;
    v63 = a5;
    v66 = v24;
    v67 = v23;
    v64 = v14;
    v34 = v65;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v36 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v16;
    v61 = v36;
    v60 = v37;
    v37(v16, v36, v11);
    v39 = v33;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2662A320C(v68, v39, v74);
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingUsage#signal received unexpected empty item query for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v44 = *(v34 + 8);
    v44(v38, v35);
    v46 = v62;
    v45 = v63;
    v47 = MEMORY[0x277D84F90];
    v48 = sub_266386140(MEMORY[0x277D84F90]);
    v49 = sub_266385CA8(v47);
    swift_beginAccess();
    *(v45 + 16) = v48;

    swift_beginAccess();
    *(v46 + 16) = v49;

    v50 = v64;
    v60(v64, v61, v35);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v44;
      v55 = v54;
      v73 = v54;
      *v53 = 136315138;
      v56 = sub_2664E01D8();
      v58 = sub_2662A320C(v56, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v51, v52, "NowPlayingUsageSignal#signal usage musicWithoutRadio complete with counts %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      v69(v64, v35);
    }

    else
    {

      v44(v50, v35);
    }

    dispatch_group_leave(v66);
  }

  (*(v71 + 8))(v70, v72);
}

void *sub_26641080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v68 = v4;
  while (v7)
  {
    v11 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a3 + 16);

    if (v16 && (v17 = sub_2662A3E98(v15, v14), (v18 & 1) != 0) && *(*(a3 + 56) + 8 * v17))
    {
      v19 = 0.0;
      if (*(a2 + 16))
      {
        v20 = sub_2662A3E98(v15, v14);
        if (v21)
        {
          v19 = *(*(a2 + 56) + 8 * v20);
        }
      }

      v22 = 1.0;
      if (*(a3 + 16))
      {
        v23 = sub_2662A3E98(v15, v14);
        if (v24)
        {
          v22 = *(*(a3 + 56) + 8 * v23);
        }
      }

      v25 = round(v19 / v22 * 100.0);
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_51;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_52;
      }

      if (v25 >= 9.22337204e18)
      {
        goto LABEL_53;
      }

      v26 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v15;
      v29 = isUniquelyReferenced_nonNull_native;
      v70 = v10;
      v30 = v14;
      v31 = v28;
      v32 = v30;
      v33 = sub_2662A3E98(v28, v30);
      v35 = v10[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_54;
      }

      v39 = v34;
      if (v10[3] >= v38)
      {
        if ((v29 & 1) == 0)
        {
          v65 = v33;
          sub_26645410C();
          v33 = v65;
        }

        v40 = v31;
        v42 = v32;
      }

      else
      {
        sub_266450E14(v38, v29);
        v40 = v31;
        v41 = v31;
        v42 = v32;
        v33 = sub_2662A3E98(v41, v32);
        if ((v39 & 1) != (v43 & 1))
        {
          goto LABEL_56;
        }
      }

      v61 = v25;
      v10 = v70;
      if (v39)
      {
        *(v70[7] + 8 * v33) = v61;
        goto LABEL_5;
      }

      v70[(v33 >> 6) + 8] |= 1 << v33;
      v62 = (v70[6] + 16 * v33);
      *v62 = v40;
      v62[1] = v42;
      *(v70[7] + 8 * v33) = v61;
      v63 = v70[2];
      v37 = __OFADD__(v63, 1);
      v60 = v63 + 1;
      if (v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v26 = a3;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v15;
      v46 = v44;
      v71 = v10;
      v47 = v14;
      v48 = v45;
      v49 = v47;
      v50 = sub_2662A3E98(v45, v47);
      v52 = v10[2];
      v53 = (v51 & 1) == 0;
      v37 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v37)
      {
        goto LABEL_49;
      }

      v55 = v51;
      if (v10[3] >= v54)
      {
        if (v46)
        {
          v56 = v48;
          if (v51)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v64 = v50;
          sub_26645410C();
          v50 = v64;
          v56 = v48;
          v10 = v71;
          if (v55)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_266450E14(v54, v46);
        v56 = v48;
        v50 = sub_2662A3E98(v48, v49);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_56;
        }

        if (v55)
        {
LABEL_4:
          *(v10[7] + 8 * v50) = 0;
LABEL_5:

          goto LABEL_6;
        }
      }

      v10[(v50 >> 6) + 8] |= 1 << v50;
      v58 = (v10[6] + 16 * v50);
      *v58 = v56;
      v58[1] = v49;
      *(v10[7] + 8 * v50) = 0;
      v59 = v10[2];
      v37 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v37)
      {
        goto LABEL_50;
      }
    }

    v10[2] = v60;
LABEL_6:
    v9 = v11;
    a3 = v26;
    v4 = v68;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_78Tm_0(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));
  a2(*(v3 + 40));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

id static CloudControllerProvider.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_280071C20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_2800736D8;
  *a1 = qword_2800736D8;

  return v2;
}

id sub_266410EA4()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    qword_2800736D8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_266410F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *v6;
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2663CE9D8;
    v12[3] = a5;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a6];
  _Block_release(v11);
}

void sub_266411038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v12 = *v8;
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2663CE9D8;
    v14[3] = a7;
    v13 = _Block_copy(v14);
  }

  else
  {
    v13 = 0;
  }

  [v12 *a8];
  _Block_release(v13);
}

id sub_266411148(void **a1, void (*a2)(__int128 *))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 < 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v9, v4);
    v10 = sub_2664DFE18();
    v11 = sub_2664E06D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26629C000, v10, v11, "CloudControllerProvider#init unexpected error resolving user identity", v12, 2u);
      MEMORY[0x266784AD0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    a2(&v16);
    return sub_26641139C(&v16);
  }

  v13 = objc_opt_self();
  v14 = v8;
  result = [v13 controllerWithUserIdentity_];
  if (result)
  {
    *(&v17 + 1) = &type metadata for CloudControllerProvider;
    v18 = &protocol witness table for CloudControllerProvider;
    *&v16 = result;
    a2(&v16);

    return sub_26641139C(&v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_26641139C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D50, &unk_2664E6F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaybackQueueLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 7827310;
  v3 = 0x726574616CLL;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1954047342;
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

SiriAudioSupport::PlaybackQueueLocation_optional __swiftcall PlaybackQueueLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266411524()
{
  result = qword_2800736E0;
  if (!qword_2800736E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800736E0);
  }

  return result;
}

uint64_t sub_266411578()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266411650(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_266411714(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_2664117F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7827310;
  v5 = 0xE500000000000000;
  v6 = 0x726574616CLL;
  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1954047342;
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

unint64_t sub_26641188C()
{
  result = qword_2800736E8;
  if (!qword_2800736E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800736F0, &qword_2664EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800736E8);
  }

  return result;
}

uint64_t static ShimUtilities.getAppBundleId(from:)(uint64_t a1)
{
  v174 = sub_2664DFFF8();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v162[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v169 = sub_2664DFFC8();
  v168 = *(v169 - 8);
  v3 = MEMORY[0x28223BE20](v169);
  v166 = &v162[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v167 = &v162[-v6];
  MEMORY[0x28223BE20](v5);
  v175 = &v162[-v7];
  v186 = sub_2664DF678();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v183 = &v162[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v185 = sub_2664E0008();
  v179 = *(v185 - 8);
  v9 = MEMORY[0x28223BE20](v185);
  v178 = &v162[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v171 = &v162[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v177 = &v162[-v14];
  MEMORY[0x28223BE20](v13);
  v182 = &v162[-v15];
  v196 = sub_2664DF698();
  v194 = *(v196 - 8);
  v16 = MEMORY[0x28223BE20](v196);
  v193 = &v162[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v190 = &v162[-v18];
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v197 = v19;
  v198 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v162[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v192 = &v162[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v162[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v176 = &v162[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v170 = &v162[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v180 = &v162[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v195 = &v162[-v35];
  MEMORY[0x28223BE20](v34);
  v37 = &v162[-v36];
  v38 = sub_2664DEBF8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v162[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_2664DEB38();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v162[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v44);
  v48 = &v162[-v47];
  (*(v39 + 16))(v41, a1, v38);
  if ((*(v39 + 88))(v41, v38) != *MEMORY[0x277D5C138])
  {
    (*(v39 + 8))(v41, v38);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v73 = v197;
    v74 = __swift_project_value_buffer(v197, qword_280F914F0);
    swift_beginAccess();
    v75 = v198;
    (*(v198 + 16))(v23, v74, v73);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06D8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "ShimUtilities#getAppBundleId Not ifClientAction parse", v78, 2u);
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    (*(v75 + 8))(v23, v73);
    return 0;
  }

  (*(v39 + 96))(v41, v38);
  (*(v43 + 32))(v48, v41, v42);
  v49 = v42;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v50 = v197;
  v51 = __swift_project_value_buffer(v197, qword_280F914F0);
  swift_beginAccess();
  v52 = v198;
  v53 = *(v198 + 16);
  v188 = v198 + 16;
  v189 = v51;
  v187 = v53;
  v53(v37, v51, v50);
  (*(v43 + 16))(v46, v48, v49);
  v54 = sub_2664DFE18();
  v55 = sub_2664E06C8();
  v56 = os_log_type_enabled(v54, v55);
  v165 = v43;
  v191 = v48;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v199 = v164;
    *v57 = 136315138;
    v58 = v190;
    sub_2664DEB28();
    sub_2664DF688();
    v163 = v55;
    v59 = v194;
    (*(v194 + 1))(v58, v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736F8, qword_2664EC1E0);
    v60 = sub_2664E01D8();
    v61 = v49;
    v63 = v62;

    v64 = *(v43 + 8);
    (v64)(v46, v61);
    v65 = sub_2662A320C(v60, v63, &v199);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_26629C000, v54, v163, "ShimUtilities#getAppBundleId shim parameter: %s", v57, 0xCu);
    v66 = v164;
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    v67 = v66;
    v68 = v198;
    MEMORY[0x266784AD0](v67, -1, -1);
    v69 = v197;
    MEMORY[0x266784AD0](v57, -1, -1);

    v70 = v61;
    v71 = v196;
    v72 = *(v68 + 8);
    (v72)(v37, v69);
  }

  else
  {

    v64 = *(v43 + 8);
    (v64)(v46, v49);
    v72 = *(v52 + 8);
    (v72)(v37, v50);
    v69 = v50;
    v70 = v49;
    v71 = v196;
    v59 = v194;
  }

  v79 = v193;
  sub_2664DEB28();
  v80 = sub_2664DF688();
  (*(v59 + 1))(v79, v71);
  v81 = v195;
  if (!*(v80 + 16) || (v82 = sub_2662A3E98(7368801, 0xE300000000000000), (v83 & 1) == 0))
  {

    v97 = v192;
    v187(v192, v189, v69);
    v98 = sub_2664DFE18();
    v99 = sub_2664E06D8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_26629C000, v98, v99, "ShimUtilities#getAppBundleId app shimParameter not found", v100, 2u);
      MEMORY[0x266784AD0](v100, -1, -1);
    }

    (v72)(v97, v69);
    v101 = v191;
    v102 = v70;
    goto LABEL_40;
  }

  v84 = *(*(v80 + 56) + 8 * v82);

  v187(v81, v189, v69);

  v85 = sub_2664DFE18();
  v86 = sub_2664E06C8();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v196 = v70;
    v194 = v72;
    v88 = v64;
    v89 = v87;
    v90 = swift_slowAlloc();
    v199 = v90;
    *v89 = 136315138;
    v91 = MEMORY[0x2667834D0](v84, v186);
    v93 = sub_2662A320C(v91, v92, &v199);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_26629C000, v85, v86, "ShimUtilities#getAppBundleId app parameter: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x266784AD0](v90, -1, -1);
    v94 = v89;
    v64 = v88;
    v72 = v194;
    v95 = v196;
    MEMORY[0x266784AD0](v94, -1, -1);

    v96 = v195;
  }

  else
  {
    v95 = v70;

    v96 = v81;
  }

  (v72)(v96, v69);
  v104 = v183;
  v103 = v184;
  if (!*(v84 + 16))
  {

LABEL_26:
    v125 = v181;
    v187(v181, v189, v69);
    v126 = sub_2664DFE18();
    v127 = sub_2664E06D8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_26629C000, v126, v127, "ShimUtilities#getAppBundleId unable to extract appValue", v128, 2u);
      MEMORY[0x266784AD0](v128, -1, -1);
    }

    (v72)(v125, v69);
    v101 = v191;
    v102 = v95;
    goto LABEL_40;
  }

  v105 = v186;
  (*(v184 + 16))(v183, v84 + ((*(v184 + 80) + 32) & ~*(v184 + 80)), v186);

  if ((*(v103 + 88))(v104, v105) != *MEMORY[0x277D1C680])
  {
    (*(v103 + 8))(v104, v105);
    goto LABEL_26;
  }

  v193 = v64;
  v196 = v95;
  (*(v103 + 96))(v104, v105);
  v106 = v179;
  v107 = v182;
  v108 = v185;
  (*(v179 + 32))(v182, v104, v185);
  v109 = v180;
  v187(v180, v189, v69);
  v110 = v69;
  v111 = *(v106 + 16);
  v112 = v177;
  v111(v177, v107, v108);
  v113 = sub_2664DFE18();
  v114 = sub_2664E06C8();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v199 = v116;
    *v115 = 136315138;
    v111(v171, v112, v185);
    v117 = sub_2664E0318();
    v118 = v112;
    v120 = v119;
    v195 = *(v106 + 8);
    (v195)(v118, v185);
    v121 = sub_2662A320C(v117, v120, &v199);

    *(v115 + 4) = v121;
    _os_log_impl(&dword_26629C000, v113, v114, "ShimUtilities#getAppBundleId app value: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x266784AD0](v116, -1, -1);
    v122 = v115;
    v108 = v185;
    MEMORY[0x266784AD0](v122, -1, -1);

    v123 = v180;
    v124 = v197;
  }

  else
  {

    v195 = *(v106 + 8);
    (v195)(v112, v108);
    v123 = v109;
    v124 = v110;
  }

  v72(v123);
  v129 = v178;
  v111(v178, v182, v108);
  if ((*(v106 + 88))(v129, v108) != *MEMORY[0x277D72A58])
  {
    (v195)(v129, v108);
    v64 = v193;
LABEL_36:
    v151 = v176;
    v187(v176, v189, v124);
    v152 = sub_2664DFE18();
    v153 = sub_2664E06D8();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = v108;
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_26629C000, v152, v153, "ShimUtilities#getAppBundleId unable to extract appValue typed entity", v155, 2u);
      MEMORY[0x266784AD0](v155, -1, -1);

      (v72)(v151, v124);
      v156 = v182;
      v157 = v154;
    }

    else
    {

      (v72)(v151, v124);
      v156 = v182;
      v157 = v108;
    }

    (v195)(v156, v157);
    v101 = v191;
    v102 = v196;
LABEL_40:
    (v64)(v101, v102);
    return 0;
  }

  v194 = v72;
  (*(v106 + 96))(v129, v108);
  v130 = swift_projectBox();
  v131 = v173;
  v132 = v172;
  v133 = v174;
  (*(v173 + 16))(v172, v130, v174);
  if ((*(v131 + 88))(v132, v133) != *MEMORY[0x277D72970])
  {
    (*(v131 + 8))(v132, v133);

    v64 = v193;
    v72 = v194;
    goto LABEL_36;
  }

  (*(v131 + 96))(v132, v133);
  v134 = v168;
  v135 = v175;
  v136 = v169;
  (*(v168 + 32))(v175, v132, v169);

  v137 = v170;
  v187(v170, v189, v124);
  v138 = *(v134 + 16);
  v139 = v167;
  v138(v167, v135, v136);
  v140 = sub_2664DFE18();
  v141 = sub_2664E06C8();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v199 = v192;
    *v142 = 136315138;
    v138(v166, v139, v136);
    v143 = sub_2664E0318();
    v145 = v144;
    v146 = *(v134 + 8);
    v146(v139, v136);
    v147 = sub_2662A320C(v143, v145, &v199);

    *(v142 + 4) = v147;
    _os_log_impl(&dword_26629C000, v140, v141, "ShimUtilities#getAppBundleId app: %s", v142, 0xCu);
    v148 = v192;
    __swift_destroy_boxed_opaque_existential_1Tm(v192);
    MEMORY[0x266784AD0](v148, -1, -1);
    MEMORY[0x266784AD0](v142, -1, -1);

    v149 = v197;
    v150 = v170;
  }

  else
  {

    v146 = *(v134 + 8);
    v146(v139, v136);
    v150 = v137;
    v149 = v124;
  }

  (v194)(v150, v149);
  v159 = v196;
  v160 = v175;
  v161 = sub_2664DFFB8();
  v146(v160, v136);
  (v195)(v182, v185);
  (v193)(v191, v159);
  return v161;
}

uint64_t static ShimUtilities.getShimExperience(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v246 = a2;
  v225 = sub_2664DFFA8();
  v230 = *(v225 - 8);
  v3 = MEMORY[0x28223BE20](v225);
  v216 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v223 = &v207 - v6;
  MEMORY[0x28223BE20](v5);
  v235 = &v207 - v7;
  v234 = sub_2664DFFF8();
  v233 = *(v234 - 8);
  v8 = MEMORY[0x28223BE20](v234);
  v212 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v226 = &v207 - v10;
  v220 = sub_2664DFFE8();
  v219 = *(v220 - 8);
  v11 = MEMORY[0x28223BE20](v220);
  v211 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v217 = &v207 - v13;
  v14 = sub_2664DF678();
  v239 = *(v14 - 8);
  v240 = v14;
  MEMORY[0x28223BE20](v14);
  v238 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664E0008();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v215 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v214 = &v207 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v221 = &v207 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v228 = &v207 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v232 = (&v207 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v227 = &v207 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v231 = &v207 - v31;
  MEMORY[0x28223BE20](v30);
  v241 = &v207 - v32;
  v33 = sub_2664DF698();
  v251 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2664DFE38();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v244 = &v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v237 = &v207 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v222 = &v207 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v218 = &v207 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v207 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v224 = &v207 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v229 = &v207 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v236 = &v207 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v247 = &v207 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v207 - v57;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v36, qword_280F914F0);
  swift_beginAccess();
  v60 = v37[2];
  v248 = v59;
  v249 = v60;
  v250 = v37 + 2;
  v60(v58, v59, v36);
  v61 = v251[2];
  v245 = a1;
  v61(v35, a1, v33);
  v62 = sub_2664DFE18();
  v63 = v33;
  v64 = sub_2664E06C8();
  v65 = os_log_type_enabled(v62, v64);
  v242 = v17;
  v243 = v16;
  v213 = v48;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v252 = v210;
    *v66 = 136315138;
    v67 = v35;
    v209 = v63;
    sub_2664DF688();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736F8, qword_2664EC1E0);
    v68 = v37;
    v69 = v36;
    v70 = sub_2664E01D8();
    v72 = v71;

    (v251[1])(v67, v209);
    v73 = v70;
    v36 = v69;
    v37 = v68;
    v74 = sub_2662A320C(v73, v72, &v252);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_26629C000, v62, v64, "ShimUtilities#getShimExperience shim parameters: %s", v66, 0xCu);
    v75 = v210;
    __swift_destroy_boxed_opaque_existential_1Tm(v210);
    v76 = v246;
    MEMORY[0x266784AD0](v75, -1, -1);
    MEMORY[0x266784AD0](v66, -1, -1);

    v77 = v68[1];
    v77(v58, v36);
  }

  else
  {

    (v251[1])(v35, v63);
    v77 = v37[1];
    v77(v58, v36);
    v76 = v246;
  }

  v78 = v244;
  v79 = sub_2664DF688();
  v80 = v247;
  v81 = v248;
  if (!*(v79 + 16) || (v82 = sub_2662A3E98(0x6E45686372616573, 0xEC00000079746974), (v83 & 1) == 0))
  {

    v249(v78, v81, v36);
    v95 = sub_2664DFE18();
    v96 = sub_2664E06D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      v98 = "ShimUtilities#getShimExperience searchEntity shimParameter not found";
LABEL_21:
      _os_log_impl(&dword_26629C000, v95, v96, v98, v97, 2u);
      MEMORY[0x266784AD0](v97, -1, -1);
    }

LABEL_22:

    v77(v78, v36);
    v119 = type metadata accessor for ShimExperience(0);
    return (*(*(v119 - 8) + 56))(v76, 1, 1, v119);
  }

  v84 = *(*(v79 + 56) + 8 * v82);

  v249(v80, v81, v36);

  v85 = sub_2664DFE18();
  v86 = sub_2664E06C8();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v252 = v245;
    *v87 = 136315138;
    v88 = MEMORY[0x2667834D0](v84, v240);
    v251 = v37;
    v90 = v76;
    v91 = v77;
    v92 = sub_2662A320C(v88, v89, &v252);
    v37 = v251;
    v81 = v248;

    *(v87 + 4) = v92;
    v77 = v91;
    v76 = v90;
    _os_log_impl(&dword_26629C000, v85, v86, "ShimUtilities#getShimExperience searchEntityParameter: %s", v87, 0xCu);
    v93 = v245;
    __swift_destroy_boxed_opaque_existential_1Tm(v245);
    MEMORY[0x266784AD0](v93, -1, -1);
    MEMORY[0x266784AD0](v87, -1, -1);

    v94 = v247;
  }

  else
  {

    v94 = v80;
  }

  v77(v94, v36);
  v99 = v242;
  v101 = v238;
  v100 = v239;
  if (!*(v84 + 16))
  {

    goto LABEL_19;
  }

  v102 = v240;
  (*(v239 + 16))(v238, v84 + ((*(v239 + 80) + 32) & ~*(v239 + 80)), v240);

  if ((*(v100 + 88))(v101, v102) != *MEMORY[0x277D1C680])
  {
    (*(v100 + 8))(v101, v102);
LABEL_19:
    v78 = v237;
    v249(v237, v81, v36);
    v95 = sub_2664DFE18();
    v96 = sub_2664E06D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      v98 = "ShimUtilities#getShimExperience unable to extract searchEntityTypedValue";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  (*(v100 + 96))(v101, v102);
  v103 = v241;
  v104 = v81;
  v105 = v243;
  (*(v99 + 32))(v241, v101, v243);
  v249(v236, v104, v36);
  v106 = v99 + 16;
  v107 = v231;
  v245 = *(v99 + 16);
  (v245)(v231, v103, v105);
  v108 = sub_2664DFE18();
  v109 = sub_2664E06C8();
  v110 = os_log_type_enabled(v108, v109);
  v244 = v77;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v252 = v251;
    *v111 = 136315138;
    v112 = v99;
    (v245)(v227, v107, v243);
    v113 = sub_2664E0318();
    v114 = v36;
    v116 = v115;
    v247 = *(v112 + 8);
    (v247)(v107, v243);
    v117 = sub_2662A320C(v113, v116, &v252);
    v36 = v114;

    *(v111 + 4) = v117;
    v99 = v112;
    _os_log_impl(&dword_26629C000, v108, v109, "ShimUtilities#getShimExperience searchEntityTypedValue: %s", v111, 0xCu);
    v118 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(v251);
    v105 = v243;
    MEMORY[0x266784AD0](v118, -1, -1);
    MEMORY[0x266784AD0](v111, -1, -1);

    (v244)(v236, v114);
  }

  else
  {

    v247 = *(v99 + 8);
    (v247)(v107, v105);
    v77(v236, v36);
  }

  v121 = v234;
  v122 = v233;
  v123 = v232;
  v240 = v106;
  v124 = v245;
  (v245)(v232, v241, v105);
  v239 = *(v99 + 88);
  v125 = (v239)(v123, v105);
  LODWORD(v238) = *MEMORY[0x277D72A58];
  v126 = v124;
  if (v125 == v238)
  {
    (*(v99 + 96))(v123, v105);
    v127 = swift_projectBox();
    v128 = v226;
    (*(v122 + 16))(v226, v127, v121);
    if ((*(v122 + 88))(v128, v121) == *MEMORY[0x277D72998])
    {
      (*(v122 + 96))(v128, v121);
      v129 = v219;
      v130 = v217;
      v131 = v220;
      (*(v219 + 32))(v217, v128, v220);

      sub_26641499C(v246);
      (*(v129 + 8))(v130, v131);
      return (v247)(v241, v105);
    }

    (*(v122 + 8))(v128, v121);
  }

  else
  {
    (v247)(v123, v105);
  }

  v132 = v229;
  v133 = v228;
  v126(v228, v241, v105);
  if ((v239)(v133, v105) != *MEMORY[0x277D72A38])
  {
    (v247)(v133, v105);
    v151 = v222;
    v249(v222, v248, v36);
    v152 = sub_2664DFE18();
    v153 = sub_2664E06D8();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_26629C000, v152, v153, "ShimUtilities#getShimExperience unable to extract mediaEntityValue", v154, 2u);
      MEMORY[0x266784AD0](v154, -1, -1);
    }

    (v244)(v151, v36);
    (v247)(v241, v243);
    goto LABEL_43;
  }

  v251 = v37;
  v236 = *(v99 + 96);
  v237 = (v99 + 96);
  (v236)(v133, v105);
  v134 = swift_projectBox();
  v135 = v230;
  v136 = v36;
  v137 = *(v230 + 16);
  v138 = v235;
  v139 = v225;
  v137(v235, v134, v225);

  v208 = v136;
  v249(v132, v248, v136);
  v140 = v223;
  v137(v223, v138, v139);
  v141 = sub_2664DFE18();
  v142 = sub_2664E06C8();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v252 = v232;
    *v143 = 136315138;
    LODWORD(v231) = v142;
    v137(v216, v140, v139);
    v144 = sub_2664E0318();
    v146 = v145;
    v147 = *(v135 + 8);
    v147(v140, v139);
    v148 = sub_2662A320C(v144, v146, &v252);

    v149 = v143;
    *(v143 + 4) = v148;
    _os_log_impl(&dword_26629C000, v141, v231, "ShimUtilities#getShimExperience mediaEntityValue: %s", v143, 0xCu);
    v150 = v232;
    __swift_destroy_boxed_opaque_existential_1Tm(v232);
    v105 = v243;
    MEMORY[0x266784AD0](v150, -1, -1);
    MEMORY[0x266784AD0](v149, -1, -1);
  }

  else
  {

    v147 = *(v135 + 8);
    v147(v140, v139);
  }

  v155 = v208;
  (v244)(v132, v208);
  v156 = v139;
  v157 = sub_2664DFF98();
  v158 = v224;
  if (!*(v157 + 16) || (v159 = sub_2662A3E98(0x6E65697265707865, 0xEE00656C69466563), (v160 & 1) == 0))
  {
    v178 = v247;

    v179 = v218;
    v249(v218, v248, v155);
    v180 = sub_2664DFE18();
    v181 = sub_2664E06D8();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&dword_26629C000, v180, v181, "ShimUtilities#getShimExperience experienceFile property not found", v182, 2u);
      MEMORY[0x266784AD0](v182, -1, -1);
    }

    (v244)(v179, v155);
    v147(v235, v156);
    v178(v241, v105);
LABEL_43:
    v183 = type metadata accessor for ShimExperience(0);
    return (*(*(v183 - 8) + 56))(v246, 1, 1, v183);
  }

  v232 = v147;
  v161 = v221;
  v162 = v245;
  (v245)(v221, *(v157 + 56) + *(v242 + 72) * v159, v105);

  v249(v158, v248, v155);
  v163 = v214;
  v162(v214, v161, v105);
  v164 = v158;
  v165 = sub_2664DFE18();
  v166 = sub_2664E06C8();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v252 = v168;
    *v167 = 136315138;
    v162(v227, v163, v243);
    v169 = sub_2664E0318();
    v171 = v170;
    v172 = v163;
    v173 = v247;
    (v247)(v172, v243);
    v174 = sub_2662A320C(v169, v171, &v252);
    v155 = v208;

    *(v167 + 4) = v174;
    v175 = v225;
    _os_log_impl(&dword_26629C000, v165, v166, "ShimUtilities#getShimExperience experienceFile: %s", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v168);
    v176 = v168;
    v105 = v243;
    MEMORY[0x266784AD0](v176, -1, -1);
    MEMORY[0x266784AD0](v167, -1, -1);

    (v244)(v224, v155);
    v177 = v234;
  }

  else
  {

    v184 = v163;
    v173 = v247;
    (v247)(v184, v105);
    (v244)(v164, v155);
    v177 = v234;
    v175 = v225;
  }

  v185 = v215;
  v162(v215, v221, v105);
  v186 = (v239)(v185, v105);
  if (v186 == v238)
  {
    v247 = v173;
    (v236)(v185, v105);
    v187 = swift_projectBox();
    v188 = v233;
    v189 = v212;
    (*(v233 + 16))(v212, v187, v177);
    v190 = (*(v188 + 88))(v189, v177);
    v191 = v246;
    if (v190 == *MEMORY[0x277D72998])
    {
      v192 = v105;
      (*(v188 + 96))(v189, v177);
      v193 = v219;
      v194 = v211;
      v195 = v220;
      (*(v219 + 32))(v211, v189, v220);

      sub_26641499C(v191);
      (*(v193 + 8))(v194, v195);
      v196 = v105;
      v197 = v247;
      (v247)(v221, v196);
      (v232)(v235, v175);
      return v197(v241, v192);
    }

    (*(v188 + 8))(v189, v177);
  }

  else
  {
    (v173)(v185, v105);
    v191 = v246;
  }

  v198 = v213;
  v249(v213, v248, v155);
  v199 = sub_2664DFE18();
  v200 = sub_2664E06D8();
  v201 = os_log_type_enabled(v199, v200);
  v202 = v244;
  if (v201)
  {
    v203 = swift_slowAlloc();
    *v203 = 0;
    _os_log_impl(&dword_26629C000, v199, v200, "ShimUtilities#getShimExperience unable to extract fileValue", v203, 2u);
    MEMORY[0x266784AD0](v203, -1, -1);
  }

  v202(v198, v155);
  v204 = v243;
  v205 = v247;
  (v247)(v221, v243);
  (v232)(v235, v175);
  v205(v241, v204);
  v206 = type metadata accessor for ShimExperience(0);
  return (*(*(v206 - 8) + 56))(v191, 1, 1, v206);
}

uint64_t sub_26641499C@<X0>(void *a1@<X8>)
{
  v142 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v1 = MEMORY[0x28223BE20](v130);
  v3 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v129 = &v125 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v134 = &v125 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v137 = &v125 - v9;
  MEMORY[0x28223BE20](v8);
  v133 = &v125 - v10;
  v138 = sub_2664DE268();
  v11 = *(v138 - 8);
  v12 = MEMORY[0x28223BE20](v138);
  v131 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v125 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v143 = (&v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v125 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v136 = &v125 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v140 = &v125 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v125 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v125 - v28;
  v30 = sub_2664DFFD8();
  v31 = [v30 data];

  v32 = sub_2664DE2F8();
  v34 = v33;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v36 = *(v16 + 16);
  v145 = v16 + 16;
  v146 = v35;
  v144 = v36;
  v36(v29, v35, v15);
  sub_2663C50C4(v32, v34);
  v37 = sub_2664DFE18();
  v38 = v29;
  v39 = sub_2664E06C8();
  sub_266348774(v32, v34);
  v40 = os_log_type_enabled(v37, v39);
  v141 = v11;
  v135 = v3;
  v132 = v21;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v127 = v38;
    v42 = v41;
    v43 = swift_slowAlloc();
    v152 = v43;
    *v42 = 136315138;
    sub_2663C50C4(v32, v34);
    v44 = sub_2664DE298();
    v45 = v15;
    v46 = v16;
    v48 = v47;
    sub_266348774(v32, v34);
    v49 = sub_2662A320C(v44, v48, &v152);
    v50 = v46;
    v15 = v45;

    *(v42 + 4) = v49;
    _os_log_impl(&dword_26629C000, v37, v39, "ShimUtilities#getShimExperience fileData: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);

    v51 = *(v50 + 8);
    v51(v127, v45);
  }

  else
  {

    v51 = *(v16 + 8);
    v51(v38, v15);
  }

  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2664E34E0;
  *(v52 + 32) = sub_2662C1744(0, &qword_280073618, 0x277CBEAC0);
  *(v52 + 40) = sub_2662C1744(0, &qword_280073700, 0x277CBEBC0);
  sub_2664E0728();
  v127 = v32;

  v53 = v139;
  v144(v139, v146, v15);
  sub_2662A7224(&v152, v150, &unk_280074250, &unk_2664E3680);
  v54 = sub_2664DFE18();
  v55 = sub_2664E06C8();
  v56 = os_log_type_enabled(v54, v55);
  v143 = v51;
  v126 = v34;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v149 = v58;
    *v57 = 136315138;
    sub_2662A7224(v150, &v147, &unk_280074250, &unk_2664E3680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
    v59 = sub_2664E0318();
    v61 = v60;
    sub_2662A9238(v150, &unk_280074250, &unk_2664E3680);
    v62 = sub_2662A320C(v59, v61, &v149);
    v51 = v143;

    *(v57 + 4) = v62;
    _os_log_impl(&dword_26629C000, v54, v55, "ShimUtilities#getShimExperience deserializedShimExperienceDictionary: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    v63 = v139;
  }

  else
  {

    sub_2662A9238(v150, &unk_280074250, &unk_2664E3680);
    v63 = v53;
  }

  v51(v63, v15);
  v66 = v140;
  sub_2662A7224(&v152, v150, &unk_280074250, &unk_2664E3680);
  if (v151)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    if (swift_dynamicCast())
    {
      v67 = v147;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    sub_2662A9238(v150, &unk_280074250, &unk_2664E3680);
    v67 = 0;
  }

  v144(v66, v146, v15);

  v68 = sub_2664DFE18();
  v69 = sub_2664E06C8();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v150[0] = v71;
    *v70 = 136315138;
    v147 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
    v72 = sub_2664E0318();
    v74 = sub_2662A320C(v72, v73, v150);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_26629C000, v68, v69, "ShimUtilities#getShimExperience shimExperienceDictionary: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x266784AD0](v71, -1, -1);
    MEMORY[0x266784AD0](v70, -1, -1);

    v51(v140, v15);
  }

  else
  {

    v51(v66, v15);
  }

  v75 = v127;
  v76 = v138;
  v77 = v141;
  if (v67)
  {
    if (*(v67 + 16))
    {
      v78 = sub_2662A3E98(0x6E65697265707865, 0xEE00617461446563);
      v79 = 0xF000000000000000;
      if (v80)
      {
        sub_2662A01E8(*(v67 + 56) + 32 * v78, v150);
        v81 = swift_dynamicCast();
        if (v81)
        {
          v82 = v147;
        }

        else
        {
          v82 = 0;
        }

        if (v81)
        {
          v79 = v148;
        }
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      v82 = 0;
      v79 = 0xF000000000000000;
    }

    v83 = _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(v82, v79);
    sub_2662B79A8(v82, v79);
    if (v83)
    {
      if (*(v67 + 16))
      {
        v84 = sub_2662A3E98(0x7365526F69647561, 0xEC00000073746C75);
        v85 = 0xF000000000000000;
        if (v86)
        {
          sub_2662A01E8(*(v67 + 56) + 32 * v84, v150);
          v87 = swift_dynamicCast();
          if (v87)
          {
            v88 = v147;
          }

          else
          {
            v88 = 0;
          }

          if (v87)
          {
            v85 = v148;
          }
        }

        else
        {
          v88 = 0;
        }
      }

      else
      {
        v88 = 0;
        v85 = 0xF000000000000000;
      }

      v89 = sub_266416554(v88, v85);
      sub_2662B79A8(v88, v85);
      if (v89)
      {
        sub_2662A9238(&v152, &unk_280074250, &unk_2664E3680);
        sub_266348774(v75, v126);

        v90 = v142;
        *v142 = v83;
        v90[1] = v89;
        v91 = type metadata accessor for ShimExperience(0);
        swift_storeEnumTagMultiPayload();
        v92 = *(*(v91 - 8) + 56);
        v93 = v90;
        return v92(v93, 0, 1, v91);
      }
    }

    if (*(v67 + 16) && (v94 = sub_2662A3E98(7107189, 0xE300000000000000), (v95 & 1) != 0))
    {
      sub_2662A01E8(*(v67 + 56) + 32 * v94, v150);

      v96 = v133;
      v97 = swift_dynamicCast();
      v77 = v141;
      (*(v141 + 56))(v96, v97 ^ 1u, 1, v76);
      if ((*(v77 + 48))(v96, 1, v76) != 1)
      {
        sub_2662A9238(&v152, &unk_280074250, &unk_2664E3680);
        sub_266348774(v75, v126);
        v98 = *(v77 + 32);
        v99 = v128;
        v98(v128, v96, v76);
        v100 = v142;
        v98(v142, v99, v76);
        v91 = type metadata accessor for ShimExperience(0);
        swift_storeEnumTagMultiPayload();
        v92 = *(*(v91 - 8) + 56);
        v93 = v100;
        return v92(v93, 0, 1, v91);
      }
    }

    else
    {

      v77 = v141;
      v96 = v133;
      (*(v141 + 56))(v133, 1, 1, v76);
    }

    sub_2662A9238(v96, &qword_280072BC0, &qword_2664E6030);
  }

  sub_2662A7224(&v152, v150, &unk_280074250, &unk_2664E3680);
  if (v151)
  {
    v101 = v137;
    v102 = swift_dynamicCast();
    (*(v77 + 56))(v101, v102 ^ 1u, 1, v76);
  }

  else
  {
    sub_2662A9238(v150, &unk_280074250, &unk_2664E3680);
    v101 = v137;
    (*(v77 + 56))(v137, 1, 1, v76);
  }

  v103 = v134;
  v104 = v136;
  v144(v136, v146, v15);
  sub_2662A7224(v101, v103, &qword_280072BC0, &qword_2664E6030);
  v105 = sub_2664DFE18();
  v106 = sub_2664E06C8();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v150[0] = v108;
    *v107 = 136315138;
    sub_2662A7224(v103, v129, &qword_280072BC0, &qword_2664E6030);
    v109 = sub_2664E0318();
    v111 = v110;
    sub_2662A9238(v103, &qword_280072BC0, &qword_2664E6030);
    v101 = v137;
    v112 = sub_2662A320C(v109, v111, v150);
    v76 = v138;
    v75 = v127;

    *(v107 + 4) = v112;
    _os_log_impl(&dword_26629C000, v105, v106, "ShimUtilities#getShimExperience shimExperienceURL: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    MEMORY[0x266784AD0](v108, -1, -1);
    v113 = v107;
    v77 = v141;
    MEMORY[0x266784AD0](v113, -1, -1);

    v114 = v136;
  }

  else
  {

    sub_2662A9238(v103, &qword_280072BC0, &qword_2664E6030);
    v114 = v104;
  }

  v143(v114, v15);
  sub_2662A9238(&v152, &unk_280074250, &unk_2664E3680);
  v115 = v126;
  v116 = v135;
  sub_2662A7224(v101, v135, &qword_280072BC0, &qword_2664E6030);
  if ((*(v77 + 48))(v116, 1, v76) == 1)
  {
    sub_2662A9238(v116, &qword_280072BC0, &qword_2664E6030);
    sub_2662A9238(v101, &qword_280072BC0, &qword_2664E6030);
    v117 = v132;
    v144(v132, v146, v15);
    v118 = sub_2664DFE18();
    v119 = sub_2664E06D8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_26629C000, v118, v119, "ShimUtilities#getShimExperience unable to extract ShimExperience", v120, 2u);
      MEMORY[0x266784AD0](v120, -1, -1);

      sub_266348774(v75, v115);
    }

    else
    {
      sub_266348774(v75, v115);
    }

    v143(v117, v15);
    v64 = type metadata accessor for ShimExperience(0);
    return (*(*(v64 - 8) + 56))(v142, 1, 1, v64);
  }

  else
  {
    sub_266348774(v75, v115);
    v121 = *(v77 + 32);
    v122 = v131;
    v121(v131, v116, v76);
    v123 = v142;
    v121(v142, v122, v76);
    v124 = type metadata accessor for ShimExperience(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    return sub_2662A9238(v101, &qword_280072BC0, &qword_2664E6030);
  }
}

id _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  result = 0;
  if (a2 >> 60 == 15)
  {
    return result;
  }

  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2664E34E0;
  *(v13 + 32) = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
  *(v13 + 40) = sub_2664DFCD8();
  sub_2663C50C4(a1, a2);
  sub_2664E0728();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v15 = *(v5 + 16);
  v43 = v14;
  v40 = v15;
  v15(v11, v14, v4);
  sub_2662A7224(v47, v46, &unk_280074250, &unk_2664E3680);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  v18 = os_log_type_enabled(v16, v17);
  v41 = a1;
  v42 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v39[1] = v5 + 16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136315138;
    sub_2662A7224(v46, v44, &unk_280074250, &unk_2664E3680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
    v22 = sub_2664E0318();
    v24 = v23;
    sub_2662A9238(v46, &unk_280074250, &unk_2664E3680);
    v25 = sub_2662A320C(v22, v24, &v45);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26629C000, v16, v17, "ShimUtilities audioExperience uncast %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v26 = v21;
    v5 = v42;
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  else
  {

    sub_2662A9238(v46, &unk_280074250, &unk_2664E3680);
  }

  v27 = *(v5 + 8);
  v27(v11, v4);
  sub_2662A7224(v47, v46, &unk_280074250, &unk_2664E3680);
  if (v46[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073718, &unk_2664EC228);
    if (swift_dynamicCast())
    {
      v28 = v44[0];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    sub_2662A9238(v46, &unk_280074250, &unk_2664E3680);
    v28 = 0;
  }

  v40(v9, v43, v4);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46[0] = v32;
    *v31 = 136315138;
    v44[0] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073710, &qword_2664EC220);
    v33 = sub_2664E0318();
    v43 = v27;
    v35 = sub_2662A320C(v33, v34, v46);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_26629C000, v29, v30, "ShimUtilities audioExperience %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);

    v43(v9, v4);
    v36 = v41;
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_23:
    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
    sub_2662B79A8(v36, a2);
    return 0;
  }

  v27(v9, v4);
  v36 = v41;
  if (!v28)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v28 >> 62)
  {
    result = sub_2664E0A68();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:
    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
    sub_2662B79A8(v36, a2);

    return 0;
  }

LABEL_18:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x266783B70](0, v28);
    goto LABEL_21;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v28 + 32);
LABEL_21:
    v38 = v37;
    sub_2662B79A8(v36, a2);

    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t sub_266416554(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v35[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-v10];
  v12 = 0;
  if (a2 >> 60 != 15)
  {
    sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2664E34E0;
    *(v13 + 32) = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
    *(v13 + 40) = sub_2664DFCA8();
    sub_2663C50C4(a1, a2);
    sub_2664E0728();

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v15 = *(v5 + 16);
    v41 = v14;
    v38 = v15;
    v39 = (v5 + 16);
    v15(v11, v14, v4);
    sub_2662A7224(v45, v44, &unk_280074250, &unk_2664E3680);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06C8();
    v18 = os_log_type_enabled(v16, v17);
    v40 = v5;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v19 = 136315138;
      v36 = v17;
      sub_2662A7224(v44, v42, &unk_280074250, &unk_2664E3680);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
      v20 = sub_2664E0318();
      v22 = v21;
      sub_2662A9238(v44, &unk_280074250, &unk_2664E3680);
      v23 = sub_2662A320C(v20, v22, &v43);
      v5 = v40;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_26629C000, v16, v36, "ShimUtilities AudioResult uncast %s", v19, 0xCu);
      v24 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v24, -1, -1);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    else
    {

      sub_2662A9238(v44, &unk_280074250, &unk_2664E3680);
    }

    v25 = *(v5 + 8);
    v25(v11, v4);
    sub_2662A7224(v45, v44, &unk_280074250, &unk_2664E3680);
    if (v44[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C0, &qword_2664E52B0);
      if (swift_dynamicCast())
      {
        v12 = v42[0];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      sub_2662A9238(v44, &unk_280074250, &unk_2664E3680);
      v12 = 0;
    }

    v38(v9, v41, v4);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42[0] = v12;
      v44[0] = v41;
      *v28 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073708, &unk_2664EC210);
      v29 = sub_2664E0318();
      v31 = sub_2662A320C(v29, v30, v44);
      v39 = v25;
      v32 = v31;

      *(v28 + 4) = v32;
      _os_log_impl(&dword_26629C000, v26, v27, "ShimUtilities AudioResult %s", v28, 0xCu);
      v33 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);
      sub_2662B79A8(a1, a2);

      v39(v9, v4);
    }

    else
    {
      sub_2662B79A8(a1, a2);

      v25(v9, v4);
    }

    sub_2662A9238(v45, &unk_280074250, &unk_2664E3680);
  }

  return v12;
}

uint64_t SearchItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchItem.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchItem.album.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SearchItem.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SearchItem.lastUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchItem(0) + 48);

  return sub_26638119C(v3, a1);
}

uint64_t type metadata accessor for SearchItem(uint64_t a1)
{
  result = qword_280073728;
  if (!qword_280073728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchItem.genre.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 56));

  return v1;
}

uint64_t SearchItemType.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_266416F60()
{
  result = qword_280073720;
  if (!qword_280073720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073720);
  }

  return result;
}

void sub_26641703C(uint64_t a1)
{
  sub_266417140(319, &qword_2800731D8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_266417140(319, &qword_280073738, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_26630DD10(319);
      if (v3 <= 0x3F)
      {
        sub_266417140(319, &qword_280073740, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_266417140(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2664E0948();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_26641719C()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v1) = v3[0].denom;
  LODWORD(v0) = v3[0].numer;
  result = v0 / v1 / 1000000000.0;
  qword_28007CCF8 = *&result;
  return result;
}

Swift::Double __swiftcall UInt64.toSeconds()()
{
  if (qword_280071C28 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return *&qword_28007CCF8 * v0;
}

uint64_t sub_2664172BC(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a4;
  v25 = a3;
  v23 = a1;
  v24 = a2;
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E0858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E34E0;
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v20;
  *(v18 + 32) = a7;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = a8;
  sub_2664DFDF8();
  v22 = a6;
  sub_2664DFDC8(v17, &dword_26629C000, a9, v23, v24, v25, v16, v26, a5, v22, v18);

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_266417450(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = a4;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_2664174DC(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_266417780(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_266417780(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t static SharedContextProvider.shared.getter(uint64_t a1)
{
  type metadata accessor for SharedContextProvider();

  return swift_initStaticObject();
}

uint64_t sub_266417F60(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v38 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = sub_2664DFE08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = a2;
    v16 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v17 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D83B88];
    *(v18 + 16) = xmmword_2664E36F0;
    v20 = MEMORY[0x277D83C10];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = 0;
    sub_2664DFDF8();
    sub_2664DFDC8(v16, &dword_26629C000, v17, "fetchDeviceContextsStatus", 25, 2, v15, "status=%d enableTelemetry=YES", 29);

    (*(v13 + 8))(v15, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v11, v21, v5);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    v24 = os_log_type_enabled(v22, v23);
    a2 = v37;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      if (a1 >> 62)
      {
        v26 = sub_2664E0A68();
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v26;

      _os_log_impl(&dword_26629C000, v22, v23, "SharedContextProvider#fetchDeviceContexts Got media context for %ld devices...", v25, 0xCu);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v28 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2664E36F0;
    v30 = MEMORY[0x277D83C10];
    *(v29 + 56) = MEMORY[0x277D83B88];
    *(v29 + 64) = v30;
    *(v29 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8(v27, &dword_26629C000, v28, "fetchDeviceContextsStatus", 25, 2, v15, "status=%d enableTelemetry=YES", 29);

    (*(v13 + 8))(v15, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v31, v5);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "SharedContextProvider#fetchDeviceContexts Got nil context array, returning nil...", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    a1 = 0;
    v11 = v9;
  }

  (*(v6 + 8))(v11, v5);
  return a2(a1);
}

void sub_266418514(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v40 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_2664DFE08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v28 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v29 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2664E36F0;
    v31 = MEMORY[0x277D83C10];
    *(v30 + 56) = MEMORY[0x277D83B88];
    *(v30 + 64) = v31;
    *(v30 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8(v28, &dword_26629C000, v29, "fetchPrimaryDeviceContextStatus", 31, 2, v15, "status=%d enableTelemetry=YES", 29);

    (*(v13 + 8))(v15, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v32, v5);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "SharedContextProvider#fetchPrimaryDeviceContext Got nil context array, returning nil...", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    a2(0);
    return;
  }

  v39 = a2;
  v16 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  *(v18 + 16) = xmmword_2664E36F0;
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = 0;
  sub_2664DFDF8();
  sub_2664DFDC8(v16, &dword_26629C000, v17, "fetchPrimaryDeviceContextStatus", 31, 2, v15, "status=%d enableTelemetry=YES", 29);

  (*(v13 + 8))(v15, v12);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v11, v21, v5);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  v24 = a1 >> 62;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = v39;
    if (v24)
    {
      v27 = sub_2664E0A68();
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 4) = v27;

    _os_log_impl(&dword_26629C000, v22, v23, "SharedContextProvider#fetchPrimaryDeviceContext Got media context for %ld devices...", v25, 0xCu);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  else
  {

    v26 = v39;
  }

  (*(v6 + 8))(v11, v5);
  if (v24)
  {
    if (sub_2664E0A68() == 1 && sub_2664E0A68())
    {
      goto LABEL_20;
    }

LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x266783B70](0, a1);
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(a1 + 32);
LABEL_23:
    v37 = v36;
LABEL_27:
    v26(v37);

    return;
  }

  __break(1u);
}

uint64_t sub_266418B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v27 = v4;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "fetchPrimaryDeviceContext";
  *(v16 + 24) = 25;
  v26 = v10;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662DBE30;
  v17[1] = v11;

  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v13, "fetchPrimaryDeviceContext", 25, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266419430;
  *(v19 + 24) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_266419434;
  *(v20 + 24) = v19;

  sub_2664DFA78();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v22;
  sub_2662C3A68(inited);
  swift_setDeallocating();
  sub_2662C1834(inited + 32);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26641942C;
  *(v23 + 24) = v20;
  sub_2664DFB68();

  (*(v5 + 8))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_266418F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v27 = v4;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "fetchDeviceContexts";
  *(v16 + 24) = 19;
  v26 = v10;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662BD02C;
  v17[1] = v11;

  v18 = sub_2664E0848();
  sub_2664DFDC8(v18, &dword_26629C000, v13, "fetchDeviceContexts", 19, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266419380;
  *(v19 + 24) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_266419420;
  *(v20 + 24) = v19;

  sub_2664DFA78();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v22;
  sub_2662C3A68(inited);
  swift_setDeallocating();
  sub_2662C1834(inited + 32);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2662C0CAC;
  *(v23 + 24) = v20;
  sub_2664DFB68();

  (*(v5 + 8))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_266419384(uint64_t *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  return sub_2662BE26C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t OpenPodcastShowAppIntent.init(showEntity:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  swift_allocObject();
  result = sub_2664DFA28();
  *a2 = result;
  return result;
}

uint64_t SelfEmitter.__allocating_init(rawSignalResult:)(_OWORD *a1)
{
  v1 = a1[1];
  v2 = [objc_opt_self() sharedAnalytics];
  v3 = [v2 defaultMessageStream];

  type metadata accessor for SelfEmitter();
  v4 = swift_allocObject();
  sub_2664195B0(&v6, v3);
  return v4;
}

void *sub_2664195B0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = v60 - v10;
  v11 = sub_2664DEC48();
  v69 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v67 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = v60 - v15;
  MEMORY[0x28223BE20](v14);
  v66 = v60 - v16;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v2[7] = a2;
  v2[2] = v18;
  v2[3] = v17;
  v2[4] = v19;
  v2[5] = v20;
  v21 = *(v18 + 16);
  v71 = a2;
  if (v21)
  {
    v61 = v11;
    v62 = v8;
    v63 = v3;
    v22 = sub_26640C820(v21, 0);
    v65 = sub_26640C9BC(v76, v22 + 4, v21, v18);
    v23 = v76[0];
    v64 = v76[4];
    v24 = a2;
    swift_bridgeObjectRetain_n();
    v60[1] = v17;

    result = sub_2662B793C(v23);
    if (v65 != v21)
    {
      __break(1u);
      return result;
    }

    v3 = v63;
    v26 = v63[3];
    v8 = v62;
    v11 = v61;
  }

  else
  {
    v27 = a2;

    v22 = MEMORY[0x277D84F90];
    v26 = v17;
  }

  v3[6] = v22;

  v28 = sub_2662C2A48(v22, v26);

  v75 = v28;

  v30 = sub_2662C2A48(v29, v19);

  v32 = sub_2662C2A48(v31, v20);

  if (*(v30 + 16) && (v33 = sub_2662A3E98(0xD000000000000010, 0x80000002664F1190), (v34 & 1) != 0))
  {
    v35 = v69;
    v36 = v66;
    (*(v69 + 16))(v66, *(v30 + 56) + *(v69 + 72) * v33, v11);

    v37 = v68;
    (*(v35 + 32))(v68, v36, v11);
    v38 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v38;
    sub_26634F030(v37, 0xD000000000000015, 0x80000002664F8760, isUniquelyReferenced_nonNull_native);
    v75 = v76[0];
    v40 = v72;
    v41 = v70;
  }

  else
  {

    v41 = v70;
    sub_266407A90(0xD000000000000015, 0x80000002664F8760, v70);
    sub_2662A9238(v41, &qword_2800729C8, &unk_2664E52E0);
    v40 = v72;
  }

  if (*(v32 + 16) && (v42 = sub_2662A3E98(0xD000000000000010, 0x80000002664F1190), (v43 & 1) != 0))
  {
    v44 = v69;
    v45 = v67;
    (*(v69 + 16))(v67, *(v32 + 56) + *(v69 + 72) * v42, v11);

    v46 = v68;
    (*(v44 + 32))(v68, v45, v11);
    v47 = v75;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v47;
    sub_26634F030(v46, 0xD000000000000015, 0x80000002664F8780, v48);
    v75 = v76[0];
  }

  else
  {

    sub_266407A90(0xD000000000000015, 0x80000002664F8780, v41);
    sub_2662A9238(v41, &qword_2800729C8, &unk_2664E52E0);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v49 = v73;
  v50 = __swift_project_value_buffer(v73, qword_280F914F0);
  swift_beginAccess();
  (*(v40 + 16))(v8, v50, v49);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06E8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v74[0] = v54;
    *v53 = 136315138;
    swift_beginAccess();

    v55 = sub_2664E01D8();
    v56 = v8;
    v58 = v57;

    v59 = sub_2662A320C(v55, v58, v74);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_26629C000, v51, v52, "SelfEmitter#init signalValues: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    (*(v40 + 8))(v56, v73);
  }

  else
  {

    (*(v40 + 8))(v8, v73);
  }

  swift_beginAccess();
  v3[8] = v75;
  return v3;
}

uint64_t sub_266419D38@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = sub_2664DE438();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v78 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = sub_2664DE4A8();
  v80 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = *a1;
  sub_2664DE498();
  v79 = v21;
  v23 = sub_2664202CC();
  if (!v23)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = v7;
    v45 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v46 = v78;
    (*(v78 + 16))(v10, v45, v44);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    v49 = os_log_type_enabled(v47, v48);
    v27 = v80;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "SelfEmitter#emitTrainingRecord: Failed to create SELF message", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v46 + 8))(v10, v44);
    (*(v27 + 8))(v79, v16);
    goto LABEL_17;
  }

  v24 = v23;
  v83[0] = v22;
  v25 = sub_26641BDFC(v83);
  if (!v25)
  {
    v51 = v79;
    v27 = v80;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = v7;
    v53 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v54 = v78;
    (*(v78 + 16))(v13, v53, v52);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06D8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "SelfEmitter#emitTrainingRecord: Failed to create SELF training record message", v57, 2u);
      v58 = v57;
      v51 = v79;
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    (*(v54 + 8))(v13, v52);
    (*(v27 + 8))(v51, v16);
LABEL_17:
    v59 = 1;
    return (*(v27 + 56))(v81, v59, 1, v16);
  }

  v73 = v25;
  v74 = v3;
  [v24 setMusicAppSelectionGroundTruthGenerated_];
  v26 = v79;
  v27 = v80;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = v7;
  v29 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v30 = v78;
  (*(v78 + 16))(v15, v29, v28);
  (*(v27 + 16))(v19, v26, v16);
  v31 = sub_2664DFE18();
  v32 = v16;
  v33 = sub_2664E06C8();
  if (os_log_type_enabled(v31, v33))
  {
    v34 = swift_slowAlloc();
    v72 = v24;
    v35 = v34;
    v36 = swift_slowAlloc();
    v82 = v36;
    *v35 = 136315138;
    sub_2663EF71C();
    v71 = v28;
    v37 = v32;
    v38 = sub_2664E0D48();
    v40 = v39;
    (*(v80 + 8))(v19, v37);
    v41 = sub_2662A320C(v38, v40, &v82);
    v27 = v80;

    *(v35 + 4) = v41;
    _os_log_impl(&dword_26629C000, v31, v33, "SelfEmitter#emitTrainingRecord: Emitting message with UUID %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v42 = v36;
    v26 = v79;
    MEMORY[0x266784AD0](v42, -1, -1);
    v43 = v35;
    v24 = v72;
    MEMORY[0x266784AD0](v43, -1, -1);

    (*(v30 + 8))(v15, v71);
    v16 = v37;
  }

  else
  {

    (*(v27 + 8))(v19, v32);
    (*(v30 + 8))(v15, v28);
    v16 = v32;
  }

  v60 = *(v74 + 56);
  v61 = sub_2664DE478();
  [v60 emitMessage:v24 isolatedStreamUUID:v61];

  v62 = v75;
  sub_2664DE428();
  v63 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v64 = sub_2664E02A8();
  v65 = [v63 initWithSuiteName_];

  if (v65)
  {
    sub_2664DE3E8();
    v67 = v66;
    v68 = sub_2664E02A8();
    [v65 setDouble:v68 forKey:v67];

    (*(v76 + 8))(v62, v77);
  }

  else
  {
    (*(v76 + 8))(v62, v77);
  }

  (*(v27 + 32))(v81, v26, v16);
  v59 = 0;
  return (*(v27 + 56))(v81, v59, 1, v16);
}

uint64_t sub_26641A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v82 = a3;
  v88 = a4;
  v8 = sub_2664DFE38();
  v86 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v76[-v13];
  MEMORY[0x28223BE20](v12);
  v81 = &v76[-v15];
  v16 = sub_2664DE4A8();
  v87 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v76[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v76[-v23];
  sub_2664DE498();
  v25 = sub_2664202CC();
  if (!v25)
  {
    goto LABEL_12;
  }

  v84 = v16;
  v85 = v25;
  v26 = *(*(v5 + 48) + 16);
  v27 = sub_26641ED4C(a1, a2);
  if (v27 == 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27 & 1 | ((v27 > 0xFFu) << 8);
  }

  sub_2664DEF78();
  swift_allocObject();
  sub_2664DEF68();
  v29 = sub_2664DEF48();
  v83 = v5;
  v30 = v29;

  v31 = sub_26641F190(v26, v28, v30);
  if (!v31)
  {

    v16 = v84;
LABEL_12:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v8;
    v56 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v57 = v86;
    (*(v86 + 16))(v11, v56, v55);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    v60 = os_log_type_enabled(v58, v59);
    v35 = v87;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SelfEmitter#emitAndLinkEvaluationRecord: Unable to build evaluation message; not sending", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    (*(v57 + 8))(v11, v55);
    goto LABEL_17;
  }

  v32 = v85;
  v80 = v31;
  [v85 setAbModelEvaluated_];
  v33 = v82;
  v34 = sub_2664204CC();
  v16 = v84;
  if (!v34)
  {
    v35 = v87;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v63 = v8;
    v64 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v65 = v86;
    (*(v86 + 16))(v14, v64, v63);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "SelfEmitter#emitAndLinkEvaluationRecord: Unable to build link message; not sending link or evaluation messages", v68, 2u);
      v69 = v68;
      v32 = v85;
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    (*(v65 + 8))(v14, v63);
LABEL_17:
    (*(v35 + 8))(v24, v16);
    v62 = 1;
    return (*(v35 + 56))(v88, v62, 1, v16);
  }

  v79 = v34;
  v35 = v87;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = v8;
  v37 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v38 = v86;
  v39 = *(v86 + 16);
  v40 = v81;
  v78 = v36;
  v39(v81, v37, v36);
  v41 = *(v35 + 16);
  v41(v22, v24, v16);
  v41(v19, v33, v16);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v89 = v82;
    *v44 = 136315394;
    sub_2663EF71C();
    v77 = v43;
    v45 = sub_2664E0D48();
    v47 = v46;
    v48 = *(v35 + 8);
    v48(v22, v84);
    v49 = sub_2662A320C(v45, v47, &v89);
    v16 = v84;

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = sub_2664E0D48();
    v52 = v51;
    v48(v19, v16);
    v35 = v87;
    v53 = sub_2662A320C(v50, v52, &v89);

    *(v44 + 14) = v53;
    _os_log_impl(&dword_26629C000, v42, v77, "SelfEmitter#emitAndLinkEvaluationMessage: Emitting message with UUID %s and linking to %s", v44, 0x16u);
    v54 = v82;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);

    (*(v86 + 8))(v81, v78);
  }

  else
  {

    v70 = *(v35 + 8);
    v70(v19, v16);
    v70(v22, v16);
    (*(v38 + 8))(v40, v78);
  }

  v71 = *(v83 + 56);
  v72 = v85;
  [v71 emitMessage_];
  v73 = v71;
  v74 = v79;
  [v73 emitMessage_];

  (*(v35 + 32))(v88, v24, v16);
  v62 = 0;
  return (*(v35 + 56))(v88, v62, 1, v16);
}

uint64_t sub_26641AD80@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v76 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v76 - v13;
  MEMORY[0x28223BE20](v12);
  v82 = v76 - v15;
  v16 = sub_2664DE4A8();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v76 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v76 - v23;
  v25 = *a1;
  sub_2664DE498();
  v88 = v25;
  v26 = sub_2662DF128();
  if ((v26 & 0x100000000) != 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v53, v4);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06C8();
    v56 = os_log_type_enabled(v54, v55);
    v37 = v85;
    if (v56)
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = v25;
      _os_log_impl(&dword_26629C000, v54, v55, "SelfEmitter#emitAndLinkDisambiguationRecord: Couldn't map disambiguation reason %ld to SELF App Resolution type; not sending message", v57, 0xCu);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v29 = v86;
    (*(v37 + 8))(v24, v86);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = sub_2664202CC();
  v29 = v86;
  if (!v28)
  {
    goto LABEL_15;
  }

  v30 = v28;
  v31 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v31)
  {

LABEL_15:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v58, v4);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    v61 = os_log_type_enabled(v59, v60);
    v37 = v85;
    if (v61)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "SelfEmitter#emitAndLinkDisambiguationRecord: Unable to build disambiguation message; not sending", v62, 2u);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_20;
  }

  v32 = v30;
  v33 = v31;
  [v31 setTriggerReason_];
  [v33 setProjectIntent_];
  v80 = v32;
  [v32 setAbModelResultTriggered_];

  v34 = sub_2664204CC();
  if (!v34)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v14, v66, v4);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26629C000, v67, v68, "SelfEmitter#emitAndLinkDisambiguationRecord: Unable to build link message; not sending link or evaluation messages", v69, 2u);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
    v37 = v85;
LABEL_20:
    (*(v37 + 8))(v24, v29);
LABEL_21:
    v63 = 1;
    v64 = v84;
    return (*(v37 + 56))(v64, v63, 1, v29);
  }

  v79 = v34;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v36 = v82;
  (*(v5 + 16))(v82, v35, v4);
  v37 = v85;
  v38 = *(v85 + 16);
  v38(v22, v24, v29);
  v38(v19, v83, v29);
  v39 = sub_2664DFE18();
  v40 = sub_2664E06C8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v87 = v83;
    *v41 = 136315394;
    v76[1] = sub_2663EF71C();
    v78 = v40;
    v42 = sub_2664E0D48();
    v77 = v39;
    v44 = v43;
    v45 = *(v37 + 8);
    v45(v22, v86);
    v46 = sub_2662A320C(v42, v44, &v87);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = sub_2664E0D48();
    v49 = v48;
    v45(v19, v86);
    v37 = v85;
    v29 = v86;
    v50 = sub_2662A320C(v47, v49, &v87);

    *(v41 + 14) = v50;
    v51 = v77;
    _os_log_impl(&dword_26629C000, v77, v78, "SelfEmitter#emitAndLinkDisambiguationRecord: Emitting message with UUID %s and linking to %s", v41, 0x16u);
    v52 = v83;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    (*(v5 + 8))(v82, v4);
  }

  else
  {

    v70 = *(v37 + 8);
    v70(v19, v29);
    v70(v22, v29);
    (*(v5 + 8))(v36, v4);
  }

  v71 = v80;
  v72 = *(v81 + 56);
  [v72 emitMessage_];
  v73 = v72;
  v74 = v79;
  [v73 emitMessage_];

  v75 = v84;
  (*(v37 + 32))(v84, v24, v29);
  v64 = v75;
  v63 = 0;
  return (*(v37 + 56))(v64, v63, 1, v29);
}

uint64_t sub_26641B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = sub_2664DFE38();
  v4 = *(v76 - 8);
  v5 = MEMORY[0x28223BE20](v76);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v66 - v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v66 - v11;
  v74 = sub_2664DE4A8();
  v12 = *(v74 - 8);
  v13 = MEMORY[0x28223BE20](v74);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  sub_2664DE498();
  v75 = sub_2664202CC();
  if (!v75)
  {
    goto LABEL_9;
  }

  v73 = v4;
  v21 = a1;
  v22 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v22)
  {

    v4 = v73;
LABEL_9:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = v76;
    v46 = __swift_project_value_buffer(v76, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v46, v45);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v74;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "SelfEmitter#emitAndLinkDirectExecuteMessage: Unable to build result trigger reason message; not sending", v51, 2u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    (*(v4 + 8))(v7, v45);
    goto LABEL_14;
  }

  v23 = v22;
  [v22 setTriggerReason_];
  [v23 setProjectIntent_];
  [v75 setAbModelResultTriggered_];

  v24 = sub_2664204CC();
  if (!v24)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = v76;
    v54 = __swift_project_value_buffer(v76, qword_280F914F0);
    swift_beginAccess();
    v55 = v73;
    (*(v73 + 16))(v10, v54, v53);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06D8();
    v58 = os_log_type_enabled(v56, v57);
    v50 = v74;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v56, v57, "SelfEmitter#emitAndLinkDirectExecuteMessage: Unable to build link message; not sending link or evaluation messages", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    (*(v55 + 8))(v10, v53);
LABEL_14:
    (*(v12 + 8))(v20, v50);
    v52 = 1;
    return (*(v12 + 56))(v77, v52, 1, v50);
  }

  v70 = v24;
  v71 = v2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = v76;
  v26 = __swift_project_value_buffer(v76, qword_280F914F0);
  swift_beginAccess();
  v27 = v72;
  (*(v73 + 16))(v72, v26, v25);
  v28 = *(v12 + 16);
  v29 = v74;
  v28(v18, v20, v74);
  v28(v15, v21, v29);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v67 = v32;
    v69 = swift_slowAlloc();
    v78 = v69;
    *v32 = 136315394;
    v66 = sub_2663EF71C();
    v33 = sub_2664E0D48();
    v68 = v31;
    v35 = v34;
    v36 = *(v12 + 8);
    v36(v18, v29);
    v37 = v36;
    v38 = sub_2662A320C(v33, v35, &v78);

    v39 = v67;
    *(v67 + 1) = v38;
    *(v39 + 6) = 2080;
    v40 = sub_2664E0D48();
    v42 = v41;
    v37(v15, v29);
    v43 = sub_2662A320C(v40, v42, &v78);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_26629C000, v30, v68, "SelfEmitter#emitAndLinkDirectExecuteMessage: Emitting message with UUID %s and linking to %s", v39, 0x16u);
    v44 = v69;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);

    (*(v73 + 8))(v72, v76);
  }

  else
  {

    v60 = *(v12 + 8);
    v60(v15, v29);
    v60(v18, v29);
    (*(v73 + 8))(v27, v25);
  }

  v50 = v29;
  v61 = *(v71 + 56);
  v62 = v75;
  [v61 emitMessage_];
  v63 = v61;
  v64 = v70;
  [v63 emitMessage_];

  (*(v12 + 32))(v77, v20, v29);
  v52 = 0;
  return (*(v12 + 56))(v77, v52, 1, v50);
}

void *sub_26641BDFC(char *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  v9 = *a1;
  v10 = [objc_allocWithZone(MEMORY[0x277D582D8]) init];
  if (v10)
  {
    v11 = v10;
    v38[0] = v9;
    v12 = sub_26641DF94(v38);
    if (v12)
    {
      v13 = v12;
      v14 = v12;
      [v11 setInferenceMusicTrainingIndependentSignals_];
      sub_26641C250();
      v15 = sub_2662C1744(0, &qword_280073750, 0x277D582E0);
      v16 = sub_2664E0488();

      [v11 setInferenceMusicTrainingDependentSignals_];

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v2, qword_280F914F0);
      swift_beginAccess();
      (*(v3 + 16))(v8, v17, v2);
      v18 = v11;
      v19 = sub_2664DFE18();
      v20 = sub_2664E06C8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v36[1] = v15;
        v22 = v21;
        v23 = swift_slowAlloc();
        v37 = v14;
        v24 = v13;
        v25 = v23;
        *v22 = 138412290;
        *(v22 + 4) = v18;
        *v23 = v11;
        v26 = v18;
        _os_log_impl(&dword_26629C000, v19, v20, "SelfEmitter#trainingRecord: Sending SELF training record: %@", v22, 0xCu);
        sub_2662A9238(v25, &qword_2800734B0, &unk_2664E3670);
        v27 = v25;
        v13 = v24;
        v14 = v37;
        MEMORY[0x266784AD0](v27, -1, -1);
        MEMORY[0x266784AD0](v22, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
      v28 = [v18 inferenceMusicTrainingDependentSignals];
      if (v28)
      {
        v29 = v28;
        v30 = sub_2664E04A8();
      }

      else
      {
        v30 = 0;
      }

      sub_2663EE1D8(v13, v30);

      return v11;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v31, v2);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v32, v33, "SelfEmitter#trainingRecord: Failed to generate SELF training record", v34, 2u);
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_26641C250()
{
  result = sub_26641EAA0();
  v15 = result;
  v2 = 0;
  v3 = *(v0 + 48);
  v14 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  v13 = v3 + 40;
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (1)
  {
    if (v4 == v2)
    {

      return v14;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    ++v2;
    v7 = v6 + 2;
    v9 = *v6;
    v16[0] = *(v6 - 1);
    v8 = v16[0];
    v16[1] = v9;
    MEMORY[0x28223BE20](result);
    v12[2] = v16;

    v10 = sub_2662AA720(sub_2662AA7CC, v12, v15);
    v11 = sub_26641C3D8(v8, v9, v10 & 1);

    v6 = v7;
    if (v11)
    {
      MEMORY[0x266783490](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2664E04C8();
      }

      result = sub_2664E0518();
      v14 = v17;
      v5 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_26641C3D8(uint64_t a1, unint64_t a2, int a3)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D582E0]) init];
  if (v11)
  {
    v12 = v11;
    v13 = *(v3 + 64);
    v214 = a3;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v14 = sub_2664E08F8();
    v15 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1110, a1, a2, v14, v13);

    v16 = [v15 integerValue];
    [v12 setIsClientForegroundActiveBundle_];
    v17 = sub_2664E08F8();
    v18 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F0EF0, a1, a2, v17, v13);

    [v18 doubleValue];
    v20 = v19;

    [v12 setCompoundActiveBundleScore_];
    v21 = sub_2664E08F8();
    v22 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F0F10, a1, a2, v21, v13);

    [v22 doubleValue];
    v24 = v23;

    [v12 setCompoundMediaTypeBundleScore_];
    v25 = sub_2664E08F8();
    v26 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F1510, a1, a2, v25, v13);

    [v26 doubleValue];
    v28 = v27;

    [v12 setEntitySearchBundleRecencyS_];
    v29 = sub_2664E08F8();
    v30 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F14F0, a1, a2, v29, v13);

    [v30 doubleValue];
    v32 = v31;

    [v12 setEntitySearchBundleScore_];
    v33 = sub_2664E08F8();
    v34 = sub_2663F6EFC(0xD000000000000010, 0x80000002664F1130, a1, a2, v33, v13);

    v35 = [v34 integerValue];
    [v12 setIsForegroundBundle_];
    v36 = sub_2664E08F8();
    v37 = sub_2663F6EFC(0xD000000000000010, 0x80000002664F1190, a1, a2, v36, v13);

    v38 = [v37 integerValue];
    [v12 setIsNowPlayingBundle_];
    v39 = sub_2664E08F8();
    v40 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1290, a1, a2, v39, v13);

    v41 = [v40 intValue];
    [v12 setNowPlayingBundleCount_];
    v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v43 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F1270, a1, a2, v42, v13);

    [v43 doubleValue];
    v45 = v44;

    [v12 setNowPlayingBundleRecencyS_];
    v46 = sub_2664E08F8();
    v47 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1250, a1, a2, v46, v13);

    [v47 doubleValue];
    v49 = v48;

    [v12 setNowPlayingBundleScore_];
    v50 = sub_2664E08F8();
    v51 = sub_2663F6458(0xD000000000000014, 0x80000002664F11B0, v50, v13);

    v52 = [v51 &selRef_fallbackUsername];
    [v12 setIsNowPlayingLastBundle_];
    sub_2663F7D44(0xD000000000000013, 0x80000002664F11F0, a1, a2, -1, v13);
    [v12 setNowPlayingUsage1Day_];
    sub_2663F7D44(0xD000000000000014, 0x80000002664F1210, a1, a2, -1, v13);
    [v12 setNowPlayingUsage7Days_];
    sub_2663F7D44(0xD000000000000015, 0x80000002664F1230, a1, a2, -1, v13);
    [v12 setNowPlayingUsage14Days_];
    v56 = sub_2664E08F8();
    v57 = sub_2663F6EFC(0xD00000000000001ALL, 0x80000002664F8610, a1, a2, v56, v13);

    v58 = [v57 &selRef_fallbackUsername];
    [v12 setIsRawLastNowPlayingCoreDuet_];
    v59 = sub_2664E08F8();
    v60 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F13B0, a1, a2, v59, v13);

    v61 = [v60 &selRef_fallbackUsername];
    [v12 setIsRawMediaCategoryAudiobookSignal_];
    v62 = sub_2664E08F8();
    v63 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1310, a1, a2, v62, v13);

    v64 = [v63 &selRef_fallbackUsername];
    [v12 setIsRawMediaCategoryMusicSignal_];
    v65 = sub_2664E08F8();
    v66 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1330, a1, a2, v65, v13);

    v67 = [v66 &selRef_fallbackUsername];
    [v12 setIsRawMediaCategoryRadioSignal_];
    v68 = sub_2664E08F8();
    v69 = sub_2663F6EFC(0xD00000000000001ELL, 0x80000002664F1390, a1, a2, v68, v13);

    v70 = [v69 &selRef_fallbackUsername];
    [v12 setIsRawMediaCategoryPodcastSignal_];
    v71 = sub_2664E08F8();
    v72 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1350, a1, a2, v71, v13);

    v73 = [v72 &selRef_fallbackUsername];
    [v12 setIsRawMediaCategoryVideoSignal_];
    v74 = sub_2664E08F8();
    v75 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1460, a1, a2, v74, v13);

    v76 = [v75 intValue];
    [v12 setRawMediaTypeUsageSignalBook_];
    v77 = sub_2664E08F8();
    v78 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F1420, a1, a2, v77, v13);

    v79 = [v78 intValue];
    [v12 setRawMediaTypeUsageSignalMusic_];
    v80 = sub_2664E08F8();
    v81 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F1440, a1, a2, v80, v13);

    v82 = [v81 intValue];
    [v12 setRawMediaTypeUsageSignalPodcast_];
    v83 = sub_2664E08F8();
    v84 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F1480, a1, a2, v83, v13);

    v85 = [v84 intValue];
    [v12 setRawMediaTypeUsageSignalVideo_];
    v86 = sub_2664E08F8();
    v87 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F8630, a1, a2, v86, v13);

    v88 = [v87 intValue];
    [v12 setRawNowPlayingCountCoreDuet2Min_];
    v89 = sub_2664E08F8();
    v90 = sub_2663F6EFC(0xD000000000000021, 0x80000002664F8660, a1, a2, v89, v13);

    v91 = [v90 intValue];
    [v12 setRawNowPlayingCountCoreDuet10Min_];
    v92 = sub_2664E08F8();
    v93 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F8690, a1, a2, v92, v13);

    v94 = [v93 intValue];
    [v12 setRawNowPlayingCountCoreDuet1Hr_];
    v95 = sub_2664E08F8();
    v96 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F86B0, a1, a2, v95, v13);

    v97 = [v96 intValue];
    [v12 setRawNowPlayingCountCoreDuet6Hr_];
    v98 = sub_2664E08F8();
    v99 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F86D0, a1, a2, v98, v13);

    v100 = [v99 intValue];
    [v12 setRawNowPlayingCountCoreDuet1Day_];
    v101 = sub_2664E08F8();
    v102 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F8700, a1, a2, v101, v13);

    v103 = [v102 intValue];
    [v12 setRawNowPlayingCountCoreDuet7Day_];
    v104 = sub_2664E08F8();
    v105 = sub_2663F6EFC(0xD000000000000021, 0x80000002664F8730, a1, a2, v104, v13);

    v106 = [v105 intValue];
    [v12 setRawNowPlayingCountCoreDuet28Day_];
    v107 = sub_2664E08F8();
    v108 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F7930, a1, a2, v107, v13);

    v109 = [v108 intValue];
    [v12 setRawNowPlayingRecencyCD_];
    v110 = sub_2664E08F8();
    v111 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F1530, a1, a2, v110, v13);

    v112 = [v111 intValue];
    [v12 setRawEntitySearchRecency_];
    v113 = sub_2664E08F8();
    v114 = sub_2663F6EFC(0x6F63536567617375, 0xEF736B6F6F426572, a1, a2, v113, v13);

    [v114 doubleValue];
    v116 = v115;

    [v12 setUsageScoreBooks_];
    v117 = sub_2664E08F8();
    v118 = sub_2663F6EFC(0x6F63536567617375, 0xEF636973754D6572, a1, a2, v117, v13);

    [v118 doubleValue];
    v120 = v119;

    [v12 setUsageScoreMusic_];
    v121 = sub_2664E08F8();
    v122 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F13E0, a1, a2, v121, v13);

    [v122 &selRef_assetInfo];
    v124 = v123;

    [v12 setUsageScorePodcasts_];
    v125 = sub_2664E08F8();
    v126 = sub_2663F6EFC(0x7269467070417369, 0xEF79747261507473, a1, a2, v125, v13);

    v127 = [v126 integerValue];
    [v12 setIsAppFirstParty_];
    v128 = sub_2664E08F8();
    v129 = sub_2663F6EFC(0x7365757165527369, 0xEE00707041646574, a1, a2, v128, v13);

    v130 = [v129 integerValue];
    [v12 setIsRequestedApp_];
    v131 = sub_2664E08F8();
    v132 = sub_2663F6EFC(825389430, 0xE400000000000000, a1, a2, v131, v13);

    [v132 &selRef_assetInfo];
    v134 = v133;

    [v12 setVq21Score_];
    v135 = sub_2664E08F8();
    v136 = sub_2663F6EFC(0x4674726F70707573, 0xEB0000000067616CLL, a1, a2, v135, v13);

    v137 = [v136 integerValue];
    [v12 setIsSupportedFlag_];
    v138 = sub_2664E08F8();
    v139 = sub_2663F6EFC(0x466E726F63696E75, 0xEB0000000067616CLL, a1, a2, v138, v13);

    v140 = [v139 integerValue];
    [v12 setIsUnicornFlag_];
    v141 = sub_2664E08F8();
    v142 = sub_2663F6EFC(0xD000000000000013, 0x80000002664F0F30, a1, a2, v141, v13);

    v143 = [v142 &selRef_fallbackUsername];
    [v12 setIsSupportedUnicornMatchFlag_];
    [v12 setIsModelPredictedApp_];
    v144 = sub_2664E08F8();
    v145 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8760, a1, a2, v144, v13);

    v146 = [v145 &selRef_fallbackUsername];
    [v12 setIsNowPlayingBundlePSE1_];
    v147 = sub_2664E08F8();
    v148 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8780, a1, a2, v147, v13);

    v149 = [v148 &selRef_fallbackUsername];
    [v12 setIsNowPlayingBundlePSE2_];
    v150 = sub_2664E08F8();
    v151 = sub_2663F6EFC(0x6F63536567617375, 0xEF6F696461526572, a1, a2, v150, v13);

    [v151 doubleValue];
    v153 = v152;

    [v12 setUsageScoreRadio_];
    v154 = sub_2664E08F8();
    v155 = sub_2663F6EFC(0xD00000000000001BLL, 0x80000002664F1400, a1, a2, v154, v13);

    [v155 doubleValue];
    v157 = v156;

    [v12 setUsageScoreMusicWithoutRadio_];
    v158 = sub_2664E08F8();
    v159 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F14A0, a1, a2, v158, v13);

    v160 = [v159 intValue];
    [v12 setRawMediaTypeUsageSignalRadio_];
    v161 = sub_2664E08F8();
    v162 = sub_2663F6EFC(0xD000000000000029, 0x80000002664F14C0, a1, a2, v161, v13);

    v163 = [v162 intValue];
    [v12 setRawMediaTypeUsageSignalMusicWithoutRadio_];
    [v12 setSubscriptionStatus_];
    v164 = sub_2664E08F8();
    v165 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F87A0, a1, a2, v164, v13);

    v166 = [v165 integerValue];
    [v12 setIsRawNowPlayingBundle_];
    v167 = sub_2664E08F8();
    v168 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F87C0, a1, a2, v167, v13);

    v169 = [v168 intValue];
    [v12 setRawNowPlayingTotal_];
    v170 = sub_2664E08F8();
    v171 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F87E0, a1, a2, v170, v13);

    v172 = [v171 intValue];
    [v12 setRawNowPlaying2Minutes_];
    v173 = sub_2664E08F8();
    v174 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F8800, a1, a2, v173, v13);

    v175 = [v174 intValue];
    [v12 setRawNowPlaying10Minutes_];
    v176 = sub_2664E08F8();
    v177 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8820, a1, a2, v176, v13);

    v178 = [v177 intValue];
    [v12 setRawNowPlaying1Hour_];
    v179 = sub_2664E08F8();
    v180 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8840, a1, a2, v179, v13);

    v181 = [v180 intValue];
    [v12 setRawNowPlaying6Hours_];
    v182 = sub_2664E08F8();
    v183 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8860, a1, a2, v182, v13);

    v184 = [v183 intValue];
    [v12 setRawNowPlaying1Day_];
    v185 = sub_2664E08F8();
    v186 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8880, a1, a2, v185, v13);

    v187 = [v186 intValue];
    [v12 setRawNowPlaying7Days_];
    v188 = sub_2664E08F8();
    v189 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88A0, a1, a2, v188, v13);

    v190 = [v189 intValue];
    [v12 setRawNowPlaying28Days_];
    v191 = sub_2664E08F8();
    v192 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88A0, a1, a2, v191, v13);

    v193 = [v192 intValue];
    [v12 setRawNowPlaying28Days_];
    v194 = sub_2664E08F8();
    v195 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F88C0, a1, a2, v194, v13);

    v196 = [v195 intValue];
    [v12 setRawLastNowPlayingRecency_];
    v197 = sub_2664E08F8();
    v198 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88E0, a1, a2, v197, v13);

    v199 = [v198 integerValue];
    [v12 setIsRawLastNowPlayingBoolean_];
    v200 = sub_2664E08F8();
    v201 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F8900, a1, a2, v200, v13);

    v202 = [v201 integerValue];
    [v12 setIsCommonForegroundApp_];
    v203 = sub_2664E08F8();
    v204 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8920, a1, a2, v203, v13);

    [v204 doubleValue];
    v206 = v205;

    [v12 setRawNowPlayingBundleScore_];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v207 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v10, v207, v7);

    v208 = sub_2664DFE18();
    v209 = sub_2664E06D8();

    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v215 = v211;
      *v210 = 136446210;
      *(v210 + 4) = sub_2662A320C(a1, a2, &v215);
      _os_log_impl(&dword_26629C000, v208, v209, "SelfEmitter: Unexpectedly unable to build an empty dependent signal row for %{public}s", v210, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v211);
      MEMORY[0x266784AD0](v211, -1, -1);
      MEMORY[0x266784AD0](v210, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return v12;
}

id sub_26641DF94(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(MEMORY[0x277D582E8]) init];
  if (v3)
  {
    v4 = *(v1 + 64);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v5 = sub_2664E08F8();
    v6 = sub_2663F6458(0x6144746E65696C63, 0xEF6B656557664F79, v5, v4);

    v7 = [v6 intValue];
    [v3 setClientDayOfWeek_];
    v8 = sub_2664E08F8();
    v9 = sub_2663F6458(0x6F48746E65696C63, 0xEF796144664F7275, v8, v4);

    v10 = [v9 intValue];
    [v3 setRawClientHourOfDay_];
    v82 = v2;
    v11 = sub_2664E08F8();
    v12 = sub_2663F6458(0xD000000000000011, 0x80000002664F0F50, v11, v4);

    v13 = [v12 integerValue];
    [v3 setIsMediaAlbumPresent_];
    v14 = sub_2664E08F8();
    v15 = sub_2663F6458(0xD000000000000012, 0x80000002664F0F70, v14, v4);

    v16 = [v15 integerValue];
    [v3 setIsMediaArtistPresent_];
    v17 = sub_2664E08F8();
    v18 = sub_2663F6458(0xD000000000000011, 0x80000002664F0F90, v17, v4);

    v19 = [v18 integerValue];
    [v3 setIsMediaGenrePresent_];
    v20 = sub_2664E08F8();
    v21 = sub_2663F6458(0xD000000000000010, 0x80000002664F0FD0, v20, v4);

    v22 = [v21 integerValue];
    [v3 setIsMediaMoodPresent_];
    v23 = sub_2664E08F8();
    v24 = sub_2663F6458(0xD000000000000010, 0x80000002664F0FB0, v23, v4);

    v25 = [v24 integerValue];
    [v3 setIsMediaNamePresent_];
    v26 = sub_2664E08F8();
    v27 = sub_2663F6458(0xD000000000000017, 0x80000002664F0FF0, v26, v4);

    v28 = [v27 integerValue];
    [v3 setIsMediaReleaseDatePresent_];
    v29 = sub_2664E05D8();
    v30 = sub_2663F6458(0xD00000000000001BLL, 0x80000002664F11D0, v29, v4);

    v31 = [v30 intValue];
    [v3 setNowPlayingLastBundleRecencyS_];
    v32 = sub_2664E08F8();
    v33 = sub_2663F6458(0x676E616C2E776172, 0xEC00000065676175, v32, v4);

    v34 = [v33 longLongValue];
    [v3 setRawLanguage_];
    v35 = sub_2664E08F8();
    v36 = sub_2663F6458(0x61636F6C2E776172, 0xEA0000000000656CLL, v35, v4);

    v37 = [v36 longLongValue];
    [v3 setRawLocale_];
    v38 = sub_2664E08F8();
    v39 = sub_2663F6458(0x696765722E776172, 0xEA00000000006E6FLL, v38, v4);

    v40 = [v39 longLongValue];
    [v3 setRawRegion_];
    v41 = sub_2664E08F8();
    v42 = sub_2663F6458(0x6144746E65696C63, 0xEE00746867696C79, v41, v4);

    v43 = [v42 integerValue];
    [v3 setIsClientDaylight_];
    v44 = sub_2664E08F8();
    v45 = sub_2663F6458(0xD000000000000010, 0x80000002664F10B0, v44, v4);

    v46 = [v45 integerValue];
    [v3 setIsClientNavigating_];
    v47 = sub_2664E08F8();
    v48 = sub_2663F6458(0x6F57746E65696C63, 0xED000074756F6B72, v47, v4);

    v49 = [v48 integerValue];
    [v3 setIsClientWorkout_];
    v50 = sub_2664E08F8();
    v51 = sub_2663F6458(0x707954616964656DLL, 0xE900000000000065, v50, v4);

    v52 = [v51 intValue];
    [v3 setMediaType_];
    v53 = sub_2664E08F8();
    v54 = sub_2663F6458(0x6979616C50776F6ELL, 0xEF6574617453676ELL, v53, v4);

    v55 = [v54 intValue];
    [v3 setNowPlayingState_];
    v56 = sub_2664E08F8();
    v57 = sub_2663F6458(0xD000000000000013, 0x80000002664F4490, v56, v4);

    v58 = [v57 integerValue];
    [v3 setIsPireneRequest_];
    v59 = sub_2664E05D8();
    v60 = sub_2663F6458(0xD000000000000017, 0x80000002664F1150, v59, v4);

    [v60 doubleValue];
    v62 = v61;

    [v3 setForegroundBundleRecencyS_];
    v63 = sub_2664E08F8();
    v64 = sub_2663F6458(0xD000000000000013, 0x80000002664F1010, v63, v4);

    v65 = [v64 intValue];
    [v3 setMediaParsecCategory_];
    v66 = sub_2664E08F8();
    v67 = sub_2663F6458(0xD00000000000001CLL, 0x80000002664F1590, v66, v4);

    v68 = [v67 intValue];
    [v3 setServerSearchResultsMediaType_];
    sub_2664DEF78();
    swift_allocObject();
    sub_2664DEF68();
    v69 = sub_2664DEF48();

    v70 = 0xFFFFFFFFLL;
    if (v69 < 0xFFFFFFFFLL)
    {
      v70 = v69;
    }

    [v3 setModelVersion_];
    if (v82 <= 4)
    {
      if (v82 == 2)
      {
        v71 = 9;
        goto LABEL_15;
      }

      if (v82 != 4)
      {
LABEL_14:
        v71 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      if (v82 == 5)
      {
        v71 = 2;
        goto LABEL_15;
      }

      if (v82 != 6)
      {
        if (v82 == 12)
        {
LABEL_16:
          v72 = sub_2664E08F8();
          v73 = sub_2663F6458(0xD000000000000012, 0x80000002664F85D0, v72, v4);

          v74 = [v73 intValue];
          [v3 setRawNowPlayingState_];
          v75 = sub_2664E08F8();
          v76 = sub_2663F6458(0xD00000000000001ALL, 0x80000002664F85F0, v75, v4);

          v77 = [v76 intValue];
          [v3 setCommonForegroundAppRecency_];
          v78 = sub_2664E08F8();
          v79 = sub_2663F6458(0x6E65746E6F437369, 0xED00006565724674, v78, v4);

          v80 = [v79 integerValue];
          [v3 setIsContentFree_];
          return v3;
        }

        goto LABEL_14;
      }
    }

    v71 = 3;
LABEL_15:
    [v3 setResolutionType_];
    goto LABEL_16;
  }

  return v3;
}

unint64_t sub_26641EAA0()
{
  v1 = sub_2664DFE38();
  MEMORY[0x28223BE20](v1);
  sub_2664DEF78();
  swift_allocObject();
  sub_2664DEF68();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v7[0] = v0[2];
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;

  v5 = sub_2662C18A0(v7, 1, 1, &type metadata for AudioMegamodelTriggeredLogger, &off_2877EFD00);

  return v5;
}

uint64_t sub_26641ED4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  if (a2)
  {
    v11 = sub_26641EAA0();
    v12 = v11;
    if (v11[2] == 1)
    {
      v14 = v11[4];
      v13 = v11[5];

      v15 = v14 == a1 && v13 == a2;
      if (v15 || (sub_2664E0D88() & 1) != 0)
      {

        return 1;
      }

      else
      {
        Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(v14, v13);

        if (Party16bundleIdentifierSbSS_tFZ_0)
        {
          return _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(a1, a2) & 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v10, v21, v4);

      v22 = sub_2664DFE18();
      v23 = sub_2664E06C8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        v26 = MEMORY[0x2667834D0](v12, MEMORY[0x277D837D0]);
        v28 = v27;

        v29 = sub_2662A320C(v26, v28, &v32);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_26629C000, v22, v23, "SelfEmitter#modelPredictionIsCorrect: Model didn't predict a single bundle; predicted %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x266784AD0](v25, -1, -1);
        MEMORY[0x266784AD0](v24, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v10, v4);
      return 256;
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v17, v4);
    v18 = sub_2664DFE18();
    v19 = sub_2664E06C8();
    if (os_log_type_enabled(v18, v19))
    {
      v16 = 2;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26629C000, v18, v19, "SelfEmitter#modelPredictionIsCorrect: no ground truth, so not evaluating model prediction correctness", v20, 2u);
      MEMORY[0x266784AD0](v20, -1, -1);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return 2;
    }
  }

  return v16;
}

void *sub_26641F190(uint64_t a1, __int16 a2, unint64_t a3)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
  if (v17)
  {
    v18 = v17;
    if (a1 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      a1 = 0x80000000;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 <= 0x7FFFFFFF)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_26:
        a3 = 0;
LABEL_7:
        [v17 setProjectIntent_];
        [v18 setNumCandidateApps_];
        if (a2 != 2)
        {
          v42 = v3;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v19 = a2 & 0x100;
          v20 = __swift_project_value_buffer(v7, qword_280F914F0);
          swift_beginAccess();
          (*(v8 + 16))(v16, v20, v7);
          v21 = sub_2664DFE18();
          v22 = sub_2664E06C8();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v41 = a3;
            v24 = v23;
            *v23 = 67109376;
            *(v23 + 4) = a2 & 1;
            *(v23 + 8) = 1024;
            *(v23 + 10) = v19 >> 8;
            _os_log_impl(&dword_26629C000, v21, v22, "SelfEmitter#evaluationMessage: ModelPrediction Results isDecisionCorrect: %{BOOL}d, isModelDisambiguation : %{BOOL}d", v23, 0xEu);
            v25 = v24;
            a3 = v41;
            MEMORY[0x266784AD0](v25, -1, -1);
          }

          (*(v8 + 8))(v16, v7);
          [v18 setIsDecisionCorrect_];
          [v18 setIsModelDisambiguation_];
        }

        [v18 setModelVersion_];
        v26 = sub_26641F73C();
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v27 = __swift_project_value_buffer(v7, qword_280F914F0);
        swift_beginAccess();
        (*(v8 + 16))(v14, v27, v7);
        v28 = sub_2664DFE18();
        v29 = sub_2664E06C8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v43 = v31;
          *v30 = 136315138;
          v32 = sub_2664E08B8();
          v42 = v14;
          v34 = sub_2662A320C(v32, v33, &v43);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_26629C000, v28, v29, "SelfEmitter#getUserPersona Logging user persona as: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x266784AD0](v31, -1, -1);
          MEMORY[0x266784AD0](v30, -1, -1);

          (*(v8 + 8))(v42, v7);
        }

        else
        {

          (*(v8 + 8))(v14, v7);
        }

        [v18 setUserPersona_];
        return v18;
      }

      a1 = 0x7FFFFFFFLL;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_5:
    if (a3 >= 0xFFFFFFFF)
    {
      a3 = 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v35, v7);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06D8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_26629C000, v36, v37, "SelfEmitter#evaluationMessage: Failed to generate top-level evaluation message, which should never happen", v38, 2u);
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t sub_26641F73C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v39 = 0;
  v12 = *(v1 + 48);

  sub_26641FE7C(v12, v1, &v40, &v41, &v39);

  v13 = *(v41 + 2);
  if (!v13 || (v14 = v39, v39 < 1))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v27, v2);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "SelfEmitter#getUserPersona Unable to find a most commonly used bundle identifier, returning unknown persona", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_18;
  }

  if (v13 != 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v9, v31, v2);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v32, v33, "SelfEmitter#getUserPersona More than 1 bundle found with the same max count. Unable to get user persona", v34, 2u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
LABEL_18:

    return 0;
  }

  v16 = *(v41 + 4);
  v15 = *(v41 + 5);
  v17 = v40;

  LODWORD(v18) = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(v16, v15);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = v17 / v14;
  v20 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v11, v20, v2);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v18;
    v18 = v23;
    v36 = swift_slowAlloc();
    v38 = v36;
    *v18 = 134218498;
    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    v24 = sub_2662A320C(v16, v15, &v38);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v14;
    _os_log_impl(&dword_26629C000, v21, v22, "SelfEmitter#getUserPersona maxBundleScore: %f, bundle: %s, nowPlayingTotalCount: %ld", v18, 0x20u);
    v25 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266784AD0](v25, -1, -1);
    v26 = v18;
    LOBYTE(v18) = v37;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v11, v2);

  if (v19 <= 0.95)
  {
    if (v18)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (v18)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t SelfEmitter.deinit()
{

  return v0;
}

uint64_t SelfEmitter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_26641FD74@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v4 = [objc_opt_self() sharedAnalytics];
  v5 = [v4 defaultMessageStream];

  type metadata accessor for SelfEmitter();
  v6 = swift_allocObject();
  result = sub_2664195B0(&v8, v5);
  *a2 = v6;
  return result;
}

void sub_26641FE7C(uint64_t a1, uint64_t a2, id *a3, char **a4, void *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v10 = (a1 + 40);
    v25 = a5;
    v26 = a3;
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(a2 + 64);

      v14 = sub_2664E08F8();
      v15 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1290, v11, v12, v14, v13);

      v16 = [v15 integerValue];
      if (*v26 >= v16)
      {
        if (v16 == *v26)
        {
          v18 = a4;
          v19 = *a4;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = v18;
          *v18 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_2663846F4(0, *(v19 + 2) + 1, 1, v19);
            *v18 = v19;
          }

          v23 = *(v19 + 2);
          v22 = *(v19 + 3);
          if (v23 >= v22 >> 1)
          {
            v19 = sub_2663846F4((v22 > 1), v23 + 1, 1, v19);
            *v21 = v19;
          }

          *(v19 + 2) = v23 + 1;
          v24 = &v19[16 * v23];
          *(v24 + 4) = v11;
          *(v24 + 5) = v12;
          a5 = v25;
          a4 = v21;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_2664E36F0;
        *(v17 + 32) = v11;
        *(v17 + 40) = v12;
        *a4 = v17;

        *v26 = v16;
      }

      if (__OFADD__(*a5, v16))
      {
        break;
      }

      *a5 += v16;

      v10 += 2;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_2664200A8()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v7 = sub_2664DE478();
    v8 = [v6 initWithNSUUID_];

    [v5 setInferenceId_];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v9, v0);
    v10 = sub_2664DFE18();
    v11 = sub_2664E06D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26629C000, v10, v11, "SelfEmitter#metadata: Failed to generate event metadata", v12, 2u);
      MEMORY[0x266784AD0](v12, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v5;
}

void *sub_2664202CC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2664200A8();
    if (v6)
    {
      v7 = v6;
      [v5 setEventMetadata_];

      return v5;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26629C000, v9, v10, "SelfEmitter#toSelf: Failed to generate top-level SELF message", v11, 2u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

void *sub_2664204CC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setComponent_];
        v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v11 = sub_2664DE478();
        v12 = [v10 initWithNSUUID_];

        [v9 setUuid_];
        [v7 setComponent_];
        v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v14 = sub_2664DE478();
        v15 = [v13 initWithNSUUID_];

        [v7 setUuid_];
        [v5 setSource_];
        [v5 setTarget_];

        return v5;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v16, v0);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "SelfEmitter#linkMessage: Failed to create RequestLink SELF message templates. Skipping Emission.", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2664208E8(uint64_t a1)
{
  v3 = sub_2664DFE38();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v1[3];
  v7 = v1[4];
  v52 = v8;
  v53 = v4;
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {

    sub_2664475B4(a1, v6, v7);
    v6 = v9;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v1[3] = v6;
  v1[4] = v11;

  v12 = v1[2];

  sub_266449428(a1, v12);
  v14 = v13;

  v50 = v1;
  v1[2] = v14;

  v15 = sub_26639F100();
  v16 = sub_2663D8A24(v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v17 = sub_2664E0C78();
  v18 = v17;
  v19 = 0;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v54 = v17 + 64;
  if (v22)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_13:
      v27 = v24 | (v19 << 6);
      v28 = (*(v16 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];

      v31 = Double.rounded(to:)(3);
      *(v54 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (v18[6] + 16 * v27);
      *v32 = v30;
      v32[1] = v29;
      *(v18[7] + 8 * v27) = v31;
      v33 = v18[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v18[2] = v35;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  else
  {
LABEL_8:
    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v19 >= v23)
      {
        break;
      }

      v26 = *(v16 + 64 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    v50[2] = v18;

    if (qword_280F914E8 != -1)
    {
      goto LABEL_22;
    }
  }

  v36 = v53;
  v37 = __swift_project_value_buffer(v53, qword_280F914F0);
  swift_beginAccess();
  v39 = v51;
  v38 = v52;
  (*(v52 + 16))(v51, v37, v36);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06C8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v42 = 136315138;

    v44 = sub_2664E01D8();
    v46 = v45;

    v47 = sub_2662A320C(v44, v46, &v55);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_26629C000, v40, v41, "ForegroundAppSignal#applyCandidates foregroundBundleRecencyScore:%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  return (*(v38 + 8))(v39, v36);
}

uint64_t sub_266420D4C()
{
  v0 = sub_2662C3A68(&unk_2877E1610);
  result = swift_arrayDestroy();
  qword_280F91CB8 = v0;
  return result;
}

unint64_t sub_266420D98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36E0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002664F1130;
  v6 = v2[4];
  if (v6)
  {
    if (v2[3] == a1 && v6 == a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2664E0D88();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D839B0];
  *(inited + 48) = v7 & 1;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F1150;
  v9 = v2[5];
  v10 = MEMORY[0x277D839F8];
  if (v9)
  {
    v20 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *&v19 = v9;
    sub_266318804(&v19, (inited + 96));
  }

  else
  {
    *(inited + 120) = MEMORY[0x277D839F8];
    *(inited + 96) = 0x4143C68000000000;
  }

  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000002664F1170;
  v11 = v2[2];
  v12 = *(v11 + 16);
  v13 = v9;
  if (v12)
  {

    v14 = sub_2662A3E98(a1, a2);
    v15 = 0;
    if (v16)
    {
      v15 = *(*(v11 + 56) + 8 * v14);
    }
  }

  else
  {
    v15 = 0;
  }

  *(inited + 168) = v10;
  *(inited + 144) = v15;
  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_266420F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_266420D98(a1, a2);
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  result = sub_2662A3E98(0xD000000000000010, 0x80000002664F1130);
  if ((v6 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * result, v9);

  sub_266318804(v9, &v10);
  result = swift_dynamicCast();
  v7 = 0.0;
  if (v8)
  {
    v7 = 1.0;
  }

  *(a3 + 280) = v7;
  return result;
}

uint64_t sub_266421054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = sub_2664E02A8();
  v24 = [objc_opt_self() eventStreamWithName_];

  v7 = [objc_allocWithZone(MEMORY[0x277CFE268]) init];
  sub_2664DE428();
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  sub_2664DE428();
  v10(v3, 0, 1, v8);
  sub_266386350(MEMORY[0x277D84F90]);
  v11 = *(v9 + 48);
  v12 = 0;
  if (v11(v5, 1, v8) != 1)
  {
    v12 = sub_2664DE3A8();
    (*(v9 + 8))(v5, v8);
  }

  if (v11(v3, 1, v8) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_2664DE3A8();
    (*(v9 + 8))(v3, v8);
  }

  v14 = sub_2664E02A8();
  v15 = sub_2664E01A8();

  v16 = objc_opt_self();
  v17 = v24;
  v18 = [v16 eventWithStream:v24 source:v7 startDate:v12 endDate:v13 identifierStringValue:v14 confidence:v15 metadata:1.0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073780, &qword_2664EC648);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2664E36F0;
  *(v19 + 32) = v18;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073788, &unk_2664EC650);
  v21 = sub_2664E0488();

  return v21;
}

id sub_2664213B0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v7[0] = 0;
  v3 = [v2 executeQuery:a1 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_26642148C()
{

  return swift_deallocClassInstance();
}

double sub_266421558()
{
  if (qword_280F905B0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_266421620(void (*a1)(uint64_t *__return_ptr, char *, __n128), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v4 = sub_2664DF398();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  result = sub_2664E0C78();
  v9 = 0;
  v36 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = result;
  v33 = v5;
  v30[1] = v5 + 16;
  v31 = (v5 + 8);
  v30[0] = result + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      (*(v33 + 16))(v7, *(v36 + 56) + *(v33 + 72) * v20, v4);

      v24 = v38;
      (v34)(&v39, v7);
      v38 = v24;
      if (v24)
      {
        break;
      }

      (*v31)(v7, v4);
      *(v30[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v32;
      v25 = (*(v32 + 48) + 16 * v20);
      *v25 = v22;
      v25[1] = v23;
      *(*(result + 56) + 8 * v20) = v39;
      v26 = *(result + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      *(result + 16) = v28;
      v15 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;

    (*v31)(v7, v4);
    return v29;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return result;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2664218C4(char *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v192 = a4;
  v190 = a3;
  v191 = a2;
  v194 = a1;
  v184 = sub_2664DF398();
  v183 = *(v184 - 8);
  v4 = MEMORY[0x28223BE20](v184);
  v182 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v179 = &v174 - v6;
  v197 = sub_2664DFE38();
  v200 = *(v197 - 1);
  v7 = MEMORY[0x28223BE20](v197);
  v176 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v180 = &v174 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v181 = &v174 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v185 = &v174 - v14;
  MEMORY[0x28223BE20](v13);
  v193 = &v174 - v15;
  v16 = sub_2664DE578();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v196 = sub_2664DE598();
  v20 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v22 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v174 - v24;
  v26 = sub_2664DE438();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v175 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v177 = &v174 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v178 = &v174 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v174 - v35;
  MEMORY[0x28223BE20](v34);
  v188 = &v174 - v37;
  sub_2664DE428();
  v38 = sub_2664E02A8();
  v195 = [objc_opt_self() eventStreamWithName_];

  v39 = v26;
  sub_2664DE568();
  (*(v17 + 104))(v19, *MEMORY[0x277CC9968], v16);
  sub_2664DE428();
  sub_2664DE558();
  v40 = *(v27 + 8);
  v189 = v36;
  v198 = v27 + 8;
  v199 = v40;
  v40(v36, v26);
  (*(v17 + 8))(v19, v16);
  (*(v20 + 8))(v22, v196);
  v41 = 0;
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    v41 = sub_2664DE3A8();
    v199(v25, v26);
  }

  v42 = objc_opt_self();
  v43 = [v42 predicateForEventsWithStartDateAfter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v44 = swift_allocObject();
  v196 = xmmword_2664E34F0;
  *(v44 + 16) = xmmword_2664E34F0;
  v45 = v195;
  *(v44 + 32) = v195;
  v46 = swift_allocObject();
  *(v46 + 16) = v196;
  v47 = v45;
  v48 = [v42 startDateSortDescriptorAscending_];
  if (v48)
  {
    v186 = v47;
    *&v196 = v39;
    *(v46 + 32) = v48;
    sub_2662C1744(0, &qword_280F8F638, 0x277CFE1E8);
    v49 = v43;
    v50 = sub_2664E0488();

    sub_2662C1744(0, &qword_280F8F5E8, 0x277CCAC98);
    v51 = sub_2664E0488();

    v52 = [objc_opt_self() eventQueryWithPredicate:v49 eventStreams:v50 offset:0 limit:1 sortDescriptors:v51];
    v187 = v49;

    [v52 setReadMetadata_];
    v53 = v197;
    v54 = v193;
    if (qword_280F914E8 != -1)
    {
LABEL_55:
      swift_once();
    }

    v55 = __swift_project_value_buffer(v53, qword_280F914F0);
    swift_beginAccess();
    v56 = v200;
    v57 = *(v200 + 16);
    (v57)(v54, v55, v53);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06E8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "ForegroundAppSignal#signal knowledgeProvider executing query", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v61 = *(v56 + 8);
    v200 = v56 + 8;
    v195 = v61;
    (v61)(v54, v53);
    v62 = *(*v194 + 80);
    v63 = v52;
    v64 = v62(v52);

    v205 = sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    *&v204 = v64;
    sub_266318804(&v204, &v207);
    sub_2662A01E8(&v207, &v204);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073768, &qword_2664EC630);
    if (swift_dynamicCast())
    {
      v65 = v202[0];
      v54 = v197;
      if (v202[0] >> 62)
      {
        goto LABEL_57;
      }

      for (i = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2664E0A68())
      {
        v67 = v180;
        if (!i)
        {
          v152 = v63;
          v153 = v186;

          v154 = sub_266386140(MEMORY[0x277D84F90]);
          v155 = v189;
          sub_2664DE428();
          v156 = v188;
          sub_2664DE388();
          v158 = v157;
          v159 = v196;
          v199(v155, v196);
          v160 = type metadata accessor for ForegroundAppSignal();
          v161 = swift_allocObject();
          v161[4] = 0;
          v161[5] = 0;
          v161[2] = v154;
          v161[3] = 0;
          v161[6] = v158;
          v205 = v160;
          v206 = &off_2877F0CC0;
          *&v204 = v161;
          if (v191)
          {

            sub_26636B8D0();
          }

          else
          {
          }

          v171 = v187;
          v190(&v204);
          __swift_destroy_boxed_opaque_existential_1Tm(&v204);

          goto LABEL_52;
        }

        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x266783B70](0, v65);
        }

        else
        {
          if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_60;
          }

          v68 = *(v65 + 32);
        }

        v193 = v68;
        (v57)(v67, v55, v54);
        v69 = sub_2664DFE18();
        v70 = sub_2664E06E8();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_26629C000, v69, v70, "ForegroundAppSignal#signal storing signals", v71, 2u);
          v72 = v71;
          v54 = v197;
          MEMORY[0x266784AD0](v72, -1, -1);
        }

        (v195)(v67, v54);
        v73 = v178;
        sub_2664DE428();
        v53 = &selRef_setUniversalStoreIdentifiersWithBlock_;
        v74 = [v193 endDate];
        if (!v74)
        {
          goto LABEL_61;
        }

        v75 = v74;
        v76 = v177;
        sub_2664DE3F8();

        sub_2664DE388();
        v77 = v76;
        v78 = v196;
        v79 = v199;
        v199(v77, v196);
        v79(v73, v78);
        v80 = Double.rounded(to:)(5);
        v81 = [v193 value];
        if (!v81)
        {
          goto LABEL_62;
        }

        v82 = v81;
        v83 = [v81 stringValue];

        v84 = v197;
        v85 = v176;
        if (!v83)
        {

          v163 = sub_266386140(MEMORY[0x277D84F90]);
          v164 = v189;
          sub_2664DE428();
          v156 = v188;
          sub_2664DE388();
          v166 = v165;
          v159 = v196;
          v199(v164, v196);
          v167 = type metadata accessor for ForegroundAppSignal();
          v168 = swift_allocObject();
          v168[4] = 0;
          v168[5] = 0;
          v168[2] = v163;
          v168[3] = 0;
          v168[6] = v166;
          v205 = v167;
          v206 = &off_2877F0CC0;
          *&v204 = v168;
          if (v191)
          {

            sub_26636B8D0();
          }

          else
          {
          }

          v172 = v187;
          v190(&v204);
          __swift_destroy_boxed_opaque_existential_1Tm(&v204);

LABEL_52:
          __swift_destroy_boxed_opaque_existential_1Tm(&v207);
          v199(v156, v159);
        }

        v194 = v63;
        v177 = sub_2664E02C8();
        v174 = v86;

        (v57)(v85, v55, v84);
        v87 = sub_2664DFE18();
        v88 = sub_2664E06E8();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_26629C000, v87, v88, "ForegroundAppSignal#signal computing compound score", v89, 2u);
          MEMORY[0x266784AD0](v89, -1, -1);
        }

        (v195)(v85, v84);
        v90 = v179;
        sub_2664DF388();
        v91 = [v193 endDate];
        v92 = v196;
        if (!v91)
        {
          goto LABEL_63;
        }

        v93 = v91;

        v94 = v175;
        sub_2664DE3F8();

        HistoryStats.addInstance(date:)(v94);
        v199(v94, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073778, &qword_2664EC640);
        v95 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070) - 8);
        v96 = (*(*v95 + 80) + 32) & ~*(*v95 + 80);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_2664E36F0;
        v98 = (v97 + v96);
        v99 = v95[14];
        v100 = v174;
        *v98 = v177;
        v98[1] = v100;
        v101 = (v183 + 16);
        v180 = *(v183 + 16);
        (v180)(v98 + v99, v90, v184);

        v52 = sub_266385ABC(v97);
        swift_setDeallocating();
        sub_2664237A0(v98);
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
        v102 = sub_2664E0C78();
        v63 = v102;
        v57 = 0;
        v104 = v52 + 64;
        v103 = *(v52 + 8);
        v195 = v52;
        v105 = 1 << v52[32];
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        v65 = v106 & v103;
        v54 = ((v105 + 63) >> 6);
        v181 = v101;
        v197 = (v101 - 8);
        v178 = (v102 + 64);
        v185 = v102;
        if ((v106 & v103) == 0)
        {
          break;
        }

        while (1)
        {
          v107 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
LABEL_31:
          v55 = v107 | (v57 << 6);
          v110 = *(v195 + 7);
          v111 = (*(v195 + 6) + 16 * v55);
          v112 = v111[1];
          v200 = *v111;
          v113 = v183;
          v52 = v182;
          v53 = v184;
          (v180)(v182, v110 + *(v183 + 72) * v55, v184);

          v114 = sub_2663D80F4(14400.0);
          (*(v113 + 8))(v52, v53);
          *&v178[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
          v63 = v185;
          v115 = (*(v185 + 6) + 16 * v55);
          *v115 = v200;
          v115[1] = v112;
          *(*(v63 + 7) + 8 * v55) = v114;
          v116 = *(v63 + 2);
          v117 = __OFADD__(v116, 1);
          v118 = v116 + 1;
          if (v117)
          {
            break;
          }

          *(v63 + 2) = v118;
          if (!v65)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_57:
        ;
      }

LABEL_26:
      v108 = v57;
      while (1)
      {
        v57 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v57 >= v54)
        {
          break;
        }

        v109 = *&v104[8 * v57];
        ++v108;
        if (v109)
        {
          v107 = __clz(__rbit64(v109));
          v65 = (v109 - 1) & v109;
          goto LABEL_31;
        }
      }

      v143 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v144 = v189;
      sub_2664DE428();
      v145 = v188;
      sub_2664DE388();
      v147 = v146;
      v148 = v196;
      v199(v144, v196);
      v149 = type metadata accessor for ForegroundAppSignal();
      v150 = swift_allocObject();
      v150[4] = v174;
      v150[5] = v143;
      v151 = v177;
      v150[2] = v63;
      v150[3] = v151;
      v150[6] = v147;
      v205 = v149;
      v206 = &off_2877F0CC0;
      *&v204 = v150;
      if (v191)
      {

        sub_26636B8D0();
      }

      else
      {
      }

      v169 = v194;
      v170 = v179;
      v190(&v204);
      __swift_destroy_boxed_opaque_existential_1Tm(&v204);

      (*v197)(v170, v184);
      __swift_destroy_boxed_opaque_existential_1Tm(&v207);
      v199(v145, v148);
    }

    else
    {
      v194 = v63;
      v119 = v181;
      v120 = v197;
      (v57)(v181, v55, v197);
      sub_2662A01E8(&v207, &v204);
      v121 = sub_2664DFE18();
      v122 = sub_2664E06D8();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = v186;
        v124 = swift_slowAlloc();
        v125 = v119;
        v126 = swift_slowAlloc();
        v203 = v126;
        *v124 = 136315138;
        sub_2662A01E8(&v204, v202);
        __swift_project_boxed_opaque_existential_1(v202, v202[3]);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(v202);
        v201 = DynamicType;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073770, &qword_2664EC638);
        v128 = sub_2664E0318();
        v130 = v129;
        __swift_destroy_boxed_opaque_existential_1Tm(&v204);
        v131 = sub_2662A320C(v128, v130, &v203);

        *(v124 + 4) = v131;
        _os_log_impl(&dword_26629C000, v121, v122, "ForegroundAppSignal#signal could not convert core duet response to array of _DKEvent, actual class: %s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        MEMORY[0x266784AD0](v126, -1, -1);
        MEMORY[0x266784AD0](v124, -1, -1);

        v132 = v125;
      }

      else
      {
        v123 = v186;

        __swift_destroy_boxed_opaque_existential_1Tm(&v204);
        v132 = v119;
      }

      (v195)(v132, v120);
      v133 = v190;
      v134 = v196;
      v135 = v191;
      v136 = v188;
      v137 = sub_266386140(MEMORY[0x277D84F90]);
      v138 = v189;
      sub_2664DE428();
      sub_2664DE388();
      v140 = v139;
      v199(v138, v134);
      v141 = type metadata accessor for ForegroundAppSignal();
      v142 = swift_allocObject();
      v142[4] = 0;
      v142[5] = 0;
      v142[2] = v137;
      v142[3] = 0;
      v142[6] = v140;
      v205 = v141;
      v206 = &off_2877F0CC0;
      *&v204 = v142;

      if (v135)
      {
        sub_26636B8D0();
      }

      v162 = v187;
      v133(&v204);
      __swift_destroy_boxed_opaque_existential_1Tm(&v204);

      __swift_destroy_boxed_opaque_existential_1Tm(&v207);
      v199(v136, v134);
    }
  }

  else
  {
LABEL_60:

    __break(1u);
LABEL_61:

    __break(1u);
LABEL_62:

    __break(1u);
LABEL_63:

    __break(1u);
  }

  return result;
}

uint64_t sub_266423240(void (*a1)(__int128 *), uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = sub_26632958C(1012);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "ForegroundAppSignal#signal", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for ForegroundAppSignal.KnowledgeProvider();
  inited = swift_initStackObject();

  sub_2664218C4(inited, v8, a1, a2);
}

uint64_t sub_266423480(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073758, &qword_2664EC618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073760, &unk_2664EC620);
  v10 = sub_2664E0318();
  v22 = v11;
  v23 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v24;
  v16[1] = a2;

  v17 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v19;
  sub_2664DFDC8(v17, &dword_26629C000, v12, "appSelectionSignalsSignal", 25, 2, v9, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v18);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v15;

  sub_266423240(sub_266352AC0, v20);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2664237A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266423818(uint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v51 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = *(a1 + 72);
  v52 = v14;
  v53 = v10;
  if (v13 >> 62)
  {
    goto LABEL_32;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v56 = v12;
  v57 = v8;
  v54 = a4;
  v55 = a3;
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = 0;
    v58 = v13 & 0xC000000000000001;
    v12 = (v13 & 0xFFFFFFFFFFFFFF8);
    v8 = v13;
    do
    {
      if (v58)
      {
        v18 = MEMORY[0x266783B70](v17, v13);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v17 >= *(v12 + 2))
        {
          goto LABEL_31;
        }

        v18 = *(v13 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v48 = v13;
          v49 = sub_2664E0A68();
          v13 = v48;
          v15 = v49;
          goto LABEL_3;
        }
      }

      a3 = *(v18 + 56);
      a4 = *(v18 + 64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2663846F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_2663846F4((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[16 * v21];
      *(v22 + 4) = a3;
      *(v22 + 5) = a4;
      ++v17;
      v13 = v8;
    }

    while (v19 != v15);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = v53;
  v24 = __swift_project_value_buffer(v53, qword_280F914F0);
  swift_beginAccess();
  v25 = v56;
  v26 = v57;
  v27 = *(v57 + 16);
  v27(v56, v24, v23);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v58 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v59 = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x2667834D0](v16, MEMORY[0x277D837D0]);
    v35 = v27;
    v36 = sub_2662A320C(v33, v34, &v59);

    *(v31 + 4) = v36;
    v27 = v35;
    _os_log_impl(&dword_26629C000, v28, v29, "SpotlightHandler: Resolving items for identifiers: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    v37 = v31;
    v24 = v58;
    MEMORY[0x266784AD0](v37, -1, -1);

    v38 = *(v57 + 8);
    v38(v56, v23);
  }

  else
  {

    v38 = *(v26 + 8);
    v38(v25, v23);
  }

  v39 = sub_2664B07A8(v16, v51);

  v40 = v52;
  v27(v52, v24, v23);

  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  v43 = v39 >> 62;
  if (os_log_type_enabled(v41, v42))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    v45 = MEMORY[0x277D84F90];
    if (v43)
    {
      v46 = sub_2664E0A68();
    }

    else
    {
      v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v44 + 4) = v46;

    _os_log_impl(&dword_26629C000, v41, v42, "SpotlightHandler: Found: %ld items", v44, 0xCu);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v38(v40, v23);
  if (v43)
  {
    sub_266424688();

    v50 = sub_2664E0C58();
    swift_bridgeObjectRelease_n();
    v39 = v50;
  }

  else
  {

    sub_2664E0D98();
    sub_266424688();
  }

  v59 = v45;
  v60 = xmmword_2664EC660;
  v61 = xmmword_2664EB350;
  v62 = v39;
  v63 = 0;
  v55(&v59);
}

uint64_t sub_266423D8C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_266424018(*v11, v15, a3, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_266424018(uint64_t a1, _OWORD *a2, void *a3, _OWORD *a4, uint64_t a5)
{
  v57 = a3;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v80[0] = a1;
  v79[3] = &type metadata for PlaybackStarter;
  v79[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v79[0] = v11;
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  v78[3] = &type metadata for PlaybackQueueLocationProvider;
  v78[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v78[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v80, v77);
  sub_2662A5550(v79, v76);
  sub_2662A5550(a3, v75);
  sub_2662A5550(v78, v74);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v74, v74[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v73[3] = v10;
  v73[4] = &off_2877F3740;
  v73[0] = v29;
  v71 = &type metadata for PlaybackStarter;
  v72 = &off_2877EE098;
  v30 = swift_allocObject();
  v70[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v68 = &type metadata for PlaybackQueueLocationProvider;
  v69 = &off_2877E8100;
  v33 = swift_allocObject();
  v67[0] = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v73, v10);
  MEMORY[0x28223BE20](v36);
  v38 = (&v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  MEMORY[0x28223BE20](v40);
  v42 = (&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  MEMORY[0x28223BE20](v44);
  v46 = (&v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v38;
  v65 = v10;
  v66 = &off_2877F3740;
  v63 = &off_2877EE098;
  *&v64 = v48;
  v62 = &type metadata for PlaybackStarter;
  v49 = swift_allocObject();
  *&v61 = v49;
  v50 = v42[3];
  v49[3] = v42[2];
  v49[4] = v50;
  v49[5] = v42[4];
  v51 = v42[1];
  v49[1] = *v42;
  v49[2] = v51;
  v59 = &type metadata for PlaybackQueueLocationProvider;
  v60 = &off_2877E8100;
  v52 = swift_allocObject();
  *&v58 = v52;
  v53 = v46[3];
  v52[3] = v46[2];
  v52[4] = v53;
  v52[5] = v46[4];
  v54 = v46[1];
  v52[1] = *v46;
  v52[2] = v54;
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  sub_2662A8618(&v64, a5 + 16);
  sub_2662A8618(&v61, a5 + 56);
  sub_2662A8618(v75, a5 + 96);
  sub_2662A8618(&v58, a5 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return a5;
}

unint64_t sub_266424688()
{
  result = qword_280073790;
  if (!qword_280073790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073790);
  }

  return result;
}

BOOL sub_2664246D4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  if (SelfSamplingCalculator.isPermitted()())
  {
    if (AFIsInternalInstall())
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.2;
    }

    v8 = vcvtd_n_f64_u64(sub_26642517C(0x20000000000001uLL), 0x35uLL);
    v9 = v8 <= v7;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v6, v10, v0);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06C8();
    if (!os_log_type_enabled(v11, v12))
    {
      v4 = v6;
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 134218496;
    *(v13 + 4) = v8 + 0.0;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v7;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v8 <= v7;
    _os_log_impl(&dword_26629C000, v11, v12, "SelfSamplingCalculator#shouldEmitTrainingRecord: diceRoll is %f, compared to samplingRate of %f - returning %{BOOL}d", v13, 0x1Cu);
    v4 = v6;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v14, v0);
    v11 = sub_2664DFE18();
    v15 = sub_2664E06E8();
    if (!os_log_type_enabled(v11, v15))
    {
      v9 = 0;
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v15, "SelfSamplingCalculator#shouldEmitTrainingRecord: permitted() is false", v13, 2u);
    v9 = 0;
  }

  MEMORY[0x266784AD0](v13, -1, -1);
LABEL_16:

  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t SelfSamplingCalculator.init()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2664E02A8();
    [v2 doubleForKey_];
  }

  return sub_2664DE3D8();
}

Swift::Bool __swiftcall SelfSamplingCalculator.isPermitted()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = [objc_opt_self() sharedConnection];
  if (!v7)
  {
    __break(1u);
    return v7;
  }

  v8 = v7;
  v9 = [v7 isDiagnosticSubmissionAllowed];

  if (!v9)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "SelfSamplingCalculator#permitted: false due to D&U exclusion", v13, 2u);
    goto LABEL_13;
  }

  if (!sub_266424E00())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v6, v14, v0);
    v11 = sub_2664DFE18();
    v15 = sub_2664E06E8();
    if (!os_log_type_enabled(v11, v15))
    {
      v4 = v6;
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v15, "SelfSamplingCalculator#permitted: false due recent record saved", v13, 2u);
    v4 = v6;
LABEL_13:
    MEMORY[0x266784AD0](v13, -1, -1);
LABEL_15:

    (*(v1 + 8))(v4, v0);
    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 1;
  return v7;
}

BOOL sub_266424E00()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE428();
  sub_2664DE388();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if (v9 < 21600.0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v10, v0);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x40D5180000000000;
      _os_log_impl(&dword_26629C000, v11, v12, "SelfSamplingCalculator#hasEnoughTimeElapsed: it has been less than %f seconds since the last record was emitted, so skipping", v13, 0xCu);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v9 >= 21600.0;
}

uint64_t type metadata accessor for SelfSamplingCalculator(uint64_t a1)
{
  result = qword_280073798;
  if (!qword_280073798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266425110(uint64_t a1)
{
  result = sub_2664DE438();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26642517C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266784AF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266784AF0](&v3, 8);
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

uint64_t DarwinNotification.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DarwinNotification.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_266425254(uint64_t a1)
{
  v51 = a1;
  v2 = sub_2664DFE38();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  isEscapingClosureAtFileLocation = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v45 - v6;
  v46 = sub_2664E0018();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_2664E00E8();
  v10 = *(v45 - 8);
  v11 = MEMORY[0x28223BE20](v45);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v16)
  {
    v17 = v16;
    v18 = dispatch_semaphore_create(0);
    v48 = v1;
    v19 = v17;
    v20 = sub_2664E02A8();
    CFNotificationCenterAddObserver(v19, v18, sub_266425920, v20, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_2664E00C8();
    *v9 = v51;
    v21 = v46;
    (*(v7 + 104))(v9, *MEMORY[0x277D85178], v46);
    MEMORY[0x266783140](v13, v9);
    v22 = v9;
    v23 = v18;
    (*(v7 + 8))(v22, v21);
    v24 = *(v10 + 8);
    v25 = v45;
    v24(v13, v45);
    sub_2664E0868();
    v24(v15, v25);
    v26 = sub_2664E0028();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = v50;
    v28 = __swift_project_value_buffer(v50, qword_280F914F0);
    swift_beginAccess();
    v29 = v49;
    v30 = v47;
    (*(v49 + 16))(v47, v28, v27);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = v26 & 1;
      _os_log_impl(&dword_26629C000, v31, v32, "DarwinNotification#waitWithTimeout Was notification received? %{BOOL}d", v33, 8u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v29 + 8))(v30, v27);
    sub_2664259E0();
    v34 = sub_2664E07C8();
    v35 = swift_allocObject();
    v35[2] = v19;
    v35[3] = v23;
    v35[4] = v48;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_266425A2C;
    *(v36 + 24) = v35;
    aBlock[4] = sub_2662AA56C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662ABACC;
    aBlock[3] = &block_descriptor_39;
    v37 = _Block_copy(aBlock);
    v38 = v19;

    dispatch_sync(v34, v37);

    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26 & 1;
    }

    __break(1u);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v40 = v50;
  v41 = __swift_project_value_buffer(v50, qword_280F914F0);
  swift_beginAccess();
  (*(v49 + 16))(isEscapingClosureAtFileLocation, v41, v40);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06D8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26629C000, v42, v43, "DarwinNotification#waitWithTimeout darwinCenter not available", v44, 2u);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  (*(v49 + 8))(isEscapingClosureAtFileLocation, v50);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

void sub_266425928(__CFNotificationCenter *a1, const void *a2, uint64_t a3)
{
  v5 = sub_2664E02A8();
  CFNotificationCenterRemoveObserver(a1, a2, v5, 0);
}

uint64_t DarwinNotification.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2664259E0()
{
  result = qword_280F8F5C0;
  if (!qword_280F8F5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F5C0);
  }

  return result;
}

void sub_266425AAC(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2664DFE18();
    v11 = sub_2664E06C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26629C000, v10, v11, "DarwinNotification#waitWithTimeout#callback darwin notification received", v12, 2u);
      MEMORY[0x266784AD0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v13 = a1;
    sub_2664E0888();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v8, v14, v2);
    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26629C000, v15, v16, "DarwinNotification#callback Observer for darwin callback handler not found", v17, 2u);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_266425D8C()
{
  type metadata accessor for MediaRemoteAPIProvider();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_2800737C0 = result;
  return result;
}

double static MediaRemoteAPIProvider.shared.getter()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_266425E20()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000039, 0x80000002664F8CE0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800737C8 = v8;
  return result;
}

id static MediaRemoteAPIProvider.queue.getter()
{
  if (qword_280071C40 != -1)
  {
    swift_once();
  }

  v1 = qword_2800737C8;

  return v1;
}

uint64_t sub_266426018(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v15, v8);
    v16 = a2;
    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v39 = a3;
      v22 = v21;
      v42 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v41[0] = sub_2664E0DE8();
      v41[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v24 = sub_2664E0318();
      v26 = sub_2662A320C(v24, v25, &v42);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_26629C000, v17, v18, "MediaRemoteAPIProvider#getStateInfo Unexpected error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v27 = v22;
      a3 = v39;
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a1 = 0;
  }

  else
  {
    v40 = a4;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v14, v28, v8);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = a3;
      v33 = v32;
      v41[0] = v32;
      *v31 = 136315138;
      LODWORD(v42) = a1;
      v34 = sub_2664E0D48();
      v36 = sub_2662A320C(v34, v35, v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26629C000, v29, v30, "MediaRemoteAPIProvider#getStateInfo Now Playing state: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v37 = v33;
      a3 = v39;
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
  }

  return a3(a1);
}

void sub_26642643C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_2664264B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_266429784(a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_266429F74;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26633283C;
  v12[3] = &block_descriptor_40;
  v11 = _Block_copy(v12);

  [v9 requestClientPropertiesOnQueue:a1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2664265DC(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v63[-v13];
  if (a2 || !a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v20, v8);
    v21 = a2;
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();

    if (os_log_type_enabled(v22, v23))
    {
      v74 = a4;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v78 = v25;
      *v24 = 136315138;
      v73 = v8;
      if (a2)
      {
        swift_getErrorValue();
        v26 = sub_2664E0DE8();
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v76 = v26;
      v77 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v60 = sub_2664E0318();
      v62 = sub_2662A320C(v60, v61, &v78);

      *(v24 + 4) = v62;
      _os_log_impl(&dword_26629C000, v22, v23, "MediaRemoteAPIProvider#getAppInfo Unexpected nil client properties or error: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);

      (*(v9 + 8))(v12, v73);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return (a3)(0, 0, 0, 0, 0, 0, a2);
  }

  else
  {
    v15 = a1;
    v16 = [v15 displayName];
    if (v16)
    {
      v17 = v16;
      v72 = sub_2664E02C8();
      v19 = v18;
    }

    else
    {
      v72 = 0;
      v19 = 0;
    }

    v28 = [v15 bundleIdentifier];
    if (v28)
    {
      v29 = v28;
      v71 = sub_2664E02C8();
      v31 = v30;
    }

    else
    {
      v71 = 0;
      v31 = 0;
    }

    v75 = a3;
    v32 = [v15 representedBundleID];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2664E02C8();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v70 = v34;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v14, v37, v8);

    v69 = v14;
    v38 = sub_2664DFE18();
    v39 = sub_2664E06C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v73 = v8;
      v41 = v40;
      v67 = swift_slowAlloc();
      v77 = v31;
      v78 = v67;
      *v41 = 136315650;
      v42 = v71;
      v76 = v71;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v68 = v15;
      v43 = sub_2664E0318();
      v64 = v39;
      v44 = v31;
      v65 = v38;
      v46 = sub_2662A320C(v43, v45, &v78);
      v66 = v9;
      v74 = a4;
      v47 = v46;

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v48 = v70;
      v76 = v70;
      v77 = v36;

      v49 = sub_2664E0318();
      v51 = sub_2662A320C(v49, v50, &v78);

      *(v41 + 14) = v51;
      *(v41 + 22) = 2080;
      v52 = v72;
      v76 = v72;
      v77 = v19;

      v53 = sub_2664E0318();
      v55 = sub_2662A320C(v53, v54, &v78);
      v56 = v42;

      *(v41 + 24) = v55;
      v15 = v68;
      v57 = v65;
      _os_log_impl(&dword_26629C000, v65, v64, "MediaRemoteAPIProvider#getAppInfo Now Playing bundleId:%s, representedBundleId:%s and displayName:%s", v41, 0x20u);
      v58 = v67;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      (*(v66 + 8))(v69, v73);
    }

    else
    {

      (*(v9 + 8))(v69, v8);
      v56 = v71;
      v52 = v72;
      v44 = v31;
      v48 = v70;
    }

    v75(v52, v19, v56, v44, v48, v36, 0);
  }
}

void sub_266426C88(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a4;
  v13 = sub_266429A04();
  v14 = sub_266429784(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v12;
  *(v15 + 40) = v7;
  v17[4] = sub_266429F7C;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26633283C;
  v17[3] = &block_descriptor_6_1;
  v16 = _Block_copy(v17);

  [v13 performRequestForDestination:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_266426DBC(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v84 = a1;
  v86 = a4;
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  MEMORY[0x28223BE20](v85);
  v16 = &v78 - v15;
  v17 = type metadata accessor for NowPlayingInfo(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2664DFE38();
  v20 = *(v88 - 1);
  v21 = MEMORY[0x28223BE20](v88);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - v26;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = v88;
    v29 = __swift_project_value_buffer(v88, qword_280F914F0);
    swift_beginAccess();
    (*(v20 + 16))(v23, v29, v28);
    v30 = a2;
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v90 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v89[0] = sub_2664E0DE8();
      v89[1] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v36 = sub_2664E0318();
      v38 = sub_2662A320C(v36, v37, &v90);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26629C000, v31, v32, "MediaRemoteAPIProvider#getItemInfo Unexpected error: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v20 + 8))(v23, v28);
    *v16 = 1;
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v87(v16);
    return sub_2662A9238(v16, qword_280073800, &unk_2664ED310);
  }

  v79 = v17;
  v80 = v11;
  v40 = v83;
  v81 = v19;
  v82 = v9;
  if (!v84)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = v88;
    v55 = __swift_project_value_buffer(v88, qword_280F914F0);
    swift_beginAccess();
    (*(v20 + 16))(v27, v55, v54);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06D8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26629C000, v56, v57, "MediaRemoteAPIProvider#getItemInfo Nil playbackQueue means nothing is playing", v58, 2u);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    (*(v20 + 8))(v27, v88);
    v59 = sub_2664DE438();
    v60 = *(*(v59 - 8) + 56);
    v60(v14, 1, 1, v59);
    v61 = sub_2664DE268();
    v62 = *(*(v61 - 8) + 56);
    v88 = v14;
    v63 = v80;
    v62(v80, 1, 1, v61);
    v62(v82, 1, 1, v61);
    v64 = v79;
    v78 = *(v79 + 96);
    v60(&v16[v78], 1, 1, v59);
    v65 = &v16[v64[25]];
    v66 = &v16[v64[26]];
    v84 = v64[27];
    v62(&v16[v84], 1, 1, v61);
    v83 = v64[28];
    v62(&v16[v83], 1, 1, v61);
    v67 = &v16[v64[29]];
    v68 = &v16[v64[30]];
    v69 = v64[32];
    v81 = v64[31];
    v70 = &v16[v69];
    v71 = v64[33];
    v79 = v64[34];
    v72 = &v16[v71];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *(v16 + 8) = 0;
    v16[72] = 1;
    *(v16 + 10) = 0;
    v16[88] = 1;
    *(v16 + 12) = 0;
    v16[104] = 1;
    *(v16 + 14) = 0;
    *(v16 + 15) = 0;
    *(v16 + 16) = 0;
    v16[136] = 1;
    *(v16 + 137) = 514;
    v16[139] = 2;
    *(v16 + 35) = 0;
    v16[144] = 1;
    *(v16 + 19) = 0;
    v16[160] = 1;
    *(v16 + 21) = 0;
    v16[176] = 1;
    *(v16 + 23) = 0;
    v16[192] = 1;
    *(v16 + 25) = 0;
    v16[208] = 1;
    *(v16 + 27) = 0;
    v16[224] = 1;
    *(v16 + 29) = 0;
    v16[240] = 1;
    *(v16 + 31) = 0;
    v16[256] = 1;
    sub_26642A7B0(v88, &v16[v78], &qword_2800737D0, qword_2664E4FD0);
    *v65 = 0;
    *(v65 + 1) = 0;
    *v66 = 0;
    *(v66 + 1) = 0;
    sub_26642A7B0(v63, &v16[v84], &qword_280072BC0, &qword_2664E6030);
    sub_26642A7B0(v82, &v16[v83], &qword_280072BC0, &qword_2664E6030);
    *v67 = 0;
    *(v67 + 1) = 0;
    *v68 = 0;
    v68[8] = 1;
    v16[v81] = 2;
    *v70 = 0;
    *(v70 + 1) = 0;
    *v72 = 0;
    *(v72 + 1) = 0;
    v16[v79] = 2;
    goto LABEL_7;
  }

  v41 = v25;
  v42 = qword_280F914E8;
  v43 = v84;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = v88;
  v45 = __swift_project_value_buffer(v88, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v41, v45, v44);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v89[0] = v84;
    *v48 = 136315138;
    LOBYTE(v90) = v40;
    v49 = sub_2664E0318();
    v51 = v43;
    v52 = sub_2662A320C(v49, v50, v89);

    *(v48 + 4) = v52;
    v43 = v51;
    _os_log_impl(&dword_26629C000, v46, v47, "MediaRemoteAPIProvider#getItemInfo Queue Position:%s", v48, 0xCu);
    v53 = v84;
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    (*(v20 + 8))(v41, v88);
  }

  else
  {

    (*(v20 + 8))(v41, v44);
  }

  v73 = [v43 contentItemWithOffset_];
  v74 = v73;
  v75 = v81;
  if (v73 && (v76 = v73, v77 = [v76 metadata], v76, v77))
  {
    sub_266427CD8(v77, v75);
    sub_26642A818(v75, v16);
    swift_storeEnumTagMultiPayload();
    v87(v16);
  }

  else
  {
    sub_266427808(v75);
    sub_26642A818(v75, v16);
    swift_storeEnumTagMultiPayload();
    v87(v16);
  }

  sub_2662A9238(v16, qword_280073800, &unk_2664ED310);
  return sub_26642A87C(v75);
}

uint64_t sub_266427808@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v33 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "MediaRemoteAPIProvider#getNowPlayingInfoWithNoAppProvidedData", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v17 = sub_2664DE438();
  v18 = *(*(v17 - 8) + 56);
  v18(v38, 1, 1, v17);
  v19 = sub_2664DE268();
  v20 = *(*(v19 - 8) + 56);
  v20(v39, 1, 1, v19);
  v20(v5, 1, 1, v19);
  v21 = type metadata accessor for NowPlayingInfo(0);
  v37 = v5;
  v22 = v21[24];
  v18(a1 + v22, 1, 1, v17);
  v23 = (a1 + v21[25]);
  v24 = (a1 + v21[26]);
  v36 = v21[27];
  v20(a1 + v36, 1, 1, v19);
  v35 = v21[28];
  v20(a1 + v35, 1, 1, v19);
  v25 = (a1 + v21[29]);
  v26 = a1 + v21[30];
  v27 = v21[32];
  v34 = v21[31];
  v28 = (a1 + v27);
  v29 = v21[33];
  v33 = v21[34];
  v30 = (a1 + v29);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 1;
  *(a1 + 137) = 514;
  *(a1 + 139) = 2;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  sub_26642A7B0(v38, a1 + v22, &qword_2800737D0, qword_2664E4FD0);
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  sub_26642A7B0(v39, a1 + v36, &qword_280072BC0, &qword_2664E6030);
  result = sub_26642A7B0(v37, a1 + v35, &qword_280072BC0, &qword_2664E6030);
  *v25 = 0;
  v25[1] = 0;
  *v26 = 0;
  *(v26 + 8) = 1;
  v32 = v33;
  *(a1 + v34) = 2;
  *v28 = 0;
  v28[1] = 0;
  *v30 = 0;
  v30[1] = 0;
  *(a1 + v32) = 1;
  return result;
}

uint64_t sub_266427CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = type metadata accessor for NowPlayingInfo(0);
  v4 = MEMORY[0x28223BE20](v170);
  v127 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v166 = &v126 - v6;
  v7 = sub_2664DFE38();
  v168 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v173 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v172 = &v126 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v126 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v176 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v126 - v21;
  MEMORY[0x28223BE20](v20);
  v175 = &v126 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v171 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v126 - v28;
  MEMORY[0x28223BE20](v27);
  v174 = &v126 - v30;
  v31 = [a1 title];
  if (v31)
  {
    v32 = v31;
    v165 = sub_2664E02C8();
    v164 = v33;
  }

  else
  {
    v165 = 0;
    v164 = 0;
  }

  v34 = [a1 trackArtistName];
  if (v34)
  {
    v35 = v34;
    v163 = sub_2664E02C8();
    v162 = v36;
  }

  else
  {
    v163 = 0;
    v162 = 0;
  }

  v37 = [a1 albumName];
  if (v37)
  {
    v38 = v37;
    v161 = sub_2664E02C8();
    v160 = v39;
  }

  else
  {
    v161 = 0;
    v160 = 0;
  }

  LODWORD(v145) = [a1 hasITunesStoreIdentifier];
  if (v145)
  {
    v159 = [a1 iTunesStoreIdentifier];
  }

  else
  {
    v159 = 0;
  }

  LODWORD(v144) = [a1 hasITunesStoreAlbumIdentifier];
  if (v144)
  {
    v158 = [a1 iTunesStoreAlbumIdentifier];
  }

  else
  {
    v158 = 0;
  }

  v138 = [a1 hasITunesStoreArtistIdentifier];
  if (v138)
  {
    v157 = [a1 iTunesStoreArtistIdentifier];
  }

  else
  {
    v157 = 0;
  }

  v40 = [a1 contentIdentifier];
  v169 = v7;
  if (v40)
  {
    v41 = v40;
    v156 = sub_2664E02C8();
    v155 = v42;
  }

  else
  {
    v156 = 0;
    v155 = 0;
  }

  v43 = [a1 hasLegacyUniqueIdentifier];
  if (v43)
  {
    v154 = [a1 legacyUniqueIdentifier];
  }

  else
  {
    v154 = 0;
  }

  v153 = [a1 isExplicitItem];
  v152 = [a1 isLiked];
  v151 = [a1 lyricsAvailable];
  [a1 playbackProgress];
  v45 = v44;
  v150 = [a1 playCount];
  v149 = [a1 totalTrackCount];
  [a1 duration];
  v47 = v46;
  v148 = [a1 seasonNumber];
  v147 = [a1 episodeNumber];
  v146 = [a1 trackNumber];
  v48 = [a1 releaseDate];
  if (v48)
  {
    v49 = v48;
    sub_2664DE3F8();

    v50 = sub_2664DE438();
    (*(*(v50 - 8) + 56))(v29, 0, 1, v50);
  }

  else
  {
    v51 = sub_2664DE438();
    (*(*(v51 - 8) + 56))(v29, 1, 1, v51);
  }

  sub_266319B8C(v29, v174, &qword_2800737D0, qword_2664E4FD0);
  v52 = [a1 composer];
  if (v52)
  {
    v53 = v52;
    v143 = sub_2664E02C8();
    v142 = v54;
  }

  else
  {
    v143 = 0;
    v142 = 0;
  }

  v55 = [a1 genre];
  if (v55)
  {
    v56 = v55;
    v141 = sub_2664E02C8();
    v140 = v57;
  }

  else
  {
    v141 = 0;
    v140 = 0;
  }

  v167 = v9;
  v58 = [a1 lyricsURL];
  if (v58)
  {
    v59 = v58;
    sub_2664DE218();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = sub_2664DE268();
  v62 = 1;
  v63 = v60;
  v64 = *(*(v61 - 8) + 56);
  v64(v22, v63, 1, v61);
  sub_266319B8C(v22, v175, &qword_280072BC0, &qword_2664E6030);
  v65 = [a1 artworkURL];
  if (v65)
  {
    v66 = v65;
    sub_2664DE218();

    v62 = 0;
  }

  v64(v17, v62, 1, v61);
  sub_266319B8C(v17, v176, &qword_280072BC0, &qword_2664E6030);
  v67 = [a1 albumYear];
  if (v67)
  {
    v68 = v67;
    v139 = sub_2664E02C8();
    v137 = v69;
  }

  else
  {
    v139 = 0;
    v137 = 0;
  }

  v136 = [a1 mediaType];
  v135 = [a1 isLoading];
  v70 = [a1 collectionInfo];
  if (!v70)
  {
    goto LABEL_54;
  }

  v71 = v70;
  v72 = sub_2664E01C8();

  v177 = 0xD000000000000037;
  v178 = 0x80000002664F8BA0;
  sub_2664E0AB8();
  if (!*(v72 + 16) || (v73 = sub_26634D9F8(v179), (v74 & 1) == 0))
  {

    sub_266350284(v179);
LABEL_54:
    v81 = 0;
    v79 = 0;
    v82 = 0xE000000000000000;
LABEL_55:
    v80 = 0xE000000000000000;
    goto LABEL_56;
  }

  sub_2662A01E8(*(v72 + 56) + 32 * v73, &v180);
  sub_266350284(v179);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_54;
  }

  v76 = v177;
  v75 = v178;
  if ((v177 != 0xD00000000000003CLL || 0x80000002664F8BE0 != v178) && (sub_2664E0D88() & 1) == 0)
  {
    if (v76 == 0xD000000000000039 && 0x80000002664F8C20 == v75)
    {
    }

    else
    {
      v123 = sub_2664E0D88();

      if ((v123 & 1) == 0)
      {

        v81 = 0;
        v79 = 0;
        v82 = 0xE000000000000000;
        v80 = 0xE000000000000000;
        goto LABEL_56;
      }
    }

    v180 = 0xD00000000000002ELL;
    v181 = 0x80000002664F8C60;
    sub_2664E0AB8();
    if (*(v72 + 16) && (v124 = sub_26634D9F8(v179), (v125 & 1) != 0))
    {
      sub_2662A01E8(*(v72 + 56) + 32 * v124, &v180);
      sub_266350284(v179);

      if (swift_dynamicCast())
      {
        v81 = v177;
        v82 = v178;
LABEL_84:
        v79 = 0;
        goto LABEL_55;
      }
    }

    else
    {

      sub_266350284(v179);
    }

    v81 = 0;
    v82 = 0xE000000000000000;
    goto LABEL_84;
  }

  v180 = 0xD00000000000002ELL;
  v181 = 0x80000002664F8C60;
  sub_2664E0AB8();
  if (*(v72 + 16) && (v77 = sub_26634D9F8(v179), (v78 & 1) != 0))
  {
    sub_2662A01E8(*(v72 + 56) + 32 * v77, &v180);
    sub_266350284(v179);

    if (swift_dynamicCast())
    {
      v79 = v177;
      v80 = v178;
    }

    else
    {
      v79 = 0;
      v80 = 0xE000000000000000;
    }
  }

  else
  {

    sub_266350284(v179);
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  v81 = 0;
  v82 = 0xE000000000000000;
LABEL_56:
  v132 = v145 ^ 1;
  v133 = v144 ^ 1;
  v134 = v138 ^ 1;
  v138 = v43 ^ 1;
  sub_2662A7224(v174, v171, &qword_2800737D0, qword_2664E4FD0);
  sub_2662A7224(v175, v172, &qword_280072BC0, &qword_2664E6030);
  sub_2662A7224(v176, v173, &qword_280072BC0, &qword_2664E6030);
  if (!v79 && v80 == 0xE000000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    v79 = 0;
    v80 = 0;
  }

  v145 = v79;
  v144 = v80;
  if (!v81 && v82 == 0xE000000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    v131 = 0;
    v130 = 0;
  }

  else
  {
    v131 = v81;
    v130 = v82;
  }

  v83 = v170;
  v84 = *(v170 + 96);
  v85 = sub_2664DE438();
  (*(*(v85 - 8) + 56))(a2 + v84, 1, 1, v85);
  v86 = (a2 + v83[25]);
  v87 = (a2 + v83[26]);
  v88 = v83[27];
  v64((a2 + v88), 1, 1, v61);
  v89 = v61;
  v90 = v83[28];
  v64((a2 + v90), 1, 1, v89);
  v91 = v83[29];
  v92 = v83[30];
  v129 = v83[31];
  v93 = v83[32];
  v94 = v83[33];
  v128 = v83[34];
  v95 = v164;
  *a2 = v165;
  *(a2 + 8) = v95;
  v96 = v162;
  *(a2 + 16) = v163;
  *(a2 + 24) = v96;
  v97 = v160;
  *(a2 + 48) = v161;
  *(a2 + 56) = v97;
  *(a2 + 64) = v159;
  *(a2 + 72) = v132;
  *(a2 + 80) = v158;
  *(a2 + 88) = v133;
  *(a2 + 96) = v157;
  *(a2 + 104) = v134;
  v98 = v155;
  *(a2 + 112) = v156;
  *(a2 + 120) = v98;
  *(a2 + 128) = v154;
  *(a2 + 136) = v138;
  *(a2 + 137) = v153;
  *(a2 + 138) = v152;
  *(a2 + 139) = v151;
  *(a2 + 160) = 1;
  *(a2 + 168) = v150;
  *(a2 + 184) = v149;
  *(a2 + 216) = v148;
  *(a2 + 232) = v147;
  *(a2 + 248) = v146;
  v99 = (a2 + v91);
  v100 = a2 + v92;
  v101 = (a2 + v93);
  v102 = (a2 + v94);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 140) = v45;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = v47;
  *(a2 + 208) = 0;
  *(a2 + 224) = 0;
  *(a2 + 240) = 0;
  *(a2 + 256) = 0;
  sub_26642A7B0(v171, a2 + v84, &qword_2800737D0, qword_2664E4FD0);
  v103 = v142;
  *v86 = v143;
  v86[1] = v103;
  v104 = v140;
  *v87 = v141;
  v87[1] = v104;
  sub_26642A7B0(v172, a2 + v88, &qword_280072BC0, &qword_2664E6030);
  sub_26642A7B0(v173, a2 + v90, &qword_280072BC0, &qword_2664E6030);
  v105 = v137;
  *v99 = v139;
  v99[1] = v105;
  *v100 = v136;
  *(v100 + 8) = 0;
  *(a2 + v129) = v135;
  v106 = v144;
  *v101 = v145;
  v101[1] = v106;
  v107 = v130;
  *v102 = v131;
  v102[1] = v107;
  *(a2 + v128) = 0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v108 = v169;
  v109 = __swift_project_value_buffer(v169, qword_280F914F0);
  swift_beginAccess();
  v110 = v168;
  v111 = v167;
  (*(v168 + 16))(v167, v109, v108);
  v112 = a2;
  v113 = v166;
  sub_26642A818(v112, v166);
  v114 = sub_2664DFE18();
  v115 = sub_2664E06C8();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v180 = v117;
    *v116 = 136315138;
    sub_26642A818(v113, v127);
    v118 = sub_2664E0318();
    v120 = v119;
    sub_26642A87C(v113);
    v121 = sub_2662A320C(v118, v120, &v180);

    *(v116 + 4) = v121;
    _os_log_impl(&dword_26629C000, v114, v115, "MediaRemoteAPIProvider#getNowPlayingInfoWithItemMetadataPopulated %s", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    MEMORY[0x266784AD0](v117, -1, -1);
    MEMORY[0x266784AD0](v116, -1, -1);
  }

  else
  {

    sub_26642A87C(v113);
  }

  (*(v110 + 8))(v111, v108);
  sub_2662A9238(v176, &qword_280072BC0, &qword_2664E6030);
  sub_2662A9238(v175, &qword_280072BC0, &qword_2664E6030);
  return sub_2662A9238(v174, &qword_2800737D0, qword_2664E4FD0);
}

uint64_t sub_266428F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_266428F68()
{
  v1 = v0;
  v2 = [objc_opt_self() quickControlsControllerWithDelegate_];
  v3 = [v2 acquireQuickControlsAssertion];
  v4 = sub_2664E02C8();
  v6 = v5;

  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_26634FAB8(v2, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v9;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v4;
}

void sub_26642906C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_2662A3E98(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_unknownObjectRetain();

      [v8 releaseQuickControlsAssertion];
      swift_beginAccess();

      sub_266449158(0, a1, a2);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_26642918C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26642924C;
  v5[3] = &block_descriptor_9_2;
  v4 = _Block_copy(v5);

  MRAVReconnaissanceSessionBeginSearch();
  _Block_release(v4);
}

void sub_26642924C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t MediaRemoteAPIProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_266429340(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_266429784(a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_26642AA14;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26633283C;
  v12[3] = &block_descriptor_34_1;
  v11 = _Block_copy(v12);

  [v9 requestClientPropertiesOnQueue:a1 completion:v11];
  _Block_release(v11);
}

void sub_266429468(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *a4;
  v13 = sub_266429A04();
  v14 = sub_266429784(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;
  v17[4] = sub_26642AA10;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26633283C;
  v17[3] = &block_descriptor_27;
  v16 = _Block_copy(v17);

  [v13 performRequestForDestination:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_26642959C()
{
  v1 = *v0;
  v2 = [objc_opt_self() quickControlsControllerWithDelegate_];
  v3 = [v2 acquireQuickControlsAssertion];
  v4 = sub_2664E02C8();
  v6 = v5;

  swift_beginAccess();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_26634FAB8(v2, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v9;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v4;
}

void sub_2664296C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_26642924C;
  v5[3] = &block_descriptor_20;
  v4 = _Block_copy(v5);

  MRAVReconnaissanceSessionBeginSearch();
  _Block_release(v4);
}

id sub_266429784(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() localDestination];
  if (a2)
  {
    v18 = result;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v9, v4);

    v10 = sub_2664DFE18();
    v11 = sub_2664E06C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2662A320C(a1, a2, &v19);
      _os_log_impl(&dword_26629C000, v10, v11, "MediaRemoteAPIProvider#getMRDestination outputDeviceUID:%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266784AD0](v13, -1, -1);
      MEMORY[0x266784AD0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = objc_allocWithZone(MEMORY[0x277D27988]);
    v15 = sub_2664E02A8();
    v16 = [v14 initWithOutputDeviceUID_];

    return v16;
  }

  return result;
}

id sub_266429A04()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "MediaRemoteAPIProvider#getMRPlaybackQueueRequest Initializing MRPlaybackQueueRequest", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = [objc_allocWithZone(MEMORY[0x277D279D8]) initWithRange_];
  [v8 setIncludeMetadata_];
  return v8;
}

void sub_266429BE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v32 = v13;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v11;
    v18 = v17;
    v30 = swift_slowAlloc();
    v33 = v30;
    aBlock = a2;
    *v18 = 136315138;
    v35 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v19 = sub_2664E0318();
    v29 = v10;
    v21 = a3;
    v22 = a4;
    v23 = sub_2662A320C(v19, v20, &v33);

    *(v18 + 4) = v23;
    a4 = v22;
    a3 = v21;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaRemoteAPIProvider#getStateInfo outputDeviceUID: %s...", v18, 0xCu);
    v24 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v31 + 8))(v32, v29);
  }

  else
  {

    (*(v11 + 8))(v32, v10);
  }

  v25 = sub_266429784(a2, a3);
  v26 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  v38 = sub_26642A9E4;
  v39 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_26642643C;
  v37 = &block_descriptor_52_0;
  v28 = _Block_copy(&aBlock);

  [v26 requestPlaybackStateOnQueue:a1 completion:v28];
  _Block_release(v28);
}

void sub_266429F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737E0, &qword_2664EC7D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = sub_2664E02A8();
  v7 = *MEMORY[0x277D27DC0];
  *(inited + 40) = *MEMORY[0x277D27DC0];
  v8 = v7;
  sub_266386598(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &qword_2800737E8, qword_2664EC7D8);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
  sub_26642A98C();
  v9 = sub_2664E01A8();

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2664B740C;
  v11[3] = &block_descriptor_46_0;
  v10 = _Block_copy(v11);

  MRMediaRemoteSendCommandWithReply();
  _Block_release(v10);
}

void sub_26642A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_2664E02C8();
  }

  v6 = objc_opt_self();

  v7 = sub_2664E02A8();

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_26642A964;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_266428F14;
  v10[3] = &block_descriptor_43;
  v9 = _Block_copy(v10);

  [v6 shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:v7 completion:v9];
  _Block_release(v9);
}

id sub_26642A28C()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() auxiliarySession];
  v1 = *MEMORY[0x277CB8030];
  v5[0] = 0;
  if ([v0 setCategory:v1 error:v5])
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  return v0;
}

void sub_26642A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D279F8]) init];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v12[0] = 0;
    sub_26642A918();
    sub_2664E0498();
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D279A8]) initWithRequestDetails:v7 type:3 outputDevices:v8];

  [v9 setSuppressErrorDialog_];
  v10 = [objc_opt_self() sharedLocalEndpoint];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2663CE9D8;
  v12[3] = &block_descriptor_37;
  v11 = _Block_copy(v12);

  [v10 modifyTopologyWithRequest:v9 withReplyQueue:a2 completion:v11];
  _Block_release(v11);
}

uint64_t sub_26642A7B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26642A818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26642A87C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26642A918()
{
  result = qword_2800737D8;
  if (!qword_2800737D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800737D8);
  }

  return result;
}

unint64_t sub_26642A98C()
{
  result = qword_280071F78;
  if (!qword_280071F78)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280071F78);
  }

  return result;
}

unint64_t ResolutionResultType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x6E49746F4E707041;
    if (v1 == 10)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0xD000000000000019;
    if (v1 != 7)
    {
      v9 = 0x656C655372657355;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
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
    v2 = 0x746C7561666544;
    v3 = 0xD000000000000014;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000017;
    }

    v4 = 0xD000000000000012;
    if (v1 == 1)
    {
      v4 = 0x6465727265666E49;
    }

    if (*v0)
    {
      v2 = v4;
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
}

SiriAudioSupport::ResolutionResultType_optional __swiftcall ResolutionResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResolutionResultType.explicitlySelectedByUser.getter()
{
  if (ResolutionResultType.rawValue.getter() != 0xD000000000000012 || 0x80000002664F3120 != v0)
  {
    v2 = sub_2664E0D88();

    if (v2)
    {
      v1 = 1;
      return v1 & 1;
    }

    if (ResolutionResultType.rawValue.getter() != 0x656C655372657355 || v3 != 0xEC00000064657463)
    {
      v1 = sub_2664E0D88();

      return v1 & 1;
    }
  }

  v1 = 1;
  return v1 & 1;
}

uint64_t sub_26642AD94()
{
  v0 = ResolutionResultType.rawValue.getter();
  v2 = v1;
  if (v0 == ResolutionResultType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2664E0D88();
  }

  return v5 & 1;
}

uint64_t sub_26642AE30()
{
  sub_2664E0E68();
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26642AE98(uint64_t a1)
{
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_26642AEFC(uint64_t a1)
{
  sub_2664E0E68();
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26642AF6C@<X0>(unint64_t *a1@<X8>)
{
  result = ResolutionResultType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}