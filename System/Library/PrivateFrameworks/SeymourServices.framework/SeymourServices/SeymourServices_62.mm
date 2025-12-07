uint64_t sub_2275034F0(uint64_t a1, char a2)
{
  *(v3 + 456) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_227662940();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_227662750();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v6 = sub_227663FA0();
  *(v3 + 136) = v6;
  *(v3 + 144) = *(v6 - 8);
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_227665010();
  *(v3 + 160) = v7;
  *(v3 + 168) = *(v7 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v8 = sub_22766B390();
  *(v3 + 192) = v8;
  *(v3 + 200) = *(v8 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v3 + 272) = v9;
  *(v3 + 280) = *(v9 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v3 + 304) = swift_task_alloc();
  v10 = sub_227665030();
  *(v3 + 312) = v10;
  *(v3 + 320) = *(v10 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275038E0, 0, 0);
}

uint64_t sub_2275038E0(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[37];
  v4 = v1[33];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[7];
  sub_22766A730();
  sub_22766B370();
  v8 = *(v6 + 8);
  v1[43] = v8;
  v1[44] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  v9 = v7[20];
  v10 = v7[21];
  __swift_project_boxed_opaque_existential_0(v7 + 17, v9);

  sub_226ECF5D8(sub_2275079E4, v7, v9, v3, v10, v2);

  v11 = swift_task_alloc();
  v1[45] = v11;
  *(v11 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v11 + 24) = 42;
  *(v11 + 32) = 2;
  *(v11 + 40) = 172;
  *(v11 + 48) = v2;
  v12 = swift_task_alloc();
  v1[46] = v12;
  *v12 = v1;
  v12[1] = sub_227503AB4;
  v14 = v1[37];
  v13 = v1[38];

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275079FC, v11, v14);
}

uint64_t sub_227503AB4()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_227504268;
  }

  else
  {
    (*(v2[35] + 8))(v2[36], v2[34]);
    v3 = sub_227503C04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227503C04()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226E97D1C(v3, &qword_27D7BA3A8, &qword_22767B360);
    sub_22766A730();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[43];
    v8 = v0[26];
    v9 = v0[24];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncEvaluator] No sync anchor, sync required", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    v7(v8, v9);
    goto LABEL_17;
  }

  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  (*(v2 + 32))(v0[42], v3, v1);
  sub_227665020();
  v15 = *(v14 + 104);
  v15(v12, *MEMORY[0x277D512C0], v13);
  sub_22750799C(&qword_28139B890, MEMORY[0x277D512C8], MEMORY[0x277D512D0]);
  v16 = sub_22766BFB0();
  v17 = *(v14 + 8);
  v17(v12, v13);
  v17(v11, v13);
  if (v16)
  {
    v18 = sub_227667AF0();
    v20 = v19;
    if (v18 == sub_227667AF0() && v20 == v21)
    {

      goto LABEL_13;
    }

    v38 = sub_22766D190();

    if (v38)
    {
LABEL_13:
      sub_22766A730();
      v27 = sub_22766B380();
      v28 = sub_22766C8B0();
      v39 = os_log_type_enabled(v27, v28);
      v30 = v0[43];
      v31 = v0[42];
      v32 = v0[39];
      v33 = v0[40];
      v34 = v0[27];
      v35 = v0[24];
      if (v39)
      {
        v47 = v0[42];
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "[CatalogSyncEvaluator] Previous sync failed and priority is foreground, sync required";
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    __swift_project_boxed_opaque_existential_0((v0[7] + 16), *(v0[7] + 40));
    v43 = sub_22766A880();
    v45 = v44;
    v0[53] = v44;
    v46 = swift_task_alloc();
    v0[54] = v46;
    *v46 = v0;
    v46[1] = sub_227504E80;

    return sub_22709DD14(v43, v45);
  }

  else
  {
    v22 = v15;
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[20];
    sub_227665020();
    v22(v24, *MEMORY[0x277D512B8], v25);
    v26 = sub_22766BFB0();
    v17(v24, v25);
    v17(v23, v25);
    if (v26)
    {
      sub_22766A730();
      v27 = sub_22766B380();
      v28 = sub_22766C8B0();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[43];
      v31 = v0[42];
      v32 = v0[39];
      v33 = v0[40];
      v34 = v0[31];
      v35 = v0[24];
      if (v29)
      {
        v47 = v0[42];
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "[CatalogSyncEvaluator] Anchor status indicates reset requested, sync required";
LABEL_15:
        _os_log_impl(&dword_226E8E000, v27, v28, v37, v36, 2u);
        MEMORY[0x22AA9A450](v36, -1, -1);

        v30(v34, v35);
        (*(v33 + 8))(v47, v32);
LABEL_17:

        v40 = v0[1];

        return v40();
      }

LABEL_16:

      v30(v34, v35);
      (*(v33 + 8))(v31, v32);
      goto LABEL_17;
    }

    v42 = swift_task_alloc();
    v0[48] = v42;
    *v42 = v0;
    v42[1] = sub_2275043E4;

    return sub_227505EA4();
  }
}

uint64_t sub_227504268()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275043E4(double a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_2275058C4;
  }

  else
  {
    *(v4 + 400) = a1;
    v5 = sub_227504508;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227504508()
{
  if (sub_22744FC08(*(v0 + 400)))
  {
    sub_22766A730();
    v1 = sub_22766B380();
    v2 = sub_22766C8B0();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 344);
    v5 = *(v0 + 336);
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);
    v8 = *(v0 + 256);
    v9 = *(v0 + 192);
    if (v3)
    {
      v23 = *(v0 + 336);
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v1, v2, "[CatalogSyncEvaluator] Periodic sync interval expired, sync required", v10, 2u);
      v11 = v10;
      v5 = v23;
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    v4(v8, v9);
    (*(v7 + 8))(v5, v6);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 56);
    v15 = v14[20];
    v16 = v14[21];
    __swift_project_boxed_opaque_existential_0(v14 + 17, v15);
    v17 = *(v16 + 24);

    v22 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 408) = v18;
    *v18 = v0;
    v18[1] = sub_22750486C;
    v19 = *(v0 + 152);
    v20 = *(v0 + 136);
    v21 = *(v0 + 56);

    return (v22)(v19, sub_226F5AC78, v21, v20, v15, v16);
  }
}

uint64_t sub_22750486C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_227505A40;
  }

  else
  {
    v2 = sub_22750499C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22750499C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  sub_227663EF0();
  v9 = v8;
  sub_227663F10();
  v11 = v10;
  sub_227664FA0();
  sub_227662920();
  sub_227662600();
  (*(v7 + 8))(v5, v6);
  v12 = *(v3 + 8);
  v12(v1, v2);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v13 = v0[40];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    sub_226E97D1C(v0[11], &qword_27D7B9690, qword_227670B50);
    v17 = sub_227669540();
    sub_22750799C(&qword_27D7BE2A8, MEMORY[0x277D53E40], MEMORY[0x277D53E48]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D53E38], v17);
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v0[42], v0[39]);
  }

  else
  {
    v31 = v0[42];
    v19 = v0[40];
    v20 = v0[18];
    v33 = v0[19];
    v34 = v0[39];
    v21 = v0[16];
    v32 = v0[17];
    v22 = v0[14];
    v23 = v0[12];
    (*(v0[13] + 32))(v21, v0[11], v23);
    sub_2276625D0();
    v25 = v9 + v24;
    sub_227664FA0();
    sub_2276625D0();
    v27 = v26;
    v12(v22, v23);
    sub_2276625D0();
    sub_227505BBC(v27, v28, v11, v25);
    v12(v21, v23);
    (*(v20 + 8))(v33, v32);
    (*(v19 + 8))(v31, v34);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_227504E80(double a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_2275055CC;
  }

  else
  {

    *(v4 + 448) = a1;
    v5 = sub_227504FAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227504FAC()
{
  v53 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  sub_22766C540();
  v5 = v4;
  sub_227664FA0();
  sub_2276625D0();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);
  sub_2276625D0();
  if (v5 + v7 <= v9)
  {
    sub_22766A730();
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[43];
    v33 = v0[42];
    v34 = v0[39];
    v35 = v0[40];
    v36 = v0[29];
    v37 = v0[24];
    if (v31)
    {
      v51 = v0[42];
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_226E8E000, v29, v30, "[CatalogSyncEvaluator] Previous sync failed and back off interval met, sync required", v38, 2u);
      v39 = v38;
      v33 = v51;
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    v32(v36, v37);
    (*(v35 + 8))(v33, v34);

    v40 = v0[1];
  }

  else
  {
    v10 = v0[41];
    v11 = v0[42];
    v12 = v0[39];
    v13 = v0[40];
    sub_22766A730();
    (*(v13 + 16))(v10, v11, v12);
    v14 = sub_22766B380();
    v49 = sub_22766C8B0();
    v15 = os_log_type_enabled(v14, v49);
    v16 = v0[43];
    v17 = v0[40];
    v18 = v0[41];
    v50 = v0[39];
    v19 = v0[28];
    v20 = v0[24];
    if (v15)
    {
      v48 = v0[43];
      v21 = v0[15];
      log = v14;
      v22 = v0[12];
      v47 = v0[24];
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v23 = 136315394;
      sub_227664FA0();
      sub_22750799C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v24 = sub_22766D140();
      v45 = v19;
      v26 = v25;
      v8(v21, v22);
      v27 = *(v17 + 8);
      v27(v18, v50);
      v28 = sub_226E97AE8(v24, v26, &v52);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v5;
      _os_log_impl(&dword_226E8E000, log, v49, "[CatalogSyncEvaluator] Previous sync is too recent, skipping sync - anchor date: %s, back off interval: %f", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);

      v48(v45, v47);
    }

    else
    {

      v27 = *(v17 + 8);
      v27(v18, v50);
      v16(v19, v20);
    }

    v41 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08], MEMORY[0x277D51E10]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51DE8], v41);
    swift_willThrow();
    v27(v0[42], v0[39]);

    v40 = v0[1];
  }

  return v40();
}

uint64_t sub_2275055CC()
{
  v27 = v0;
  v1 = v0[55];

  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v23 = v0[43];
    v6 = v0[40];
    v24 = v0[39];
    v25 = v0[42];
    v22 = v0[30];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "[CatalogSyncEvaluator] Previous sync failed an no back off interval was defined, sync required: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v23(v22, v7);
    (*(v6 + 8))(v25, v24);
  }

  else
  {
    v13 = v0[55];
    v14 = v0[43];
    v15 = v0[42];
    v16 = v0[39];
    v17 = v0[40];
    v18 = v0[30];
    v19 = v0[24];

    v14(v18, v19);
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2275058C4()
{
  (*(v0[40] + 8))(v0[42], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227505A40()
{
  (*(v0[40] + 8))(v0[42], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227505BBC(double a1, double a2, double a3, double a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  if (a4 <= a2)
  {
    if (a4 <= a1)
    {
      return sub_227505BBC(a1, a2, a3, a3 + a4);
    }

    else
    {
      sub_22766A730();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_226E8E000, v21, v22, "[CatalogSyncEvaluator] Boundary time crossed between last sync time and now, sync immediately", v23, 2u);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      return (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    sub_22766A730();
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226E8E000, v15, v16, "[CatalogSyncEvaluator] Current time has not crossed boundary time, no sync needed", v17, 2u);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v18 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08], MEMORY[0x277D51E10]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51DF0], v18);
    return swift_willThrow();
  }
}

uint64_t sub_227505EA4()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227505F70, 0, 0);
}

uint64_t sub_227505F70()
{
  __swift_project_boxed_opaque_existential_0((v0[6] + 16), *(v0[6] + 40));
  v1 = sub_22766A870();
  v3 = v2;
  v0[11] = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_227506030;

  return sub_22709DD14(v1, v3);
}

uint64_t sub_227506030(double a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2275062F8;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_22750615C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22750615C()
{
  sub_22766C540();
  if (v1 <= 0.0)
  {
    sub_22766A730();
    v6 = sub_22766B380();
    v7 = sub_22766C8B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v6, v7, "[CatalogSyncEvaluator] Sync interval is 0, using default periodic sync interval", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[7];

    (*(v10 + 8))(v9, v11);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_2275064F0;

    return sub_22750684C();
  }

  else
  {
    v2 = v1;

    v3 = v0[1];
    v4.n128_f64[0] = v2;

    return v3(v4);
  }
}

uint64_t sub_2275062F8()
{
  v19 = v0;
  v1 = v0[13];

  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v12 = sub_226E97AE8(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "[CatalogSyncEvaluator] Failed fetching sync interval from bag, using default periodic sync interval: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];

    (*(v15 + 8))(v13, v14);
  }

  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_227506638;

  return sub_22750684C();
}

uint64_t sub_2275064F0(double a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_227506638(double a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_2275067D8;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_22750675C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22750675C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_2275067D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22750684C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22750690C, 0, 0);
}

uint64_t sub_22750690C(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[20];
  v7 = v5[21];
  __swift_project_boxed_opaque_existential_0(v5 + 17, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_227506ACC;
  v10 = v1[3];
  v11 = MEMORY[0x277D839F8];

  return (v13)(v1 + 2, sub_227507950, v10, v11, v6, v7);
}

uint64_t sub_227506ACC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226F9DA40;
  }

  else
  {

    v2 = sub_227506BE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227506BE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_227506C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v7 = sub_227663FA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v10);
  if (!v3)
  {
    sub_227663ED0();
    v13 = v12;
    result = (*(v8 + 8))(v10, v7);
    *a3 = v13;
  }

  return result;
}

uint64_t sub_227506D70()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_227662750();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_227665AD0();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227506F50, 0, 0);
}

uint64_t sub_227506F50()
{
  v1 = v0[15];
  sub_2275074C8();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 132;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_22750706C;
  v4 = v0[18];
  v5 = v0[16];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22750796C, v2, v5);
}

uint64_t sub_22750706C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2275072B0;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_2275071BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275071BC(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  sub_227662740();
  v8 = sub_227665AA0();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = v1[1];

  return v9(v8 & 1);
}

uint64_t sub_2275072B0()
{
  v20 = v0;
  v1 = *(v0 + 168);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "[CatalogSyncEvaluator] Failed fetching service subscription: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_2275074C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *__swift_project_boxed_opaque_existential_0((v0 + 184), *(v0 + 208));
  v9 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v8 + v9, &v19);
  if (v20)
  {
    sub_226E92AB8(&v19, v18);
    sub_226E91B50(v18, v17);
    v10 = swift_allocObject();
    sub_226E92AB8(v17, v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_226F099DC();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v4, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v4, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_2275077B4;
  v15[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_2275077B4(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22750799C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227507A48()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22766C000();
  }

  v3 = [v0 mainBundle];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_22766BEB0();

    if (*(v5 + 16) && (v6 = sub_226E92000(0xD00000000000001ALL, 0x80000002276A2F40), (v7 & 1) != 0))
    {
      sub_226E97CC0(*(v5 + 56) + 32 * v6, v9);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  sub_2276693D0();
  sub_2276693B0();
  return sub_2276651E0();
}

uint64_t sub_227507C40(uint64_t a1)
{
  v2 = sub_22750896C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507C7C(uint64_t a1)
{
  v2 = sub_22750896C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507CB8(uint64_t a1)
{
  v2 = sub_227508A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507CF4(uint64_t a1)
{
  v2 = sub_227508A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507D30(uint64_t a1)
{
  v2 = sub_2275089C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507D6C(uint64_t a1)
{
  v2 = sub_2275089C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507DA8(uint64_t a1)
{
  v2 = sub_227508A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507DE4(uint64_t a1)
{
  v2 = sub_227508A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507E20(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a2;
  v27 = a4;
  v25 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2F0, &qword_227689EB0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2F8, &qword_227689EB8);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE300, &qword_227689EC0);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE308, &qword_227689EC8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22750896C();
  sub_22766D480();
  if (v27)
  {
    if (v27 == 1)
    {
      v32 = 1;
      sub_227508A14();
      sub_22766D0D0();
      v31 = v28;
      sub_227038D60();
      v16 = v22;
      sub_22766D120();
      (*(v21 + 8))(v8, v16);
    }

    else
    {
      v33 = 2;
      sub_2275089C0();
      v18 = v23;
      sub_22766D0D0();
      v19 = v26;
      sub_22766D0F0();
      (*(v24 + 8))(v18, v19);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v30 = 0;
    sub_227508A68();
    sub_22766D0D0();
    v29 = v28;
    sub_227038DB4();
    sub_22766D120();
    (*(v20 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_22750824C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2275082F4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_2275082A0()
{
  result = qword_28139A068;
  if (!qword_28139A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A068);
  }

  return result;
}

uint64_t sub_2275082F4(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2B0, &qword_227689E88);
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v39 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2B8, &qword_227689E90);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2C0, &qword_227689E98);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2C8, &unk_227689EA0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v41 = a1;
  v15 = __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_22750896C();
  v16 = v40;
  sub_22766D460();
  if (!v16)
  {
    v33 = v7;
    v17 = v39;
    v40 = v11;
    v18 = v13;
    v19 = sub_22766D0C0();
    v20 = (2 * *(v19 + 16)) | 1;
    v42 = v19;
    v43 = v19 + 32;
    v44 = 0;
    v45 = v20;
    v21 = sub_2270381F0();
    if (v21 == 3 || v44 != v45 >> 1)
    {
      v24 = sub_22766CEB0();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D10, &qword_227675F78);
      *v26 = &type metadata for AssetCatalogFilterProperty;
      v15 = v18;
      sub_22766D060();
      sub_22766CEA0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v40 + 8))(v18, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!v21)
      {
        v46 = 0;
        sub_227508A68();
        v28 = v13;
        sub_22766D050();
        sub_227038D0C();
        v31 = v33;
        sub_22766D0B0();
        (*(v35 + 8))(v9, v31);
        (*(v40 + 8))(v28, v10);
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (v21 == 1)
      {
        v46 = 1;
        sub_227508A14();
        sub_22766D050();
        v22 = v40;
        sub_227038C64();
        v23 = v36;
        sub_22766D0B0();
        (*(v37 + 8))(v6, v23);
        (*(v22 + 8))(v13, v10);
        swift_unknownObjectRelease();
LABEL_11:
        v15 = v46;
        goto LABEL_8;
      }

      v46 = 2;
      sub_2275089C0();
      sub_22766D050();
      v29 = v40;
      v30 = v34;
      v15 = sub_22766D080();
      (*(v38 + 8))(v17, v30);
      (*(v29 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v15;
}

unint64_t sub_22750896C()
{
  result = qword_27D7BE2D0;
  if (!qword_27D7BE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2D0);
  }

  return result;
}

unint64_t sub_2275089C0()
{
  result = qword_27D7BE2D8;
  if (!qword_27D7BE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2D8);
  }

  return result;
}

unint64_t sub_227508A14()
{
  result = qword_27D7BE2E0;
  if (!qword_27D7BE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2E0);
  }

  return result;
}

unint64_t sub_227508A68()
{
  result = qword_27D7BE2E8;
  if (!qword_27D7BE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2E8);
  }

  return result;
}

unint64_t sub_227508B1C()
{
  result = qword_27D7BE310;
  if (!qword_27D7BE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE310);
  }

  return result;
}

unint64_t sub_227508B74()
{
  result = qword_27D7BE318;
  if (!qword_27D7BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE318);
  }

  return result;
}

unint64_t sub_227508BCC()
{
  result = qword_27D7BE320;
  if (!qword_27D7BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE320);
  }

  return result;
}

unint64_t sub_227508C24()
{
  result = qword_27D7BE328;
  if (!qword_27D7BE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE328);
  }

  return result;
}

unint64_t sub_227508C7C()
{
  result = qword_27D7BE330;
  if (!qword_27D7BE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE330);
  }

  return result;
}

unint64_t sub_227508CD4()
{
  result = qword_27D7BE338;
  if (!qword_27D7BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE338);
  }

  return result;
}

unint64_t sub_227508D2C()
{
  result = qword_27D7BE340;
  if (!qword_27D7BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE340);
  }

  return result;
}

unint64_t sub_227508D84()
{
  result = qword_27D7BE348;
  if (!qword_27D7BE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE348);
  }

  return result;
}

unint64_t sub_227508DDC()
{
  result = qword_27D7BE350;
  if (!qword_27D7BE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE350);
  }

  return result;
}

unint64_t sub_227508E34()
{
  result = qword_27D7BE358;
  if (!qword_27D7BE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE358);
  }

  return result;
}

unint64_t sub_227508E8C()
{
  result = qword_27D7BE360;
  if (!qword_27D7BE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE360);
  }

  return result;
}

unint64_t sub_227508EE4()
{
  result = qword_27D7BE368;
  if (!qword_27D7BE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE368);
  }

  return result;
}

uint64_t sub_227508F4C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3A0, &qword_22768A4D8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275096D8();
  sub_22766D480();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE388, &qword_22768A4D0);
  sub_227509780(&qword_27D7BE3A8, sub_2275097F8, MEMORY[0x277D83B50]);
  sub_22766D120();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_22766D120();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_227509140()
{
  if (*v0)
  {
    return 0x6F6973756C636E69;
  }

  else
  {
    return 0x6F6973756C637865;
  }
}

void sub_22750916C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_22766D190() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22766D190();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_227509250(uint64_t a1)
{
  v2 = sub_2275096D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22750928C(uint64_t a1)
{
  v2 = sub_2275096D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2275092C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2275094A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_227509310()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273929C8(v4, v1);
  sub_2273929C8(v4, v2);
  return sub_22766D3F0();
}

void sub_227509364(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2273929C8(a1, v3);

  sub_2273929C8(a1, v4);
}

uint64_t sub_2275093A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22766D370();
  sub_2273929C8(v5, v2);
  sub_2273929C8(v5, v3);
  return sub_22766D3F0();
}

uint64_t sub_2275093F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_227034E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_227034E30(v2, v3);
}

unint64_t sub_227509454()
{
  result = qword_27D7BE370;
  if (!qword_27D7BE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE370);
  }

  return result;
}

uint64_t sub_2275094A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE378, &qword_22768A4C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275096D8();
  sub_22766D460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE388, &qword_22768A4D0);
  v9 = 0;
  sub_227509780(&qword_27D7BE390, sub_22750972C, MEMORY[0x277D83B70]);
  sub_22766D0B0();
  v7 = v10;
  v9 = 1;
  sub_22766D0B0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2275096D8()
{
  result = qword_27D7BE380;
  if (!qword_27D7BE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE380);
  }

  return result;
}

unint64_t sub_22750972C()
{
  result = qword_27D7BE398;
  if (!qword_27D7BE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE398);
  }

  return result;
}

uint64_t sub_227509780(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE388, &qword_22768A4D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2275097F8()
{
  result = qword_27D7BE3B0;
  if (!qword_27D7BE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3B0);
  }

  return result;
}

unint64_t sub_227509870()
{
  result = qword_27D7BE3B8;
  if (!qword_27D7BE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3B8);
  }

  return result;
}

unint64_t sub_2275098C8()
{
  result = qword_27D7BE3C0;
  if (!qword_27D7BE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3C0);
  }

  return result;
}

unint64_t sub_227509920()
{
  result = qword_27D7BE3C8;
  if (!qword_27D7BE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3C8);
  }

  return result;
}

Swift::Bool __swiftcall MediaDuration.containsAssetDuration(_:)(Swift::Double a1)
{
  v2 = sub_227664000();
  sub_227663FF0();
  v4 = v2 + v3;
  v5 = sub_227664000();
  sub_227663FE0();
  return v4 >= a1 && v5 - v6 <= a1;
}

void Set<>.matchingAssetDuration(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v29[0] = a2;
  v5 = sub_227664010();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v29[1] = v6 + 16;
  v29[2] = v6 + 32;
  v30 = a1;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      (*(v6 + 16))(v11, *(v30 + 48) + *(v6 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v5);
      v19 = *(v6 + 32);
      v19(v8, v11, v5);
      v20 = sub_227664000();
      sub_227663FF0();
      v22 = v20 + v21;
      v23 = sub_227664000();
      sub_227663FE0();
      if (v23 - v24 <= a3 && v22 >= a3)
      {
        break;
      }

      v15 &= v15 - 1;
      (*(v6 + 8))(v8, v5);
      v17 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v26 = v29[0];
    v19(v29[0], v8, v5);
    v27 = v26;
    v28 = 0;
LABEL_16:
    (*(v6 + 56))(v27, v28, 1, v5);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v28 = 1;
        v27 = v29[0];
        goto LABEL_16;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_227509C4C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_227664210();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_2276624A0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v60 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = [a1 identifier];
  if (!v22)
  {
    goto LABEL_6;
  }

  v66 = v21;
  v67 = v16;
  v63 = v11;
  v23 = v22;
  v59 = sub_22766C000();
  v65 = v24;

  v25 = [a1 sharingURL];
  if (v25)
  {
    v26 = v25;
    sub_22766C000();
  }

  sub_227662310();
  v27 = v67;
  if ((*(v67 + 48))(v14, 1, v15) == 1)
  {

    sub_226E97D1C(v14, &unk_27D7BB570, &unk_227670FC0);
LABEL_6:
    v28 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
    swift_willThrow();

    return;
  }

  (*(v27 + 32))(v66, v14, v15);
  v30 = [a1 preview];
  if (v30)
  {
    v31 = v64;
    sub_226F96E94(v30, v6);
    v32 = v31;
    if (!v31)
    {
      v33 = v63;
      (*(v4 + 32))(v63, v6, v3);
      v34 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v35 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v32 = swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
    swift_willThrow();
  }

  v34 = 1;
  v33 = v63;
LABEL_12:
  (*(v4 + 56))(v33, v34, 1, v3);
  v37 = [a1 socialMediaHandles];
  if (v37)
  {
    v38 = v37;
    v39 = MEMORY[0x22AA99A00]();
    v45 = sub_227154CD0(v38);
    objc_autoreleasePoolPop(v39);
    v64 = sub_226F3EB50(v45);

    v46 = [a1 bio];
    if (v46)
    {
      v47 = v46;
      v48 = sub_22766C000();
      v57 = v49;
      v58 = v48;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v50 = [a1 informalName];
    if (v50)
    {
      v51 = v50;
      v56 = sub_22766C000();
    }

    else
    {
      v56 = 0;
    }

    v52 = v63;
    sub_226E93170(v63, v61, &qword_27D7B8F00, &unk_227672910);
    v53 = v67;
    v54 = v66;
    (*(v67 + 16))(v60, v66, v15);
    sub_2276649E0();

    sub_226E97D1C(v52, &qword_27D7B8F00, &unk_227672910);
    (*(v53 + 8))(v54, v15);
  }

  else
  {
    v40 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    v41 = *(*(v40 - 8) + 104);
    v42 = v40;
    v43 = v63;
    v41(v44, *MEMORY[0x277D51028], v42);
    swift_willThrow();

    sub_226E97D1C(v43, &qword_27D7B8F00, &unk_227672910);
    (*(v27 + 8))(v66, v15);
  }
}

void sub_22750A3AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_2276624A0();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  sub_2276649A0();
  v11 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276649F0();
  if (v12)
  {
    v13 = sub_22766BFD0();
  }

  else
  {
    v13 = 0;
  }

  [a1 setBio_];

  sub_2276649C0();
  if (v14)
  {
    v15 = sub_22766BFD0();
  }

  else
  {
    v15 = 0;
  }

  [a1 setInformalName_];

  sub_227664A00();
  v16 = sub_227664210();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B8F00, &unk_227672910);
    v18 = 0;
    goto LABEL_9;
  }

  v31 = v2;
  v23 = objc_opt_self();
  v24 = sub_22766BFD0();
  v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v34];

  type metadata accessor for ManagedCatalogPreview();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    v28 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51000], v28);
    swift_willThrow();
    goto LABEL_15;
  }

  v18 = v26;
  v27 = v31;
  sub_226F9789C(v26);
  if (v27)
  {

LABEL_15:
    (*(v17 + 8))(v10, v16);
    return;
  }

  (*(v17 + 8))(v10, v16);
  v3 = 0;
LABEL_9:
  [a1 setPreview_];

  sub_2276649B0();
  sub_227662390();
  (*(v32 + 8))(v7, v33);
  v19 = sub_22766BFD0();

  [a1 setSharingURL_];

  v20 = sub_2276649D0();
  sub_227646F00(v34, v20);
  v22 = v21;

  if (!v3)
  {
    [a1 setSocialMediaHandles_];
  }
}

void *static TrainerMetadata.representativeSamples()()
{
  v37 = sub_2276624A0();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v24 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3D0, &qword_22768A640);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = (&v24 - v4);
  v32 = sub_227664A10();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22766CB70();
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  sub_227664210();
  sub_22750B014(&qword_27D7B9110, MEMORY[0x277D50760], &protocol conformance descriptor for CatalogPreview);
  v9 = sub_22766CB70();
  v10 = sub_2276622F0();
  v11 = static SocialMediaHandle.representativeSamples()();
  v12 = sub_226F3EB50(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3D8, &qword_22768A648);
  v13 = sub_22766C380();
  v13[2] = 3;
  v13[4] = v12;
  v13[5] = v12;
  v13[6] = v12;
  v57 = v7;
  v58[0] = v39;
  v58[1] = v58;
  v58[2] = &v57;
  v55 = v9;
  v56 = v8;
  v58[3] = &v56;
  v58[4] = &v55;
  v53 = v13;
  v54 = v10;
  v58[5] = &v54;
  v58[6] = &v53;
  swift_bridgeObjectRetain_n();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v49 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7A0, &qword_22767EE68);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA458, &qword_227678C08);
  v41 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v42 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v43 = v42;
  v44 = sub_226F5BF60(&qword_27D7BC7B0, &qword_27D7BC7A0, &qword_22767EE68);
  v45 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v46 = sub_226F5BF60(&qword_27D7BA470, &qword_27D7BA458, &qword_227678C08);
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    result = sub_226F1F8C8(0, v15, 0);
    v17 = 0;
    v26 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = v40;
    v25 = (v38 + 16);
    v24 = v5 + 32;
    v30 = v3;
    v29 = v5;
    v28 = v14;
    v27 = v15;
    while (v17 < *(v14 + 16))
    {
      v19 = v33;
      sub_226E93170(v26 + *(v3 + 72) * v17, v33, &qword_27D7BE3D0, &qword_22768A640);
      v39 = *v19;
      v38 = v19[2];
      v20 = *(v34 + 96);
      sub_226E93170(v19 + *(v34 + 80), v35, &qword_27D7B8F00, &unk_227672910);
      (*v25)(v36, v19 + v20, v37);

      v21 = v31;
      sub_2276649E0();
      sub_226E97D1C(v19, &qword_27D7BE3D0, &qword_22768A640);
      v40 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F8C8((v22 > 1), v23 + 1, 1);
        v18 = v40;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      result = (*(v29 + 32))(v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, v21, v32);
      v3 = v30;
      v14 = v28;
      if (v27 == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22750AFBC(uint64_t a1)
{
  result = sub_22750B014(&qword_27D7BE3E0, MEMORY[0x277D50C78], &protocol conformance descriptor for TrainerMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750B014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22750B078()
{
  v1 = sub_227664470();
  sub_22750B1EC();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D50910], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22750B148()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_22750B05C();
}

unint64_t sub_22750B1EC()
{
  result = qword_27D7BA250;
  if (!qword_27D7BA250)
  {
    sub_227664470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA250);
  }

  return result;
}

void sub_22750B254(void *a1)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [a1 name];
  if (!v5)
  {

LABEL_6:
    v11 = sub_227664DD0();
    sub_22750B8EC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22766C000();
  v15 = v8;
  v16 = v7;

  v9 = [a1 artwork];
  if (v9)
  {
    v10 = v9;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  sub_2276683D0();
  if (v1)
  {
  }

  v13 = [a1 informalName];
  if (v13)
  {
    v14 = v13;
    sub_22766C000();
  }

  sub_227664E90();
LABEL_12:
}

void *static TrainerReference.representativeSamples()()
{
  v22 = sub_227664EB0();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669180();
  sub_22750B8EC(&qword_27D7B8BE0, MEMORY[0x277D53A78], MEMORY[0x277D53A88]);
  v3 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  v4 = sub_22766C380();
  v4[2] = 3;
  v4[4] = v3;
  v4[5] = v3;
  v4[6] = v3;
  swift_bridgeObjectRetain_n();
  v5 = sub_22766C090();
  v6 = sub_22766C090();
  v7 = sub_22766C090();
  v35 = v5;
  v36[0] = v4;
  v36[1] = v36;
  v36[2] = &v35;
  v33 = v6;
  v34 = v7;
  v36[3] = &v34;
  v36[4] = &v33;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC798, &qword_22767EE60);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = v30;
  v32 = v30;
  v25 = sub_226F5BF60(&qword_27D7BC7A8, &qword_27D7BC798, &qword_22767EE60);
  v26 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v27 = v26;
  v28 = v26;
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    result = sub_226F1F6C8(0, v9, 0);
    v11 = 0;
    v12 = v24;
    v18 = v0 + 32;
    v13 = v8 + 80;
    v20 = v8;
    v21 = v0;
    v19 = v9;
    v17 = v2;
    while (v11 < *(v8 + 16))
    {
      v23 = *(v13 - 40);

      sub_227664E90();
      v24 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F6C8((v14 > 1), v15 + 1, 1);
        v12 = v24;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      result = (*(v21 + 32))(v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, v17, v22);
      v13 += 56;
      v8 = v20;
      if (v19 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22750B894(uint64_t a1)
{
  result = sub_22750B8EC(&qword_28139B8A8, MEMORY[0x277D51130], &protocol conformance descriptor for TrainerReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750B8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22750B934(void *a1)
{
  sub_227664E60();
  v3 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227664E80();
  v4 = sub_22766BFD0();

  [a1 setName_];

  sub_227664EA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v5 = sub_2276683C0();
  v7 = v6;

  if (!v1)
  {
    v8 = sub_227662560();
    sub_226EDC420(v5, v7);
    [a1 setArtwork_];

    sub_227664E70();
    if (v9)
    {
      v10 = sub_22766BFD0();
    }

    else
    {
      v10 = 0;
    }

    [a1 setInformalName_];
  }
}

void sub_22750BAA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = [a1 participantIdentifier];
  if (v15)
  {
    v21[3] = a2;
    v16 = v15;
    v21[1] = sub_22766C000();

    v17 = [a1 timestamp];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v5 + 32))(v14, v10, v4);
      (*(v5 + 16))(v7, v14, v4);
      sub_2276686D0();

      (*(v5 + 8))(v14, v4);
      return;
    }
  }

  v19 = sub_227664DD0();
  sub_22750C2C4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

void *static RemoteBrowsingConnectionRecord.representativeSamples()()
{
  v27 = sub_227662750();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v19 - v3;
  v24 = sub_227668700();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766C090();
  v33 = sub_227662630();
  v34[0] = v8;
  v34[1] = v34;
  v34[2] = &v33;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v29 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v30 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = v7;
    v28 = MEMORY[0x277D84F90];
    result = sub_226F207A8(0, v10, 0);
    v12 = 0;
    v13 = v28;
    v21 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v22 = v5;
    v19 = v5 + 32;
    v20 = (v0 + 16);
    v14 = v26;
    v15 = v23;
    while (v12 < *(v9 + 16))
    {
      v16 = v2;
      sub_2273571A4(v21 + *(v2 + 72) * v12, v4);
      (*v20)(v14, &v4[*(v25 + 48)], v27);

      sub_2276686D0();
      sub_227357214(v4);
      v28 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F207A8((v17 > 1), v18 + 1, 1);
        v13 = v28;
      }

      ++v12;
      *(v13 + 16) = v18 + 1;
      result = (*(v22 + 32))(v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v15, v24);
      v2 = v16;
      if (v10 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22750C138(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276686E0();
  v6 = sub_22766BFD0();

  [a1 setParticipantIdentifier_];

  sub_2276686F0();
  v7 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setTimestamp_];
}

uint64_t sub_22750C26C(uint64_t a1)
{
  result = sub_22750C2C4(&qword_27D7BE3E8, MEMORY[0x277D53548], &protocol conformance descriptor for RemoteBrowsingConnectionRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750C2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22750C30C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + 32);
  v22 = v1;
  ObjectType = swift_getObjectType();
  v25 = v10;
  v13 = *MEMORY[0x277D4E390];
  v20 = *(v3 + 104);
  v24 = v3 + 104;
  v20(v5, v13, v2);
  swift_allocObject();
  swift_weakInit();
  sub_2276640A0();
  swift_unknownObjectRetain_n();
  v19[1] = ObjectType;
  v14 = v11;
  sub_227669EE0();

  v15 = *(v3 + 8);
  v23 = v3 + 8;
  v15(v5, v2);
  swift_unknownObjectRelease();
  v25 = v10;
  v16 = v20;
  v20(v5, *MEMORY[0x277D4E398], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v21 = v14;
  sub_227669EF0();

  v19[0] = v2;
  v15(v5, v2);

  swift_unknownObjectRelease();
  v25 = v10;
  v16(v5, *MEMORY[0x277D4E478], v2);
  swift_allocObject();
  swift_weakInit();

  sub_227669EF0();

  v17 = v19[0];
  v15(v5, v19[0]);

  swift_unknownObjectRelease();
  v25 = v10;
  v16(v5, *MEMORY[0x277D4E488], v17);
  swift_allocObject();
  swift_weakInit();
  sub_227665510();
  sub_227664660();
  sub_227669EC0();

  v15(v5, v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_22750C808(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276640A0();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22750C8D0, 0, 0);
}

uint64_t sub_22750C8D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    v5 = v0[10];
    sub_226E91B50(Strong + 40, (v0 + 2));

    v6 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v7 = *v6;
    v8 = *(*v6 + 48);
    __swift_project_boxed_opaque_existential_0((*v6 + 16), *(*v6 + 40));
    (*(v4 + 16))(v2, v5, v3);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    v0[16] = v10;
    *(v10 + 16) = v7;
    (*(v4 + 32))(v10 + v9, v2, v3);
    v11 = *(v8 + 24);

    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_22750CB4C;

    return v15();
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22750CB4C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_22750CCD4;
  }

  else
  {

    v2 = sub_22750CC68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22750CC68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22750CCD4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22750CD68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_227127A18;

    return sub_226F73FCC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22750CE94()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = *v2;
    v0[11] = *v2;
    v4 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
    v5 = *(v4 + 24);

    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_22750D080;

    return v9();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22750D080()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22750D19C;
  }

  else
  {

    v2 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22750D19C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22750D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22750D22C, 0, 0);
}

uint64_t sub_22750D22C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_22750D380;
    v3 = v0[10];
    v4 = v0[11];

    return sub_226F74D40(v3, v4);
  }

  else
  {
    v6 = v0[10];
    v7 = sub_227664660();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22750D380()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F60D40;
  }

  else
  {
    v2 = sub_22750D494;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22750D494()
{
  v1 = v0[10];
  v2 = sub_227664660();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22750D560(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22750C808(a1, v1);
}

uint64_t sub_22750D5F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22750CD48(v0);
}

uint64_t sub_22750D688()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22750CE74(v0);
}

uint64_t sub_22750D718(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22750D208(a1, a2, v2);
}

void sub_22750D860(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227663270();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_22750DD24(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static MusicGenre.representativeSamples()()
{
  v14 = sub_2276632A0();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v20 = sub_22766C090();
  v21[0] = v3;
  v21[1] = v21;
  v21[2] = &v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v19 = v18;
  v16 = sub_2272BFE28();
  v17 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226F1F6A8(0, v5, 0);
    v7 = 0;
    v8 = v15;
    v12 = v0 + 32;
    v13 = v4;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {

      sub_227663270();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F1F6A8((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v14);
      v9 += 32;
      v4 = v13;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22750DC30(void *a1)
{
  sub_227663280();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663290();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_22750DCCC(uint64_t a1)
{
  result = sub_22750DD24(&qword_28139BD18, MEMORY[0x277D4FE80], &protocol conformance descriptor for MusicGenre);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750DD24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22750DD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_227663180();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_2276624A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227663160();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226FB1188(v10);
    sub_22766A6C0();
    (*(v3 + 16))(v5, a1, v38);
    v15 = sub_22766B380();
    v16 = sub_22766C890();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = a1;
      v18 = v17;
      v33 = swift_slowAlloc();
      v39 = v33;
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2080;
      sub_226EB0FF8(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
      v19 = v38;
      v20 = v16;
      v21 = sub_22766D140();
      v23 = v22;
      v24 = v19;
      v25 = *(v3 + 8);
      v25(v5, v24);
      v26 = sub_226E97AE8(v21, v23, &v39);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v15, v20, "Completed entry doesn't have local URL: %{mask.hash}s", v18, 0x16u);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v27, -1, -1);
      a1 = v34;
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    else
    {

      v25 = *(v3 + 8);
      v25(v5, v38);
    }

    (*(v35 + 8))(v37, v36);
    v31 = sub_227663190();
    sub_226EB0FF8(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D4FD08], v31);
    swift_willThrow();
    return (v25)(a1, v38);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v28 = v34;
    (*(v12 + 16))(v34, v14, v11);
    v29 = sub_227663130();
    (*(v3 + 8))(a1, v38);
    (*(v12 + 8))(v14, v11);
    result = type metadata accessor for AssetLoaderResponse(0);
    *(v28 + *(result + 20)) = v29;
  }

  return result;
}

id sub_22750E2B0(uint64_t a1)
{
  v2 = sub_227664010();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276660A0();
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22701A900(a1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 0xAu:
      v47 = *v8;
      v48 = *(v8 + 1);
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_227670CD0;
      *(v49 + 56) = MEMORY[0x277D837D0];
      *(v49 + 64) = sub_22701311C();
      *(v49 + 32) = v47;
      *(v49 + 40) = v48;
      return sub_22766C7F0();
    case 4u:
      v28 = *v8;
      v27 = *(v8 + 1);
      swift_getKeyPath();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v85 = v28;
      v86 = v27;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v14 = sub_22766C820();
      sub_226ED25F8(&v85, v83);
      v15 = v84;
      if (v84)
      {
        goto LABEL_3;
      }

      v21 = 0;
      break;
    case 6u:
      v77 = v3;
      (*(v3 + 32))(v5, v8, v2);
      v31 = sub_227664000();
      sub_227663FE0();
      v33 = v31 - v32;
      v34 = sub_227664000();
      sub_227663FF0();
      v36 = v34 + v35;
      swift_getKeyPath();
      v37 = MEMORY[0x277D839F8];
      v88 = MEMORY[0x277D839F8];
      v85 = v33;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v38 = sub_22766C820();
      sub_226ED25F8(&v85, v83);
      v39 = v84;
      if (v84)
      {
        v40 = __swift_project_boxed_opaque_existential_0(v83, v84);
        v41 = *(v39 - 8);
        v42 = MEMORY[0x28223BE20](v40);
        v44 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v41 + 16))(v44, v42);
        v45 = sub_22766D170();
        v46 = v44;
        v37 = MEMORY[0x277D839F8];
        (*(v41 + 8))(v46, v39);
        __swift_destroy_boxed_opaque_existential_0(v83);
      }

      else
      {
        v45 = 0;
      }

      v52 = objc_opt_self();
      v53 = [v52 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
      v55 = [objc_allocWithZone(v54) initWithLeftExpression:v38 rightExpression:v53 modifier:0 type:3 options:0];

      sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
      swift_getKeyPath();
      v88 = v37;
      v85 = v36;

      v56 = sub_22766C820();
      sub_226ED25F8(&v85, v83);
      v57 = v84;
      if (v84)
      {
        v58 = __swift_project_boxed_opaque_existential_0(v83, v84);
        v75 = &v75;
        v76 = v55;
        v59 = *(v57 - 8);
        v60 = MEMORY[0x28223BE20](v58);
        v62 = v54;
        v63 = v52;
        v64 = &v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v59 + 16))(v64, v60);
        v65 = sub_22766D170();
        v66 = v64;
        v52 = v63;
        v54 = v62;
        (*(v59 + 8))(v66, v57);
        v55 = v76;
        __swift_destroy_boxed_opaque_existential_0(v83);
      }

      else
      {
        v65 = 0;
      }

      v67 = [v52 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v68 = [objc_allocWithZone(v54) initWithLeftExpression:v56 rightExpression:v67 modifier:0 type:1 options:0];

      sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2276756A0;
      *(v69 + 32) = v55;
      *(v69 + 40) = v68;
      v70 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v71 = v55;
      v72 = v68;
      v73 = sub_22766C2B0();

      v74 = [v70 initWithType:1 subpredicates:v73];

      (*(v77 + 8))(v5, v2);
      return v74;
    case 9u:
      sub_22701A964(v8);
      return 0;
    case 0xBu:
      v22 = *v8;
      v23 = *(v8 + 1);
      v24 = v8[16];
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_227670CD0;
      v85 = *&v22;
      v86 = v23;
      v87 = v24;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_22701311C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
      sub_227663AD0();
      sub_226EB2DFC(v22, v23, v24);
      return sub_22766C7F0();
    case 0xCu:
      v30 = *v8;
      v29 = *(v8 + 1);
      swift_getKeyPath();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v85 = v30;
      v86 = v29;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v14 = sub_22766C820();
      sub_226ED25F8(&v85, v83);
      v15 = v84;
      if (v84)
      {
        goto LABEL_3;
      }

      v21 = 0;
      break;
    default:
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = v8[16];
      swift_getKeyPath();
      v80 = v9;
      v81 = v10;
      v82 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
      sub_227663AD0();
      sub_226EB2DFC(v9, v10, v11);
      v12 = v78;
      v13 = v79;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v85 = v12;
      v86 = v13;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v14 = sub_22766C820();
      sub_226ED25F8(&v85, v83);
      v15 = v84;
      if (v84)
      {
LABEL_3:
        v16 = __swift_project_boxed_opaque_existential_0(v83, v84);
        v17 = *(v15 - 8);
        v18 = MEMORY[0x28223BE20](v16);
        v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v20, v18);
        v21 = sub_22766D170();
        (*(v17 + 8))(v20, v15);
        __swift_destroy_boxed_opaque_existential_0(v83);
      }

      else
      {
        v21 = 0;
      }

      break;
  }

  v50 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v51 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
  return v51;
}

id sub_22750F174(uint64_t a1)
{
  v2 = sub_2276660A0();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22750E2B0(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 notPredicateWithSubpredicate_];
  sub_22701A900(a1, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
      sub_22701A964(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2276756A0;
      *(v10 + 32) = v8;
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v11 = v8;
      *(v10 + 40) = sub_22766C7F0();
      v12 = sub_22766C2B0();

      v8 = [v7 orPredicateWithSubpredicates_];

      break;
    case 6u:

      v9 = sub_227664010();
      (*(*(v9 - 8) + 8))(v4, v9);
      break;
    case 9u:

      sub_22701A964(v4);
      v8 = 0;
      break;
    default:

      sub_22701A964(v4);
      break;
  }

  return v8;
}

id sub_22750F910(uint64_t a1, uint64_t a2)
{
  v302 = a2;
  v290 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  MEMORY[0x28223BE20](v2 - 8);
  v289 = &v287 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v304 = (&v287 - v5);
  v308 = sub_227664010();
  v306 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v291 = &v287 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v303 = (&v287 - v8);
  v309 = sub_2276660A0();
  MEMORY[0x28223BE20](v309);
  *&v301 = &v287 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v300 = &v287 - v11;
  MEMORY[0x28223BE20](v12);
  v288 = &v287 - v13;
  MEMORY[0x28223BE20](v14);
  v287 = &v287 - v15;
  MEMORY[0x28223BE20](v16);
  v299 = &v287 - v17;
  MEMORY[0x28223BE20](v18);
  v298 = &v287 - v19;
  MEMORY[0x28223BE20](v20);
  v297 = &v287 - v21;
  MEMORY[0x28223BE20](v22);
  v296 = &v287 - v23;
  MEMORY[0x28223BE20](v24);
  v295 = &v287 - v25;
  MEMORY[0x28223BE20](v26);
  v294 = &v287 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = (&v287 - v29);
  MEMORY[0x28223BE20](v31);
  v293 = &v287 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = (&v287 - v34);
  MEMORY[0x28223BE20](v36);
  v292 = &v287 - v37;
  MEMORY[0x28223BE20](v38);
  KeyPath = &v287 - v39;
  MEMORY[0x28223BE20](v40);
  v307 = (&v287 - v41);
  MEMORY[0x28223BE20](v42);
  v44 = (&v287 - v43);
  MEMORY[0x28223BE20](v45);
  v47 = &v287 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = (&v287 - v49);
  MEMORY[0x28223BE20](v51);
  v53 = &v287 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v287 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v287 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = (&v287 - v61);
  MEMORY[0x28223BE20](v63);
  v66 = &v287 - v65;
  result = 0;
  switch(v290)
  {
    case 1:
      v135 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v136 = *(v302 + 16);
      if (v136)
      {
        v137 = v302 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
        v138 = *(v135 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v137, v53);
          sub_22701A900(v53, v50);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 0xC)
          {
            goto LABEL_77;
          }

          if (((1 << EnumCaseMultiPayload) & 0x17BE) != 0)
          {
            v141 = *v50;
            v140 = v50[1];
            sub_22701A964(v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v143 = *(v126 + 2);
            v142 = *(v126 + 3);
            if (v143 >= v142 >> 1)
            {
              v126 = sub_226EB3F78((v142 > 1), v143 + 1, 1, v126);
            }

            *(v126 + 2) = v143 + 1;
            v144 = &v126[16 * v143];
            *(v144 + 4) = v141;
            *(v144 + 5) = v140;
            goto LABEL_68;
          }

          if (EnumCaseMultiPayload == 6)
          {
            (*v307)(v50, v308);
          }

          else
          {
LABEL_77:
            sub_22701A964(v50);
          }

          sub_22701A964(v53);
LABEL_68:
          v137 += v138;
          if (!--v136)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 2:
      v145 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v146 = *(v302 + 16);
      if (v146)
      {
        v147 = v302 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
        v148 = *(v145 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v147, v66);
          sub_22701A900(v66, v62);
          v149 = swift_getEnumCaseMultiPayload();
          if (v149 > 0xC)
          {
            goto LABEL_91;
          }

          if (((1 << v149) & 0x17BE) != 0)
          {
            v151 = *v62;
            v150 = v62[1];
            sub_22701A964(v66);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v153 = *(v126 + 2);
            v152 = *(v126 + 3);
            if (v153 >= v152 >> 1)
            {
              v126 = sub_226EB3F78((v152 > 1), v153 + 1, 1, v126);
            }

            *(v126 + 2) = v153 + 1;
            v154 = &v126[16 * v153];
            *(v154 + 4) = v151;
            *(v154 + 5) = v150;
            goto LABEL_82;
          }

          if (v149 == 6)
          {
            (*v307)(v62, v308);
          }

          else
          {
LABEL_91:
            sub_22701A964(v62);
          }

          sub_22701A964(v66);
LABEL_82:
          v147 += v148;
          if (!--v146)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 3:
      v96 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v97 = *(v302 + 16);
      if (v97)
      {
        v98 = v302 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
        v99 = *(v96 + 72);
        v307 = (v306 + 8);
        v100 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v98, v47);
          sub_22701A900(v47, v44);
          v101 = swift_getEnumCaseMultiPayload();
          if (v101 > 0xC)
          {
            goto LABEL_35;
          }

          if (((1 << v101) & 0x17BE) != 0)
          {
            v103 = *v44;
            v102 = v44[1];
            sub_22701A964(v47);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = sub_226EB3F78(0, *(v100 + 2) + 1, 1, v100);
            }

            v105 = *(v100 + 2);
            v104 = *(v100 + 3);
            if (v105 >= v104 >> 1)
            {
              v100 = sub_226EB3F78((v104 > 1), v105 + 1, 1, v100);
            }

            *(v100 + 2) = v105 + 1;
            v106 = &v100[16 * v105];
            *(v106 + 4) = v103;
            *(v106 + 5) = v102;
            goto LABEL_26;
          }

          if (v101 == 6)
          {
            (*v307)(v44, v308);
          }

          else
          {
LABEL_35:
            sub_22701A964(v44);
          }

          sub_22701A964(v47);
LABEL_26:
          v98 += v99;
          if (!--v97)
          {
            goto LABEL_164;
          }
        }
      }

      v100 = MEMORY[0x277D84F90];
LABEL_164:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v224 = KeyPath;
      *(KeyPath + 7) = v223;
      *(v224 + 8) = sub_2275125B4();
      *(v224 + 4) = v100;
      return sub_22766C7F0();
    case 4:
      v167 = *(v302 + 16);
      v168 = MEMORY[0x277D84F90];
      if (v167)
      {
        v169 = v302 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v302 = *(v64 + 72);
        v170 = KeyPath;
        v171 = (v306 + 56);
        v172 = (v306 + 32);
        v173 = (v306 + 48);
        v174 = v308;
        v175 = v289;
        do
        {
          v176 = v307;
          sub_22701A900(v169, v307);
          sub_22701A900(v176, v170);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            (*v172)(v175, v170, v174);
            v177 = 0;
          }

          else
          {
            sub_22701A964(v170);
            v177 = 1;
          }

          (*v171)(v175, v177, 1, v174);
          v178 = v304;
          sub_227512618(v175, v304);
          sub_22701A964(v307);
          if ((*v173)(v178, 1, v174) == 1)
          {
            sub_226E97D1C(v178, &qword_27D7BC9B8, &unk_227682440);
            v170 = KeyPath;
          }

          else
          {
            v179 = *v172;
            (*v172)(v303, v178, v174);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = sub_2273A6F7C(0, v168[2] + 1, 1, v168);
            }

            v170 = KeyPath;
            v181 = v168[2];
            v180 = v168[3];
            v182 = v168;
            if (v181 >= v180 >> 1)
            {
              v182 = sub_2273A6F7C((v180 > 1), v181 + 1, 1, v168);
            }

            v182[2] = v181 + 1;
            v168 = v182;
            v183 = v182 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v181;
            v174 = v308;
            v179(v183, v303, v308);
            v175 = v289;
          }

          v169 += v302;
          --v167;
        }

        while (v167);
      }

      else
      {
        v174 = v308;
      }

      v238 = v168[2];
      if (v238)
      {
        v310 = MEMORY[0x277D84F90];
        v239 = v174;
        sub_22766CF30();
        v309 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        v307 = objc_opt_self();
        v304 = *(v306 + 16);
        v240 = (*(v306 + 80) + 32) & ~*(v306 + 80);
        v300 = v168;
        v241 = v168 + v240;
        v306 += 16;
        v302 = *(v306 + 56);
        v303 = (v306 - 8);
        v301 = xmmword_2276756A0;
        v242 = v291;
        do
        {
          KeyPath = v238;
          (v304)(v242, v241, v239);
          v256 = sub_227664000();
          sub_227663FE0();
          v258 = v256 - v257;
          v259 = sub_227664000();
          sub_227663FF0();
          v261 = v260;
          swift_getKeyPath();
          v317 = MEMORY[0x277D839F8];
          v314 = v258;

          v262 = sub_22766C820();
          sub_226ED25F8(&v314, &v311);
          v263 = v313;
          if (v313)
          {
            v264 = __swift_project_boxed_opaque_existential_0(&v311, v313);
            v265 = *(v263 - 8);
            v266 = MEMORY[0x28223BE20](v264);
            v268 = &v287 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v265 + 16))(v268, v266);
            v269 = sub_22766D170();
            (*(v265 + 8))(v268, v263);
            __swift_destroy_boxed_opaque_existential_0(&v311);
          }

          else
          {
            v269 = 0;
          }

          v270 = [v307 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
          v272 = [objc_allocWithZone(v271) initWithLeftExpression:v262 rightExpression:v270 modifier:0 type:3 options:0];

          sub_226E97D1C(&v314, &unk_27D7BC990, &qword_227670A30);
          swift_getKeyPath();
          v317 = MEMORY[0x277D839F8];
          v314 = v259 + v261;

          v273 = sub_22766C820();
          sub_226ED25F8(&v314, &v311);
          v274 = v313;
          if (v313)
          {
            v243 = __swift_project_boxed_opaque_existential_0(&v311, v313);
            v244 = *(v274 - 8);
            v245 = MEMORY[0x28223BE20](v243);
            v247 = &v287 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v244 + 16))(v247, v245);
            v248 = sub_22766D170();
            (*(v244 + 8))(v247, v274);
            v242 = v291;
            __swift_destroy_boxed_opaque_existential_0(&v311);
          }

          else
          {
            v248 = 0;
          }

          v249 = [v307 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v250 = [objc_allocWithZone(v271) initWithLeftExpression:v273 rightExpression:v249 modifier:0 type:1 options:0];

          sub_226E97D1C(&v314, &unk_27D7BC990, &qword_227670A30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
          v251 = swift_allocObject();
          *(v251 + 16) = v301;
          *(v251 + 32) = v272;
          *(v251 + 40) = v250;
          v252 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          v253 = v272;
          v254 = v250;
          v255 = sub_22766C2B0();

          [v252 initWithType:1 subpredicates:v255];

          v239 = v308;
          (*v303)(v242, v308);
          sub_22766CF00();
          sub_22766CF40();
          sub_22766CF50();
          sub_22766CF10();
          v241 += v302;
          v238 = KeyPath - 1;
        }

        while (KeyPath != 1);

        v275 = v310;
      }

      else
      {

        v275 = MEMORY[0x277D84F90];
      }

      if (v275 >> 62)
      {
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);

        sub_22766CFC0();
      }

      else
      {

        sub_22766D1C0();
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      }

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v276 = sub_22766C2B0();

      v277 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v277;
    case 5:
      v184 = v64;
      KeyPath = swift_getKeyPath();
      v185 = *(v302 + 16);
      if (v185)
      {
        v186 = v302 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
        v187 = *(v184 + 72);
        v307 = (v306 + 8);
        *&v188 = MEMORY[0x277D84F90];
        v189 = v292;
        while (1)
        {
          sub_22701A900(v186, v189);
          sub_22701A900(v189, v35);
          v190 = swift_getEnumCaseMultiPayload();
          if (v190 > 0xC)
          {
            goto LABEL_132;
          }

          if (((1 << v190) & 0x17BE) != 0)
          {
            v192 = *v35;
            v191 = v35[1];
            sub_22701A964(v189);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v188 = COERCE_DOUBLE(sub_226EB3F78(0, *(v188 + 2) + 1, 1, v188));
            }

            v194 = *(v188 + 2);
            v193 = *(v188 + 3);
            if (v194 >= v193 >> 1)
            {
              *&v188 = COERCE_DOUBLE(sub_226EB3F78((v193 > 1), v194 + 1, 1, v188));
            }

            *(v188 + 2) = v194 + 1;
            v195 = &v188[16 * v194];
            *(v195 + 4) = v192;
            *(v195 + 5) = v191;
            v189 = v292;
            goto LABEL_123;
          }

          if (v190 == 6)
          {
            (*v307)(v35, v308);
          }

          else
          {
LABEL_132:
            sub_22701A964(v35);
          }

          sub_22701A964(v189);
LABEL_123:
          v186 += v187;
          if (!--v185)
          {
            goto LABEL_197;
          }
        }
      }

      *&v188 = MEMORY[0x277D84F90];
LABEL_197:
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v314 = *&v188;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v225 = sub_22766C820();
      sub_226ED25F8(&v314, &v311);
      v226 = v313;
      if (v313)
      {
        goto LABEL_198;
      }

      v227 = 0;
      goto LABEL_200;
    case 6:
      v155 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_227670CD0;
      v157 = *(v302 + 16);
      KeyPath = v156;
      if (v157)
      {
        v158 = v302 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
        v159 = *(v155 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        v160 = v293;
        while (1)
        {
          sub_22701A900(v158, v160);
          sub_22701A900(v160, v30);
          v161 = swift_getEnumCaseMultiPayload();
          if (v161 > 0xC)
          {
            goto LABEL_105;
          }

          if (((1 << v161) & 0x17BE) != 0)
          {
            v162 = *v30;
            v163 = v30[1];
            sub_22701A964(v160);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v165 = *(v126 + 2);
            v164 = *(v126 + 3);
            if (v165 >= v164 >> 1)
            {
              v126 = sub_226EB3F78((v164 > 1), v165 + 1, 1, v126);
            }

            *(v126 + 2) = v165 + 1;
            v166 = &v126[16 * v165];
            *(v166 + 4) = v162;
            *(v166 + 5) = v163;
            v160 = v293;
            goto LABEL_96;
          }

          if (v161 == 6)
          {
            (*v307)(v30, v308);
          }

          else
          {
LABEL_105:
            sub_22701A964(v30);
          }

          sub_22701A964(v160);
LABEL_96:
          v158 += v159;
          if (!--v157)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 7:
      v209 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v210 = *(v302 + 16);
      if (v210)
      {
        v211 = v302 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
        v212 = *(v209 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        v213 = v295;
        v214 = v294;
        while (1)
        {
          sub_22701A900(v211, v214);
          sub_22701A900(v214, v213);
          v215 = swift_getEnumCaseMultiPayload();
          if (v215 > 0xC)
          {
            goto LABEL_160;
          }

          if (((1 << v215) & 0x17BE) != 0)
          {
            v216 = *v213;
            v217 = v213[1];
            sub_22701A964(v214);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v219 = *(v126 + 2);
            v218 = *(v126 + 3);
            if (v219 >= v218 >> 1)
            {
              v126 = sub_226EB3F78((v218 > 1), v219 + 1, 1, v126);
            }

            *(v126 + 2) = v219 + 1;
            v220 = &v126[16 * v219];
            *(v220 + 4) = v216;
            *(v220 + 5) = v217;
            v213 = v295;
            v214 = v294;
            goto LABEL_151;
          }

          if (v215 == 6)
          {
            (*v307)(v213, v308);
          }

          else
          {
LABEL_160:
            sub_22701A964(v213);
          }

          sub_22701A964(v214);
LABEL_151:
          v211 += v212;
          if (!--v210)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 8:
      v121 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_227670CD0;
      v123 = *(v302 + 16);
      KeyPath = v122;
      if (v123)
      {
        v124 = v302 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v125 = *(v121 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        v127 = v297;
        v128 = v296;
        while (1)
        {
          sub_22701A900(v124, v128);
          sub_22701A900(v128, v127);
          v129 = swift_getEnumCaseMultiPayload();
          if (v129 > 0xC)
          {
            goto LABEL_63;
          }

          if (((1 << v129) & 0x17BE) != 0)
          {
            v130 = *v127;
            v131 = v127[1];
            sub_22701A964(v128);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v133 = *(v126 + 2);
            v132 = *(v126 + 3);
            if (v133 >= v132 >> 1)
            {
              v126 = sub_226EB3F78((v132 > 1), v133 + 1, 1, v126);
            }

            *(v126 + 2) = v133 + 1;
            v134 = &v126[16 * v133];
            *(v134 + 4) = v130;
            *(v134 + 5) = v131;
            v127 = v297;
            v128 = v296;
            goto LABEL_54;
          }

          if (v129 == 6)
          {
            (*v307)(v127, v308);
          }

          else
          {
LABEL_63:
            sub_22701A964(v127);
          }

          sub_22701A964(v128);
LABEL_54:
          v124 += v125;
          if (!--v123)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 9:
      return result;
    case 10:
      v196 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_227670CD0;
      v198 = *(v302 + 16);
      KeyPath = v197;
      if (v198)
      {
        v199 = v302 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
        v200 = *(v196 + 72);
        v307 = (v306 + 8);
        v126 = MEMORY[0x277D84F90];
        v201 = v299;
        v202 = v298;
        while (1)
        {
          sub_22701A900(v199, v202);
          sub_22701A900(v202, v201);
          v203 = swift_getEnumCaseMultiPayload();
          if (v203 > 0xC)
          {
            goto LABEL_146;
          }

          if (((1 << v203) & 0x17BE) != 0)
          {
            v204 = *v201;
            v205 = v201[1];
            sub_22701A964(v202);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_226EB3F78(0, *(v126 + 2) + 1, 1, v126);
            }

            v207 = *(v126 + 2);
            v206 = *(v126 + 3);
            if (v207 >= v206 >> 1)
            {
              v126 = sub_226EB3F78((v206 > 1), v207 + 1, 1, v126);
            }

            *(v126 + 2) = v207 + 1;
            v208 = &v126[16 * v207];
            *(v208 + 4) = v204;
            *(v208 + 5) = v205;
            v201 = v299;
            v202 = v298;
            goto LABEL_137;
          }

          if (v203 == 6)
          {
            (*v307)(v201, v308);
          }

          else
          {
LABEL_146:
            sub_22701A964(v201);
          }

          sub_22701A964(v202);
LABEL_137:
          v199 += v200;
          if (!--v198)
          {
            goto LABEL_204;
          }
        }
      }

      v126 = MEMORY[0x277D84F90];
LABEL_204:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v286 = KeyPath;
      *(KeyPath + 7) = v285;
      *(v286 + 8) = sub_2275125B4();
      *(v286 + 4) = v126;
      return sub_22766C7F0();
    case 11:
      v81 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v308 = swift_allocObject();
      *(v308 + 16) = xmmword_227670CD0;
      v82 = *(v302 + 16);
      if (v82)
      {
        v83 = v302 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v84 = *(v81 + 72);
        v85 = MEMORY[0x277D84F90];
        v86 = v288;
        v87 = v287;
        do
        {
          sub_22701A900(v83, v87);
          sub_22701A900(v87, v86);
          if (swift_getEnumCaseMultiPayload() == 11)
          {
            v89 = *(v86 + 8);
            v90 = *(v86 + 16);
            v314 = *v86;
            v88 = *&v314;
            v315 = v89;
            v316 = v90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
            sub_227663AD0();
            sub_226EB2DFC(v88, v89, v90);
            v91 = v311;
            v92 = v312;
            sub_22701A964(v87);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = sub_226EB3F78(0, *(v85 + 2) + 1, 1, v85);
            }

            v94 = *(v85 + 2);
            v93 = *(v85 + 3);
            if (v94 >= v93 >> 1)
            {
              v85 = sub_226EB3F78((v93 > 1), v94 + 1, 1, v85);
            }

            *(v85 + 2) = v94 + 1;
            v95 = &v85[16 * v94];
            *(v95 + 4) = v91;
            *(v95 + 5) = v92;
            v86 = v288;
            v87 = v287;
          }

          else
          {
            sub_22701A964(v86);
            sub_22701A964(v87);
          }

          v83 += v84;
          --v82;
        }

        while (v82);
      }

      else
      {
        v85 = MEMORY[0x277D84F90];
      }

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v222 = v308;
      *(v308 + 56) = v221;
      *(v222 + 64) = sub_2275125B4();
      *(v222 + 32) = v85;
      return sub_22766C7F0();
    case 12:
      v107 = v64;
      KeyPath = swift_getKeyPath();
      v108 = *(v302 + 16);
      if (v108)
      {
        v109 = v302 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v110 = *(v107 + 72);
        v307 = (v306 + 8);
        *&v111 = MEMORY[0x277D84F90];
        v112 = v301;
        v113 = v300;
        while (1)
        {
          sub_22701A900(v109, v113);
          sub_22701A900(v113, v112);
          v114 = swift_getEnumCaseMultiPayload();
          if (v114 > 0xC)
          {
            goto LABEL_49;
          }

          if (((1 << v114) & 0x17BE) != 0)
          {
            v117 = v112;
            v115 = *v112;
            v116 = v117[1];
            sub_22701A964(v113);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v111 = COERCE_DOUBLE(sub_226EB3F78(0, *(v111 + 2) + 1, 1, v111));
            }

            v119 = *(v111 + 2);
            v118 = *(v111 + 3);
            if (v119 >= v118 >> 1)
            {
              *&v111 = COERCE_DOUBLE(sub_226EB3F78((v118 > 1), v119 + 1, 1, v111));
            }

            *(v111 + 2) = v119 + 1;
            v120 = &v111[16 * v119];
            *(v120 + 4) = v115;
            *(v120 + 5) = v116;
            v112 = v301;
            v113 = v300;
            goto LABEL_40;
          }

          if (v114 == 6)
          {
            (*v307)(v112, v308);
          }

          else
          {
LABEL_49:
            sub_22701A964(v112);
          }

          sub_22701A964(v113);
LABEL_40:
          v109 += v110;
          if (!--v108)
          {
            goto LABEL_166;
          }
        }
      }

      *&v111 = MEMORY[0x277D84F90];
LABEL_166:
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v314 = *&v111;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v225 = sub_22766C820();
      sub_226ED25F8(&v314, &v311);
      v226 = v313;
      if (v313)
      {
LABEL_198:
        v278 = __swift_project_boxed_opaque_existential_0(&v311, v313);
        v279 = *(v226 - 8);
        v280 = MEMORY[0x28223BE20](v278);
        v282 = &v287 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v279 + 16))(v282, v280);
        v227 = sub_22766D170();
        (*(v279 + 8))(v282, v226);
        __swift_destroy_boxed_opaque_existential_0(&v311);
      }

      else
      {
        v227 = 0;
      }

LABEL_200:
      v283 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v284 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(&v314, &unk_27D7BC990, &qword_227670A30);
      return v284;
    default:
      v68 = v64;
      v308 = swift_getKeyPath();
      v69 = *(v302 + 16);
      if (v69)
      {
        v70 = v302 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v71 = *(v68 + 72);
        *&v72 = MEMORY[0x277D84F90];
        do
        {
          sub_22701A900(v70, v59);
          sub_22701A900(v59, v56);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22701A964(v56);
            sub_22701A964(v59);
          }

          else
          {
            v74 = *(v56 + 1);
            v75 = v56[16];
            v314 = *v56;
            v73 = *&v314;
            v315 = v74;
            v316 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
            sub_227663AD0();
            sub_226EB2DFC(v73, v74, v75);
            v76 = v311;
            v77 = v312;
            sub_22701A964(v59);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v72 = COERCE_DOUBLE(sub_226EB3F78(0, *(v72 + 2) + 1, 1, v72));
            }

            v79 = *(v72 + 2);
            v78 = *(v72 + 3);
            if (v79 >= v78 >> 1)
            {
              *&v72 = COERCE_DOUBLE(sub_226EB3F78((v78 > 1), v79 + 1, 1, v72));
            }

            *(v72 + 2) = v79 + 1;
            v80 = &v72[16 * v79];
            *(v80 + 4) = v76;
            *(v80 + 5) = v77;
          }

          v70 += v71;
          --v69;
        }

        while (v69);
      }

      else
      {
        *&v72 = MEMORY[0x277D84F90];
      }

      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v314 = *&v72;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v228 = sub_22766C820();
      sub_226ED25F8(&v314, &v311);
      v229 = v313;
      if (v313)
      {
        v230 = __swift_project_boxed_opaque_existential_0(&v311, v313);
        v231 = *(v229 - 8);
        v232 = MEMORY[0x28223BE20](v230);
        v234 = &v287 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v231 + 16))(v234, v232);
        v235 = sub_22766D170();
        (*(v231 + 8))(v234, v229);
        __swift_destroy_boxed_opaque_existential_0(&v311);
      }

      else
      {
        v235 = 0;
      }

      v236 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v237 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(&v314, &unk_27D7BC990, &qword_227670A30);
      return v237;
  }
}

id sub_227511F10(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_22750F910(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 notPredicateWithSubpredicate_];
    if (v2 > 6u)
    {
      if (v2 > 9u)
      {
        if (v2 != 10 && v2 != 11)
        {
          goto LABEL_18;
        }
      }

      else if (v2 != 7 && v2 != 8)
      {
        goto LABEL_18;
      }
    }

    else if (v2 > 2u)
    {
      if (v2 - 4 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (!v2)
    {
LABEL_18:

      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2276756A0;
    *(v7 + 32) = v6;
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v8 = v6;
    *(v7 + 40) = sub_22766C7F0();
    v9 = sub_22766C2B0();

    v6 = [v5 orPredicateWithSubpredicates_];

    v4 = v9;
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_2275125B4()
{
  result = qword_281398F60;
  if (!qword_281398F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F60);
  }

  return result;
}

uint64_t sub_227512618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227512688(uint64_t a1)
{
  v34 = sub_227666170();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227666150();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

double sub_2275129B4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F0, qword_22768A9A8);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272334B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    swift_deallocClassInstance();
    sub_22722AE80(v16, a2);
  }

  return result;
}

double sub_227512BD8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v38 = v9;
  v39 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_227664690();
  v12 = v11;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v43[0] = v10;
  v43[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v43, v41, &unk_27D7BC990, &qword_227670A30);
  v14 = v42;
  if (v42)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v40 = &v37;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F8 &qword_22768AA58))];

  sub_226E97D1C(v43, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v43, 0);
  swift_endAccess();

  v30 = sub_227542618(v7 + v25, v5, v6);
  v31 = v43[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_2272846DC(0);
  if (v31)
  {
LABEL_10:

    return result;
  }

  v34 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v35 = sub_22766C9E0();
  v36 = sub_226EDAB24(v35);

  sub_226EDAB78(v36, v38);

  return result;
}

void sub_22751304C(uint64_t a1, void *a2)
{
  v4 = sub_227512688(a1);
  v40 = v2;
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  v34 = v12;
  v35 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  v36 = v8;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v13 = sub_227073F2C(v4);

  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v39[0] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v39, v37, &unk_27D7BC990, &qword_227670A30);
  v15 = v38;
  if (v38)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v37, v38);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v39, &unk_27D7BC990, &qword_227670A30);
  v23 = qword_2813B2078;
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v39, 0);
  swift_endAccess();

  v27 = sub_227542660(v10 + v23, v36, v9);
  if (v27)
  {
    if (v27 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v28 = v40;
  v29 = sub_2272846F4(0);
  if (v28)
  {
LABEL_10:

    return;
  }

  v30 = v29;
  [v29 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v31 = sub_22766C9E0();
  v32 = sub_226EDAB24(v31);

  sub_226EDAB78(v32, v34);
}

char *sub_2275134A4(void *a1)
{
  v2 = sub_227662930();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_227662750();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v47[-v11];
  MEMORY[0x28223BE20](v13);
  v50 = &v47[-v14];
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = *v15;
  v17 = v15[1];
  v48 = *(v15 + 16);
  v18 = v15[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v19 = swift_allocObject();
  v20 = v16;
  v21 = v17;

  v22 = v49;
  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v48;
  *(v19 + 40) = v18;
  swift_getKeyPath();
  sub_227662740();
  v24 = v51;
  v23 = v52;
  (*(v51 + 104))(v4, *MEMORY[0x277CC9998], v52);
  sub_227662610();
  (*(v24 + 8))(v4, v23);
  (*(v22 + 8))(v7, v5);
  v25 = *(v22 + 48);
  if (v25(v12, 1, v5) == 1)
  {
    v26 = v50;
    sub_227662660();
    if (v25(v12, 1, v5) != 1)
    {
      sub_226E97D1C(v12, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v26 = v50;
    (*(v22 + 32))(v50, v12, v5);
  }

  (*(v22 + 56))(v26, 0, 1, v5);
  v27 = v53;
  sub_226E93170(v26, v53, &qword_27D7B9690, qword_227670B50);
  if (v25(v27, 1, v5) == 1)
  {
    sub_226E97D1C(v27, &qword_27D7B9690, qword_227670B50);
    v56 = 0u;
    v57 = 0u;
  }

  else
  {
    *(&v57 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
    (*(v22 + 32))(boxed_opaque_existential_0, v27, v5);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v29 = sub_22766C820();
  sub_226E93170(&v56, v54, &unk_27D7BC990, &qword_227670A30);
  v30 = v55;
  if (v55)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = &v47[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v38 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v56, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v39 = v38;
  v40 = sub_22766A080();
  v42 = v41;
  MEMORY[0x22AA985C0]();
  if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v40(&v56, 0);
  swift_endAccess();

  v43 = sub_2272331B8(100);
  swift_setDeallocating();

  v44 = qword_2813B2078;
  v45 = sub_22766A100();
  (*(*(v45 - 8) + 8))(v19 + v44, v45);
  swift_deallocClassInstance();
  return v43;
}

double sub_227513C04(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F0, qword_22768A9A8);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v11 = qword_2813B2078;
  swift_beginAccess();
  v12 = sub_2275426A8(v8 + v11, v7, v6);
  if (v12)
  {
    if (v12 == 1)
    {

LABEL_4:
      v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB250, &unk_22768AA60);
      v14 = sub_227669040();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_227670CD0;
      (*(v15 + 16))(v17 + v16, a1, v14);
      sub_22755807C(v17, v13[1], *(v13 + 16), v13[3]);

      return result;
    }

    swift_willThrow();
  }

  else
  {
    v19 = sub_22723E058(0);
    if (!v24)
    {
      v20 = v19;
      [v19 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v21 = sub_22766C9E0();
      v22 = sub_226EDAB24(v21);

      sub_226EDAB78(v22, v10);

      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_227513EC4(void *a1)
{
  v2 = sub_227662930();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_227662750();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v51[-v11];
  MEMORY[0x28223BE20](v13);
  v54 = &v51[-v14];
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = *v15;
  v17 = v15[1];
  v52 = *(v15 + 16);
  v18 = v15[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v19 = swift_allocObject();
  v20 = v16;
  v21 = v17;

  v22 = v53;
  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v52;
  *(v19 + 40) = v18;
  swift_getKeyPath();
  sub_227662740();
  v24 = v55;
  v23 = v56;
  (*(v55 + 104))(v4, *MEMORY[0x277CC9998], v56);
  sub_227662610();
  (*(v24 + 8))(v4, v23);
  (*(v22 + 8))(v7, v5);
  v25 = *(v22 + 48);
  if (v25(v12, 1, v5) == 1)
  {
    v26 = v54;
    sub_227662660();
    if (v25(v12, 1, v5) != 1)
    {
      sub_226E97D1C(v12, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v26 = v54;
    (*(v22 + 32))(v54, v12, v5);
  }

  (*(v22 + 56))(v26, 0, 1, v5);
  v27 = v57;
  sub_226E93170(v26, v57, &qword_27D7B9690, qword_227670B50);
  if (v25(v27, 1, v5) == 1)
  {
    sub_226E97D1C(v27, &qword_27D7B9690, qword_227670B50);
    v60 = 0u;
    v61 = 0u;
  }

  else
  {
    *(&v61 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    (*(v22 + 32))(boxed_opaque_existential_0, v27, v5);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v29 = sub_22766C820();
  sub_226E93170(&v60, v58, &unk_27D7BC990, &qword_227670A30);
  v30 = v59;
  if (v59)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = &v51[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v36 = 0;
  }

  v37 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v38 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v60, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v39 = v38;
  v40 = sub_22766A080();
  v42 = v41;
  MEMORY[0x22AA985C0]();
  if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v40(&v60, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v44 = v62;
  sub_2273FC778(KeyPath);
  if (v44)
  {

    swift_setDeallocating();

    v46 = qword_2813B2078;
    v47 = sub_22766A100();
    (*(*(v47 - 8) + 8))(v19 + v46, v47);
  }

  else
  {
    v46 = sub_226F3E6A8(v45);

    swift_setDeallocating();

    v48 = qword_2813B2078;
    v49 = sub_22766A100();
    (*(*(v49 - 8) + 8))(v19 + v48, v49);
  }

  swift_deallocClassInstance();
  return v46;
}

unint64_t sub_227514708()
{
  result = qword_27D7BE400;
  if (!qword_27D7BE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE400);
  }

  return result;
}

uint64_t sub_22751475C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE438, &qword_22768ABF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227514C98();
  sub_22766D480();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE420, &qword_22768ABF0);
  sub_227514D40(&qword_27D7BE440, sub_227514DB8, MEMORY[0x277D83B50]);
  sub_22766D120();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_22766D120();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_227514950(uint64_t a1)
{
  v2 = sub_227514C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22751498C(uint64_t a1)
{
  v2 = sub_227514C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2275149C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_227514A68(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_227514A14()
{
  result = qword_27D7BE408;
  if (!qword_27D7BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE408);
  }

  return result;
}

uint64_t sub_227514A68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE410, &qword_22768ABE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227514C98();
  sub_22766D460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE420, &qword_22768ABF0);
  v9 = 0;
  sub_227514D40(&qword_27D7BE428, sub_227514CEC, MEMORY[0x277D83B70]);
  sub_22766D0B0();
  v7 = v10;
  v9 = 1;
  sub_22766D0B0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_227514C98()
{
  result = qword_27D7BE418;
  if (!qword_27D7BE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE418);
  }

  return result;
}

unint64_t sub_227514CEC()
{
  result = qword_27D7BE430;
  if (!qword_27D7BE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE430);
  }

  return result;
}

uint64_t sub_227514D40(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE420, &qword_22768ABF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227514DB8()
{
  result = qword_27D7BE448;
  if (!qword_27D7BE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE448);
  }

  return result;
}

unint64_t sub_227514E30()
{
  result = qword_27D7BE450;
  if (!qword_27D7BE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE450);
  }

  return result;
}

unint64_t sub_227514E88()
{
  result = qword_27D7BE458;
  if (!qword_27D7BE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE458);
  }

  return result;
}

unint64_t sub_227514EE0()
{
  result = qword_27D7BE460;
  if (!qword_27D7BE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE460);
  }

  return result;
}

void sub_227514F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_226F204A8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22766CC90();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F204A8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = 3;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_226EB526C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_227515168(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v37 = a3;
  v36 = a2(0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v29[1] = v3;
    v42 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v40 = a1 + 56;
    v41 = v42;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v33 = v5 + 8;
    v34 = v5 + 16;
    v30 = a1 + 64;
    v31 = v7;
    v32 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v40 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v35;
      v15 = v36;
      v16 = (*(v5 + 16))(v35, *(a1 + 48) + *(v5 + 72) * v9, v36);
      v39 = v37(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v41;
      v42 = v41;
      v20 = *(v41 + 16);
      if (v20 >= *(v41 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v19 = v42;
      }

      *(v19 + 16) = v20 + 1;
      v21 = v19 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v22 = *(v40 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v31;
        v5 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v12 = v31;
        v26 = (v30 + 8 * v13);
        v5 = v32;
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v9, v38, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v38, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_227515478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_226F207C8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22766CC90();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F207C8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = 1;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_226EB526C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void *sub_2275156A8(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FEBD48(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A4F18(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A4F18((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD158, &qword_227683AA0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void *sub_227515968(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F48C1C(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FEC490(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A6AB4(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A6AB4((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1A0, &qword_227679CE0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_227515C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52[0] = a3;
  v59 = a2;
  v53 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v60 = a1;

  v8 = 0;
  v9 = &unk_27D7BC990;
  v57 = v7;
  v58 = v3;
LABEL_5:
  for (i = v8; !v6; ++i)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_41;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
  }

  v11 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v12 = (v8 << 9) | (8 * v11);
  v13 = *(v60 + 56);
  v54 = *(*(v60 + 48) + v12);
  v14 = *(v13 + v12);
  v15 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v16 = v14[2];

  v17 = 0;
  v18 = v14 + 6;
LABEL_10:
  v19 = &v18[3 * v17];
  while (1)
  {
    if (v16 == v17)
    {
      if (v15 >> 62)
      {
        if (!sub_22766CD20())
        {
LABEL_23:

          goto LABEL_5;
        }
      }

      else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v36 = v9;
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v37 = sub_22766C2B0();

      v64 = [objc_opt_self() *v52[0]];

      v38 = v53[2];
      if (v53[3] <= v38)
      {
        sub_226FE466C(v38 + 1, 1);
      }

      v39 = v69;
      v40 = v54;
      v41 = sub_22766D360();
      v42 = v39 + 64;
      v53 = v39;
      v43 = -1 << *(v39 + 32);
      v44 = v41 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v39 + 64 + 8 * (v44 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v43) >> 6;
        v9 = v36;
        while (++v45 != v48 || (v47 & 1) == 0)
        {
          v49 = v45 == v48;
          if (v45 == v48)
          {
            v45 = 0;
          }

          v47 |= v49;
          v50 = *(v42 + 8 * v45);
          if (v50 != -1)
          {
            v46 = __clz(__rbit64(~v50)) + (v45 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_42;
      }

      v46 = __clz(__rbit64((-1 << v44) & ~*(v39 + 64 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v9 = v36;
LABEL_37:
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v51 = v53;
      *(v53[6] + 8 * v46) = v40;
      *(v51[7] + 8 * v46) = v64;
      ++v51[2];
      goto LABEL_5;
    }

    if (v17 >= v16)
    {
      break;
    }

    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_40;
    }

    v21 = *v19;
    v19 += 24;
    ++v17;
    if (v21 == 1)
    {
      v63 = v18;
      v64 = v14;
      v22 = *(v19 - 5);
      v23 = *(v19 - 4);
      KeyPath = swift_getKeyPath();
      v67[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v67[0] = v22;
      v67[1] = v23;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
      sub_226F48BA8(v22, v23, 1);
      v62 = v22;
      sub_226F48BA8(v22, v23, 1);

      v61 = KeyPath;
      v25 = sub_22766C820();
      sub_226E93170(v67, v65, v9, &qword_227670A30);
      v26 = v66;
      if (v66)
      {
        v27 = __swift_project_boxed_opaque_existential_0(v65, v66);
        v55 = v52;
        v56 = v25;
        v28 = *(v26 - 8);
        v29 = MEMORY[0x28223BE20](v27);
        v31 = v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v31, v29);
        v32 = sub_22766D170();
        (*(v28 + 8))(v31, v26);
        v25 = v56;
        __swift_destroy_boxed_opaque_existential_0(v65);
      }

      else
      {
        v32 = 0;
      }

      v33 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0, qword_2276831F0));
      [v34 initWithLeftExpression:v25 rightExpression:v33 modifier:0 type:v59 options:0];

      v9 = &unk_27D7BC990;
      sub_226E97D1C(v67, &unk_27D7BC990, &qword_227670A30);
      v35 = sub_226F48BB8(v62, v23, 1);
      MEMORY[0x22AA985C0](v35);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
        v9 = &unk_27D7BC990;
      }

      sub_22766C3A0();
      v15 = v68;
      v17 = v20;
      v7 = v57;
      v3 = v58;
      v18 = v63;
      v14 = v64;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_227516204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_10:
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v15 = a4(v14, a2, a3);
    if (v4)
    {

      return;
    }

    v16 = v15;
    v9 &= v9 - 1;

    if (v16)
    {
      v17 = *(v5 + 16);
      if (*(v5 + 24) <= v17)
      {
        sub_226FE466C(v17 + 1, 1);
        v5 = v32;
      }

      v18 = sub_22766D360();
      v19 = v5 + 64;
      v20 = -1 << *(v5 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v5 + 48) + 8 * v23) = v13;
      *(*(v5 + 56) + 8 * v23) = v16;
      ++*(v5 + 16);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_227516448()
{
  v0 = sub_227664380();
  v1 = sub_226F51A40(v0);
  sub_227515C28(v1, 4, &selRef_orPredicateWithSubpredicates_);
  v3 = v2;

  v4 = sub_227664370();
  v5 = sub_226F51A40(v4);
  sub_227515C28(v5, 5, &selRef_andPredicateWithSubpredicates_);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v3 + 16), 0);
  v10 = sub_2274CF834();
  result = sub_226EBB21C(v16);
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v16);
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_227516600(uint64_t a1, uint64_t a2)
{

  v3 = sub_2275156A8(a2);
  sub_227516204(v3, sub_226F05F3C, &selRef_orPredicateWithSubpredicates_, sub_22751680C);
  v5 = v4;

  v7 = sub_2275156A8(v6);
  sub_227516204(v7, sub_226F05F44, &selRef_andPredicateWithSubpredicates_, sub_22751680C);
  v9 = v8;

  v10 = *(v5 + 16);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_226ECC830(*(v5 + 16), 0);
  v12 = sub_2274CF834();
  result = sub_226EBB21C(v18);
  if (v12 == v10)
  {
    v14 = *(v9 + 16);
    if (v14)
    {
      while (1)
      {
        v15 = sub_226ECC830(v14, 0);
        v9 = sub_2274CF834();
        sub_226EBB21C(v18);
        if (v9 == v14)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v11 = MEMORY[0x277D84F90];
        v14 = *(v9 + 16);
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v15 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v15);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v16 = sub_22766C2B0();

    v17 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22751680C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), SEL *a3)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v6 = a1 + 48;
  v18 = a1 + 48;
LABEL_2:
  v7 = (v6 + 24 * v4);
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if (!sub_22766CD20())
      {
        goto LABEL_16;
      }

LABEL_12:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v14 = sub_22766C2B0();

      v15 = [objc_opt_self() *a3];

      return v15;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    v10 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v7 += 24;
    sub_226F04958(v10, v9, v11);
    v12 = a2(v10, v9, v11);
    v13 = sub_226F491F8(v10, v9, v11);
    ++v4;
    if (v12)
    {
      MEMORY[0x22AA985C0](v13);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v19 = v20;
      v4 = v8;
      v6 = v18;
      goto LABEL_2;
    }
  }

  if (v19 >> 62)
  {
    goto LABEL_15;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_16:

  return 0;
}

id sub_227516A1C()
{
  v0 = sub_2276641A0();
  v1 = sub_227515968(v0);
  sub_227516204(v1, 4, &selRef_orPredicateWithSubpredicates_, sub_227517888);
  v3 = v2;

  v4 = sub_227664190();
  v5 = sub_227515968(v4);
  sub_227516204(v5, 5, &selRef_andPredicateWithSubpredicates_, sub_227517888);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v3 + 16), 0);
  v10 = sub_2274CF834();
  result = sub_226EBB21C(v16);
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v16);
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227516BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99E8, &qword_227674E10);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v16 = swift_allocObject();
  v17 = v12;
  v18 = v13;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = a1;
  v52[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  v33 = v53;
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v52, 0);
  swift_endAccess();

  v34 = MEMORY[0x22AA99A00]();
  v35 = v49;
  sub_227544E3C(v33);
  if (v35)
  {
    objc_autoreleasePoolPop(v34);
    swift_setDeallocating();

    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v16 + v36, v37);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v34);
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v16 + v39, v40);
    swift_deallocClassInstance();
    v41 = v48;
    sub_226E93170(v33, v48, &qword_27D7B99E8, &qword_227674E10);
    v42 = sub_227669480();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      sub_226E97D1C(v41, &qword_27D7B99E8, &qword_227674E10);
      v44 = sub_227663D00();
      sub_22751A63C();
      swift_allocError();
      (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D50468], v44);
      swift_willThrow();
      return sub_226E97D1C(v33, &qword_27D7B99E8, &qword_227674E10);
    }

    else
    {
      sub_226E97D1C(v33, &qword_27D7B99E8, &qword_227674E10);
      return (*(v43 + 32))(v47, v41, v42);
    }
  }
}

uint64_t sub_227517298@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v6 - 8);
  v45[0] = v45 - v7;
  v52 = sub_227664390();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[1] = a1;
  v10 = sub_227669460();
  v11 = sub_227515168(v10, MEMORY[0x277D502D0], MEMORY[0x277D502C0]);

  v12 = sub_226F3E6A8(v11);

  sub_227515478(v12);
  v14 = v13;
  v48 = v3;

  sub_226F47F48(v14);

  sub_227664360();
  v49 = v9;
  v15 = sub_226F51D00();
  v17 = v16;
  v18 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v19 = *v18;
  v20 = v18[1];
  v47 = *(v18 + 16);
  v21 = v18[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v22 = swift_allocObject();
  v23 = v19;
  v24 = v20;

  sub_22766A070();
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = v47;
  *(v22 + 40) = v21;
  v25 = sub_227516600(v15, v17);

  swift_beginAccess();
  v26 = sub_22766A080();
  v28 = v27;
  v29 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v51, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v31 = v48;
  sub_2273FC91C(KeyPath);
  if (v31)
  {

    swift_setDeallocating();

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v22 + v33, v34);
    swift_deallocClassInstance();
    return (*(v50 + 8))(v49, v52);
  }

  else
  {
    v36 = sub_226F3E6A8(v32);

    swift_setDeallocating();

    v37 = qword_2813B2078;
    v38 = sub_22766A100();
    (*(*(v38 - 8) + 8))(v22 + v37, v38);
    swift_deallocClassInstance();
    if (*(v36 + 16))
    {
      v39 = sub_227669460();
      sub_22751A9D4(v39, v36);

      v40 = sub_227662750();
      v41 = v45[0];
      (*(*(v40 - 8) + 56))(v45[0], 1, 1, v40);
      v42 = v46;
      sub_227669470();

      sub_226E97D1C(v41, &qword_27D7B9690, qword_227670B50);
      (*(v50 + 8))(v49, v52);
      v43 = 0;
    }

    else
    {
      (*(v50 + 8))(v49, v52);

      v43 = 1;
      v42 = v46;
    }

    v44 = sub_227669480();
    return (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
  }
}

id sub_227517888(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  v6 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = 0;
    v10 = a1 + 32;
    do
    {
      v11 = v10 + 24 * v9;
      v12 = v9;
      while (1)
      {
        if (v12 >= v7)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_26;
        }

        v13 = *(v11 + 16);
        if (v13 >= 2)
        {
          break;
        }

        ++v12;
        v11 += 24;
        if (v9 == v7)
        {
          goto LABEL_22;
        }
      }

      v49 = v10;
      v50 = a2;
      if (v13 == 2)
      {
        swift_getKeyPath();
        v14 = sub_227665D00();
        v16 = v15;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v53 = v14;
        v54 = v16;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v17 = sub_22766C820();
        sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
        v18 = v52;
        if (v52)
        {
          v19 = __swift_project_boxed_opaque_existential_0(v51, v52);
          v47 = v46;
          v48 = v5;
          v20 = a3;
          v21 = *(v18 - 8);
          v22 = MEMORY[0x28223BE20](v19);
          v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v21 + 16))(v24, v22);
          v25 = sub_22766D170();
          (*(v21 + 8))(v24, v18);
          a3 = v20;
          v5 = v48;
          __swift_destroy_boxed_opaque_existential_0(v51);
        }

        else
        {
          v25 = 0;
        }

        v38 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0));
        a2 = v50;
        [v39 initWithLeftExpression:v17 rightExpression:v38 modifier:0 type:v50 options:0];

        v40 = sub_226E97D1C(&v53, &unk_27D7BC990, &qword_227670A30);
      }

      else
      {
        v47 = a3;
        v48 = v5;
        v26 = *v11;
        v27 = *(v11 + 8);
        KeyPath = swift_getKeyPath();
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v53 = v26;
        v54 = v27;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        sub_226F48C1C(v26, v27, 3);
        sub_226F48C1C(v26, v27, 3);

        v29 = sub_22766C820();
        sub_226E93170(&v53, v51, &unk_27D7BC990, &qword_227670A30);
        v30 = v52;
        if (v52)
        {
          v31 = __swift_project_boxed_opaque_existential_0(v51, v52);
          v46[0] = v46;
          v46[1] = KeyPath;
          v32 = v29;
          v33 = *(v30 - 8);
          v34 = MEMORY[0x28223BE20](v31);
          v36 = v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v36, v34);
          v37 = sub_22766D170();
          (*(v33 + 8))(v36, v30);
          v29 = v32;
          __swift_destroy_boxed_opaque_existential_0(v51);
        }

        else
        {
          v37 = 0;
        }

        v41 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v42 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0));
        a2 = v50;
        [v42 initWithLeftExpression:v29 rightExpression:v41 modifier:0 type:v50 options:0];
        sub_226F48C34(v26, v27, 3);

        v40 = sub_226E97D1C(&v53, &unk_27D7BC990, &qword_227670A30);
        a3 = v47;
        v5 = v48;
      }

      MEMORY[0x22AA985C0](v40);
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v6 = v56;
      v10 = v49;
    }

    while (v9 != v7);
  }

LABEL_22:
  if (v6 >> 62)
  {
LABEL_27:
    if (sub_22766CD20())
    {
      goto LABEL_24;
    }

LABEL_28:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_24:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v43 = sub_22766C2B0();

  v44 = [objc_opt_self() *a3];

  return v44;
}

void *sub_227517E94(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a7)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22751A6B0(v13, a2, a3, a4, a5, a6, a7);
    v15 = v14;
    swift_bridgeObjectRelease_n();

    return v15;
  }

  return result;
}

uint64_t sub_227517F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227669360();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_227669350();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_22726BD18(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_227517E94(v38, v10, a1, v39, MEMORY[0x277D53BA0], sub_22726BD18, MEMORY[0x277D53B80]);

  MEMORY[0x22AA9A450](v38, -1, -1);

  return v36;
}

uint64_t *sub_2275183DC(uint64_t a1, void *a2)
{
  v3 = sub_2276641B0();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a2[3];
  v56 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a2, v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v11 = swift_allocObject();
  v12 = &qword_2813B2078;
  v13 = v7;
  v14 = v8;

  sub_22766A070();
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v15 = sub_227516A1C();
  swift_beginAccess();
  v16 = sub_22766A080();
  v18 = v17;
  v19 = v15;
  MEMORY[0x22AA985C0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v16(v60, 0);
  swift_endAccess();

  v20 = v61;
  v21 = sub_2272391B8(0x64);
  if (v20)
  {
    swift_setDeallocating();

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v11 + v22, v23);
    swift_deallocClassInstance();
  }

  else
  {
    v24 = v21;
    swift_setDeallocating();

    v25 = qword_2813B2078;
    v26 = sub_22766A100();
    v27 = *(v26 - 8);
    v54 = *(v27 + 8);
    v55 = v26;
    v53 = v27 + 8;
    v54(v11 + v25);
    swift_deallocClassInstance();
    v61 = v24;
    v28 = sub_227515168(v24, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);
    v29 = sub_226F3E6A8(v28);

    sub_227514F34(v29);
    v31 = v30;
    v52 = 0;

    sub_226F46AE4(v31);

    sub_227664180();
    sub_2275D8060();
    v12 = sub_227516600(v32, v33);

    v34 = __swift_project_boxed_opaque_existential_0(v56, v56[3]);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v34 + 16);
    v38 = v34[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v39 = swift_allocObject();
    v40 = v35;
    v41 = v36;

    sub_22766A070();
    *(v39 + 16) = v40;
    *(v39 + 24) = v41;
    *(v39 + 32) = v37;
    *(v39 + 40) = v38;
    swift_beginAccess();
    v42 = sub_22766A080();
    v44 = v43;
    v45 = v12;
    MEMORY[0x22AA985C0]();
    if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v42(v60, 0);
    swift_endAccess();
    KeyPath = swift_getKeyPath();
    v47 = v52;
    sub_2273FC91C(KeyPath);
    if (v47)
    {

      swift_setDeallocating();

      (v54)(v39 + qword_2813B2078, v55);
      swift_deallocClassInstance();
    }

    else
    {
      v49 = sub_226F3E6A8(v48);

      swift_setDeallocating();

      (v54)(v39 + qword_2813B2078, v55);
      swift_deallocClassInstance();
      v12 = sub_227517F50(v61, v49);
    }

    (*(v57 + 8))(v59, v58);
  }

  return v12;
}

char *sub_227518A98(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230638(a1);
  v12 = v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v53[0] = v12;
  v13 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v50 = v13;
  v14 = sub_22766C820();
  sub_226E93170(v53, v51, &unk_27D7BC990, &qword_227670A30);
  v15 = v52;
  if (v52)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v21 = 0;
  }

  v49 = objc_opt_self();
  v22 = [v49 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0);
  [objc_allocWithZone(v48) initWithLeftExpression:v14 rightExpression:v22 modifier:0 type:10 options:0];

  sub_226E97D1C(v53, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v53, 0);
  swift_endAccess();

  swift_getKeyPath();
  v26 = sub_227665D00();
  v28 = v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v53[0] = v26;
  v53[1] = v28;

  v29 = sub_22766C820();
  sub_226E93170(v53, v51, &unk_27D7BC990, &qword_227670A30);
  v30 = v52;
  if (v52)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v51, v52);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v36 = 0;
  }

  v37 = [v49 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v38 = [objc_allocWithZone(v48) initWithLeftExpression:v29 rightExpression:v37 modifier:0 type:4 options:0];

  sub_226E97D1C(v53, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v39 = v38;
  v40 = sub_22766A080();
  v42 = v41;
  MEMORY[0x22AA985C0]();
  if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v40(v53, 0);
  swift_endAccess();

  v43 = sub_2272391B8(0x64);
  swift_setDeallocating();

  v44 = qword_2813B2078;
  v45 = sub_22766A100();
  (*(*(v45 - 8) + 8))(v8 + v44, v45);
  swift_deallocClassInstance();
  return v43;
}

double sub_227519118(uint64_t *a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  v60 = v10;
  v61 = v9;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  v66 = v6;
  *(v8 + 32) = v6;
  v65 = v7;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v64 = a1;
  v11 = sub_227669350();
  v13 = v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v76 = v63;
  v74 = v11;
  v75 = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(&v74, v72, &unk_27D7BC990, &qword_227670A30);
  v15 = v73;
  if (v73)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v72, v73);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_self();
  v23 = [v22 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0);
  v24 = [objc_allocWithZone(v62) initWithLeftExpression:v14 rightExpression:v23 modifier:0 type:4 options:0];

  sub_226E97D1C(&v74, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(&v74, 0);
  swift_endAccess();

  swift_getKeyPath();
  v30 = sub_227669320();
  v32 = v31;
  v69 = v30;
  v70 = v31;
  v34 = v33 & 1;
  v71 = v33 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  sub_226EB2DFC(v30, v32, v34);
  v76 = v63;
  v74 = v67;
  v75 = v68;

  v35 = sub_22766C820();
  sub_226E93170(&v74, v72, &unk_27D7BC990, &qword_227670A30);
  v36 = v73;
  if (v73)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v72, v73);
    v64 = &v59;
    v38 = v8;
    v39 = v25;
    v40 = v22;
    v41 = *(v36 - 8);
    v42 = MEMORY[0x28223BE20](v37);
    v44 = &v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v36);
    v22 = v40;
    v25 = v39;
    v8 = v38;
    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v22 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(v62) initWithLeftExpression:v35 rightExpression:v46 modifier:0 type:4 options:0];

  sub_226E97D1C(&v74, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v48 = v47;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(&v74, 0);
  swift_endAccess();

  v52 = sub_227543290(v8 + v25, v66, v65);
  if (v52)
  {
    if (v52 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v53 = v77;
  v54 = sub_22728494C(0);
  if (v53)
  {
LABEL_15:

    return result;
  }

  v56 = v54;
  [v54 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v57 = sub_22766C9E0();
  v58 = sub_226EDAB24(v57);

  sub_226EDAB78(v58, v60);

  return result;
}

uint64_t sub_22751983C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v29 = a1;
  v12 = sub_227516448();
  swift_beginAccess();
  v13 = sub_22766A080();
  v15 = v14;
  v16 = v12;
  MEMORY[0x22AA985C0]();
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v28[5] = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v13(v30, 0);
  swift_endAccess();

  v17 = v31;
  v18 = sub_226EA2CA4(0x64);
  if (v17)
  {
    swift_setDeallocating();

    v19 = qword_2813B2078;
    v20 = sub_22766A100();
    (*(*(v20 - 8) + 8))(v9 + v19, v20);
    swift_deallocClassInstance();
  }

  else
  {
    v21 = v18;
    swift_setDeallocating();

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v9 + v22, v23);
    v24 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v24);
    v28[2] = v29;
    v28[3] = a2;
    sub_226FDFAE0(sub_22751A694, v28, v21);
    v26 = v25;

    v19 = sub_226F46B8C(v26);
  }

  return v19;
}

uint64_t sub_227519B90(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v10 = v7;
  v11 = sub_227284964(0);
  if (v1)
  {
  }

  else
  {
    v12 = v11;
    [v11 setResultType_];
    [v12 setFetchLimit_];
    [v12 setFetchOffset_];
    [v12 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v10 = sub_22766C9D0();

    swift_setDeallocating();
    v14 = qword_2813B2078;
    v15 = sub_22766A100();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
    swift_deallocClassInstance();
  }

  return v10;
}

char *sub_227519DAC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_227230638(a1);
  v12 = v11;
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v31[0] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v31, v29, &unk_27D7BC990, &qword_227670A30);
  v14 = v30;
  if (v30)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v29, v30);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v31, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v22 = sub_22766A080();
  v24 = v23;
  MEMORY[0x22AA985C0]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v22(v31, 0);
  swift_endAccess();

  v25 = sub_226EA2CA4(0x64);
  swift_setDeallocating();

  v26 = qword_2813B2078;
  v27 = sub_22766A100();
  (*(*(v27 - 8) + 8))(v8 + v26, v27);
  swift_deallocClassInstance();
  return v25;
}

double sub_22751A1C8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v38 = v9;
  v39 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_227669430();
  v12 = v11;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v43[0] = v10;
  v43[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v43, v41, &unk_27D7BC990, &qword_227670A30);
  v14 = v42;
  if (v42)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v40 = &v37;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v43, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v43, 0);
  swift_endAccess();

  v30 = sub_2275432D8(v7 + v25, v5, v6);
  v31 = v43[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_227284964(0);
  if (v31)
  {
LABEL_10:

    return result;
  }

  v34 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v35 = sub_22766C9E0();
  v36 = sub_226EDAB24(v35);

  sub_226EDAB78(v36, v38);

  return result;
}

unint64_t sub_22751A63C()
{
  result = qword_27D7BE468;
  if (!qword_27D7BE468)
  {
    sub_227663D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE468);
  }

  return result;
}

void sub_22751A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a7)(uint64_t))
{
  v49 = a7;
  v44 = a6;
  v43 = a2;
  v45 = a1;
  v9 = a5(0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = 0;
  v54 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v46 = 0;
  v47 = v11 + 16;
  v55 = a4 + 56;
  v48 = v11;
  v50 = (v11 + 8);
  v51 = v14;
  v52 = v10;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_13:
    v26 = v23 | (v15 << 6);
    v27 = *(v54 + 48);
    v28 = *(v48 + 72);
    v53 = v26;
    v29 = (*(v48 + 16))(v14, v27 + v28 * v26, v9, v12);
    v30 = v49(v29);
    v32 = v31;
    if (*(a4 + 16) && (v33 = v30, sub_22766D370(), sub_22766C100(), v34 = sub_22766D3F0(), v35 = -1 << *(a4 + 32), v36 = v34 & ~v35, ((*(v55 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
    {
      v37 = ~v35;
      while (1)
      {
        v38 = (*(a4 + 48) + 16 * v36);
        v39 = *v38 == v33 && v38[1] == v32;
        if (v39 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v55 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v14 = v51;
      v9 = v52;
      (*v50)(v51, v52);
      *(v45 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
LABEL_26:
        v41 = v54;

        (v44)(v45, v43, v46, v41);
        return;
      }
    }

    else
    {
LABEL_5:

      v14 = v51;
      v9 = v52;
      (*v50)(v51, v52);
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_26;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v21 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22751A9D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227663AB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_227663A60();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_22726C5F4(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_227517E94(v38, v10, a1, v39, MEMORY[0x277D502D0], sub_22726C5F4, MEMORY[0x277D502C0]);

  MEMORY[0x22AA9A450](v38, -1, -1);

  return v36;
}

uint64_t sub_22751AE60(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 32);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_9:
    sub_22706F95C();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    swift_willThrow();

    return v3;
  }

  v3 = 0;
  v8 = (v6 + 40);
  while (1)
  {
    result = *(v8 - 1);
    if (result == a1 && *v8 == a2)
    {
      break;
    }

    result = sub_22766D190();
    if (result)
    {
      break;
    }

    ++v3;
    v8 += 2;
    if (v7 == v3)
    {
      goto LABEL_9;
    }
  }

  if (!(v3 >> 31))
  {
    return v3;
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  result = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_int(*(v3 + 24), result);
  }

  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  result = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_int64(*(v3 + 24), result);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  v4 = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_double(*(v3 + 24), v4);
  }

  return result;
}

unint64_t SQLiteDatabaseRow.decode(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = sub_22751AE60(a1, a2);
  if (!v3)
  {
    v6 = result;
    v7 = sqlite3_column_bytes(*(v4 + 24), result);
    v8 = sqlite3_column_blob(*(v4 + 24), v6);
    if (v8)
    {
      return sub_22751B268(v8, v7);
    }

    else
    {
      sub_22706F95C();
      swift_allocError();
      *v9 = xmmword_22767ACC0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  v4 = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    if (sqlite3_column_text(*(v3 + 24), v4))
    {
      v4 = sub_22766C150();
    }

    else
    {
      sub_22706F95C();
      swift_allocError();
      *v6 = xmmword_22767ACC0;
      *(v6 + 16) = 2;
      v4 = swift_willThrow();
    }
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t SQLiteDatabaseRow.hashValue.getter()
{
  sub_22766D370();
  sub_2274AFAB8(v1);
  return sub_22766D3F0();
}

BOOL _s15SeymourServices17SQLiteDatabaseRowV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = 0;
  if (*(*(*a1 + 16) + 16) == *(*(*a2 + 16) + 16))
  {
    v4 = sub_227669C30();
    if (v4 == sub_227669C30() && *(v2 + 24) == *(v3 + 24) && (sub_2273371D4(*(v2 + 32), *(v3 + 32)) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_22751B268(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2274F1248(a1, &a1[a2]);
  }

  sub_2276620A0();
  swift_allocObject();
  sub_227662050();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_227662520();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_22751B31C()
{
  result = qword_27D7BE470;
  if (!qword_27D7BE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE470);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_22751B450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v76 = v4;
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA00, &qword_227684F28);
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v80 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD980, qword_22768B020);
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v85 = v12;
  v86 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v68 - v14;
  v15 = sub_227662750();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v73 = v17;
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = sub_22766B390();
  v72 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v24 = *(v16 + 16);
  v75 = a1;
  v71 = v24;
  v24(v20, a1, v15);
  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v69 = v21;
    v28 = v27;
    v68 = swift_slowAlloc();
    v92 = v68;
    *v28 = 141558274;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2080;
    sub_227520BCC(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v29 = sub_22766D140();
    v70 = a2;
    v31 = v30;
    (*(v16 + 8))(v20, v15);
    v32 = sub_226E97AE8(v29, v31, &v92);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_226E8E000, v25, v26, "Renewing persistable keys with renew time preceding date: %{mask.hash}s", v28, 0x16u);
    v33 = v68;
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v28, -1, -1);

    (*(v72 + 8))(v23, v69);
  }

  else
  {

    (*(v16 + 8))(v20, v15);
    (*(v72 + 8))(v23, v21);
  }

  v34 = v81;
  v35 = v81[75];
  v36 = v81[76];
  __swift_project_boxed_opaque_existential_0(v81 + 72, v35);
  v37 = v74;
  v71(v74, v75, v15);
  v38 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  (*(v16 + 32))(v39 + v38, v37, v15);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  v41 = v79;
  sub_226ECF5D8(sub_2275206EC, v39, v35, v40, v36, v79);

  v42 = swift_allocObject();
  *(v42 + 16) = sub_22752076C;
  *(v42 + 24) = v34;
  v43 = v82;
  v44 = v77;
  v45 = v84;
  (*(v82 + 16))(v77, v41, v84);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = (v76 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v43 + 32))(v48 + v46, v44, v45);
  v49 = (v48 + v47);
  *v49 = sub_227520788;
  v49[1] = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  v50 = v83;
  sub_227669270();
  (*(v43 + 8))(v41, v45);
  v52 = v87;
  v51 = v88;
  v53 = v80;
  (*(v87 + 16))(v80, v50, v88);
  v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v55 = (v78 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v52 + 32))(v56 + v54, v53, v51);
  v57 = (v56 + v55);
  *v57 = sub_22751DA44;
  v57[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  v58 = v89;
  sub_227669270();
  (*(v52 + 8))(v50, v51);
  v59 = swift_allocObject();
  *(v59 + 16) = nullsub_1;
  *(v59 + 24) = 0;
  v61 = v90;
  v60 = v91;
  v62 = v86;
  (*(v90 + 16))(v86, v58, v91);
  v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v61 + 32))(v65 + v63, v62, v60);
  v66 = (v65 + v64);
  *v66 = sub_2275207E0;
  v66[1] = v59;
  sub_227669270();
  return (*(v61 + 8))(v58, v60);
}

uint64_t sub_22751BD88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v66) = a3;
  v72 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v61 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v61 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v18 = sub_22766B380();
  v19 = sub_22766C8B0();

  v20 = os_log_type_enabled(v18, v19);
  v65 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v64 = v14;
    v22 = v21;
    v63 = swift_slowAlloc();
    v75[0] = v63;
    *v22 = 141558786;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_226E97AE8(a1, a2, v75);
    LODWORD(v62) = a4;
    *(v22 + 22) = 2082;
    LODWORD(v66) = v66 & 1;
    LOBYTE(v74[0]) = v66;
    v23 = sub_227520698();
    v24 = MEMORY[0x22AA958B0](MEMORY[0x277D4DF78], v23);
    v26 = a2;
    v27 = sub_226E97AE8(v24, v25, v75);

    *(v22 + 24) = v27;
    *(v22 + 32) = 2082;
    v28 = v62 & 1;
    LOBYTE(v74[0]) = v62 & 1;
    v29 = sub_22766C060();
    v31 = sub_226E97AE8(v29, v30, v75);

    *(v22 + 34) = v31;
    a2 = v26;
    _os_log_impl(&dword_226E8E000, v18, v19, "Requesting bundle for workout:%{mask.hash}s, device:%{public}s, reason:%{public}s", v22, 0x2Au);
    v32 = v63;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    v33 = v17;
    v34 = v66;
    (*(v15 + 8))(v33, v64);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v34 = v66 & 1;
    v28 = a4 & 1;
  }

  v35 = sub_227664550();
  v36 = sub_226F4347C(v35);

  v37 = sub_227007CDC(&unk_283A92468, v36);
  v38 = v68;
  v39 = v68[75];
  v40 = v68[76];
  __swift_project_boxed_opaque_existential_0(v68 + 72, v39);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v34;
  *(v41 + 32) = v65;
  *(v41 + 40) = a2;
  *(v41 + 48) = v28;
  *(v41 + 49) = 0;
  *(v41 + 56) = v37;
  v42 = sub_227663480();
  v66 = v42;

  v43 = v73;
  sub_226ECF5D8(sub_227520C14, v41, v39, v42, v40, v73);

  v44 = *__swift_project_boxed_opaque_existential_0(v38 + 7, v38[10]);
  v65 = type metadata accessor for AssetBundleHandler();
  v76 = v65;
  v77 = &off_283AC3B48;
  v75[0] = v44;
  sub_226E91B50(v75, v74);
  v45 = swift_allocObject();
  sub_226F19770(v74, v45 + 16);

  __swift_destroy_boxed_opaque_existential_0(v75);
  v46 = v70;
  v47 = v71;
  v48 = *(v70 + 16);
  v63 = v70 + 16;
  v64 = v48;
  v49 = v67;
  v48(v67, v43, v71);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v62 = v50;
  v51 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v61 = *(v46 + 32);
  v61(v52 + v50, v49, v47);
  v53 = (v52 + v51);
  *v53 = sub_227520888;
  v53[1] = v45;
  v54 = v69;
  sub_227669270();
  v70 = *(v46 + 8);
  v55 = v73;
  (v70)(v73, v47);
  v56 = *__swift_project_boxed_opaque_existential_0(v38 + 7, v38[10]);
  v76 = v65;
  v77 = &off_283AC3B48;
  v75[0] = v56;
  sub_226E91B50(v75, v74);
  v57 = swift_allocObject();
  sub_226F19770(v74, v57 + 16);

  __swift_destroy_boxed_opaque_existential_0(v75);
  v64(v55, v54, v47);
  v58 = swift_allocObject();
  v61(v58 + v62, v55, v47);
  v59 = (v58 + v51);
  *v59 = sub_227520890;
  v59[1] = v57;
  sub_227669270();
  return (v70)(v54, v47);
}

uint64_t sub_22751C460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = v6;
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v45 - v8;
  v9 = sub_227666500();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = v11;
  v53 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v51 = sub_22766B390();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v17 = *(v10 + 16);
  v54 = a1;
  v50 = v17;
  v17(v14, a1, v9);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = v2;
    v21 = v20;
    v46 = swift_slowAlloc();
    v60 = v46;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    sub_227520BCC(&qword_27D7BE488, MEMORY[0x277D52328], MEMORY[0x277D52330]);
    v22 = sub_22766D140();
    v48 = v5;
    v24 = v23;
    (*(v10 + 8))(v14, v9);
    v25 = sub_226E97AE8(v22, v24, &v60);
    v5 = v48;

    *(v21 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v18, v19, "Demo Bundle - %{mask.hash}s", v21, 0x16u);
    v26 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA9A450](v26, -1, -1);
    v27 = v21;
    v3 = v47;
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  (*(v49 + 8))(v16, v51);
  v28 = __swift_project_boxed_opaque_existential_0((v3 + 56), *(v3 + 80));
  v29 = *v28;
  v30 = *(*v28 + 336);
  v31 = *(*v28 + 344);
  __swift_project_boxed_opaque_existential_0((*v28 + 312), v30);
  v32 = v53;
  v50(v53, v54, v9);
  v33 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  (*(v10 + 32))(v34 + v33, v32, v9);
  v35 = sub_227663480();

  v36 = v57;
  sub_226ECF5D8(sub_227520A68, v34, v30, v35, v31, v57);

  v37 = swift_allocObject();
  *(v37 + 16) = sub_227520AE8;
  *(v37 + 24) = v29;
  v38 = v58;
  v39 = v56;
  (*(v58 + 16))(v56, v36, v5);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = (v55 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v38 + 32))(v42 + v40, v39, v5);
  v43 = (v42 + v41);
  *v43 = sub_2274A5884;
  v43[1] = v37;

  sub_227669270();
  return (*(v38 + 8))(v36, v5);
}

uint64_t sub_22751CA18@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = v64 - v12;
  v68 = v13;
  MEMORY[0x28223BE20](v14);
  v71 = v64 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v67 = v16;
    v23 = v22;
    v24 = a3;
    v25 = a4;
    v26 = swift_slowAlloc();
    v77[0] = v26;
    *v23 = 136446722;
    *(v23 + 4) = sub_226E97AE8(a1, a2, v77);
    *(v23 + 12) = 2082;
    LODWORD(v66) = v24 & 1;
    LOBYTE(v76[0]) = v24 & 1;
    v27 = sub_227520698();
    v28 = MEMORY[0x22AA958B0](MEMORY[0x277D4DF78], v27);
    v30 = sub_226E97AE8(v28, v29, v77);
    v65 = a1;
    v31 = a2;
    v32 = v30;

    *(v23 + 14) = v32;
    *(v23 + 22) = 2082;
    v33 = v25 & 1;
    LOBYTE(v76[0]) = v33;
    v34 = sub_22766C060();
    v36 = sub_226E97AE8(v34, v35, v77);

    *(v23 + 24) = v36;
    _os_log_impl(&dword_226E8E000, v20, v21, "Requesting pause bundle for workout:%{public}s, device:%{public}s, reason:%{public}s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v26, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    v37 = v66;
    v38 = v19;
    v39 = v65;
    (*(v17 + 8))(v38, v67);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
    v37 = a3 & 1;
    v33 = a4 & 1;
    v39 = a1;
    v31 = a2;
  }

  v40 = sub_226F4A7A8(&unk_283A92490);
  v41 = v70;
  v42 = v70[75];
  v43 = v70[76];
  __swift_project_boxed_opaque_existential_0(v70 + 72, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  *(v44 + 24) = v37;
  *(v44 + 32) = v39;
  *(v44 + 40) = v31;
  *(v44 + 48) = v33;
  *(v44 + 49) = 2;
  *(v44 + 56) = v40;
  v45 = sub_227663480();
  v67 = v45;

  v46 = v75;
  sub_226ECF5D8(sub_227520610, v44, v42, v45, v43, v75);

  v47 = *__swift_project_boxed_opaque_existential_0(v41 + 7, v41[10]);
  v66 = type metadata accessor for AssetBundleHandler();
  v78 = v66;
  v79 = &off_283AC3B48;
  v77[0] = v47;
  sub_226E91B50(v77, v76);
  v48 = swift_allocObject();
  sub_226F19770(v76, v48 + 16);

  __swift_destroy_boxed_opaque_existential_0(v77);
  v49 = v72;
  v50 = *(v72 + 16);
  v64[1] = v72 + 16;
  v65 = v50;
  v51 = v69;
  v52 = v73;
  v50(v69, v46, v73);
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v64[0] = v53;
  v54 = (v68 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v68 = *(v49 + 32);
  v68(v55 + v53, v51, v52);
  v56 = (v55 + v54);
  *v56 = sub_227520628;
  v56[1] = v48;
  v57 = v71;
  sub_227669270();
  v72 = *(v49 + 8);
  v58 = v75;
  (v72)(v75, v52);
  v59 = *__swift_project_boxed_opaque_existential_0(v41 + 7, v41[10]);
  v78 = v66;
  v79 = &off_283AC3B48;
  v77[0] = v59;
  sub_226E91B50(v77, v76);
  v60 = swift_allocObject();
  sub_226F19770(v76, v60 + 16);

  __swift_destroy_boxed_opaque_existential_0(v77);
  v65(v58, v57, v52);
  v61 = swift_allocObject();
  v68(v61 + v64[0], v58, v52);
  v62 = (v61 + v54);
  *v62 = sub_227520658;
  v62[1] = v60;
  sub_227669270();
  return (v72)(v57, v52);
}

uint64_t sub_22751D0C4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v41 = *(v43 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v38 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v32 - v3;
  v32 = sub_2276624A0();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_227664AE0();
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2276639B0();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_2276687D0();
  v35 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276625E0();
  sub_227666810();
  (*(v4 + 56))(v11, 1, 1, v32);
  sub_227668790();
  sub_227666810();
  (*(v13 + 16))(v7, v15, v12);
  swift_storeEnumTagMultiPayload();
  sub_227666820();
  sub_227663950();
  v16 = v45;
  sub_227663900();
  v17 = v37;
  v18 = __swift_project_boxed_opaque_existential_0((v37 + 56), *(v37 + 80));
  v19 = sub_227666860();
  v21 = v20;
  __swift_project_boxed_opaque_existential_0((*v18 + 176), *(*v18 + 200));
  v22 = v36;
  sub_2275F3434(v16, v19, v21, v36);

  v23 = v41;
  v24 = v38;
  v25 = v22;
  v26 = v43;
  (*(v41 + 16))(v38, v22, v43);
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v40 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v23 + 32))(v29 + v27, v24, v26);
  v30 = (v29 + v28);
  *v30 = sub_22751F830;
  v30[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  sub_227669270();
  (*(v23 + 8))(v25, v26);
  (*(v39 + 8))(v45, v42);
  return (*(v13 + 8))(v15, v35);
}

uint64_t sub_22751D638@<X0>(void (***a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 176), *(a2 + 200));
  result = sub_2270769D4(a1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_22751D6A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_22751F9B4(v5, a2);

  *a3 = v6;
}

uint64_t sub_22751D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  (*(v6 + 16))(v8, a1, v5);
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v2;
    v17 = v16;
    v31 = v16;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_227520BCC(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v18 = sub_22766D140();
    v26 = v9;
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_226E97AE8(v18, v20, &v31);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v12, v13, "Reload - request %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v3 = v27;
    MEMORY[0x22AA9A450](v22, -1, -1);
    v23 = v15;
    a1 = v28;
    MEMORY[0x22AA9A450](v23, -1, -1);

    (*(v29 + 8))(v11, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v29 + 8))(v11, v9);
  }

  __swift_project_boxed_opaque_existential_0((v3 + 336), *(v3 + 360));
  v24 = off_283AAEA58;
  type metadata accessor for AssetRequestHandler();
  return v24(a1);
}

void sub_22751DA44(uint64_t *a1)
{
  v5 = *a1;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v1 = sub_22766C950();
  v2 = sub_227663CF0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  v4 = sub_2273CCBB4(&qword_281398FC8, &qword_27D7BE478, qword_22768AF58);
  MEMORY[0x22AA95520](v1, &v5, v2, v3, v4);
}

uint64_t sub_22751DB08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_2273206B4, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22751DE30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_227320178, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227320190;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

void sub_22751E158(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v145 = a8;
  v146 = a9;
  v143 = a7;
  v149 = a6;
  v150 = a4;
  v151 = a5;
  LODWORD(v152) = a3;
  v148 = a1;
  v10 = sub_227662750();
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v130 - v13;
  v15 = sub_227663480();
  v144 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v130 - v19;
  v21 = sub_22766B390();
  v147 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v130 - v25;
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  v27 = v158;
  v28 = sub_227393794(v152 & 1);
  if (!v27)
  {
    v136 = v26;
    v141 = v28;
    v158 = v29;
    v137 = a2;
    v138 = v14;
    v131 = v17;
    v132 = v23;
    v139 = v21;
    v133 = v20;
    v135 = v15;
    v140 = 0;
    v30 = __swift_project_boxed_opaque_existential_0(v148, v148[3]);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 16);
    v34 = v30[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v35 = swift_allocObject();
    v36 = v31;
    v37 = v32;

    sub_22766A070();
    *(v35 + 16) = v36;
    *(v35 + 24) = v37;
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    swift_getKeyPath();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v157 = v38;
    v155 = v150;
    v156 = v151;
    v39 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v152 = v39;
    v40 = sub_22766C820();
    sub_226ED25F8(&v155, v153);
    v41 = v154;
    if (v154)
    {
      v42 = __swift_project_boxed_opaque_existential_0(v153, v154);
      v43 = *(v41 - 8);
      v44 = MEMORY[0x28223BE20](v42);
      v46 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v46, v44);
      v47 = sub_22766D170();
      (*(v43 + 8))(v46, v41);
      __swift_destroy_boxed_opaque_existential_0(v153);
    }

    else
    {
      v47 = 0;
    }

    v148 = objc_opt_self();
    v48 = [v148 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v50 = [objc_allocWithZone(v49) initWithLeftExpression:v40 rightExpression:v48 modifier:0 type:4 options:0];

    sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v51 = v50;
    v52 = sub_22766A080();
    v54 = v53;
    MEMORY[0x22AA985C0]();
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v52(&v155, 0);
    swift_endAccess();

    swift_getKeyPath();
    v157 = v38;
    v155 = v141;
    v156 = v158;

    v55 = sub_22766C820();
    sub_226ED25F8(&v155, v153);
    v56 = v154;
    if (v154)
    {
      v57 = __swift_project_boxed_opaque_existential_0(v153, v154);
      v134 = &v130;
      v58 = v49;
      v59 = *(v56 - 8);
      v60 = MEMORY[0x28223BE20](v57);
      v62 = &v130 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62, v60);
      v63 = sub_22766D170();
      (*(v59 + 8))(v62, v56);
      v49 = v58;
      __swift_destroy_boxed_opaque_existential_0(v153);
    }

    else
    {
      v63 = 0;
    }

    v64 = [v148 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v65 = [objc_allocWithZone(v49) initWithLeftExpression:v55 rightExpression:v64 modifier:0 type:4 options:0];

    sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v66 = v65;
    v67 = sub_22766A080();
    v69 = v68;
    MEMORY[0x22AA985C0]();
    if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v67(&v155, 0);
    swift_endAccess();

    swift_getKeyPath();
    v70 = sub_227663450();
    v157 = MEMORY[0x277D83B88];
    v155 = v70;

    v71 = sub_22766C820();
    sub_226ED25F8(&v155, v153);
    v72 = v154;
    if (v154)
    {
      v73 = __swift_project_boxed_opaque_existential_0(v153, v154);
      v152 = &v130;
      v74 = v49;
      v75 = *(v72 - 8);
      v76 = MEMORY[0x28223BE20](v73);
      v78 = &v130 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v75 + 16))(v78, v76);
      v79 = sub_22766D170();
      (*(v75 + 8))(v78, v72);
      v49 = v74;
      __swift_destroy_boxed_opaque_existential_0(v153);
    }

    else
    {
      v79 = 0;
    }

    v80 = [v148 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v81 = [objc_allocWithZone(v49) initWithLeftExpression:v71 rightExpression:v80 modifier:0 type:4 options:0];

    sub_226E97D1C(&v155, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v82 = v81;
    v83 = sub_22766A080();
    v85 = v84;
    MEMORY[0x22AA985C0]();
    if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v83(&v155, 0);
    swift_endAccess();

    v86 = v140;
    v87 = sub_2272328B8(100);
    if (v86)
    {

      swift_setDeallocating();

      v88 = qword_2813B2078;
      v89 = sub_22766A100();
      (*(*(v89 - 8) + 8))(v35 + v88, v89);
      swift_deallocClassInstance();
    }

    else
    {
      v90 = v87;
      swift_setDeallocating();

      v91 = qword_2813B2078;
      v92 = sub_22766A100();
      (*(*(v92 - 8) + 8))(v35 + v91, v92);
      swift_deallocClassInstance();
      v93 = v136;
      sub_22766A6C0();

      v94 = sub_22766B380();
      v95 = sub_22766C8B0();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v155 = v97;
        *v96 = 141558274;
        *(v96 + 4) = 1752392040;
        *(v96 + 12) = 2080;
        sub_227520BCC(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
        v98 = sub_22766C610();
        v100 = sub_226E97AE8(v98, v99, &v155);

        *(v96 + 14) = v100;
        _os_log_impl(&dword_226E8E000, v94, v95, "Found bundles: %{mask.hash}s", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x22AA9A450](v97, -1, -1);
        MEMORY[0x22AA9A450](v96, -1, -1);
      }

      v101 = *(v147 + 8);
      v101(v93, v139);
      v102 = v145;
      v103 = v138;
      __swift_project_boxed_opaque_existential_0((v137 + 496), *(v137 + 520));
      sub_2276696A0();
      v152 = v155;
      sub_22722AF88(v90, v103);

      v104 = v144;
      v105 = v135;
      if ((*(v144 + 48))(v103, 1, v135) == 1)
      {
        sub_226E97D1C(v103, &unk_27D7BD3F0, &unk_2276823F0);
        sub_22766C0A0();

        sub_227662740();
        sub_2276633D0();
      }

      else
      {

        v106 = v133;
        (*(v104 + 32))(v133, v103, v105);
        v107 = sub_2276633F0();
        if ((v108 & 1) != 0 && sub_22718CBA4(v107, v102))
        {
          sub_227663470();

          (*(v144 + 8))(v106, v105);
        }

        else
        {

          v109 = v132;
          sub_22766A6C0();
          v110 = v144;
          v111 = v131;
          (*(v144 + 16))(v131, v106, v105);
          v112 = sub_22766B380();
          v113 = sub_22766C890();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = v111;
            v115 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v155 = v158;
            *v115 = 141558530;
            *(v115 + 4) = 1752392040;
            *(v115 + 12) = 2080;
            sub_227520BCC(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
            v116 = sub_22766D140();
            v118 = v117;
            LODWORD(v152) = v113;
            v119 = v105;
            v120 = v114;
            v121 = *(v110 + 8);
            v121(v120, v105);
            v122 = sub_226E97AE8(v116, v118, &v155);

            *(v115 + 14) = v122;
            *(v115 + 22) = 2082;
            LOBYTE(v153[0]) = v143;
            v123 = sub_22766C060();
            v125 = sub_226E97AE8(v123, v124, &v155);

            *(v115 + 24) = v125;
            v106 = v133;
            _os_log_impl(&dword_226E8E000, v112, v152, "Found bundle has disallowed status: %{mask.hash}s for requested status: %{public}s", v115, 0x20u);
            v126 = v158;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v126, -1, -1);
            MEMORY[0x22AA9A450](v115, -1, -1);

            v127 = v132;
          }

          else
          {

            v119 = v105;
            v121 = *(v110 + 8);
            v121(v111, v105);
            v127 = v109;
          }

          v101(v127, v139);
          v128 = sub_227663190();
          sub_227520BCC(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
          swift_allocError();
          (*(*(v128 - 8) + 104))(v129, *MEMORY[0x277D4FD20], v128);
          swift_willThrow();
          v121(v106, v119);
        }
      }
    }
  }
}