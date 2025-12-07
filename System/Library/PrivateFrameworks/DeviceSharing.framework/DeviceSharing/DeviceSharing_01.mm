uint64_t sub_248993464(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {
    v6 = v4[44];
    v7 = sub_248994778;
    v8 = 0;
  }

  else
  {
    v9 = v4[70];
    v10 = v4[69];
    v4[74] = a1;
    type metadata accessor for PeerConnection(0, v10, v9, v5);

    swift_getWitnessTable();
    v11 = sub_248A12CD0();
    v13 = v12;
    v7 = sub_2489935E4;
    v6 = v11;
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v6, v8);
}

uint64_t sub_2489935E4()
{
  v1 = *(v0 + 352);
  sub_24898BBA0(v1, &off_285B61008);

  return MEMORY[0x2822009F8](sub_248993664, v1, 0);
}

uint64_t sub_248993664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = v4;
  sub_2489BBA60(a1, a2, a3, a4);
  v5 = v4[74];
  v6 = v4[70];
  v7 = v4[69];
  v4[83] = v5;
  v4[82] = v7;
  v4[81] = v6;
  v8 = v4[44];

  v9 = *(v8 + 200);
  v4[84] = v9;
  v10 = *(v8 + 208);
  v4[85] = v10;
  if (v9)
  {
    sub_2489789C8(v9, v10);

    v23 = (v9 + *v9);
    v11 = swift_task_alloc();
    v4[86] = v11;
    *v11 = v4;
    v11[1] = sub_248993F04;

    return (v23)(v4 + 26, v5);
  }

  else
  {
    v13 = sub_248A122B0();
    v14 = sub_248A12E70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = sub_248A13570();
      v19 = sub_24897BC00(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_248975000, v13, v14, "[%{public}s] Peer connection service provider not set", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1E0A80](v16, -1, -1);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    v20 = sub_248A12150();
    sub_2489975AC(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D05130], v20);
    swift_willThrow();

    v22 = v4[1];

    return v22();
  }
}

uint64_t sub_2489939B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v6 = v4[44];
    v7 = sub_248994830;
    v8 = 0;
  }

  else
  {
    v9 = v4[76];
    v10 = v4[75];
    v4[80] = a1;
    type metadata accessor for PeerConnection(0, v10, v9, v5);

    swift_getWitnessTable();
    v11 = sub_248A12CD0();
    v13 = v12;
    v7 = sub_248993B34;
    v6 = v11;
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v6, v8);
}

uint64_t sub_248993B34()
{
  v1 = *(v0 + 352);
  sub_24898BBA0(v1, &off_285B61008);

  return MEMORY[0x2822009F8](sub_248993BB4, v1, 0);
}

uint64_t sub_248993BB4()
{
  v21 = v0;
  sub_2489B8704();
  v1 = v0[80];
  v2 = v0[76];
  v3 = v0[75];
  v0[83] = v1;
  v0[82] = v3;
  v0[81] = v2;
  v4 = v0[44];

  v5 = *(v4 + 200);
  v0[84] = v5;
  v6 = *(v4 + 208);
  v0[85] = v6;
  if (v5)
  {
    sub_2489789C8(v5, v6);

    v19 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[86] = v7;
    *v7 = v0;
    v7[1] = sub_248993F04;

    return (v19)(v0 + 26, v1);
  }

  else
  {
    v9 = sub_248A122B0();
    v10 = sub_248A12E70();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      v13 = sub_248A13570();
      v15 = sub_24897BC00(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Peer connection service provider not set", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1E0A80](v12, -1, -1);
      MEMORY[0x24C1E0A80](v11, -1, -1);
    }

    v16 = sub_248A12150();
    sub_2489975AC(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D05130], v16);
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_248993F04()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x2822009F8](sub_248994014, v1, 0);
}

uint64_t sub_248994014()
{
  v24 = v0;
  sub_248997228(v0 + 208, v0 + 248);

  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v23 = v4;
    *v3 = 136446722;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v23);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_248997228(v0 + 248, v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
    v8 = sub_248A12B80();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    v11 = sub_24897BC00(v8, v10, &v23);

    *(v3 + 14) = v11;
    *(v3 + 22) = 2082;
    v12 = PeerConnection.description.getter();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v23);

    *(v3 + 24) = v15;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Created peer connection service %{public}s with peer connection %{public}s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v16 = *(v0 + 664);
  *(v0 + 16) = *(v0 + 73) & 1;
  *(v0 + 24) = v16;
  sub_248997228(v0 + 208, v0 + 32);
  *(v0 + 72) = 0;

  sub_2489923A4(v0 + 16);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v17);
  v22 = (*(v18 + 8) + **(v18 + 8));
  v19 = swift_task_alloc();
  *(v0 + 696) = v19;
  *v19 = v0;
  v19[1] = sub_24899434C;
  v20 = *(v0 + 344);

  return v22(v20, v17, v18);
}

uint64_t sub_24899434C()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 352);
  if (v0)
  {
    v4 = sub_2489948E8;
  }

  else
  {
    v4 = sub_248994478;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_248994478()
{
  v23 = v0;
  *(v0 + 80) = *(v0 + 73) & 1;
  *(v0 + 88) = *(v0 + 664);
  sub_248997228(v0 + 208, v0 + 96);
  *(v0 + 136) = 1;

  sub_2489923A4(v0 + 80);
  swift_retain_n();
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v20 = *(v0 + 672);
    v21 = *(v0 + 680);
    v19 = *(v0 + 656);
    v3 = *(v0 + 648);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v22);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    sub_2489922F4(v0 + 144);

    v10 = type metadata accessor for PeerConnectionServiceCoordinator.State(0, v19, v3, v9);
    v11 = sub_2489920B4(v10);
    v13 = v12;

    (*(*(v10 - 8) + 8))(v0 + 144, v10);
    v14 = sub_24897BC00(v11, v13, &v22);

    *(v4 + 14) = v14;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Peer connection initiated: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);

    sub_248996A48(v20, v21);
  }

  else
  {
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);

    sub_248996A48(v16, v15);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_248994778()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248994830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489948E8()
{
  v59 = v0;
  v1 = *(v0 + 520);
  if (v1 == 5)
  {
    v2 = *(v0 + 704);
    v3 = v2;
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 704);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58[0] = v9;
      *v7 = 136446466;
      v10 = sub_248A13570();
      v12 = sub_24897BC00(v10, v11, v58);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Failed to initiate peer connection with error: %{public}@; out of retries", v7, 0x16u);
      sub_24897CA88(v8);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1E0A80](v9, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v15 = *(v0 + 704);
    v16 = *(v0 + 680);
    v17 = *(v0 + 672);
    [objc_opt_self() dss:140 errorWithCode:0 userInfo:1 retryable:?];
    swift_willThrow();

    sub_248996A48(v17, v16);

    __swift_destroy_boxed_opaque_existential_0((v0 + 208));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v55 = *(v0 + 704);
    v46 = *(v0 + 76);
    v47 = *(v0 + 512);
    v53 = *(v0 + 496);
    v54 = *(v0 + 504);
    v44 = *(v0 + 488);
    v51 = *(v0 + 480);
    v52 = *(v0 + 472);
    v45 = *(v0 + 464);
    v20 = *(v0 + 440);
    v49 = *(v0 + 456);
    v50 = *(v0 + 448);
    v21 = *(v0 + 432);
    v43 = *(v0 + 424);
    v23 = *(v0 + 408);
    v22 = *(v0 + 416);
    v57 = 1000000000000000000 * v1;
    v48 = *(v0 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5788, &qword_248A155B8);
    v24 = sub_248A134F0();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_248A14B30;
    sub_248A134E0();
    sub_24899728C(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    sub_248A13500();
    (*(v21 + 104))(v20, v46, v43);
    sub_248A134C0();
    (*(v21 + 8))(v20, v43);
    sub_248A134A0();
    sub_248A11970();

    (*(v23 + 8))(v22, v48);
    (*(v49 + 8))(v45, v50);
    (*(v51 + 8))(v44, v52);
    sub_2489975AC(&unk_27EEB5EE0, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
    sub_248A13530();
    (*(v54 + 8))(v47, v53);
    v29 = *(v0 + 328);
    v28 = *(v0 + 336);
    v30 = v55;

    v31 = sub_248A122B0();
    v32 = sub_248A12E60();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 704);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58[0] = v56;
      *v34 = 136446722;
      v36 = sub_248A13570();
      v38 = sub_24897BC00(v36, v37, v58);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2114;
      v39 = v33;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v40;
      *v35 = v40;
      *(v34 + 22) = 2082;
      v41 = sub_24897BC00(v29, v28, v58);

      *(v34 + 24) = v41;
      _os_log_impl(&dword_248975000, v31, v32, "[%{public}s] Failed to initiate peer connection with error: %{public}@; will re-attempt to initiate peer connection after %{public}s delay", v34, 0x20u);
      sub_24897CA88(v35);
      MEMORY[0x24C1E0A80](v35, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v56, -1, -1);
      MEMORY[0x24C1E0A80](v34, -1, -1);
    }

    else
    {
    }

    sub_248A133B0();
    v42 = swift_task_alloc();
    *(v0 + 712) = v42;
    *v42 = v0;
    v42[1] = sub_248995020;

    return sub_248996414(v57, 0, 0, 0, 1);
  }
}

uint64_t sub_248995020()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  v3 = v2[49];
  v4 = v2[48];
  v5 = v2[47];
  v6 = v2[44];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_2489953EC;
  }

  else
  {
    v7 = sub_24899519C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24899519C()
{
  v20 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 520);

  sub_248996A48(v3, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v5 = v4 + 1;
  *(v0 + 520) = v4 + 1;
  v6 = sub_248A122D0();
  *(v0 + 528) = __swift_project_value_buffer(v6, qword_27EEB9DC8);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    if (*(v0 + 73))
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v10 = 0x72656E657473696CLL;
    }

    else
    {
      v10 = 0x726573776F7262;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446722;
    v13 = sub_248A13570();
    v15 = sub_24897BC00(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_24897BC00(v10, v9, &v19);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2050;
    *(v11 + 24) = v5;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  v17 = swift_task_alloc();
  *(v0 + 536) = v17;
  *v17 = v0;
  v17[1] = sub_248992F30;

  return sub_2489954CC();
}

uint64_t sub_2489953EC()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[84];

  sub_248996A48(v3, v2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489954CC()
{
  v1[23] = v0;
  v1[24] = *v0;
  v1[25] = *v0;
  return MEMORY[0x2822009F8](sub_24899553C, v0, 0);
}

uint64_t sub_24899553C()
{
  v25 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);
  swift_retain_n();
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446466;
    v7 = *(v4 + 80);
    v8 = *(v4 + 88);
    v9 = sub_248A13570();
    v11 = sub_24897BC00(v9, v10, &v24);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2082;
    sub_2489922F4(v0 + 80);

    v13 = type metadata accessor for PeerConnectionServiceCoordinator.State(0, v7, v8, v12);
    v14 = sub_2489920B4(v13);
    v16 = v15;

    (*(*(v13 - 8) + 8))(v0 + 80, v13);
    v17 = sub_24897BC00(v14, v16, &v24);

    *(v5 + 14) = v17;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Invalidate for state: %{public}s)", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  sub_2489922F4(v0 + 16);
  if (*(v0 + 72) >= 2u)
  {
    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v18 = *(v0 + 200);
    *(v0 + 208) = *(v0 + 24);
    sub_248978948((v0 + 32), v0 + 144);
    type metadata accessor for PeerConnection(0, *(v18 + 80), *(v18 + 88), v19);
    swift_getWitnessTable();
    v21 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_248995858, v21, v20);
  }
}

uint64_t sub_248995858()
{
  v1 = *(v0 + 184);
  sub_24898BBC0(v1, &off_285B61008);

  return MEMORY[0x2822009F8](sub_2489958D8, v1, 0);
}

uint64_t sub_2489958D8()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_2489959FC;

  return v5(v1, v2);
}

uint64_t sub_2489959FC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_248995BB0;
  }

  else
  {
    v4 = sub_248995B28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_248995B28()
{
  v6 = v0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 2;
  sub_2489923A4(v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248995BB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248995C14()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&v9[0] = v4;
    *v3 = 136446210;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Force inactive", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 2;
  return sub_2489923A4(v9);
}

uint64_t *PeerConnectionServiceCoordinator.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PeerConnectionServiceCoordinator.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v5 - 8) + 8))(v4 + 14, v5);
  swift_unknownObjectRelease();
  sub_248996A48(v4[25], v4[26]);
  swift_defaultActor_destroy();
  return v4;
}

uint64_t PeerConnectionServiceCoordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PeerConnectionServiceCoordinator.deinit(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

void sub_248995EDC(void *a1)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = a1;
  oslog = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_248975000, oslog, v4, "[%{public}s] Peer connection did fail with error: %{public}@", v5, 0x16u);
    sub_24897CA88(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }
}

uint64_t sub_2489960BC(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_27EEB9DC8);
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446210;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_248975000, v11, v12, a1, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1E0A80](v15, -1, -1);
    v19 = v14;
    a3 = v23;
    MEMORY[0x24C1E0A80](v19, -1, -1);
  }

  v20 = sub_248A12D40();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;

  sub_2489AC334(0, 0, v9, a3, v21);
}

uint64_t sub_248996338()
{
  sub_248995C14();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248996414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_248A131C0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_248996514, 0, 0);
}

uint64_t sub_248996514()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_248A131D0();
  v5 = sub_2489975AC(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_248A13390();
  sub_2489975AC(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_248A131E0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2489966A4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2489966A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248996860, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_248996860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489968CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  swift_defaultActor_initialize();
  *(v4 + 160) = 0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 168) = 2;
  *(v4 + 176) = 0;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_2489AC334(0, 0, v11, &unk_248A15600, v13);

  return v4;
}

uint64_t sub_248996A48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of PeerConnectionService.activate(transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeerConnectionService.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeerConnectionService.sendHeartbeat()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeerConnectionService.peerIdentifier()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248978D74;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeerConnectionBrokering.peerConnection()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24898314C;

  return v7(a1, a2);
}

uint64_t sub_2489970E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing32PeerConnectionServiceCoordinatorC5State33_04FDFE04316EE7D2413F7080B355764CLLOyx_G(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_248997158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248997194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2489971E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_248997228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24899728C(uint64_t a1)
{
  v2 = sub_248A134F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB57A0, &unk_248A155C8);
    v9 = sub_248A130E0();
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
      sub_2489975AC(&qword_27EEB57A8, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD0]);
      v16 = sub_248A12AE0();
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
          sub_2489975AC(qword_27EEB57B0, MEMORY[0x277CC9FC8], MEMORY[0x277CC9FD8]);
          v23 = sub_248A12B00();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2489975AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2489975F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_248996318(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489976E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_248995EA0(a1, v4, v5, v6);
}

uint64_t sub_24899779C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2489839A0;

  return sub_24899252C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_248997864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899268C(a1);
}

uint64_t getEnumTagSinglePayload for SpecificAssetType.GazeModelType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpecificAssetType.GazeModelType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SpecificAssetType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      v3 = v0[1] | v0[2] | v1;
      v4 = v1 != 1 || *(v0 + 1) != 0;
      v5 = 0x46676E697373694DLL;
      if (!v4)
      {
        v5 = 0x656D6C6C6F726E45;
      }

      if (v3)
      {
        return v5;
      }

      else
      {
        return 0xD000000000000015;
      }
    }
  }

  else if (v1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F4D657945;
  }
}

uint64_t sub_248997B94()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      v3 = v0[1] | v0[2] | v1;
      v4 = v1 != 1 || *(v0 + 1) != 0;
      v5 = 0x46676E697373694DLL;
      if (!v4)
      {
        v5 = 0x656D6C6C6F726E45;
      }

      if (v3)
      {
        return v5;
      }

      else
      {
        return 0xD000000000000015;
      }
    }
  }

  else if (v1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F4D657945;
  }
}

uint64_t SpecificAssetType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 24))
  {
    if (v5 != 1)
    {
      sub_248A12BB0();
    }

    sub_248A12BB0();
    v6 = v3;
  }

  else
  {
    sub_248A12BB0();
    v6 = v4;
  }

  if (v6)
  {
    sub_2489837A4(v2, v3, v4, v5);
    sub_248A12BB0();
  }

  sub_248A12BB0();

  return sub_2489837C4(v2, v3, v4, v5);
}

uint64_t SpecificAssetType.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_248A13430();
  SpecificAssetType.hash(into:)(v4);
  return sub_248A13460();
}

uint64_t sub_248997EF4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_248A13430();
  SpecificAssetType.hash(into:)(v4);
  return sub_248A13460();
}

uint64_t sub_248997F54(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_248A13430();
  SpecificAssetType.hash(into:)(v5);
  return sub_248A13460();
}

uint64_t SpecificAssetType.GazeModelType.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t sub_248998020()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t sub_248998068(uint64_t a1)
{
  v2 = *v1;
  sub_248A13430();
  MEMORY[0x24C1E0100](v2);
  return sub_248A13460();
}

uint64_t SpecificAssetType.RXType.description.getter()
{
  if (!v0[1])
  {
    return 0x6F2F7720657A6147;
  }

  v1 = *v0;
  strcpy(v3, "Gaze w/ RX: ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x24C1DF8B0](v1);
  return v3[0];
}

uint64_t SpecificAssetType.RXType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_248A12BB0();
  }

  return sub_248A12BB0();
}

uint64_t SpecificAssetType.RXType.emoji.getter()
{
  if (*(v0 + 8))
  {
    return 2475794416;
  }

  else
  {
    return 0x8FB8EF81919FF0;
  }
}

uint64_t SpecificAssetType.RXType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_248A13430();
  if (v1)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t sub_248998238()
{
  if (!v0[1])
  {
    return 0x6F2F7720657A6147;
  }

  v1 = *v0;
  strcpy(v3, "Gaze w/ RX: ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x24C1DF8B0](v1);
  return v3[0];
}

uint64_t sub_2489982B8()
{
  v1 = *(v0 + 8);
  sub_248A13430();
  if (v1)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t sub_248998328(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_248A12BB0();
  }

  return sub_248A12BB0();
}

uint64_t sub_248998394(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_248A13430();
  if (v2)
  {
    sub_248A12BB0();
  }

  sub_248A12BB0();
  return sub_248A13460();
}

uint64_t _s13DeviceSharing17SpecificAssetTypeO6RXTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_248A13340();
}

uint64_t _s13DeviceSharing17SpecificAssetTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v30[0] = v4;
  v30[1] = v3;
  v30[2] = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  if (!v6)
  {
    if (!v10)
    {
      if (((v7 ^ v4) & 1) == 0)
      {
        v12 = v7;
        if (v5)
        {
          if (v9)
          {
            if (v3 == v8 && v5 == v9)
            {
              sub_2489837A4(v7, v3, v5, 0);
              sub_2489837A4(v4, v3, v5, 0);
              sub_2489837A4(v12, v3, v5, 0);
              sub_2489837A4(v4, v3, v5, 0);
              sub_248998C58(v30);

              goto LABEL_40;
            }

            v27 = v8;
            v28 = v9;
            v29 = sub_248A13340();
            sub_2489837A4(v12, v27, v28, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_2489837A4(v12, v27, v28, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_248998C58(v30);

            if (v29)
            {
              return 1;
            }
          }

          else
          {
            v26 = v8;
            sub_2489837A4(v7, v8, 0, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_2489837A4(v12, v26, 0, 0);
            sub_2489837A4(v4, v3, v5, 0);
            sub_248998C58(v30);
          }

          return 0;
        }

        v24 = v9;
        v25 = v8;

        sub_2489837A4(v12, v25, v24, 0);
        sub_2489837A4(v4, v3, 0, 0);
        sub_248998C58(v30);
        if (v24)
        {
LABEL_33:

          return 0;
        }

LABEL_39:

        goto LABEL_40;
      }

      sub_2489837A4(v7, v8, v9, 0);
      v13 = v4;
      v14 = v3;
      v15 = v5;
      v16 = 0;
LABEL_30:
      sub_2489837A4(v13, v14, v15, v16);
      sub_248998C58(v30);
      return 0;
    }

    goto LABEL_29;
  }

  if (v6 != 1)
  {
    if (!(v5 | v3 | v4))
    {
      if (v10 != 2 || v9 | v8 | v7)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v4 != 1 || v5 | v3)
    {
      if (v10 != 2 || v7 != 2)
      {
        goto LABEL_29;
      }
    }

    else if (v10 != 2 || v7 != 1)
    {
      goto LABEL_29;
    }

    if (!(v9 | v8))
    {
LABEL_28:
      sub_248998C58(v30);
      return 1;
    }

LABEL_29:
    sub_2489837A4(v7, v8, v9, v10);
    v13 = v4;
    v14 = v3;
    v15 = v5;
    v16 = v6;
    goto LABEL_30;
  }

  if (v10 != 1)
  {
    goto LABEL_29;
  }

  v11 = v9;
  if (!v3)
  {
    v18 = v7;
    v19 = v8;

    sub_2489837A4(v18, v19, v11, 1u);
    sub_2489837A4(v4, 0, v5, 1u);
    sub_248998C58(v30);
    if (v19)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (!v8)
  {
    v20 = v7;
    sub_2489837A4(v7, 0, v9, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_2489837A4(v20, 0, v11, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_248998C58(v30);

    return 0;
  }

  if (v4 == v7 && v3 == v8)
  {
    sub_2489837A4(v4, v3, v9, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_2489837A4(v4, v3, v11, 1u);
    sub_2489837A4(v4, v3, v5, 1u);
    sub_248998C58(v30);

LABEL_40:

    return 1;
  }

  v21 = v7;
  v22 = v8;
  v23 = sub_248A13340();
  sub_2489837A4(v21, v22, v11, 1u);
  sub_2489837A4(v4, v3, v5, 1u);
  sub_2489837A4(v21, v22, v11, 1u);
  sub_2489837A4(v4, v3, v5, 1u);
  sub_248998C58(v30);

  result = 1;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_248998974()
{
  result = qword_27EEB5838;
  if (!qword_27EEB5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5838);
  }

  return result;
}

unint64_t sub_2489989CC()
{
  result = qword_27EEB5840;
  if (!qword_27EEB5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5840);
  }

  return result;
}

unint64_t sub_248998A24()
{
  result = qword_27EEB5848;
  if (!qword_27EEB5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing17SpecificAssetTypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_248998A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_248998ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_248998B24(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248998B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248998BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_248998C10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_248998C28(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_248998C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5850, &unk_248A15970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWConnection.peerDeviceIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v2);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    sub_248A11B80();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_248A11BC0();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);

    return swift_unknownObjectRelease();
  }
}

void (*sub_248998DA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12690();
  return sub_24897CEC0;
}

uint64_t sub_248998E28@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v2);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    sub_248A11B80();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_248A11BC0();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);

    return swift_unknownObjectRelease();
  }
}

uint64_t dispatch thunk of GuestUserAccessHeartBeatSending.sendHeartbeat()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.sendGuestUserAccessResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.startViewMirroring(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.endGuestUserAccess()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.unlockPeerDevice()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.sendRemoteUnlockError(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.replayRequest(requestConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))(a1, a2);
}

{
  return (*(a3 + 72))(a1, a2);
}

uint64_t dispatch thunk of GuestUserAccessResponseControlling.postNotification(payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2489839A0;

  return v9(a1, a2, a3);
}

uint64_t sub_248999A58()
{
  sub_2489A3F50(v0, v9);
  v1 = 0xE800000000000000;
  if (v11)
  {
    if (v11 != 1)
    {
      return 0x6576697463616E49;
    }

    v2 = v9[0];
    sub_248978948(v10, v8);
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0x2820657669746341, 0xE800000000000000);
    if (v2)
    {
      v3 = 0x72656E657473696CLL;
    }

    else
    {
      v3 = 0x726573776F7262;
    }

    if (v2)
    {
      v1 = 0xE800000000000000;
    }

    else
    {
      v1 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = v9[0];
    sub_248978948(v10, v8);
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0x6974617669746341, 0xEC0000002820676ELL);
    if (v4)
    {
      v3 = 0x72656E657473696CLL;
    }

    else
    {
      v3 = 0x726573776F7262;
    }

    if (!v4)
    {
      v1 = 0xE700000000000000;
    }
  }

  MEMORY[0x24C1DF8B0](v3, v1);

  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  v5 = sub_2489FA2C8();
  MEMORY[0x24C1DF8B0](v5);

  MEMORY[0x24C1DF8B0](8236, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  sub_248A131F0();

  v6 = 0;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_248999C68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v2 + 112;
  swift_beginAccess();
  sub_2489A3F50(v2 + 112, v20);
  if (v22 == 1)
  {

    return sub_248978948(&v21, a1);
  }

  else
  {
    sub_248983734(v20, &unk_27EEB5ED0, &qword_248A15BE0);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v6 = sub_248A122D0();
    __swift_project_value_buffer(v6, qword_27EEB9DC8);

    v7 = sub_248A122B0();
    v8 = sub_248A12E60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446466;
      v11 = sub_248A13570();
      v13 = sub_24897BC00(v11, v12, &v23);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      sub_2489A3F50(v4, v20);
      v14 = sub_248999A58();
      v16 = v15;
      sub_248983734(v20, &unk_27EEB5ED0, &qword_248A15BE0);
      v17 = sub_24897BC00(v14, v16, &v23);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Peer Connection state is %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v18 = sub_248A12150();
    sub_2489A49AC(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D05120], v18);
    return swift_willThrow();
  }
}

uint64_t sub_248999F68()
{
  *(v1 + 320) = v0;
  *(v1 + 328) = *v0;
  return MEMORY[0x2822009F8](sub_248999FB0, v0, 0);
}

uint64_t sub_248999FB0()
{
  v20 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);
  swift_retain_n();
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 320);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v19);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    swift_beginAccess();
    sub_2489A3F50(v4 + 112, v0 + 144);

    v10 = sub_248999A58();
    v12 = v11;

    sub_248983734(v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);
    v13 = sub_24897BC00(v10, v12, &v19);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Invalidate for state: %{public}s)", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 320);
  swift_beginAccess();
  sub_2489A3F50(v14 + 112, v0 + 16);
  if (*(v0 + 72) >= 2u)
  {
    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 336) = *(v0 + 24);
    sub_248978948((v0 + 32), v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_2489A3FC0();
    v16 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_24899A2A4, v16, v15);
  }
}

uint64_t sub_24899A2A4()
{
  v1 = *(v0 + 320);
  sub_248A02B48(v1, *(v0 + 336));

  return MEMORY[0x2822009F8](sub_24899A320, v1, 0);
}

uint64_t sub_24899A320()
{
  v1 = v0[29];
  v2 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_24899A444;

  return v5(v1, v2);
}

uint64_t sub_24899A444()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = sub_24899A61C;
  }

  else
  {
    v4 = sub_24899A570;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24899A570()
{
  v1 = *(v0 + 320);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0u;
  *(v0 + 136) = 2;
  swift_beginAccess();
  sub_2489A4024(v0 + 80, v1 + 112);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24899A61C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899A680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_281510560);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_24897BC00(0xD00000000000002ALL, 0x8000000248A196D0, &v17);
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v14 = type metadata accessor for GuestUserAccessResponsePeerConnectionService(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  sub_248A11DF0();
  *(v15 + 16) = a1;

  result = sub_2489A45BC(v3);
  a2[3] = v14;
  a2[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  *a2 = v15;
  return result;
}

uint64_t sub_24899A89C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return MEMORY[0x2822009F8](sub_24899A8E4, 0, 0);
}

uint64_t sub_24899A8E4()
{
  v1 = *(*(v0 + 104) + 32);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_24899A908, v1, 0);
}

uint64_t sub_24899A908()
{
  sub_248999C68(v0 + 16);
  *(v0 + 128) = 0;

  return MEMORY[0x2822009F8](sub_24899A998, 0, 0);
}

uint64_t sub_24899A998()
{
  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5878, &qword_248A15BD0);
  if (swift_dynamicCast())
  {
    sub_248978948((v0 + 56), *(v0 + 96));
    if (qword_28150F5C8 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_281510560);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136446466;
      v6 = sub_248A13570();
      v8 = sub_24897BC00(v6, v7, &v12);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2082;
      *(v4 + 14) = sub_24897BC00(0xD000000000000017, 0x8000000248A195B0, &v12);
      _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v5, -1, -1);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_248983734(v0 + 56, &qword_27EEB5880, &qword_248A15BD8);
    sub_248A13100();

    v11 = sub_248A13570();
    MEMORY[0x24C1DF8B0](v11);

    return sub_248A13200();
  }
}

uint64_t sub_24899ACA0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899ACE8, 0, 0);
}

uint64_t sub_24899ACE8()
{
  v13 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[4] = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v12);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000013, 0x8000000248A196B0, &v12);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v0[5] = *(v0[2] + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
  sub_248A11EB0();
  sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0], MEMORY[0x277D04FA8]);
  v10 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24899AF1C, v10, v9);
}

uint64_t sub_24899AF1C()
{
  sub_248A11E90();
  *(v0 + 48) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899AFCC()
{
  v18 = v0;
  v1 = *(v0 + 48);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Unable to start Live Activity - %{public}@", v7, 0x16u);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24899B19C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899B1E4, 0, 0);
}

uint64_t sub_24899B1E4()
{
  v13 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v12);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A19690, &v12);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  *(v0 + 32) = *(*(v0 + 16) + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
  sub_248A11EB0();
  sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0], MEMORY[0x277D04FA8]);
  v10 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24899B414, v10, v9);
}

uint64_t sub_24899B414()
{
  sub_248A11E80();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899B474()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_248A11D50();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899B55C, 0, 0);
}

uint64_t sub_24899B55C()
{
  v12 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Triggering remote unlock", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_24899B71C;

  return sub_24899BE5C();
}

uint64_t sub_24899B71C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24899BAB4;
  }

  else
  {
    v2 = sub_24899B830;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899B830()
{
  swift_beginAccess();
  sub_248A11EC0();
  swift_endAccess();
  sub_248A11D30();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_24899B90C;
  v2 = *(v0 + 72);

  return sub_24899C9F8(v2);
}

uint64_t sub_24899B90C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24899BC88, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24899BAB4()
{
  v16 = v0;
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v5 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v15);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Encountered error while performing remote unlock %{public}@", v5, 0x16u);
    sub_248983734(v6, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24899BC88()
{
  v16 = v0;
  v1 = *(v0 + 112);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v5 = 136446466;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v15);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Encountered error while performing remote unlock %{public}@", v5, 0x16u);
    sub_248983734(v6, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24899BE5C()
{
  v1[7] = v0;
  v1[8] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v1[9] = swift_task_alloc();
  v2 = sub_248A11BC0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899BF7C, 0, 0);
}

uint64_t sub_24899BF7C()
{
  v12 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000012, 0x8000000248A195D0, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_24899C180;

  return sub_24899A89C(v0 + 16);
}

uint64_t sub_24899C180()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24899C900;
  }

  else
  {
    v2 = sub_24899C294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899C294()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24899C3C4;
  v5 = v0[9];

  return v7(v5, v1, v3);
}

uint64_t sub_24899C3C4()
{

  return MEMORY[0x2822009F8](sub_24899C4C0, 0, 0);
}

uint64_t sub_24899C4C0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_248983734(v3, &qword_27EEB5400, &unk_248A14E10);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_248975000, v4, v5, "No peerIdentifier to unlock with", v6, 2u);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[7];
    (*(v2 + 32))(v0[12], v3, v1);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v10 = v9[8];
    v11 = v9[9];
    __swift_project_boxed_opaque_existential_1(v9 + 5, v10);
    v12 = sub_248A11B90();
    v14 = v13;
    v0[17] = v13;
    v16 = (*(v11 + 8) + **(v11 + 8));
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_24899C748;

    return v16(v12, v14, v10, v11);
  }
}

uint64_t sub_24899C748()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24899C970;
  }

  else
  {
    v2 = sub_24899C878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899C878()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24899C900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899C970()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24899C9F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v2[10] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[11] = swift_task_alloc();
  v3 = sub_248A11D50();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899CB10, 0, 0);
}

uint64_t sub_24899CB10()
{
  v25 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_281510560);
  v6 = *(v2 + 16);
  v0[15] = v6;
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_24897BC00(0xD00000000000001BLL, 0x8000000248A19610, &v24);
    *(v13 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5888, MEMORY[0x277D04F38], MEMORY[0x277D04F40]);
    v18 = sub_248A132F0();
    v20 = v19;
    (*(v11 + 8))(v10, v12);
    v21 = sub_24897BC00(v18, v20, &v24);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] %{public}s — %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_24899CDFC;

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_24899CDFC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24899D248;
  }

  else
  {
    v2 = sub_24899CF10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899CF10()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v1(v3, v5, v2);
  swift_storeEnumTagMultiPayload();
  v10 = (*(v4 + 32) + **(v4 + 32));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_24899D088;
  v8 = v0[11];

  return v10(v8, v6, v4);
}

uint64_t sub_24899D088()
{
  v2 = *(*v1 + 88);
  *(*v1 + 160) = v0;

  sub_2489A43BC(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v3 = sub_24899D2B8;
  }

  else
  {
    v3 = sub_24899D1CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899D1CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899D248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899D2B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_24899D330()
{
  sub_248996A48(v0[2], v0[3]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v1 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator;
  v2 = sub_248A11EF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24899D3F8()
{
  sub_24899D330();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestUserAccessResponseController(uint64_t a1)
{
  result = qword_28150F798;
  if (!qword_28150F798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24899D4A4(uint64_t a1)
{
  result = sub_248A11EF0();
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

uint64_t dispatch thunk of GuestUserSessionActivationStateProviding.guestUserSessionActivationState()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24898314C;

  return v7(a1, a2);
}

uint64_t sub_24899D6C8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899D710, 0, 0);
}

uint64_t sub_24899D710()
{
  v12 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0x6574617669746361, 0xEA00000000002928, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  sub_24899D8DC();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24899D8DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  sub_24899DF5C();
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_281510560);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Start observing guest user session activation state updates", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v14 = sub_248A12D40();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v16[5] = v2;
  *(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask) = sub_2489E5FD4(0, 0, v5, &unk_248A15C48, v16);
}

uint64_t sub_24899DB6C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24899DBB4, 0, 0);
}

uint64_t sub_24899DBB4()
{
  v12 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0x6164696C61766E69, 0xEC00000029286574, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_24899DDC8;

  return sub_248999F68();
}

uint64_t sub_24899DDC8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24899DEF8, 0, 0);
  }
}

uint64_t sub_24899DEF8(uint64_t a1)
{
  sub_24899DF5C();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24899DF5C()
{
  v1 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_281510560);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Stop observing guest user session activation state updates", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask;
  if (*(v1 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A12D70();
  }

  *(v1 + v10) = 0;
}

uint64_t sub_24899E148(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A11E10();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899E214, 0, 0);
}

uint64_t sub_24899E214()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_248A11E20();
  (*(v4 + 16))(v2, v1, v3);
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D04F60])
  {
    v6 = v0[6];
    (*(v0[5] + 96))(v6, v0[4]);
    v7 = *v6;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_24899E440;

    return NotificationController.postGuestUserModeUnavailableNotification(with:)(v7);
  }

  else if (v5 == *MEMORY[0x277D04F68])
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_24899E5C4;

    return NotificationController.postUnableToPlayProtectedContent()();
  }

  else
  {
    return sub_248A13200();
  }
}

uint64_t sub_24899E440()
{

  return MEMORY[0x2822009F8](sub_24899E53C, 0, 0);
}

uint64_t sub_24899E53C()
{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24899E5C4()
{

  return MEMORY[0x2822009F8](sub_2489A4A04, 0, 0);
}

uint64_t sub_24899E6C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v2[10] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[11] = swift_task_alloc();
  v3 = sub_248A11F90();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_248A11F40();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899E81C, 0, 0);
}

uint64_t sub_24899E81C()
{
  v51 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, MEMORY[0x277D05078]);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v50 = v9;
    *v8 = 136446722;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v50);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v50);
    *(v8 + 22) = 2082;
    v13 = sub_248A11F20();
    v15 = v14;
    sub_2489A43BC(v7, MEMORY[0x277D05078]);
    v16 = sub_24897BC00(v13, v15, &v50);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] %{public}s — %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, MEMORY[0x277D05078]);
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  *(v0 + 144) = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator;

  sub_248A11F70();

  *(v0 + 216) = *MEMORY[0x277D05088];
  v20 = *(v19 + 104);
  *(v0 + 152) = v20;
  *(v0 + 160) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v17);
  sub_2489A49AC(&qword_27EEB5890, MEMORY[0x277D05090], MEMORY[0x277D05098]);
  v21 = sub_248A12B00();
  v22 = *(v19 + 8);
  *(v0 + 168) = v22;
  *(v0 + 176) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v18);
  if (v21)
  {
    v23 = sub_248A122B0();
    v24 = sub_248A12E80();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136446466;
      v27 = sub_248A13570();
      v29 = sub_24897BC00(v27, v28, &v50);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v50);
      _os_log_impl(&dword_248975000, v23, v24, "[%{public}s] %{public}s Prox card request was already fulfilled", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v26, -1, -1);
      MEMORY[0x24C1E0A80](v25, -1, -1);
    }

    v30 = *(v0 + 168);
    v31 = *(v0 + 120);
    v32 = *(v0 + 112);
    v33 = *(v0 + 96);
    (*(v0 + 152))(v32, *(v0 + 216), v33);

    sub_248A11F80();

    v30(v32, v33);
    v30(v31, v33);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    sub_2489A421C(*(v0 + 56), *(v0 + 128), MEMORY[0x277D05078]);
    v36 = sub_248A122B0();
    v37 = sub_248A12E80();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 128);
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136446722;
      v42 = sub_248A13570();
      v44 = sub_24897BC00(v42, v43, &v50);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A19630, &v50);
      *(v40 + 22) = 2082;
      v45 = sub_248A11F20();
      v47 = v46;
      sub_2489A43BC(v39, MEMORY[0x277D05078]);
      v48 = sub_24897BC00(v45, v47, &v50);

      *(v40 + 24) = v48;
      _os_log_impl(&dword_248975000, v36, v37, "[%{public}s] %{public}s Sending guest user access response: %{public}s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v41, -1, -1);
      MEMORY[0x24C1E0A80](v40, -1, -1);
    }

    else
    {

      sub_2489A43BC(v39, MEMORY[0x277D05078]);
    }

    v49 = swift_task_alloc();
    *(v0 + 184) = v49;
    *v49 = v0;
    v49[1] = sub_24899EF20;

    return sub_24899A89C(v0 + 16);
  }
}

uint64_t sub_24899EF20()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24899F3FC;
  }

  else
  {
    v2 = sub_24899F034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899F034()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  sub_2489A421C(v3, v1, MEMORY[0x277D05078]);
  swift_storeEnumTagMultiPayload();
  v8 = (*(v2 + 32) + **(v2 + 32));
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_24899F1AC;
  v6 = v0[11];

  return v8(v6, v4, v2);
}

uint64_t sub_24899F1AC()
{
  v2 = *(*v1 + 88);
  *(*v1 + 208) = v0;

  sub_2489A43BC(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v3 = sub_24899F4A8;
  }

  else
  {
    v3 = sub_24899F2F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899F2F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  (*(v0 + 152))(v3, *(v0 + 216), v4);

  sub_248A11F80();

  v1(v3, v4);
  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24899F3FC()
{
  (*(v0 + 168))(*(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899F4A8()
{
  (*(v0 + 168))(*(v0 + 120), *(v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899F55C()
{
  v1[7] = v0;
  v1[8] = *v0;
  v1[9] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899F618, 0, 0);
}

uint64_t sub_24899F618()
{
  v12 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000014, 0x8000000248A195F0, &v11);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_24899F818;

  return sub_24899A89C(v0 + 16);
}

uint64_t sub_24899F818()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24899FC2C;
  }

  else
  {
    v2 = sub_24899F92C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24899F92C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  swift_storeEnumTagMultiPayload();
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_24899FA78;
  v4 = v0[10];

  return v6(v4, v1, v2);
}

uint64_t sub_24899FA78()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  sub_2489A43BC(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v3 = sub_24899FC90;
  }

  else
  {
    v3 = sub_24899FBBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24899FBBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899FC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899FC90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24899FCFC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v2[10] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[11] = swift_task_alloc();
  v3 = sub_248A11E60();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24899FE14, 0, 0);
}

uint64_t sub_24899FE14()
{
  v25 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_281510560);
  v6 = *(v2 + 16);
  v0[15] = v6;
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];
  if (v9)
  {
    v22 = v8;
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136446722;
    v14 = sub_248A13570();
    v16 = sub_24897BC00(v14, v15, &v24);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_24897BC00(0xD000000000000019, 0x8000000248A19520, &v24);
    *(v13 + 22) = 2114;
    sub_2489A49AC(&qword_27EEB5870, MEMORY[0x277D04F88], MEMORY[0x277D04F90]);
    swift_allocError();
    v6(v17, v11, v12);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v10 + 8))(v11, v12);
    *(v13 + 24) = v18;
    *v21 = v18;
    _os_log_impl(&dword_248975000, v7, v22, "[%{public}s] %{public}s — %{public}@", v13, 0x20u);
    sub_248983734(v21, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v23, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_2489A0158;

  return sub_24899A89C((v0 + 2));
}

uint64_t sub_2489A0158()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2489A49F4;
  }

  else
  {
    v2 = sub_2489A026C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489A026C()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v1(v3, v5, v2);
  swift_storeEnumTagMultiPayload();
  v10 = (*(v4 + 32) + **(v4 + 32));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2489A03E4;
  v8 = v0[11];

  return v10(v8, v6, v4);
}

uint64_t sub_2489A03E4()
{
  v2 = *(*v1 + 88);
  *(*v1 + 160) = v0;

  sub_2489A43BC(v2, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  if (v0)
  {
    v3 = sub_2489A49F8;
  }

  else
  {
    v3 = sub_2489A49FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2489A0528(uint64_t a1)
{
  v29 = *v1;
  v30 = sub_248A11F90();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A11FF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_281510560);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v1;
    v14 = v13;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v14 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v31);
    v29 = a1;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_24897BC00(0xD000000000000024, 0x8000000248A194F0, &v31);
    *(v14 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5868, MEMORY[0x277D050B0], MEMORY[0x277D050B8]);
    v19 = sub_248A132F0();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_24897BC00(v19, v21, &v31);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] %{public}s — %{public}s", v14, 0x20u);
    v23 = v27;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v23, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v30;
  (*(v3 + 104))(v5, *MEMORY[0x277D05080], v30);

  sub_248A11F80();

  (*(v3 + 8))(v5, v24);

  sub_248A11FA0();
}

uint64_t sub_2489A093C(uint64_t a1)
{
  v29 = *v1;
  v30 = sub_248A11F90();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248A12010();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_281510560);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v1;
    v14 = v13;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v14 = 136446722;
    v15 = sub_248A13570();
    v17 = sub_24897BC00(v15, v16, &v31);
    v29 = a1;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_24897BC00(0xD000000000000024, 0x8000000248A194F0, &v31);
    *(v14 + 22) = 2082;
    sub_2489A49AC(&qword_27EEB5860, MEMORY[0x277D050C8], MEMORY[0x277D050D0]);
    v19 = sub_248A132F0();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_24897BC00(v19, v21, &v31);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] %{public}s — %{public}s", v14, 0x20u);
    v23 = v27;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v23, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v30;
  (*(v3 + 104))(v5, *MEMORY[0x277D05080], v30);

  sub_248A11F80();

  (*(v3 + 8))(v5, v24);

  sub_248A11FB0();
}

uint64_t sub_2489A0D50()
{
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_281510560);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446466;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_24897BC00(0xD000000000000010, 0x8000000248A194D0, &v9);
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] %{public}s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  sub_248A11F50();
}

uint64_t sub_2489A0F30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899D6C8();
}

uint64_t sub_2489A0FBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899DB6C();
}

uint64_t sub_2489A1048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899E6C0(a1);
}

uint64_t sub_2489A10DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899C9F8(a1);
}

uint64_t sub_2489A1170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_24899F55C();
}

uint64_t sub_2489A11FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_24899BE5C();
}

uint64_t sub_2489A1288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899FCFC(a1);
}

uint64_t sub_2489A1328(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return sub_24899E148(a1);
}

uint64_t sub_2489A13BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_248A11E40();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_248A11EF0();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_248A12010();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = sub_248A11FF0();
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A15D0, 0, 0);
}

uint64_t sub_2489A15D0()
{
  v34 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[5];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = GuestUserAccessPeerConnectionServiceMessage.Request.description.getter();
    v15 = v14;
    sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    v16 = sub_24897BC00(v13, v15, &v33);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Did receive peer connection service message: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  sub_2489A421C(v0[5], v0[21], type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v0[9] + 32))(v0[10], v0[21], v0[8]);
        v24 = swift_task_alloc();
        v0[26] = v24;
        *v24 = v0;
        v24[1] = sub_2489A1F84;
        v25 = v0[10];

        return sub_24899E148(v25);
      }

      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[14];
      (*(v19 + 32))(v18, v0[21], v20);

      sub_248A11FB0();
    }

    else
    {
      v19 = v0[18];
      v18 = v0[19];
      v20 = v0[17];
      (*(v19 + 32))(v18, v0[21], v20);

      sub_248A11FA0();
    }

    (*(v19 + 8))(v18, v20);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v21 = swift_task_alloc();
      v0[24] = v21;
      *v21 = v0;
      v21[1] = sub_2489A1D8C;

      return sub_24899ACA0();
    }

    else
    {
      v28 = v0[12];
      v27 = v0[13];
      v29 = v0[11];
      v30 = v0[6];
      v31 = OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator;
      swift_beginAccess();
      (*(v28 + 16))(v27, v30 + v31, v29);
      sub_248A11ED0();
      (*(v28 + 8))(v27, v29);
      v32 = swift_task_alloc();
      v0[25] = v32;
      *v32 = v0;
      v32[1] = sub_2489A1E88;

      return sub_24899B19C();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_248A11F50();

LABEL_19:

      v23 = v0[1];

      return v23();
    }

    v26 = swift_task_alloc();
    v0[23] = v26;
    *v26 = v0;
    v26[1] = sub_2489A1BE4;

    return sub_24899B474();
  }
}

uint64_t sub_2489A1BE4()
{

  return MEMORY[0x2822009F8](sub_2489A1CE0, 0, 0);
}

uint64_t sub_2489A1CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489A1D8C()
{

  return MEMORY[0x2822009F8](sub_2489A4A00, 0, 0);
}

uint64_t sub_2489A1E88()
{

  return MEMORY[0x2822009F8](sub_2489A4A00, 0, 0);
}

uint64_t sub_2489A1F84()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2489A215C;
  }

  else
  {
    v2 = sub_2489A2098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489A2098()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2489A215C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2489A2224(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_2489A2248, 0, 0);
}

uint64_t sub_2489A2248()
{
  v17 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    if (v4)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v11 = "sendGuestUserAccessResponse(_:)";
    }

    else
    {
      v11 = "peerConnectionDidFail";
    }

    v12 = sub_24897BC00(v10, v11 | 0x8000000000000000, &v16);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Did receive peer connection service status update: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  if (*(v0 + 40))
  {
    v13 = swift_task_alloc();
    *(v0 + 32) = v13;
    *v13 = v0;
    v13[1] = sub_2489A24B0;

    return sub_24899B19C();
  }

  else
  {
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2489A24B0()
{

  return MEMORY[0x2822009F8](sub_2489A25AC, 0, 0);
}

uint64_t sub_2489A25AC()
{

  sub_248A11F50();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489A2628(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2489A421C(a2, v8, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_2489A441C(v8, v15 + v13, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  *(v15 + v14) = v2;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;

  sub_2489E5FD4(0, 0, v11, &unk_248A15C80, v15);
}

uint64_t sub_2489A2840(uint64_t a1, char *a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *a2;
  v9 = sub_248A12D40();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = v4;

  sub_2489AC334(0, 0, v7, &unk_248A15C68, v10);
}

uint64_t sub_2489A2984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_248A11F40();
  v6[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A2A18, 0, 0);
}

uint64_t sub_2489A2A18()
{
  v21 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_281510560);
  sub_2489A421C(v2, v1, MEMORY[0x277D05078]);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = sub_248A11F20();
    v15 = v14;
    sub_2489A43BC(v7, MEMORY[0x277D05078]);
    v16 = sub_24897BC00(v13, v15, &v20);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Should send guest user mode response: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {

    sub_2489A43BC(v7, MEMORY[0x277D05078]);
  }

  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = sub_2489A2C8C;
  v18 = v0[2];

  return sub_24899E6C0(v18);
}

uint64_t sub_2489A2C8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489A2D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_248A11F40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_248A12D40();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2489A421C(a1, v7, MEMORY[0x277D05078]);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_2489A441C(v7, v14 + v12, MEMORY[0x277D05078]);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  sub_2489E5FD4(0, 0, v10, &unk_248A15CA0, v14);
}

uint64_t sub_2489A2FB4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_2489A2FFC, 0, 0);
}

uint64_t sub_2489A2FFC()
{
  v3 = (*MEMORY[0x277D04F98] + MEMORY[0x277D04F98]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2489A30AC;

  return v3();
}

uint64_t sub_2489A30AC(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2489A31AC, 0, 0);
}

uint64_t sub_2489A31AC()
{
  v14 = v0;
  if (qword_28150F5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510560);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1026;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Guest user session activation state — %{BOOL,public}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = *(v0 + 8);
  v11 = *(v0 + 40);

  return v10(v11);
}

uint64_t sub_2489A3348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58A0, &qword_248A15C50);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58A8, &qword_248A15C58);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489A347C, 0, 0);
}

uint64_t sub_2489A347C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v0[17] = *(Strong + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator);
    sub_248A11EB0();
    sub_2489A49AC(&qword_27EEB58B0, MEMORY[0x277D04FA0], MEMORY[0x277D04FA8]);
    v3 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489A35B0, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2489A35B0()
{
  sub_248A11E70();

  return MEMORY[0x2822009F8](sub_2489A361C, 0, 0);
}

uint64_t sub_2489A361C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_248A12D50();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2489A370C;
  v5 = v0[13];

  return MEMORY[0x2822003E8](v0 + 23, 0, 0, v5);
}

uint64_t sub_2489A370C()
{

  return MEMORY[0x2822009F8](sub_2489A3808, 0, 0);
}

uint64_t sub_2489A3808()
{
  v19 = v0;
  v1 = *(v0 + 184);
  if (v1 == 2 || (sub_248A12D80() & 1) != 0)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_28150F5C8 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_281510560);
    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      v9 = sub_248A13570();
      v11 = sub_24897BC00(v9, v10, &v18);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1026;
      *(v7 + 14) = v1 & 1;
      _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] guest user session activation state did update to state - %{BOOL,public}d", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v12 = *(v0 + 128);
    v13 = *(v12 + 16);
    *(v0 + 152) = v13;
    *(v0 + 160) = *(v12 + 24);
    if (v13)
    {

      v17 = (v13 + *v13);
      v14 = swift_task_alloc();
      *(v0 + 168) = v14;
      *v14 = v0;
      v14[1] = sub_2489A3B78;

      return v17(v1 & 1);
    }

    else
    {
      v15 = swift_task_alloc();
      *(v0 + 144) = v15;
      *v15 = v0;
      v15[1] = sub_2489A370C;
      v16 = *(v0 + 104);

      return MEMORY[0x2822003E8](v0 + 184, 0, 0, v16);
    }
  }
}

uint64_t sub_2489A3B78()
{
  v2 = *v1;
  v3 = *v1;
  v2[22] = v0;

  sub_248996A48(v2[19], v2[20]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489A3D30, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[18] = v4;
    *v4 = v3;
    v4[1] = sub_2489A370C;
    v5 = v2[13];

    return MEMORY[0x2822003E8](v2 + 23, 0, 0, v5);
  }
}

uint64_t sub_2489A3D30()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489A3DCC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_2489789C8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_2489A3E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_248996A48(v5, v6);
}

uint64_t sub_2489A3EC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489825D4;

  return sub_2489A2FB4();
}

uint64_t sub_2489A3F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5ED0, &qword_248A15BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2489A3FC0()
{
  result = qword_27EEB5EC0;
  if (!qword_27EEB5EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5898, &qword_248A15C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5EC0);
  }

  return result;
}

uint64_t sub_2489A4024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5ED0, &qword_248A15BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489A4094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_2489A3348(a1, v4, v5, v7, v6);
}

uint64_t sub_2489A4154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489A2224(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_2489A421C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489A4284(uint64_t a1)
{
  v4 = *(type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2489839A0;

  return sub_2489A13BC(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_2489A43BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489A441C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489A4484(uint64_t a1)
{
  v4 = *(sub_248A11F40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_248978D74;

  return sub_2489A2984(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_2489A45BC(uint64_t a1)
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446722;
    nullsub_1();
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0x726573624F646461, 0xEF293A5F28726576, &v13);
    *(v4 + 22) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58B8, &qword_248A15CB0);
    v9 = sub_248A12B80();
    v11 = sub_24897BC00(v9, v10, &v13);

    *(v4 + 24) = v11;
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s: %{public}s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  return sub_248A11DA0();
}

void *sub_2489A47F8()
{
  v1 = sub_248A11EF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0;
  v0[3] = 0;
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityTimeoutTask) = 0;
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserSessionActivationStateTask) = 0;
  v0[4] = sub_2489C69A8();
  sub_2489C6C34(v7);
  sub_248978948(v7, (v0 + 5));
  sub_2489C6EE8(v4);
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_airPlayReceiverCoordinator, v4, v1);
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_liveActivityCoordinator) = sub_2489C729C();
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_guestUserHandOverSetupCoordinator) = sub_2489C752C();
  *(v0 + OBJC_IVAR____TtC13DeviceSharing33GuestUserAccessResponseController_notificationController) = sub_2489C77BC();
  sub_2489A49AC(&qword_28150F7A8, type metadata accessor for GuestUserAccessResponseController, &unk_248A15B30);

  sub_248A11F60();

  return v0;
}

uint64_t sub_2489A49AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FileManagerBYOE.assetURL()@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_248A11AC0();
  v5 = *(v21 - 8);
  v6 = MEMORY[0x28223BE20](v21);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v19 = v18 - v9;
  v10 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v23 = 1701804386;
  v24 = 0xE400000000000000;
  v11 = *MEMORY[0x277CC91C0];
  v20 = *(v2 + 104);
  v20(v4, v11, v1);
  sub_2489835B8();
  sub_248A11AB0();
  v12 = v2 + 8;
  v13 = *(v2 + 8);
  v18[1] = v12;
  v13(v4, v1);
  v14 = *(v5 + 8);
  v15 = v21;
  v14(v8, v21);
  v23 = 0x646574726F707865;
  v24 = 0xEF7374657373612ELL;
  v20(v4, v11, v1);
  v16 = v19;
  sub_248A11AB0();
  v13(v4, v1);
  return (v14)(v16, v15);
}

uint64_t FileManagerBYOE.compressedAssetURL()@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_248A11AC0();
  v5 = *(v19 - 8);
  v6 = MEMORY[0x28223BE20](v19);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v18 = &v17 - v9;
  v10 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v21 = 1701804386;
  v22 = 0xE400000000000000;
  v11 = *(v2 + 104);
  v11(v4, *MEMORY[0x277CC91C0], v1);
  sub_2489835B8();
  sub_248A11AB0();
  v12 = *(v2 + 8);
  v17 = v2 + 8;
  v12(v4, v1);
  v13 = *(v5 + 8);
  v14 = v19;
  v13(v8, v19);
  v21 = 0xD000000000000013;
  v22 = 0x8000000248A19700;
  v11(v4, *MEMORY[0x277CC91D0], v1);
  v15 = v18;
  sub_248A11AB0();
  v12(v4, v1);
  return (v13)(v15, v14);
}

uint64_t FileManagerBYOE.checkEnoughDiskSpaceFor(assetURL:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_2489A500C, 0, 0);
}

uint64_t sub_2489A500C()
{
  v1 = sub_2489A54E8(v0[7]);
  if (v2)
  {
    sub_2489A7CEC();
    swift_allocError();
    *v3 = 0;
LABEL_23:
    swift_willThrow();
    v24 = v0[1];
    v25 = 0;
    goto LABEL_24;
  }

  if (v1 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (qword_28150F5E0 == -1)
  {
    goto LABEL_5;
  }

  v32 = v1;
  swift_once();
  v1 = v32;
LABEL_5:
  v4 = 2 * v1;
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_248975000, v6, v7, "Low disk space threshold (bytes): %{public}lld", v8, 0xCu);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v9 = NSHomeDirectory();
  if (!v9)
  {
    sub_248A12B60();
    v9 = sub_248A12B30();
  }

  v10 = v0[8];
  v0[2] = 0;
  v11 = [v10 attributesOfFileSystemForPath:v9 error:v0 + 2];

  v12 = v0[2];
  if (!v11)
  {
    v30 = v12;
    sub_248A11A40();

    goto LABEL_23;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey, &unk_248A148F0);
  v13 = sub_248A12AA0();
  v14 = v12;

  if (!*(v13 + 16) || (v15 = sub_2489A8640(*MEMORY[0x277CCA1D0]), (v16 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_24897C864(*(v13 + 56) + 32 * v15, (v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v26 = sub_248A122B0();
    v27 = sub_248A12E60();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_248975000, v26, v27, "Could not get free space size.", v28, 2u);
      MEMORY[0x24C1E0A80](v28, -1, -1);
    }

    sub_2489A7CEC();
    swift_allocError();
    *v29 = 1;
    goto LABEL_23;
  }

  v17 = v0[6];
  v18 = sub_248A122B0();
  v19 = sub_248A12E80();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_248975000, v18, v19, "Available disk space (bytes): %{public}ld", v20, 0xCu);
    MEMORY[0x24C1E0A80](v20, -1, -1);
  }

  v21 = sub_248A122B0();
  v22 = sub_248A12E80();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = v4 < v17;
    _os_log_impl(&dword_248975000, v21, v22, "Enough disk space exists: %{BOOL,public}d", v23, 8u);
    MEMORY[0x24C1E0A80](v23, -1, -1);
  }

  v24 = v0[1];
  v25 = v4 < v17;
LABEL_24:

  return v24(v25);
}

uint64_t sub_2489A54E8(uint64_t a1)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v3 = sub_248A11AC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A11A60();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_248A11AA0();
  v11 = sub_248A12B30();

  v12 = [v10 enumeratorAtPath_];

  if (v12)
  {
    v53 = v12;
    sub_248A12E30();
    v54 = 0;
    v59 = 0;
    v60 = *MEMORY[0x277CCA1C0];
    *&v13 = 136446466;
    v57 = v13;
    v58 = v9;
    while (1)
    {
      sub_248A11A50();
      if (!v63[3])
      {
        break;
      }

      if (swift_dynamicCast())
      {
        sub_248A11AA0();
        v14 = sub_248A12B30();

        v15 = sub_248A12B30();

        v16 = [v14 stringByAppendingPathComponent_];

        v17 = v16;
        if (!v16)
        {
          sub_248A12B60();
          v17 = sub_248A12B30();
        }

        v18 = sub_248A12B60();
        v20 = v19;
        v62 = 0;
        v21 = [v10 attributesOfItemAtPath:v17 error:&v62];

        v22 = v62;
        if (v21)
        {

          type metadata accessor for FileAttributeKey(0);
          sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey, &unk_248A148F0);
          v23 = sub_248A12AA0();

          if (*(v23 + 16) && (v24 = sub_2489A8640(v60), (v25 & 1) != 0))
          {
            sub_24897C864(*(v23 + 56) + 32 * v24, &v62);

            if (swift_dynamicCast())
            {
              v26 = __OFADD__(v54, v61);
              v54 += v61;
              if (v26)
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v27 = v22;
          v28 = sub_248A11A40();

          swift_willThrow();
          if (qword_28150F5E0 != -1)
          {
            swift_once();
          }

          v59 = 0;
          v29 = sub_248A122D0();
          __swift_project_value_buffer(v29, qword_2815105A8);

          v30 = v28;
          v31 = sub_248A122B0();
          v32 = sub_248A12E60();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = a1;
            v35 = swift_slowAlloc();
            v36 = v10;
            v37 = swift_slowAlloc();
            v62 = v37;
            *v33 = v57;
            v38 = sub_24897BC00(v18, v20, &v62);

            *(v33 + 4) = v38;
            *(v33 + 12) = 2114;
            v39 = v28;
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v33 + 14) = v40;
            *v35 = v40;
            _os_log_impl(&dword_248975000, v31, v32, "Failed to get attributes for file %{public}s: %{public}@", v33, 0x16u);
            sub_248983734(v35, &qword_27EEB5600, &unk_248A15210);
            v41 = v35;
            a1 = v34;
            MEMORY[0x24C1E0A80](v41, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v37);
            v42 = v37;
            v10 = v36;
            v9 = v58;
            MEMORY[0x24C1E0A80](v42, -1, -1);
            MEMORY[0x24C1E0A80](v33, -1, -1);
          }

          else
          {
          }
        }
      }
    }

    (*(v55 + 8))(v9, v56);

    return v54;
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v44 = sub_248A122D0();
    __swift_project_value_buffer(v44, qword_2815105A8);
    (*(v4 + 16))(v6, a1, v3);
    v45 = sub_248A122B0();
    v46 = sub_248A12E60();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63[0] = v48;
      *v47 = 136446210;
      sub_2489A9668(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v49 = sub_248A132F0();
      v51 = v50;
      (*(v4 + 8))(v6, v3);
      v52 = sub_24897BC00(v49, v51, v63);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_248975000, v45, v46, "Failed to enumerate directory: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1E0A80](v48, -1, -1);
      MEMORY[0x24C1E0A80](v47, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    return 0;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileManagerBYOE.ensureBYOEDirectoryExists()()
{
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = sub_248A11A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_248A11AC0();
  v61 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v46[-v9];
  v60 = *v0;
  v11 = NSTemporaryDirectory();
  sub_248A12B60();

  sub_248A11A80();

  v62 = 1701804386;
  v63 = 0xE400000000000000;
  v12 = *(v2 + 104);
  v58 = *MEMORY[0x277CC91C0];
  v59 = v2 + 104;
  v57 = v12;
  v12(v4);
  v56 = sub_2489835B8();
  sub_248A11AB0();
  v13 = *(v2 + 8);
  v53 = v2 + 8;
  v54 = v1;
  v55 = v13;
  v13(v4, v1);
  v15 = v61 + 8;
  v14 = *(v61 + 8);
  v14(v8, v5);
  sub_248A11AA0();
  v14(v10, v5);
  v16 = sub_248A12B30();

  v17 = v60;
  v18 = [v60 fileExistsAtPath:v16 isDirectory:0];

  if ((v18 & 1) == 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v52 = v14;
    v61 = v15;
    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_2815105A8);
    v20 = v17;
    v21 = sub_248A122B0();
    v22 = sub_248A12E80();
    v60 = v20;

    v23 = os_log_type_enabled(v21, v22);
    v51 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v49 = v24;
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v24 = 136446210;
      v25 = NSTemporaryDirectory();
      v48 = v21;
      v26 = v25;
      sub_248A12B60();
      v27 = v5;

      sub_248A11A80();
      v28 = v54;

      v62 = 1701804386;
      v63 = 0xE400000000000000;
      v57(v4, v58, v28);
      sub_248A11AB0();
      v55(v4, v28);
      v29 = v27;
      v30 = v27;
      v47 = v22;
      v31 = v52;
      v52(v8, v30);
      v32 = sub_248A11AA0();
      v34 = v33;
      v31(v10, v29);
      v35 = sub_24897BC00(v32, v34, v64);

      v37 = v48;
      v36 = v49;
      *(v49 + 1) = v35;
      _os_log_impl(&dword_248975000, v37, v47, "%{public}s does not exist, creating", v36, 0xCu);
      v38 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1E0A80](v38, -1, -1);
      MEMORY[0x24C1E0A80](v36, -1, -1);
    }

    else
    {

      v31 = v52;
    }

    v39 = NSTemporaryDirectory();
    sub_248A12B60();

    sub_248A11A80();

    v62 = 1701804386;
    v63 = 0xE400000000000000;
    v40 = v54;
    v57(v4, v58, v54);
    sub_248A11AB0();
    v55(v4, v40);
    v41 = v51;
    v31(v8, v51);
    v42 = sub_248A11A90();
    v31(v10, v41);
    v62 = 0;
    v43 = [v60 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v62];

    if (v43)
    {
      v44 = v62;
    }

    else
    {
      v45 = v62;
      sub_248A11A40();

      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileManagerBYOE.ensureCleanDiskState()()
{
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = sub_248A11AC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  FileManagerBYOE.assetURL()(v4);
  sub_248A11AA0();
  v8 = *(v2 + 8);
  v6 = (v2 + 8);
  v7 = v8;
  v8(v4, v1);
  v9 = sub_248A12B30();

  v10 = [v5 fileExistsAtPath_];

  if (v10)
  {
    v49 = v6;
    v50 = v7;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v11 = sub_248A122D0();
    __swift_project_value_buffer(v11, qword_2815105A8);
    v48 = v5;
    v12 = v5;
    v13 = sub_248A122B0();
    v14 = sub_248A12E80();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v15 = 136446210;
      FileManagerBYOE.assetURL()(v4);
      v16 = sub_248A11AA0();
      v47 = v12;
      v18 = v17;
      v7 = v50;
      v50(v4, v1);
      v19 = sub_24897BC00(v16, v18, v52);
      v12 = v47;

      *(v15 + 4) = v19;
      _os_log_impl(&dword_248975000, v13, v14, "%{public}s already exists, deleting", v15, 0xCu);
      v20 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C1E0A80](v20, -1, -1);
      MEMORY[0x24C1E0A80](v15, -1, -1);
    }

    else
    {

      v7 = v50;
    }

    FileManagerBYOE.assetURL()(v4);
    sub_248A11AA0();
    v7(v4, v1);
    v21 = sub_248A12B30();

    v52[0] = 0;
    v22 = [v12 removeItemAtPath:v21 error:v52];

    v23 = v52[0];
    v5 = v48;
    if (!v22)
    {
      goto LABEL_16;
    }

    v24 = v52[0];
  }

  FileManagerBYOE.compressedAssetURL()(v4);
  sub_248A11AA0();
  v7(v4, v1);
  v25 = sub_248A12B30();

  v26 = [v5 fileExistsAtPath_];

  if (!v26)
  {
    return;
  }

  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v27 = sub_248A122D0();
  __swift_project_value_buffer(v27, qword_2815105A8);
  v28 = v5;
  v29 = sub_248A122B0();
  v30 = sub_248A12E80();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v1;
    v32 = v31;
    v49 = swift_slowAlloc();
    v52[0] = v49;
    *v32 = 136446210;
    FileManagerBYOE.compressedAssetURL()(v4);
    v33 = sub_248A11AA0();
    v34 = v7;
    v35 = v28;
    v37 = v36;
    v34(v4, v50);
    v38 = sub_24897BC00(v33, v37, v52);
    v28 = v35;
    v7 = v34;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_248975000, v29, v30, "%{public}s already exists, deleting", v32, 0xCu);
    v39 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x24C1E0A80](v39, -1, -1);
    v40 = v32;
    v1 = v50;
    MEMORY[0x24C1E0A80](v40, -1, -1);
  }

  FileManagerBYOE.compressedAssetURL()(v4);
  sub_248A11AA0();
  v7(v4, v1);
  v41 = sub_248A12B30();

  v52[0] = 0;
  v42 = [v28 removeItemAtPath:v41 error:v52];

  v23 = v52[0];
  if (v42)
  {
    v43 = v52[0];
    return;
  }

LABEL_16:
  v44 = v23;
  v45 = sub_248A11A40();

  v51 = v45;
  swift_willThrow();
}

id FileManagerBYOE.fileExists(atURL:)()
{
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

id FileManagerBYOE.removeItem(at:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = sub_248A11A90();
  v6[0] = 0;
  LODWORD(v2) = [v2 removeItemAtURL:v3 error:v6];

  if (v2)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_248A11A40();

  return swift_willThrow();
}

id FileManagerBYOE.copy(itemAt:to:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = sub_248A11A90();
  v4 = sub_248A11A90();
  v8[0] = 0;
  v5 = [v2 copyItemAtURL:v3 toURL:v4 error:v8];

  if (v5)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_248A11A40();

  return swift_willThrow();
}

id FileManagerBYOE.createDirectory(at:withIntermediateDirectories:)(uint64_t a1, char a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = sub_248A11A90();
  v9[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v9];

  if (v6)
  {
    return v9[0];
  }

  v8 = v9[0];
  sub_248A11A40();

  return swift_willThrow();
}

uint64_t FileManagerBYOE.formattedSize(ofAssetsAtURL:)(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 0x6E776F6E6B6E55;
  v4 = *v1;
  v13 = 0;
  sub_248A11AA0();
  v5 = sub_248A12B30();

  [v4 fileExistsAtPath:v5 isDirectory:&v13];

  if ((v13 & 1) == 0)
  {
    v6 = sub_2489A6CE8();
    if (v11)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v6 = sub_2489A54E8(a1);
  if ((v7 & 1) == 0)
  {
LABEL_3:
    v8 = v6;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v9 setAllowedUnits_];
    [v9 setCountStyle_];
    v10 = [v9 stringFromByteCount_];
    v3 = sub_248A12B60();
  }

  return v3;
}

uint64_t sub_2489A6CE8()
{
  v22[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v22[0] = 0;
  v3 = [v1 attributesOfItemAtPath:v2 error:v22];

  v4 = v22[0];
  if (v3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_2489A9668(&qword_27EEB52A8, type metadata accessor for FileAttributeKey, &unk_248A148F0);
    v5 = sub_248A12AA0();
    v6 = v4;

    if (*(v5 + 16) && (v7 = sub_2489A8640(*MEMORY[0x277CCA1C0]), (v8 & 1) != 0))
    {
      sub_24897C864(*(v5 + 56) + 32 * v7, v22);

      if (swift_dynamicCast())
      {
        return v21;
      }
    }

    else
    {
    }
  }

  else
  {
    v10 = v22[0];
    v11 = sub_248A11A40();

    swift_willThrow();
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v12 = sub_248A122D0();
    __swift_project_value_buffer(v12, qword_2815105A8);
    v13 = v11;
    v14 = sub_248A122B0();
    v15 = sub_248A12E60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_248A133C0();
      v20 = sub_24897BC00(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_248975000, v14, v15, "Error retrieving file size: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1E0A80](v17, -1, -1);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

id sub_2489A7054()
{
  v1 = *v0;
  sub_248A11AA0();
  v2 = sub_248A12B30();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

uint64_t sub_2489A710C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489825D4;

  return FileManagerBYOE.checkEnoughDiskSpaceFor(assetURL:)(a1);
}

unint64_t FileManagerBYOE.Error.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0xD000000000000031;
  }
}

unint64_t sub_2489A7224()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2489A7260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001BLL && 0x8000000248A19820 == a2;
  if (v6 || (sub_248A13340() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000248A19840 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A13340();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2489A7358(uint64_t a1)
{
  v2 = sub_2489A7F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7394(uint64_t a1)
{
  v2 = sub_2489A7F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2489A73DC(uint64_t a1)
{
  v2 = sub_2489A8010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7418(uint64_t a1)
{
  v2 = sub_2489A8010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2489A7454(uint64_t a1)
{
  v2 = sub_2489A7FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2489A7490(uint64_t a1)
{
  v2 = sub_2489A7FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileManagerBYOE.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58C8, &qword_248A15CC8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58D0, &qword_248A15CD0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58D8, &qword_248A15CD8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489A7F68();
  sub_248A13490();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2489A7FBC();
    v14 = v18;
    sub_248A132B0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2489A8010();
    sub_248A132B0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FileManagerBYOE.Error.hashValue.getter()
{
  v1 = *v0;
  sub_248A13430();
  MEMORY[0x24C1E0100](v1);
  return sub_248A13460();
}

uint64_t FileManagerBYOE.Error.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB58F8, &qword_248A15CE0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5900, &qword_248A15CE8);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5908, &qword_248A15CF0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2489A7F68();
  v13 = v31;
  sub_248A13480();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_248A132A0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_248A13150();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5910, &qword_248A15CF8);
    *v21 = &type metadata for FileManagerBYOE.Error;
    sub_248A13280();
    sub_248A13140();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_2489A7FBC();
    sub_248A13270();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_2489A8010();
    sub_248A13270();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_2489A7C80()
{
  if (*v0)
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0xD000000000000031;
  }
}

unint64_t sub_2489A7CEC()
{
  result = qword_27EEB58C0;
  if (!qword_27EEB58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58C0);
  }

  return result;
}

unint64_t sub_2489A7D40(uint64_t a1, uint64_t a2)
{
  sub_248A13430();
  sub_248A12BB0();
  v4 = sub_248A13460();

  return sub_2489A88F0(a1, a2, v4);
}

unint64_t sub_2489A7DB8(uint64_t a1)
{
  v2 = sub_248A13080();

  return sub_2489A89A8(a1, v2);
}

unint64_t sub_2489A7DFC(uint64_t a1)
{
  sub_248A12480();
  v2 = MEMORY[0x277D04ED0];
  sub_2489A9668(&unk_27EEB61C0, MEMORY[0x277D04ED0], MEMORY[0x277D04ED8]);
  v3 = sub_248A12AE0();
  return sub_2489A946C(a1, v3, MEMORY[0x277D04ED0], &qword_27EEB5958, v2, MEMORY[0x277D04EE0]);
}

unint64_t sub_2489A7ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_248A13430();
  SpecificAssetType.hash(into:)(v10);
  v8 = sub_248A13460();

  return sub_2489A8A70(a1, a2, a3, v4, v8);
}

unint64_t sub_2489A7F68()
{
  result = qword_27EEB58E0;
  if (!qword_27EEB58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58E0);
  }

  return result;
}

unint64_t sub_2489A7FBC()
{
  result = qword_27EEB58E8;
  if (!qword_27EEB58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58E8);
  }

  return result;
}

unint64_t sub_2489A8010()
{
  result = qword_27EEB58F0;
  if (!qword_27EEB58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB58F0);
  }

  return result;
}

unint64_t sub_2489A8068()
{
  result = qword_27EEB5918;
  if (!qword_27EEB5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5918);
  }

  return result;
}

uint64_t dispatch thunk of FileManagerBYOEProtocol.checkEnoughDiskSpaceFor(assetURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24898314C;

  return v9(a1, a2, a3);
}

uint64_t sub_2489A8300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2489A8348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2489A83D8()
{
  result = qword_27EEB5920;
  if (!qword_27EEB5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5920);
  }

  return result;
}

unint64_t sub_2489A8430()
{
  result = qword_27EEB5928;
  if (!qword_27EEB5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5928);
  }

  return result;
}

unint64_t sub_2489A8488()
{
  result = qword_27EEB5930;
  if (!qword_27EEB5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5930);
  }

  return result;
}

unint64_t sub_2489A84E0()
{
  result = qword_27EEB5938;
  if (!qword_27EEB5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5938);
  }

  return result;
}

unint64_t sub_2489A8538()
{
  result = qword_27EEB5940;
  if (!qword_27EEB5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5940);
  }

  return result;
}

unint64_t sub_2489A8590()
{
  result = qword_27EEB5948;
  if (!qword_27EEB5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5948);
  }

  return result;
}

unint64_t sub_2489A85E8()
{
  result = qword_27EEB5950;
  if (!qword_27EEB5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5950);
  }

  return result;
}

unint64_t sub_2489A8640(uint64_t a1)
{
  sub_248A12B60();
  sub_248A13430();
  sub_248A12BB0();
  v2 = sub_248A13460();

  return sub_2489A9118(a1, v2);
}

unint64_t sub_2489A86D0(uint64_t a1)
{
  v2 = sub_248A13420();

  return sub_2489A921C(a1, v2);
}

unint64_t sub_2489A8714(uint64_t a1)
{
  v1 = a1;
  sub_248A13430();
  sub_248A12BB0();

  v2 = sub_248A13460();

  return sub_2489A9288(v1, v2);
}

unint64_t sub_2489A87D4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x24C1E00D0](*(v1 + 40), a1, 4);

  return sub_2489A9400(v2, v3);
}

unint64_t sub_2489A881C(uint64_t a1)
{
  sub_248A11BC0();
  v2 = MEMORY[0x277CC95F0];
  sub_2489A9668(&unk_27EEB5A30, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_248A12AE0();
  return sub_2489A946C(a1, v3, MEMORY[0x277CC95F0], &qword_27EEB5960, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2489A88F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_248A13340())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2489A89A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2489A960C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1DFD50](v9, a1);
      sub_248983688(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2489A8A70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if (((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return v8;
  }

  v13 = ~v7;
  v14 = a1 != 2;
  v15 = a3 | a2;
  v16 = a1 != 1;
  if (a3 | a2)
  {
    v14 = 1;
  }

  if (v15)
  {
    v16 = 1;
  }

  v17 = a4 != 2;
  v18 = v15 | a1;
  if (a4 != 2)
  {
    v14 = 1;
  }

  v59 = v14;
  v19 = a4 != 2 || v16;
  v58 = v19;
  if (v18)
  {
    v17 = 1;
  }

  v60 = v17;
  v61 = v13;
  while (1)
  {
    v25 = *(v5 + 48) + 32 * v8;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v62[0] = v26;
    v62[1] = v27;
    v62[2] = v28;
    v63 = v29;
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v67 = a4;
    if (!v29)
    {
      break;
    }

    if (v29 != 1)
    {
      if (v28 | v27 | v26)
      {
        if (v26 == 1 && (v28 | v27) == 0)
        {
          if ((v58 & 1) == 0)
          {
LABEL_61:
            sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
            return v8;
          }
        }

        else if (!v59)
        {
          goto LABEL_61;
        }
      }

      else if (!v60)
      {
        goto LABEL_61;
      }

      goto LABEL_16;
    }

    if (a4 != 1)
    {
      v20 = 1;
      goto LABEL_15;
    }

    if (v27)
    {
      if (a2)
      {
        if (v26 == a1 && v27 == a2)
        {
          v55 = v28;
          sub_2489837A4(a1, a2, v28, 1u);
          sub_2489837A4(a1, a2, a3, 1u);
          sub_2489837A4(a1, a2, v55, 1u);
          sub_2489837A4(a1, a2, a3, 1u);
          sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

          goto LABEL_65;
        }

        v31 = v26;
        v32 = v27;
        v33 = v28;
        v34 = sub_248A13340();
        sub_2489837A4(v31, v32, v33, 1u);
        sub_2489837A4(a1, a2, a3, 1u);
        v35 = v31;
        v13 = v61;
        v36 = v33;
        v6 = v5 + 64;
        sub_2489837A4(v35, v32, v36, 1u);
        sub_2489837A4(a1, a2, a3, 1u);
        sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

        goto LABEL_46;
      }

      v45 = v26;
      v46 = v27;
      v47 = v28;
      sub_2489837A4(v26, v27, v28, 1u);
      sub_2489837A4(a1, 0, a3, 1u);
      v48 = v45;
      v13 = v61;
      sub_2489837A4(v48, v46, v47, 1u);
      sub_2489837A4(a1, 0, a3, 1u);
      sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

LABEL_59:

      goto LABEL_18;
    }

    v43 = v26;
    v44 = v28;
    sub_2489837A4(v26, 0, v28, 1u);
    sub_2489837A4(a1, a2, a3, 1u);
    sub_2489837A4(v43, 0, v44, 1u);
    sub_2489837A4(a1, a2, a3, 1u);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    if (!a2)
    {
      goto LABEL_62;
    }

    v13 = v61;
LABEL_18:
    v8 = (v8 + 1) & v13;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return v8;
    }
  }

  if (a4)
  {
    v20 = 0;
LABEL_15:
    sub_2489837A4(v26, v27, v28, v20);
LABEL_16:
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
LABEL_17:
    sub_2489837A4(v21, v22, v23, v24);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    goto LABEL_18;
  }

  if ((v26 ^ a1))
  {
    sub_2489837A4(v26, v27, v28, 0);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = 0;
    goto LABEL_17;
  }

  if (!v28)
  {
    v49 = v26;
    v50 = v27;
    sub_2489837A4(v26, v27, 0, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_2489837A4(v49, v50, 0, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);
    if (!a3)
    {
LABEL_62:
      swift_bridgeObjectRelease_n();
      return v8;
    }

    v6 = v5 + 64;
    goto LABEL_18;
  }

  if (!a3)
  {
    v51 = v26;
    v52 = v27;
    v53 = v28;
    sub_2489837A4(v26, v27, v28, 0);
    sub_2489837A4(a1, a2, 0, 0);
    v54 = v51;
    v13 = v61;
    sub_2489837A4(v54, v52, v53, 0);
    sub_2489837A4(a1, a2, 0, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

    v6 = v5 + 64;
    goto LABEL_59;
  }

  if (v27 != a2 || v28 != a3)
  {
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v34 = sub_248A13340();
    sub_2489837A4(v39, v40, v41, 0);
    sub_2489837A4(a1, a2, a3, 0);
    v42 = v40;
    v6 = v5 + 64;
    sub_2489837A4(v39, v42, v41, 0);
    sub_2489837A4(a1, a2, a3, 0);
    sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

    v13 = v61;
LABEL_46:

    if (v34)
    {
      return v8;
    }

    goto LABEL_18;
  }

  v56 = v26;
  sub_2489837A4(v26, a2, a3, 0);
  sub_2489837A4(a1, a2, a3, 0);
  sub_2489837A4(v56, a2, a3, 0);
  sub_2489837A4(a1, a2, a3, 0);
  sub_248983734(v62, &qword_27EEB5850, &unk_248A15970);

LABEL_65:

  return v8;
}

unint64_t sub_2489A9118(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_248A12B60();
      v8 = v7;
      if (v6 == sub_248A12B60() && v8 == v9)
      {
        break;
      }

      v11 = sub_248A13340();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2489A921C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2489A9288(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000004CLL;
      v6 = 0xD00000000000002BLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "haringd.deviceEnrollmentData";
      }

      else
      {
        v6 = 0xD000000000000029;
        v7 = "ssets.notify.iCloudSyncDown";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD00000000000004CLL;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ExtendedDeviceLockState";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD00000000000002BLL : 0xD000000000000029;
        v10 = a1 == 1 ? "haringd.deviceEnrollmentData" : "ssets.notify.iCloudSyncDown";
      }

      else
      {
        v10 = "ExtendedDeviceLockState";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_248A13340();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2489A9400(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2489A946C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2489A9668(v23, v24, v25);
      v19 = sub_248A12B00();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_2489A9668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t NWProtocolFramer.Message.transportItem.getter()
{
  sub_248A12810();
  if (v6)
  {
    v0 = swift_dynamicCast();
    v1 = v4;
    v2 = v0 ^ 1;
    if (!v0)
    {
      v1 = 0;
    }
  }

  else
  {
    sub_2489A9778(v5);
    v1 = 0;
    v2 = 1;
  }

  return v1 | (v2 << 32);
}

uint64_t sub_2489A9778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NWProtocolFramer.Message.init(transportItem:)(int a1)
{
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v1 = sub_248A127F0();

  sub_248A12820();

  return v1;
}

uint64_t sub_2489A9894(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v5 = a1 ? a2 - a1 : 0;
  if (v5 < qword_27EEB5FC0)
  {
    return 0;
  }

  if (a1)
  {
    v7 = *a1;
  }

  else
  {
    v7 = 0;
  }

  *a5 = v7;
  *(a5 + 8) = a1 == 0;
  return qword_27EEB5FC0;
}

uint64_t ArchiveStreamCompression.compress(fileAtURL:toFileURL:)(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5970, &qword_248A161B0);
  MEMORY[0x28223BE20](v3 - 8);
  v120 = &v109 - v4;
  v132 = sub_248A11CA0();
  v130 = *(v132 - 8);
  v5 = MEMORY[0x28223BE20](v132);
  v118 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v125 = &v109 - v7;
  v8 = sub_248A11C90();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x28223BE20](v8);
  v122 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A124D0();
  v129 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v109 - v13;
  v14 = sub_248A11AC0();
  isa = v14[-1].isa;
  v16 = MEMORY[0x28223BE20](v14);
  v115 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v109 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v109 - v21;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v23 = sub_248A122D0();
  v24 = __swift_project_value_buffer(v23, qword_2815105A8);
  v25 = *(isa + 2);
  v117 = a1;
  v25(v22, a1, v14);
  v113 = v25;
  v114 = isa + 16;
  v25(v20, v133, v14);
  v127 = v24;
  v26 = sub_248A122B0();
  v27 = sub_248A12E80();
  v28 = os_log_type_enabled(v26, v27);
  v128 = v10;
  v116 = isa;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v134 = v126;
    *v29 = 136446466;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    LODWORD(v112) = v27;
    v111 = v26;
    v30 = sub_248A132F0();
    v32 = v31;
    v33 = *(isa + 1);
    v33(v22, v14);
    v34 = sub_24897BC00(v30, v32, &v134);
    v35 = v131;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v36 = sub_248A132F0();
    v38 = v37;
    v33(v20, v14);
    v39 = sub_24897BC00(v36, v38, &v134);

    *(v29 + 14) = v39;
    v40 = v111;
    _os_log_impl(&dword_248975000, v111, v112, "Compressing: %{public}s to %{public}s", v29, 0x16u);
    v41 = v126;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v41, -1, -1);
    MEMORY[0x24C1E0A80](v29, -1, -1);
  }

  else
  {

    v33 = *(isa + 1);
    v33(v20, v14);
    v33(v22, v14);
    v35 = v131;
  }

  v42 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v42);
  sub_248A11C20();
  v43 = sub_248A11C10();
  if (!v43)
  {
    v75 = sub_248A122B0();
    v76 = sub_248A12E60();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_248975000, v75, v76, "Error creating write stream", v77, 2u);
      MEMORY[0x24C1E0A80](v77, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v78 = 0;
    swift_willThrow();
    v74 = v128;
    return (*(v129 + 8))(v35, v74);
  }

  v110 = v33;
  v111 = v14;
  v126 = v43;
  type metadata accessor for ArchiveStreamCompressionConfiguration();
  sub_248A120F0();
  v44 = sub_248A120E0();
  v45 = sub_248A12090();
  v47 = v46;

  v48 = v122;
  sub_2489F5524(v45, v47, v122);

  if (qword_27EEB5188 != -1)
  {
    swift_once();
  }

  v49 = qword_27EEB5968;
  v134 = MEMORY[0x277D84F90];
  v50 = sub_2489AC224(&qword_27EEB5980, MEMORY[0x277D832A8], MEMORY[0x277D832B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5988, &unk_248A161B8);
  v51 = sub_2489AC1C0();
  v52 = v125;
  v53 = v132;
  sub_248A12FA0();
  v112 = v49;
  v54 = sub_248A11BF0();
  v55 = v48;
  v56 = v130 + 8;
  v57 = *(v130 + 8);
  v57(v52, v53);
  (*(v123 + 8))(v55, v124);
  if (!v54)
  {
    v79 = sub_248A122B0();
    v80 = sub_248A12E60();
    v81 = os_log_type_enabled(v79, v80);
    v35 = v131;
    if (v81)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_248975000, v79, v80, "Error creating compress stream", v82, 2u);
      MEMORY[0x24C1E0A80](v82, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v83 = 0;
    swift_willThrow();
    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v126, MEMORY[0x277D83238]);

    v74 = v128;
    return (*(v129 + 8))(v35, v74);
  }

  sub_248A11D20();
  v134 = MEMORY[0x277D84F90];
  v130 = v56;
  sub_248A12FA0();
  v124 = v54;
  v58 = v132;
  v59 = sub_248A11CE0();
  v57(v52, v58);
  if (!v59)
  {
    v84 = sub_248A122B0();
    v85 = sub_248A12E60();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_248975000, v84, v85, "Error creating encode stream", v86, 2u);
      MEMORY[0x24C1E0A80](v86, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v123 = v51;
  v125 = v50;
  sub_248A11CB0();
  swift_allocObject();
  if (!sub_248A11CC0())
  {
    v88 = sub_248A122B0();
    v89 = sub_248A12E60();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_248975000, v88, v89, "Unable to create ArchiveHeader.FieldKeySet", v90, 2u);
      MEMORY[0x24C1E0A80](v90, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v91 = 0;
    swift_willThrow();
    sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v59, MEMORY[0x277D832B8]);

LABEL_28:
    v92 = MEMORY[0x277D83238];
    sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v124, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v126, v92);

    v74 = v128;
    v35 = v131;
    return (*(v129 + 8))(v35, v74);
  }

  v60 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v60);
  v61 = v120;
  (*(v129 + 56))(v120, 1, 1, v128);
  v134 = MEMORY[0x277D84F90];
  v62 = v118;
  sub_248A12FA0();
  v125 = v59;
  v63 = v119;
  sub_248A11D00();
  if (v63)
  {
    v57(v62, v58);
    sub_248983734(v61, &qword_27EEB5970, &qword_248A161B0);
    v64 = v63;
    v65 = sub_248A122B0();
    v66 = sub_248A12E60();

    v67 = os_log_type_enabled(v65, v66);
    v35 = v131;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138543362;
      v70 = v63;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v71;
      *v69 = v71;
      _os_log_impl(&dword_248975000, v65, v66, "Unable to write compressed file: %{public}@", v68, 0xCu);
      sub_248983734(v69, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v69, -1, -1);
      MEMORY[0x24C1E0A80](v68, -1, -1);
    }

    swift_willThrow();

    v72 = v128;
    (*(v129 + 8))(v121, v128);
    sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v125, MEMORY[0x277D832B8]);

    v73 = MEMORY[0x277D83238];
    sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v124, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v126, v73);

    v74 = v72;
    return (*(v129 + 8))(v35, v74);
  }

  v57(v62, v58);
  sub_248983734(v61, &qword_27EEB5970, &qword_248A161B0);
  v94 = v115;
  v95 = v111;
  v113(v115, v133, v111);
  v96 = sub_248A122B0();
  v97 = sub_248A12E40();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v134 = v99;
    *v98 = 136446210;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v100 = sub_248A132F0();
    v101 = v94;
    v103 = v102;
    v110(v101, v95);
    v104 = sub_24897BC00(v100, v103, &v134);

    *(v98 + 4) = v104;
    _os_log_impl(&dword_248975000, v96, v97, "Compressed file written to %{public}s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x24C1E0A80](v99, -1, -1);
    MEMORY[0x24C1E0A80](v98, -1, -1);
  }

  else
  {

    v110(v94, v95);
  }

  v105 = v128;
  v106 = *(v129 + 8);
  v106(v121, v128);
  v107 = v131;
  sub_2489ABF64(0x732065646F636E65, 0xED00006D61657274, v125, MEMORY[0x277D832B8]);

  v108 = MEMORY[0x277D83238];
  sub_2489ABF64(0x73736572706D6F63, 0xEF6D616572747320, v124, MEMORY[0x277D83238]);

  sub_2489ABF64(0x7473206574697277, 0xEC0000006D616572, v126, v108);

  return (v106)(v107, v105);
}

uint64_t ArchiveStreamCompression.decompress(archiveAtURL:toFileURL:)(uint64_t a1, _DWORD *a2)
{
  v163 = a2;
  v167 = a1;
  v168[1] = *MEMORY[0x277D85DE8];
  v160 = sub_248A11CA0();
  v166 = *(v160 - 8);
  v2 = MEMORY[0x28223BE20](v160);
  v156 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v159 = &v141 - v4;
  v5 = sub_248A124D0();
  v6 = *(v5 - 8);
  v164 = v5;
  v165 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v158 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v141 - v9;
  v11 = sub_248A11AC0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v141 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v141 - v19;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v21 = sub_248A122D0();
  v22 = __swift_project_value_buffer(v21, qword_2815105A8);
  v23 = *(v12 + 16);
  v23(v20, v167, v11);
  v151 = v23;
  v152 = v12 + 16;
  v23(v18, v163, v11);
  v161 = v22;
  v24 = sub_248A122B0();
  v25 = sub_248A12E80();
  v26 = os_log_type_enabled(v24, v25);
  v162 = v10;
  v154 = v12;
  v155 = v11;
  v153 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v150 = v18;
    v28 = v27;
    v149 = swift_slowAlloc();
    v168[0] = v149;
    *v28 = 136446466;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v148 = v24;
    v29 = sub_248A132F0();
    LODWORD(v147) = v25;
    v31 = v30;
    v32 = *(v12 + 8);
    v32(v20, v11);
    v33 = sub_24897BC00(v29, v31, v168);
    v34 = v165;

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    v35 = v150;
    v36 = sub_248A132F0();
    v38 = v37;
    v150 = v32;
    v32(v35, v11);
    v10 = v162;
    v39 = sub_24897BC00(v36, v38, v168);

    *(v28 + 14) = v39;
    v40 = v148;
    _os_log_impl(&dword_248975000, v148, v147, "Decompressing: %{public}s to %{public}s", v28, 0x16u);
    v41 = v149;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v41, -1, -1);
    v42 = v28;
    v43 = v164;
    MEMORY[0x24C1E0A80](v42, -1, -1);
  }

  else
  {

    v44 = *(v12 + 8);
    v44(v18, v11);
    v150 = v44;
    v44(v20, v11);
    v43 = v164;
    v34 = v165;
  }

  v45 = sub_248A11AA0();
  MEMORY[0x24C1DF1A0](v45);
  sub_248A11C20();
  v46 = sub_248A11C10();
  if (!v46)
  {
    v88 = sub_248A122B0();
    v89 = sub_248A12E60();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_248975000, v88, v89, "Unable to create read stream", v90, 2u);
      MEMORY[0x24C1E0A80](v90, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();
    return (*(v34 + 8))(v10, v43);
  }

  v47 = v46;
  if (qword_27EEB5188 != -1)
  {
    swift_once();
  }

  v48 = qword_27EEB5968;
  v168[0] = MEMORY[0x277D84F90];
  v49 = sub_2489AC224(&qword_27EEB5980, MEMORY[0x277D832A8], MEMORY[0x277D832B0]);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5988, &unk_248A161B8);
  v51 = sub_2489AC1C0();
  v52 = v159;
  v53 = v160;
  sub_248A12FA0();
  v167 = v48;
  v54 = sub_248A11C00();
  v55 = v166 + 1;
  v56 = v166[1];
  v56(v52, v53);
  if (!v54)
  {
    v92 = v47;
    v93 = sub_248A122B0();
    v94 = sub_248A12E60();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v162;
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_248975000, v93, v94, "Unable to create decompress stream", v97, 2u);
      MEMORY[0x24C1E0A80](v97, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v98 = 1;
    swift_willThrow();
    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v92, MEMORY[0x277D83238]);

    v43 = v164;
    v34 = v165;
    v10 = v96;
    return (*(v34 + 8))(v10, v43);
  }

  v149 = v47;
  v57 = sub_248A11D20();
  v168[0] = MEMORY[0x277D84F90];
  v145 = v50;
  v144 = v51;
  v166 = v55;
  v146 = v49;
  sub_248A12FA0();
  v148 = v54;
  v143 = v57;
  v58 = sub_248A11CD0();
  v56(v52, v53);
  v147 = v58;
  if (!v58)
  {
    v99 = v149;
    v100 = sub_248A122B0();
    v101 = sub_248A12E60();
    v102 = os_log_type_enabled(v100, v101);
    v43 = v164;
    v34 = v165;
    if (v102)
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_248975000, v100, v101, "Unable to create decode stream", v103, 2u);
      MEMORY[0x24C1E0A80](v103, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v104 = 1;
    swift_willThrow();
    v105 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v148, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v99, v105);

    goto LABEL_34;
  }

  v142 = v56;
  v59 = sub_248A11AA0();
  v61 = v60;
  v62 = objc_opt_self();
  v63 = [v62 defaultManager];
  v64 = sub_248A12B30();
  v65 = [v63 fileExistsAtPath_];

  if ((v65 & 1) == 0)
  {
    v66 = [v62 defaultManager];
    v67 = sub_248A12B30();
    v168[0] = 0;
    v68 = [v66 createDirectoryAtPath:v67 withIntermediateDirectories:0 attributes:0 error:v168];

    if (!v68)
    {
      v112 = v168[0];

      v113 = sub_248A11A40();

      swift_willThrow();
      v114 = v113;
      v115 = sub_248A122B0();
      v116 = sub_248A12E60();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v117 = 138412290;
        v119 = v113;
        v120 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 4) = v120;
        *v118 = v120;
        _os_log_impl(&dword_248975000, v115, v116, "Unable to create output directory: %@", v117, 0xCu);
        sub_248983734(v118, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v118, -1, -1);
        MEMORY[0x24C1E0A80](v117, -1, -1);
      }

      sub_2489AC16C();
      swift_allocError();
      *v121 = 1;
      swift_willThrow();

      sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v147, MEMORY[0x277D832B8]);

      v122 = MEMORY[0x277D83238];
      sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v148, MEMORY[0x277D83238]);

      sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v149, v122);

      v43 = v164;
      v34 = v165;
      goto LABEL_34;
    }

    v69 = v168[0];
  }

  MEMORY[0x24C1DF1A0](v59, v61);
  v70 = MEMORY[0x277D84F90];
  v168[0] = MEMORY[0x277D84F90];
  v72 = v159;
  v71 = v160;
  sub_248A12FA0();
  v73 = sub_248A11CF0();
  v142(v72, v71);
  if (!v73)
  {
    v106 = sub_248A122B0();
    v107 = sub_248A12E60();
    v108 = os_log_type_enabled(v106, v107);
    v43 = v164;
    v34 = v165;
    if (v108)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_248975000, v106, v107, "Unable to create extract stream", v109, 2u);
      MEMORY[0x24C1E0A80](v109, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v110 = 1;
    swift_willThrow();
    (*(v34 + 8))(v158, v43);
    sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v147, MEMORY[0x277D832B8]);

    v111 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v148, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v149, v111);

    goto LABEL_34;
  }

  v168[0] = v70;
  v74 = v156;
  sub_248A12FA0();
  v75 = v147;
  v167 = v73;
  v76 = v157;
  sub_248A11D10();
  v43 = v164;
  v34 = v165;
  if (v76)
  {
    v142(v74, v71);
    v77 = v76;
    v78 = sub_248A122B0();
    v79 = sub_248A12E60();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      v82 = v76;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_248975000, v78, v79, "Unable to process decode stream to extract stream: %{public}@", v80, 0xCu);
      sub_248983734(v81, &qword_27EEB5600, &unk_248A15210);
      v84 = v81;
      v34 = v165;
      MEMORY[0x24C1E0A80](v84, -1, -1);
      MEMORY[0x24C1E0A80](v80, -1, -1);
    }

    sub_2489AC16C();
    swift_allocError();
    *v85 = 1;
    swift_willThrow();

    v86 = MEMORY[0x277D832B8];
    sub_2489ABF64(0x2074636172747865, 0xEE006D6165727473, v167, MEMORY[0x277D832B8]);

    (*(v34 + 8))(v158, v43);
    sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v75, v86);

    v87 = MEMORY[0x277D83238];
    sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v148, MEMORY[0x277D83238]);

    sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v149, v87);

LABEL_34:
    v10 = v162;
    return (*(v34 + 8))(v10, v43);
  }

  v142(v74, v71);
  v124 = v153;
  v125 = v155;
  v151(v153, v163, v155);
  v126 = sub_248A122B0();
  v127 = sub_248A12E80();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = v124;
    v129 = swift_slowAlloc();
    v163 = v129;
    v166 = swift_slowAlloc();
    v168[0] = v166;
    *v129 = 136446210;
    sub_2489AC224(&qword_27EEB53D0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v130 = v128;
    v131 = sub_248A132F0();
    v133 = v132;
    v150(v130, v125);
    v134 = sub_24897BC00(v131, v133, v168);
    v34 = v165;

    v135 = v163;
    *(v163 + 1) = v134;
    _os_log_impl(&dword_248975000, v126, v127, "Decompressed file written to %{public}s", v135, 0xCu);
    v136 = v166;
    __swift_destroy_boxed_opaque_existential_0(v166);
    MEMORY[0x24C1E0A80](v136, -1, -1);
    MEMORY[0x24C1E0A80](v135, -1, -1);
  }

  else
  {

    v150(v124, v125);
  }

  v137 = v162;
  v138 = MEMORY[0x277D832B8];
  sub_2489ABF64(0x2074636172747865, 0xEE006D6165727473, v167, MEMORY[0x277D832B8]);

  v139 = *(v34 + 8);
  v139(v158, v43);
  sub_2489ABF64(0x732065646F636564, 0xED00006D61657274, v75, v138);

  v140 = MEMORY[0x277D83238];
  sub_2489ABF64(0xD000000000000011, 0x8000000248A19890, v148, MEMORY[0x277D83238]);

  sub_2489ABF64(0x7274732064616572, 0xEB000000006D6165, v149, v140);

  return (v139)(v137, v43);
}

void sub_2489ABEF0()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120A0();

  qword_27EEB5968 = v1;
}

unint64_t sub_2489AC16C()
{
  result = qword_27EEB5978;
  if (!qword_27EEB5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5978);
  }

  return result;
}

unint64_t sub_2489AC1C0()
{
  result = qword_27EEB5990;
  if (!qword_27EEB5990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5988, &unk_248A161B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5990);
  }

  return result;
}

uint64_t sub_2489AC224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2489AC2E0()
{
  result = qword_27EEB5998;
  if (!qword_27EEB5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5998);
  }

  return result;
}

uint64_t sub_2489AC334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2489B1DD0(a3, v25 - v10);
  v12 = sub_248A12D40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2489B1E40(v11);
  }

  else
  {
    sub_248A12D30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_248A12CD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_248A12B90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2489B1E40(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2489B1E40(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2489AC5F4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2489AC654()
{
  v1 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2489AC6A0(uint64_t a1)
{
  v3 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2489AC7A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2489AC814(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___DSNotificationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2489AC8B4;
}

void sub_2489AC8B4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t sub_2489AC93C(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 40) = a3;
  *(v4 + 72) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489ACA18, 0, 0);
}

uint64_t sub_2489ACA18()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v33[0] = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, v33);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD00000000000002FLL, 0x8000000248A19A00, v33);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  [*(v0 + 64) cancelNotificationIfNecessary];
  *(v0 + 112) = 0;
  v11 = *MEMORY[0x277CBECE8];
  v12 = sub_248A12A80();
  v13 = CFUserNotificationCreate(v11, v10, v9, (v0 + 112), v12);
  *(v0 + 88) = v13;

  if (v13)
  {
    v14 = *(v0 + 112) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    v26 = sub_248A12D40();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_248A12D20();
    v27 = v13;
    v28 = v25;
    v29 = sub_248A12D10();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    v30[5] = v27;
    sub_2489AC334(0, 0, v24, &unk_248A16438, v30);

    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *v32 = v0;
    v32[1] = sub_2489ACEE8;

    return MEMORY[0x28215AA68]();
  }

  else
  {
    v15 = sub_248A122B0();
    v16 = sub_248A12E60();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136446466;
      v19 = sub_248A13570();
      v21 = sub_24897BC00(v19, v20, v33);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1026;
      swift_beginAccess();
      *(v17 + 14) = *(v0 + 112);
      _os_log_impl(&dword_248975000, v15, v16, "%{public}s error creating CFUserNotification: %{public}d", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1E0A80](v18, -1, -1);
      MEMORY[0x24C1E0A80](v17, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_2489ACEE8(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2489AD014, 0, 0);
}

uint64_t sub_2489AD014()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2489AD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_248A12D20();
  v5[10] = sub_248A12D10();
  v7 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489AD14C, v7, v6);
}

uint64_t sub_2489AD14C()
{
  v1 = v0[9];
  v2 = v0[8];

  v3 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  v6 = v2 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v8, v7, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = v0[1];

  return v11();
}

uint64_t NotificationController.postGuestUserModeUnavailableNotification(with:)(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v2[50] = swift_getObjectType();
  sub_248A11BE0();
  v2[51] = swift_task_alloc();
  sub_248A12B20();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489AD314, 0, 0);
}

uint64_t sub_2489AD314()
{
  v45 = v0;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v44 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v44);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD00000000000002FLL, 0x8000000248A19900, &v44);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B40;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v11;
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  sub_248A11BD0();
  v15 = sub_248A12B70();
  v16 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(v0 + 384);
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v19;
  v20 = sub_2489AE718(v18);
  *(inited + 120) = v16;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = sub_248A12B60();
  *(inited + 136) = v22;
  v23 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v24 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  result = *MEMORY[0x277D67338];
  if (!*MEMORY[0x277D67338])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = sub_248A12B60();
  v27 = v26;
  *(v0 + 216) = v23;
  *(v0 + 192) = 1;
  sub_248983794((v0 + 192), (v0 + 224));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v24;
  sub_2489B04B4((v0 + 224), v25, v27, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D67360];
  if (!*MEMORY[0x277D67360])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v44;
  v30 = sub_248A12B60();
  v32 = v31;
  *(v0 + 280) = v23;
  *(v0 + 256) = 1;
  sub_248983794((v0 + 256), (v0 + 288));
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v29;
  sub_2489B04B4((v0 + 288), v30, v32, v33);

  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v34 = v44;
  v35 = sub_248A12B60();
  v37 = v36;
  sub_248A12B10();
  v38 = [v13 bundleForClass_];
  sub_248A11BD0();
  v39 = sub_248A12B70();
  *(v0 + 344) = v16;
  *(v0 + 320) = v39;
  *(v0 + 328) = v40;
  sub_248983794((v0 + 320), (v0 + 352));
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v34;
  sub_2489B04B4((v0 + 352), v35, v37, v41);

  v42 = v44;
  *(v0 + 424) = v44;
  v43 = swift_task_alloc();
  *(v0 + 432) = v43;
  *v43 = v0;
  v43[1] = sub_2489AD858;

  return sub_2489AC93C(v42, 3, 0.0);
}

uint64_t sub_2489AD858(uint64_t a1)
{
  *(*v1 + 440) = a1;

  return MEMORY[0x2822009F8](sub_2489AD978, 0, 0);
}

uint64_t sub_2489AD978()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 440);

  return v1(v2);
}

uint64_t NotificationController.postUnableToPlayProtectedContent()()
{
  v1[46] = v0;
  v1[47] = swift_getObjectType();
  sub_248A11BE0();
  v1[48] = swift_task_alloc();
  sub_248A12B20();
  v1[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489ADAAC, 0, 0);
}

uint64_t sub_2489ADAAC()
{
  v41 = v0;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9D98);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136446466;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v40);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_24897BC00(0xD000000000000022, 0x8000000248A19970, &v40);
    _os_log_impl(&dword_248975000, v2, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A16300;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v11;
  sub_248A12B10();
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  sub_248A11BD0();
  v15 = sub_248A12B70();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v17;
  sub_248A12B10();
  v18 = [v13 bundleForClass_];
  sub_248A11BD0();
  v19 = sub_248A12B70();
  v20 = MEMORY[0x277D837D0];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v19;
  *(inited + 104) = v21;
  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = sub_248A12B60();
  *(inited + 136) = v22;
  sub_248A12B10();
  v23 = [v13 bundleForClass_];
  sub_248A11BD0();
  v24 = sub_248A12B70();
  *(inited + 168) = v20;
  *(inited + 144) = v24;
  *(inited + 152) = v25;
  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = sub_248A12B60();
  *(inited + 184) = v26;
  v27 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v28 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  result = *MEMORY[0x277D67338];
  if (!*MEMORY[0x277D67338])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = sub_248A12B60();
  v31 = v30;
  *(v0 + 264) = v27;
  *(v0 + 240) = 1;
  sub_248983794((v0 + 240), (v0 + 272));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v28;
  sub_2489B04B4((v0 + 272), v29, v31, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D67360];
  if (!*MEMORY[0x277D67360])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v33 = v40;
  v34 = sub_248A12B60();
  v36 = v35;
  *(v0 + 328) = v27;
  *(v0 + 304) = 1;
  sub_248983794((v0 + 304), (v0 + 336));
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v33;
  sub_2489B04B4((v0 + 336), v34, v36, v37);

  v38 = v40;
  *(v0 + 400) = v40;
  v39 = swift_task_alloc();
  *(v0 + 408) = v39;
  *v39 = v0;
  v39[1] = sub_2489AE018;

  return sub_2489AC93C(v38, 3, 0.0);
}

uint64_t sub_2489AE018(uint64_t a1)
{
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_2489AE138, 0, 0);
}

uint64_t sub_2489AE138()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 416);

  return v1(v2);
}

id NotificationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationController.init()()
{
  *&v0[OBJC_IVAR___DSNotificationController_activeNotification] = 0;
  *&v0[OBJC_IVAR___DSNotificationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NotificationController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotificationController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall NotificationController.cancelNotificationIfNecessary()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  if (qword_27EEB5190 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9D98);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(0xD00000000000001FLL, 0x8000000248A199A0, &v19);
    _os_log_impl(&dword_248975000, v6, v7, "%{public}s %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_248A12D20();
  v14 = v1;
  v15 = sub_248A12D10();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  sub_2489AC334(0, 0, v4, &unk_248A16338, v16);
}

uint64_t sub_2489AE5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_248A12D20();
  *(v4 + 48) = sub_248A12D10();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489AE63C, v6, v5);
}

uint64_t sub_2489AE63C()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    CFUserNotificationCancel(v3);
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2489AE718(unint64_t a1)
{
  v2 = sub_248A11BE0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_248A12B20();
  MEMORY[0x28223BE20](v3 - 8);
  result = 0x6E776F6E6B6E55;
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || a1 == 3)
  {
LABEL_6:
    sub_248A12B10();
    _s30DeviceSharingFrameworkSentinelCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_248A11BD0();
    return sub_248A12B70();
  }

  return result;
}

uint64_t DSSGuestUserModeAppUnavailable.description.getter(uint64_t a1)
{
  v1 = 0x616E6F73726550;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x656D697465636146;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_2489AEA00()
{
  v1 = *v0;
  v2 = 0x616E6F73726550;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0x656D697465636146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 42;
  }
}

uint64_t DSSGuestUserModeUnavailableReason.description.getter(uint64_t a1)
{
  v1 = 0x616E6F73726550;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x656D697465636146;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6B73696420776F4CLL;
  }
}

uint64_t sub_2489AEAF4()
{
  v1 = *v0;
  v2 = 0x616E6F73726550;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0x656D697465636146;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6B73696420776F4CLL;
  }
}

uint64_t sub_2489AEB7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489AEC74;

  return v6(a1);
}

uint64_t sub_2489AEC74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489AED6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_248A12480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
  v39 = v4;
  result = sub_248A13230();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2489B1D88(&unk_27EEB61C0, MEMORY[0x277D04ED0], MEMORY[0x277D04ED8]);
      result = sub_248A12AE0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2489AF148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
  v33 = v4;
  result = sub_248A13230();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_248983794(v24, v34);
      }

      else
      {
        sub_24897C864(v24, v34);
      }

      sub_248A13430();
      sub_248A12BB0();
      result = sub_248A13460();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_248983794(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2489AF400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
  v42 = v4;
  result = sub_248A13230();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v40 = result;
    v41 = v5;
    while (1)
    {
      if (!v12)
      {
        v20 = v8;
        while (1)
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v8 >= v13)
          {
            break;
          }

          v21 = v9[v8];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v44 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v42 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_41;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v38;
        }

        *(v5 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 32 * v22;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 24);
      v27 = (*(v5 + 56) + 24 * v22);
      v28 = v27[1];
      v43 = *v27;
      v45 = v27[2];
      v46 = *(v23 + 16);
      if ((v42 & 1) == 0)
      {
        sub_2489837A4(v25, v24, v46, v26);

        v29 = v45;
      }

      sub_248A13430();
      if (v26)
      {
        if (v26 != 1)
        {
          sub_248A12BB0();

          goto LABEL_25;
        }

        sub_248A12BB0();
        v30 = v24;
      }

      else
      {
        sub_248A12BB0();
        v30 = v46;
      }

      if (v30)
      {
        sub_2489837A4(v25, v24, v46, v26);
        sub_248A12BB0();
      }

      sub_248A12BB0();
      sub_2489837C4(v25, v24, v46, v26);
      v7 = v40;
      v5 = v41;
LABEL_25:
      result = sub_248A13460();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v28;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 32 * v15;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = v46;
      *(v17 + 24) = v26;
      v18 = (*(v7 + 56) + 24 * v15);
      v12 = v44;
      *v18 = v43;
      v18[1] = v16;
      v18[2] = v45;
      ++*(v7 + 16);
    }
  }

LABEL_41:
  *v3 = v7;
  return result;
}

uint64_t sub_2489AF8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
  result = sub_248A13230();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_248978948(v21, v31);
      }

      else
      {
        sub_248997228(v21, v31);
      }

      result = sub_248A13420();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_248978948(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}