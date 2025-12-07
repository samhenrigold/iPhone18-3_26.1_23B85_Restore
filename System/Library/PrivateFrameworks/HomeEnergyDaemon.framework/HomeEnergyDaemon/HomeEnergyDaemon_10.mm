uint64_t sub_22B22CF88(uint64_t a1)
{
  v55 = v1;
  v2 = v1[165];
  v3 = v1[164];
  v4 = v1[163];
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = v1[97];
  v6 = v1[90];
  v7 = v1[89];
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);

  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[152];
  if (v11)
  {
    v13 = v1[151];
    v14 = v1[149];
    v53 = v1[97];
    v15 = v1[90];
    v51 = v1[150];
    v52 = v1[89];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v54);
    *(v16 + 12) = 2080;
    v18 = sub_22B1A7B20(v13, v12, v54);

    *(v16 + 14) = v18;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_22B1A7B20(v14, v51, v54);
    _os_log_impl(&dword_22B116000, v9, v10, "%s site %s could not get placemark from %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v15 + 8))(v53, v52);
  }

  else
  {
    v19 = v1[97];
    v20 = v1[90];
    v21 = v1[89];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v1[148];

  sub_22B35F1DC();
  if (v22)
  {

    sub_22B35F1BC();
  }

  v23 = v1[123];
  v24 = v1[82];
  v25 = v1[81];
  sub_22B170BE0(v1[126], v23, &qword_27D8BA340, &qword_22B363FB0);
  v26 = *(v24 + 48);
  if (v26(v23, 1, v25) == 1)
  {
    sub_22B123284(v1[123], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v27 = v1[156];
    v28 = v1[140];
    v29 = v1[124];
    v30 = v1[85];
    v31 = v1[82];
    v32 = v1[81];
    (*(v31 + 32))(v30, v1[123], v32);
    v27(v29, v30, v32);
    v28(v29, 0, 1, v32);
    sub_22B35F2BC();
    (*(v31 + 8))(v30, v32);
  }

  v33 = v1[122];
  v34 = v1[81];
  sub_22B170BE0(v1[128], v33, &qword_27D8BA340, &qword_22B363FB0);
  if (v26(v33, 1, v34) == 1)
  {
    sub_22B123284(v1[122], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v35 = v1[156];
    v36 = v1[140];
    v37 = v1[124];
    v38 = v1[84];
    v39 = v1[82];
    v40 = v1[81];
    (*(v39 + 32))(v38, v1[122], v40);
    v35(v37, v38, v40);
    v36(v37, 0, 1, v40);
    sub_22B35F23C();
    (*(v39 + 8))(v38, v40);
  }

  v41 = v1[121];
  v42 = v1[81];
  sub_22B170BE0(v1[125], v41, &qword_27D8BA340, &qword_22B363FB0);
  if (v26(v41, 1, v42) == 1)
  {
    sub_22B123284(v1[121], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v43 = v1[156];
    v44 = v1[140];
    v45 = v1[124];
    v46 = v1[83];
    v47 = v1[82];
    v48 = v1[81];
    (*(v47 + 32))(v46, v1[121], v48);
    v43(v45, v46, v48);
    v44(v45, 0, 1, v48);
    sub_22B35F10C();
    (*(v47 + 8))(v46, v48);
  }

  sub_22B35F39C();
  LOBYTE(v54[0]) = 0;
  sub_22B35F2FC();
  v49 = swift_task_alloc();
  v1[166] = v49;
  *v49 = v1;
  v49[1] = sub_22B22D5CC;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B22D5CC()
{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  v3 = *(v2 + 528);
  if (v0)
  {
    v4 = sub_22B22DF00;
  }

  else
  {
    v4 = sub_22B22D6F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B22D6F8()
{
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[168] = qword_28140BCB0;

  v4 = swift_task_alloc();
  v0[169] = v4;
  *v4 = v0;
  v4[1] = sub_22B22D858;
  v5 = v0[70];
  v6 = v0[69];

  return sub_22B202CC8(v6, v5);
}

uint64_t sub_22B22D858(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1360) = a1;

  return MEMORY[0x2822009F8](sub_22B22D98C, v2, 0);
}

uint64_t sub_22B22D98C()
{
  v37 = v0;
  v1 = v0[170];
  v36 = 60.0;
  if (v1 && (v2 = v1, v3 = sub_22B35FFCC(), v2, v3 >= 60))
  {
    v13 = v3;
    v36 = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 94;
    v14 = v0[94];
    v15 = v0[90];
    v16 = v0[89];
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v13;
      v12 = "Using server defined delay of %f";
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 93;
    v5 = v0[93];
    v6 = v0[90];
    v7 = v0[89];
    v8 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x404E000000000000;
      v12 = "Using default delay of %f";
LABEL_11:
      _os_log_impl(&dword_22B116000, v9, v10, v12, v11, 0xCu);
      v18 = *v4;
      MEMORY[0x23188F650](v11, -1, -1);
      goto LABEL_13;
    }
  }

  v18 = *v4;
LABEL_13:
  v19 = v0[167];
  v20 = v0[90];
  v21 = v0[89];
  v22 = v0[68];
  v23 = v0[67];

  (*(v20 + 8))(v18, v21);
  v24 = os_transaction_create();
  result = sub_22B235AA8(&v36, v23, v22, v24, v25, &unk_283EFD020, sub_22B23E774, &block_descriptor_96);
  if (!v19)
  {
    v27 = v0[162];
    v28 = v0[142];
    v29 = v0[136];
    v30 = v0[132];
    v31 = v0[130];
    v34 = v0[128];
    v35 = v0[170];
    v0[65] = v27;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360AEC();

    swift_unknownObjectRelease();

    sub_22B123284(v34, &qword_27D8BA340, &qword_22B363FB0);

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_22B22DF00()
{
  v1 = v0[167];
  v2 = v0[162];

  v3 = v0[127];
  v4 = v0[126];
  sub_22B123284(v0[125], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  v5 = swift_task_alloc();
  v0[171] = v5;
  *v5 = v0;
  v5[1] = sub_22B22E014;
  v6 = v0[136];
  v7 = v0[70];
  v8 = v0[69];

  return sub_22B22EFA8(v6, v8, v7);
}

uint64_t sub_22B22E014()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22E124, v1, 0);
}

uint64_t sub_22B22E124()
{
  v1 = v0[142];
  v2 = v0[136];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[128];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 12;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B22E3E4()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22E4F4, v1, 0);
}

uint64_t sub_22B22E4F4()
{
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[128];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B22E780()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B22E890, v1, 0);
}

uint64_t sub_22B22E890()
{
  v1 = v0[136];
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[128];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 24;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B22EB20()
{
  *(v0 + 504) = *(v0 + 1064);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B22ED5C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);

  *(v0 + 504) = *(v0 + 1096);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B22EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B22F06C, 0, 0);
}

uint64_t sub_22B22F06C()
{
  v1 = sub_22B36014C();
  v0[11] = v2;
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  sub_22B36012C();
  v5 = sub_22B36013C();
  v6 = sub_22B36018C();
  v8 = v7;

  v0[12] = v8;
  sub_22B3602DC();
  v9 = sub_22B36029C();
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22B22F184;
  v11 = v0[6];
  v12 = v0[7];

  return MEMORY[0x2821724D0](v3, v4, v6, v8, v11, v12, v9);
}

uint64_t sub_22B22F184(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 104);
  if (v1)
  {

    v7 = sub_22B22F56C;
  }

  else
  {

    *(v5 + 121) = a1 & 1;
    v7 = sub_22B22F338;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B22F338()
{
  v20 = v0;
  v1 = *(v0 + 121);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B1A7B20(0x2928656B6F766572, 0xE800000000000000, &v19);
    *(v12 + 12) = 2080;
    *(v0 + 120) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
    v14 = sub_22B3608BC();
    v16 = sub_22B1A7B20(v14, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_22B116000, v6, v7, "%s Revoking newly created subscription %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B22F56C()
{
  v19 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B1A7B20(0x2928656B6F766572, 0xE800000000000000, &v18);
    *(v11 + 12) = 2080;
    *(v0 + 120) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
    v13 = sub_22B3608BC();
    v15 = sub_22B1A7B20(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_22B116000, v5, v6, "%s Revoking newly created subscription %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22B22F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B22F86C, 0, 0);
}

uint64_t sub_22B22F86C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Performing first fetch of AMI Data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B22FA58;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B2E2A14(v15, v14);
}

uint64_t sub_22B22FA58()
{

  return MEMORY[0x2822009F8](sub_22B22FB54, 0, 0);
}

uint64_t sub_22B22FB54()
{
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "Completed first fetch of AMI Data", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B22FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v67 = a8;
  v68 = a4;
  v62 = a5;
  v63 = a6;
  v69 = a2;
  v53 = a1;
  v65 = a7;
  v66 = a16;
  v64 = a15;
  v60 = a3;
  v61 = a13;
  v58 = a14;
  v59 = a11;
  v55 = a10;
  v56 = a12;
  v57 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v50 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v52 = &v47 - v19;
  v21 = sub_22B35DE9C();
  v49 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v51 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v47 - v25;
  v54 = &v47 - v25;
  v27 = sub_22B360B6C();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  (*(v22 + 16))(&v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a17, v21);
  v48 = v18;
  (*(v18 + 16))(v20, v53, v17);
  v29 = sub_22B23E468(&qword_27D8BA2B0, v28, type metadata accessor for EnergySiteManager, &unk_22B3661D8);
  v30 = (*(v22 + 80) + 152) & ~*(v22 + 80);
  v31 = (v23 + *(v18 + 80) + v30) & ~*(v18 + 80);
  v32 = swift_allocObject();
  v33 = v69;
  *(v32 + 2) = v69;
  *(v32 + 3) = v29;
  v34 = v60;
  *(v32 + 4) = v33;
  *(v32 + 5) = v34;
  v35 = v67;
  v36 = v62;
  v37 = v63;
  *(v32 + 6) = v68;
  *(v32 + 7) = v36;
  v38 = v65;
  v39 = v66;
  *(v32 + 8) = v37;
  *(v32 + 9) = v38;
  v41 = v56;
  v40 = v57;
  *(v32 + 10) = v35;
  *(v32 + 11) = v40;
  v43 = v58;
  v42 = v59;
  *(v32 + 12) = v55;
  *(v32 + 13) = v42;
  v44 = v61;
  *(v32 + 14) = v41;
  *(v32 + 15) = v44;
  v45 = v64;
  *(v32 + 16) = v43;
  *(v32 + 17) = v45;
  *(v32 + 18) = v39;
  (*(v22 + 32))(&v32[v30], v51, v49);
  (*(v48 + 32))(&v32[v31], v52, v50);

  swift_retain_n();

  sub_22B123DF0(0, 0, v54, &unk_22B366248, v32);
}

uint64_t sub_22B230044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 656) = v29;
  *(v8 + 648) = v28;
  *(v8 + 632) = v27;
  *(v8 + 616) = v26;
  *(v8 + 600) = v25;
  *(v8 + 584) = v24;
  *(v8 + 568) = v23;
  *(v8 + 560) = a8;
  *(v8 + 552) = a7;
  *(v8 + 544) = a6;
  *(v8 + 536) = a5;
  *(v8 + 528) = a4;
  v11 = sub_22B35DE9C();
  *(v8 + 664) = v11;
  *(v8 + 672) = *(v11 - 8);
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v12 = sub_22B35EE4C();
  *(v8 + 704) = v12;
  *(v8 + 712) = *(v12 - 8);
  *(v8 + 720) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v8 + 728) = v13;
  *(v8 + 736) = *(v13 - 8);
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v14 = sub_22B35E0BC();
  *(v8 + 840) = v14;
  *(v8 + 848) = *(v14 - 8);
  *(v8 + 856) = swift_task_alloc();
  v15 = sub_22B35DD8C();
  *(v8 + 864) = v15;
  *(v8 + 872) = *(v15 - 8);
  *(v8 + 880) = swift_task_alloc();
  v16 = sub_22B35DD6C();
  *(v8 + 888) = v16;
  *(v8 + 896) = *(v16 - 8);
  *(v8 + 904) = swift_task_alloc();
  v17 = sub_22B35DD4C();
  *(v8 + 912) = v17;
  *(v8 + 920) = *(v17 - 8);
  *(v8 + 928) = swift_task_alloc();
  v18 = sub_22B35DD5C();
  *(v8 + 936) = v18;
  *(v8 + 944) = *(v18 - 8);
  *(v8 + 952) = swift_task_alloc();
  v19 = sub_22B35DDBC();
  *(v8 + 960) = v19;
  *(v8 + 968) = *(v19 - 8);
  *(v8 + 976) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();
  v20 = swift_task_alloc();
  *(v8 + 1048) = v20;
  *v20 = v8;
  v20[1] = sub_22B2305DC;

  return sub_22B22250C(a5, a6, 0, 0);
}

uint64_t sub_22B2305DC(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1056) = a1;

  return MEMORY[0x2822009F8](sub_22B2306F4, v2, 0);
}

uint64_t sub_22B2306F4()
{
  if (v0[132])
  {
    sub_22B36012C();

    v1 = swift_task_alloc();
    v0[133] = v1;
    *v1 = v0;
    v1[1] = sub_22B2309FC;
    v2 = v0[70];
    v3 = v0[69];

    return MEMORY[0x282172500](v3, v2);
  }

  else
  {
    sub_22B134CDC();
    v4 = swift_allocError();
    *v5 = 10;
    swift_willThrow();
    v0[63] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360ADC();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B2309FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1072) = a1;
  *(v4 + 1080) = v1;

  v5 = *(v3 + 528);
  if (v1)
  {
    v6 = sub_22B235290;
  }

  else
  {
    v6 = sub_22B230B34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B230B34()
{
  v1 = *(v0[66] + 120);
  v0[136] = v1;
  v9 = (*MEMORY[0x277D181A0] + MEMORY[0x277D181A0]);
  v2 = v1;
  v3 = swift_task_alloc();
  v0[137] = v3;
  *v3 = v0;
  v3[1] = sub_22B230C0C;
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];

  return v9(v7, v6, v5, v4, v2);
}

uint64_t sub_22B230C0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1104) = a1;
  *(v3 + 1112) = v1;

  if (v1)
  {
    v4 = *(v3 + 528);
    v5 = sub_22B2354CC;
  }

  else
  {
    v6 = *(v3 + 528);

    v5 = sub_22B230D38;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B230D38()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[109];
  v26 = v0[108];
  v27 = v0[110];
  v8 = v0[106];
  v28 = v0[105];
  v9 = v0[104];
  (*(v0[118] + 104))(v0[119], *MEMORY[0x277CC9460], v0[117]);
  (*(v2 + 104))(v1, *MEMORY[0x277CC9458], v3);
  (*(v5 + 104))(v4, *MEMORY[0x277CC9468], v6);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v26);
  sub_22B35E08C();
  v10 = *(v8 + 48);
  v0[140] = v10;
  v0[141] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v28);
  if (v11 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[139];
    (*(v0[106] + 32))(v0[107], v0[104], v0[105]);
    sub_22B35DD7C();
    v13 = sub_22B36013C();
    sub_22B3601BC();

    sub_22B35DD9C();
    v14 = v12;
    v15 = v0[122];
    v16 = v0[121];
    v17 = v0[120];
    if (v14)
    {

      (*(v16 + 8))(v15, v17);
      v18 = 1;
    }

    else
    {
      (*(v16 + 8))(v0[122], v0[120]);

      v18 = 0;
    }

    v19 = v0[130];
    v20 = v0[83];
    v21 = v0[66];
    v22 = *(v0[84] + 56);
    v0[142] = v22;
    v22(v19, v18, 1, v20);
    v23 = *(v21 + 120);
    v0[143] = v23;
    v0[2] = v0;
    v0[3] = sub_22B23108C;
    v24 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B30F28C;
    v0[21] = &block_descriptor_18;
    v0[22] = v24;
    [v23 resetWithCompletionHandler_];
    v11 = (v0 + 2);
  }

  return MEMORY[0x282200938](v11);
}

uint64_t sub_22B23108C()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B231180, v1, 0);
}

uint64_t sub_22B231180()
{
  v105 = v0;

  v1 = sub_22B36013C();
  v2 = sub_22B3601AC();

  v3 = v2 >> 62;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (sub_22B36109C() != 1)
  {
LABEL_42:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v67 = *(v0 + 744);
    v68 = *(v0 + 736);
    v69 = *(v0 + 728);
    v70 = __swift_project_value_buffer(v69, qword_28140BD10);
    swift_beginAccess();
    (*(v68 + 16))(v67, v70, v69);

    v71 = sub_22B36050C();
    v72 = sub_22B360D1C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v104 = v74;
      *v73 = 136315394;
      *(v73 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v104);
      *(v73 + 12) = 2048;
      if (v3)
      {
        v75 = sub_22B36109C();
      }

      else
      {
        v75 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v79 = *(v0 + 744);
      v80 = *(v0 + 736);
      v81 = *(v0 + 728);

      *(v73 + 14) = v75;

      _os_log_impl(&dword_22B116000, v71, v72, "%s multiple customer agreements not supported: %ld", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x23188F650](v74, -1, -1);
      MEMORY[0x23188F650](v73, -1, -1);

      (*(v80 + 8))(v79, v81);
    }

    else
    {
      v76 = *(v0 + 744);
      v77 = *(v0 + 736);
      v78 = *(v0 + 728);
      swift_bridgeObjectRelease_n();

      (*(v77 + 8))(v76, v78);
    }

    v34 = swift_task_alloc();
    *(v0 + 1384) = v34;
    *v34 = v0;
    v35 = sub_22B234EF0;
    goto LABEL_57;
  }

  if (!sub_22B36109C())
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 752);
    v56 = *(v0 + 736);
    v57 = *(v0 + 728);
    v58 = __swift_project_value_buffer(v57, qword_28140BD10);
    swift_beginAccess();
    (*(v56 + 16))(v55, v58, v57);
    v59 = sub_22B36050C();
    v60 = sub_22B360D1C();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 736);
    v64 = *(v0 + 728);
    if (v61)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v104 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v104);
      _os_log_impl(&dword_22B116000, v59, v60, "%s customer agreement is nil", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x23188F650](v66, -1, -1);
      MEMORY[0x23188F650](v65, -1, -1);
    }

    (*(v63 + 8))(v62, v64);
    v34 = swift_task_alloc();
    *(v0 + 1376) = v34;
    *v34 = v0;
    v35 = sub_22B234B54;
LABEL_57:
    v34[1] = v35;
    v94 = *(v0 + 1104);
    v95 = *(v0 + 560);
    v96 = *(v0 + 552);

    return sub_22B235718(v94, v96, v95);
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23188EAC0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v4 = *(v2 + 32);
  }

  *(v0 + 1152) = v4;

  v5 = sub_22B3600BC();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_8;
    }

LABEL_53:
    if (qword_28140A0C8 == -1)
    {
LABEL_54:
      v82 = *(v0 + 808);
      v83 = *(v0 + 736);
      v84 = *(v0 + 728);
      v85 = __swift_project_value_buffer(v84, qword_28140BD10);
      swift_beginAccess();
      (*(v83 + 16))(v82, v85, v84);
      v86 = sub_22B36050C();
      v87 = sub_22B360D1C();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 808);
      v90 = *(v0 + 736);
      v91 = *(v0 + 728);
      if (v88)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v104 = v93;
        *v92 = 136315394;
        *(v92 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v104);
        *(v92 + 12) = 2048;
        *(v92 + 14) = 0;
        _os_log_impl(&dword_22B116000, v86, v87, "%s accounts without meters not supported: %ld", v92, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x23188F650](v93, -1, -1);
        MEMORY[0x23188F650](v92, -1, -1);
      }

      (*(v90 + 8))(v89, v91);
      v34 = swift_task_alloc();
      *(v0 + 1160) = v34;
      *v34 = v0;
      v35 = sub_22B231D80;
      goto LABEL_57;
    }

LABEL_61:
    swift_once();
    goto LABEL_54;
  }

  v6 = sub_22B36109C();

  if (!v6)
  {
    goto LABEL_53;
  }

LABEL_8:
  if (v6 >= 2)
  {
    v8 = sub_22B3600BC();
    v2 = v8;
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v10 = sub_22B36109C();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    v102 = MEMORY[0x277D84F90];
    while (v10 != v3)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23188EAC0](v3, v2);
      }

      else
      {
        if (v3 >= *(v9 + 16))
        {
          goto LABEL_34;
        }

        v11 = *(v2 + 8 * v3 + 32);
      }

      v12 = v11;
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v14 = sub_22B3601CC();
      v16 = v15;

      ++v3;
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_22B32CD20(0, *(v102 + 2) + 1, 1, v102);
        }

        v18 = *(v102 + 2);
        v17 = *(v102 + 3);
        if (v18 >= v17 >> 1)
        {
          v102 = sub_22B32CD20((v17 > 1), v18 + 1, 1, v102);
        }

        *(v102 + 2) = v18 + 1;
        v19 = &v102[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        v3 = v13;
      }
    }

    v20 = sub_22B31A80C(v102);

    v21 = *(v20 + 16);

    if (v21 <= 1)
    {
      goto LABEL_30;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 800);
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = __swift_project_value_buffer(v24, qword_28140BD10);
    swift_beginAccess();
    (*(v23 + 16))(v22, v25, v24);
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 800);
    v30 = *(v0 + 736);
    v31 = *(v0 + 728);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v104 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B3693E0, &v104);
      _os_log_impl(&dword_22B116000, v26, v27, "%s usage points found!", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    v34 = swift_task_alloc();
    *(v0 + 1168) = v34;
    *v34 = v0;
    v35 = sub_22B232128;
    goto LABEL_57;
  }

LABEL_30:
  v36 = *(v0 + 1136);
  v37 = *(v0 + 1032);
  v98 = *(v0 + 1024);
  v99 = *(v0 + 1016);
  v38 = *(v0 + 712);
  v100 = *(v0 + 704);
  v101 = *(v0 + 720);
  v39 = *(v0 + 672);
  v40 = *(v0 + 664);
  v97 = *(v0 + 648);
  v41 = MEMORY[0x23188EEB0](v7);
  *(v0 + 1176) = sub_22B3600CC();
  *(v0 + 1184) = v42;
  *(v0 + 1192) = sub_22B3600AC();
  *(v0 + 1200) = v43;
  objc_autoreleasePoolPop(v41);
  v103 = sub_22B35F3AC();
  v45 = v44;
  *(v0 + 1208) = v103;
  *(v0 + 1216) = v44;
  v46 = sub_22B36013C();
  v47 = sub_22B36018C();
  v49 = v48;
  *(v0 + 488) = v47;
  *(v0 + 496) = v48;

  *(v0 + 1224) = v49;
  *(v0 + 1232) = sub_22B36014C();
  *(v0 + 1240) = v50;
  v51 = *(v39 + 16);
  v39 += 16;
  *(v0 + 1248) = v51;
  *(v0 + 1256) = v39 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v37, v97, v40);
  *(v0 + 1264) = (v39 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v36(v37, 0, 1, v40);
  sub_22B35DE6C();
  v36(v98, 0, 1, v40);
  v36(v99, 1, 1, v40);
  (*(v38 + 104))(v101, *MEMORY[0x277D07358], v100);
  *(v0 + 1272) = sub_22B35EE3C();
  *(v0 + 1280) = v52;
  (*(v38 + 8))(v101, v100);
  v53 = swift_task_alloc();
  *(v0 + 1288) = v53;
  *v53 = v0;
  v53[1] = sub_22B2324D0;

  return sub_22B22250C(v103, v45, 0, 0);
}

uint64_t sub_22B231D80()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B231E90, v1, 0);
}

uint64_t sub_22B231E90()
{
  v1 = v0[144];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[130];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 26;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B232128()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B232238, v1, 0);
}

uint64_t sub_22B232238()
{
  v1 = v0[144];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[130];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 25;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B2324D0(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_22B2325E8, v2, 0);
}

uint64_t sub_22B2325E8()
{
  if (v0[162])
  {
    v1 = v0[129];
    v2 = v0[126];
    v13 = v0[155];

    sub_22B35F13C();

    sub_22B35F44C();
    sub_22B170BE0(v1, v2, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B35F2DC();

    sub_22B35F07C();

    sub_22B35F0CC();

    sub_22B35F0CC();
    if (v13)
    {

      sub_22B35F15C();
    }

    if (v0[78])
    {

      sub_22B35F09C();
    }

    sub_22B35F0EC();

    sub_22B35F3CC();
    v3 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[163] = v3;
    v4 = sub_22B36081C();
    v0[164] = v4;
    v0[10] = v0;
    v0[15] = v0 + 64;
    v0[11] = sub_22B232988;
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22B164948;
    v0[29] = &block_descriptor_52;
    v0[30] = v5;
    [v3 geocodeAddressString:v4 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    v6 = v0[129];
    v7 = v0[128];
    sub_22B123284(v0[127], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
    v8 = swift_task_alloc();
    v0[171] = v8;
    *v8 = v0;
    v8[1] = sub_22B234794;
    v9 = v0[138];
    v10 = v0[70];
    v11 = v0[69];

    return sub_22B235718(v9, v11, v10);
  }
}

uint64_t sub_22B232988()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1320) = v2;
  v3 = *(v1 + 528);
  if (v2)
  {
    v4 = sub_22B233718;
  }

  else
  {
    v4 = sub_22B232AA8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B232AA8()
{
  v115 = v1;
  v4 = *(v1 + 512);
  if (v4 >> 62)
  {
    if (sub_22B36109C())
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23188EAC0](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        v5 = *(v4 + 32);
      }

      v3 = v5;
      v6 = *(v1 + 1312);

      v7 = [v3 location];
      if (!v7)
      {
LABEL_11:
        v25 = [v3 timeZone];
        if (v25)
        {
          v26 = v25;
          sub_22B35E0AC();

          v27 = 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = *(v1 + 1120);
        v29 = *(v1 + 840);
        v30 = *(v1 + 824);
        v31 = *(v1 + 816);
        (*(*(v1 + 848) + 56))(v31, v27, 1, v29);
        sub_22B23E3A4(v31, v30);
        if (v28(v30, 1, v29) == 1)
        {
          v32 = *(v1 + 824);

          sub_22B123284(v32, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v33 = *(v1 + 848);
          v34 = *(v1 + 840);
          v35 = *(v1 + 824);
          v36 = sub_22B35E06C();
          v38 = v37;
          (*(v33 + 8))(v35, v34);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v39 = *(v1 + 776);
          v40 = *(v1 + 736);
          v41 = *(v1 + 728);
          v42 = __swift_project_value_buffer(v41, qword_28140BD10);
          swift_beginAccess();
          (*(v40 + 16))(v39, v42, v41);

          v43 = sub_22B36050C();
          v44 = sub_22B360D2C();

          v45 = os_log_type_enabled(v43, v44);
          v46 = *(v1 + 1216);
          if (v45)
          {
            v47 = *(v1 + 1208);
            v104 = *(v1 + 736);
            v106 = *(v1 + 728);
            v109 = *(v1 + 776);
            v48 = swift_slowAlloc();
            v112 = v3;
            v114 = swift_slowAlloc();
            v49 = v114;
            *v48 = 136315650;
            *(v48 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
            *(v48 + 12) = 2080;
            v50 = sub_22B1A7B20(v47, v46, &v114);

            *(v48 + 14) = v50;
            *(v48 + 22) = 2080;
            v51 = sub_22B1A7B20(v36, v38, &v114);

            *(v48 + 24) = v51;
            _os_log_impl(&dword_22B116000, v43, v44, "%s site %s set time zone to %s", v48, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v49, -1, -1);
            MEMORY[0x23188F650](v48, -1, -1);

            (*(v104 + 8))(v109, v106);
          }

          else
          {
            v52 = *(v1 + 776);
            v53 = *(v1 + 736);
            v54 = *(v1 + 728);

            (*(v53 + 8))(v52, v54);
          }
        }

        goto LABEL_27;
      }

      v0 = v7;
      v2 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v8 = *(v1 + 784);
        v9 = *(v1 + 736);
        v10 = *(v1 + 728);
        v11 = __swift_project_value_buffer(v10, qword_28140BD10);
        swift_beginAccess();
        (*(v9 + 16))(v8, v11, v10);

        v12 = v2;
        v13 = sub_22B36050C();
        v14 = sub_22B360D2C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v1 + 1208);
          v108 = *(v1 + 784);
          v16 = *(v1 + 736);
          v103 = *(v1 + 1216);
          v105 = *(v1 + 728);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v111 = v3;
          v114 = swift_slowAlloc();
          v19 = v114;
          *v17 = 136315650;
          *(v17 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_22B1A7B20(v15, v103, &v114);
          *(v17 + 22) = 2112;
          *(v17 + 24) = v12;
          *v18 = v0;
          v20 = v12;
          _os_log_impl(&dword_22B116000, v13, v14, "%s site %s set location to %@", v17, 0x20u);
          sub_22B123284(v18, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v18, -1, -1);
          swift_arrayDestroy();
          v21 = v19;
          v3 = v111;
          MEMORY[0x23188F650](v21, -1, -1);
          MEMORY[0x23188F650](v17, -1, -1);

          (*(v16 + 8))(v108, v105);
        }

        else
        {
          v22 = *(v1 + 784);
          v23 = *(v1 + 736);
          v24 = *(v1 + 728);

          (*(v23 + 8))(v22, v24);
        }

        goto LABEL_11;
      }

LABEL_43:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v55 = *(v1 + 1312);
  v56 = *(v1 + 1304);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v57 = *(v1 + 792);
  v58 = *(v1 + 736);
  v59 = *(v1 + 728);
  v60 = __swift_project_value_buffer(v59, qword_28140BD10);
  swift_beginAccess();
  (*(v58 + 16))(v57, v60, v59);

  v61 = sub_22B36050C();
  v62 = sub_22B360D1C();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v1 + 1216);
  if (v63)
  {
    v65 = *(v1 + 1208);
    v66 = *(v1 + 736);
    v110 = *(v1 + 728);
    v113 = *(v1 + 792);
    v107 = *(v1 + 640);
    v67 = *(v1 + 632);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v114 = v69;
    *v68 = 136315650;
    *(v68 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v114);
    *(v68 + 12) = 2080;
    v70 = sub_22B1A7B20(v65, v64, &v114);

    *(v68 + 14) = v70;
    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_22B1A7B20(v67, v107, &v114);
    _os_log_impl(&dword_22B116000, v61, v62, "%s site %s could not get placemark from %s", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v69, -1, -1);
    MEMORY[0x23188F650](v68, -1, -1);

    (*(v66 + 8))(v113, v110);
  }

  else
  {
    v71 = *(v1 + 792);
    v72 = *(v1 + 736);
    v73 = *(v1 + 728);

    (*(v72 + 8))(v71, v73);
  }

LABEL_27:
  v74 = *(v1 + 1200);

  sub_22B35F1DC();
  if (v74)
  {

    sub_22B35F1BC();
  }

  v75 = *(v1 + 1000);
  v76 = *(v1 + 672);
  v77 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1024), v75, &qword_27D8BA340, &qword_22B363FB0);
  v78 = *(v76 + 48);
  if (v78(v75, 1, v77) == 1)
  {
    sub_22B123284(*(v1 + 1000), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v79 = *(v1 + 1248);
    v80 = *(v1 + 1136);
    v81 = *(v1 + 1008);
    v82 = *(v1 + 696);
    v83 = *(v1 + 672);
    v84 = *(v1 + 664);
    (*(v83 + 32))(v82, *(v1 + 1000), v84);
    v79(v81, v82, v84);
    v80(v81, 0, 1, v84);
    sub_22B35F2BC();
    (*(v83 + 8))(v82, v84);
  }

  v85 = *(v1 + 992);
  v86 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1040), v85, &qword_27D8BA340, &qword_22B363FB0);
  if (v78(v85, 1, v86) == 1)
  {
    sub_22B123284(*(v1 + 992), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v87 = *(v1 + 1248);
    v88 = *(v1 + 1136);
    v89 = *(v1 + 1008);
    v90 = *(v1 + 688);
    v91 = *(v1 + 672);
    v92 = *(v1 + 664);
    (*(v91 + 32))(v90, *(v1 + 992), v92);
    v87(v89, v90, v92);
    v88(v89, 0, 1, v92);
    sub_22B35F23C();
    (*(v91 + 8))(v90, v92);
  }

  v93 = *(v1 + 984);
  v94 = *(v1 + 664);
  sub_22B170BE0(*(v1 + 1016), v93, &qword_27D8BA340, &qword_22B363FB0);
  if (v78(v93, 1, v94) == 1)
  {
    sub_22B123284(*(v1 + 984), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v95 = *(v1 + 1248);
    v96 = *(v1 + 1136);
    v97 = *(v1 + 1008);
    v98 = *(v1 + 680);
    v99 = *(v1 + 672);
    v100 = *(v1 + 664);
    (*(v99 + 32))(v98, *(v1 + 984), v100);
    v95(v97, v98, v100);
    v96(v97, 0, 1, v100);
    sub_22B35F10C();
    (*(v99 + 8))(v98, v100);
  }

  sub_22B35F39C();
  LOBYTE(v114) = 0;
  sub_22B35F2FC();
  v101 = swift_task_alloc();
  *(v1 + 1328) = v101;
  *v101 = v1;
  v101[1] = sub_22B233D5C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B233718(uint64_t a1)
{
  v55 = v1;
  v2 = v1[165];
  v3 = v1[164];
  v4 = v1[163];
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = v1[99];
  v6 = v1[92];
  v7 = v1[91];
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);

  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[152];
  if (v11)
  {
    v13 = v1[151];
    v14 = v1[92];
    v52 = v1[91];
    v53 = v1[99];
    v51 = v1[80];
    v15 = v1[79];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v54);
    *(v16 + 12) = 2080;
    v18 = sub_22B1A7B20(v13, v12, v54);

    *(v16 + 14) = v18;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_22B1A7B20(v15, v51, v54);
    _os_log_impl(&dword_22B116000, v9, v10, "%s site %s could not get placemark from %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v14 + 8))(v53, v52);
  }

  else
  {
    v19 = v1[99];
    v20 = v1[92];
    v21 = v1[91];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v1[150];

  sub_22B35F1DC();
  if (v22)
  {

    sub_22B35F1BC();
  }

  v23 = v1[125];
  v24 = v1[84];
  v25 = v1[83];
  sub_22B170BE0(v1[128], v23, &qword_27D8BA340, &qword_22B363FB0);
  v26 = *(v24 + 48);
  if (v26(v23, 1, v25) == 1)
  {
    sub_22B123284(v1[125], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v27 = v1[156];
    v28 = v1[142];
    v29 = v1[126];
    v30 = v1[87];
    v31 = v1[84];
    v32 = v1[83];
    (*(v31 + 32))(v30, v1[125], v32);
    v27(v29, v30, v32);
    v28(v29, 0, 1, v32);
    sub_22B35F2BC();
    (*(v31 + 8))(v30, v32);
  }

  v33 = v1[124];
  v34 = v1[83];
  sub_22B170BE0(v1[130], v33, &qword_27D8BA340, &qword_22B363FB0);
  if (v26(v33, 1, v34) == 1)
  {
    sub_22B123284(v1[124], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v35 = v1[156];
    v36 = v1[142];
    v37 = v1[126];
    v38 = v1[86];
    v39 = v1[84];
    v40 = v1[83];
    (*(v39 + 32))(v38, v1[124], v40);
    v35(v37, v38, v40);
    v36(v37, 0, 1, v40);
    sub_22B35F23C();
    (*(v39 + 8))(v38, v40);
  }

  v41 = v1[123];
  v42 = v1[83];
  sub_22B170BE0(v1[127], v41, &qword_27D8BA340, &qword_22B363FB0);
  if (v26(v41, 1, v42) == 1)
  {
    sub_22B123284(v1[123], &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v43 = v1[156];
    v44 = v1[142];
    v45 = v1[126];
    v46 = v1[85];
    v47 = v1[84];
    v48 = v1[83];
    (*(v47 + 32))(v46, v1[123], v48);
    v43(v45, v46, v48);
    v44(v45, 0, 1, v48);
    sub_22B35F10C();
    (*(v47 + 8))(v46, v48);
  }

  sub_22B35F39C();
  LOBYTE(v54[0]) = 0;
  sub_22B35F2FC();
  v49 = swift_task_alloc();
  v1[166] = v49;
  *v49 = v1;
  v49[1] = sub_22B233D5C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B233D5C()
{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  v3 = *(v2 + 528);
  if (v0)
  {
    v4 = sub_22B234680;
  }

  else
  {
    v4 = sub_22B233E88;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B233E88()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v0[168] = qword_28140BCB0;

  v4 = swift_task_alloc();
  v0[169] = v4;
  *v4 = v0;
  v4[1] = sub_22B233FE8;
  v5 = v0[70];
  v6 = v0[69];

  return sub_22B202CC8(v6, v5);
}

uint64_t sub_22B233FE8(uint64_t a1)
{
  v2 = *(*v1 + 528);
  *(*v1 + 1360) = a1;

  return MEMORY[0x2822009F8](sub_22B23411C, v2, 0);
}

uint64_t sub_22B23411C()
{
  v37 = v0;
  v1 = v0[170];
  v36 = 60.0;
  if (v1 && (v2 = v1, v3 = sub_22B35FFCC(), v2, v3 >= 60))
  {
    v13 = v3;
    v36 = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 96;
    v14 = v0[96];
    v15 = v0[92];
    v16 = v0[91];
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v13;
      v12 = "Using server defined delay of %f";
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = v0 + 95;
    v5 = v0[95];
    v6 = v0[92];
    v7 = v0[91];
    v8 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x404E000000000000;
      v12 = "Using default delay of %f";
LABEL_11:
      _os_log_impl(&dword_22B116000, v9, v10, v12, v11, 0xCu);
      v18 = *v4;
      MEMORY[0x23188F650](v11, -1, -1);
      goto LABEL_13;
    }
  }

  v18 = *v4;
LABEL_13:
  v19 = v0[167];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[68];
  v23 = v0[67];

  (*(v20 + 8))(v18, v21);
  v24 = os_transaction_create();
  result = sub_22B235AA8(&v36, v23, v22, v24, v25, &unk_283EFCF30, sub_22B23E414, &block_descriptor_63);
  if (!v19)
  {
    v27 = v0[162];
    v28 = v0[144];
    v29 = v0[138];
    v30 = v0[134];
    v31 = v0[132];
    v34 = v0[130];
    v35 = v0[170];
    v0[65] = v27;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
    sub_22B360AEC();

    swift_unknownObjectRelease();

    sub_22B123284(v34, &qword_27D8BA340, &qword_22B363FB0);

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_22B234680()
{
  v1 = v0[167];
  v2 = v0[162];

  v3 = v0[129];
  v4 = v0[128];
  sub_22B123284(v0[127], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  v5 = swift_task_alloc();
  v0[171] = v5;
  *v5 = v0;
  v5[1] = sub_22B234794;
  v6 = v0[138];
  v7 = v0[70];
  v8 = v0[69];

  return sub_22B235718(v6, v8, v7);
}

uint64_t sub_22B234794()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B2348A4, v1, 0);
}

uint64_t sub_22B2348A4()
{
  v1 = v0[144];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[132];
  v5 = v0[130];
  sub_22B134CDC();
  v6 = swift_allocError();
  *v7 = 12;
  swift_willThrow();

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B234B54()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B234C64, v1, 0);
}

uint64_t sub_22B234C64()
{
  v1 = v0[138];
  v2 = v0[134];
  v3 = v0[132];
  v4 = v0[130];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B234EF0()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_22B235000, v1, 0);
}

uint64_t sub_22B235000()
{
  v1 = v0[138];
  v2 = v0[134];
  v3 = v0[132];
  v4 = v0[130];
  sub_22B134CDC();
  v5 = swift_allocError();
  *v6 = 24;
  swift_willThrow();

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v0[63] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B235290()
{
  *(v0 + 504) = *(v0 + 1080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2354CC()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1056);

  *(v0 + 504) = *(v0 + 1112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  sub_22B360ADC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B235718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2357DC, 0, 0);
}

uint64_t sub_22B2357DC()
{
  v1 = sub_22B36014C();
  v0[11] = v2;
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  sub_22B36012C();
  v5 = sub_22B36013C();
  v6 = sub_22B36018C();
  v8 = v7;

  v0[12] = v8;
  sub_22B3602DC();
  v9 = sub_22B36029C();
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22B2358F4;
  v11 = v0[6];
  v12 = v0[7];

  return MEMORY[0x2821724D0](v3, v4, v6, v8, v11, v12, v9);
}

uint64_t sub_22B2358F4(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 104);
  if (v1)
  {

    v7 = sub_22B23E904;
  }

  else
  {

    *(v5 + 121) = a1 & 1;
    v7 = sub_22B23E8F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B235AA8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v42 = a7;
  v40[1] = a6;
  v41 = a2;
  v11 = sub_22B3605EC();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22B36062C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B36064C();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = v40 - v18;
  v19 = sub_22B36052C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v19, qword_28140BD10);
  swift_beginAccess();
  (*(v20 + 16))(v22, v23, v19);
  v24 = sub_22B36050C();
  v25 = sub_22B360D2C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40[0] = a1;
    v27 = a4;
    v28 = a3;
    v29 = v26;
    *v26 = 0;
    _os_log_impl(&dword_22B116000, v24, v25, "Taking extended lifetime", v26, 2u);
    v30 = v29;
    a3 = v28;
    a4 = v27;
    MEMORY[0x23188F650](v30, -1, -1);
  }

  (*(v20 + 8))(v22, v19);
  sub_22B11870C();
  v40[0] = sub_22B360D9C();
  sub_22B36063C();
  swift_beginAccess();
  v31 = v44;
  sub_22B36065C();
  v32 = v46;
  v45 = *(v45 + 8);
  (v45)(v16, v46);
  v33 = swift_allocObject();
  v33[2] = v41;
  v33[3] = a3;
  v33[4] = a4;
  aBlock[4] = v42;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = v43;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v35 = v47;
  sub_22B36060C();
  v54 = MEMORY[0x277D84F90];
  sub_22B23E468(&qword_281409370, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  v36 = v49;
  v37 = v52;
  sub_22B36104C();
  v38 = v40[0];
  MEMORY[0x23188E6A0](v31, v35, v36, v34);
  _Block_release(v34);

  (*(v51 + 8))(v36, v37);
  (*(v48 + 8))(v35, v50);
  (v45)(v31, v32);
}

uint64_t sub_22B236054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_22B360B3C();
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;

  sub_22B322A98(0, 0, v10, a5, v12);

  return sub_22B123284(v10, &qword_27D8BA8D0, &qword_22B363610);
}

uint64_t sub_22B236188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B236254, 0, 0);
}

uint64_t sub_22B236254()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Performing first fetch of AMI Data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B236440;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B2E2A14(v15, v14);
}

uint64_t sub_22B236440()
{

  return MEMORY[0x2822009F8](sub_22B23E900, 0, 0);
}

uint64_t sub_22B23653C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B3604BC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v3[11] = swift_task_alloc();
  v5 = sub_22B36052C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_22B36047C();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = sub_22B3604AC();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B236788, v2, 0);
}

uint64_t sub_22B236788()
{
  v34 = v0;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v8, "revokeUtilitySubscription", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];
  v12 = v0[19];

  (*(v12 + 16))(v10, v9, v11);
  sub_22B3604EC();
  swift_allocObject();
  v0[26] = sub_22B3604DC();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = v0[17];
  v14 = v0[12];
  v15 = v0[13];
  v16 = __swift_project_value_buffer(v14, qword_28140BD10);
  v0[27] = v16;
  swift_beginAccess();
  v17 = *(v15 + 16);
  v0[28] = v17;
  v0[29] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v16, v14);

  v18 = sub_22B36050C();
  v19 = sub_22B360D2C();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[17];
  v22 = v0[12];
  v23 = v0[13];
  if (v20)
  {
    v25 = v0[5];
    v24 = v0[6];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v33);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_22B1A7B20(v25, v24, &v33);
    _os_log_impl(&dword_22B116000, v18, v19, "%s Revoke subscription for %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v27, -1, -1);
    MEMORY[0x23188F650](v26, -1, -1);
  }

  v28 = *(v23 + 8);
  v28(v21, v22);
  v0[30] = v28;
  v29 = swift_task_alloc();
  v0[31] = v29;
  *v29 = v0;
  v29[1] = sub_22B236B34;
  v30 = v0[6];
  v31 = v0[5];

  return sub_22B22250C(v31, v30, 0, 0);
}

uint64_t sub_22B236B34(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B236C4C, v2, 0);
}

uint64_t sub_22B236C4C(uint64_t a1)
{
  v74 = v1;
  v2 = *(v1 + 256);
  if (!v2)
  {
    (*(v1 + 224))(*(v1 + 112), *(v1 + 216), *(v1 + 96));

    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 240);
    v36 = *(v1 + 112);
    v37 = *(v1 + 96);
    if (v34)
    {
      v39 = *(v1 + 40);
      v38 = *(v1 + 48);
      v71 = *(v1 + 240);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v73[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v73);
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_22B1A7B20(v39, v38, v73);
      _os_log_impl(&dword_22B116000, v32, v33, "%s Site not found. %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v41, -1, -1);
      MEMORY[0x23188F650](v40, -1, -1);

      v71(v36, v37);
    }

    else
    {

      v35(v36, v37);
    }

    sub_22B134CDC();
    swift_allocError();
    *v42 = 10;
    swift_willThrow();
    goto LABEL_30;
  }

  v3 = sub_22B36048C();
  v4 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v6, "Site Fetched", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = sub_22B35F43C();
  if (v8)
  {
    v9 = v8;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = v7;
      v12 = sub_22B35F12C();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v16 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v16 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v17 = *(v1 + 88);
          v18 = *(v1 + 48);
          v69 = *(v1 + 40);
          v19 = sub_22B35F14C();
          v21 = v20;
          v22 = sub_22B35F04C();
          v67 = v23;
          v68 = v22;
          sub_22B360B2C();
          v24 = sub_22B360B6C();
          (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
          v25 = swift_allocObject();
          v25[2] = 0;
          v25[3] = 0;
          v25[4] = v19;
          v25[5] = v21;
          v25[6] = v69;
          v25[7] = v18;
          v25[8] = v14;
          v25[9] = v15;
          v25[10] = v11;
          v25[11] = v9;
          v25[12] = v68;
          v25[13] = v67;

          sub_22B145224(0, 0, v17, &unk_22B366230, v25);

          sub_22B123284(v17, &qword_27D8BA8D0, &qword_22B363610);
          v26 = sub_22B36048C();
          v27 = sub_22B360E3C();
          if (sub_22B360FDC())
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            v29 = sub_22B36046C();
            _os_signpost_emit_with_name_impl(&dword_22B116000, v26, v27, v29, "[START] Reset Site", "", v28, 2u);
            MEMORY[0x23188F650](v28, -1, -1);
          }

          v30 = swift_task_alloc();
          *(v1 + 264) = v30;
          *v30 = v1;
          v30[1] = sub_22B237498;

          return EKEnergySite.save(reset:tokenUpdate:)(1, 0);
        }
      }

      v54 = *(v1 + 224);
      v55 = *(v1 + 216);
      v56 = *(v1 + 128);
      v57 = *(v1 + 96);

      v54(v56, v55, v57);

      v43 = sub_22B36050C();
      v44 = sub_22B360D1C();

      v58 = os_log_type_enabled(v43, v44);
      v46 = *(v1 + 240);
      v47 = *(v1 + 128);
      v48 = *(v1 + 96);
      if (v58)
      {
        v60 = *(v1 + 40);
        v59 = *(v1 + 48);
        v70 = *(v1 + 240);
        v51 = swift_slowAlloc();
        v72 = v2;
        v73[0] = swift_slowAlloc();
        v52 = v73[0];
        *v51 = 136315394;
        *(v51 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v73);
        *(v51 + 12) = 2082;
        *(v51 + 14) = sub_22B1A7B20(v60, v59, v73);
        v53 = "%s SubscriptionID missing %{public}s";
        goto LABEL_27;
      }

LABEL_28:

      v46(v47, v48);
      goto LABEL_29;
    }
  }

  (*(v1 + 224))(*(v1 + 120), *(v1 + 216), *(v1 + 96));

  v43 = sub_22B36050C();
  v44 = sub_22B360D1C();

  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v1 + 240);
  v47 = *(v1 + 120);
  v48 = *(v1 + 96);
  if (!v45)
  {
    goto LABEL_28;
  }

  v50 = *(v1 + 40);
  v49 = *(v1 + 48);
  v70 = *(v1 + 240);
  v51 = swift_slowAlloc();
  v72 = v2;
  v73[0] = swift_slowAlloc();
  v52 = v73[0];
  *v51 = 136315394;
  *(v51 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v73);
  *(v51 + 12) = 2082;
  *(v51 + 14) = sub_22B1A7B20(v50, v49, v73);
  v53 = "%s UtilityID missing %{public}s";
LABEL_27:
  _os_log_impl(&dword_22B116000, v43, v44, v53, v51, 0x16u);
  swift_arrayDestroy();
  v61 = v52;
  v2 = v72;
  MEMORY[0x23188F650](v61, -1, -1);
  MEMORY[0x23188F650](v51, -1, -1);

  v70(v47, v48);
LABEL_29:
  sub_22B134CDC();
  swift_allocError();
  *v62 = 12;
  swift_willThrow();

LABEL_30:

  v64 = *(v1 + 192);
  v63 = *(v1 + 200);
  v65 = *(v1 + 184);
  (*(*(v1 + 152) + 8))(*(v1 + 176), *(v1 + 144));
  (*(v64 + 8))(v63, v65);

  v66 = *(v1 + 8);

  return v66();
}

uint64_t sub_22B237498()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_22B237898;
  }

  else
  {
    v4 = sub_22B2375C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2375C4(uint64_t a1)
{
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v5, "[END] Reset Site", "", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v6 = sub_22B36048C();
  sub_22B3604CC();
  v7 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v8 = v6;
    v9 = v1[9];
    v10 = v1[10];
    v11 = v1[8];

    sub_22B3604FC();

    if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[9] + 8))(v1[10], v1[8]);
      v12 = "";
    }

    v6 = v8;
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v8, v7, v14, "revokeUtilitySubscription", v12, v13, 2u);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v15 = v1[25];
  v17 = v1[23];
  v16 = v1[24];
  v18 = v1[22];
  v19 = v1[19];
  v20 = v1[20];
  v21 = v1[18];

  v22 = *(v19 + 8);
  v22(v20, v21);
  v22(v18, v21);
  (*(v16 + 8))(v15, v17);

  v23 = v1[1];
  v24 = v1[32];

  return v23(v24);
}

uint64_t sub_22B237898()
{
  v1 = v0[32];

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B2379CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v18;
  *(v8 + 128) = v16;
  *(v8 + 144) = v17;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_22B3604BC();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_22B36052C();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_22B36037C();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  v12 = sub_22B36047C();
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v13 = sub_22B3604AC();
  *(v8 + 296) = v13;
  *(v8 + 304) = *(v13 - 8);
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B237C48, 0, 0);
}

uint64_t sub_22B237C48()
{
  v81 = v0;
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v8, "revokeUtilitySubscriptionTask", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[32];
  v12 = v0[33];
  v13 = v0[12];

  (*(v12 + 16))(v10, v9, v11);
  sub_22B3604EC();
  swift_allocObject();
  v0[40] = sub_22B3604DC();
  if (v13)
  {
    v14 = v0[12];

    sub_22B36034C();
    (*(v0[30] + 8))(v0[31], v0[29]);
    v15 = sub_22B36048C();
    v16 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v15, v16, v18, "[START] Revoke Subscription", "", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    sub_22B36012C();
    sub_22B3602DC();
    v19 = sub_22B36029C();
    v0[41] = v19;
    v20 = swift_task_alloc();
    v0[42] = v20;
    *v20 = v0;
    v20[1] = sub_22B238504;
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    v25 = v0[11];

    return MEMORY[0x2821724D0](v25, v14, v23, v24, v21, v22, v19);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = v0[27];
    v27 = v0[24];
    v28 = v0[25];
    v29 = __swift_project_value_buffer(v27, qword_28140BD10);
    swift_beginAccess();
    (*(v28 + 16))(v26, v29, v27);

    v30 = sub_22B36050C();
    v31 = sub_22B360D1C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[27];
    v34 = v0[24];
    v35 = v0[25];
    if (v32)
    {
      v37 = v0[13];
      v36 = v0[14];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v80[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v80);
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_22B1A7B20(v37, v36, v80);
      _os_log_impl(&dword_22B116000, v30, v31, "%s Auth token missing for %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v39, -1, -1);
      MEMORY[0x23188F650](v38, -1, -1);
    }

    (*(v35 + 8))(v33, v34);
    sub_22B134CDC();
    v40 = swift_allocError();
    *v41 = 23;
    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v43 = v0[25];
    v42 = v0[26];
    v44 = v0[24];
    v45 = __swift_project_value_buffer(v44, qword_28140BD10);
    swift_beginAccess();
    (*(v43 + 16))(v42, v45, v44);

    v46 = v40;
    v47 = sub_22B36050C();
    v48 = sub_22B360D1C();

    v49 = os_log_type_enabled(v47, v48);
    v51 = v0[25];
    v50 = v0[26];
    v52 = v0[24];
    if (v49)
    {
      v79 = v0[26];
      v53 = v0[15];
      v54 = v0[16];
      v78 = v0[24];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v80[0] = v57;
      *v55 = 136315650;
      *(v55 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, v80);
      *(v55 + 12) = 2082;
      *(v55 + 14) = sub_22B1A7B20(v53, v54, v80);
      *(v55 + 22) = 2114;
      v58 = v40;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 24) = v59;
      *v56 = v59;
      _os_log_impl(&dword_22B116000, v47, v48, "%s for subID: %{public}s failed, error: %{public}@", v55, 0x20u);
      sub_22B123284(v56, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v57, -1, -1);
      MEMORY[0x23188F650](v55, -1, -1);

      (*(v51 + 8))(v79, v78);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
    }

    v60 = sub_22B36048C();
    v61 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v60, v61, v63, "[END] Revoke Subscription Failed", "", v62, 2u);
      MEMORY[0x23188F650](v62, -1, -1);
    }

    else
    {
    }

    v64 = sub_22B36048C();
    v65 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v64, v65, v67, "[START] Purge Subscription", "", v66, 2u);
      MEMORY[0x23188F650](v66, -1, -1);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v68 = swift_task_alloc();
    v0[44] = v68;
    *v68 = v0;
    v68[1] = sub_22B2389F8;
    v69 = v0[19];
    v70 = v0[20];
    v71 = v0[17];
    v72 = v0[18];
    v73 = v0[15];
    v74 = v0[16];
    v76 = v0[13];
    v75 = v0[14];

    return sub_22B23C4EC(v76, v75, v71, v72, v73, v74, v69, v70);
  }
}

uint64_t sub_22B238504(char a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_22B238DCC;
  }

  else
  {

    v4 = sub_22B238624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B238624(uint64_t a1)
{
  v38 = v1;
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v5, "[END] Revoke Subscription", "", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = *(v1 + 224);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  v9 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v6, v9, v7);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 368);
    v36 = *(v1 + 224);
    v13 = *(v1 + 192);
    v14 = *(v1 + 200);
    v16 = *(v1 + 120);
    v15 = *(v1 + 128);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v37);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_22B1A7B20(v16, v15, &v37);
    *(v17 + 22) = 1024;
    *(v17 + 24) = v12;
    _os_log_impl(&dword_22B116000, v10, v11, "%s Revoked subscription: %{public}s %{BOOL}d", v17, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v14 + 8))(v36, v13);
  }

  else
  {
    v19 = *(v1 + 224);
    v20 = *(v1 + 192);
    v21 = *(v1 + 200);

    (*(v21 + 8))(v19, v20);
  }

  v22 = sub_22B36048C();
  v23 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v22, v23, v25, "[START] Purge Subscription", "", v24, 2u);
    MEMORY[0x23188F650](v24, -1, -1);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v26 = swift_task_alloc();
  *(v1 + 352) = v26;
  *v26 = v1;
  v26[1] = sub_22B2389F8;
  v27 = *(v1 + 152);
  v28 = *(v1 + 160);
  v29 = *(v1 + 136);
  v30 = *(v1 + 144);
  v31 = *(v1 + 120);
  v32 = *(v1 + 128);
  v34 = *(v1 + 104);
  v33 = *(v1 + 112);

  return sub_22B23C4EC(v34, v33, v29, v30, v31, v32, v27, v28);
}

uint64_t sub_22B2389F8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_22B239208;
  }

  else
  {
    v2 = sub_22B238B0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B238B0C(uint64_t a1)
{
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v5, "[END] Purge Subscription", "", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v6 = sub_22B36048C();
  sub_22B3604CC();
  v7 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v8 = v1[22];
    v9 = v1[23];
    v10 = v1[21];

    sub_22B3604FC();

    if ((*(v8 + 88))(v9, v10) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[22] + 8))(v1[23], v1[21]);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v6, v7, v13, "revokeUtilitySubscriptionTask", v11, v12, 2u);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = v1[39];
  v16 = v1[37];
  v15 = v1[38];
  v17 = v1[36];
  v18 = v1[33];
  v19 = v1[34];
  v20 = v1[32];

  v21 = *(v18 + 8);
  v21(v19, v20);
  v21(v17, v20);
  (*(v15 + 8))(v14, v16);

  v22 = v1[1];

  return v22();
}

uint64_t sub_22B238DCC()
{
  v41 = v0;

  v1 = *(v0 + 344);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 192);
  if (v9)
  {
    v39 = *(v0 + 208);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v38 = *(v0 + 192);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B369470, &v40);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_22B1A7B20(v13, v14, &v40);
    *(v15 + 22) = 2114;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v19;
    *v16 = v19;
    _os_log_impl(&dword_22B116000, v7, v8, "%s for subID: %{public}s failed, error: %{public}@", v15, 0x20u);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    (*(v11 + 8))(v39, v38);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = sub_22B36048C();
  v21 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v20, v21, v23, "[END] Revoke Subscription Failed", "", v22, 2u);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  else
  {
  }

  v24 = sub_22B36048C();
  v25 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v24, v25, v27, "[START] Purge Subscription", "", v26, 2u);
    MEMORY[0x23188F650](v26, -1, -1);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v28 = swift_task_alloc();
  *(v0 + 352) = v28;
  *v28 = v0;
  v28[1] = sub_22B2389F8;
  v29 = *(v0 + 152);
  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = *(v0 + 144);
  v33 = *(v0 + 120);
  v34 = *(v0 + 128);
  v36 = *(v0 + 104);
  v35 = *(v0 + 112);

  return sub_22B23C4EC(v36, v35, v31, v32, v33, v34, v29, v30);
}

uint64_t sub_22B239208()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[32];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B239328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[28] = a3;
  v8 = swift_task_alloc();
  v5[31] = v8;
  *v8 = v5;
  v8[1] = sub_22B2393DC;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B2393DC(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B2394F4, v2, 0);
}

uint64_t sub_22B2394F4(uint64_t a1)
{
  if (v1[32])
  {
    v3 = v1[28];
    v2 = v1[29];
    if (sub_22B35F38C() == v3 && v4 == v2)
    {
    }

    else
    {
      v6 = sub_22B36134C();

      if ((v6 & 1) == 0)
      {

        sub_22B35F39C();
        v7 = swift_task_alloc();
        v1[33] = v7;
        *v7 = v1;
        v7[1] = sub_22B2396A8;

        return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
      }
    }

    v11 = v1[1];
    v12 = v1[32];

    return v11(v12);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_22B2396A8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22B2399B8;
  }

  else
  {
    v4 = sub_22B2397D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2397D4()
{
  v1 = *(v0[30] + 112);
  sub_22B35EEEC();
  v2 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  v0[24] = 1684957547;
  v0[25] = 0xE400000000000000;
  v4 = MEMORY[0x277D837D0];
  sub_22B36110C();
  *(inited + 96) = v4;
  strcpy((inited + 72), "StateChanged");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v0[26] = 0x444965746973;
  v0[27] = 0xE600000000000000;
  sub_22B36110C();
  v5 = sub_22B35F3AC();
  *(inited + 168) = v4;
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACC0, &unk_22B3662C0);
  swift_arrayDestroy();
  v7 = sub_22B3606CC();

  [v1 postNotificationName:v2 object:0 userInfo:v7 deliverImmediately:1];

  v8 = v0[1];
  v9 = v0[32];

  return v8(v9);
}

uint64_t sub_22B2399B8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B239A1C(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v6 = sub_22B35EE4C();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v7 = sub_22B3602FC();
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A8, &qword_22B366210);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8B0, &unk_22B366218);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_22B36052C();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3[28] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[29] = v10;
  *v10 = v3;
  v10[1] = sub_22B239D0C;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B239D0C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_22B239E24, v2, 0);
}

uint64_t sub_22B239E24(uint64_t a1)
{
  v2 = v1[30];
  if (v2)
  {
    v3 = sub_22B35F0BC();
    v1[31] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = sub_22B35F43C();
      v1[32] = v8;
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        sub_22B36012C();
        sub_22B3602DC();
        v11 = sub_22B36029C();
        v1[33] = v11;
        v12 = swift_task_alloc();
        v1[34] = v12;
        *v12 = v1;
        v12[1] = sub_22B23A058;

        return MEMORY[0x2821724E8](v6, v5, v9, v10, v11);
      }
    }

    sub_22B134CDC();
    swift_allocError();
    *v14 = 12;
    swift_willThrow();
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_22B23A058(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 280) = v1;

  v5 = *(v4 + 72);

  if (v1)
  {
    v6 = sub_22B23A71C;
  }

  else
  {
    *(v4 + 288) = a1;
    v6 = sub_22B23A1F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B23A1F0(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[27];
  v3 = v1[28];
  v5 = v1[25];
  v6 = v1[26];
  sub_22B35DE6C();
  sub_22B36017C();
  sub_22B35DE0C();
  (*(v6 + 8))(v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_22B35F2DC();
  sub_22B36015C();
  sub_22B35F07C();
  sub_22B36016C();
  sub_22B35F0CC();

  v7 = swift_task_alloc();
  v1[37] = v7;
  *v7 = v1;
  v7[1] = sub_22B23A33C;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 0);
}

uint64_t sub_22B23A33C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_22B23B0E4;
  }

  else
  {
    v4 = sub_22B23A468;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B23A468()
{
  v24 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B3694A0, &v23);
    *(v12 + 12) = 2080;
    v14 = sub_22B35F3AC();
    v16 = sub_22B1A7B20(v14, v15, &v23);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_22B116000, v7, v8, "%s for siteID: %s succeeded", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];

    (*(v19 + 8))(v17, v18);
  }

  v20 = v0[1];
  v21 = v0[30];

  return v20(v21);
}

uint64_t sub_22B23A71C()
{
  v68 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[30];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[35];
    v12 = v0[22];
    v64 = v0[21];
    v65 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v67[0] = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B3694A0, v67);
    *(v13 + 12) = 2080;
    v16 = sub_22B35F3AC();
    v18 = sub_22B1A7B20(v16, v17, v67);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    *v14 = v20;
    _os_log_impl(&dword_22B116000, v9, v10, "%s for siteID: %s error: %@", v13, 0x20u);
    sub_22B123284(v14, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v12 + 8))(v65, v64);
  }

  else
  {
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[21];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[35];
  v25 = v0[19];
  v26 = v0[20];
  v28 = v0[16];
  v27 = v0[17];
  v29 = v0[13];
  v30 = v0[14];
  v0[8] = v24;
  v31 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  v32 = swift_dynamicCast();
  v33 = *(v30 + 56);
  v33(v26, v32 ^ 1u, 1, v29);
  (*(v30 + 104))(v25, *MEMORY[0x277D182C8], v29);
  v33(v25, 0, 1, v29);
  v34 = *(v28 + 48);
  sub_22B170BE0(v26, v27, &unk_27D8BA8B0, &unk_22B366218);
  sub_22B170BE0(v25, v27 + v34, &unk_27D8BA8B0, &unk_22B366218);
  v35 = *(v30 + 48);
  if (v35(v27, 1, v29) == 1)
  {
    v36 = v0[13];
    sub_22B123284(v0[19], &unk_27D8BA8B0, &unk_22B366218);
    if (v35(v27 + v34, 1, v36) == 1)
    {
      v37 = v0[20];
      sub_22B123284(v0[17], &unk_27D8BA8B0, &unk_22B366218);
      sub_22B123284(v37, &unk_27D8BA8B0, &unk_22B366218);
LABEL_16:
      v55 = v0[11];
      v54 = v0[12];
      v56 = v0[10];
      v57 = sub_22B35F3AC();
      v59 = v58;
      v0[39] = v58;
      (*(v55 + 104))(v54, *MEMORY[0x277D07350], v56);
      v60 = sub_22B35EE3C();
      v62 = v61;
      v0[40] = v61;
      (*(v55 + 8))(v54, v56);
      v63 = swift_task_alloc();
      v0[41] = v63;
      *v63 = v0;
      v63[1] = sub_22B23AE5C;

      return sub_22B239328(v57, v59, v60, v62);
    }

    goto LABEL_11;
  }

  v38 = v0[13];
  sub_22B170BE0(v0[17], v0[18], &unk_27D8BA8B0, &unk_22B366218);
  if (v35(v27 + v34, 1, v38) == 1)
  {
    v39 = v0[18];
    v40 = v0[13];
    v41 = v0[14];
    sub_22B123284(v0[19], &unk_27D8BA8B0, &unk_22B366218);
    (*(v41 + 8))(v39, v40);
LABEL_11:
    v42 = v0[20];
    sub_22B123284(v0[17], &qword_27D8BA8A8, &qword_22B366210);
    sub_22B123284(v42, &unk_27D8BA8B0, &unk_22B366218);
    goto LABEL_12;
  }

  v46 = v0[19];
  v66 = v0[20];
  v47 = v0[17];
  v48 = v0[18];
  v50 = v0[14];
  v49 = v0[15];
  v51 = v0[13];
  (*(v50 + 32))(v49, v27 + v34, v51);
  sub_22B23E468(&unk_27D8BA8C0, 255, MEMORY[0x277D182E8], MEMORY[0x277D182F0]);
  v52 = sub_22B36078C();
  v53 = *(v50 + 8);
  v53(v49, v51);
  sub_22B123284(v46, &unk_27D8BA8B0, &unk_22B366218);
  v53(v48, v51);
  sub_22B123284(v47, &unk_27D8BA8B0, &unk_22B366218);
  sub_22B123284(v66, &unk_27D8BA8B0, &unk_22B366218);
  if (v52)
  {
    goto LABEL_16;
  }

LABEL_12:
  v43 = v0[30];
  swift_willThrow();

  v44 = v0[1];

  return v44();
}

uint64_t sub_22B23AE5C(void *a1)
{
  v4 = *v2;

  v5 = *(v4 + 72);
  if (v1)
  {

    v6 = sub_22B23E8F8;
  }

  else
  {

    v6 = sub_22B23AFEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B23AFEC(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22B23B0E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23B1D4(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_22B23B2C0;

  return sub_22B22250C(a1, a2, 0, 0);
}

uint64_t sub_22B23B2C0(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22B23B3D8, v2, 0);
}

uint64_t sub_22B23B3D8(uint64_t a1)
{
  v2 = v1[6];
  if (v2)
  {
    v1[7] = sub_22B35F12C();
    v1[8] = v3;
    if (v3)
    {
      v1[9] = sub_22B35F43C();
      v1[10] = v4;
      if (v4)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v5 = qword_28140BCF8;
        v1[11] = qword_28140BCF8;

        return MEMORY[0x2822009F8](sub_22B23B4E8, v5, 0);
      }
    }

    else
    {
    }
  }

  v6 = v1[1];

  return v6(0);
}

uint64_t sub_22B23B4E8()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = *(v1 + 128);
    v5 = *(v0 + 80);
    if (v4)
    {
      v6 = *(v0 + 72);
      v15 = *(v0 + 56);
      v7 = swift_task_alloc();
      *(v7 + 16) = v15;
      *(v7 + 32) = v6;
      *(v7 + 40) = v5;
      *(v7 + 48) = 2;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = v2;
      *(v7 + 80) = v3;
      *(v7 + 88) = v4;
      sub_22B1231A0(v2, v3);
      v8 = v4;
      sub_22B360E7C();
    }

    else
    {
      v11 = *(v0 + 32);
      sub_22B1231A0(*(v1 + 112), *(v1 + 120));

      v12 = sub_22B35DE9C();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    }
  }

  else
  {
    v9 = *(v0 + 32);

    v10 = sub_22B35DE9C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v13 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_22B23B74C, v13, 0);
}

uint64_t sub_22B23B74C()
{
  v1 = *(v0 + 32);

  v2 = sub_22B35DE9C();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2) != 1;
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_22B23B81C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_22B36052C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23B920, v1, 0);
}

uint64_t sub_22B23B920()
{
  v35 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B36CCA0, v34);
    *(v13 + 12) = 2082;
    v15 = sub_22B35F3AC();
    v17 = sub_22B1A7B20(v15, v16, v34);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "%s Purge Data for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v18 = *(v0[6] + 128);
  if (v18)
  {
    v34[0] = sub_22B35F04C();
    v34[1] = v19;

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v20 = sub_22B36081C();

    [v18 removeObjectForKey_];
  }

  v21 = sub_22B35F12C();
  v0[12] = v21;
  v0[13] = v22;
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_22B35F43C();
    v0[14] = v25;
    v0[15] = v26;
    if (v26)
    {
      v27 = v26;
      v28 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v28 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v29 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = v25;
          if (qword_2814096B8 != -1)
          {
            swift_once();
          }

          v31 = swift_task_alloc();
          v0[16] = v31;
          *v31 = v0;
          v31[1] = sub_22B23BCFC;

          return sub_22B32C61C(v23, v24, v30, v27);
        }
      }
    }
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B23BCFC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_22B23BE68, v6, 0);
  }
}

uint64_t sub_22B23BE68()
{
  if (qword_281409598 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_22B35DE9C();
  v0[17] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[18] = v6;
  v0[19] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 1, 1, v4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_22B23BFA8;
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[8];

  return sub_22B1D7088(v9, v2, v8, v1, v10);
}

uint64_t sub_22B23BFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 168) = v0;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_22B23C3EC;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = sub_22B23C110;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22B23C110()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  (*(v0 + 144))(*(v0 + 56), 1, 1, *(v0 + 136));
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_22B23C214;
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 56);

  return sub_22B305898(v5, v2, v4, v1, v6);
}

uint64_t sub_22B23C214()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 184) = v0;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);

  if (v0)
  {
    v5 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_22B23C46C, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_22B23C3EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23C46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9[14] = swift_task_alloc();
  v9[15] = swift_task_alloc();
  v10 = sub_22B36052C();
  v9[16] = v10;
  v9[17] = *(v10 - 8);
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23C600, v8, 0);
}

uint64_t sub_22B23C600()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(0xD00000000000003CLL, 0x800000022B36CC60, v29);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_22B1A7B20(v12, v11, v29);
    _os_log_impl(&dword_22B116000, v5, v6, "%s Purge Data for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = *(v0[13] + 128);
  if (v15)
  {
    v16 = v0[12];
    v29[0] = v0[11];
    v29[1] = v16;

    MEMORY[0x23188E270](5064493, 0xE300000000000000);
    v17 = sub_22B36081C();

    [v15 removeObjectForKey_];
  }

  v18 = v0[10];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = v0[9] & 0xFFFFFFFFFFFFLL;
  }

  if (v19 && ((v20 = v0[8], (v20 & 0x2000000000000000) != 0) ? (v21 = HIBYTE(v20) & 0xF) : (v21 = v0[7] & 0xFFFFFFFFFFFFLL), v21))
  {
    if (qword_2814096B8 != -1)
    {
      swift_once();
    }

    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_22B23C97C;
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v26 = v0[8];

    return sub_22B32C61C(v24, v23, v25, v26);
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22B23C97C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_22B23CAD4, v6, 0);
  }
}

uint64_t sub_22B23CAD4()
{
  if (qword_281409598 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_22B35DE9C();
  v0[20] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[21] = v4;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_22B23CBFC;
  v6 = v0[15];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return sub_22B1D7088(v8, v7, v9, v10, v6);
}

uint64_t sub_22B23CBFC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 192) = v0;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_22B23CFCC;
  }

  else
  {
    v5 = sub_22B23CD54;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B23CD54()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  (*(v0 + 168))(*(v0 + 112), 1, 1, *(v0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_22B23CE40;
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return sub_22B305898(v4, v3, v5, v6, v2);
}

uint64_t sub_22B23CE40()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[26] = v0;

  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  if (v0)
  {
    v4 = v3[13];

    return MEMORY[0x2822009F8](sub_22B23D04C, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22B23CFCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23D04C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23D0CC(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v2[69] = swift_task_alloc();
  v3 = sub_22B36052C();
  v2[70] = v3;
  v2[71] = *(v3 - 8);
  v2[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23D1C8, v1, 0);
}

uint64_t sub_22B23D1C8(uint64_t a1)
{
  v1[73] = sub_22B35F3AC();
  v1[74] = v2;
  v3 = swift_task_alloc();
  v1[75] = v3;
  *v3 = v1;
  v3[1] = sub_22B23D270;
  v4 = v1[67];

  return sub_22B23B81C(v4);
}

uint64_t sub_22B23D270()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_22B23DD7C;
  }

  else
  {
    v4 = sub_22B23D39C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B23D39C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 616) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B23D434, v1, 0);
}

uint64_t sub_22B23D434()
{
  v1 = v0[68];
  sub_22B142B18(v0[73], v0[74]);

  return MEMORY[0x2822009F8](sub_22B23D4A8, v1, 0);
}

uint64_t sub_22B23D4A8()
{
  v35 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    v15 = sub_22B35F3AC();
    v17 = sub_22B1A7B20(v15, v16, &v34);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22B116000, v7, v8, "Site deleted. Removing UtilityExpiredAttempts for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v18 = qword_28140BCA0;
  if (qword_28140BCA0 && (v19 = sub_22B36081C(), v20 = [v18 dictionaryForKey_], v19, v20))
  {
    v21 = sub_22B3606EC();
  }

  else
  {
    v21 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  *(v0 + 528) = v21;
  sub_22B2E641C(v23, v22, (v0 + 456));
  sub_22B123284(v0 + 456, &unk_27D8BA950, &qword_22B364940);
  if (v18)
  {
    v24 = sub_22B3606CC();
    v25 = sub_22B36081C();
    [v18 setObject:v24 forKey:v25];
  }

  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 552);
  v27 = qword_28140BC50;
  *(v0 + 624) = qword_28140BC50;
  sub_22B35DEBC();
  v28 = sub_22B35DF1C();
  *(v0 + 632) = v28;
  v29 = *(v28 - 8);
  *(v0 + 640) = v29;
  v30 = (*(v29 + 48))(v26, 1, v28);
  if (v30 == 1)
  {
    __break(1u);
  }

  else
  {

    v30 = sub_22B23D8A4;
    v31 = v27;
    v32 = 0;
  }

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22B23D8A4()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[69];
  v4 = v0[68];
  sub_22B12708C(v3);
  (*(v1 + 8))(v3, v2);

  return MEMORY[0x2822009F8](sub_22B23D948, v4, 0);
}

uint64_t sub_22B23D948()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(*(v0 + 544) + 112);
  sub_22B35EEEC();
  v4 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 512) = sub_22B35EEAC();
  *(v0 + 520) = v6;
  v7 = MEMORY[0x277D837D0];
  sub_22B36110C();
  *(inited + 96) = v7;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v8 = sub_22B3606CC();

  [v3 postNotificationName:v4 object:0 userInfo:v8 deliverImmediately:1];

  sub_22B23E8B0(v0 + 184);
  type metadata accessor for EnergyKitAnalyticsEvent();
  v9 = swift_allocObject();
  v10 = *(v0 + 296);
  v12 = *(v0 + 312);
  v11 = *(v0 + 328);
  *(v0 + 144) = v12;
  *(v0 + 160) = v11;
  v13 = *(v0 + 232);
  v14 = *(v0 + 264);
  v15 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 248);
  *(v0 + 96) = v14;
  v16 = *(v0 + 264);
  v17 = *(v0 + 296);
  *(v0 + 112) = *(v0 + 280);
  *(v0 + 128) = v17;
  v18 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 32) = v18;
  *(v0 + 48) = *(v0 + 216);
  *(v0 + 64) = v13;
  *(v9 + 136) = v10;
  *(v9 + 152) = v12;
  *(v9 + 168) = *(v0 + 328);
  *(v9 + 72) = *(v0 + 232);
  *(v9 + 88) = *(v0 + 248);
  *(v9 + 104) = v16;
  *(v9 + 16) = 1;
  *(v0 + 176) = *(v0 + 344);
  *(v9 + 184) = *(v0 + 344);
  *(v9 + 120) = v15;
  *(v9 + 24) = *(v0 + 184);
  *(v9 + 40) = *(v0 + 200);
  *(v9 + 56) = *(v0 + 216);
  sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
  sub_22B1A81C0(v9);

  v19 = swift_task_alloc();
  *(v0 + 648) = v19;
  *v19 = v0;
  v19[1] = sub_22B23DBE0;

  return EKEnergySite.deleteCKZone()();
}

uint64_t sub_22B23DBE0()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 544);
  if (v0)
  {
    v4 = sub_22B23DDF4;
  }

  else
  {
    v4 = sub_22B23DD0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B23DD0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23DD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23DDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B23DE64()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22B23DED0()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_opt_self() defaultCenter];
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  v0[15] = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_22B36081C();
  v5 = [v3 initWithSuiteName_];

  v0[16] = v5;
  return v0;
}

uint64_t sub_22B23E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDUsagePointRecords(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B23E068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B23E0C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B119A60;

  return sub_22B2379CC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22B23E1D4(uint64_t a1)
{
  sub_22B35DE9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B230044(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_22B23E3A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B23E468(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22B23E4B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B236188(a1, v4, v5, v7, v6);
}

uint64_t sub_22B23E570(uint64_t a1)
{
  sub_22B35DE9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B229628(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_59Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_65Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B23E7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B22F7A0(a1, v4, v5, v7, v6);
}

double sub_22B23E8B0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

uint64_t static TOUPeaksPreprocessor.mockPeaks(utilityID:tariffID:start:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v7[7] = swift_task_alloc();
  v8 = sub_22B35DE9C();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = sub_22B35DF9C();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = sub_22B35E04C();
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B23EACC, 0, 0);
}

uint64_t sub_22B23EACC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v23 = *(v2 + 104);
  v23(v1, *MEMORY[0x277CC9830], v3);
  sub_22B35DFAC();
  v22 = *(v2 + 8);
  v22(v1, v3);
  sub_22B35DFDC();
  result = (*(v5 + 48))(v6, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[16];
    v9 = v0[15];
    v20 = v0[14];
    v21 = v0[17];
    v10 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    v19 = v0[8];
    v17 = v0[3];
    v18 = v0[4];
    v14 = v0[2];
    (*(v13 + 32))(v12);
    v23(v10, *MEMORY[0x277CC9810], v11);
    sub_22B35DFAC();
    v22(v10, v11);
    sub_22B23ED14(v17, v18, v8, v14);
    v15 = *(v9 + 8);
    v15(v8, v20);
    (*(v13 + 8))(v12, v19);
    v15(v21, v20);

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_22B23ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v68 = a1;
  v69 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v56 - v7;
  v8 = sub_22B36032C();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22B35E0BC();
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22B35DDBC();
  v76 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B35E02C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_22B35DE9C();
  v78 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v80 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  sub_22B35DFBC();
  (*(v14 + 104))(v16, *MEMORY[0x277CC9968], v13);
  v25 = a4;
  sub_22B35DFEC();
  v26 = v78;
  (*(v14 + 8))(v16, v13);
  result = (*(v26 + 48))(v19, 1, v20);
  if (result != 1)
  {
    v28 = *(v26 + 32);
    v65 = v20;
    v28(v80, v19, v20);
    v77 = v25;
    sub_22B35E00C();
    v29 = v66;
    sub_22B35F59C();
    v31 = v79 + 8;
    v30 = *(v79 + 8);
    v32 = v75;
    v30(v11, v75);
    v64 = v24;
    v33 = sub_22B35DDAC();
    v62 = v34;
    v63 = v33;
    v35 = v76 + 8;
    v36 = *(v76 + 8);
    v37 = v67;
    v36(v29, v67);
    sub_22B35E00C();
    sub_22B35F59C();
    v59 = v11;
    v79 = v31;
    v57 = v30;
    v30(v11, v32);
    v38 = sub_22B35DDAC();
    v60 = v39;
    v61 = v38;
    v40 = v29;
    v58 = v36;
    v36(v29, v37);
    v42 = v68;
    v41 = v69;
    v43 = v77;
    if (v68 == 0x43554F5445 && v69 == 0xE500000000000000 || (sub_22B36134C() & 1) != 0 || v42 == 0x432D554F542D45 && v41 == 0xE700000000000000 || (sub_22B36134C() & 1) != 0)
    {
      v44 = v64;
      v45 = v80;
      sub_22B23FEF0(v64, v80, v43);
      v46 = v70;
      sub_22B36031C();
    }

    else
    {
      v76 = v35;
      if (v42 == 12613 && v41 == 0xE200000000000000 || (sub_22B36134C() & 1) != 0)
      {
        v52 = v59;
        sub_22B35E00C();
        v53 = v40;
        sub_22B35F55C();
        v57(v52, v75);
        v44 = v64;
        sub_22B35DDAC();

        v58(v53, v37);
        swift_bridgeObjectRetain_n();
        v46 = v70;
        sub_22B36031C();
      }

      else
      {
        v54 = v37;
        v55 = v59;
        if (v42 == 0x414C505F54414C46 && v41 == 0xE90000000000004ELL || (sub_22B36134C() & 1) != 0)
        {
          swift_bridgeObjectRetain_n();
          v46 = v70;
          sub_22B36031C();
          v45 = v80;
          v44 = v64;
          goto LABEL_9;
        }

        if (v42 == 0x534B4E41524C4C41 && v41 == 0xE800000000000000 || (sub_22B36134C() & 1) != 0 || v42 == 0x4B4E41522D4C4C41 && v41 == 0xE900000000000053 || (sub_22B36134C() & 1) != 0)
        {
          v44 = v64;
          v45 = v80;
          sub_22B2408F0(v64, v80, v43);
          v46 = v70;
          sub_22B36031C();
          goto LABEL_9;
        }

        sub_22B35E00C();
        sub_22B35F55C();
        v57(v55, v75);
        v44 = v64;
        sub_22B35DDAC();

        v58(v29, v54);
        swift_bridgeObjectRetain_n();
        v46 = v70;
        sub_22B36031C();
      }

      v45 = v80;
    }

LABEL_9:
    v48 = v71;
    v47 = v72;
    v49 = v73;
    (*(v71 + 16))(v73, v46, v72);
    (*(v48 + 56))(v49, 0, 1, v47);
    sub_22B36020C();
    (*(v48 + 8))(v46, v47);
    v50 = *(v78 + 8);
    v51 = v65;
    v50(v45, v65);
    return (v50)(v44, v51);
  }

  __break(1u);
  return result;
}

uint64_t static TOUPeaksPreprocessor.fixedMockETOUCConverted()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22B36024C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B23F958(v6);
  sub_22B35D82C();
  swift_allocObject();
  sub_22B35D81C();
  sub_22B23FD7C(&qword_27D8BA978, MEMORY[0x277D18218]);
  v7 = sub_22B35D80C();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);

    v11 = 1;
  }

  else
  {
    v9 = v7;
    v10 = v8;

    sub_22B35D7FC();
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B23FD7C(&qword_27D8BA980, MEMORY[0x277D18220]);
    sub_22B35D7DC();
    (*(v4 + 8))(v6, v3);

    sub_22B12F174(v9, v10);
    v11 = 0;
  }

  return (*(v4 + 56))(a1, v11, 1, v3);
}

uint64_t sub_22B23F958@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v25 - v2;
  v3 = sub_22B36032C();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B35FF8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = MEMORY[0x277D84F90];
  v13 = 1;
  v14 = &off_283EF8760;
  do
  {

    if (v13)
    {
      sub_22B35FF6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22B32D1C8(0, v12[2] + 1, 1, v12);
      }

      v17 = v12[2];
      v19 = v12[3];
      v18 = v17 + 1;
      if (v17 >= v19 >> 1)
      {
        v12 = sub_22B32D1C8((v19 > 1), v17 + 1, 1, v12);
      }

      v15 = v8;
    }

    else
    {
      sub_22B35FF6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22B32D1C8(0, v12[2] + 1, 1, v12);
      }

      v17 = v12[2];
      v16 = v12[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v12 = sub_22B32D1C8((v16 > 1), v17 + 1, 1, v12);
      }

      v15 = v11;
    }

    v12[2] = v18;
    (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v15, v5);
    ++v13;
    v14 += 2;
  }

  while (v13 != 23);
  swift_arrayDestroy();
  v20 = v26;
  sub_22B36031C();
  v22 = v27;
  v21 = v28;
  v23 = v29;
  (*(v27 + 16))(v29, v20, v28);
  (*(v22 + 56))(v23, 0, 1, v21);
  sub_22B36020C();
  return (*(v22 + 8))(v20, v21);
}

uint64_t sub_22B23FD7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B36024C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TOUPeaksPreprocessor.getMockFlatPeaks()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_22B36031C();
  v3 = sub_22B36032C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_22B36020C();
}

void *sub_22B23FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a2;
  v97 = a1;
  v4 = sub_22B35E02C();
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v91 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v59 - v7;
  v90 = sub_22B35DA4C();
  v74 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22B35FF8C();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v94 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v59 - v13;
  v70 = sub_22B35E0BC();
  v14 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B35DDBC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B35DE9C();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v77 = v25;
  v26 = *(v25 + 16);
  v92 = v27;
  v26(v24, v97, v22);
  v97 = a3;
  sub_22B35E00C();
  sub_22B35F55C();
  v28 = *(v14 + 8);
  v68 = v16;
  v69 = v14 + 8;
  v64 = v28;
  v28(v16, v70);
  sub_22B35DDAC();
  v29 = *(v18 + 8);
  v65 = v20;
  v67 = v17;
  v30 = v17;
  v31 = v96;
  v66 = v18 + 8;
  v63 = v29;
  v29(v20, v30);
  sub_22B35FF6C();
  v32 = sub_22B32D1C8(0, 1, 1, MEMORY[0x277D84F90]);
  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_22B32D1C8((v33 > 1), v34 + 1, 1, v32);
  }

  v32[2] = v34 + 1;
  v35 = *(v72 + 32);
  v36 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v95 = v32;
  v61 = v36;
  v60 = *(v72 + 72);
  v72 += 32;
  v62 = v35;
  v35(v32 + v36 + v60 * v34, v31, v71);
  if (sub_22B35DDFC())
  {
    v37 = *(v89 + 72);
    v38 = *(v89 + 80);
    v86 = (v38 + 32) & ~v38;
    v87 = v38;
    v85 = 4 * v37;
    v84 = 5 * v37;
    v83 = *MEMORY[0x277CC9988];
    v39 = (v89 + 104);
    v82 = *MEMORY[0x277CC9998];
    v80 = *MEMORY[0x277CC9968];
    v88 = v37;
    v81 = 2 * v37;
    v79 = 3 * v37;
    LODWORD(v96) = *MEMORY[0x277CC9980];
    v78 = *MEMORY[0x277CC99A0];
    v76 = (v89 + 8);
    v75 = (v77 + 48);
    ++v74;
    v89 = v77 + 8;
    v73 = (v77 + 32);
    v77 = xmmword_22B363640;
    while (1)
    {
      v40 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
      v41 = v86;
      v42 = swift_allocObject();
      *(v42 + 16) = v77;
      v43 = *v39;
      (*v39)(v42 + v41, v83, v4);
      v43(v42 + v41 + v88, v82, v4);
      v43(v42 + v41 + v81, v80, v4);
      v43(v42 + v41 + v79, v96, v4);
      v43(v42 + v41 + v85, v78, v4);
      sub_22B310E30(v42);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v44 = sub_22B35D9CC();
      if ((v45 & 1) == 0 && v44 == 16 || (v46 = sub_22B35D9CC(), (v47 & 1) == 0) && v46 == 21)
      {
        result = sub_22B35D9CC();
        if (v49)
        {
          goto LABEL_19;
        }

        v50 = v68;
        sub_22B35E00C();
        v51 = v65;
        sub_22B35F55C();
        v64(v50, v70);
        sub_22B35DDAC();
        v63(v51, v67);
        sub_22B35FF6C();
        v52 = v95;
        v54 = v95[2];
        v53 = v95[3];
        if (v54 >= v53 >> 1)
        {
          v52 = sub_22B32D1C8((v53 > 1), v54 + 1, 1, v95);
        }

        v52[2] = v54 + 1;
        v95 = v52;
        v62(v52 + v61 + v54 * v60, v94, v71);
      }

      v55 = v91;
      v43(v91, v96, v4);
      v8 = v40;
      sub_22B35DFEC();
      (*v76)(v55, v4);
      v56 = v40;
      v57 = v92;
      result = (*v75)(v56, 1, v92);
      if (result == 1)
      {
        break;
      }

      (*v74)(v10, v90);
      v58 = *v89;
      (*v89)(v24, v57);
      (*v73)(v24, v8, v57);
      if ((sub_22B35DDFC() & 1) == 0)
      {
        v58(v24, v92);
        return v95;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    (*(v77 + 8))(v24, v92);
    return v95;
  }

  return result;
}

void *sub_22B2408F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a2;
  v92 = a1;
  v4 = sub_22B35E02C();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v85 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v56 - v7;
  v82 = sub_22B35FF8C();
  v86 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v91 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DA4C();
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22B35E0BC();
  v12 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B35DDBC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B35DE9C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 16);
  v89 = v25;
  v24(v23, v92, v21);
  v92 = a3;
  sub_22B35E00C();
  sub_22B35F55C();
  v26 = *(v12 + 8);
  v80 = v14;
  v81 = v12 + 8;
  v76 = v26;
  v26(v14, v88);
  sub_22B35DDAC();

  v27 = *(v16 + 8);
  v77 = v18;
  v78 = v16 + 8;
  v79 = v15;
  v75 = v27;
  v27(v18, v15);
  if (sub_22B35DDFC())
  {
    v28 = *(v61 + 72);
    v72 = *(v61 + 80);
    v71 = (v72 + 32) & ~v72;
    v70 = 4 * v28;
    v69 = 5 * v28;
    v29 = (v61 + 104);
    v73 = v28;
    v68 = 2 * v28;
    v67 = 3 * v28;
    v56[1] = v86 + 32;
    v66 = *MEMORY[0x277CC9988];
    v65 = *MEMORY[0x277CC9998];
    v64 = *MEMORY[0x277CC9968];
    v30 = *MEMORY[0x277CC9980];
    v62 = *MEMORY[0x277CC99A0];
    v61 += 8;
    v60 = (v20 + 48);
    v58 = v83 + 1;
    v83 = (v20 + 8);
    v57 = (v20 + 32);
    v31 = 1;
    v32 = MEMORY[0x277D84F90];
    v59 = xmmword_22B363640;
    v74 = v8;
    v63 = v30;
    while (1)
    {
      if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928), v33 = v71, v34 = swift_allocObject(), *(v34 + 16) = v59, v35 = v34 + v33, v36 = *v29, (*v29)(v35, v66, v4), v36(v35 + v73, v65, v4), v36(v35 + v68, v64, v4), v36(v35 + v67, v30, v4), v36(v35 + v70, v62, v4), sub_22B310E30(v34), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), sub_22B35DFCC(), , v37 = sub_22B35D9CC(), (v38 & 1) == 0) && v37 == 14 || (v39 = sub_22B35D9CC(), (v40 & 1) == 0) && v39 == 15 || (v41 = sub_22B35D9CC(), (v42 & 1) == 0) && v41 == 16 || (v43 = sub_22B35D9CC(), (v44 & 1) == 0) && v43 == 17 || (v45 = sub_22B35D9CC() == 18, ((v31 | v45 & ~v46)))
      {
        v47 = v80;
        sub_22B35E00C();
        v48 = v77;
        sub_22B35F55C();
        v76(v47, v88);
        sub_22B35DDAC();
        v75(v48, v79);
        sub_22B35FF6C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_22B32D1C8(0, v32[2] + 1, 1, v32);
        }

        v49 = v89;
        v30 = v63;
        v51 = v32[2];
        v50 = v32[3];
        if (v51 >= v50 >> 1)
        {
          v32 = sub_22B32D1C8((v50 > 1), v51 + 1, 1, v32);
        }

        v32[2] = v51 + 1;
        (*(v86 + 32))(v32 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v51, v91, v82);
      }

      else
      {
        v49 = v89;
        v30 = v63;
      }

      v52 = v85;
      v36(v85, v30, v4);
      v53 = v74;
      sub_22B35DFEC();
      (*v61)(v52, v4);
      result = (*v60)(v53, 1, v49);
      if (result == 1)
      {
        break;
      }

      (*v58)(v87, v84);
      v55 = *v83;
      (*v83)(v23, v49);
      (*v57)(v23, v53, v49);
      v31 = 0;
      if ((sub_22B35DDFC() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v55 = *(v20 + 8);
    v32 = MEMORY[0x277D84F90];
LABEL_22:
    v55(v23, v89);
    return v32;
  }

  return result;
}

double sub_22B24133C@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_22B36081C();
  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_22B36102C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B2413CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22B36084C();

  return v5;
}

uint64_t sub_22B241448(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 arrayForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22B360A5C();

  return v5;
}

uint64_t sub_22B2414C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22B3606EC();

  return v5;
}

uint64_t sub_22B241550(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 dataForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22B35DCDC();

  return v5;
}

id sub_22B2415CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 longLongForKey_];

  return v4;
}

double sub_22B241610(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  [v2 doubleForKey_];
  v5 = v4;

  return v5;
}

id sub_22B24165C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_22B2416A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B137FC8(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_22B36133C();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_22B36081C();
  [v3 setObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

void sub_22B241804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_22B36081C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22B36081C();
  [v4 setString:v5 forKey:v6];
}

void sub_22B24188C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22B35DCCC();
  }

  v6 = sub_22B36081C();
  [v4 setData:v5 forKey:v6];
}

void sub_22B24191C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_22B360A3C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_22B36081C();
  [v3 setArray:v4 forKey:v5];
}

void sub_22B2419B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_22B3606CC();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_22B36081C();
  [v3 setDictionary:v4 forKey:v5];
}

void sub_22B241A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B36081C();
  [v3 setLongLong:a1 forKey:v5];
}

void sub_22B241AB8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_22B36081C();
  [v3 setDouble:v5 forKey:a3];
}

void sub_22B241B14(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B36081C();
  [v3 setBool:a1 & 1 forKey:v5];
}

void sub_22B241B78(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36081C();
  [v2 removeObjectForKey_];
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))(a1, a2, a3, a4);
}

{
  return (*(a5 + 112))(a1, a2, a3, a4);
}

{
  return (*(a5 + 120))(a1, a2, a3, a4);
}

{
  return (*(a5 + 128))(a1, a2, a3, a4);
}

{
  return (*(a5 + 144))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 96))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 104))(a1, a2, a3, a4, a5);
}

char *sub_22B241D88(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for HomeManager());
  result = sub_22B241DC4(8, 0);
  qword_28140BCA8 = result;
  return result;
}

char *sub_22B241DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v4 = sub_22B360D6C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22B36062C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_22B360D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_serialQueue;
  v22[1] = sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v6);
  sub_22B36060C();
  v27 = MEMORY[0x277D84F90];
  sub_22B1189D0(&qword_2814092F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  *&v2[v23] = sub_22B360DBC();
  *&v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeDelegate] = 0;
  v10 = &v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeManagerDelegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v2[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = objc_allocWithZone(MEMORY[0x277CD1C60]);
  v13 = [v12 initWithOptions:v24 cachePolicy:v25];
  [v13 setDiscretionary_];
  v14 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v13 setDelegateQueue_];

  [v13 setAdaptive_];
  [v13 setInactiveUpdatingLevel_];
  type metadata accessor for HomeManagerHelper();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = 0;
  *&v3[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v3[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager] = v16;
  v17 = type metadata accessor for HomeManager();
  v26.receiver = v3;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager];
  v20 = v18;
  [v19 setDelegate_];

  return v20;
}

uint64_t sub_22B242190()
{
  v1[11] = v0;
  v2 = sub_22B36052C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B24228C, 0, 0);
}

uint64_t sub_22B24228C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper);
  *(v0 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22B2422B8, v1, 0);
}

uint64_t sub_22B2422E0()
{
  if ((*(v0 + 232) & 1) == 0)
  {
    v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
    *(v0 + 168) = v1;
    v2 = [v1 dataSyncState];
    if (!v2)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 144);
      v17 = *(v0 + 96);
      v18 = *(v0 + 104);
      v19 = __swift_project_value_buffer(v17, qword_28140BD10);
      *(v0 + 176) = v19;
      swift_beginAccess();
      v20 = *(v18 + 16);
      *(v0 + 184) = v20;
      *(v0 + 192) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v16, v19, v17);
      v21 = sub_22B36050C();
      v22 = sub_22B360D2C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = 0;
        _os_log_impl(&dword_22B116000, v21, v22, "[HomeManager] Manager state is in error. %lu", v23, 0xCu);
        MEMORY[0x23188F650](v23, -1, -1);
      }

      v24 = *(v0 + 160);
      v25 = *(v0 + 144);
      v26 = *(v0 + 96);
      v27 = *(v0 + 104);

      v28 = *(v27 + 8);
      *(v0 + 200) = v28;
      *(v0 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v25, v26);
      v15 = sub_22B242744;
      v14 = v24;
      goto LABEL_14;
    }

    if (v2 == 1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 152);
      v4 = *(v0 + 96);
      v5 = *(v0 + 104);
      v6 = __swift_project_value_buffer(v4, qword_28140BD10);
      swift_beginAccess();
      (*(v5 + 16))(v3, v6, v4);
      v7 = sub_22B36050C();
      v8 = sub_22B360D2C();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 152);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v7, v8, "[HomeManager] Manager state is stateGood", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      (*(v12 + 8))(v10, v11);
      v14 = *(v0 + 160);
      v15 = sub_22B242FEC;
LABEL_14:

      return MEMORY[0x2822009F8](v15, v14, 0);
    }

    v29 = v2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 120);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = __swift_project_value_buffer(v31, qword_28140BD10);
    swift_beginAccess();
    (*(v32 + 16))(v30, v33, v31);
    v34 = sub_22B36050C();
    v35 = sub_22B360D2C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v29;
      _os_log_impl(&dword_22B116000, v34, v35, "[HomeManager] Manager state is in error. %lu", v36, 0xCu);
      MEMORY[0x23188F650](v36, -1, -1);
    }

    v37 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);

    (*(v39 + 8))(v37, v38);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22B24276C()
{
  v21 = v0;
  if ((*(v0 + 233) & 1) != 0 || (*(v0 + 216) = 0, [*(v0 + 168) dataSyncState] == 1))
  {
    (*(v0 + 184))(*(v0 + 112), *(v0 + 176), *(v0 + 96));
    v1 = sub_22B36050C();
    v2 = sub_22B360D1C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 200);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v1, v2, "[HomeManager] State updated to stateGood", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v4(v5, v6);
    v8 = *(v0 + 160);

    return MEMORY[0x2822009F8](sub_22B242FEC, v8, 0);
  }

  else if (sub_22B360BFC())
  {
    (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 96));
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    v13 = *(v0 + 128);
    v14 = *(v0 + 96);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_22B1A7B20(0x656D6F4864616F6CLL, 0xEB00000000292873, &v20);
      *(v15 + 12) = 2048;
      *(v15 + 14) = 79;
      _os_log_impl(&dword_22B116000, v9, v10, "[HomeManager] Task is cancelled at marker %s:%ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    v12(v13, v14);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 224) = v18;
    *v18 = v0;
    v18[1] = sub_22B242AB4;

    return MEMORY[0x282200480](1000000000);
  }
}

uint64_t sub_22B242AB4()
{

  if (v0)
  {

    v1 = sub_22B243098;
  }

  else
  {
    v1 = sub_22B248830;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B242BF4()
{
  v29 = v0;
  if ((*(v0 + 234) & 1) != 0 || (v1 = *(v0 + 216) + 1, *(v0 + 216) = v1, [*(v0 + 168) dataSyncState] == 1))
  {
    (*(v0 + 184))(*(v0 + 112), *(v0 + 176), *(v0 + 96));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 200);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[HomeManager] State updated to stateGood", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v5(v6, v7);
    v9 = *(v0 + 160);

    return MEMORY[0x2822009F8](sub_22B242FEC, v9, 0);
  }

  if (v1 == 61)
  {
    (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 96));
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 200);
    v14 = *(v0 + 136);
    v15 = *(v0 + 96);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v10, v11, "[HomeManager] Task running for too long", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v13(v14, v15);
LABEL_16:

    v25 = *(v0 + 8);

    return v25();
  }

  if (sub_22B360BFC())
  {
    (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 96));
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 200);
    v21 = *(v0 + 128);
    v22 = *(v0 + 96);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22B1A7B20(0x656D6F4864616F6CLL, 0xEB00000000292873, &v28);
      *(v23 + 12) = 2048;
      *(v23 + 14) = 79;
      _os_log_impl(&dword_22B116000, v17, v18, "[HomeManager] Task is cancelled at marker %s:%ld", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);
    }

    v20(v21, v22);
    goto LABEL_16;
  }

  v26 = swift_task_alloc();
  *(v0 + 224) = v26;
  *v26 = v0;
  v26[1] = sub_22B242AB4;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_22B242FEC()
{
  *(*(v0 + 160) + 112) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2430D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
  v0[3] = v1;
  v2 = sub_22B36081C();
  v0[4] = [v1 _beginActiveAssertionWithReason_];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B2431C0;

  return sub_22B242190();
}

uint64_t sub_22B2431C0()
{

  return MEMORY[0x2822009F8](sub_22B2432BC, 0, 0);
}

uint64_t sub_22B2432BC()
{
  if ([*(v0 + 24) dataSyncState] == 1)
  {
    v1 = *(v0 + 16);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_22B24344C;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0x292873656D6F68, 0xE700000000000000, sub_22B2487A4, v2, v4);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    [*(v0 + 24) _endActiveAssertion_];
    swift_willThrow();
    swift_unknownObjectRelease();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22B24344C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22B243638;
  }

  else
  {

    v2 = sub_22B243568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B243568()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = [v1 homes];
  sub_22B128014(0, &qword_281408568, 0x277CD1A60);
  v4 = sub_22B360A5C();

  [v1 _endActiveAssertion_];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22B243638()
{

  [*(v0 + 24) _endActiveAssertion_];
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void sub_22B2436C8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v20 = *(a2 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v15 = sub_22B35DDDC();
  v14(v13, v7);
  (*(v4 + 16))(v6, v21, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v6, v3);
  aBlock[4] = sub_22B2487AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B243C10;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  v19 = [v20 _refreshBeforeDate_completionHandler_];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_22B243994(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B116000, v9, v10, "[HomeManager] Failed to refresh homes %@", v11, 0xCu);
      sub_22B123284(v12, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v12, -1, -1);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

void sub_22B243C10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22B243C7C()
{
  v1[6] = v0;
  v2 = sub_22B35DF1C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAB0, &qword_22B366468);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_22B36052C();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B243E6C, 0, 0);
}

uint64_t sub_22B243E6C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[18];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[27] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[28] = v5;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Clear all energy kit data", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[26];
  v10 = v0[17];
  v11 = v0[18];

  v12 = *(v11 + 8);
  v0[30] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[31] = v13;
  *v13 = v0;
  v13[1] = sub_22B24401C;

  return sub_22B242190();
}

uint64_t sub_22B24401C()
{

  return MEMORY[0x2822009F8](sub_22B244118, 0, 0);
}

uint64_t sub_22B244118()
{
  v1 = [*(v0[6] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState];
  v2 = v0[28];
  v3 = v0[27];
  v4 = v0[17];
  if (v1 == 1)
  {
    v2(v0[25], v3, v4);
    v5 = sub_22B36050C();
    v6 = sub_22B360CFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Data sync state good, proceed with deletion", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = v0[30];
    v9 = v0[25];
    v10 = v0[17];

    v8(v9, v10);
    v0[32] = sub_22B321FE4(MEMORY[0x277D84F90]);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = sub_22B24443C;

    return MEMORY[0x282121220]();
  }

  else
  {
    v2(v0[19], v3, v4);
    v12 = sub_22B36050C();
    v13 = sub_22B360CFC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[30];
    v16 = v0[19];
    v17 = v0[17];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Data sync state not good, cannot proceed with deletion", v18, 2u);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    v15(v16, v17);

    v19 = v0[1];
    v20 = MEMORY[0x277D84F98];

    return v19(v20);
  }
}

uint64_t sub_22B24443C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_22B246398;
  }

  else
  {
    v4 = sub_22B244550;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B244550()
{
  v135 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 136);

  v1(v3, v2, v4);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  if (os_log_type_enabled(v5, v6))
  {
    v128 = *(v0 + 192);
    v131 = *(v0 + 240);
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v134 = v9;
    *v8 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAC8, &qword_22B366478);
    sub_22B1189D0(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v10 = sub_22B3606FC();
    v12 = v11;

    v13 = sub_22B1A7B20(v10, v12, &v134);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22B116000, v5, v6, "Cleared all events for all homes %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v131(v128, v7);
  }

  else
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 192);
    v16 = *(v0 + 136);

    v14(v15, v16);
  }

  (*(v0 + 224))(*(v0 + 184), *(v0 + 216), *(v0 + 136));
  v17 = sub_22B36050C();
  v18 = sub_22B360CFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22B116000, v17, v18, "Got back from clearEnergyKitDataForAllHomes, processing results", v19, 2u);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v20 = *(v0 + 272);
  v21 = *(v0 + 240);
  v22 = *(v0 + 184);
  v23 = *(v0 + 136);

  v21(v22, v23);
  v24 = *(v20 + 32);
  *(v0 + 360) = v24;
  v25 = 1 << v24;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v20 + 64);

  v28 = 0;
  v29 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 288) = v29;
    v129 = v29;
    if (!v27)
    {
      v31 = ((1 << *(v0 + 360)) + 63) >> 6;
      if (v31 <= (v28 + 1))
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = ((1 << *(v0 + 360)) + 63) >> 6;
      }

      v33 = v32 - 1;
      while (1)
      {
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          v91 = *(v0 + 120);
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
          (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
          v45 = 0;
          goto LABEL_23;
        }

        v30 = *(v0 + 272);
        v27 = *(v30 + 8 * v34 + 64);
        ++v28;
        if (v27)
        {
          v28 = v34;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_45:
      v117 = swift_task_alloc();
      *(v0 + 336) = v117;
      *v117 = v0;
      v117[1] = sub_22B245270;
      v118 = *(v0 + 104);

      return sub_22B1873B4(v118);
    }

    v30 = *(v0 + 272);
LABEL_22:
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    v132 = (v27 - 1) & v27;
    v39 = __clz(__rbit64(v27)) | (v28 << 6);
    (*(v38 + 16))(v36, *(v30 + 48) + *(v38 + 72) * v39, v37);
    v40 = *(v30 + 56) + 16 * v39;
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    v44 = v35 + *(v43 + 48);
    (*(v38 + 32))(v35, v36, v37);
    *v44 = v41;
    *(v44 + 8) = v42;
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    sub_22B248728(v41, v42);
    v45 = v132;
    v33 = v28;
LABEL_23:
    *(v0 + 296) = v45;
    *(v0 + 304) = v33;
    v46 = *(v0 + 128);
    sub_22B248734(*(v0 + 120), v46);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      break;
    }

    v48 = *(v0 + 128) + *(v47 + 48);
    v49 = *v48;
    v50 = *(v48 + 8);
    (*(*(v0 + 64) + 32))(*(v0 + 104));
    v51 = *(v0 + 224);
    v52 = *(v0 + 216);
    if (v50 != 1)
    {
      v97 = *(v0 + 96);
      v96 = *(v0 + 104);
      v98 = *(v0 + 56);
      v99 = *(v0 + 64);
      v51(*(v0 + 176), v52, *(v0 + 136));
      v100 = *(v99 + 16);
      *(v0 + 312) = v100;
      *(v0 + 320) = (v99 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v100(v97, v96, v98);
      v101 = sub_22B36050C();
      v102 = sub_22B360D0C();
      v103 = os_log_type_enabled(v101, v102);
      v104 = *(v0 + 240);
      v105 = *(v0 + 176);
      v106 = *(v0 + 136);
      v107 = *(v0 + 96);
      v109 = *(v0 + 56);
      v108 = *(v0 + 64);
      if (v103)
      {
        v130 = *(v0 + 240);
        v110 = swift_slowAlloc();
        v127 = v105;
        v111 = swift_slowAlloc();
        v134 = v111;
        *v110 = 136315138;
        sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v126 = v106;
        v112 = sub_22B36131C();
        v114 = v113;
        v124 = v102;
        v115 = *(v108 + 8);
        v115(v107, v109);
        v116 = sub_22B1A7B20(v112, v114, &v134);

        *(v110 + 4) = v116;
        _os_log_impl(&dword_22B116000, v101, v124, "Deleting local data for %s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x23188F650](v111, -1, -1);
        MEMORY[0x23188F650](v110, -1, -1);

        v130(v127, v126);
      }

      else
      {

        v115 = *(v108 + 8);
        v115(v107, v109);
        v104(v105, v106);
      }

      *(v0 + 328) = v115;
      if (qword_27D8B9F88 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_54;
    }

    v53 = *(v0 + 104);
    v54 = *(v0 + 80);
    v56 = *(v0 + 56);
    v55 = *(v0 + 64);
    v51(*(v0 + 160), v52, *(v0 + 136));
    v133 = *(v55 + 16);
    v133(v54, v53, v56);
    v57 = v49;
    v58 = sub_22B36050C();
    v59 = sub_22B360D1C();
    sub_22B1CD010(v49, 1);
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 240);
    v62 = *(v0 + 160);
    v125 = *(v0 + 136);
    v63 = *(v0 + 80);
    v65 = *(v0 + 56);
    v64 = *(v0 + 64);
    if (v60)
    {
      v122 = *(v0 + 240);
      v66 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v134 = v121;
      *v66 = 136315394;
      sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v67 = sub_22B36131C();
      v120 = v62;
      v69 = v68;
      v123 = *(v64 + 8);
      v123(v63, v65);
      v70 = sub_22B1A7B20(v67, v69, &v134);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2112;
      v71 = v49;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v72;
      *v119 = v72;
      _os_log_impl(&dword_22B116000, v58, v59, "Failed to clear energy kit data for home with identifier: %s. Error: %@", v66, 0x16u);
      sub_22B123284(v119, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v119, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x23188F650](v121, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      v122(v120, v125);
    }

    else
    {

      v123 = *(v64 + 8);
      v123(v63, v65);
      v61(v62, v125);
    }

    v73 = *(v0 + 72);
    v133(v73, *(v0 + 104), *(v0 + 56));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 40) = v129;
    v75 = sub_22B33B6BC(v73);
    v77 = v129[2];
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_52;
    }

    v81 = v76;
    if (v129[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v75;
        sub_22B341E60();
        v75 = v93;
      }
    }

    else
    {
      v82 = *(v0 + 72);
      sub_22B33D598(v80, isUniquelyReferenced_nonNull_native);
      v75 = sub_22B33B6BC(v82);
      if ((v81 & 1) != (v83 & 1))
      {

        return sub_22B3613BC();
      }
    }

    v29 = *(v0 + 40);
    v84 = *(v0 + 104);
    v85 = *(v0 + 64);
    v86 = *(v0 + 72);
    v87 = *(v0 + 56);
    if (v81)
    {
      *(v29[7] + v75) = 0;
      sub_22B1CD010(v49, 1);
      v123(v86, v87);
      v123(v84, v87);
    }

    else
    {
      v29[(v75 >> 6) + 8] |= 1 << v75;
      v88 = v75;
      v133(v29[6] + *(v85 + 72) * v75, v86, v87);
      *(v29[7] + v88) = 0;
      sub_22B1CD010(v49, 1);
      v123(v86, v87);
      v123(v84, v87);
      v89 = v29[2];
      v79 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v79)
      {
        goto LABEL_53;
      }

      v29[2] = v90;
    }

    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
  }

  v94 = *(v0 + 8);

  return v94(v129);
}

uint64_t sub_22B245270()
{

  return MEMORY[0x2822009F8](sub_22B24536C, 0, 0);
}

uint64_t sub_22B24536C()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_22B245438;
  v2 = *(v0 + 104);

  return sub_22B3196F0(v2);
}

uint64_t sub_22B245438()
{

  return MEMORY[0x2822009F8](sub_22B245534, 0, 0);
}

uint64_t sub_22B245534()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_22B245600;
  v2 = *(v0 + 104);

  return sub_22B1762B8(v2);
}

uint64_t sub_22B245600()
{

  return MEMORY[0x2822009F8](sub_22B2456FC, 0, 0);
}

uint64_t sub_22B2456FC()
{
  v132 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  (*(v0 + 224))(*(v0 + 168), *(v0 + 216), *(v0 + 136));
  v1(v3, v2, v4);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 240);
  v10 = *(v0 + 168);
  v128 = *(v0 + 136);
  v11 = *(v0 + 88);
  v12 = *(v0 + 56);
  if (v7)
  {
    v13 = swift_slowAlloc();
    v124 = v9;
    v14 = swift_slowAlloc();
    v131 = v14;
    *v13 = 136315138;
    sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v121 = v10;
    v15 = sub_22B36131C();
    v17 = v16;
    v8(v11, v12);
    v18 = sub_22B1A7B20(v15, v17, &v131);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22B116000, v5, v6, "Deleted local data for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v124(v121, v128);
  }

  else
  {

    v8(v11, v12);
    v9(v10, v128);
  }

  v19 = *(v0 + 328);
  v20 = *(v0 + 288);
  v21 = *(v0 + 104);
  v22 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131 = v20;
  sub_22B33F58C(1, v21, isUniquelyReferenced_nonNull_native);
  v19(v21, v22);
  v24 = v131;
  while (1)
  {
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    *(v0 + 288) = v24;
    v126 = v24;
    if (!v25)
    {
      v28 = ((1 << *(v0 + 360)) + 63) >> 6;
      if (v28 <= (v26 + 1))
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = ((1 << *(v0 + 360)) + 63) >> 6;
      }

      v30 = v29 - 1;
      while (1)
      {
        v31 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          v87 = *(v0 + 120);
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
          (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
          v41 = 0;
          goto LABEL_17;
        }

        v27 = *(v0 + 272);
        v25 = *(v27 + 8 * v31 + 64);
        ++v26;
        if (v25)
        {
          v26 = v31;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
LABEL_39:
      v113 = swift_task_alloc();
      *(v0 + 336) = v113;
      *v113 = v0;
      v113[1] = sub_22B245270;
      v114 = *(v0 + 104);

      return sub_22B1873B4(v114);
    }

    v27 = *(v0 + 272);
LABEL_16:
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);
    v129 = (v25 - 1) & v25;
    v36 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v35 + 16))(v33, *(v27 + 48) + *(v35 + 72) * v36, v34);
    v37 = *(v27 + 56) + 16 * v36;
    v38 = *v37;
    LOBYTE(v36) = *(v37 + 8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    v40 = v32 + *(v39 + 48);
    (*(v35 + 32))(v32, v33, v34);
    *v40 = v38;
    *(v40 + 8) = v36;
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
    sub_22B248728(v38, v36);
    v41 = v129;
    v30 = v26;
LABEL_17:
    *(v0 + 296) = v41;
    *(v0 + 304) = v30;
    v42 = *(v0 + 128);
    sub_22B248734(*(v0 + 120), v42);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAB8, &qword_22B366470);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {
      break;
    }

    v44 = *(v0 + 128) + *(v43 + 48);
    v45 = *v44;
    v46 = *(v44 + 8);
    (*(*(v0 + 64) + 32))(*(v0 + 104));
    v47 = *(v0 + 224);
    v48 = *(v0 + 216);
    if (v46 != 1)
    {
      v93 = *(v0 + 96);
      v92 = *(v0 + 104);
      v94 = *(v0 + 56);
      v95 = *(v0 + 64);
      v47(*(v0 + 176), v48, *(v0 + 136));
      v96 = *(v95 + 16);
      *(v0 + 312) = v96;
      *(v0 + 320) = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v96(v93, v92, v94);
      v97 = sub_22B36050C();
      v98 = sub_22B360D0C();
      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 240);
      v101 = *(v0 + 176);
      v102 = *(v0 + 136);
      v103 = *(v0 + 96);
      v105 = *(v0 + 56);
      v104 = *(v0 + 64);
      if (v99)
      {
        v127 = *(v0 + 240);
        v106 = swift_slowAlloc();
        v125 = v101;
        v107 = swift_slowAlloc();
        v131 = v107;
        *v106 = 136315138;
        sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v123 = v102;
        v108 = sub_22B36131C();
        v110 = v109;
        v120 = v98;
        v111 = *(v104 + 8);
        v111(v103, v105);
        v112 = sub_22B1A7B20(v108, v110, &v131);

        *(v106 + 4) = v112;
        _os_log_impl(&dword_22B116000, v97, v120, "Deleting local data for %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x23188F650](v107, -1, -1);
        MEMORY[0x23188F650](v106, -1, -1);

        v127(v125, v123);
      }

      else
      {

        v111 = *(v104 + 8);
        v111(v103, v105);
        v100(v101, v102);
      }

      *(v0 + 328) = v111;
      if (qword_27D8B9F88 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    v49 = *(v0 + 104);
    v50 = *(v0 + 80);
    v52 = *(v0 + 56);
    v51 = *(v0 + 64);
    v47(*(v0 + 160), v48, *(v0 + 136));
    v130 = *(v51 + 16);
    v130(v50, v49, v52);
    v53 = v45;
    v54 = sub_22B36050C();
    v55 = sub_22B360D1C();
    sub_22B1CD010(v45, 1);
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 240);
    v58 = *(v0 + 160);
    v122 = *(v0 + 136);
    v59 = *(v0 + 80);
    v61 = *(v0 + 56);
    v60 = *(v0 + 64);
    if (v56)
    {
      v118 = *(v0 + 240);
      v62 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v131 = v117;
      *v62 = 136315394;
      sub_22B1189D0(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_22B36131C();
      v116 = v58;
      v65 = v64;
      v119 = *(v60 + 8);
      v119(v59, v61);
      v66 = sub_22B1A7B20(v63, v65, &v131);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2112;
      v67 = v45;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v68;
      *v115 = v68;
      _os_log_impl(&dword_22B116000, v54, v55, "Failed to clear energy kit data for home with identifier: %s. Error: %@", v62, 0x16u);
      sub_22B123284(v115, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v115, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x23188F650](v117, -1, -1);
      MEMORY[0x23188F650](v62, -1, -1);

      v118(v116, v122);
    }

    else
    {

      v119 = *(v60 + 8);
      v119(v59, v61);
      v57(v58, v122);
    }

    v69 = *(v0 + 72);
    v130(v69, *(v0 + 104), *(v0 + 56));
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 40) = v126;
    v71 = sub_22B33B6BC(v69);
    v73 = v126[2];
    v74 = (v72 & 1) == 0;
    v75 = __OFADD__(v73, v74);
    v76 = v73 + v74;
    if (v75)
    {
      goto LABEL_46;
    }

    v77 = v72;
    if (v126[3] >= v76)
    {
      if ((v70 & 1) == 0)
      {
        v89 = v71;
        sub_22B341E60();
        v71 = v89;
      }
    }

    else
    {
      v78 = *(v0 + 72);
      sub_22B33D598(v76, v70);
      v71 = sub_22B33B6BC(v78);
      if ((v77 & 1) != (v79 & 1))
      {

        return sub_22B3613BC();
      }
    }

    v24 = *(v0 + 40);
    v80 = *(v0 + 104);
    v81 = *(v0 + 64);
    v82 = *(v0 + 72);
    v83 = *(v0 + 56);
    if (v77)
    {
      *(v24[7] + v71) = 0;
      sub_22B1CD010(v45, 1);
      v119(v82, v83);
      v119(v80, v83);
    }

    else
    {
      v24[(v71 >> 6) + 8] |= 1 << v71;
      v84 = v71;
      v130(v24[6] + *(v81 + 72) * v71, v82, v83);
      *(v24[7] + v84) = 0;
      sub_22B1CD010(v45, 1);
      v119(v82, v83);
      v119(v80, v83);
      v85 = v24[2];
      v75 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v75)
      {
        goto LABEL_47;
      }

      v24[2] = v86;
    }
  }

  v90 = *(v0 + 8);

  return v90(v126);
}

uint64_t sub_22B246398()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22B2464FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22B246630(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-1] - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_22B248604(Strong + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeManagerDelegate, v25);
    if (v26)
    {
      sub_22B12B3CC(v25, v22);
      sub_22B123284(v25, &unk_27D8BAAA0, &qword_22B366450);
      v8 = v23;
      v9 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      sub_22B123284(v25, &unk_27D8BAAA0, &qword_22B366450);
    }

    v10 = sub_22B360B6C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v12 = v7;
    sub_22B123DF0(0, 0, v5, &unk_22B366460, v11);

    v13 = [a2 homes];
    sub_22B128014(0, &qword_281408568, 0x277CD1A60);
    v14 = sub_22B360A5C();

    if (v14 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
    {
      v16 = 0;
      v17 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeDelegate;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x23188EAC0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v18 setDelegate_];

        ++v16;
        if (v20 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }
}

uint64_t sub_22B246930()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_helper);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B24695C, v1, 0);
}

uint64_t sub_22B246A08(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [a2 uniqueIdentifier];
    sub_22B35DEFC();

    v13 = sub_22B35DECC();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v16 = sub_22B360B6C();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v13;
    v17[5] = v15;
    v17[6] = a2;
    v17[7] = v11;
    v18 = a2;
    sub_22B123DF0(0, 0, v5, &unk_22B366440, v17);
  }

  return result;
}

uint64_t sub_22B246C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_22B36052C();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v9 = sub_22B35DF1C();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B246D4C, 0, 0);
}

uint64_t sub_22B246D4C()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[23] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_22B246E28;
  v3 = v0[11];
  v2 = v0[12];

  return sub_22B215EE0(v3, v2);
}

uint64_t sub_22B246E28()
{

  return MEMORY[0x2822009F8](sub_22B246F40, 0, 0);
}

uint64_t sub_22B246F40()
{
  v34 = v0;
  v1 = v0[13];
  v2 = [v1 owner];
  v3 = [v1 currentUser];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_12:

LABEL_13:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = v0[18];
    v15 = v0[15];
    v16 = v0[16];
    v17 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v14, v17, v15);

    v18 = sub_22B36050C();
    v19 = sub_22B360D2C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[16];
    if (v20)
    {
      v25 = v0[11];
      v24 = v0[12];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22B1A7B20(v25, v24, &v33);
      _os_log_impl(&dword_22B116000, v18, v19, "Skipping energy site removal for home %s - current user is not the owner", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    v28 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
    v29 = *v28;
    v0[32] = *v28;
    if (v29)
    {
      v0[33] = *(v28 + 8);

      v32 = (v29 + *v29);
      v30 = swift_task_alloc();
      v0[34] = v30;
      *v30 = v0;
      v30[1] = sub_22B247B94;

      return v32();
    }

    else
    {

      v31 = v0[1];

      return v31();
    }
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_12;
  }

  sub_22B128014(0, &qword_281408560, 0x277CD1EE0);
  v5 = sub_22B360FBC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v9 = sub_22B35DECC();
  v11 = v10;
  v0[25] = v9;
  v0[26] = v10;
  (*(v7 + 8))(v6, v8);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v0[27] = qword_28140BDD8;
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22B2473F4;

  return sub_22B22250C(v9, v11, 0, 0);
}

uint64_t sub_22B2473F4(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_22B2474F4, 0, 0);
}

uint64_t sub_22B2474F4()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_22B2476EC;

    return sub_22B23D0CC(v1);
  }

  else
  {

    v4 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
    v5 = *v4;
    v0[32] = *v4;
    if (v5)
    {
      v0[33] = *(v4 + 8);

      v8 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[34] = v6;
      *v6 = v0;
      v6[1] = sub_22B247B94;

      return v8();
    }

    else
    {

      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_22B2476EC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22B247D34;
  }

  else
  {
    v2 = sub_22B247800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B247800()
{
  v29 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[26];
  if (v7)
  {
    v10 = v0[25];
    v11 = v0[16];
    v25 = v0[15];
    v26 = v0[19];
    v12 = v0[11];
    v24 = v0[12];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v15 = sub_22B1A7B20(v10, v9, &v28);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_22B1A7B20(v12, v24, &v28);
    _os_log_impl(&dword_22B116000, v5, v6, "Removed energy site %s for deleted home %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v26, v25);
  }

  else
  {
    v16 = v0[19];
    v17 = v0[15];
    v18 = v0[16];

    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
  v20 = *v19;
  v0[32] = *v19;
  if (v20)
  {
    v0[33] = *(v19 + 8);

    v27 = (v20 + *v20);
    v21 = swift_task_alloc();
    v0[34] = v21;
    *v21 = v0;
    v21[1] = sub_22B247B94;

    return v27();
  }

  else
  {

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_22B247B94()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v5 = *v0;

  sub_22B144D48(v2, v1);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B247D34()
{
  v36 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  v11 = v0[29];
  v12 = v0[26];
  if (v9)
  {
    v13 = v0[25];
    v31 = v0[16];
    v32 = v0[15];
    v33 = v0[17];
    v14 = v0[11];
    v29 = v0[12];
    v30 = v0[29];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v15 = 136315650;
    v18 = sub_22B1A7B20(v13, v12, &v35);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_22B1A7B20(v14, v29, &v35);
    *(v15 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v16 = v20;
    _os_log_impl(&dword_22B116000, v7, v8, "Failed to remove energy site %s for deleted home %s: %@", v15, 0x20u);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[14] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_homeRemoveCompleted;
  v25 = *v24;
  v0[32] = *v24;
  if (v25)
  {
    v0[33] = *(v24 + 8);

    v34 = (v25 + *v25);
    v26 = swift_task_alloc();
    v0[34] = v26;
    *v26 = v0;
    v26[1] = sub_22B247B94;

    return v34();
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22B2481F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B3605EC();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B36062C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_serialQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_22B36060C();
  v22 = MEMORY[0x277D84F90];
  sub_22B1189D0(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_22B2484E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B119A60;

  return sub_22B246C14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B248604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAA0, &qword_22B366450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B248674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B124D88;

  return sub_22B246910(a1, v4, v5, v6);
}

id sub_22B248728(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B248734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAB0, &qword_22B366468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B2487AC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);

  return sub_22B243994(a1);
}

uint64_t sub_22B24883C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_22B32DF50(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22B248940(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 120))
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = *(v2 + 112);
  if (v3)
  {

    v5 = v3;
  }

  else
  {

    v7 = sub_22B2A632C();
    v5 = [v7 newBackgroundContext];
    v8 = sub_22B36081C();
    [v5 setTransactionAuthor_];

    [v5 setMergePolicy_];
    [v5 setUndoManager_];
    [v5 setShouldRefreshAfterSave_];
    [v5 setStalenessInterval_];
    [v5 setShouldDeleteInaccessibleFaults_];

    v3 = 0;
  }

  MEMORY[0x28223BE20](v4);
  v9 = v3;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAB08, &qword_22B3664B8);
  sub_22B360E7C();

  return v11;
}

uint64_t sub_22B248B18()
{
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B248B80(uint64_t a1)
{
  sub_22B3608FC();

  return sub_22B3608FC();
}

uint64_t sub_22B248BD0(uint64_t a1)
{
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B248C34(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22B36134C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22B36134C();
    }
  }

  return result;
}

void sub_22B248CD8(void *a1@<X2>, void *a2@<X8>)
{
  v56 = a1;
  v54 = a2;
  v2 = sub_22B36052C();
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B36081C();
  v6 = [v4 initWithEntityName_];

  v69 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v7 = swift_allocObject();
  v70 = xmmword_22B3634C0;
  *(v7 + 16) = xmmword_22B3634C0;
  v8 = sub_22B35DEDC();
  *(v7 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  v9 = MEMORY[0x277D85388];
  v10 = v2;
  *(v7 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78, MEMORY[0x277D85388]);
  *(v7 + 32) = v8;
  v11 = sub_22B35DDDC();
  *(v7 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v7 + 104) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8, v9);
  *(v7 + 72) = v11;
  v12 = v56;
  v13 = sub_22B360CCC();
  [v6 setPredicate_];

  [v6 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v14 = swift_allocObject();
  *(v14 + 16) = v70;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x800000022B36AF80;
  v69 = 0x800000022B36AF80;
  *(v14 + 88) = v15;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0xD000000000000010;
  v67 = 0x800000022B36AFA0;
  *(v14 + 72) = 0x800000022B36AFA0;
  v16 = sub_22B360A3C();

  [v6 setPropertiesToFetch_];

  v17 = v58;
  [v6 setReturnsDistinctResults_];
  v63 = v6;
  v18 = [v6 setFetchBatchSize_];
  v19 = 0;
  v62 = (v71 + 16);
  v61 = (v71 + 8);
  v78 = MEMORY[0x277D84FA0];
  *&v20 = 134218242;
  v57 = v20;
  v55 = v2;
  while (1)
  {
    v65 = MEMORY[0x23188EEB0](v18);
    v21 = v63;
    v66 = v19;
    [v63 setFetchOffset_];
    [v21 setFetchLimit_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v22 = v17;
    v23 = sub_22B360E9C();
    if (!v17)
    {
      break;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*v62)(v64, v24, v10);
    v25 = v17;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = v57;
      *(v28 + 4) = v66;
      *(v28 + 12) = 2112;
      v30 = v22;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to fetch LoadSessionBlock contributors at offset %ld: %@", v28, 0x16u);
      sub_22B123284(v29, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    else
    {
    }

    v48 = v65;
    (*v61)(v64, v10);
    v49 = 0;
    v17 = 0;
    v19 = v66;
LABEL_48:
    objc_autoreleasePoolPop(v48);
    if (__ROR8__(0x8F5C28F5C28F5C29 * v19 + 0x51EB851EB851EB8, 3) < 0x147AE147AE147AFuLL)
    {
      v18 = [v12 reset];
    }

    if (!v49)
    {

      *v54 = v78;
      return;
    }
  }

  v32 = v23;
  v60 = v23 >> 62;
  if (!(v23 >> 62))
  {
    v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

  v33 = sub_22B36109C();
  if (!v33)
  {
LABEL_46:

    v49 = 0;
    v19 = v66;
LABEL_47:
    v48 = v65;
    goto LABEL_48;
  }

LABEL_10:
  v58 = 0;
  v34 = 0;
  *&v70 = v32 & 0xC000000000000001;
  v71 = v32 & 0xFFFFFFFFFFFFFF8;
  v59 = MEMORY[0x277D84F90];
  do
  {
    v35 = v34;
    while (1)
    {
      if (v70)
      {
        v36 = MEMORY[0x23188EAC0](v35, v32);
      }

      else
      {
        if (v35 >= *(v71 + 16))
        {
          goto LABEL_52;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      *&v74 = 0xD000000000000010;
      *(&v74 + 1) = v69;
      v38 = v15;
      v39 = [v36 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v39)
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      if (!*(&v75 + 1))
      {
        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v40 = v73;
      v68 = v72;
      *&v74 = 0xD000000000000010;
      *(&v74 + 1) = v67;
      v41 = [v37 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v41)
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      v15 = v38;
      if (*(&v75 + 1))
      {
        break;
      }

LABEL_13:
      sub_22B123284(&v76, &unk_27D8BA950, &qword_22B364940);
LABEL_14:

LABEL_15:
      ++v35;
      if (v34 == v33)
      {
        goto LABEL_40;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_15;
    }

    v42 = v72;
    v43 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_22B32D838(0, *(v59 + 2) + 1, 1, v59);
    }

    v45 = *(v59 + 2);
    v44 = *(v59 + 3);
    if (v45 >= v44 >> 1)
    {
      v59 = sub_22B32D838((v44 > 1), v45 + 1, 1, v59);
    }

    v46 = v59;
    *(v59 + 2) = v45 + 1;
    v47 = &v46[32 * v45];
    *(v47 + 4) = v68;
    *(v47 + 5) = v40;
    *(v47 + 6) = v42;
    *(v47 + 7) = v43;
    v15 = v38;
  }

  while (v34 != v33);
LABEL_40:
  sub_22B250404(v59);

  if (v60)
  {
    v50 = sub_22B36109C();
  }

  else
  {
    v50 = *(v71 + 16);
  }

  v12 = v56;
  v10 = v55;
  v17 = v58;
  v51 = v66;

  v52 = __OFADD__(v51, v50);
  v19 = v51 + v50;
  if (!v52)
  {
    v49 = v50 > 49;
    goto LABEL_47;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_22B2496CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v354 = a8;
  v313 = a7;
  v378 = a6;
  v338 = a5;
  v337 = a4;
  v336 = a3;
  v335 = a2;
  v334 = a1;
  v303 = a9;
  v10 = sub_22B35D8BC();
  MEMORY[0x28223BE20](v10 - 8);
  v343 = &v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480);
  v329 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v346 = &v297 - v12;
  v321 = sub_22B35E7EC();
  v328 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v320 = &v297 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_22B35DF1C();
  v312 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v342 = &v297 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v341 = &v297 - v16;
  MEMORY[0x28223BE20](v17);
  v332 = &v297 - v18;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v345 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v319 = &v297 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v297 = &v297 - v21;
  MEMORY[0x28223BE20](v22);
  v361 = &v297 - v23;
  MEMORY[0x28223BE20](v24);
  v344 = &v297 - v25;
  MEMORY[0x28223BE20](v26);
  v353 = &v297 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE8, &unk_22B366490);
  MEMORY[0x28223BE20](v28 - 8);
  v373 = &v297 - v29;
  v392 = sub_22B35E66C();
  v362 = *(v392 - 8);
  MEMORY[0x28223BE20](v392);
  v370 = &v297 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_22B36052C();
  v311 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v310 = &v297 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v305 = &v297 - v33;
  v394 = sub_22B35E85C();
  v309 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v318 = &v297 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v331 = &v297 - v36;
  MEMORY[0x28223BE20](v37);
  v377 = &v297 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA710, &qword_22B3659B8);
  MEMORY[0x28223BE20](v39 - 8);
  v298 = &v297 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v365 = &v297 - v42;
  MEMORY[0x28223BE20](v43);
  v380 = (&v297 - v44);
  MEMORY[0x28223BE20](v45);
  v385 = &v297 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  MEMORY[0x28223BE20](v47 - 8);
  v304 = &v297 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v376 = &v297 - v50;
  MEMORY[0x28223BE20](v51);
  v384 = &v297 - v52;
  v393 = sub_22B35DE9C();
  v308 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v317 = &v297 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v326 = &v297 - v55;
  MEMORY[0x28223BE20](v56);
  v397 = &v297 - v57;
  MEMORY[0x28223BE20](v58);
  v375 = (&v297 - v59);
  MEMORY[0x28223BE20](v60);
  v387 = (&v297 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  MEMORY[0x28223BE20](v62 - 8);
  v356 = &v297 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  MEMORY[0x28223BE20](v64 - 8);
  v360 = &v297 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x28223BE20](v66 - 8);
  v374 = &v297 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v383 = &v297 - v69;
  MEMORY[0x28223BE20](v70);
  v396 = &v297 - v71;
  MEMORY[0x28223BE20](v72);
  v395 = &v297 - v73;
  MEMORY[0x28223BE20](v74);
  v391 = &v297 - v75;
  MEMORY[0x28223BE20](v76);
  v390 = &v297 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  MEMORY[0x28223BE20](v78 - 8);
  v359 = &v297 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x28223BE20](v80 - 8);
  v366 = (&v297 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v82);
  v351 = (&v297 - v83);
  MEMORY[0x28223BE20](v84);
  v382 = &v297 - v85;
  MEMORY[0x28223BE20](v86);
  v381 = (&v297 - v87);
  MEMORY[0x28223BE20](v88);
  v389 = (&v297 - v89);
  MEMORY[0x28223BE20](v90);
  v386 = &v297 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  MEMORY[0x28223BE20](v92 - 8);
  v358 = &v297 - v93;
  v372 = sub_22B35E81C();
  v371 = *(v372 - 1);
  MEMORY[0x28223BE20](v372);
  v357 = &v297 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_22B35E4BC();
  v95 = *(v367 - 1);
  MEMORY[0x28223BE20](v367);
  v97 = &v297 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_22B35E7AC();
  v363 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v352 = &v297 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v369 = (&v297 - v100);
  MEMORY[0x28223BE20](v101);
  v347 = &v297 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v103 - 8);
  v325 = &v297 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v105);
  v107 = &v297 - v106;
  v108 = sub_22B35E0BC();
  v307 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v316 = &v297 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v112 = &v297 - v111;
  v113 = sub_22B35DF9C();
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v116 = &v297 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_22B35E04C();
  v301 = *(v302 - 8);
  v117 = MEMORY[0x28223BE20](v302);
  v119 = &v297 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v114 + 104))(v116, *MEMORY[0x277CC9830], v113, v117);
  sub_22B35DFAC();
  (*(v114 + 8))(v116, v113);
  v120 = v307;
  sub_22B35E08C();
  v121 = *(v120 + 48);
  v324 = v120 + 48;
  v323 = v121;
  if (v121(v107, 1, v108) != 1)
  {
    v122 = *(v120 + 32);
    v322 = v108;
    v315 = v120 + 32;
    v314 = v122;
    v122(v112, v107, v108);
    v379 = v119;
    sub_22B35E01C();
    v355 = v97;
    sub_22B35E4CC();
    sub_22B35E4CC();
    v123 = *(v95 + 56);
    v348 = v123;
    v124 = v367;
    v123(v386, 1, 1, v367);
    v123(v389, 1, 1, v124);
    v123(v381, 1, 1, v124);
    v123(v382, 1, 1, v124);
    v123(v351, 1, 1, v124);
    v123(v366, 1, 1, v124);
    v125 = MEMORY[0x277D17508];
    v340 = sub_22B24CA6C(&qword_27D8BA7A0, MEMORY[0x277D17508], MEMORY[0x277D17520]);
    v349 = sub_22B24CA6C(&qword_27D8BA7A8, v125, MEMORY[0x277D17510]);
    v350 = sub_22B24CA6C(&qword_27D8BA7B0, v125, MEMORY[0x277D17518]);
    sub_22B35E48C();
    v126 = *(v371 + 56);
    v127 = v372;
    v126(v390, 1, 1, v372);
    v126(v391, 1, 1, v127);
    v126(v395, 1, 1, v127);
    v126(v396, 1, 1, v127);
    v126(v383, 1, 1, v127);
    v126(v374, 1, 1, v127);
    v128 = MEMORY[0x277D17570];
    v351 = sub_22B24CA6C(&qword_27D8BA770, MEMORY[0x277D17570], MEMORY[0x277D17588]);
    v366 = sub_22B24CA6C(&qword_27D8BA778, v128, MEMORY[0x277D17578]);
    v371 = sub_22B24CA6C(&qword_27D8BA780, v128, MEMORY[0x277D17580]);
    sub_22B35E48C();
    v129 = v348;
    v348(v386, 1, 1, v124);
    v129(v389, 1, 1, v124);
    v129(v381, 1, 1, v124);
    v129(v382, 1, 1, v124);
    sub_22B35E4EC();
    v126(v390, 1, 1, v127);
    v126(v391, 1, 1, v127);
    v126(v395, 1, 1, v127);
    v126(v396, 1, 1, v127);
    sub_22B35E4EC();
    sub_22B35E77C();
    v390 = sub_22B3227B0(MEMORY[0x277D84F90]);
    v130 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v131 = sub_22B36081C();
    v333 = [v130 initWithEntityName_];

    v132 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v395 = "LoadSessionBlock";
    v396 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_22B363640;
    v134 = sub_22B35DEDC();
    *(v133 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    v389 = MEMORY[0x277D85388];
    *(v133 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78, MEMORY[0x277D85388]);
    *(v133 + 32) = v134;
    v135 = MEMORY[0x277D837D0];
    *(v133 + 96) = MEMORY[0x277D837D0];
    v136 = sub_22B1280E4();
    v137 = v336;
    *(v133 + 72) = v335;
    *(v133 + 80) = v137;
    *(v133 + 136) = v135;
    *(v133 + 144) = v136;
    v138 = v337;
    *(v133 + 104) = v136;
    *(v133 + 112) = v138;
    *(v133 + 120) = v338;

    v139 = v387;
    sub_22B35D89C();
    v140 = sub_22B35DDDC();
    v142 = v308 + 8;
    v141 = *(v308 + 8);
    v143 = v393;
    v141(v139, v393);
    v144 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v133 + 176) = v144;
    v145 = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8, v389);
    *(v133 + 184) = v145;
    *(v133 + 152) = v140;
    v146 = v375;
    sub_22B35D86C();
    v147 = sub_22B35DDDC();
    v371 = v142;
    v391 = v141;
    v141(v146, v143);
    *(v133 + 216) = v144;
    *(v133 + 224) = v145;
    *(v133 + 192) = v147;
    v148 = sub_22B360CCC();
    v149 = v333;
    [v333 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_22B363650;
    v151 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v152 = sub_22B36081C();
    v153 = [v151 initWithKey:v152 ascending:1];

    *(v150 + 32) = v153;
    sub_22B128014(0, &qword_281409308, 0x277CCAC98);
    v154 = sub_22B360A3C();

    [v149 setSortDescriptors_];

    [v149 setFetchBatchSize_];
    [v149 setReturnsObjectsAsFaults_];
    v155 = *(v312 + 56);
    v156 = v388;
    v375 = (v312 + 56);
    v374 = v155;
    (v155)(v384, 1, 1, v388);
    v157 = v309 + 56;
    v299 = *(v309 + 56);
    v299(v385, 1, 1, v394);
    sub_22B35DACC();
    swift_allocObject();
    v378 = sub_22B35DABC();
    v340 = 0;
    v381 = (v157 - 8);
    v367 = (v157 - 24);
    v300 = v157;
    v366 = (v157 - 48);
    v372 = (v362 + 56);
    v351 = (v362 + 32);
    v348 = (v363 + 2);
    v350 = (v363 + 5);
    ++v363;
    v349 = (v362 + 8);
    v158 = v380;
    do
    {
      v159 = MEMORY[0x23188EEB0]();
      v160 = v333;
      [v333 setFetchOffset_];
      [v160 setFetchLimit_];
      sub_22B35F67C();
      v161 = v398;
      v162 = sub_22B360E9C();
      v163 = v161;
      if (v161)
      {
        goto LABEL_56;
      }

      v164 = v162;
      v339 = v159;
      v386 = v162;
      v330 = v162 >> 62;
      if (v162 >> 62)
      {
        v222 = sub_22B36109C();
        v164 = v386;
        v159 = v387;
        v165 = v371;
        v382 = v222;
        if (!v222)
        {
LABEL_36:
          v398 = 0;

          v159 = v339;
          goto LABEL_48;
        }
      }

      else
      {
        v159 = v387;
        v165 = v371;
        v382 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v382)
        {
          goto LABEL_36;
        }
      }

      v166 = 0;
      v383 = (v164 & 0xC000000000000001);
      v362 = v164 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v383)
        {
          v167 = MEMORY[0x23188EAC0](v166, v164);
        }

        else
        {
          if (v166 >= *(v362 + 16))
          {
            goto LABEL_70;
          }

          v167 = *(v164 + 8 * v166 + 32);
        }

        v152 = v167;
        if (__OFADD__(v166, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v395 = (v166 + 1);
        v396 = v166;
        v398 = v163;
        v168 = [v167 homeIdentifier];
        v169 = v376;
        sub_22B35DEFC();

        v170 = v384;
        sub_22B123284(v384, &qword_27D8BA970, &unk_22B363560);
        (v374)(v169, 0, 1, v156);
        sub_22B170CD0(v169, v170, &qword_27D8BA970, &unk_22B363560);
        v171 = v385;
        sub_22B170BE0(v385, v158, &qword_27D8BA710, &qword_22B3659B8);
        v172 = v394;
        if ((*v381)(v158, 1, v394) == 1)
        {
          sub_22B123284(v158, &qword_27D8BA710, &qword_22B3659B8);
          v173 = [v152 loadType];
          sub_22B36084C();

          v174 = v365;
          sub_22B35E83C();
          sub_22B250374(v174, v171);
        }

        else
        {
          (*v367)(v377, v158, v172);
          v175 = sub_22B35E84C();
          v177 = v176;
          v178 = [v152 loadType];
          v179 = sub_22B36084C();
          v181 = v180;

          if (v175 == v179 && v177 == v181)
          {

            v165 = v371;
          }

          else
          {
            v182 = sub_22B36134C();

            v165 = v371;
            if ((v182 & 1) == 0)
            {

              if (qword_28140A0C8 != -1)
              {
                swift_once();
              }

              v156 = v306;
              v223 = __swift_project_value_buffer(v306, qword_28140BD10);
              swift_beginAccess();
              v224 = v311;
              v225 = v305;
              (*(v311 + 16))(v305, v223, v156);
              v226 = v152;
              v227 = sub_22B36050C();
              v228 = sub_22B360D1C();

              if (os_log_type_enabled(v227, v228))
              {
                v229 = swift_slowAlloc();
                v230 = swift_slowAlloc();
                v399[0] = v230;
                *v229 = 136315394;
                v231 = [v226 deviceIdentifier];
                v232 = sub_22B36084C();
                v234 = v233;

                v235 = sub_22B1A7B20(v232, v234, v399);

                *(v229 + 4) = v235;
                *(v229 + 12) = 2080;
                v236 = [v226 sourceIdentifier];
                v237 = sub_22B36084C();
                v239 = v238;

                v240 = v237;
                v156 = v306;
                v241 = sub_22B1A7B20(v240, v239, v399);

                *(v229 + 14) = v241;
                _os_log_impl(&dword_22B116000, v227, v228, "Developer error: DeviceID %s must be unique for a\nsource %s with different load types", v229, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23188F650](v230, -1, -1);
                MEMORY[0x23188F650](v229, -1, -1);

                (*(v224 + 8))(v305, v156);
              }

              else
              {

                (*(v224 + 8))(v225, v156);
              }

              v242 = v385;
              sub_22B123284(v385, &qword_27D8BA710, &qword_22B3659B8);
              v243 = v394;
              v299(v242, 1, 1, v394);
              sub_22B134CDC();
              v158 = swift_allocError();
              *v244 = 20;
              swift_willThrow();

              (*v366)(v377, v243);
              v152 = v388;
              v159 = v339;
              goto LABEL_43;
            }
          }

          (*v366)(v377, v394);
        }

        v183 = [v152 blockStart];
        sub_22B35DE5C();

        v184 = v159;
        v185 = v152;
        sub_22B35DFBC();
        v186 = v393;
        v187 = v391;
        (v391)(v184, v393);
        v188 = [v152 blockData];
        v152 = v165;
        v189 = sub_22B35DCDC();
        v191 = v190;

        sub_22B24CA6C(&qword_27D8BAAF0, MEMORY[0x277D17538], MEMORY[0x277D17548]);
        v192 = v373;
        v193 = v392;
        v194 = v398;
        sub_22B35DAAC();
        if (v194)
        {

          sub_22B12F174(v189, v191);
          v187(v397, v186);
          (*v372)(v192, 1, 1, v193);
          sub_22B123284(v192, &qword_27D8BAAE8, &unk_22B366490);
          v163 = 0;
          v158 = v380;
          v159 = v387;
          v165 = v152;
        }

        else
        {
          v389 = v185;
          v398 = 0;
          sub_22B12F174(v189, v191);
          (*v372)(v192, 0, 1, v193);
          (*v351)(v370, v192, v193);
          sub_22B35E64C();
          sub_22B35E65C();
          sub_22B35E5EC();
          sub_22B35E61C();
          sub_22B35E5DC();
          sub_22B35E63C();
          sub_22B35E62C();
          sub_22B35E77C();
          v195 = v390;
          if (*(v390 + 2) && (v196 = sub_22B33B348(v397), (v197 & 1) != 0))
          {
            v198 = v344;
            sub_22B170BE0(*(v195 + 7) + *(v345 + 72) * v196, v344, &qword_27D8BAAE0, &unk_22B3673C0);
            v199 = v198;
            v200 = v353;
            sub_22B170CD0(v199, v353, &qword_27D8BAAE0, &unk_22B3673C0);
          }

          else
          {
            v201 = *(v364 + 48);
            v202 = *v348;
            v200 = v353;
            v203 = v347;
            v204 = v368;
            (*v348)(v353, v347, v368);
            v202(v200 + v201, v203, v204);
          }

          v158 = v380;
          v159 = v387;
          v205 = v200;
          v206 = v200;
          if (([v389 isConsumptionBlock] & 1) == 0)
          {
            v205 = v200 + *(v364 + 48);
          }

          v207 = v352;
          v152 = v369;
          sub_22B24CAB4(v205, v369, v354, v352);
          v208 = v207;
          v209 = v368;
          (*v350)(v205, v208, v368);
          v210 = v200;
          v211 = v361;
          sub_22B170BE0(v210, v361, &qword_27D8BAAE0, &unk_22B3673C0);
          v212 = v390;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v399[0] = v212;
          v214 = v211;
          v215 = v397;
          sub_22B33FA2C(v214, v397, isUniquelyReferenced_nonNull_native);

          (*v363)(v152, v209);
          (*v349)(v370, v392);
          v216 = v215;
          v217 = v371;
          (v391)(v216, v393);
          v390 = v399[0];
          v218 = v206;
          v165 = v217;
          sub_22B123284(v218, &qword_27D8BAAE0, &unk_22B3673C0);
          v163 = v398;
        }

        v166 = (v396 + 1);
        v156 = v388;
        v164 = v386;
      }

      while (v395 != v382);
      if (v330)
      {
        v219 = sub_22B36109C();
      }

      else
      {
        v219 = *(v362 + 16);
      }

      v220 = v339;

      v221 = __OFADD__(v340, v219);
      v340 += v219;
      if (v221)
      {
        goto LABEL_72;
      }

      v398 = v163;
      objc_autoreleasePoolPop(v220);
    }

    while (v219 > 9);
    while (1)
    {
      v253 = v384;
      v254 = v304;
      sub_22B170BE0(v384, v304, &qword_27D8BA970, &unk_22B363560);
      v255 = v312;
      if ((*(v312 + 48))(v254, 1, v156) == 1)
      {
        sub_22B123284(v254, &qword_27D8BA970, &unk_22B363560);

        sub_22B123284(v385, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v253, &qword_27D8BA970, &unk_22B363560);
        (*v363)(v347, v368);
        (*(v301 + 8))(v379, v302);

        *v303 = MEMORY[0x277D84F90];
        return result;
      }

      v257 = v332;
      (*(v255 + 32))(v332, v254, v156);
      v258 = v385;
      v259 = v298;
      sub_22B170BE0(v385, v298, &qword_27D8BA710, &qword_22B3659B8);
      v260 = v394;
      if ((*v381)(v259, 1, v394) == 1)
      {
        sub_22B123284(v259, &qword_27D8BA710, &qword_22B3659B8);

        sub_22B123284(v258, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v384, &qword_27D8BA970, &unk_22B363560);
        (*v363)(v347, v368);
        (*(v301 + 8))(v379, v302);
        *v303 = MEMORY[0x277D84F90];
        (*(v255 + 8))(v257, v156);
      }

      (*v367)(v331, v259, v260);
      v261 = v390;
      v262 = *(v390 + 2);
      v159 = MEMORY[0x277D84F90];
      if (!v262)
      {
        break;
      }

      v263 = sub_22B32DD28(*(v390 + 2), 0);
      sub_22B24FBE8(v399, v263 + ((*(v329 + 80) + 32) & ~*(v329 + 80)), v262, v261);
      v265 = v264;
      v266 = v399[0];
      v163 = v399[2];
      v156 = v399[4];

      sub_22B1A20B8(v266);
      if (v265 == v262)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_56:
      v152 = v156;
      v158 = v163;
      v156 = v306;
LABEL_43:
      v398 = 0;
      if (qword_28140A0C8 != -1)
      {
        goto LABEL_73;
      }

LABEL_44:
      v245 = __swift_project_value_buffer(v156, qword_28140BD10);
      swift_beginAccess();
      (*(v311 + 16))(v310, v245, v156);
      v246 = v158;
      v247 = sub_22B36050C();
      v248 = sub_22B360D1C();

      if (os_log_type_enabled(v247, v248))
      {
        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        *v249 = 134218242;
        *(v249 + 4) = v340;
        *(v249 + 12) = 2112;
        v251 = v158;
        v252 = _swift_stdlib_bridgeErrorToNSError();
        *(v249 + 14) = v252;
        *v250 = v252;
        _os_log_impl(&dword_22B116000, v247, v248, "Failed to fetch LoadSessionBlocks batch at offset %ld: %@", v249, 0x16u);
        sub_22B123284(v250, &unk_27D8BAA90, &unk_22B362BC0);
        v152 = v388;
        MEMORY[0x23188F650](v250, -1, -1);
        MEMORY[0x23188F650](v249, -1, -1);
      }

      else
      {
      }

      (*(v311 + 8))(v310, v156);
      v156 = v152;
LABEL_48:
      objc_autoreleasePoolPop(v159);
    }

    v263 = MEMORY[0x277D84F90];
LABEL_58:
    v158 = v312;
    v267 = v309;
    v268 = v308;
    v399[0] = v263;
    v9 = v398;
    sub_22B24E804(v399);
    v269 = v368;
    v270 = v347;
    if (v9)
    {
      goto LABEL_76;
    }

    v156 = v399[0];
    v271 = *(v399[0] + 16);
    if (!v271)
    {

      sub_22B123284(v385, &qword_27D8BA710, &qword_22B3659B8);
      sub_22B123284(v384, &qword_27D8BA970, &unk_22B363560);
      (*v363)(v270, v269);
      (*(v301 + 8))(v379, v302);
      v272 = MEMORY[0x277D84F90];
LABEL_68:
      *v303 = v272;
      (*v366)(v331, v394);
      (*(v158 + 8))(v332, v388);
    }

    v398 = 0;
    v400 = v159;
    v383 = v271;
    sub_22B355810(0, v271, 0);
    v159 = 0;
    v272 = v400;
    v389 = (v156 + ((*(v329 + 80) + 32) & ~*(v329 + 80)));
    v387 = (v268 + 16);
    v382 = (v307 + 8);
    v381 = (v158 + 16);
    v380 = (v267 + 16);
    v377 = (v328 + 32);
    v152 = &qword_27D8BA870;
    v273 = v346;
    v274 = v364;
    v275 = v297;
    v276 = v393;
    v386 = v156;
    while (v159 < *(v156 + 16))
    {
      v397 = v272;
      v277 = *(v329 + 72);
      v396 = v159;
      sub_22B170BE0(v389 + v277 * v159, v273, &qword_27D8BA870, &unk_22B366480);
      v278 = &v346[*(v327 + 48)];
      v279 = *(v274 + 48);
      v280 = *v348;
      v281 = v368;
      (*v348)(v275, v278, v368);
      v282 = &v278[v279];
      v283 = v346;
      v280(v275 + *(v274 + 48), v282, v281);
      (*v387)(v326, v283, v276);
      v284 = v325;
      sub_22B35E08C();
      v285 = v322;
      if (v323(v284, 1, v322) == 1)
      {
        __break(1u);
        goto LABEL_75;
      }

      v286 = v316;
      v314(v316, v284, v285);
      sub_22B35F63C();
      (*v382)(v286, v285);
      sub_22B35D88C();
      v287 = *v381;
      v288 = v388;
      (*v381)(v341, v332, v388);
      v287(v342, v334, v288);
      v9 = v338;
      v399[0] = v337;
      v399[1] = v338;

      v289 = sub_22B3609EC();
      v391 = v290;
      v392 = v289;
      (*v380)(v318, v331, v394);
      v291 = v361;
      sub_22B170BE0(v275, v361, &qword_27D8BAAE0, &unk_22B3673C0);
      v395 = *(v274 + 48);
      v292 = v319;
      sub_22B170BE0(v275, v319, &qword_27D8BAAE0, &unk_22B3673C0);
      v293 = v320;
      v273 = v346;
      sub_22B35E6DC();
      sub_22B123284(v275, &qword_27D8BAAE0, &unk_22B3673C0);
      v294 = *v363;
      (*v363)(v292, v281);
      v295 = &v395[v291];
      v395 = v294;
      (v294)(v295, v281);
      v152 = &qword_27D8BA870;
      sub_22B123284(v273, &qword_27D8BA870, &unk_22B366480);
      v272 = v397;
      v400 = v397;
      v158 = *(v397 + 16);
      v296 = *(v397 + 24);
      if (v158 >= v296 >> 1)
      {
        sub_22B355810((v296 > 1), v158 + 1, 1);
        v273 = v346;
        v272 = v400;
      }

      v159 = (v396 + 1);
      *(v272 + 16) = v158 + 1;
      (*(v328 + 32))(v272 + ((*(v328 + 80) + 32) & ~*(v328 + 80)) + *(v328 + 72) * v158, v293, v321);
      v274 = v364;
      v276 = v393;
      v156 = v386;
      if (v383 == v159)
      {

        sub_22B123284(v385, &qword_27D8BA710, &qword_22B3659B8);
        sub_22B123284(v384, &qword_27D8BA970, &unk_22B363560);
        (v395)(v347, v368);
        (*(v301 + 8))(v379, v302);
        v158 = v312;
        goto LABEL_68;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_44;
  }

LABEL_75:
  __break(1u);
LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_22B24CA6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B24CAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v95 = a2;
  v89 = a4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v88 = &v69 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v69 - v18;
  MEMORY[0x28223BE20](v19);
  v80 = &v69 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v69 - v23;
  MEMORY[0x28223BE20](v24);
  v94 = &v69 - v25;
  v26 = sub_22B35E81C();
  v90 = *(v26 - 8);
  v91 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v32);
  v93 = &v69 - v33;
  v34 = sub_22B35E4BC();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v69 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v92 = a1;
  sub_22B35E78C();
  v44 = sub_22B35E42C();
  v45 = *(v35 + 8);
  v45(v40, v34);
  sub_22B35E78C();
  v46 = sub_22B35E42C();
  v45(v37, v34);
  result = v44 + v46;
  if (__OFADD__(v44, v46))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22B35E4CC();
  sub_22B35E79C();
  v48 = sub_22B35E42C();
  v49 = *(v90 + 8);
  v50 = v31;
  v51 = v91;
  v49(v50, v91);
  sub_22B35E79C();
  v52 = sub_22B35E42C();
  v49(v28, v51);
  result = v48 + v52;
  if (__OFADD__(v48, v52))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v91 = v43;
  sub_22B35E4CC();
  v53 = v69;
  sub_22B35E73C();
  v54 = v70;
  sub_22B35E73C();
  sub_22B24D2C4(v94);
  v55 = *(v71 + 8);
  v56 = v72;
  v55(v54, v72);
  v55(v53, v56);
  v57 = v73;
  sub_22B35E74C();
  v58 = v74;
  sub_22B35E74C();
  sub_22B24D750(v80);
  v59 = v76;
  v60 = *(v75 + 8);
  v60(v58, v76);
  v60(v57, v59);
  v61 = v77;
  sub_22B35E72C();
  v62 = v78;
  sub_22B35E72C();
  sub_22B24DBDC(v82);
  v63 = *(v79 + 8);
  v64 = v81;
  v63(v62, v81);
  v63(v61, v64);
  v65 = v83;
  sub_22B35E76C();
  v66 = v84;
  sub_22B35E76C();
  sub_22B24DF24(v88);
  v67 = *(v85 + 8);
  v68 = v87;
  v67(v66, v87);
  v67(v65, v68);
  if ((sub_22B35E75C() & 1) == 0)
  {
    sub_22B35E75C();
  }

  return sub_22B35E77C();
}