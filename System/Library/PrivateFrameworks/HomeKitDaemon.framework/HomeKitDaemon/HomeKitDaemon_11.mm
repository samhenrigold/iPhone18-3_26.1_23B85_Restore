uint64_t sub_22965E178(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22965E220;

  return sub_22965C980();
}

uint64_t sub_22965E220()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22965E35C()
{
  v1[2] = v0;
  v1[3] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965E420, v0, 0);
}

uint64_t sub_22965E420()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Starting", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  sub_22965E620();
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10 = sub_229669498(&qword_281402628, v9, type metadata accessor for MobileAssetManager, &unk_22A57BBF8);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v10;
  v11[4] = v7;
  v11[5] = v6;
  swift_retain_n();
  sub_22957F3C0(0, 0, v5, &unk_22A57BCA8, v11);

  v12 = v0[1];

  return v12();
}

void sub_22965E620()
{
  v1 = *(v0 + 160);
  [v1 setRepeats_];
  [v1 setInterval_];
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_2296695F4;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_229666FBC;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  [v1 scheduleWithBlock_];
  _Block_release(v3);
}

uint64_t sub_22965E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_22A4DE2EC();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965E7E8, a4, 0);
}

uint64_t sub_22965E7E8()
{
  v12 = v0;
  sub_229668B04(0x2EuLL);
  v0[6] = sub_22A4DE85C();
  v0[7] = v1;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  v0[8] = __swift_project_value_buffer(v2, qword_281401F78);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_22A4DE82C();
    v9 = sub_2295A3E30(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_229538000, v3, v4, "Delaying startup check for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  return MEMORY[0x2822009F8](sub_22965E9C4, 0, 0);
}

uint64_t sub_22965E9C4()
{
  sub_22A4DE2DC();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22965EA84;
  v3 = v0[6];
  v2 = v0[7];

  return sub_2297858E8(v3, v2, 0, 0, 1);
}

uint64_t sub_22965EA84()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22965ED18;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 16);
    v6 = sub_22965EC04;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22965EC04(uint64_t a1)
{
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Checking for mobile asset updates", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_22965EE9C;

  return sub_22965F140(0, 0, 1);
}

uint64_t sub_22965ED34()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v3, v4, "sleep failed, skipping check as we'll try again later: %@", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22965EE9C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_22965EFD8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22965EFD8()
{
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v3, v4, "Checking for mobile asset updates failed, will try again later: %@", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22965F140(char a1, char a2, char a3)
{
  *(v4 + 416) = v3;
  *(v4 + 387) = a3;
  *(v4 + 386) = a2;
  *(v4 + 385) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v4 + 424) = swift_task_alloc();
  v5 = sub_22A4DB74C();
  *(v4 + 432) = v5;
  *(v4 + 440) = *(v5 - 8);
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = _s21MobileAssetUpdateInfoVMa(0);
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22965F30C, v3, 0);
}

uint64_t sub_22965F30C()
{
  v1 = v0[52];
  if (*(v1 + 176))
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_281401F78);
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_229538000, v3, v4, "Ignoring update check while already updating", v5, 2u);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    sub_2296691E4();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 1;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    *(v1 + 176) = 1;
    v0[68] = *(v1 + 168);

    return MEMORY[0x2822009F8](sub_22965F560, 0, 0);
  }
}

uint64_t sub_22965F560()
{
  v1 = v0[68];
  v2 = v0[52];
  v3 = swift_task_alloc();
  v0[69] = v3;
  v3[2] = v1;
  v3[3] = sub_229669158;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[70] = v4;
  *v4 = v0;
  v4[1] = sub_22965F66C;
  v5 = v0[66];
  v6 = v0[61];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229669174, v3, v6);
}

uint64_t sub_22965F66C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_22965FD3C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 416);

    v3 = sub_22965F7A0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22965F7A0()
{
  v54 = v0;
  sub_229669368(*(v0 + 528), *(v0 + 536));
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = sub_22A4DD07C();
  *(v0 + 576) = __swift_project_value_buffer(v4, qword_281401F78);
  sub_229669180(v1, v2);
  sub_229669180(v1, v3);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 520);
  if (v7)
  {
    v9 = *(v0 + 504);
    v10 = *(v0 + 480);
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v13 = 136446978;
    sub_229669180(v8, v9);
    sub_2296692F8(v9, v10);
    v14 = (*(v11 + 48))(v10, 1, v12);
    v15 = *(v0 + 480);
    if (v14 == 1)
    {
      sub_22953EAE4(*(v0 + 480), &unk_27D881AA0, &qword_22A57BC20);
      v16 = 0xE700000000000000;
      v17 = 0x3E726576656E3CLL;
    }

    else
    {
      v20 = *(v0 + 432);
      v19 = *(v0 + 440);
      v17 = sub_22A4DB67C();
      v16 = v21;
      (*(v19 + 8))(v15, v20);
    }

    v22 = *(v0 + 512);
    v23 = *(v0 + 488);
    sub_22966908C(*(v0 + 520));
    v24 = sub_2295A3E30(v17, v16, &v53);

    *(v13 + 4) = v24;
    *(v13 + 12) = 2082;
    v25 = v22 + *(v23 + 20);
    if (*(v25 + 8))
    {
      v26 = 0xE600000000000000;
      v27 = 0x3E656E6F6E3CLL;
    }

    else
    {
      *(v0 + 408) = *v25;
      v27 = sub_22A4DE5CC();
      v26 = v28;
    }

    v29 = *(v0 + 387);
    v30 = *(v0 + 385);
    sub_22966908C(*(v0 + 512));
    v31 = sub_2295A3E30(v27, v26, &v53);

    *(v13 + 14) = v31;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v30;
    *(v13 + 28) = 1024;
    *(v13 + 30) = v29;
    _os_log_impl(&dword_229538000, v5, v6, "Starting update with last catalog download %{public}s, current version %{public}s, force %{BOOL}d, and discretionary %{BOOL}d", v13, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v52, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    if (*(v0 + 385))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = *(v0 + 512);

    sub_22966908C(v18);
    sub_22966908C(v8);
    if (*(v0 + 385))
    {
      goto LABEL_19;
    }
  }

  v32 = *(v0 + 496);
  v33 = *(v0 + 472);
  v34 = *(v0 + 432);
  v35 = *(v0 + 440);
  sub_229669180(*(v0 + 536), v32);
  sub_22966901C(v32, v33);
  v36 = (*(v35 + 48))(v33, 1, v34);
  v37 = *(v0 + 496);
  if (v36 == 1)
  {
    sub_22953EAE4(*(v0 + 472), &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v37, &unk_27D881AA0, &qword_22A57BC20);
LABEL_19:
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCCC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_229538000, v47, v48, "Downloading the asset catalog", v49, 2u);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    v50 = swift_task_alloc();
    *(v0 + 584) = v50;
    *v50 = v0;
    v50[1] = sub_2296604E8;
    v51 = *(v0 + 387);

    return sub_229664AD8(v51);
  }

  v38 = *(v0 + 448);
  v39 = *(v0 + 456);
  v40 = *(v0 + 432);
  v41 = *(v0 + 440);
  (*(v41 + 32))(v39, *(v0 + 472), v40);
  sub_22A4DB71C();
  sub_22A4DB69C();
  v43 = v42;
  v44 = *(v41 + 8);
  v44(v38, v40);
  v44(v39, v40);
  sub_22953EAE4(v37, &unk_27D881AA0, &qword_22A57BC20);
  if (v43 >= 86400.0)
  {
    goto LABEL_19;
  }

  v45 = swift_task_alloc();
  *(v0 + 600) = v45;
  *v45 = v0;
  v45[1] = sub_229660660;

  return sub_22965CD60(v0 + 160, 2);
}

uint64_t sub_22965FD3C()
{
  v1 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22965FDB4, v1, 0);
}

uint64_t sub_22965FDB4()
{
  v70 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 568);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Error retrieving mobile asset update info, updating anyway: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 536);
  v13 = *(v0 + 488);
  v14 = *(v0 + 464);
  v15 = *(v0 + 432);
  v16 = *(*(v0 + 440) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  v17 = v12 + *(v13 + 20);
  sub_2296690E8(v14, v12);
  *v17 = 0;
  *(v17 + 8) = 1;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 536);
  v19 = *(v0 + 520);
  v20 = *(v0 + 512);
  *(v0 + 576) = __swift_project_value_buffer(v2, qword_281401F78);
  sub_229669180(v18, v19);
  sub_229669180(v18, v20);
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 520);
  if (v23)
  {
    v25 = *(v0 + 504);
    v26 = *(v0 + 480);
    v28 = *(v0 + 432);
    v27 = *(v0 + 440);
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v68;
    *v29 = 136446978;
    sub_229669180(v24, v25);
    sub_2296692F8(v25, v26);
    v30 = (*(v27 + 48))(v26, 1, v28);
    v31 = *(v0 + 480);
    if (v30 == 1)
    {
      sub_22953EAE4(*(v0 + 480), &unk_27D881AA0, &qword_22A57BC20);
      v32 = 0xE700000000000000;
      v33 = 0x3E726576656E3CLL;
    }

    else
    {
      v36 = *(v0 + 432);
      v35 = *(v0 + 440);
      v33 = sub_22A4DB67C();
      v32 = v37;
      (*(v35 + 8))(v31, v36);
    }

    v38 = *(v0 + 512);
    v39 = *(v0 + 488);
    sub_22966908C(*(v0 + 520));
    v40 = sub_2295A3E30(v33, v32, &v69);

    *(v29 + 4) = v40;
    *(v29 + 12) = 2082;
    v41 = v38 + *(v39 + 20);
    if (*(v41 + 8))
    {
      v42 = 0xE600000000000000;
      v43 = 0x3E656E6F6E3CLL;
    }

    else
    {
      *(v0 + 408) = *v41;
      v43 = sub_22A4DE5CC();
      v42 = v44;
    }

    v45 = *(v0 + 387);
    v46 = *(v0 + 385);
    sub_22966908C(*(v0 + 512));
    v47 = sub_2295A3E30(v43, v42, &v69);

    *(v29 + 14) = v47;
    *(v29 + 22) = 1024;
    *(v29 + 24) = v46;
    *(v29 + 28) = 1024;
    *(v29 + 30) = v45;
    _os_log_impl(&dword_229538000, v21, v22, "Starting update with last catalog download %{public}s, current version %{public}s, force %{BOOL}d, and discretionary %{BOOL}d", v29, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v68, -1, -1);
    MEMORY[0x22AAD4E50](v29, -1, -1);

    if (*(v0 + 385))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v34 = *(v0 + 512);

    sub_22966908C(v34);
    sub_22966908C(v24);
    if (*(v0 + 385))
    {
      goto LABEL_24;
    }
  }

  v48 = *(v0 + 496);
  v49 = *(v0 + 472);
  v50 = *(v0 + 432);
  v51 = *(v0 + 440);
  sub_229669180(*(v0 + 536), v48);
  sub_22966901C(v48, v49);
  v52 = (*(v51 + 48))(v49, 1, v50);
  v53 = *(v0 + 496);
  if (v52 == 1)
  {
    sub_22953EAE4(*(v0 + 472), &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v53, &unk_27D881AA0, &qword_22A57BC20);
LABEL_24:
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDCCC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_229538000, v63, v64, "Downloading the asset catalog", v65, 2u);
      MEMORY[0x22AAD4E50](v65, -1, -1);
    }

    v66 = swift_task_alloc();
    *(v0 + 584) = v66;
    *v66 = v0;
    v66[1] = sub_2296604E8;
    v67 = *(v0 + 387);

    return sub_229664AD8(v67);
  }

  v54 = *(v0 + 448);
  v55 = *(v0 + 456);
  v56 = *(v0 + 432);
  v57 = *(v0 + 440);
  (*(v57 + 32))(v55, *(v0 + 472), v56);
  sub_22A4DB71C();
  sub_22A4DB69C();
  v59 = v58;
  v60 = *(v57 + 8);
  v60(v54, v56);
  v60(v55, v56);
  sub_22953EAE4(v53, &unk_27D881AA0, &qword_22A57BC20);
  if (v59 >= 86400.0)
  {
    goto LABEL_24;
  }

  v61 = swift_task_alloc();
  *(v0 + 600) = v61;
  *v61 = v0;
  v61[1] = sub_229660660;

  return sub_22965CD60(v0 + 160, 2);
}

uint64_t sub_2296604E8()
{
  v2 = *v1;
  v2[74] = v0;

  if (v0)
  {
    v3 = v2[52];

    return MEMORY[0x2822009F8](sub_2296613BC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[75] = v4;
    *v4 = v2;
    v4[1] = sub_229660660;

    return sub_22965CD60((v2 + 20), 2);
  }
}

uint64_t sub_229660660()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_229661664;
  }

  else
  {
    v4 = sub_22966078C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22966078C()
{
  sub_229557188((v0 + 160), v0 + 120);
  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_229660834;

  return sub_229665674(v0 + 280, v0 + 120);
}

uint64_t sub_229660834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 624) = a1;
  *(v4 + 632) = v1;

  v5 = *(v3 + 416);
  if (v1)
  {
    v6 = sub_229661F4C;
  }

  else
  {
    v6 = sub_22966096C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22966096C()
{
  sub_229557188((v0 + 280), v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 640) = v1;
  *v1 = v0;
  v1[1] = sub_229660A14;
  v2 = *(v0 + 387);

  return sub_229665848(v0 + 240, v2);
}

uint64_t sub_229660A14()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = *(v2 + 416);

    v4 = sub_229662070;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 416);
    v4 = sub_229660B3C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_229660B3C()
{
  v1 = *(v0 + 536) + *(*(v0 + 488) + 20);
  v2 = *v1;
  *(v0 + 656) = *v1;
  LOBYTE(v1) = *(v1 + 8);
  *(v0 + 388) = v1;
  if ((v1 & 1) != 0 || (v4 = *(v0 + 264), v3 = *(v0 + 272), __swift_project_boxed_opaque_existential_0((v0 + 240), v4), v2 < sub_2297B96F4(v4, v3)))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    __swift_project_boxed_opaque_existential_0((v0 + 240), v6);
    v7 = sub_2297B96F4(v6, v5);
    v8 = swift_task_alloc();
    *(v0 + 664) = v8;
    *v8 = v0;
    v8[1] = sub_229660DD8;

    return sub_229665EC0(v7);
  }

  else
  {

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_229538000, v10, v11, "Finished query without any updates", v12, 2u);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    v13 = *(v0 + 536);

    __swift_destroy_boxed_opaque_existential_0((v0 + 120));
    sub_22966908C(v13);
    __swift_destroy_boxed_opaque_existential_0((v0 + 240));
    *(*(v0 + 416) + 176) = 0;

    v14 = *(v0 + 8);

    return v14(0, 0, 0, 1);
  }
}

uint64_t sub_229660DD8()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 416);

    v4 = sub_22966219C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 416);
    v4 = sub_229660F00;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_229660F00()
{
  v36 = v0;
  sub_22957F1C4(v0 + 240, v0 + 320);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDD0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v35 = v4;
    *v3 = 136446210;
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    __swift_project_boxed_opaque_existential_0((v0 + 320), v5);
    *(v0 + 400) = sub_2297B96F4(v5, v6);
    v7 = sub_22A4DE5CC();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0((v0 + 320));
    v10 = sub_2295A3E30(v7, v9, &v35);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_229538000, v1, v2, "Notifying of newly installed asset with version %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AAD4E50](v4, -1, -1);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 320));
  }

  v11 = *(v0 + 624);
  v12 = *(v0 + 416);
  v13 = *(v12 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E3C8, &qword_22A57BC58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(v0 + 360) = sub_22A4DD5EC();
  *(v0 + 368) = v15;
  sub_22A4DE18C();
  v16 = *(v0 + 264);
  v17 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_0((v0 + 240), v16);
  sub_2297B96F4(v16, v17);
  v18 = sub_22A4DDBDC();
  *(inited + 96) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 72) = v18;
  sub_22956B3FC(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CE08, &qword_22A57BC60);
  v19 = sub_22A4DD47C();

  [v13 postNotificationName:@"HMDMobileAssetManagerFoundUpdateNotification" object:v12 userInfo:v19];

  v20 = *(v0 + 624);
  if (*(v11 + 16))
  {
    v22 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = sub_22A4DD9DC();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v25 = sub_229669498(&qword_281402628, v24, type metadata accessor for MobileAssetManager, &unk_22A57BBF8);
    v26 = swift_allocObject();
    v26[2] = v22;
    v26[3] = v25;
    v26[4] = v20;
    v26[5] = v22;
    swift_retain_n();
    sub_22957F3C0(0, 0, v21, &unk_22A57BC70, v26);
  }

  else
  {
  }

  v34 = *(v0 + 388);
  v27 = *(v0 + 536);
  v28 = *(v0 + 264);
  v29 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_0((v0 + 240), v28);
  v33 = sub_2297B96F4(v28, v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  sub_22966908C(v27);
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  v32 = *(v0 + 656);
  *(*(v0 + 416) + 176) = 0;

  v30 = *(v0 + 8);

  return v30(v32, v34, v33, 0);
}

uint64_t sub_2296613BC(uint64_t a1)
{
  v2 = *(v1 + 592);
  if (*(v1 + 386))
  {
    v3 = v2;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 592);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v7;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_229538000, v4, v5, "Allowing update to continue after error downloading catalog: %@", v8, 0xCu);
      sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    else
    {
    }

    v16 = swift_task_alloc();
    *(v1 + 600) = v16;
    *v16 = v1;
    v16[1] = sub_229660660;

    return sub_22965CD60(v1 + 160, 2);
  }

  else
  {
    v12 = *(v1 + 536);
    v13 = *(v1 + 416);
    swift_willThrow();
    sub_22966908C(v12);
    *(v13 + 176) = 0;

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_229661664()
{
  v1 = *(v0 + 608);
  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (!swift_dynamicCast() || (*(v0 + 384) == 1 ? (v3 = *(v0 + 376) == 1) : (v3 = 0), !v3))
  {
    v4 = *(v0 + 416);
    sub_22966908C(*(v0 + 536));

    *(v4 + 176) = 0;
LABEL_7:

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 536);
  v8 = *(v0 + 488);

  v9 = v7 + *(v8 + 20);
  if ((*(v9 + 8) & 1) != 0 || *v9 < 1)
  {
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_229538000, v15, v16, "There is correctly no catalog", v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    v18 = *(v0 + 536);
    v19 = *(v0 + 416);

    sub_2296691E4();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 1;
    swift_willThrow();
    sub_22966908C(v18);

    *(v19 + 176) = 0;
    goto LABEL_7;
  }

  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "No catalog detected, attempting to download it", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 680) = v13;
  *v13 = v0;
  v13[1] = sub_2296619B8;
  v14 = *(v0 + 387);

  return sub_229664AD8(v14);
}

uint64_t sub_2296619B8()
{
  v2 = *v1;
  v2[86] = v0;

  if (v0)
  {
    v3 = v2[52];

    return MEMORY[0x2822009F8](sub_229661D0C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[87] = v4;
    *v4 = v2;
    v4[1] = sub_229661B30;

    return sub_22965CD60((v2 + 25), 2);
  }
}

uint64_t sub_229661B30()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_229661E2C;
  }

  else
  {
    v4 = sub_229661C5C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229661C5C()
{
  sub_229557188((v0 + 200), v0 + 120);

  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_229660834;

  return sub_229665674(v0 + 280, v0 + 120);
}

uint64_t sub_229661D0C()
{
  v1 = *(v0 + 416);
  sub_22966908C(*(v0 + 536));

  *(v1 + 176) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229661E2C()
{
  v1 = *(v0 + 416);
  sub_22966908C(*(v0 + 536));

  *(v1 + 176) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229661F4C()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  *(v2 + 176) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_229662070()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  *(v2 + 176) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22966219C()
{
  v1 = v0[67];
  v2 = v0[52];
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  sub_22966908C(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  *(v2 + 176) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_229662440(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229669DAC;

  return sub_22965E35C();
}

uint64_t sub_2296624E8()
{
  v1[2] = v0;
  v1[3] = _s21MobileAssetUpdateInfoVMa(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966257C, v0, 0);
}

uint64_t sub_22966257C()
{
  *(v0 + 40) = *(*(v0 + 16) + 168);

  return MEMORY[0x2822009F8](sub_2296625F0, 0, 0);
}

uint64_t sub_2296625F0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = sub_229669DBC;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2296626F8;
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229669DB4, v3, v6);
}

uint64_t sub_2296626F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2296628C0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_22966282C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_22966282C()
{
  v1 = (v0[4] + *(v0[3] + 20));
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22966908C(v0[4]);
  if (v3)
  {
    v2 = 0;
  }

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2296628C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_229662938, v1, 0);
}

uint64_t sub_229662938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229662B14(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229662BBC;

  return sub_2296624E8();
}

uint64_t sub_229662BBC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22A4DB3DC();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_229662D50(char a1, char a2)
{
  *(v3 + 168) = v2;
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  *v6 = v3;
  v6[1] = sub_229662DFC;

  return sub_22965F140(a1, a2, 0);
}

uint64_t sub_229662DFC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 184) = v4;

  if (v4)
  {
    v12 = *(v10 + 168);

    return MEMORY[0x2822009F8](sub_229662F80, v12, 0);
  }

  else
  {
    if ((a4 | a2))
    {
      v13 = 0;
    }

    else
    {
      v13 = a1;
    }

    if (a4)
    {
      v14 = 0;
    }

    else
    {
      v14 = a3;
    }

    v15 = *(v11 + 8);

    return v15(v13, v14);
  }
}

uint64_t sub_229662F80()
{
  v1 = *(v0 + 184);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 144);
    if (*(v0 + 152) == 1)
    {
      v4 = objc_opt_self();
      if (v3)
      {
        v5 = [v4 hmErrorWithCode_];
      }

      else
      {
        v5 = [v4 hmErrorWithCode_];
      }

      v5;
    }

    else
    {
      v6 = 0xE90000000000003ELL;
      v7 = 0x6E776F6E6B6E753CLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000010;
      *(inited + 16) = xmmword_22A5761A0;
      v9 = MEMORY[0x277D83B88];
      *(inited + 40) = 0x800000022A58F030;
      *(inited + 48) = v3;
      *(inited + 72) = v9;
      *(inited + 80) = 0x727453726F727245;
      *(inited + 88) = 0xEB00000000676E69;
      v10 = MEMORY[0x22AAD2B60](v3);
      if (v10)
      {
        v11 = v10;
        v12 = sub_22A4DD5EC();
        v14 = v13;

        *(inited + 120) = MEMORY[0x277D837D0];
        if (v14)
        {
          v7 = v12;
          v6 = v14;
        }
      }

      else
      {
        *(inited + 120) = MEMORY[0x277D837D0];
      }

      *(inited + 96) = v7;
      *(inited + 104) = v6;
      v15 = objc_opt_self();
      sub_22956AD8C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
      swift_arrayDestroy();
      v16 = sub_22A4DD47C();

      [v15 hmErrorWithCode:78 userInfo:v16];
    }

    swift_willThrow();
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2296633C0(char a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_229663484;

  return sub_229662D50(a1, a2);
}

uint64_t sub_229663484(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v7 = *v3;

  v8 = (v6 + 16);
  v9 = *(v7 + 24);
  if (v2)
  {
    v10 = sub_22A4DB3DC();

    (*v8)(v9, 0, 0, v10);
  }

  else
  {
    (*v8)(*(v7 + 24), a1, a2, 0);
  }

  _Block_release(*(v7 + 24));
  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_229663624()
{
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_2296636C0;

  return sub_22965CD60(v1 + 56, 2);
}

uint64_t sub_2296636C0()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_229663A64;
  }

  else
  {
    v3 = sub_2296637E8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_2296637E8()
{
  sub_229557188((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = sub_229668C28(v3);
  *(v0 + 120) = v4;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_2296638D8;

  return sub_22965D440(v4);
}

uint64_t sub_2296638D8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_229663A04, v1, 0);
}

uint64_t sub_229663A04()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229663A64()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Unable to query metadata while purging, aborting: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229663C28()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Clearing mobile asset update info", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2295C9EFC;

  return sub_229667330(sub_229667A60, 0);
}

uint64_t sub_229663F04(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229663FAC;

  return sub_229663624();
}

uint64_t sub_229663FAC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2296640EC;

  return sub_229663C08();
}

uint64_t sub_2296640EC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_22A4DB3DC();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

unint64_t sub_229664274()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  updated = _s21MobileAssetUpdateInfoVMa(0);
  MEMORY[0x28223BE20](updated);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296D0818(sub_229669000, v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 32) = 0x20746E65746E6F43;
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 40) = 0xEF6E6F6973726556;
  v9 = &v6[*(updated + 20)];
  if (v9[8] == 1)
  {
    v10 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v21[1] = *v9;
    v11 = sub_22A4DE5CC();
    v10 = v8 + 6;
    v8[9] = MEMORY[0x277D837D0];
    if (v12)
    {
      *v10 = v11;
      goto LABEL_6;
    }
  }

  *v10 = 0x3E656E6F6E3CLL;
  v12 = 0xE600000000000000;
LABEL_6:
  v8[7] = v12;
  v8[10] = 0x647055207473614CLL;
  v8[11] = 0xEB00000000657461;
  sub_22966901C(v6, v3);
  v13 = sub_22A4DB74C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {
    sub_22953EAE4(v3, &unk_27D881AA0, &qword_22A57BC20);
    v15 = v8 + 12;
    v8[15] = MEMORY[0x277D837D0];
LABEL_10:
    *v15 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    goto LABEL_11;
  }

  v16 = sub_22A4DB67C();
  v18 = v17;
  (*(v14 + 8))(v3, v13);
  v15 = v8 + 12;
  v8[15] = MEMORY[0x277D837D0];
  if (!v18)
  {
    goto LABEL_10;
  }

  *v15 = v16;
LABEL_11:
  v8[13] = v18;
  v19 = sub_22956AD8C(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDA0, &unk_22A57A930);
  swift_arrayDestroy();
  sub_22966908C(v6);
  return v19;
}

void sub_22966478C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = [*(a1 + 168) managedObjectContext];
  v9 = [objc_opt_self() fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v10 = sub_22A4DDE7C();
  if (v2)
  {
    goto LABEL_2;
  }

  v11 = v10;

  if (v11 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v9 = v12;

  v13 = [v9 mobileAssetUpdateInfo];
  if (v13)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v15 = sub_22A4DD49C();

    sub_2296A9A44(v15, a2);
LABEL_2:

    return;
  }

LABEL_13:
  v16 = sub_22A4DB74C();
  v17 = *(*(v16 - 8) + 56);
  v17(v7, 1, 1, v16);
  v17(a2, 1, 1, v16);
  v18 = &a2[*(_s21MobileAssetUpdateInfoVMa(0) + 20)];
  sub_2296690E8(v7, a2);
  *v18 = 0;
  v18[8] = 1;
}

uint64_t sub_229664A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229664AD8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_22A4DB74C();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229664BA8, v1, 0);
}

uint64_t sub_229664BA8()
{
  v1 = *(v0 + 112);
  v2 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  *(v0 + 56) = v2;
  [v2 setDiscretionary_];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_229664C9C;

  return sub_22981847C(0xD000000000000024, 0x800000022A58F050, v2);
}

uint64_t sub_229664C9C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_229664DB4, v2, 0);
}

uint64_t sub_229664DB4(uint64_t a1)
{
  v28 = v1;
  v2 = v1[9];
  if (v2 == 44)
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_281401F78);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Unable to download catalog: no catalog found on the server", v8, 2u);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    sub_22A4DB71C();
    v9 = swift_task_alloc();
    v1[12] = v9;
    *v9 = v1;
    v9[1] = sub_2296652E0;
    v4 = v1[5];
    goto LABEL_9;
  }

  if (!v2)
  {
    sub_22A4DB71C();
    v3 = swift_task_alloc();
    v1[10] = v3;
    *v3 = v1;
    v3[1] = sub_229665158;
    v4 = v1[6];
LABEL_9:

    return sub_2296663CC(v4);
  }

  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v11 = sub_22A4DD07C();
  __swift_project_value_buffer(v11, qword_281401F78);
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCEC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[9];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 134218242;
    *(v15 + 4) = v14;
    *(v15 + 12) = 2082;
    v17 = MEMORY[0x22AAD2B60](v14);
    if (v17)
    {
      v18 = v17;
      v19 = sub_22A4DD5EC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_2295A3E30(v19, v21, &v27);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_229538000, v12, v13, "Unable to download catalog: %ld (%{public}s)", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v23 = v1[9];
  v24 = v1[7];
  sub_2296691E4();
  swift_allocError();
  *v25 = v23;
  *(v25 + 8) = 0;
  swift_willThrow();

  v26 = v1[1];

  return v26();
}

uint64_t sub_229665158()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_22966558C;
  }

  else
  {
    v7 = sub_229665514;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296652E0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_229665600;
  }

  else
  {
    v7 = sub_229665468;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_229665468()
{
  v1 = *(v0 + 56);
  sub_2296691E4();
  swift_allocError();
  *v2 = 44;
  *(v2 + 8) = 0;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229665514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22966558C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229665600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229665674(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229665694, v2, 0);
}

uint64_t sub_229665694()
{
  v15 = v0;
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = sub_229668C28(v4);

  if (v5[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2295AFE8C(v5);
    }

    v6 = v5[2];
    v14[0] = (v5 + 4);
    v14[1] = v6;
    result = sub_229667CFC(v14);
    v10 = v5[2];
    if (v10)
    {
      sub_22957F1C4((v5 + 4), v0[2]);
      sub_22975E088(v5, (v5 + 4), 1, (2 * v10) | 1);
      v12 = v11;

      v13 = v0[1];

      return v13(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2296691E4();
    swift_allocError();
    *v8 = 2;
    *(v8 + 8) = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_229665848(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return MEMORY[0x2822009F8](sub_22966586C, v2, 0);
}

uint64_t sub_22966586C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    if (qword_281401F70 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = sub_22A4DD07C();
    *(v0 + 80) = __swift_project_value_buffer(v5, qword_281401F78);
    sub_22957F1C4(v4, v0 + 16);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136446210;
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), v10);
      *(v0 + 56) = sub_2297B96F4(v10, v11);
      v12 = sub_22A4DE5CC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v15 = sub_2295A3E30(v12, v14, &v25);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_229538000, v6, v7, "Downloading asset with content version %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 64);
    v20 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
    *(v0 + 88) = v20;
    [v20 setDiscretionary_];
    v22 = v1[3];
    v21 = v1[4];
    __swift_project_boxed_opaque_existential_0(v19, v22);
    v24 = (*(v21 + 40) + **(v21 + 40));
    v23 = swift_task_alloc();
    *(v0 + 96) = v23;
    *v23 = v0;
    v23[1] = sub_229665BD4;

    return v24(v20, v22, v21);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_229665BD4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_229665CEC, v2, 0);
}

uint64_t sub_229665CEC(uint64_t a1)
{
  v19 = v1;
  if (*(v1 + 104))
  {
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCEC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v1 + 104);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 134218242;
      *(v5 + 4) = v4;
      *(v5 + 12) = 2082;
      v7 = MEMORY[0x22AAD2B60](v4);
      if (v7)
      {
        v8 = v7;
        v9 = sub_22A4DD5EC();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v13 = sub_2295A3E30(v9, v11, &v18);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_229538000, v2, v3, "Unable to download asset: %ld (%{public}s)", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    v14 = *(v1 + 104);
    v15 = *(v1 + 88);
    sub_2296691E4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = 0;
    swift_willThrow();

    v12 = *(v1 + 8);
  }

  else
  {

    v12 = *(v1 + 8);
  }

  return v12();
}

uint64_t sub_229665EC0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_229665EE0, v1, 0);
}

uint64_t sub_229665EE0()
{
  v15 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    v7 = sub_22A4DE5CC();
    v9 = sub_2295A3E30(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_229538000, v2, v3, "Saving currentVersion: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v10 = v0[3];
  v11 = swift_allocObject();
  v0[5] = v11;
  *(v11 + 16) = v10;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_2296660E8;

  return sub_229667330(sub_2296693CC, v11);
}

uint64_t sub_2296660E8()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_229580CA4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_229666224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229666244, a5, 0);
}

uint64_t sub_229666244()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F78);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_229538000, v2, v3, "Purging %ld obsolete asset(s)", v6, 0xCu);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  else
  {
  }

  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_22958101C;
  v8 = *(v0 + 16);

  return sub_22965D440(v8);
}

uint64_t sub_2296663CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22A4DB74C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296664A0, v1, 0);
}

uint64_t sub_2296664A0()
{
  v30 = v0;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_281401F78);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v12 = v0[4];
  v11 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136446210;
    sub_229669498(&qword_281403890, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v27 = v8;
    v14 = v6;
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_2295A3E30(v18, v17, &v29);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_229538000, v7, v27, "Saving lastCatalogUpdate: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v6(v20, v0[2], v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v0[9] = v24;
  (*(v22 + 32))(v24 + v23, v20, v21);
  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  v25[1] = sub_22966679C;

  return sub_229667330(sub_229669428, v24);
}

uint64_t sub_22966679C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2296668F0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2296668F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229666968(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_281401F78);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_229538000, v9, v10, "Updating mobile asset started", v11, 2u);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_22A4DD9DC();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = v13;

    sub_22957F3C0(0, 0, v7, &unk_22A57BCB8, v15);
  }

  else
  {
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_229538000, v17, v18, "Self deallocated, no work to do", v19, 2u);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    return a1(1);
  }
}

uint64_t sub_229666BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_229666C8C;

  return sub_22965F140(0, 0, 1);
}

uint64_t sub_229666C8C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_229666E08;
  }

  else
  {
    v2 = sub_229666DA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229666DA0()
{
  (*(v0 + 16))(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229666E08()
{
  if (qword_281401F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_281401F78);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_229538000, v4, v5, "Updating mobile assets failed: %@, will try again later", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  (*(v0 + 16))(1);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229666FBC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_2296695FC, v4);
}

BOOL sub_229667050(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

void sub_2296670B4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = [*(a1 + 168) managedObjectContext];
  v9 = [objc_opt_self() fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v10 = sub_22A4DDE7C();

  if (!v2)
  {
    if (v10 >> 62)
    {
      if (sub_22A4DE0EC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 mobileAssetUpdateInfo];
      if (v13)
      {
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v15 = sub_22A4DD49C();

        sub_2296A9A44(v15, a2);
        return;
      }

      goto LABEL_12;
    }

LABEL_12:
    v16 = sub_22A4DB74C();
    v17 = *(*(v16 - 8) + 56);
    v17(v7, 1, 1, v16);
    v17(a2, 1, 1, v16);
    v18 = &a2[*(_s21MobileAssetUpdateInfoVMa(0) + 20)];
    sub_2296690E8(v7, a2);
    *v18 = 0;
    v18[8] = 1;
  }
}

uint64_t sub_229667330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229667354, v2, 0);
}

uint64_t sub_229667354()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = *(v2 + 168);
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  return MEMORY[0x2822009F8](sub_229667400, 0, 0);
}

uint64_t sub_229667400()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_229669408;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_229667508;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v5);
}

uint64_t sub_229667508()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_229667638;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 32);

    v3 = sub_229566EE4;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_229667638()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_2296676AC, v1, 0);
}

void sub_2296676C4(uint64_t a1, uint64_t (*a2)(char *))
{
  updated = _s21MobileAssetUpdateInfoVMa(0);
  MEMORY[0x28223BE20](updated - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(a1 + 168) managedObjectContext];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 fetchRequest];
  sub_229562F68(0, &unk_281401B28, off_2786663B0);
  v12 = sub_22A4DDE7C();

  if (v2)
  {

    return;
  }

  if (v12 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_5;
    }

LABEL_10:

    v14 = [objc_allocWithZone(MKFLocalSettings) initWithContext_];

    goto LABEL_11;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AAD13F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

LABEL_11:
  v15 = [v14 mobileAssetUpdateInfo];
  if (v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v17 = sub_22A4DD49C();

    v18 = v17;
  }

  else
  {
    v18 = sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  sub_2296A9A44(v18, v7);
  a2(v7);
  sub_2296A9D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v19 = sub_22A4DD47C();

  [v14 setMobileAssetUpdateInfo_];

  sub_2297082C0();
  sub_22966908C(v7);
}

uint64_t sub_229667994(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a1, &unk_27D881AA0, &qword_22A57BC20);
  v4 = sub_22A4DB74C();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, a2, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_229667A60(uint64_t a1)
{
  sub_22953EAE4(a1, &unk_27D881AA0, &qword_22A57BC20);
  v2 = sub_22A4DB74C();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = _s21MobileAssetUpdateInfoVMa(0);
  v4 = a1 + *(result + 20);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

HMDMobileAssetManagerFactory __swiftcall HMDMobileAssetManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_229667CFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22A4DE5BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D228, &qword_22A578170);
        v5 = sub_22A4DD86C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_229667F58(v7, v8, a1, v4);
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
    return sub_229667E04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_229667E04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_22957F1C4(v8, &v21);
      sub_22957F1C4(v8 - 40, v18);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_0(&v21, v22);
      v11 = sub_2297B96F4(v9, v10);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      v14 = sub_2297B96F4(v12, v13);
      __swift_destroy_boxed_opaque_existential_0(v18);
      result = __swift_destroy_boxed_opaque_existential_0(&v21);
      if (v14 >= v11)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 += 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_229557188(v8, &v21);
      v15 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v8 - 8);
      result = sub_229557188(&v21, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_229667F58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_229668AF0(v8);
      v8 = result;
    }

    v118 = v8;
    v95 = *(v8 + 16);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *(v8 + 16 * v95);
        v97 = v8;
        v98 = *(v8 + 16 * (v95 - 1) + 32);
        v8 = *(v8 + 16 * (v95 - 1) + 40);
        sub_2296686E8((*a3 + 40 * v96), (*a3 + 40 * v98), *a3 + 40 * v8, v7);
        if (v5)
        {
        }

        if (v8 < v96)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_229668AF0(v97);
        }

        if (v95 - 2 >= *(v97 + 2))
        {
          goto LABEL_116;
        }

        v99 = &v97[16 * v95];
        *v99 = v96;
        *(v99 + 1) = v8;
        v118 = v97;
        result = sub_229668A64(v95 - 1);
        v8 = v118;
        v95 = *(v118 + 16);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v20 = v7 + 1;
    }

    else
    {
      v110 = v6;
      v102 = v5;
      v10 = *a3;
      sub_22957F1C4(*a3 + 40 * (v7 + 1), &v115);
      v11 = 40 * v7;
      v12 = v10 + 40 * v7;
      sub_22957F1C4(v12, v112);
      v13 = v116;
      v14 = v117;
      __swift_project_boxed_opaque_existential_0(&v115, v116);
      v107 = sub_2297B96F4(v13, v14);
      v15 = v113;
      v16 = v114;
      __swift_project_boxed_opaque_existential_0(v112, v113);
      v17 = sub_2297B96F4(v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v112);
      result = __swift_destroy_boxed_opaque_existential_0(&v115);
      v104 = v7;
      v18 = v7 + 2;
      v19 = v12 + 80;
      while (1)
      {
        v20 = v110;
        if (v110 == v18)
        {
          break;
        }

        sub_22957F1C4(v19, &v115);
        sub_22957F1C4(v19 - 40, v112);
        v21 = v116;
        v22 = v117;
        __swift_project_boxed_opaque_existential_0(&v115, v116);
        v23 = sub_2297B96F4(v21, v22);
        v24 = v113;
        v7 = v114;
        __swift_project_boxed_opaque_existential_0(v112, v113);
        v25 = sub_2297B96F4(v24, v7);
        __swift_destroy_boxed_opaque_existential_0(v112);
        result = __swift_destroy_boxed_opaque_existential_0(&v115);
        ++v18;
        v19 += 40;
        if (v17 < v107 == v25 >= v23)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v5 = v102;
      v9 = v104;
      if (v17 < v107)
      {
        if (v20 < v104)
        {
          goto LABEL_119;
        }

        if (v104 < v20)
        {
          v26 = v8;
          v27 = 40 * v20 - 40;
          v28 = v20;
          v29 = v20;
          do
          {
            if (v9 != --v29)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v30 = v33 + v11;
              v7 = v33 + v27;
              sub_229557188((v33 + v11), &v115);
              v31 = *(v7 + 32);
              v32 = *(v7 + 16);
              *v30 = *v7;
              *(v30 + 16) = v32;
              *(v30 + 32) = v31;
              result = sub_229557188(&v115, v7);
            }

            ++v9;
            v27 -= 40;
            v11 += 40;
          }

          while (v9 < v29);
          v8 = v26;
          v9 = v104;
          v20 = v28;
        }
      }
    }

    v34 = a3[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v9))
      {
        goto LABEL_118;
      }

      if (v20 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v34)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v7)
        {
          break;
        }
      }
    }

    v7 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22958A414(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v36 = *(v8 + 16);
    v35 = *(v8 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_22958A414((v35 > 1), v36 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 16 * v36;
    *(v38 + 32) = v9;
    *(v38 + 40) = v7;
    v39 = *v106;
    if (!*v106)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 32);
          v42 = *(v8 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = (v8 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = (v8 + 32 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = (v8 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = v8 + 16 * v40;
        v72 = *(v70 + 32);
        v71 = *(v70 + 40);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
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

        v79 = *(v8 + 32 + 16 * v78);
        v80 = *(v8 + 32 + 16 * v40 + 8);
        sub_2296686E8((*a3 + 40 * v79), (*a3 + 40 * *(v8 + 32 + 16 * v40)), *a3 + 40 * v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_229668AF0(v8);
        }

        if (v78 >= *(v8 + 16))
        {
          goto LABEL_103;
        }

        v81 = v8 + 16 * v78;
        *(v81 + 32) = v79;
        *(v81 + 40) = v80;
        v118 = v8;
        result = sub_229668A64(v40);
        v8 = v118;
        v37 = *(v118 + 16);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = v8 + 32 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = (v8 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = (v8 + 32 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v100 = v8;
  v103 = v5;
  v105 = v9;
  v82 = *a3;
  v83 = *a3 + 40 * v20;
  v84 = v9 - v20;
  v108 = v7;
LABEL_81:
  v111 = v20;
  v85 = v84;
  v86 = v83;
  while (1)
  {
    sub_22957F1C4(v86, &v115);
    sub_22957F1C4(v86 - 40, v112);
    v87 = v116;
    v88 = v117;
    __swift_project_boxed_opaque_existential_0(&v115, v116);
    v89 = sub_2297B96F4(v87, v88);
    v90 = v113;
    v91 = v114;
    __swift_project_boxed_opaque_existential_0(v112, v113);
    v92 = sub_2297B96F4(v90, v91);
    __swift_destroy_boxed_opaque_existential_0(v112);
    result = __swift_destroy_boxed_opaque_existential_0(&v115);
    if (v92 >= v89)
    {
LABEL_80:
      v20 = v111 + 1;
      v83 += 40;
      --v84;
      v7 = v108;
      if (v111 + 1 != v108)
      {
        goto LABEL_81;
      }

      v5 = v103;
      v9 = v105;
      v8 = v100;
      if (v108 < v105)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    sub_229557188(v86, &v115);
    v93 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v93;
    *(v86 + 32) = *(v86 - 8);
    sub_229557188(&v115, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
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
  return result;
}

uint64_t sub_2296686E8(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v49 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v24 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v25 = (v5 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v26 + 40);
        v29 = (v4 + 40);
        sub_22957F1C4(v26, v46);
        v5 = v25;
        sub_22957F1C4(v25, v43);
        v30 = v47;
        v31 = v48;
        __swift_project_boxed_opaque_existential_0(v46, v47);
        v32 = sub_2297B96F4(v30, v31);
        v34 = v44;
        v33 = v45;
        __swift_project_boxed_opaque_existential_0(v43, v44);
        v35 = sub_2297B96F4(v34, v33);
        __swift_destroy_boxed_opaque_existential_0(v43);
        __swift_destroy_boxed_opaque_existential_0(v46);
        if (v35 < v32)
        {
          break;
        }

        v13 = v49;
        if (v29 != v12)
        {
          v36 = *v26;
          v37 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v36;
          *(v4 + 16) = v37;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v28 = v26 > v13;
        v26 -= 40;
        v25 = v5;
        if (!v28)
        {
          v12 = (v27 + 40);
          v24 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v49;
      v24 = v5;
      if (v29 != __dsta)
      {
        v38 = *v5;
        v39 = *(v5 + 1);
        *(v4 + 32) = *(v5 + 4);
        *v4 = v38;
        *(v4 + 16) = v39;
      }

      if (v12 <= v13 || v5 <= v6)
      {
        v12 = (v26 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v24 = v6;
    v13 = v49;
    goto LABEL_35;
  }

  v13 = v49;
  do
  {
    sub_22957F1C4(v5, v46);
    sub_22957F1C4(v13, v43);
    v14 = v47;
    v15 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    v16 = sub_2297B96F4(v14, v15);
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_0(v43, v44);
    v19 = sub_2297B96F4(v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v43);
    __swift_destroy_boxed_opaque_existential_0(v46);
    if (v19 < v16)
    {
      v20 = v5;
      v21 = v6 == v5;
      v5 += 40;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v6 + 4) = *(v20 + 4);
      *v6 = v22;
      *(v6 + 1) = v23;
      goto LABEL_14;
    }

    v20 = v13;
    v21 = v6 == v13;
    v13 += 40;
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v24 = v6;
LABEL_35:
  v40 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v40])
  {
    memmove(v24, v13, 40 * v40);
  }

  return 1;
}

uint64_t sub_229668A64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_229668AF0(v3);
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

unint64_t sub_229668B04(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAD4E70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAD4E70](&v3, 8);
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

uint64_t sub_229668B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_229557188(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_229668C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_22957F1C4(v2, &v24);
    v4 = v25;
    v5 = v26;
    __swift_project_boxed_opaque_existential_0(&v24, v25);
    if (sub_2297B96F4(v4, v5) < 1 || (v6 = v25, v7 = v26, __swift_project_boxed_opaque_existential_0(&v24, v25), v8 = sub_2297B97D8(v6, v7), (v9 & 1) != 0) || v8 != 2)
    {
      __swift_destroy_boxed_opaque_existential_0(&v24);
    }

    else
    {
      sub_229557188(&v24, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22958383C(0, *(v3 + 16) + 1, 1);
        v3 = v27;
      }

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22958383C((v11 > 1), v12 + 1, 1);
      }

      v13 = v22;
      v14 = v23;
      v15 = __swift_mutable_project_boxed_opaque_existential_0(v21, v22);
      MEMORY[0x28223BE20](v15);
      v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);
      sub_229668B90(v12, v17, &v27, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v3 = v27;
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

double sub_229668E2C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_22A4DD5AC();
  v2 = [v0 preferenceForKey_];

  v3 = [v2 numberValue];
  if (v3)
  {
    v4 = v3;
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

uint64_t sub_229668F10(void *a1, uint64_t a2)
{
  v10[3] = &type metadata for DefaultMobileAssetManagerDataSource;
  v10[4] = &off_283CE7308;
  swift_defaultActor_initialize();
  *(a2 + 176) = 0;
  sub_22957F1C4(v10, a2 + 112);
  *(a2 + 168) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  *(a2 + 152) = [v4 defaultCenter];
  v6 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v7 = sub_22A4DD5AC();
  v8 = [v6 initWithIdentifier_];

  __swift_destroy_boxed_opaque_existential_0(v10);
  *(a2 + 160) = v8;
  return a2;
}

uint64_t sub_22966901C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22966908C(uint64_t a1)
{
  updated = _s21MobileAssetUpdateInfoVMa(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_2296690E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229669180(uint64_t a1, uint64_t a2)
{
  updated = _s21MobileAssetUpdateInfoVMa(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_2296691E4()
{
  result = qword_2814026C8;
  if (!qword_2814026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814026C8);
  }

  return result;
}

uint64_t sub_229669238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229666224(a1, v4, v5, v7, v6);
}

uint64_t sub_2296692F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229669368(uint64_t a1, uint64_t a2)
{
  updated = _s21MobileAssetUpdateInfoVMa(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_2296693CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = _s21MobileAssetUpdateInfoVMa(0);
  v5 = a1 + *(result + 20);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_229669428(uint64_t a1)
{
  v3 = *(sub_22A4DB74C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_229667994(a1, v4);
}

uint64_t sub_229669498(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_27Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_229669534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_22965E724(a1, v4, v5, v6);
}

uint64_t sub_229669610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229666BEC(a1, v4, v5, v6, v7);
}

uint64_t sub_2296696D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229663F04(v2, v3);
}

uint64_t sub_229669784()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229569B30;

  return sub_2296633C0(v2, v3, v5, v4);
}

uint64_t sub_229669848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v6);
}

uint64_t sub_229669914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229662B14(v2, v3);
}

uint64_t sub_2296699C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229662440(v2, v3);
}

uint64_t objectdestroy_69Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_229669AAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22965E178(v2, v3);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MobileAssetManager.ManagerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MobileAssetManager.ManagerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_229669BBC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229669BD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_229669C18()
{
  result = qword_27D87E3D0;
  if (!qword_27D87E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3D0);
  }

  return result;
}

unint64_t sub_229669C78(void *a1)
{
  a1[1] = sub_229669CB0();
  a1[2] = sub_229669D04();
  result = sub_229669D58();
  a1[3] = result;
  return result;
}

unint64_t sub_229669CB0()
{
  result = qword_27D87E3D8;
  if (!qword_27D87E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3D8);
  }

  return result;
}

unint64_t sub_229669D04()
{
  result = qword_27D87E3E0;
  if (!qword_27D87E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3E0);
  }

  return result;
}

unint64_t sub_229669D58()
{
  result = qword_27D87E3E8;
  if (!qword_27D87E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E3E8);
  }

  return result;
}

uint64_t sub_229669DDC()
{
  sub_229669E48(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_229669FAC(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher) = a1;
  v5 = a1;

  v6 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController);
  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController) = a2;
  v7 = a2;

  v8 = [objc_opt_self() policyWithEntitlements_];
  v9 = *MEMORY[0x277CCEB08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22A576190;
  *(v10 + 32) = v8;
  sub_22960A928();
  v11 = v8;
  v12 = sub_22A4DD81C();

  [v5 registerForMessage:v9 receiver:v2 policies:v12 selector:sel_handleFetchWithMessage_];
}

void sub_22966A0E8(void *a1)
{
  v3 = [a1 messagePayload];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v5 = sub_22A4DD49C();

  v6 = sub_22A4DD5EC();
  if (!*(v5 + 16))
  {

    goto LABEL_8;
  }

  v8 = v1;
  v9 = sub_229543DBC(v6, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v9, aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v18 = [objc_opt_self() hmErrorWithCode_];
    v14 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_10;
  }

  v12 = *(v8 + OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController);
  if (v12)
  {
    v13 = v12;
    v14 = sub_22A4DD81C();

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    aBlock[4] = sub_22966A65C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2295AAF60;
    aBlock[3] = &block_descriptor_12;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    [v13 fetchWithFilters:v14 completion:v16];
    _Block_release(v16);

LABEL_10:
    return;
  }

  __break(1u);
}

void sub_22966A35C(void *a1, id a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_22A4DB3DC();
    [a2 respondWithError_];
  }

  else
  {

    [a2 respondWithSuccess];
  }
}

id sub_22966A48C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryInfoFetchController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryInfoFetchController(uint64_t a1)
{
  result = qword_281402148;
  if (!qword_281402148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22966A5B4(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

uint64_t sub_22966A664()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_22966A6C0()
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  MEMORY[0x28223BE20](v83);
  v91 = &v68 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v98 = &v68 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v99 = &v68 - v16;
  v17 = type metadata accessor for NetworkDetectAccessory(0);
  v80 = *(v17 - 8);
  v81 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v79 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  result = [v0 homes];
  if (result)
  {
    v23 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v24 = sub_22A4DD83C();

    v100 = MEMORY[0x277D84F90];
    v72 = v24;
    if (v24 >> 62)
    {
      goto LABEL_46;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_4:
      v71 = v24 & 0xC000000000000001;
      v70 = v24 & 0xFFFFFFFFFFFFFF8;
      v69 = v24 + 32;
      v88 = (v11 + 32);
      v77 = (v11 + 56);
      v97 = (v11 + 16);
      v76 = (v11 + 48);
      v89 = (v11 + 8);
      v90 = v9;
      v11 = 0;
      v78 = v21;
      v68 = v25;
      v75 = v5;
      while (1)
      {
        if (v71)
        {
          v26 = MEMORY[0x22AAD13F0](v11, v24);
        }

        else
        {
          if (v11 >= *(v70 + 16))
          {
            goto LABEL_45;
          }

          v26 = *(v69 + 8 * v11);
        }

        v86 = v26;
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_44;
        }

        v73 = v11;
        v28 = [v86 appleMediaAccessories];
        sub_229562F68(0, &qword_281401920, off_278666038);
        v29 = sub_22A4DD83C();

        if (!(v29 >> 62))
        {
          v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            break;
          }

          goto LABEL_5;
        }

        v21 = sub_22A4DE0EC();
        if (v21)
        {
          break;
        }

LABEL_5:
        v5 = MEMORY[0x277D84F90];
LABEL_6:

        sub_2296F0A74(v5);
        v11 = v73;
        v24 = v72;
        if (v73 == v68)
        {
          v67 = v100;
          goto LABEL_48;
        }
      }

      v11 = 0;
      v92 = v29 & 0xFFFFFFFFFFFFFF8;
      v93 = v29 & 0xC000000000000001;
      v5 = MEMORY[0x277D84F90];
      v30 = v91;
      v84 = v21;
      v85 = v29;
      while (1)
      {
        if (v93)
        {
          v31 = MEMORY[0x22AAD13F0](v11, v29);
        }

        else
        {
          if (v11 >= *(v92 + 16))
          {
            goto LABEL_43;
          }

          v31 = *(v29 + 8 * v11 + 32);
        }

        v32 = v31;
        v33 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v25 = sub_22A4DE0EC();
          v24 = v72;
          if (!v25)
          {
            goto LABEL_47;
          }

          goto LABEL_4;
        }

        v34 = [v31 idsIdentifier];
        if (v34)
        {
          break;
        }

LABEL_15:
        ++v11;
        if (v33 == v21)
        {
          goto LABEL_6;
        }
      }

      v95 = (v11 + 1);
      v35 = v82;
      v36 = v34;
      sub_22A4DB79C();

      v37 = *v88;
      v38 = v10;
      (*v88)(v99, v35, v10);
      v39 = [v86 primaryResident];
      v87 = v37;
      if (v39 && (v40 = v39, v41 = [v39 messageAddress], v40, v41))
      {
        v42 = [v41 idsIdentifier];

        sub_22A4DB79C();
        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v96 = v5;
      v44 = *v77;
      (*v77)(v9, v43, 1, v38);
      v45 = v98;
      v94 = *v97;
      v94(v98, v99, v38);
      v44(v45, 0, 1, v38);
      v46 = *(v83 + 48);
      sub_2295F2274(v9, v30);
      sub_2295F2274(v45, v30 + v46);
      v47 = *v76;
      if ((*v76)(v30, 1, v38) == 1)
      {
        sub_22953EAE4(v98, &unk_27D87D2A0, &unk_22A578BD0);
        v30 = v91;
        sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
        v48 = v38;
        if (v47(v30 + v46, 1, v38) == 1)
        {
          sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
          v49 = 1;
LABEL_32:
          v54 = [v32 uuid];
          v55 = v79;
          sub_22A4DB79C();

          v56 = v81;
          v57 = v99;
          v94(&v55[*(v81 + 20)], v99, v48);
          v58 = [v32 identifier];
          v59 = sub_22A4DD5EC();
          v61 = v60;

          v10 = v48;
          (*v89)(v57, v48);
          v62 = &v55[*(v56 + 24)];
          *v62 = v59;
          v62[1] = v61;
          v55[*(v56 + 28)] = v49 & 1;
          v63 = v55;
          v64 = v78;
          sub_22966B7F0(v63, v78);
          v5 = v96;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22958B1C8(0, v5[2] + 1, 1, v5);
          }

          v66 = v5[2];
          v65 = v5[3];
          v9 = v90;
          v30 = v91;
          if (v66 >= v65 >> 1)
          {
            v5 = sub_22958B1C8((v65 > 1), v66 + 1, 1, v5);
          }

          v5[2] = v66 + 1;
          sub_22966B7F0(v64, v5 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v66);
          v21 = v84;
          v29 = v85;
          v33 = v95;
          goto LABEL_15;
        }
      }

      else
      {
        v50 = v98;
        v51 = v75;
        sub_2295F2274(v30, v75);
        if (v47(v30 + v46, 1, v38) != 1)
        {
          v52 = v74;
          v87(v74, v30 + v46, v38);
          sub_2295B2378();
          v49 = sub_22A4DD58C();
          v53 = *v89;
          (*v89)(v52, v38);
          sub_22953EAE4(v50, &unk_27D87D2A0, &unk_22A578BD0);
          sub_22953EAE4(v90, &unk_27D87D2A0, &unk_22A578BD0);
          v53(v51, v38);
          sub_22953EAE4(v30, &unk_27D87D2A0, &unk_22A578BD0);
          v48 = v38;
          goto LABEL_32;
        }

        sub_22953EAE4(v50, &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v90, &unk_27D87D2A0, &unk_22A578BD0);
        (*v89)(v51, v38);
        v48 = v38;
      }

      sub_22953EAE4(v30, &qword_27D87DBA0, &qword_22A57A158);
      v49 = 0;
      goto LABEL_32;
    }

LABEL_47:
    v67 = MEMORY[0x277D84F90];
LABEL_48:

    return v67;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22966B0E4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_22A4DB77C();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_22966B764;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229582E94;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  [a2 fetchSetupDiagnosticStateForAccessoryUUID:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_22966B2A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = a1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);
  return sub_22A4DD8FC();
}

void *sub_22966B374()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_229711EE0();

  return v2;
}

uint64_t sub_22966B3EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966B4B8, 0, 0);
}

uint64_t sub_22966B4B8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_22966B5A8;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000023, 0x800000022A58F260, sub_22966B75C, v1, v4);
}

uint64_t sub_22966B5A8()
{

  return MEMORY[0x2822009F8](sub_22966B6C0, 0, 0);
}

uint64_t sub_22966B6C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_22A4DBA4C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22966B764(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E410, &qword_22A57C000);

  return sub_22966B2A8(a1);
}

uint64_t sub_22966B7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_22966B854()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2297B3744();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *&v1[OBJC_IVAR___HMDDiscoveryController_visibleSFDevices];

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = sub_229714F44(*(v3 + 16), 0);
  v6 = *(sub_22A4DBB4C() - 8);
  v7 = sub_22971528C(&v9, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  result = sub_22953EE84(v9);
  if (v7 == v4)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22966B9A0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v36 = MEMORY[0x277D84F90];
    sub_229583334(0, v4, 0);
    v35 = v36;
    v6 = v3 + 56;
    result = sub_22A4DE04C();
    v7 = result;
    v8 = 0;
    v28 = v3 + 64;
    v29 = v4;
    v30 = v3 + 56;
    v31 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v8;
      v34 = *(v3 + 36);
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      sub_22956C148(*v11, v13);
      v33 = v2;
      sub_22966BC74(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b", MEMORY[0x277D83958]);
      v14 = sub_22A4DD50C();
      v16 = v15;

      result = sub_2295798D4(v12, v13);
      v17 = v35;
      v19 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_229583334((v18 > 1), v19 + 1, 1);
        v17 = v35;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v3 = v31;
      v9 = 1 << *(v31 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v30;
      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v35 = v17;
      if (v34 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v2 = v33;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        v2 = v33;
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_22962F424(v7, v34, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_22962F424(v7, v34, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v29)
      {
        return v35;
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

uint64_t sub_22966BC74(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_229583334(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_22A4DB24C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_22A4DB27C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_22A4DB24C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_22A4DB27C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22A576180;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_22A4DD61C();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_229583334((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_22966BFE8(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    v4 = 0xC000000000000000;
    v5 = MEMORY[0x277CC9318];
    v6 = MEMORY[0x277CC9300];
    while (1)
    {
      v18 = v2;
      v19 = v4;
      v16 = v5;
      v17 = v6;
      v14 = *v3;
      v15 = *v3;
      v7 = __swift_project_boxed_opaque_existential_0(&v15, v5);
      v8 = *v7;
      v9 = v7[1] >> 62;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v11 = *(v8 + 16);
          v10 = *(v8 + 24);
          sub_22956C148(v14, *(&v14 + 1));
          sub_22956C148(v2, v4);
          if (sub_22A4DB24C() && __OFSUB__(v11, sub_22A4DB27C()))
          {
            goto LABEL_21;
          }

          if (__OFSUB__(v10, v11))
          {
            goto LABEL_20;
          }

LABEL_16:
          sub_22A4DB26C();
          sub_22A4DB5EC();
          sub_2295798D4(v2, v4);
          v6 = MEMORY[0x277CC9300];
          goto LABEL_4;
        }
      }

      else if (v9)
      {
        v12 = v8;
        if (v8 >> 32 < v8)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        sub_22956C148(v14, *(&v14 + 1));
        sub_22956C148(v2, v4);
        if (sub_22A4DB24C() && __OFSUB__(v12, sub_22A4DB27C()))
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

      sub_22956C148(v14, *(&v14 + 1));
      sub_22A4DB5EC();
LABEL_4:
      __swift_destroy_boxed_opaque_existential_0(&v15);
      v2 = v18;
      v4 = v19;
      ++v3;
      if (!--v1)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t static AliroVersionUtilities.readAndSaveAliroVersionFromSESOnHomeManager(_:)(void *a1)
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_229671DE8(v4, v1, v3);
}

uint64_t sub_22966C54C(uint64_t a1, uint64_t a2)
{
  v2[28] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22966C618, 0, 0);
}

uint64_t sub_22966C618()
{
  sub_2295404B0(v0[28], (v0 + 18));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  if (swift_dynamicCast())
  {
    v2 = v0[30];
    v1 = v0[31];
    v3 = v0[29];
    v0[32] = v0[25];
    v7 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_22966C8B4;
    swift_continuation_init();
    v0[17] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E518, &unk_22A57C0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22966D5C8;
    v0[13] = &block_descriptor_14;
    [v7 aliroCompatibilityManifestWithCompletion_];
    (*(v2 + 8))(boxed_opaque_existential_1, v3);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22A4DBD3C();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22966C8B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_22966D4D8;
  }

  else
  {
    v2 = sub_22966C9C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22966C9C4()
{
  v1 = *(v0 + 208);
  *(v0 + 272) = v1;
  if (v1)
  {
    sub_22A4DE1FC();

    v2 = [v1 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    sub_22A4DBD0C();

    v6 = [v1 supportedExpeditedTransactionProtocolVersions];
    v73 = MEMORY[0x277D84F90];
    v69 = v1;
    v70 = v0;
    if (v6)
    {
      v7 = v6;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v8 = sub_22A4DD83C();

      if (v8 >> 62)
      {
        goto LABEL_19;
      }

      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        while (1)
        {
          v76 = MEMORY[0x277D84F90];
          v10 = sub_22958387C(0, v9 & ~(v9 >> 63), 0);
          if (v9 < 0)
          {
            break;
          }

          v18 = 0;
          v0 = v76;
          while (1)
          {
            v1 = (v18 + 1);
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if ((v8 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x22AAD13F0](v18, v8);
            }

            else
            {
              if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_18;
              }

              v19 = *(v8 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = sub_229672F78(v19);
            v23 = v22;

            v25 = *(v0 + 16);
            v24 = *(v0 + 24);
            v26 = v0;
            if (v25 >= v24 >> 1)
            {
              sub_22958387C((v24 > 1), v25 + 1, 1);
              v26 = v0;
            }

            *(v26 + 16) = v25 + 1;
            v27 = v26 + 16 * v25;
            *(v27 + 32) = v21;
            *(v27 + 40) = v23;
            ++v18;
            v0 = v26;
            if (v1 == v9)
            {
              v73 = v26;

              v1 = v69;
              v0 = v70;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v9 = sub_22A4DE0EC();
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

LABEL_20:

      v73 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v29 = [v1 supportedBLEUWBProtocolVersions];
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = v29;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v32 = sub_22A4DD83C();

      if (v32 >> 62)
      {
        goto LABEL_37;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        while (1)
        {
          v10 = sub_22958387C(0, v33 & ~(v33 >> 63), 0);
          if (v33 < 0)
          {
            break;
          }

          v34 = 0;
          v35 = v32;
          v36 = v32 & 0xC000000000000001;
          v71 = v32 & 0xFFFFFFFFFFFFFF8;
          v74 = v32;
          while (1)
          {
            v1 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v36)
            {
              v37 = MEMORY[0x22AAD13F0](v34, v35);
            }

            else
            {
              if (v34 >= *(v71 + 16))
              {
                goto LABEL_36;
              }

              v37 = *(v35 + 8 * v34 + 32);
            }

            v38 = v37;
            v39 = sub_229672F78(v37);
            v32 = v40;

            v42 = *(v30 + 16);
            v41 = *(v30 + 24);
            v0 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              sub_22958387C((v41 > 1), v42 + 1, 1);
            }

            *(v30 + 16) = v0;
            v43 = v30 + 16 * v42;
            *(v43 + 32) = v39;
            *(v43 + 40) = v32;
            ++v34;
            v35 = v74;
            if (v1 == v33)
            {

              v1 = v69;
              v0 = v70;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v33 = sub_22A4DE0EC();
          if (!v33)
          {
            goto LABEL_38;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_38:
    }

LABEL_39:
    v44 = [v1 supportedBLEAdvertisingVersions];
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v46 = v44;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v47 = sub_22A4DD83C();

      if (v47 >> 62)
      {
        goto LABEL_58;
      }

      for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v10 = sub_22958387C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_66;
        }

        v49 = 0;
        v50 = v47;
        v0 = v47 & 0xC000000000000001;
        v72 = v47 & 0xFFFFFFFFFFFFFF8;
        v75 = v47;
        while (1)
        {
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v0)
          {
            v52 = MEMORY[0x22AAD13F0](v49, v50);
          }

          else
          {
            if (v49 >= *(v72 + 16))
            {
              goto LABEL_57;
            }

            v52 = *(v50 + 8 * v49 + 32);
          }

          v53 = v52;
          v54 = sub_229672F78(v52);
          v56 = v55;

          v58 = *(v45 + 16);
          v57 = *(v45 + 24);
          v47 = v58 + 1;
          if (v58 >= v57 >> 1)
          {
            sub_22958387C((v57 > 1), v58 + 1, 1);
          }

          *(v45 + 16) = v47;
          v59 = v45 + 16 * v58;
          *(v59 + 32) = v54;
          *(v59 + 40) = v56;
          ++v49;
          v50 = v75;
          if (v51 == i)
          {

            v0 = v70;
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        ;
      }
    }

LABEL_60:
    v10 = [*(v0 + 256) backingStore];
    if (v10)
    {
      v62 = v10;
      v63 = *(v0 + 256);
      v64 = [v10 context];
      *(v0 + 280) = v64;

      v65 = swift_allocObject();
      *(v0 + 288) = v65;
      v65[2] = v64;
      v65[3] = v73;
      v65[4] = v30;
      v65[5] = v45;
      v65[6] = v63;
      v66 = v64;
      v67 = v63;
      v68 = swift_task_alloc();
      *(v0 + 296) = v68;
      v68[2] = v66;
      v68[3] = sub_229673944;
      v68[4] = v65;
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_22966D22C;
      v15 = sub_229586C80;
      v14 = 0x800000022A58A7E0;
      v17 = MEMORY[0x277D84F78] + 8;
      v11 = 0;
      v12 = 0;
      v13 = 0xD000000000000016;
      v16 = v68;

      return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
    }

LABEL_67:
    __break(1u);
    return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v28 = *(v0 + 256);
  sub_22A4DBD3C();

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_22966D22C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22966D3C8;
  }

  else
  {

    v2 = sub_22966D350;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22966D350()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22966D3C8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];

  v4 = v0[39];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58F6A0);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_22966D4D8(uint64_t a1)
{
  v2 = v1[32];
  swift_willThrow();

  v3 = v1[33];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000003BLL, 0x800000022A58F6A0);
  swift_getErrorValue();
  sub_22A4DE5EC();
  sub_22A4DBD3C();

  v4 = v1[1];

  return v4();
}

void sub_22966D5C8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E510, &qword_22A57C0B8);
    sub_22A4DD8FC();
  }
}

void sub_22966D670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [a1 managedObjectContext];
  sub_229562F68(0, &unk_281401938, off_2786663A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v9;
  v12 = [ObjCClassFromMetadata fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E500, &qword_22A57C0A0);
  v13 = sub_22A4DDE7C();

  if (v5)
  {

    return;
  }

  v61 = a2;
  v14 = sub_22986B134(v13);

  v62 = a3;
  v63 = a4;
  if (!v14)
  {
    goto LABEL_11;
  }

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_22A4DE0EC())
  {
LABEL_10:

LABEL_11:
    v16 = [objc_allocWithZone(MKFLocalAliroVersion) initWithContext_];

LABEL_12:
    v69 = sub_22966BFE8(a2);
    v18 = v17;
    v66 = sub_22966BFE8(a3);
    v67 = v19;
    v60 = sub_22966BFE8(v63);
    v64 = v20;
    v21 = [v16 expeditedTransactionSupportedVersions];
    if (v21)
    {
      v22 = v21;
      v23 = sub_22A4DB62C();
      v25 = v24;

      if (v25 >> 60 != 15)
      {
        if (v18 >> 60 != 15)
        {
          sub_22956C148(v69, v18);
          sub_22956C148(v69, v18);
          sub_2295AEF1C(v23, v25);
          v26 = sub_2297B7550(v23, v25, v69, v18);
          sub_229590D18(v69, v18);
          sub_2295798D4(v69, v18);
          sub_229590D18(v23, v25);
          sub_229590D18(v23, v25);
          if (!v26)
          {
            goto LABEL_41;
          }

LABEL_20:
          v27 = [v16 bleUWBSupportedVersions];
          if (v27)
          {
            v28 = v27;
            v29 = sub_22A4DB62C();
            v31 = v30;

            if (v31 >> 60 != 15)
            {
              if (v67 >> 60 != 15)
              {
                sub_22956C148(v66, v67);
                sub_22956C148(v66, v67);
                sub_2295AEF1C(v29, v31);
                v32 = sub_2297B7550(v29, v31, v66, v67);
                sub_229590D18(v66, v67);
                sub_2295798D4(v66, v67);
                sub_229590D18(v29, v31);
                sub_229590D18(v29, v31);
                if (!v32)
                {
                  goto LABEL_41;
                }

LABEL_29:
                v35 = [v16 bleAdvertisingVersions];
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_22A4DB62C();
                  v39 = v38;

                  if (v39 >> 60 != 15)
                  {
                    v40 = v64;
                    if (v64 >> 60 != 15)
                    {
                      sub_22956C148(v60, v64);
                      sub_22956C148(v60, v64);
                      sub_2295AEF1C(v37, v39);
                      v41 = sub_2297B7550(v37, v39, v60, v64);
                      sub_229590D18(v60, v64);
                      sub_2295798D4(v60, v64);
                      sub_229590D18(v37, v39);
                      sub_229590D18(v37, v39);
                      if (!v41)
                      {
                        goto LABEL_41;
                      }

LABEL_38:
                      sub_22A4DBD0C();
                      sub_2295798D4(v60, v64);
                      v42 = v66;
                      v43 = v67;
LABEL_43:
                      sub_2295798D4(v42, v43);
                      sub_2295798D4(v69, v18);

                      return;
                    }

LABEL_39:
                    sub_22956C148(v60, v40);
                    sub_229590D18(v37, v39);
                    v33 = v60;
                    v34 = v40;
                    goto LABEL_40;
                  }
                }

                else
                {
                  v37 = 0;
                  v39 = 0xF000000000000000;
                }

                v40 = v64;
                if (v64 >> 60 == 15)
                {
                  sub_22956C148(v60, v64);
                  sub_229590D18(v37, v39);
                  goto LABEL_38;
                }

                goto LABEL_39;
              }

LABEL_34:
              sub_22956C148(v66, v67);
              sub_229590D18(v29, v31);
              v33 = v66;
              v34 = v67;
              goto LABEL_40;
            }
          }

          else
          {
            v29 = 0;
            v31 = 0xF000000000000000;
          }

          if (v67 >> 60 == 15)
          {
            sub_22956C148(v66, v67);
            sub_229590D18(v29, v31);
            goto LABEL_29;
          }

          goto LABEL_34;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    if (v18 >> 60 == 15)
    {
      sub_22956C148(v69, v18);
      sub_229590D18(v23, v25);
      goto LABEL_20;
    }

LABEL_25:
    sub_22956C148(v69, v18);
    sub_229590D18(v23, v25);
    v33 = v69;
    v34 = v18;
LABEL_40:
    sub_229590D18(v33, v34);
LABEL_41:
    v44 = sub_22A4DB61C();
    [v16 setExpeditedTransactionSupportedVersions_];

    v45 = sub_22A4DB61C();
    [v16 setBleUWBSupportedVersions_];

    v46 = sub_22A4DB61C();
    [v16 setBleAdvertisingVersions_];

    sub_2297082C0();
    v59 = type metadata accessor for AliroVersion();
    v47 = objc_allocWithZone(v59);
    sub_22956C148(v69, v18);
    sub_22956C148(v66, v67);
    sub_22956C148(v60, v64);
    v48 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v69, v18);
    v49 = sub_2296725BC(v48);

    *&v47[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v49;
    v50 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v66, v67);
    v51 = sub_2296725BC(v50);

    *&v47[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v51;
    v52 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v60, v64);
    v53 = sub_2296725BC(v52);

    *&v47[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v53;
    v68.receiver = v47;
    v68.super_class = v59;
    v54 = objc_msgSendSuper2(&v68, sel_init);
    sub_2295798D4(v60, v64);
    sub_2295798D4(v66, v67);
    sub_2295798D4(v69, v18);
    [a5 setCurrentDeviceAliroVersion_];

    logAndPostNotification(@"HMDLocalAliroVersionDidChangeNotification", a5, 0);
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003CLL, 0x800000022A58F740);
    v55 = MEMORY[0x277CC9318];
    v56 = MEMORY[0x22AAD0A20](v61, MEMORY[0x277CC9318]);
    MEMORY[0x22AAD08C0](v56);

    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A58F330);
    v57 = MEMORY[0x22AAD0A20](v62, v55);
    MEMORY[0x22AAD08C0](v57);

    MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A58F780);
    v58 = MEMORY[0x22AAD0A20](v63, v55);
    MEMORY[0x22AAD08C0](v58);

    sub_22A4DBD0C();

    sub_2295798D4(v60, v64);
    v42 = v66;
    v43 = v67;
    goto LABEL_43;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x22AAD13F0](0, v14);
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
LABEL_8:
    v16 = v15;

    goto LABEL_12;
  }

  __break(1u);
}

id AliroVersion.__allocating_init(expeditedTransactionSupportedVersions:bleUWBSupportedVersions:bleAdvertisingVersions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a1, a2);
  v16 = sub_2296725BC(v15);

  *&v14[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v16;
  v17 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a3, a4);
  v18 = sub_2296725BC(v17);

  *&v14[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v18;
  v19 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a5, a6);
  v20 = sub_2296725BC(v19);

  *&v14[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v20;
  v23.receiver = v14;
  v23.super_class = v7;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_2295798D4(a5, a6);
  sub_2295798D4(a3, a4);
  sub_2295798D4(a1, a2);
  return v21;
}

uint64_t sub_22966E1B8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[6] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v4 = v3[5];
  v5 = __swift_project_boxed_opaque_existential_0(v3 + 2, v4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_22966E2B8;

  return sub_229671DE8(v5, ObjCClassMetadata, v4);
}

uint64_t sub_22966E2B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t static AliroVersionUtilities.readAliroVersionIntoMemoryOnHomeManager(_:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_2296720CC(v3, v1, v2);
}

void sub_22966E420(uint64_t a1)
{
  sub_2295404B0(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  if (swift_dynamicCast())
  {
    v2 = v8;
    v3 = [v8 backingStore];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 context];

      MEMORY[0x28223BE20](v6);
      v7[2] = v5;
      v7[3] = v8;
      sub_2296D0418(sub_229673828, v7);
      if (v1)
      {

        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        sub_22A4DE1FC();
        MEMORY[0x22AAD08C0](0xD00000000000002ALL, 0x800000022A58F5E0);
        swift_getErrorValue();
        sub_22A4DE5EC();
        sub_22A4DBD3C();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_22A4DBD3C();
  }
}

void sub_22966E5E8(void *a1, void *a2)
{
  v4 = [a1 managedObjectContext];
  sub_229562F68(0, &unk_281401938, off_2786663A8);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E500, &qword_22A57C0A0);
  v6 = sub_22A4DDE7C();
  if (v2)
  {

    return;
  }

  v7 = v6;

  v8 = sub_22986B134(v7);

  if (!v8)
  {
    goto LABEL_14;
  }

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_19:

    return;
  }

  if (!sub_22A4DE0EC())
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AAD13F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 expeditedTransactionSupportedVersions];
  if (!v11)
  {

LABEL_14:
    return;
  }

  v12 = v11;
  v13 = sub_22A4DB62C();
  v43 = v14;

  v15 = [v10 bleUWBSupportedVersions];
  if (v15)
  {
    v16 = v15;
    v17 = sub_22A4DB62C();
    v41 = v18;

    v19 = [v10 bleAdvertisingVersions];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22A4DB62C();
      v23 = v22;
      v40 = v22;

      v36.super_class = type metadata accessor for AliroVersion();
      v39 = v17;
      v36.receiver = objc_allocWithZone(v36.super_class);
      v37 = v13;
      sub_22956C148(v13, v43);
      sub_22956C148(v17, v41);
      v38 = v10;
      sub_22956C148(v21, v23);
      v24 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v13, v43);
      v25 = sub_2296725BC(v24);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions) = v25;
      v26 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v17, v41);
      v27 = sub_2296725BC(v26);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions) = v27;
      v28 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v21, v40);
      v29 = sub_2296725BC(v28);

      *(v36.receiver + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions) = v29;
      v42 = v36;
      v30 = objc_msgSendSuper2(&v42, sel_init);
      sub_2295798D4(v21, v40);
      sub_2295798D4(v39, v41);
      v31 = v43;
      sub_2295798D4(v37, v43);
      [a2 setCurrentDeviceAliroVersion_];
      sub_22A4DE1FC();

      v32 = [v30 description];
      v33 = sub_22A4DD5EC();
      v35 = v34;

      MEMORY[0x22AAD08C0](v33, v35);

      sub_22A4DBD0C();

      sub_2295798D4(v21, v40);
      sub_2295798D4(v39, v41);
      sub_2295798D4(v37, v31);

      return;
    }

    sub_2295798D4(v17, v41);
  }

  else
  {
  }

  sub_2295798D4(v13, v43);
}

id AliroVersionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AliroVersionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AliroVersion.init(expeditedTransactionSupportedVersions:bleUWBSupportedVersions:bleAdvertisingVersions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a1, a2);
  v14 = sub_2296725BC(v13);

  *&v6[OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions] = v14;
  v15 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a3, a4);
  v16 = sub_2296725BC(v15);

  *&v6[OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions] = v16;
  v17 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(a5, a6);
  v18 = sub_2296725BC(v17);

  *&v6[OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions] = v18;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for AliroVersion();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_2295798D4(a5, a6);
  sub_2295798D4(a3, a4);
  sub_2295798D4(a1, a2);
  return v19;
}

uint64_t AliroVersion.isCompatibleWith(version:includeUWBCompatibility:)(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions);
  v6 = *(a1 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions);

  v7 = sub_22966FE3C(v6, v5, sub_229670474, sub_229670474);
  v8 = *(v2 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions);
  v9 = *(a1 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions);

  v10 = sub_22966FE3C(v9, v8, sub_229670474, sub_229670474);
  v11 = *(v2 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions);
  v12 = *(a1 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions);

  v13 = sub_22966FE3C(v12, v11, sub_229670474, sub_229670474);
  if (a2)
  {
    v14 = v13;
    v15 = v10[2];

    if (v15)
    {
      v16 = v14[2];

      v17 = v16 != 0;
    }

    else
    {

      v17 = 0;
    }
  }

  else
  {

    v17 = 1;
  }

  v18 = v7[2];

  return (v18 != 0) & v17;
}

uint64_t AliroVersion.description.getter()
{
  strcpy(v11, "AliroVersion(");
  HIWORD(v11[1]) = -4864;
  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions));
  v1 = MEMORY[0x22AAD0A20]();
  v3 = v2;

  MEMORY[0x22AAD08C0](v1, v3);

  MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A58F2E0);

  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions));
  v4 = MEMORY[0x22AAD0A20]();
  v6 = v5;

  MEMORY[0x22AAD08C0](v4, v6);

  MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A58F310);

  sub_22A4DE1FC();

  sub_22966B9A0(*(v0 + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions));
  v7 = MEMORY[0x22AAD0A20]();
  v9 = v8;

  MEMORY[0x22AAD08C0](v7, v9);

  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A58F330);

  return v11[0];
}

id AliroVersion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22966F2B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22966F360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22A4DE77C();

    sub_22A4DD6BC();
    result = sub_22A4DE7BC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966F584(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22A4DE77C();
    sub_22956C148(v17, v18);
    sub_22A4DB63C();
    result = sub_22A4DE7BC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966F7C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_22A4DB7DC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  result = sub_22A4DE1CC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_229673710(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_22A4DD4EC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22966FB38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22A4DE1CC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22A4DDECC();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22966FD24(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_22966FDBC(uint64_t a1, uint64_t a2)
{

  return sub_22966FE3C(a1, a2, sub_229670098, sub_229670098);
}

void *sub_22966FE3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_22966FD24(v15, v10, a2, a1, a4);

    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  return v13;
}

void *sub_229670018(uint64_t a1, uint64_t a2)
{

  return sub_22966FE3C(a1, a2, sub_2296719F4, sub_2296719F4);
}

unint64_t *sub_229670098(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v26 = sub_22A4DE7BC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_22A4DE60C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22966F360(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v39 = sub_22A4DE7BC();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_22A4DE60C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_229670474(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v235 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) < *(a3 + 16))
  {
    v211 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v226 = a3 + 56;
    v186 = v11;
    v192 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v209 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            sub_22966F584(a1, a2, v211, v5);
            return;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v209 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_22A4DE77C();
      sub_22956C148(v17, v16);
      v222 = v17;
      v224 = v16;
      sub_22A4DB63C();
      v18 = sub_22A4DE7BC();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v226 + 8 * (v20 >> 6))) == 0)
      {
LABEL_6:
        sub_2295798D4(v222, v224);
        v4 = a4;
        v11 = v186;
        v7 = v192;
        v10 = v209;
        continue;
      }

      v23 = ~v19;
      v24 = v16 >> 62;
      if (v17)
      {
        v25 = 0;
      }

      else
      {
        v25 = v16 == 0xC000000000000000;
      }

      v26 = !v25;
      v219 = v26;
      v203 = HIDWORD(v17);
      v27 = __OFSUB__(HIDWORD(v17), v17);
      v213 = v27;
      v199 = (v17 >> 32) - v17;
      v201 = v17 >> 32;
      v214 = v23;
      v215 = v16 >> 62;
      while (1)
      {
        v28 = (*(v5 + 48) + 16 * v20);
        v30 = *v28;
        v29 = v28[1];
        v31 = v29 >> 62;
        if (v29 >> 62 == 3)
        {
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29 == 0xC000000000000000;
          }

          v34 = !v32 || v24 < 3;
          if (((v34 | v219) & 1) == 0)
          {
            v87 = 0;
            v88 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v35 = 0;
          if (v24 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v31 > 1)
        {
          if (v31 != 2)
          {
            goto LABEL_49;
          }

          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_332;
          }

          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v31)
        {
          LODWORD(v35) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_333;
          }

          v35 = v35;
          if (v24 <= 1)
          {
LABEL_46:
            v39 = BYTE6(v224);
            if (v24)
            {
              v39 = HIDWORD(v222) - v222;
              if (v213)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v35 = BYTE6(v29);
          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v24 != 2)
        {
          if (!v35)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v41 = *(v222 + 16);
        v40 = *(v222 + 24);
        v38 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v38)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v35 != v39)
        {
          goto LABEL_26;
        }

        if (v35 < 1)
        {
          goto LABEL_161;
        }

        if (v31 > 1)
        {
          break;
        }

        if (v31)
        {
          if (v30 > v30 >> 32)
          {
            goto LABEL_335;
          }

          sub_22956C148(v30, v29);
          v51 = sub_22A4DB24C();
          if (v51)
          {
            v52 = v51;
            v53 = sub_22A4DB27C();
            if (__OFSUB__(v30, v53))
            {
              goto LABEL_339;
            }

            v195 = (v30 - v53 + v52);
          }

          else
          {
            v195 = 0;
          }

          sub_22A4DB26C();
          v24 = v215;
          v5 = a3;
          if (v215 == 2)
          {
            v176 = *(v222 + 24);
            v182 = *(v222 + 16);
            v60 = sub_22A4DB24C();
            if (v60)
            {
              v73 = sub_22A4DB27C();
              v74 = v182;
              if (__OFSUB__(v182, v73))
              {
                goto LABEL_368;
              }

              v60 += v182 - v73;
            }

            else
            {
              v74 = v182;
            }

            v84 = v176 - v74;
            if (__OFSUB__(v176, v74))
            {
              goto LABEL_358;
            }

            v85 = sub_22A4DB26C();
            if (v85 >= v84)
            {
              v81 = v84;
            }

            else
            {
              v81 = v85;
            }

            v82 = v195;
            if (!v195)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v60)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v215 != 1)
            {
              v72 = v195;
              *__s1 = v222;
              __s1[4] = v203;
              *&__s1[5] = *(&v222 + 5);
              __s1[7] = HIBYTE(v222);
              *&__s1[8] = v224;
              *&__s1[12] = WORD2(v224);
              if (!v195)
              {
                goto LABEL_378;
              }

LABEL_115:
              v69 = memcmp(v72, __s1, BYTE6(v224));
              sub_2295798D4(v30, v29);
              v23 = v214;
              goto LABEL_116;
            }

            if (v201 < v222)
            {
              goto LABEL_357;
            }

            v61 = sub_22A4DB24C();
            if (v61)
            {
              v179 = v61;
              v62 = sub_22A4DB27C();
              if (__OFSUB__(v222, v62))
              {
                goto LABEL_369;
              }

              v60 = (v222 - v62 + v179);
            }

            else
            {
              v60 = 0;
            }

            v86 = sub_22A4DB26C();
            v81 = (v222 >> 32) - v222;
            if (v86 < v199)
            {
              v81 = v86;
            }

            v82 = v195;
            if (!v195)
            {
              goto LABEL_396;
            }

            if (!v60)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v30;
        *&__s1[8] = v29;
        __s1[10] = BYTE2(v29);
        __s1[11] = BYTE3(v29);
        __s1[12] = BYTE4(v29);
        __s1[13] = BYTE5(v29);
        if (!v24)
        {
          goto LABEL_79;
        }

        if (v24 == 1)
        {
          if (v201 < v222)
          {
            goto LABEL_350;
          }

          sub_22956C148(v30, v29);
          v42 = sub_22A4DB24C();
          if (!v42)
          {
            goto LABEL_388;
          }

          v43 = v42;
          v44 = sub_22A4DB27C();
          if (__OFSUB__(v222, v44))
          {
            goto LABEL_354;
          }

          v45 = (v222 - v44 + v43);
          v46 = sub_22A4DB26C();
          if (!v45)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v197 = *(v222 + 16);
        v180 = *(v222 + 24);
        sub_22956C148(v30, v29);
        v54 = sub_22A4DB24C();
        if (v54)
        {
          v63 = sub_22A4DB27C();
          v64 = v197;
          if (__OFSUB__(v197, v63))
          {
            goto LABEL_364;
          }

          v54 = &v197[v54 - v63];
        }

        else
        {
          v64 = v197;
        }

        v75 = v180 - v64;
        if (__OFSUB__(v180, v64))
        {
          goto LABEL_351;
        }

        v76 = sub_22A4DB26C();
        if (!v54)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v76 >= v75)
        {
          v77 = v75;
        }

        else
        {
          v77 = v76;
        }

        v78 = memcmp(__s1, v54, v77);
        sub_2295798D4(v30, v29);
        v5 = a3;
LABEL_158:
        v23 = v214;
        v24 = v215;
        if (!v78)
        {
          goto LABEL_161;
        }

LABEL_26:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v226 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v31 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v24)
        {
LABEL_79:
          __s2 = v222;
          v229 = v203;
          v230 = *(&v222 + 5);
          v231 = HIBYTE(v222);
          v232 = v224;
          v233 = WORD2(v224);
          v57 = memcmp(__s1, &__s2, BYTE6(v224));
          v23 = v214;
          if (!v57)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v24 != 2)
        {
          if (v201 < v222)
          {
            goto LABEL_349;
          }

          sub_22956C148(v30, v29);
          v65 = sub_22A4DB24C();
          if (!v65)
          {
            goto LABEL_382;
          }

          v66 = v65;
          v67 = sub_22A4DB27C();
          if (__OFSUB__(v222, v67))
          {
            goto LABEL_355;
          }

          v45 = (v222 - v67 + v66);
          v46 = sub_22A4DB26C();
          if (!v45)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v46 >= v199)
          {
            v68 = (v222 >> 32) - v222;
          }

          else
          {
            v68 = v46;
          }

          v69 = memcmp(__s1, v45, v68);
          sub_2295798D4(v30, v29);
          v5 = a3;
          v23 = v214;
          v24 = v215;
LABEL_116:
          if (!v69)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v196 = *(v222 + 16);
        v177 = *(v222 + 24);
        sub_22956C148(v30, v29);
        v54 = sub_22A4DB24C();
        if (v54)
        {
          v55 = sub_22A4DB27C();
          v56 = v196;
          if (__OFSUB__(v196, v55))
          {
            goto LABEL_365;
          }

          v54 = &v196[v54 - v55];
        }

        else
        {
          v56 = v196;
        }

        v75 = v177 - v56;
        if (__OFSUB__(v177, v56))
        {
          goto LABEL_352;
        }

        v76 = sub_22A4DB26C();
        if (!v54)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v47 = *(v30 + 16);
      sub_22956C148(v30, v29);
      v48 = sub_22A4DB24C();
      if (v48)
      {
        v49 = v48;
        v50 = sub_22A4DB27C();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_338;
        }

        v194 = (v47 - v50 + v49);
      }

      else
      {
        v194 = 0;
      }

      sub_22A4DB26C();
      v24 = v215;
      v5 = a3;
      if (v215 == 2)
      {
        v175 = *(v222 + 24);
        v181 = *(v222 + 16);
        v60 = sub_22A4DB24C();
        if (v60)
        {
          v70 = sub_22A4DB27C();
          v71 = v181;
          if (__OFSUB__(v181, v70))
          {
            goto LABEL_366;
          }

          v60 += v181 - v70;
        }

        else
        {
          v71 = v181;
        }

        v79 = v175 - v71;
        if (__OFSUB__(v175, v71))
        {
          goto LABEL_356;
        }

        v80 = sub_22A4DB26C();
        if (v80 >= v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = v80;
        }

        v82 = v194;
        if (!v194)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v60)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v215 != 1)
        {
          v72 = v194;
          *__s1 = v222;
          __s1[4] = v203;
          *&__s1[5] = *(&v222 + 5);
          __s1[7] = HIBYTE(v222);
          *&__s1[8] = v224;
          *&__s1[12] = WORD2(v224);
          if (!v194)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v201 < v222)
        {
          goto LABEL_353;
        }

        v58 = sub_22A4DB24C();
        if (v58)
        {
          v178 = v58;
          v59 = sub_22A4DB27C();
          if (__OFSUB__(v222, v59))
          {
            goto LABEL_367;
          }

          v60 = (v222 - v59 + v178);
        }

        else
        {
          v60 = 0;
        }

        v83 = sub_22A4DB26C();
        v81 = (v222 >> 32) - v222;
        if (v83 < v199)
        {
          v81 = v83;
        }

        v82 = v194;
        if (!v194)
        {
          goto LABEL_392;
        }

        if (!v60)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v82 != v60)
      {
        v78 = memcmp(v82, v60, v81);
        sub_2295798D4(v30, v29);
        goto LABEL_158;
      }

      sub_2295798D4(v30, v29);
LABEL_161:
      v87 = v222;
      v88 = v224;
LABEL_162:
      sub_2295798D4(v87, v88);
      a1[v21] |= v22;
      v38 = __OFADD__(v211++, 1);
      v4 = a4;
      v11 = v186;
      v7 = v192;
      v10 = v209;
      if (v38)
      {
        __break(1u);
        break;
      }
    }
  }

  v211 = 0;
  v89 = 0;
  v193 = v5 + 56;
  v90 = 1 << *(v5 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v5 + 56);
  v93 = (v90 + 63) >> 6;
  v200 = v93;
  v94 = v4 + 56;
  v220 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v92)
    {
      v95 = __clz(__rbit64(v92));
      v96 = (v92 - 1) & v92;
      goto LABEL_177;
    }

    v97 = v89;
    do
    {
      v89 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v89 >= v93)
      {
        goto LABEL_323;
      }

      v98 = *(v193 + 8 * v89);
      ++v97;
    }

    while (!v98);
    v95 = __clz(__rbit64(v98));
    v96 = (v98 - 1) & v98;
LABEL_177:
    v99 = v95 | (v89 << 6);
    v212 = v96;
    v100 = (*(v5 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    sub_22A4DE77C();
    sub_22956C148(v102, v101);
    sub_22A4DB63C();
    v103 = sub_22A4DE7BC();
    v104 = -1 << *(v4 + 32);
    v105 = v103 & ~v104;
    v106 = v94;
    v227 = v101;
    if ((*(v94 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
    {
      break;
    }

LABEL_169:
    v94 = v106;
    sub_2295798D4(v102, v227);
    v5 = a3;
    v93 = v200;
    v92 = v212;
  }

  v198 = v99;
  v107 = ~v104;
  v108 = v101 >> 62;
  if (v102)
  {
    v109 = 0;
  }

  else
  {
    v109 = v101 == 0xC000000000000000;
  }

  v110 = !v109;
  v223 = v110;
  v111 = __OFSUB__(HIDWORD(v102), v102);
  v216 = v111;
  v225 = BYTE6(v101);
  v210 = v102 >> 32;
  v202 = (v102 >> 32) - v102;
  __n = v107;
  while (1)
  {
    v112 = (*(v4 + 48) + 16 * v105);
    v113 = *v112;
    v114 = v112[1];
    v115 = v114 >> 62;
    if (v114 >> 62 == 3)
    {
      if (v113)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114 == 0xC000000000000000;
      }

      v118 = !v116 || v108 < 3;
      if (((v118 | v223) & 1) == 0)
      {
        v94 = v106;
        v172 = 0;
        v173 = 0xC000000000000000;
LABEL_318:
        sub_2295798D4(v172, v173);
        v174 = v211;
        goto LABEL_319;
      }

LABEL_212:
      v119 = 0;
      if (v108 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v115 > 1)
    {
      if (v115 != 2)
      {
        goto LABEL_212;
      }

      v121 = *(v113 + 16);
      v120 = *(v113 + 24);
      v38 = __OFSUB__(v120, v121);
      v119 = v120 - v121;
      if (v38)
      {
        goto LABEL_330;
      }

      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v115)
    {
      LODWORD(v119) = HIDWORD(v113) - v113;
      if (__OFSUB__(HIDWORD(v113), v113))
      {
        goto LABEL_331;
      }

      v119 = v119;
      if (v108 <= 1)
      {
LABEL_209:
        v122 = v225;
        if (v108)
        {
          v122 = HIDWORD(v102) - v102;
          if (v216)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v119 = BYTE6(v114);
      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v108 != 2)
    {
      if (!v119)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v124 = *(v102 + 16);
    v123 = *(v102 + 24);
    v38 = __OFSUB__(v123, v124);
    v122 = v123 - v124;
    if (v38)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v119 != v122)
    {
      goto LABEL_189;
    }

    if (v119 < 1)
    {
      goto LABEL_317;
    }

    if (v115 > 1)
    {
      break;
    }

    if (v115)
    {
      if (v113 > v113 >> 32)
      {
        goto LABEL_334;
      }

      sub_22956C148(v113, v114);
      v131 = sub_22A4DB24C();
      if (v131)
      {
        v132 = v131;
        v133 = sub_22A4DB27C();
        if (__OFSUB__(v113, v133))
        {
          goto LABEL_337;
        }

        v205 = (v113 - v133 + v132);
      }

      else
      {
        v205 = 0;
      }

      sub_22A4DB26C();
      v4 = a4;
      v107 = __n;
      if (v108 == 2)
      {
        v191 = *(v102 + 16);
        v184 = *(v102 + 24);
        v141 = sub_22A4DB24C();
        if (v141)
        {
          v157 = sub_22A4DB27C();
          v158 = v191;
          if (__OFSUB__(v191, v157))
          {
            goto LABEL_362;
          }

          v141 += v191 - v157;
        }

        else
        {
          v158 = v191;
        }

        v168 = v184 - v158;
        if (__OFSUB__(v184, v158))
        {
          goto LABEL_348;
        }

        v169 = sub_22A4DB26C();
        if (v169 >= v168)
        {
          v165 = v168;
        }

        else
        {
          v165 = v169;
        }

        v166 = v205;
        if (!v205)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v141)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v108 == 1)
      {
        if (v210 < v102)
        {
          goto LABEL_347;
        }

        v142 = sub_22A4DB24C();
        if (v142)
        {
          v189 = v142;
          v143 = sub_22A4DB27C();
          if (__OFSUB__(v102, v143))
          {
            goto LABEL_363;
          }

          v141 = (v102 - v143 + v189);
        }

        else
        {
          v141 = 0;
        }

        v170 = sub_22A4DB26C();
        v165 = (v102 >> 32) - v102;
        if (v170 < v202)
        {
          v165 = v170;
        }

        v166 = v205;
        if (!v205)
        {
          goto LABEL_385;
        }

        if (!v141)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v156 = v205;
      *__s1 = v102;
      *&__s1[8] = v227;
      *&__s1[12] = WORD2(v227);
      if (!v205)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v113;
    *&__s1[8] = v114;
    __s1[10] = BYTE2(v114);
    __s1[11] = BYTE3(v114);
    __s1[12] = BYTE4(v114);
    __s1[13] = BYTE5(v114);
    if (!v108)
    {
      goto LABEL_240;
    }

    if (v108 == 1)
    {
      if (v210 < v102)
      {
        goto LABEL_342;
      }

      sub_22956C148(v113, v114);
      v125 = sub_229673380(v102, v210, v227 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v208)
      {
        goto LABEL_399;
      }

      v126 = v125;
      sub_2295798D4(v113, v114);
    }

    else
    {
      v144 = *(v102 + 16);
      v145 = *(v102 + 24);
      sub_22956C148(v113, v114);
      v146 = sub_229673380(v144, v145, v227 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v208)
      {
        goto LABEL_399;
      }

      v126 = v146;
      sub_2295798D4(v113, v114);
      v4 = a4;
    }

    v106 = v220;
    if (v126)
    {
      goto LABEL_317;
    }

LABEL_189:
    v105 = (v105 + 1) & v107;
    if (((*(v106 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v115 == 2)
  {
    v127 = *(v113 + 16);
    sub_22956C148(v113, v114);
    v128 = sub_22A4DB24C();
    if (v128)
    {
      v129 = v128;
      v130 = sub_22A4DB27C();
      if (__OFSUB__(v127, v130))
      {
        goto LABEL_336;
      }

      v204 = (v127 - v130 + v129);
    }

    else
    {
      v204 = 0;
    }

    sub_22A4DB26C();
    v4 = a4;
    v107 = __n;
    if (v108 == 2)
    {
      v190 = *(v102 + 16);
      v183 = *(v102 + 24);
      v141 = sub_22A4DB24C();
      if (v141)
      {
        v154 = sub_22A4DB27C();
        v155 = v190;
        if (__OFSUB__(v190, v154))
        {
          goto LABEL_360;
        }

        v141 += v190 - v154;
      }

      else
      {
        v155 = v190;
      }

      v163 = v183 - v155;
      if (__OFSUB__(v183, v155))
      {
        goto LABEL_346;
      }

      v164 = sub_22A4DB26C();
      if (v164 >= v163)
      {
        v165 = v163;
      }

      else
      {
        v165 = v164;
      }

      v166 = v204;
      if (!v204)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v141)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v108 == 1)
    {
      if (v210 < v102)
      {
        goto LABEL_344;
      }

      v139 = sub_22A4DB24C();
      if (v139)
      {
        v188 = v139;
        v140 = sub_22A4DB27C();
        if (__OFSUB__(v102, v140))
        {
          goto LABEL_361;
        }

        v141 = (v102 - v140 + v188);
      }

      else
      {
        v141 = 0;
      }

      v167 = sub_22A4DB26C();
      v165 = (v102 >> 32) - v102;
      if (v167 < v202)
      {
        v165 = v167;
      }

      v166 = v204;
      if (!v204)
      {
        goto LABEL_387;
      }

      if (!v141)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v166 == v141)
      {
        sub_2295798D4(v113, v114);
        sub_2295798D4(v102, v227);
        v174 = v211;
        v94 = v220;
LABEL_319:
        v92 = v212;
        *(a1 + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v198;
        v211 = v174 + 1;
        v5 = a3;
        v93 = v200;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v171 = memcmp(v166, v141, v165);
      sub_2295798D4(v113, v114);
      v106 = v220;
      v107 = __n;
      if (!v171)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v156 = v204;
    *__s1 = v102;
    *&__s1[8] = v227;
    *&__s1[12] = WORD2(v227);
    if (!v204)
    {
      goto LABEL_374;
    }

LABEL_277:
    v153 = memcmp(v156, __s1, v225);
    sub_2295798D4(v113, v114);
LABEL_278:
    v106 = v220;
    if (!v153)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v108)
  {
LABEL_240:
    LOWORD(__s2) = v102;
    BYTE2(__s2) = BYTE2(v102);
    HIBYTE(__s2) = BYTE3(v102);
    v229 = BYTE4(v102);
    LOBYTE(v230) = BYTE5(v102);
    HIBYTE(v230) = BYTE6(v102);
    v231 = HIBYTE(v102);
    v232 = v227;
    v233 = WORD2(v227);
    v137 = v106;
    v138 = memcmp(__s1, &__s2, v225);
    v106 = v137;
    if (!v138)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v108 != 2)
  {
    if (v210 < v102)
    {
      goto LABEL_341;
    }

    sub_22956C148(v113, v114);
    v147 = sub_22A4DB24C();
    if (!v147)
    {
      goto LABEL_372;
    }

    v148 = v147;
    v149 = sub_22A4DB27C();
    if (__OFSUB__(v102, v149))
    {
      goto LABEL_345;
    }

    v150 = (v102 - v149 + v148);
    v151 = sub_22A4DB26C();
    if (!v150)
    {
      goto LABEL_373;
    }

    if (v151 >= v202)
    {
      v152 = (v102 >> 32) - v102;
    }

    else
    {
      v152 = v151;
    }

    v153 = memcmp(__s1, v150, v152);
    sub_2295798D4(v113, v114);
    v4 = a4;
    v107 = __n;
    goto LABEL_278;
  }

  v206 = *(v102 + 16);
  v187 = *(v102 + 24);
  sub_22956C148(v113, v114);
  v134 = sub_22A4DB24C();
  if (v134)
  {
    v135 = sub_22A4DB27C();
    v136 = v206;
    if (__OFSUB__(v206, v135))
    {
      goto LABEL_359;
    }

    v134 = &v206[v134 - v135];
  }

  else
  {
    v136 = v206;
  }

  v159 = v187 - v136;
  if (__OFSUB__(v187, v136))
  {
    goto LABEL_343;
  }

  v160 = sub_22A4DB26C();
  if (v134)
  {
    if (v160 >= v159)
    {
      v161 = v159;
    }

    else
    {
      v161 = v160;
    }

    v162 = memcmp(__s1, v134, v161);
    sub_2295798D4(v113, v114);
    v4 = a4;
    v106 = v220;
    v107 = __n;
    if (!v162)
    {
LABEL_317:
      v94 = v106;
      v172 = v102;
      v173 = v227;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_22A4DB26C();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  sub_22A4DB26C();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  sub_22A4DB26C();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
}

void sub_2296719F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v49 = 0;
    v26 = 0;
    v45 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = v4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v51 = (v29 - 1) & v29;
LABEL_34:
      v48 = v32 | (v26 << 6);
      v35 = *(*(a3 + 48) + 8 * v48);
      v36 = sub_22A4DDECC();
      v37 = -1 << *(v4 + 32);
      v38 = v36 & ~v37;
      if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        while (1)
        {
          v40 = *(*(v4 + 48) + 8 * v38);
          v41 = sub_22A4DDEDC();

          if (v41)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          v4 = a4;
          if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v29 = v51;
        v25 = __OFADD__(v49++, 1);
        v4 = a4;
        if (v25)
        {
          __break(1u);
LABEL_42:
          v5 = a3;
          goto LABEL_43;
        }
      }

      else
      {
LABEL_26:

        v29 = v51;
      }
    }

    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_45;
      }

      if (v26 >= v30)
      {
        goto LABEL_42;
      }

      v34 = *(v45 + 8 * v26);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v51 = (v34 - 1) & v34;
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v42 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v49 = 0;
  v50 = a3 + 56;
  v44 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v47 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v15 = sub_22A4DDECC();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) != 0)
    {
      sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
      v20 = *(*(v5 + 48) + 8 * v17);
      v21 = sub_22A4DDEDC();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        do
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          v5 = a3;
          if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = sub_22A4DDEDC();
        }

        while ((v24 & 1) == 0);
      }

      v10 = v44;
      a1[v18] |= v19;
      v9 = v47;
      v25 = __OFADD__(v49++, 1);
      v5 = a3;
      v4 = a4;
      if (v25)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v4 = a4;
      v10 = v44;
      v9 = v47;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_43:

      sub_22966FB38(a1, a2, v49, v5, &unk_27D87CF70, &qword_22A577D88);
      return;
    }

    v13 = *(v42 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_229671DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

  return MEMORY[0x2822009F8](sub_229671E8C, 0, 0);
}

uint64_t sub_229671E8C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_229671F90;

  return MEMORY[0x2821677B0]();
}

void sub_229671F90()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_229663A04, 0, 0);
  }
}

uint64_t sub_2296720CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_22A4DBC9C();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_229672204(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAD0D60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_229570788(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22967229C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2295C0FB8();
  result = MEMORY[0x22AAD0D60](v2, &type metadata for HomeCapability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_229570DD4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_229672310(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_229673710(&unk_27D87E4E0, type metadata accessor for HomeGroupEntity, &unk_22A579160);
  result = MEMORY[0x22AAD0D60](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_2295C28B4(v12, v6);
      sub_229570B40(v8, v6);
      sub_2295C2918(v8);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_229672478(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  result = MEMORY[0x22AAD0D60](v3, v4, MEMORY[0x277D83F88]);
  v11 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAD13F0](i, a1);
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v11;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * i + 32);

        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_229570FD0(&v10, v8);

      if (v9 == v2)
      {
        return v11;
      }
    }
  }

  v6 = result;
  v2 = sub_22A4DE0EC();
  result = v6;
  if (v2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2296725BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_229673844();
  result = MEMORY[0x22AAD0D60](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22956C148(v7, *v5);
      sub_229571224(v8, v7, v6);
      sub_2295798D4(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_229672658(uint64_t a1)
{
  v2 = sub_22A4DCCAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_229673710(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
  result = MEMORY[0x22AAD0D60](v9, v2, v10);
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
      sub_2295716AC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2296727F4(uint64_t a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_229673710(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x22AAD0D60](v9, v2, v10);
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
      sub_22957198C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t *sub_229672AE0(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v12 = sub_229562F68(0, a2, a3);
    v13 = sub_22959E62C(a4, a2, a3);
    result = MEMORY[0x22AAD0D60](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAD13F0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22A4DE0EC();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(uint64_t result, unint64_t a2)
{
  v4 = BYTE6(a2);
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_77:
        __break(1u);
        return result;
      }

      v7 = v14;
      if (v14 < 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = BYTE6(a2);
      if (!BYTE6(a2))
      {
LABEL_16:
        v12 = 0;
        goto LABEL_18;
      }
    }

LABEL_8:
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v13 = __OFADD__(v11, 2);
      v11 += 2;
      if (v13)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v10;
      if (v11 >= v7)
      {
        goto LABEL_18;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v6 == 2)
  {
    v9 = *(result + 16);
    v8 = *(result + 24);
    v7 = v8 - v9;
    if (__OFSUB__(v8, v9))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v7 < 1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v12 = 0;
  v7 = 0;
LABEL_18:
  v38 = MEMORY[0x277D84F90];
  result = sub_22958387C(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = v38;
  if (v12)
  {
    result = 0;
    v17 = __OFSUB__(HIDWORD(v5), v5);
    v36 = v17;
    v35 = HIDWORD(v5) - v5;
    v18 = v4;
    v37 = v4;
    v19 = 0x7FFFFFFFFFFFFFFELL;
    while (1)
    {
      if (result >= v7)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        while (2)
        {
          v34 = result;
          v26 = v15;
          sub_22958387C((v18 > 1), v3, 1);
          v15 = v26;
          result = v34;
          v16 = v38;
LABEL_66:
          *(v16 + 16) = v3;
          v31 = v16 + 16 * v19;
          *(v31 + 32) = result;
          *(v31 + 40) = v15;
          v2 += 2;
          if (v12 >= v7)
          {
            return v16;
          }

LABEL_52:
          v12 = v2 + 2;
          if (__OFADD__(v2, 2))
          {
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          if (v6 <= 1)
          {
            v27 = v37;
            if (v6)
            {
              v27 = v35;
              if (v36)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_59;
          }

          if (v6 == 2)
          {
            v29 = *(v5 + 16);
            v28 = *(v5 + 24);
            v13 = __OFSUB__(v28, v29);
            v27 = v28 - v29;
            if (v13)
            {
              goto LABEL_73;
            }

LABEL_59:
            if (v27 >= v12)
            {
              v30 = v2 + 2;
            }

            else
            {
              v30 = v27;
            }

            if (v30 < v2)
            {
              goto LABEL_69;
            }
          }

          else if ((v12 & (v12 >> 63)) < v2)
          {
            goto LABEL_69;
          }

          result = sub_22A4DB5FC();
          v38 = v16;
          v19 = *(v16 + 16);
          v18 = *(v16 + 24);
          v3 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            continue;
          }

          goto LABEL_66;
        }
      }

      if (result == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_49;
      }

      v2 = result + 2;
      if (v6 <= 1)
      {
        break;
      }

      if (v6 == 2)
      {
        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v13 = __OFSUB__(v20, v21);
        v18 = v20 - v21;
        if (v13)
        {
          goto LABEL_72;
        }

        goto LABEL_32;
      }

      v15 = v2 & (v2 >> 63);
      if (v15 < result)
      {
        goto LABEL_50;
      }

LABEL_38:
      v22 = sub_22A4DB5FC();
      v38 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      v3 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v32 = v15;
        v33 = v22;
        sub_22958387C((v23 > 1), v24 + 1, 1);
        v15 = v32;
        v22 = v33;
      }

      *(v16 + 16) = v3;
      v18 = v16 + 16 * v24;
      *(v18 + 32) = v22;
      *(v18 + 40) = v15;
      result = v2;
      if (!--v12)
      {
        if (v2 < v7)
        {
          goto LABEL_52;
        }

        return v16;
      }
    }

    v18 = v4;
    if (v6)
    {
      v18 = HIDWORD(v5) - v5;
      if (v36)
      {
        goto LABEL_71;
      }
    }

LABEL_32:
    if (v18 >= v2)
    {
      v15 = result + 2;
    }

    else
    {
      v15 = v18;
    }

    if (v15 < result)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

  if (v7 >= 1)
  {
    v2 = 0;
    v25 = __OFSUB__(HIDWORD(v5), v5);
    v36 = v25;
    v35 = HIDWORD(v5) - v5;
    v37 = v4;
    goto LABEL_52;
  }

  return v16;
}