uint64_t sub_1E656442C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E656466C;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E6564584;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6564584()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E656466C()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E65646E4, v1, 0);
}

uint64_t sub_1E65646E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65647C4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B198, &qword_1E660B958);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65D9C78();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v1[9] = swift_task_alloc();
  v4 = sub_1E65D8DE8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6564980, v0, 0);
}

uint64_t sub_1E6564980()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[2] + 128), *(v0[2] + 152));
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[9], &qword_1ED079F08, &qword_1E660B960);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    __swift_project_boxed_opaque_existential_1((v8 + 168), *(v8 + 192));
    sub_1E65DD548();

    return MEMORY[0x1EEE6DFA0](sub_1E6564BB0, 0, 0);
  }
}

uint64_t sub_1E6564BB0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 176;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E6564CC0;
  v4 = v0[8];
  v5 = v0[6];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65686D4, v2, v5);
}

uint64_t sub_1E6564CC0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E6564FF4;
    v4 = 0;
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    v9 = v2[3];
    v10 = v2[4];
    v11 = v2[2];
    (*(v6 + 8))(v5, v7);
    (*(v10 + 8))(v8, v9);
    v3 = sub_1E6564E38;
    v4 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6564E38()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1E6564EC8;

  return sub_1E6562BD4();
}

uint64_t sub_1E6564EC8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1E6565114;
  }

  else
  {
    v4 = sub_1E656506C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6564FF4()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E6568B64, v1, 0);
}

uint64_t sub_1E656506C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6565114()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E65651B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B188, &qword_1E660B938);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6565288, v2, 0);
}

uint64_t sub_1E6565288()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 168), *(*(v0 + 32) + 192));
  sub_1E65DD558();

  return MEMORY[0x1EEE6DFA0](sub_1E6565324, 0, 0);
}

uint64_t sub_1E6565324()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 182;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_1E65D92D8();
  *v3 = v0;
  v3[1] = sub_1E653B6A4;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6567C38, v2, v4);
}

uint64_t sub_1E656543C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B200, &qword_1E660B9D0);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656550C, a2, 0);
}

uint64_t sub_1E656550C()
{
  v1 = v0[3];
  if (*(v1 + 248) == 3)
  {
    v2 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620], MEMORY[0x1E69CC628]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CC618], v2);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    *(v1 + 248) = 1;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1E65656A8;

    return sub_1E6561E48();
  }
}

uint64_t sub_1E65656A8()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_1E6568B68;
  }

  else
  {
    v4 = sub_1E65657E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65657E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B208, &qword_1E660B9D8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65658C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E656543C(a1, v1);
}

uint64_t sub_1E6565964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6561104();
}

uint64_t sub_1E65659F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565964();
}

uint64_t sub_1E6565A84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6561538(a1);
}

uint64_t sub_1E6565B20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6565A84(a1);
}

uint64_t sub_1E6565BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6561E48();
}

uint64_t sub_1E6565C4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565BBC();
}

uint64_t sub_1E6565CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6562288(a1);
}

uint64_t sub_1E6565D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6565CDC(a1);
}

uint64_t sub_1E6565E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6562BD4();
}

uint64_t sub_1E6565E9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565E0C();
}

uint64_t sub_1E6565F2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65651B8(a1, a2);
}

uint64_t sub_1E6565FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6565F2C(a1, a2);
}

uint64_t sub_1E6566084(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6566124, a2, 0);
}

uint64_t sub_1E6566124()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 128), *(v0[3] + 152));
  sub_1E65DE0D8();
  v2 = sub_1E65D9FF8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v0[4], &unk_1ED07B290, &qword_1E660B9C0);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[4], v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6566310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6566084(a1, v1);
}

uint64_t sub_1E65663AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656644C, a2, 0);
}

uint64_t sub_1E656644C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 128), *(v0[3] + 152));
  sub_1E65DE0E8();
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v0[4], &qword_1ED079F08, &qword_1E660B960);
    v4 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CBF88], v4);
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[4], v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6566638(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65663AC(a1, v1);
}

uint64_t sub_1E65666D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E656344C();
}

uint64_t sub_1E6566764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65666D4();
}

uint64_t sub_1E65667F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6566810, a2, 0);
}

uint64_t sub_1E6566810()
{
  swift_getObjectType();
  sub_1E65DE168();
  sub_1E65D99E8();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65668E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65667F4(a1, v1);
}

uint64_t sub_1E656697C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6566A1C, a2, 0);
}

uint64_t sub_1E6566A1C()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  sub_1E65DE0D8();
  v3 = sub_1E65D9FF8();
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  sub_1E5DFE50C(v1, &unk_1ED07B290, &qword_1E660B9C0);
  if (v4 == 1)
  {
    v5 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90], MEMORY[0x1E69CBF98]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69CBF88], v5);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
    sub_1E65DE1D8();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6566C04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E656697C(a1, v1);
}

uint64_t sub_1E6566C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65636AC();
}

uint64_t sub_1E6566D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6566C9C();
}

uint64_t sub_1E6566DBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6563E44(a1);
}

uint64_t sub_1E6566E54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6566DBC(a1);
}

uint64_t sub_1E6566EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65647C4();
}

uint64_t sub_1E6566F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6566EEC();
}

unint64_t sub_1E6567020()
{
  result = qword_1ED07B180;
  if (!qword_1ED07B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B180);
  }

  return result;
}

uint64_t sub_1E6567074(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_1E65670A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6568850;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6567480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B198, &qword_1E660B958);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6568704;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E656785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B188, &qword_1E660B938);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65686AC;
  *(v34 + 24) = v32;

  v33(sub_1E6557D50, v34);
}

uint64_t sub_1E6567C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9FF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C8, &qword_1E660B990);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B1C8, &qword_1E660B990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6567FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9C78();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B0, &unk_1E660B970);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B1B0, &unk_1E660B970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6568338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D92D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9D0, &qword_1E660B950);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B9D0, &qword_1E660B950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E656872C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E65687DC(uint64_t a1)
{
  v2 = sub_1E65D99E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6568878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E65688DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8);

  return sub_1E6560B34(a1);
}

uint64_t sub_1E6568998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6568A74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0);

  return sub_1E6561000(a1);
}

void sub_1E6568AF0()
{
  v1 = *(v0 + 120);
  os_unfair_lock_lock((v1 + 24));
  sub_1E6568B48((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1E6568B7C()
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v53 = *(v47 - 8);
  v46 = *(v53 + 64);
  v1 = MEMORY[0x1EEE9AC00](v47);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v40 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B228, &qword_1E660BA70);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v40 - v10;
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain();
  v11 = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE0C8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1E65DDF68();
  swift_allocObject();
  swift_weakInit();
  v45 = v11;
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1E65DE028();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v52 = v0;
  v40 = v6;
  sub_1E65DD6A8();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E6569E1C;
  *(v13 + 24) = v12;
  v14 = v53;
  v15 = *(v53 + 16);
  v43 = v53 + 16;
  v44 = v15;
  v16 = v3;
  v17 = v3;
  v18 = v47;
  v15(v17, v6, v47);
  v19 = *(v14 + 80);
  v42 = (v19 + 16) & ~v19;
  v20 = (v46 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v41 = *(v14 + 32);
  v22 = v16;
  v23 = v18;
  v41(v21 + ((v19 + 16) & ~v19), v22, v18);
  v24 = (v21 + v20);
  *v24 = sub_1E646123C;
  v24[1] = v13;
  v25 = v48;
  sub_1E65DACA8();
  v26 = *(v14 + 8);
  v53 = v14 + 8;
  v46 = v26;
  v27 = v40;
  v26(v40, v23);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v45;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E656A17C;
  *(v31 + 24) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1E656A184;
  *(v32 + 24) = v31;
  v44(v27, v25, v23);
  v33 = swift_allocObject();
  v41(v33 + v42, v27, v23);
  v34 = (v33 + v20);
  *v34 = sub_1E656BF1C;
  v34[1] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B230, &qword_1E660BA78);
  v35 = v49;
  sub_1E65DACA8();
  v46(v25, v23);
  v36 = v50;
  v37 = sub_1E65DACC8();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_1E656C0B8, v38);

  (*(v51 + 8))(v35, v36);
  *(v52 + 80) = v30;
}

uint64_t sub_1E6569240(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1E65DE0B8();
    v9 = *(v7 + 120);
    MEMORY[0x1EEE9AC00](v8);
    *(&v10 - 2) = v5;
    *(&v10 - 1) = v7;
    os_unfair_lock_lock((v9 + 24));
    sub_1E656C460((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E6569394(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1E65DDF58();
    v9 = *(v7 + 120);
    MEMORY[0x1EEE9AC00](v8);
    *(&v10 - 2) = v5;
    *(&v10 - 1) = v7;
    os_unfair_lock_lock((v9 + 24));
    sub_1E656C430((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E65694E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1E65DE018();
    v9 = *(v7 + 120);
    MEMORY[0x1EEE9AC00](v8);
    *(&v10 - 2) = v5;
    *(&v10 - 1) = v7;
    os_unfair_lock_lock((v9 + 24));
    sub_1E656C108((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1E656963C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(result + 104))();
  }

  return result;
}

double sub_1E65696AC@<D0>(uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_1E65DE228();
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1E65DDE18();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E65697FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(result + 104))();
  }

  return result;
}

uint64_t sub_1E656985C(void *a1, uint64_t a2)
{

  *(a2 + 80) = 0;

  *a1 = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1E65698B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B240, &qword_1E660BA88);
  v8 = sub_1E65D8DE8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E65EA670;
  (*(v9 + 16))(v11 + v10, a2, v8);
  a4(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  return (*(a3 + 88))(*a1);
}

uint64_t sub_1E6569A08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  if (*(*v1 + 16))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(sub_1E65D8DE8() - 8);
      v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        sub_1E656AF70(v9, v6);
        result = sub_1E5DFE50C(v6, &qword_1ED079F08, &qword_1E660B960);
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1E6569B34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v14[2] = a2;

  v7 = sub_1E656B4E8(sub_1E656C124, v14, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B240, &qword_1E660BA88);
  v8 = sub_1E65D8DE8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E65EA670;
  (*(v9 + 16))(v11 + v10, a2, v8);
  v12 = sub_1E656C28C(v11, v7);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  *a1 = v12;
  return (*(a3 + 88))(v12);
}

uint64_t sub_1E6569CD0()
{
  v0 = sub_1E65D8D98();
  v2 = v1;
  if (v0 == sub_1E65D8D98() && v2 == v3)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6569D80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E6569E38(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v5);
  v6 = 0;
  a1(&v5);
  return sub_1E5DFE50C(&v5, &qword_1ED07B238, &qword_1E660BA80);
}

uint64_t sub_1E6569EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_1E656C0C0, v10);
}

uint64_t sub_1E6569FB8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B228, &qword_1E660BA70);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  if (a2)
  {
    v20[0] = a1;
    v21 = 1;
    v16 = a1;
    a5(v20);
    return sub_1E5DFE50C(v20, &qword_1ED07B238, &qword_1E660BA80);
  }

  else
  {
    a3(v13);
    v18 = sub_1E65DACC8();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1E656C490, v19);

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1E656A1B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
  v33 = a2;
  v11 = sub_1E65E5B38();
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
      sub_1E656C3EC(&qword_1ED07B248, MEMORY[0x1E69CBBA8]);
      v21 = sub_1E65E5B98();
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
    sub_1E656A7B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E656A46C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E65D8DE8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  result = sub_1E65E6868();
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
      sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E656A7B4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E656A46C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E656AA30();
      goto LABEL_12;
    }

    sub_1E656AC68(v10 + 1);
  }

  v12 = *v3;
  sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
  v13 = sub_1E65E5B38();
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
      sub_1E656C3EC(&qword_1ED07B248, MEMORY[0x1E69CBBA8]);
      v21 = sub_1E65E5B98();
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
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E656AA30()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  v6 = *v0;
  v7 = sub_1E65E6858();
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

uint64_t sub_1E656AC68(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65D8DE8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  v7 = sub_1E65E6868();
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
      sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E656AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E65D8DE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
  v31 = a1;
  v10 = sub_1E65E5B38();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1E656C3EC(&qword_1ED07B248, MEMORY[0x1E69CBBA8]);
      v19 = sub_1E65E5B98();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E656AA30();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1E656B1F0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1E656B1F0(int64_t a1)
{
  v3 = sub_1E65D8DE8();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1E65E6758();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v35 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v16 = v12;
      v17 = *(v14 + 56);
      v36 = v14;
      v33 = (v14 - 8);
      v34 = v15;
      do
      {
        v18 = v9;
        v19 = v17;
        v20 = v17 * v11;
        v34(v7, *(v8 + 48) + v17 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v21;
        sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
        v24 = sub_1E65E5B38();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v16 = v22;
        if (a1 >= v35)
        {
          if (v25 >= v35 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v19;
            v29 = v19 * a1;
            if (v19 * a1 < v20 || v28 + v19 * a1 >= (v28 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v35 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v19;
LABEL_5:
        v11 = (v11 + 1) & v16;
        v9 = v18;
      }

      while (((*(v18 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void *sub_1E656B4E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    MEMORY[0x1EEE9AC00](v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1E656BB70(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_1E656BB70(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_1E656BAE0(v32, v11, a3, v43);

  result = MEMORY[0x1E694F1C0](v32, -1, -1);
  if (!v4)
  {
    return v33;
  }

  return result;
}

uint64_t sub_1E656B880(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1E65D8DE8();
  result = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_1E656BB70(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E656BAE0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E656B880(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E656BB70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1E65D8DE8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  result = sub_1E65E6888();
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
    sub_1E656C3EC(&qword_1ED079748, MEMORY[0x1E69CBBA0]);
    result = sub_1E65E5B38();
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

uint64_t sub_1E656BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B230, &qword_1E660BA78);

  return sub_1E65DACA8();
}

uint64_t objectdestroy_9Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E656BFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_1E656C144(uint64_t a1)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1E656A1B4(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1E656C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8DE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_1E656A1B4(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_1E656C3EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E65D8DE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static RemoteBrowsingService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660BA98;
  a1[1] = 0;
  a1[2] = &unk_1E660BAA0;
  a1[3] = 0;
  a1[4] = &unk_1E660BAA8;
  a1[5] = 0;
  a1[6] = &unk_1E660BAB0;
  a1[7] = 0;
  a1[8] = &unk_1E660BAB8;
  a1[9] = 0;
  a1[10] = &unk_1E660BAC0;
  a1[11] = 0;
  a1[12] = &unk_1E660BAC8;
  a1[13] = 0;
  a1[14] = &unk_1E660BAD0;
  a1[15] = 0;
  a1[16] = &unk_1E660BAD8;
  a1[17] = 0;
  a1[18] = &unk_1E660BAE0;
  a1[19] = 0;
  a1[20] = &unk_1E660BAE8;
  a1[21] = 0;
  a1[22] = &unk_1E660BAF0;
  a1[23] = 0;
  a1[24] = &unk_1E660BAF8;
  a1[25] = 0;
  a1[26] = &unk_1E660BB00;
  a1[27] = 0;
  a1[28] = &unk_1E660BB08;
  a1[29] = 0;
}

uint64_t sub_1E656C5C4(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B200, &qword_1E660B9D0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656C690, 0, 0);
}

uint64_t sub_1E656C690()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B208, &qword_1E660B9D8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E656C774(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1D8, &qword_1E660B998);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656C840, 0, 0);
}

uint64_t sub_1E656C840()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for RemoteBrowsingGuestPairingState(0);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E656C938()
{
  sub_1E65D92C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E656C9BC()
{
  sub_1E65D9FE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E656CA40()
{
  sub_1E65D8DD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E656CAA4(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B258, &unk_1E660BB10);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656CB70, 0, 0);
}

uint64_t sub_1E656CB70()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65D99E8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t RemoteBrowsingService.beginDiscoveringRemoteParticipants.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoteBrowsingService.endDiscoveringRemoteParticipants.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RemoteBrowsingService.beginAdvertisingGuestPairing.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RemoteBrowsingService.endAdvertisingGuestPairing.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RemoteBrowsingService.requestEnvironmentWithConfirmation.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RemoteBrowsingService.requestEnvironmentUpdate.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t RemoteBrowsingService.requestRemoteBrowsingServiceSubscription.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveEnvironment.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveParticipant.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t RemoteBrowsingService.appendRemoteBrowsingJournalEntry.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t RemoteBrowsingService.showWorkoutPlanCreationPrompt.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t RemoteBrowsingService.showPersonalizedWorkoutPlanCreationPrompt.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveWorkoutPlan.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1E656CF58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1E656CFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E656D01C()
{
  v1[4] = v0;
  v2 = sub_1E65D8F68();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0);
  v1[8] = swift_task_alloc();
  v3 = sub_1E65D9FF8();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656D170, 0, 0);
}

uint64_t sub_1E656D170()
{
  v1 = v0[4];
  if (*(v1 + 144) <= 2u)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    v2 = sub_1E65DDF88();
    if (!v3)
    {
LABEL_5:
      v6 = v0[4];
      v7 = v6[3];
      v8 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *v9 = v0;
      v10 = sub_1E656D538;
LABEL_8:
      v9[1] = v10;

      return MEMORY[0x1EEE34888](v7, v8);
    }

    v4 = v2;
    v5 = v3;
    v0[2] = v2;
    v0[3] = v3;
    sub_1E5F9AEA8();
    if (sub_1E65E66F8())
    {

      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  __swift_project_boxed_opaque_existential_1((v1 + 104), *(v1 + 128));
  sub_1E65DE0D8();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = v0[4];
    sub_1E656F1C8(v0[8]);
    v7 = v14[3];
    v8 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v7);
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v10 = sub_1E656D6AC;
    goto LABEL_8;
  }

  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[5];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  sub_1E65D9FD8();
  v4 = sub_1E65D8F58();
  v5 = v18;
  (*(v16 + 8))(v15, v17);
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  if (v5)
  {
    (*(v20 + 8))(v0[11], v0[9]);
LABEL_13:

    v22 = v0[1];

    return v22(v4, v5);
  }

  v23 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8], MEMORY[0x1E69CADD0]);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69CADB0], v23);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1E656D538(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  v9 = *(v6 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1E656D6AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  v9 = *(v6 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1E656D820()
{
  v1[2] = v0;
  v2 = sub_1E65E38D8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656D8E0, 0, 0);
}

uint64_t sub_1E656D8E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD88], v4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1E656D9D0;
  v8 = v0[5];

  return MEMORY[0x1EEE34880](v8, v5, v6);
}

uint64_t sub_1E656D9D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1E653C3B0;
  }

  else
  {
    v7 = sub_1E656DB44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E656DB44()
{
  v1 = [*(v0 + 56) identifier];
  if (v1)
  {
    v2 = v1;
    sub_1E65E5C68();
  }

  v3 = *(v0 + 56);
  v4 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8], MEMORY[0x1E69CADD0]);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CAD98], v4);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E656DD10()
{

  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E698CD28]) initWithAccount:v0[7] bag:*(v0[2] + 40)];
  v0[11] = v1;
  sub_1E65E3988();
  v2 = sub_1E65E5C48();

  [v1 setSubscriptionType_];

  return MEMORY[0x1EEE6DFA0](sub_1E656DE38, 0, 0);
}

uint64_t sub_1E656DE38()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1E656DEAC()
{
  v1[6] = v0;
  v2 = sub_1E65E3B68();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656DF6C, 0, 0);
}

uint64_t sub_1E656DF6C()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1E656E024;

  return MEMORY[0x1EEE348A8](v3, v2);
}

uint64_t sub_1E656E024(void *a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E656E17C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1E656E17C(uint64_t a1)
{
  v23 = v1;
  v2 = v1[11];
  sub_1E65DE348();
  v3 = v2;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[8];
    v6 = v1[9];
    v8 = v1[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x1E694E6C0](v1[3], v1[4]);
    v13 = sub_1E5DFD4B0(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Account required, fetch failed with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[8];
    v14 = v1[9];
    v16 = v1[7];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v1[11];
  v18 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8], MEMORY[0x1E69CADD0]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x1E69CAD90], v18);
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_1E656E410()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E6531170;

  return MEMORY[0x1EEE348A8](v3, v2);
}

uint64_t sub_1E656E4C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E656E3F0(v0 + 16);
}

uint64_t sub_1E656E57C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34890](v2, v3);
}

uint64_t sub_1E656E630()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E656E55C(v0 + 16);
}

uint64_t sub_1E656E6C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656E6E4, 0, 0);
}

uint64_t sub_1E656E6E4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E61A482C;
  v5 = v0[2];

  return MEMORY[0x1EEE34898](v5, v2, v3);
}

uint64_t sub_1E656E7A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E656E6C4(a1, v1 + 16);
}

uint64_t sub_1E656E838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656E858, 0, 0);
}

uint64_t sub_1E656E858()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 48), *(*(v0 + 24) + 72));
  if (sub_1E65DDF78())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_1E65E38E8();
    sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8], MEMORY[0x1E69CADD0]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69CADC0], v3);
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E656E9BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E656E838(a1, v1 + 16);
}

uint64_t sub_1E656EA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E656EAE4;

  return sub_1E656D01C();
}

uint64_t sub_1E656EAE4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1E656EBF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E621FCB8;

  return sub_1E656EA54();
}

uint64_t sub_1E656EC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E656D820();
}

uint64_t sub_1E656ED18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E656EC88();
}

uint64_t sub_1E656EDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656EDCC, 0, 0);
}

uint64_t sub_1E656EDCC()
{
  swift_getObjectType();
  sub_1E65E38F8();
  sub_1E656F180(&qword_1EE2D5C38, MEMORY[0x1E69CADE0], MEMORY[0x1E69CADD8]);
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E656EECC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E656EDAC(a1, v1 + 16);
}

uint64_t sub_1E656EF68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E656DEAC();
}

uint64_t sub_1E656EFF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E656EF68();
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E656F0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1E656F108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E656F180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E656F1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AccountService.init(fetchCurrentAccount:fetchPrimaryAccount:fetchMatchingAccount:fetchUserContact:fetchUserFirstName:makeSubscriptionManagementViewController:makeAccountChangedStream:requireAccount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

uint64_t AccountService.fetchCurrentAccount.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountService.fetchPrimaryAccount.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountService.fetchMatchingAccount.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AccountService.fetchUserContact.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AccountService.fetchUserFirstName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AccountService.makeSubscriptionManagementViewController.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AccountService.makeAccountChangedStream.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AccountService.requireAccount.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void static AccountService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660BDB0;
  a1[1] = 0;
  a1[2] = &unk_1E660BDB8;
  a1[3] = 0;
  a1[4] = &unk_1E660BDC0;
  a1[5] = 0;
  a1[6] = &unk_1E660BDC8;
  a1[7] = 0;
  a1[8] = &unk_1E660BDD0;
  a1[9] = 0;
  a1[10] = &unk_1E660BDD8;
  a1[11] = 0;
  a1[12] = &unk_1E660BDE0;
  a1[13] = 0;
  a1[14] = &unk_1E660BDE8;
  a1[15] = 0;
}

uint64_t sub_1E656F4B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6959A28]) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E656F548()
{
  v1 = sub_1E65E38E8();
  sub_1E647871C();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CADC0], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E656F648()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E656F6DC, v2, v1);
}

uint64_t sub_1E656F6DC()
{

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PrivacyPreferenceService.queryNoticePrivacyPreference.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivacyPreferenceService.updateNoticePrivacyPreference.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyPreferenceService.queryOptInPrivacyPreference.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyPreferenceService.updateOptInPrivacyPreference.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PrivacyPreferenceService.queryPersonalizationPrivacyPreference.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PrivacyPreferenceService.updatePersonalizationPrivacyPreference.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1E656F8AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B450, &unk_1E660BFC0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656F978, v1, 0);
}

uint64_t sub_1E656F978()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD628();

  return MEMORY[0x1EEE6DFA0](sub_1E656FA0C, 0, 0);
}

uint64_t sub_1E656FA0C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 22;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65D9BA8();
  *v3 = v0;
  v3[1] = sub_1E656FB24;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572AD8, v2, v4);
}

uint64_t sub_1E656FB24()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65231C0, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E656FCA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656FD74, v1, 0);
}

uint64_t sub_1E656FD74()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD648();

  return MEMORY[0x1EEE6DFA0](sub_1E656FE10, 0, 0);
}

uint64_t sub_1E656FE10()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 26;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E656FF20;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572B1C, v2, v4);
}

uint64_t sub_1E656FF20()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E65231C0;
    v4 = 0;
  }

  else
  {
    v5 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_1E6572B18;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6570078(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B438, &qword_1E660BFA8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6570144, v1, 0);
}

uint64_t sub_1E6570144()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD608();

  return MEMORY[0x1EEE6DFA0](sub_1E65701D8, 0, 0);
}

uint64_t sub_1E65701D8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 30;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65D9998();
  *v3 = v0;
  v3[1] = sub_1E6549180;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572A00, v2, v4);
}

uint64_t sub_1E65702F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65703BC, v1, 0);
}

uint64_t sub_1E65703BC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD638();

  return MEMORY[0x1EEE6DFA0](sub_1E6570458, 0, 0);
}

uint64_t sub_1E6570458()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 34;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E654D1D0;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572B1C, v2, v4);
}

uint64_t sub_1E6570568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B420, &qword_1E660BF90);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6570634, v1, 0);
}

uint64_t sub_1E6570634()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD658();

  return MEMORY[0x1EEE6DFA0](sub_1E65706C8, 0, 0);
}

uint64_t sub_1E65706C8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 38;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1E65DA988();
  *v3 = v0;
  v3[1] = sub_1E656FB24;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65729A8, v2, v4);
}

uint64_t sub_1E65707E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65708AC, v1, 0);
}

uint64_t sub_1E65708AC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 128), *(*(v0 + 24) + 152));
  sub_1E65DD668();

  return MEMORY[0x1EEE6DFA0](sub_1E6570948, 0, 0);
}

uint64_t sub_1E6570948()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 42;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E656FF20;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657177C, v2, v4);
}

uint64_t sub_1E6570A58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6570A78, 0, 0);
}

uint64_t sub_1E6570A78()
{
  sub_1E65DE2A8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6570ADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E656F8AC(a1);
}

uint64_t sub_1E6570B78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570ADC(a1);
}

uint64_t sub_1E6570C14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E656FCA8(a1);
}

uint64_t sub_1E6570CAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570C14(a1);
}

uint64_t sub_1E6570D44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570078(a1);
}

uint64_t sub_1E6570DE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570D44(a1);
}

uint64_t sub_1E6570E7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65702F0(a1);
}

uint64_t sub_1E6570F14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570E7C(a1);
}

uint64_t sub_1E6570FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6570568(a1);
}

uint64_t sub_1E6571048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6570FAC(a1);
}

uint64_t sub_1E65710E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65707E0(a1);
}

uint64_t sub_1E657117C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65710E4(a1);
}

uint64_t sub_1E6571214(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6571230, a2, 0);
}

uint64_t sub_1E6571230()
{
  swift_getObjectType();
  sub_1E65DE2B8();
  sub_1E65DA988();
  sub_1E65DDE28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6571304(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6571214(a1, v1);
}

uint64_t sub_1E65713A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B450, &unk_1E660BFC0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6572AF0;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6571794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B438, &qword_1E660BFA8);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E6572A18;
  *(v34 + 24) = v32;

  v33(sub_1E6557D50, v34);
}

uint64_t sub_1E6571B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B420, &qword_1E660BF90);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E65729D8;
  *(v34 + 24) = v32;

  v33(sub_1E6557D70, v34);
}

uint64_t sub_1E6571F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9BA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9C0, &qword_1E660BFD0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &unk_1ED07B9C0, &qword_1E660BFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65722C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D9998();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B448, &qword_1E660BFB8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B448, &qword_1E660BFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6572634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65DA988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B430, &qword_1E660BFA0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B430, &qword_1E660BFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6572A40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6572B20()
{
  v1 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  v2 = sub_1E65D9BA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  v6 = sub_1E65DA988();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static PrivacyPreferenceService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorPrivacyPreferenceService(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E65D9B88();
  sub_1E65D9B68();
  sub_1E65D9988();
  sub_1E65D9968();
  sub_1E65DA978();
  sub_1E65DA958();
  *a1 = &unk_1E660BFE8;
  a1[1] = v2;
  a1[2] = &unk_1E660BFF8;
  a1[3] = v2;
  a1[4] = &unk_1E660C008;
  a1[5] = v2;
  a1[6] = &unk_1E660C018;
  a1[7] = v2;
  a1[8] = &unk_1E660C028;
  a1[9] = v2;
  a1[10] = &unk_1E660C038;
  a1[11] = v2;
  a1[12] = &unk_1E660C048;
  a1[13] = v2;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorPrivacyPreferenceService(uint64_t a1)
{
  result = qword_1ED07B458;
  if (!qword_1ED07B458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6572DB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6572DD4, a2, 0);
}

uint64_t sub_1E6572DD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9BA8();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6572E94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6572DB8(a1, v1);
}

uint64_t sub_1E6572F30(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6572F4C, a2, 0);
}

uint64_t sub_1E6572F4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9BA8();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6572F30(a1, v1);
}

uint64_t sub_1E65730AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65730C8, a2, 0);
}

uint64_t sub_1E65730C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65730AC(a1, v1);
}

uint64_t sub_1E6573224(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6573240, a2, 0);
}

uint64_t sub_1E6573240()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573308(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573224(a1, v1);
}

uint64_t sub_1E65733A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65733BC, a2, 0);
}

uint64_t sub_1E65733BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65DA988();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E657347C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65733A0(a1, v1);
}

uint64_t sub_1E6573518(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6573534, a2, 0);
}

uint64_t sub_1E6573534()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65DA988();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65735FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573518(a1, v1);
}

uint64_t sub_1E6573694(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B468, &unk_1E660C0B8);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6573764, a2, 0);
}

uint64_t sub_1E6573764()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65DA988();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E657383C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573694(a1, v1);
}

uint64_t sub_1E65738E0(uint64_t a1)
{
  result = sub_1E65D9BA8();
  if (v2 <= 0x3F)
  {
    result = sub_1E65D9998();
    if (v3 <= 0x3F)
    {
      result = sub_1E65DA988();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E65739F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5DF650C(a5, v19);
  sub_1E65E6058();

  swift_unknownObjectRetain();
  v14 = sub_1E65E6048();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  sub_1E5DF599C(v19, (v15 + 8));
  sub_1E64B80F8(0, 0, v12, &unk_1E660C1C0, v15);
}

uint64_t sub_1E6573B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a4;
  v8[11] = a8;
  sub_1E65E6058();
  v8[12] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6573C00, v10, v9);
}

uint64_t sub_1E6573C00()
{
  sub_1E5DF650C(*(v0 + 88), v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0x80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8, MEMORY[0x1E699F0F0]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6573CDC, v2, v1);
}

uint64_t sub_1E6573CDC()
{
  sub_1E65E1798();
  sub_1E6575B9C(v0 + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E6573D4C, v1, v2);
}

uint64_t sub_1E6573D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6573DAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DF650C(a6, v25);
  sub_1E65E6058();

  swift_unknownObjectRetain();
  v20 = sub_1E65E6048();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  *(v21 + 48) = a4;
  *(v21 + 56) = a5;
  sub_1E5DF599C(v25, v21 + 64);
  *(v21 + 104) = a7;
  *(v21 + 112) = a8;
  *(v21 + 120) = a1;
  sub_1E64B80F8(0, 0, v18, &unk_1E660C1B0, v21);
}

uint64_t sub_1E6573F40(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 73) = v15;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 80) = a6;
  *(v10 + 88) = a10;
  sub_1E65E6058();
  *(v10 + 112) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v10 + 120) = v12;
  *(v10 + 128) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E6573FE8, v12, v11);
}

uint64_t sub_1E6573FE8()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1E5DF650C(*(v0 + 88), v0 + 16);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8, MEMORY[0x1E699F0F0]);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65740D0, v5, v4);
}

uint64_t sub_1E65740D0()
{
  sub_1E65E1798();
  sub_1E6575B9C(v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1E6574140, v1, v2);
}

uint64_t sub_1E6574140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65741A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65741C4, 0, 0);
}

uint64_t sub_1E65741C4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B540, &qword_1E660C1C8);
  v1[4] = sub_1E5FED46C(&qword_1ED07B548, &qword_1ED07B540, &qword_1E660C1C8, MEMORY[0x1E69E86A0]);
  *(v0 + 40) = __swift_allocate_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8, MEMORY[0x1E699F0F0]);
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65742E8, v3, v2);
}

uint64_t sub_1E65742E8()
{
  sub_1E65E1788();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6574350(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65741A0(a1, a2, v6);
}

uint64_t sub_1E6574418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E657443C, 0, 0);
}

uint64_t sub_1E657443C()
{
  swift_getObjectType();
  sub_1E65E5648();
  sub_1E6575D2C();
  sub_1E65DDE38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65744EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6574418(a1, v4, v5, v7, v6);
}

char *sub_1E65745AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v48 = a5;
  v56 = a4;
  v55 = a3;
  v46[1] = a2;
  v50 = a15;
  v49 = a11;
  v57 = a9;
  v47 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v46 - v20;
  v54 = v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v46 - v23;
  v53 = v46 - v23;
  v51 = sub_1E65D74E8();
  v25 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))();
  sub_1E5DFD1CC(v48, v24, &qword_1ED076220, &unk_1E65FA4A0);
  sub_1E5DFD1CC(v47, v21, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5DFD1CC(v49, v18, &unk_1ED077770, &unk_1E660C190);
  sub_1E5DF650C(a1, v64);
  v27 = swift_allocObject();
  *(v27 + 2) = a12;
  *(v27 + 3) = a13;
  v28 = v50;
  *(v27 + 4) = a14;
  *(v27 + 5) = v28;
  sub_1E5DF599C(v64, v27 + 48);
  sub_1E5DF650C(a1, v63);
  v29 = swift_allocObject();
  *(v29 + 2) = a12;
  *(v29 + 3) = a13;
  *(v29 + 4) = a14;
  *(v29 + 5) = v28;
  sub_1E5DF599C(v63, v29 + 48);
  type metadata accessor for StandardPlayerPresenter(0);
  v30 = swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_defaultActor_initialize();
  *(v30 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 144) = 0;
  *(v30 + 152) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B510, &qword_1E6609F00);
  sub_1E65D7F18();
  sub_1E5DF599C(v62, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE30, &qword_1E660C1A0);
  sub_1E65D7F18();
  sub_1E5DF599C(v62, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient);
  sub_1E65DB608();
  sub_1E65D7F18();
  *(v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator) = *&v62[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_eventHub) = v62[0];
  sub_1E65D7F18();
  *(v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_platform) = v62[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B520, &qword_1E660ABA8);
  sub_1E65D7F18();
  sub_1E5DF599C(v62, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient);
  (*(v25 + 32))(v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingURL, v52, v51);
  v31 = (v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingTitle);
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  sub_1E5FAB460(v53, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, &qword_1ED076220, &unk_1E65FA4A0);
  v33 = (v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);
  v34 = v59;
  *v33 = v58;
  v33[1] = v34;
  v35 = (v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier);
  v36 = v57;
  *v35 = v60;
  v35[1] = v36;
  sub_1E5FAB460(v54, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5FAB460(v18, v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, &unk_1ED077770, &unk_1E660C190);
  v37 = (v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished);
  *v37 = sub_1E6575A2C;
  v37[1] = v27;
  v38 = (v30 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed);
  *v38 = sub_1E6575A8C;
  v38[1] = v29;
  v39 = type metadata accessor for StandardPlayerViewController();
  v40 = objc_allocWithZone(v39);
  *&v40[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter] = v30;
  v41 = objc_allocWithZone(MEMORY[0x1E6958608]);

  v42 = [v41 init];
  v43 = OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController;
  *&v40[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController] = v42;
  [v42 setAllowsPictureInPicturePlayback_];
  [*&v40[v43] setRequiresLinearPlayback_];
  [*&v40[v43] setVideoGravity_];
  v61.receiver = v40;
  v61.super_class = v39;
  v44 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);

  *(*&v44[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter] + 120) = &off_1F5FCB4B0;
  swift_unknownObjectWeakAssign();
  return v44;
}

uint64_t sub_1E6574CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22[3] = MEMORY[0x1E69E69B8];
  v22[4] = MEMORY[0x1E69E69C0];
  v22[0] = swift_allocObject();
  sub_1E604FBF8(a1, v22[0] + 16);
  v19 = a12(v22, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

uint64_t sub_1E6574DE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v24[3] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B4F0, &qword_1E660C188);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v14 = sub_1E65E5528();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65E57D8();
  MEMORY[0x1EEE9AC00](v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v15 + 16))(v17, a2, v14);
  v21 = sub_1E65E5A08();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1E65E5668();
  swift_allocObject();

  sub_1E5FA9D34(a3, a4);
  sub_1E65E5658();
  v22 = objc_allocWithZone(sub_1E65E5888());
  return sub_1E65E5878();
}

uint64_t sub_1E657508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v5[8] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575138, v7, v6);
}

uint64_t sub_1E6575138()
{

  v1 = objc_allocWithZone(sub_1E65E5708());

  *(v0 + 72) = sub_1E65E56F8();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575224, v3, v2);
}

uint64_t sub_1E6575224()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1E657528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5FEE4D4;

  return sub_1E657508C(a1, a2, a3, v8, v9);
}

uint64_t sub_1E6575360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_1E65E5798();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1E65E6058();
  v4[9] = sub_1E65E6048();
  v4[10] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575468, v7, v6);
}

uint64_t sub_1E6575468()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];

  (*(v3 + 16))(v1, v5, v2);
  v6 = objc_allocWithZone(sub_1E65E59E8());

  v7 = v4;
  v0[11] = sub_1E65E59D8();
  v9 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575564, v9, v8);
}

uint64_t sub_1E6575564()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1E65755D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FEE4D4;

  return sub_1E6575360(a1, a2, v6, v7);
}

uint64_t sub_1E657569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_1E65E5798();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = sub_1E65E6058();
  v3[8] = sub_1E65E6048();
  v3[9] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65757A0, v6, v5);
}

uint64_t sub_1E65757A0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  sub_1E65E5438();
  (*(v3 + 16))(v1, v4, v2);

  v0[10] = sub_1E65E5418();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6575888, v6, v5);
}

uint64_t sub_1E6575888()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1E65758FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E657569C(a1, v4, v5);
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E65759CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E65759EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t objectdestroy_35Tm_0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E6575A9C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[13];
  v11 = v1[14];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFA78C;

  return sub_1E6573F40(v10, v11, a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t objectdestroy_41Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E6575C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6573B68(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

unint64_t sub_1E6575D2C()
{
  result = qword_1EE2D4998;
  if (!qword_1EE2D4998)
  {
    sub_1E65E5648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4998);
  }

  return result;
}

uint64_t PlayerService.makePlayerUpdateStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlayerService.makeTrainerTipPlayerDismissedStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PlayerService.makeStandardPlayerViewController.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlayerService.makeTipPlayerViewController.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PlayerService.makeQueueSessionViewController.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PlayerService.makeSampleContentSessionViewController.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PlayerService.makeSessionViewController.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

id PlayerUpdate.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1E6575F08(v2, v3, v4);
}

id sub_1E6575F08(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FitnessPlayerService0B6UpdateV5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
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

uint64_t sub_1E6575F58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1E6575FA0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E6575FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E6576044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1E65760A8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_1E65760E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B640, &unk_1E660C6C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1E65DB5D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);
  if (!v11)
  {
    return sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  v12 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);
  sub_1E5DFD1CC(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, v6, &unk_1ED077770, &unk_1E660C190);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E5DFE50C(v6, &unk_1ED077770, &unk_1E660C190);
    return sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier;
  v15 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier);
  v16 = *(v14 + 8);
  v17 = sub_1E65DDCF8();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v18 = sub_1E65DAE28();
  v19 = MEMORY[0x1E6943050](v12, v11, v15, v16, v10, v3, v18);
  sub_1E5DFE50C(v3, &unk_1ED07B640, &unk_1E660C6C8);
  (*(v8 + 8))(v10, v7);
  return v19;
}

void sub_1E6576384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  if (*(v0 + 152) == 2 && *(v0 + 136) == 0)
  {
    *(v0 + 136) = xmmword_1E65F1570;
    *(v0 + 152) = 2;
    v4 = [objc_allocWithZone(sub_1E65DB498()) init];
    sub_1E657F938(&qword_1ED07B618, type metadata accessor for StandardPlayerPresenter, &unk_1E660C540);

    v5 = v0;
    sub_1E65DB488();
    v6 = sub_1E65E60A8();
    v7 = *(*(v6 - 8) + 56);
    v7(v3, 1, 1, v6);
    v8 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter, &unk_1E660C568);
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v8;
    v9[4] = v5;
    v9[5] = v4;
    swift_retain_n();
    v10 = v4;
    sub_1E64B83F8(0, 0, v3, &unk_1E660C628, v9);

    sub_1E65E6068();
    v7(v3, 0, 1, v6);
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v8;
    v11[4] = v5;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v3, &unk_1E660C638, v11);
  }
}

uint64_t sub_1E65765F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6576614, a4, 0);
}

uint64_t sub_1E6576614()
{
  *(v0 + 40) = sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65766AC, v2, v1);
}

uint64_t sub_1E65766AC()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6576724, v1, 0);
}

uint64_t sub_1E6576724(uint64_t a1)
{
  if (*(v1 + 56))
  {
    *(v1 + 64) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E65767F4, v3, v2);
  }

  else
  {
    **(v1 + 16) = 1;
    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_1E65767F4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];

  [*(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) addBehavior_];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1E657688C, v3, 0);
}

uint64_t sub_1E65768B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6576A18, a4, 0);
}

uint64_t sub_1E6576A18()
{
  *(v0 + 216) = *(*(v0 + 152) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator);
  sub_1E65DB608();
  sub_1E657F938(&qword_1ED07B610, MEMORY[0x1E69CD568], MEMORY[0x1E69CD570]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6576AE0, v2, v1);
}

uint64_t sub_1E6576AE0()
{
  v1 = *(v0 + 152);
  sub_1E65DB5F8();

  return MEMORY[0x1EEE6DFA0](sub_1E6576B4C, v1, 0);
}

uint64_t sub_1E6576B4C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 152) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient), *(*(v0 + 152) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient + 24));
  sub_1E65DD838();

  return MEMORY[0x1EEE6DFA0](sub_1E6576BF8, 0, 0);
}

uint64_t sub_1E6576BF8()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 107;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1E6576D08;
  v4 = v0[26];
  v5 = v0[24];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657F858, v2, v5);
}

uint64_t sub_1E6576D08()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1E6576E64;
    v4 = 0;
  }

  else
  {
    v5 = v2[19];
    (*(v2[22] + 8))(v2[23], v2[21]);
    v3 = sub_1E6576F78;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6576E64()
{
  v1 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);

  return MEMORY[0x1EEE6DFA0](sub_1E6576EE0, v1, 0);
}

uint64_t sub_1E6576EE0()
{
  v1 = v0[19];
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  *(v1 + 136) = v0[30];
  *(v1 + 144) = 0;
  v4 = *(v1 + 152);
  *(v1 + 152) = 1;
  sub_1E657DE88(v2, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6576F78()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_1E65760E4();
  v3 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v4 = sub_1E65D7448();
  v5 = sub_1E65E5AF8();

  v6 = [v3 initWithURL:v4 options:v5];
  v0[31] = v6;

  v7 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  v0[32] = v7;
  [v7 setAllowedAudioSpatializationFormats_];
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter, &unk_1E660C568);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v2;
  v10[5] = v7;
  v10[6] = v6;
  swift_retain_n();
  v11 = v7;
  v12 = v6;
  sub_1E6059EAC(0, 0, v1, &unk_1E660C650, v10);

  v0[33] = sub_1E65E6058();
  v0[34] = sub_1E65E6048();
  v14 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65771C0, v14, v13);
}

uint64_t sub_1E65771C0()
{
  v1 = *(v0 + 152);

  *(v0 + 280) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6577238, v1, 0);
}

uint64_t sub_1E6577238(uint64_t a1)
{
  if (v1[35])
  {
    v1[36] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6577698, v3, v2);
  }

  else
  {
    v4 = sub_1E65DDF08();
    v1[17] = v4;
    v1[18] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v4);
    LOBYTE(v4) = sub_1E65DAF58();
    __swift_destroy_boxed_opaque_existential_1(v1 + 14);
    if (v4)
    {
      v6 = v1[32];
      v7 = [objc_opt_self() defaultCenter];
      v8 = *MEMORY[0x1E6987A30];
      v9 = objc_opt_self();
      v10 = v6;
      v11 = [v9 mainQueue];
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v10;
      v1[12] = sub_1E657F988;
      v1[13] = v13;
      v1[8] = MEMORY[0x1E69E9820];
      v1[9] = 1107296256;
      v1[10] = sub_1E65798D8;
      v1[11] = &block_descriptor_73_0;
      v14 = _Block_copy(v1 + 8);
      v15 = v10;

      v16 = [v7 addObserverForName:v8 object:v15 queue:v11 usingBlock:v14];
      _Block_release(v14);

      swift_unknownObjectRelease();
    }

    v17 = v1[31];
    v18 = v1[32];
    v19 = v1[25];
    v32 = v1[24];
    v33 = v1[26];
    v20 = v1[19];
    v21 = [objc_opt_self() defaultCenter];
    v22 = *MEMORY[0x1E6987A10];
    v23 = swift_allocObject();
    swift_weakInit();
    v1[6] = sub_1E657F980;
    v1[7] = v23;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1E65798D8;
    v1[5] = &block_descriptor_23;
    v24 = _Block_copy(v1 + 2);
    v25 = v18;

    v26 = [v21 addObserverForName:v22 object:v25 queue:0 usingBlock:v24];
    _Block_release(v24);

    (*(v19 + 8))(v33, v32);
    v27 = *(v20 + 136);
    v28 = *(v20 + 144);
    *(v20 + 136) = v18;
    *(v20 + 144) = v26;
    v29 = *(v20 + 152);
    *(v20 + 152) = 0;
    sub_1E657DE88(v27, v28, v29);

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_1E6577698()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[19];

  v4 = *(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v5 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  [v4 setPlayer_];

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1E657775C, v3, 0);
}

uint64_t sub_1E657775C()
{
  v1 = sub_1E65DDF08();
  v0[17] = v1;
  v0[18] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v1);
  LOBYTE(v1) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  if (v1)
  {
    v3 = v0[32];
    v4 = [objc_opt_self() defaultCenter];
    v5 = *MEMORY[0x1E6987A30];
    v6 = objc_opt_self();
    v7 = v3;
    v8 = [v6 mainQueue];
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v7;
    v0[12] = sub_1E657F988;
    v0[13] = v10;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1E65798D8;
    v0[11] = &block_descriptor_73_0;
    v11 = _Block_copy(v0 + 8);
    v12 = v7;

    v13 = [v4 addObserverForName:v5 object:v12 queue:v8 usingBlock:v11];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  v14 = v0[31];
  v15 = v0[32];
  v16 = v0[25];
  v29 = v0[24];
  v30 = v0[26];
  v17 = v0[19];
  v18 = [objc_opt_self() defaultCenter];
  v19 = *MEMORY[0x1E6987A10];
  v20 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1E657F980;
  v0[7] = v20;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E65798D8;
  v0[5] = &block_descriptor_23;
  v21 = _Block_copy(v0 + 2);
  v22 = v15;

  v23 = [v18 addObserverForName:v19 object:v22 queue:0 usingBlock:v21];
  _Block_release(v21);

  (*(v16 + 8))(v30, v29);
  v24 = *(v17 + 136);
  v25 = *(v17 + 144);
  *(v17 + 136) = v15;
  *(v17 + 144) = v23;
  v26 = *(v17 + 152);
  *(v17 + 152) = 0;
  sub_1E657DE88(v24, v25, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1E6577B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = sub_1E65D9AC8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF28, &qword_1E660AAB0);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6577D1C, a4, 0);
}

uint64_t sub_1E6577D1C()
{
  v1 = (v0[8] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingTitle);
  v2 = v1[1];
  v0[22] = v2;
  if (v2)
  {
    v0[23] = *v1;
    sub_1E65E6058();
    v0[24] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6577E3C, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_1E6577EFC;

    return sub_1E657B4AC();
  }
}

uint64_t sub_1E6577E3C()
{
  v1 = v0[23];
  v2 = v0[22];

  sub_1E657DF98(*MEMORY[0x1E6987668], v1, v2);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1E6577EFC;

  return sub_1E657B4AC();
}

uint64_t sub_1E6577EFC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6578014, v2, 0);
}

uint64_t sub_1E6578014()
{
  if (v0[26])
  {
    sub_1E65E6058();
    v0[27] = sub_1E65E6048();
    v1 = sub_1E65E5FC8();
    v3 = v2;
    v4 = sub_1E6578228;
    v5 = v1;
    v6 = v3;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  v7 = sub_1E65DDF08();
  v0[5] = v7;
  v0[6] = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v7);
  LOBYTE(v7) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v7)
  {
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v9 = sub_1E65E63C8();
    sub_1E65E62F8();

    v4 = sub_1E6578468;
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6578228()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 64);

  sub_1E6578F4C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1E65782A4, v2, 0);
}

uint64_t sub_1E65782A4()
{
  v1 = sub_1E65DDF08();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1E657F938(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v1);
  LOBYTE(v1) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v3 = sub_1E65E63C8();
    sub_1E65E62F8();

    return MEMORY[0x1EEE6DFA0](sub_1E6578468, 0, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E6578468()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 121;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = sub_1E5DEF738(0, &qword_1ED07B5F0, 0x1E6987FD0);
  *v3 = v0;
  v3[1] = sub_1E6578590;

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6580204, v2, v4);
}

uint64_t sub_1E6578590()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {

    v3 = sub_1E6578A24;
    v4 = 0;
  }

  else
  {
    v6 = v2[20];
    v5 = v2[21];
    v7 = v2[19];
    v8 = v2[8];
    v2[31] = v2[7];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E6578704;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6578704()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient), *(*(v0 + 64) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient + 24));
  sub_1E65DD6B8();

  return MEMORY[0x1EEE6DFA0](sub_1E65787A0, 0, 0);
}

uint64_t sub_1E65787A0()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 122;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_1E65788A8;
  v4 = v0[18];
  v5 = v0[11];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657FB98, v2, v5);
}

uint64_t sub_1E65788A8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1E6578D04;
    v4 = 0;
  }

  else
  {
    v6 = v2[15];
    v5 = v2[16];
    v7 = v2[14];
    v8 = v2[8];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E6578B38;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E6578A24()
{
  v1 = v0[8];
  (*(v0[20] + 8))(v0[21], v0[19]);

  return MEMORY[0x1EEE6DFA0](sub_1E6578AA0, v1, 0);
}

uint64_t sub_1E6578AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6578B38()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1E5DFD1CC(v2, v1, &qword_1ED072198, &unk_1E660C690);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {
    v8 = *(v0 + 88);
    MEMORY[0x1E6941490]();
    if (v5(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(*(v0 + 136), &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 144);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  sub_1E657FBB0(*(v0 + 72), v9, v11);

  (*(v12 + 8))(v11, v13);
  sub_1E5DFE50C(v10, &qword_1ED072198, &unk_1E660C690);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E6578D04()
{
  v1 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return MEMORY[0x1EEE6DFA0](sub_1E6578D80, v1, 0);
}

uint64_t sub_1E6578D80()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_1E5DFD1CC(v2, v1, &qword_1ED072198, &unk_1E660C690);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {
    v8 = *(v0 + 88);
    MEMORY[0x1E6941490]();
    if (v5(v7, 1, v8) != 1)
    {
      sub_1E5DFE50C(*(v0 + 136), &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 144);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  sub_1E657FBB0(*(v0 + 72), v9, v11);

  (*(v12 + 8))(v11, v13);
  sub_1E5DFE50C(v10, &qword_1ED072198, &unk_1E660C690);

  v14 = *(v0 + 8);

  return v14();
}

void sub_1E6578F4C(UIImage *a1)
{
  v2 = v1;
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UIImagePNGRepresentation(a1);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1E65D7518();
    v12 = v11;

    v13 = [objc_allocWithZone(MEMORY[0x1E6988050]) init];
    [v13 setIdentifier_];
    [v13 setDataType_];
    v14 = sub_1E65E5C48();
    [v13 setExtendedLanguageTag_];

    v15 = sub_1E65D7508();
    [v13 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA660;
    *(inited + 32) = v13;
    v17 = v13;
    v18 = [v2 externalMetadata];
    sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
    v19 = sub_1E65E5F18();

    v24 = v19;
    sub_1E657F1F8(inited);
    v20 = sub_1E65E5EF8();

    [v2 setExternalMetadata_];
    sub_1E600A068(v10, v12);
  }

  else
  {
    sub_1E65DE348();
    v21 = sub_1E65E3B48();
    v22 = sub_1E65E6338();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E5DE9000, v21, v22, "[AVPlayerItem] failed to extract pngData from image", v23, 2u);
      MEMORY[0x1E694F1C0](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E657923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5DFD1CC(a3, v22 - v9, &unk_1ED0735B0, &qword_1E65EA000);
  v11 = sub_1E65E60A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E5DFE50C(v10, &unk_1ED0735B0, &qword_1E65EA000);
  }

  else
  {
    sub_1E65E6098();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E65E5FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E65E5D18() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B670, &unk_1E660C780);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B670, &unk_1E660C780);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E65794F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;

  v10 = a3;
  sub_1E657923C(0, 0, v7, &unk_1E660C660, v9);
}

uint64_t sub_1E657960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6579630, 0, 0);
}

uint64_t sub_1E6579630()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1E657972C;
    v3 = *(v0 + 56);

    return sub_1E657BF3C(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E657972C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E6579874;
  }

  else
  {

    v2 = sub_1E6579848;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6579874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65798D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D7068();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1E65D7058();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E65799CC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1E65E60A8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1E64B80F8(0, 0, v4, &unk_1E660C678, v8);
  }

  return result;
}

uint64_t sub_1E6579B0C()
{
  v1 = v0[2];
  if (*(v1 + 152))
  {
    if (*(v1 + 152) != 1 && *(v1 + 136) < 2uLL)
    {
      v2 = v0[1];

      return v2();
    }

    v0[7] = sub_1E65E6058();
    v0[8] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6579E18;
  }

  else
  {
    v0[3] = sub_1E65E6058();
    v0[4] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E6579C40;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6579C40()
{
  v1 = *(v0 + 16);

  *(v0 + 40) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6579CB8, v1, 0);
}

uint64_t sub_1E6579CB8(uint64_t a1)
{
  if (v1[5])
  {
    v1[6] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6579D7C, v3, v2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_1E6579D7C()
{
  v1 = *(v0 + 40);

  v2 = [*(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  [v2 play];

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6579E18()
{
  v1 = *(v0 + 16);

  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E6579E90, v1, 0);
}

uint64_t sub_1E6579E90(uint64_t a1)
{
  if (v1[9])
  {
    v1[10] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6579F54, v3, v2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_1E6579F54()
{
  v1 = *(v0 + 72);

  [v1 dismissViewControllerAnimated:1 completion:0];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6579FD4(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, CMTimeValue a4, unint64_t a5, CMTimeEpoch a6)
{
  v7 = v6;
  v98 = a3;
  v99 = a6;
  v105 = a1;
  v106 = a4;
  v9 = a2;
  v104 = HIDWORD(a2);
  v107 = HIDWORD(a5);
  v92 = sub_1E65DB758();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D8A08();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v88 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v81 = &v80 - v20;
  v87 = sub_1E65D8C88();
  v86 = *(v87 - 8);
  v21 = MEMORY[0x1EEE9AC00](v87);
  v82 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v80 - v23;
  v24 = sub_1E65D97D8();
  v96 = *(v24 - 8);
  v97 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v94 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v95 = (&v80 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v93 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v80 - v31;
  v33 = sub_1E65D7A38();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v80 - v38;
  v40 = sub_1E65E60A8();
  v41 = *(v40 - 8);
  v102 = *(v41 + 56);
  v103 = v40;
  v101 = v41 + 56;
  v102(v39, 1, 1);
  v42 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter, &unk_1E660C568);
  v43 = swift_allocObject();
  *(v43 + 16) = v7;
  *(v43 + 24) = v42;
  v100 = v42;
  v44 = v104;
  v45 = v105;
  *(v43 + 32) = v7;
  *(v43 + 40) = v45;
  v46 = v9;
  *(v43 + 48) = v9;
  *(v43 + 52) = v44;
  v47 = v98;
  *(v43 + 56) = v98;
  *(v43 + 64) = v106;
  v80 = a5;
  v48 = v107;
  *(v43 + 72) = a5;
  *(v43 + 76) = v48;
  v49 = v99;
  *(v43 + 80) = v99;
  swift_retain_n();
  v50 = v43;
  v51 = v33;
  v52 = v34;
  sub_1E64B80F8(0, 0, v39, &unk_1E660C600, v50);

  sub_1E5DFD1CC(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, v32, &unk_1ED07B500, &qword_1E65F0EE0);
  if ((*(v34 + 48))(v32, 1, v51) == 1)
  {
    sub_1E5DFE50C(v32, &unk_1ED07B500, &qword_1E65F0EE0);
  }

  else
  {
    v53 = *(v34 + 32);
    v54 = v36;
    v53(v36, v32, v51);
    v55 = *(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier + 8);
    if (v55)
    {
      v56 = *(v7 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);

      time.value = v105;
      time.timescale = v46;
      time.flags = v104;
      time.epoch = v47;
      Seconds = CMTimeGetSeconds(&time);
      time.value = v106;
      if (Seconds >= 0.0)
      {
        v58 = Seconds;
      }

      else
      {
        v58 = 0.0;
      }

      time.timescale = v80;
      time.flags = v107;
      time.epoch = v49;
      v59 = CMTimeGetSeconds(&time);
      if (v59 < 0.0)
      {
        v59 = 0.0;
      }

      v61 = v95;
      v60 = v96;
      *v95 = v56;
      *(v61 + 1) = v55;
      v61[2] = v58;
      v61[3] = v59;
      v62 = v97;
      (*(v60 + 104))(v61, *MEMORY[0x1E69CC340], v97);
      (*(v60 + 16))(v94, v61, v62);
      v63 = v93;
      (*(v52 + 16))(v93, v54, v51);
      (*(v52 + 56))(v63, 0, 1, v51);
      v64 = sub_1E65D9208();
      v65 = *(*(v64 - 8) + 56);
      v106 = v54;
      v65(v81, 1, 1, v64);
      v66 = sub_1E65D9218();
      (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
      v67 = v85;
      sub_1E65D8CA8();
      v68 = sub_1E65D8CB8();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
      (*(*(v69 - 8) + 56))(v88, 1, 1, v69);
      v70 = sub_1E65D9928();
      (*(*(v70 - 8) + 56))(v89, 1, 1, v70);
      v71 = v84;
      sub_1E65D8C78();
      v107 = v7;
      v72 = v52;
      v73 = v86;
      v74 = v87;
      (*(v86 + 16))(v82, v71, v87);
      v75 = v90;
      sub_1E65DB768();
      swift_getObjectType();
      sub_1E657F938(&qword_1EE2D6D38, MEMORY[0x1E69CD5C8], MEMORY[0x1E69CD5C0]);
      v105 = v51;
      v76 = v92;
      sub_1E65DDDE8();
      (*(v91 + 8))(v75, v76);
      (*(v73 + 8))(v71, v74);
      (*(v96 + 8))(v95, v97);
      (*(v72 + 8))(v106, v105);
      v7 = v107;
    }

    else
    {
      (*(v52 + 8))(v54, v51);
    }
  }

  sub_1E65E6068();
  (v102)(v39, 0, 1, v103);
  v77 = swift_allocObject();
  v78 = v100;
  v77[2] = v7;
  v77[3] = v78;
  v77[4] = v7;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v39, &unk_1E660C610, v77);
}

uint64_t sub_1E657AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E657AB68, a4, 0);
}

uint64_t sub_1E657AB68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 152) >= 2u && *(v1 + 136) > 1uLL;
  *(v0 + 136) = v2;
  v3 = (v1 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed);
  v4 = *v3;
  *(v0 + 72) = *v3;
  if (v4)
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    *(v0 + 80) = v3[1];
    *(v0 + 112) = v10;
    *(v0 + 120) = v9;
    *(v0 + 128) = v7;
    *(v0 + 88) = CMTimeGetSeconds((v0 + 112));
    *(v0 + 112) = v8;
    *(v0 + 120) = v6;
    *(v0 + 128) = v5;
    *(v0 + 96) = CMTimeGetSeconds((v0 + 112));
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v12 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E657ACDC, v12, v11);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E657ACDC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 136);

  v6.n128_u64[0] = 0;
  if (v2 >= 0.0)
  {
    v5.n128_f64[0] = v2;
  }

  else
  {
    v5.n128_f64[0] = 0.0;
  }

  if (v1 >= 0.0)
  {
    v6.n128_f64[0] = v1;
  }

  v3(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E657AD98()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator);
  sub_1E65DB608();
  sub_1E657F938(&qword_1ED07B610, MEMORY[0x1E69CD568], MEMORY[0x1E69CD570]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657AE60, v2, v1);
}

uint64_t sub_1E657AE60()
{
  sub_1E65DB5E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E657AEE0()
{
  v1 = (v0[2] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v0[4] = v1[1];
    sub_1E65E6058();
    v0[5] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v4;
    v6 = sub_1E657AFE0;
  }

  else
  {
    v0[6] = sub_1E65E6058();
    v0[7] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v7;
    v6 = sub_1E657B0F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1E657AFE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v2(v3);

  return MEMORY[0x1EEE6DFA0](sub_1E657B05C, v1, 0);
}

uint64_t sub_1E657B05C()
{
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657B0F4, v2, v1);
}

uint64_t sub_1E657B0F4()
{
  v1 = *(v0 + 16);

  *(v0 + 64) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1E657B16C, v1, 0);
}

uint64_t sub_1E657B16C(uint64_t a1)
{
  if (v1[8])
  {
    v1[9] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E657B230, v3, v2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_1E657B230()
{
  v1 = *(v0 + 64);

  [v1 dismissViewControllerAnimated:1 completion:0];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E657B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657B350, a4, 0);
}

uint64_t sub_1E657B350()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = xmmword_1E660C3A0;
  v5 = *(v1 + 152);
  *(v1 + 152) = 2;
  sub_1E657DE88(v3, v4, v5);
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter, &unk_1E660C568);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v2, &unk_1E660C680, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E657B4AC()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE68, &unk_1E660C5E0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1E65DAC98();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v1[10] = swift_task_alloc();
  v4 = sub_1E65DB3E8();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657B674, v0, 0);
}

uint64_t sub_1E657B674()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1E5DFD1CC(v0[3] + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, v3, &qword_1ED076220, &unk_1E65FA4A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[10], &qword_1ED076220, &unk_1E65FA4A0);
    goto LABEL_3;
  }

  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  (*(v10 + 32))(v8, v0[10], v9);
  (*(v10 + 16))(v7, v8, v9);
  v11 = (*(v10 + 88))(v7, v9);
  if (v11 != *MEMORY[0x1E69CD4D8])
  {
    if (v11 == *MEMORY[0x1E69CD4C8])
    {
      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[11];
      v20 = v0[12];
      (*(v20 + 96))(v18, v19);
      v21 = *(v18 + 16);
      v22 = sub_1E65E5C48();

      v4 = [objc_opt_self() imageNamed:v22 inBundle:v21];

      (*(v20 + 8))(v17, v19);
      goto LABEL_4;
    }

    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    if (v11 == *MEMORY[0x1E69CD4D0])
    {
      (*(v26 + 96))(v0[13], v0[11]);
      v27 = sub_1E65E5C48();

      v4 = [objc_opt_self() systemImageNamed_];

      (*(v26 + 8))(v24, v25);
      goto LABEL_4;
    }

    v28 = *(v26 + 8);
    v28(v0[14], v0[11]);
    v28(v23, v25);
LABEL_3:
    v4 = 0;
LABEL_4:

    v5 = v0[1];

    return v5(v4);
  }

  v12 = v0[13];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v16 = v0[3];
  (*(v0[12] + 96))(v12, v0[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B608, &qword_1E660C5F0);
  (*(v14 + 32))(v13, v12, v15);
  sub_1E65E6498();
  __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader), *(v16 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader + 24));
  sub_1E65DB4A8();

  return MEMORY[0x1EEE6DFA0](sub_1E657BA78, 0, 0);
}

uint64_t sub_1E657BA78()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 235;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_1E5DEF738(0, &qword_1EE2D4508, 0x1E69DCAB8);
  *v3 = v0;
  v3[1] = sub_1E657BBA0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657F48C, v2, v4);
}

uint64_t sub_1E657BBA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1E657BDF8;
    v4 = 0;
  }

  else
  {
    v6 = v2[5];
    v5 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v2[17] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E657BD20;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E657BD20()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1E657BDF8()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E657BE70, v1, 0);
}

uint64_t sub_1E657BE70()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1E657BF3C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1E65D9AC8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_1E65E3B68();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657C14C, v1, 0);
}

uint64_t sub_1E657C14C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  sub_1E65DE368();
  sub_1E65E3B18();
  v4 = *(v3 + 8);
  v0[21] = v4;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v0[23] = sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657C258, v6, v5);
}

uint64_t sub_1E657C258()
{
  v1 = v0[4];
  v2 = v0[5];

  v0[25] = [v1 asset];

  return MEMORY[0x1EEE6DFA0](sub_1E657C2E0, v2, 0);
}

uint64_t sub_1E657C2E0()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v1 = sub_1E65E63C8();
    sub_1E65E62F8();

    return MEMORY[0x1EEE6DFA0](sub_1E657C528, 0, 0);
  }

  else
  {
    v2 = *(v0 + 32);

    sub_1E65DE368();
    v3 = v2;
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6328();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "%@ is not an AVURLAsset", v7, 0xCu);
      sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
      MEMORY[0x1E694F1C0](v8, -1, -1);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v10 = *(v0 + 168);
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);

    v10(v11, v12);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E657C528()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 269;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  v4 = sub_1E5DEF738(0, &qword_1ED07B5F0, 0x1E6987FD0);
  *v3 = v0;
  v3[1] = sub_1E657C650;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657EBE8, v2, v4);
}

uint64_t sub_1E657C650()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = sub_1E657CE00;
    v4 = 0;
  }

  else
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[12];
    v8 = v2[5];
    v2[29] = v2[2];

    (*(v6 + 8))(v5, v7);
    v3 = sub_1E657C7C8;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E657C7C8()
{
  v1 = *(v0[5] + 128);
  v0[30] = v1;
  v2 = v1;
  v0[31] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657C864, v4, v3);
}

uint64_t sub_1E657C864()
{
  v1 = v0[4];
  v2 = v0[5];

  v0[32] = [v1 currentMediaSelection];

  return MEMORY[0x1EEE6DFA0](sub_1E657C8EC, v2, 0);
}

uint64_t sub_1E657C8EC()
{
  v53 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 40);
  v3 = [v1 selectedMediaOptionInMediaSelectionGroup_];

  v4 = *(v2 + 128);
  *(v2 + 128) = v3;

  sub_1E65DE368();

  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v52 = v12;
    *v11 = 136315138;
    *(v0 + 24) = *(v10 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5F8, &qword_1E660C5D0);
    v13 = sub_1E65E6638();
    v15 = sub_1E5DFD4B0(v13, v14, &v52);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "currentAudibleMediaSelectionOption: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E694F1C0](v12, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    v7(v8, v9);
    v16 = *(v0 + 240);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:
    v32 = *(v0 + 200);

LABEL_24:

    v49 = *(v0 + 8);

    return v49();
  }

  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 120);

  v29(v30, v31);
  v16 = *(v0 + 240);
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = *(v0 + 40);
  v18 = v16;
  v19 = sub_1E65E6478();
  v21 = v20;

  v22 = *(v17 + 128);
  if (!v22)
  {
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_19:
    v47 = *(v0 + 232);
    v32 = *(v0 + 240);
    v46 = *(v0 + 200);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = sub_1E65E6478();
  v26 = v25;

  if (!v21)
  {
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (!v26)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v19 == v24 && v21 == v26)
  {
    v27 = *(v0 + 232);
    v28 = *(v0 + 200);

LABEL_23:

    v32 = *(v0 + 240);
    goto LABEL_24;
  }

  v48 = sub_1E65E6C18();

  if (v48)
  {
    v27 = *(v0 + 232);
    v28 = *(v0 + 200);
    goto LABEL_23;
  }

LABEL_13:
  v33 = *(*(v0 + 40) + 128);
  if (!v33 || (v34 = v33, v35 = sub_1E65E6478(), v37 = v36, v34, !v37))
  {
    v46 = *(v0 + 232);
    v32 = *(v0 + 240);
    v47 = *(v0 + 200);
LABEL_20:

    goto LABEL_24;
  }

  sub_1E65DE368();

  v38 = sub_1E65E3B48();
  v39 = sub_1E65E6338();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 168);
  v42 = *(v0 + 144);
  v43 = *(v0 + 120);
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_1E5DFD4B0(v35, v37, &v52);
    _os_log_impl(&dword_1E5DE9000, v38, v39, "Updating audio language preference to: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E694F1C0](v45, -1, -1);
    MEMORY[0x1E694F1C0](v44, -1, -1);
  }

  v41(v42, v43);
  v51 = *(v0 + 40);
  sub_1E65E61B8();
  sub_1E65D9A98();
  __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient), *(v51 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient + 24));
  sub_1E65DD6C8();

  return MEMORY[0x1EEE6DFA0](sub_1E657CF40, 0, 0);
}

uint64_t sub_1E657CE00()
{
  v1 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return MEMORY[0x1EEE6DFA0](sub_1E657CE7C, v1, 0);
}

uint64_t sub_1E657CE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E657CF40()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[33] = v2;
  *(v2 + 16) = "FitnessPlayerService/StandardPlayerPresenter.swift";
  *(v2 + 24) = 50;
  *(v2 + 32) = 2;
  *(v2 + 40) = 285;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_1E657D048;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657EC00, v2, v4);
}

uint64_t sub_1E657D048()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1E657D288;
    v4 = 0;
  }

  else
  {
    v5 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_1E657D1A0;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E657D1A0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E657D288()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1E657D300, v1, 0);
}

uint64_t sub_1E657D300()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E657D3F0()
{
  sub_1E5E0BE48(v0 + 112);

  sub_1E657DE88(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  v1 = OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingURL;
  v2 = sub_1E65D74E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, &qword_1ED076220, &unk_1E65FA4A0);

  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, &unk_1ED077770, &unk_1E660C190);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient));
  sub_1E5E29474(*(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished), *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished + 8));
  sub_1E5E29474(*(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed), *(v0 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E657D588()
{
  sub_1E657D3F0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for StandardPlayerPresenter(uint64_t a1)
{
  result = qword_1ED07B5D0;
  if (!qword_1ED07B5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E657D608(uint64_t a1)
{
  sub_1E65D74E8();
  if (v1 <= 0x3F)
  {
    sub_1E657D804(319, &qword_1EE2D6D68, MEMORY[0x1E69CD4E0]);
    if (v2 <= 0x3F)
    {
      sub_1E657D804(319, &unk_1EE2D7168, MEMORY[0x1E69CAF60]);
      if (v3 <= 0x3F)
      {
        sub_1E657D804(319, &qword_1EE2D6D58, MEMORY[0x1E69CD550]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E657D804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E65E6668();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20FitnessPlayerService08StandardB9PresenterC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E657D874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E657D8BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E657D900(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E657D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E657D9CC, a4, 0);
}

uint64_t sub_1E657D9CC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = xmmword_1E660C3A0;
  v5 = *(v2 + 152);
  *(v2 + 152) = 2;
  sub_1E657DE88(v3, v4, v5);
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = sub_1E657F938(&qword_1ED07B5E0, type metadata accessor for StandardPlayerPresenter, &unk_1E660C568);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v7;
  v8[4] = v2;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v1, &unk_1E660C5B0, v8);

  return MEMORY[0x1EEE6DFA0](sub_1E657DB2C, 0, 0);
}

uint64_t sub_1E657DB2C()
{
  *(v0 + 48) = sub_1E65E6058();
  *(v0 + 56) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E657DBC4, v2, v1);
}

uint64_t sub_1E657DBC4()
{

  sub_1E65E6048();
  sub_1E65E5FC8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(v0 + 24))(isCurrentExecutor);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E657DC9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_1E64B80F8(0, 0, v7, &unk_1E660C5A0, v9);
}

uint64_t sub_1E657DDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E657D928(a1, v4, v5, v6, v7, v8);
}

void sub_1E657DE88(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E657DEE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E657AEC0(a1, v4, v5, v6);
}

void sub_1E657DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E657E15C(a1);
  if (a3)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E6988050]) init];
    [v7 setIdentifier_];
    v8 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v9 = sub_1E65E5C48();
    v10 = [v8 initWithString_];

    [v7 setValue_];
    v11 = sub_1E65E5C48();
    [v7 setExtendedLanguageTag_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA660;
    *(inited + 32) = v7;
    v13 = v7;
    v14 = [v4 externalMetadata];
    sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
    v15 = sub_1E65E5F18();

    sub_1E657F1F8(inited);
    v16 = sub_1E65E5EF8();

    [v4 setExternalMetadata_];
  }
}

void sub_1E657E15C(uint64_t a1)
{
  v2 = [v1 externalMetadata];
  v3 = sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
  v4 = sub_1E65E5F18();

  v19 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E65E67C8())
  {
    v16 = v3;
    v17 = v1;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E694E2D0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v3 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1E65E6058();
      v1 = sub_1E65E6048();
      sub_1E65E5FC8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = [v8 identifier];
      if (!v9)
      {

LABEL_19:
        sub_1E65E6928();
        sub_1E65E6968();
        sub_1E65E6978();
        v1 = &v19;
        sub_1E65E6938();
        goto LABEL_6;
      }

      v10 = v9;
      v11 = sub_1E65E5C78();
      v13 = v12;
      if (v11 == sub_1E65E5C78() && v13 == v14)
      {
      }

      else
      {
        v15 = sub_1E65E6C18();

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v6;
      if (v3 == i)
      {
        v1 = v17;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  v18 = sub_1E65E5EF8();

  [v1 setExternalMetadata_];
}

uint64_t sub_1E657E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B720, &qword_1E660C640);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E658013C;
  *(v34 + 24) = v32;

  v33(sub_1E6557D50, v34);
}

uint64_t sub_1E657E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B600, &qword_1E660C5D8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
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
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
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
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B5E8, &unk_1E660C5C0);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E657F478;
  *(v34 + 24) = v32;

  v33(sub_1E5E20B18, v34);
}

uint64_t sub_1E657EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_1E65D74E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B638, &qword_1E660C6C0);
  MEMORY[0x1EEE9AC00](v44);
  v15 = (&v34 - v14);
  v16 = sub_1E65E3B68();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_1E5DFD4B0(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_1E5DFD1CC(a1, v15, &qword_1ED07B638, &qword_1E660C6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B750, &unk_1E660CEB0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E657EFA4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31[0] = a10;
    v23 = v22;
    v36 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = sub_1E5DFD4B0(v24, v25, &v36);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v27, -1, -1);
    MEMORY[0x1E694F1C0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v36 = a1;
  if (v34)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E657F1F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E65E67C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1E65E67C8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E5FAA5A0(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E657F2E8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E657F2E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E65800D8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B628, &unk_1E660C6A0);
            v9 = sub_1E5FAA980(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1ED07B620, 0x1E6987FE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E657F53C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E657AB34(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E657F630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E657AD78(a1, v4, v5, v6);
}

uint64_t sub_1E657F6E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E65765F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1E657F7A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E65768B4(a1, v4, v5, v6);
}

uint64_t sub_1E657F870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6577B40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E657F938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_52Tm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E657F9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E657960C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E657FA98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E657B2B0(a1, v4, v5, v6);
}

uint64_t objectdestroy_18Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E657FBB0(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v59 = a1;
  v4 = sub_1E65D9AC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  v11 = sub_1E65E3B68();
  v62 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  sub_1E65DE368();
  v17 = *(v5 + 16);
  v60 = a3;
  v55 = v17;
  v56 = v5 + 16;
  v17(v10, a3, v4);
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  v20 = os_log_type_enabled(v18, v19);
  v58 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = v11;
    v22 = v21;
    v23 = swift_slowAlloc();
    v52 = v8;
    v24 = v23;
    v63 = v23;
    *v22 = 136315138;
    v25 = sub_1E65D9AA8();
    v53 = v14;
    v27 = v26;
    v57 = *(v5 + 8);
    v57(v10, v4);
    v28 = sub_1E5DFD4B0(v25, v27, &v63);
    v29 = v62;
    v14 = v53;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1E5DE9000, v18, v19, "Configuring audio track for language: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v8 = v52;
    MEMORY[0x1E694F1C0](v30, -1, -1);
    v31 = v22;
    v11 = v54;
    MEMORY[0x1E694F1C0](v31, -1, -1);

    v32 = v29;
  }

  else
  {

    v57 = *(v5 + 8);
    v57(v10, v4);
    v32 = v62;
  }

  v33 = *(v32 + 8);
  v33(v16, v11);
  v34 = v60;
  sub_1E65D9AA8();
  v35 = v61;
  v36 = sub_1E65E6458();

  if (v36 >> 62)
  {
    if (sub_1E65E67C8())
    {
      goto LABEL_6;
    }

LABEL_11:

    sub_1E65DE368();
    v55(v8, v34, v4);
    v39 = sub_1E65E3B48();
    v40 = sub_1E65E6338();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v11;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315138;
      v44 = sub_1E65D9AA8();
      v45 = v4;
      v46 = v14;
      v48 = v47;
      v57(v8, v45);
      v49 = sub_1E5DFD4B0(v44, v48, &v63);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_1E5DE9000, v39, v40, "No option available for language: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1E694F1C0](v43, -1, -1);
      MEMORY[0x1E694F1C0](v42, -1, -1);

      v50 = v46;
      v51 = v41;
    }

    else
    {

      v57(v8, v4);
      v50 = v14;
      v51 = v11;
    }

    v33(v50, v51);
    return;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E694E2D0](0, v36);
    goto LABEL_9;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 32);
LABEL_9:
    v38 = v37;

    [v59 selectMediaOption:v38 inMediaSelectionGroup:v35];

    return;
  }

  __break(1u);
}

unint64_t sub_1E65800D8()
{
  result = qword_1ED07B630;
  if (!qword_1ED07B630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B628, &unk_1E660C6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B630);
  }

  return result;
}

uint64_t sub_1E6580164(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t StandardPlayerViewController.preferredFocusEnvironments.getter()
{
  v6 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E65E6058();
  swift_unknownObjectRetain();
  v1 = v6;
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v6)
  {
    MEMORY[0x1E694D8F0](v2);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E65E5F68();
    }

    sub_1E65E5FA8();
    v3 = v5;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1E5DFE50C(&v6, &unk_1ED07B658, &qword_1E660C6E8);
  return v3;
}

void *StandardPlayerViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  v2 = v1;
  return v1;
}

id sub_1E658046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);

  return v4;
}

id (*StandardPlayerViewController.modalPresentationStyle.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController);
  a1[1] = v3;
  *a1 = [v3 modalPresentationStyle];
  return sub_1E658071C;
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v5 = *&v0[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController];
  [v0 addChildViewController_];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v7 addSubview_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  [v5 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E65EFF30;
  v13 = [v5 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v19;
  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v0 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v12 + 40) = v26;
  v27 = [v5 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v0 view];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v12 + 48) = v33;
  v34 = [v5 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 bottomAnchor];

    v41 = [v36 constraintEqualToAnchor_];
    *(v12 + 56) = v41;
    sub_1E6094C88();
    v42 = sub_1E65E5EF8();

    [v39 activateConstraints_];

    v43 = sub_1E65E60A8();
    (*(*(v43 - 8) + 56))(v4, 1, 1, v43);
    sub_1E65E6058();
    v44 = v0;
    v45 = sub_1E65E6048();
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    v46[2] = v45;
    v46[3] = v47;
    v46[4] = v44;
    sub_1E64B80F8(0, 0, v4, &unk_1E660C6F8, v46);

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1E6580D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6580D98, v6, v5);
}

uint64_t sub_1E6580D98()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6580DC4, v1, 0);
}

uint64_t sub_1E6580DC4()
{
  sub_1E6576384();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v1, v2);
}

uint64_t sub_1E6580E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6580D00(a1, v4, v5, v6);
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1);
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1E65E6058();
  v8 = v1;
  v9 = sub_1E65E6048();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_1E64B80F8(0, 0, v6, &unk_1E660C708, v10);
}

uint64_t sub_1E6581048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6581118, v6, v5);
}

uint64_t sub_1E6581118()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6581144, v1, 0);
}

uint64_t sub_1E6581144()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1E65E60A8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1E6581FAC();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_1E64B80F8(0, 0, v2, &unk_1E660C790, v5);

  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1E6581250, v6, v7);
}

uint64_t sub_1E6581250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E65812B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6581048(a1, v4, v5, v6);
}

Swift::Void __swiftcall StandardPlayerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidDisappear_, a1);
  v7 = [v1 parentViewController];
  if (v7)
  {
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController];
    v9 = [v8 player];
    if (v9)
    {
      v10 = v9;
      [v9 currentTime];
      v11 = v26;
      v12 = v27;
      v13 = v28;
    }

    else
    {
      v11 = *MEMORY[0x1E6960CC0];
      v12 = *(MEMORY[0x1E6960CC0] + 8);
      v13 = *(MEMORY[0x1E6960CC0] + 16);
    }

    v14 = [v8 player];
    if (v14 && (v15 = v14, v16 = [v14 currentItem], v15, v16))
    {
      [v16 duration];
      v17 = v26;
      v18 = v27;
      v19 = v28;
    }

    else
    {
      v17 = *MEMORY[0x1E6960CC0];
      v18 = *(MEMORY[0x1E6960CC0] + 8);
      v19 = *(MEMORY[0x1E6960CC0] + 16);
    }

    [v8 setPlayer_];
    v20 = sub_1E65E60A8();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    sub_1E65E6058();
    v21 = v1;
    v22 = sub_1E65E6048();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[8] = v17;
    v23[9] = v18;
    v23[10] = v19;
    sub_1E64B80F8(0, 0, v6, &unk_1E660C718, v23);
  }
}

uint64_t sub_1E65817CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1E65E6058();
  v8[9] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6581878, v10, v9);
}

uint64_t sub_1E6581878()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter);
  *(v0 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E65818A4, v1, 0);
}

uint64_t sub_1E65818A4()
{
  sub_1E6579FD4(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1E6581914, v1, v2);
}

uint64_t sub_1E6581914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6581974(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E65817CC(a1, v12, v4, v5, v6, v7, v8, v9);
}

Swift::Void __swiftcall StandardPlayerViewController.togglePlaybackTapped()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) player];
  v3 = v1;
  if (v1 && ([v1 rate], v1 = v3, v2 == 0.0))
  {
    [v3 play];
  }

  else
  {
    [v1 pause];
  }
}