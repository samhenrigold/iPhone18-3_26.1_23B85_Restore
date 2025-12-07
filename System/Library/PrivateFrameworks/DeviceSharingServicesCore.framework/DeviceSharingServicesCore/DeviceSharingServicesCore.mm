uint64_t sub_248A7C5C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248A7C608()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248A7C648()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CF0, qword_248A94228);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_248A7C680()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248A7C6C0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248A7C70C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248A7C744()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248A7C784()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248A7C7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_248A7C820()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248A7C858()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248A7C890()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_248A7C8F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_248A93490();
  v4 = v3;

  if (v2 == 0xD000000000000018 && 0x8000000248A94C10 == v4)
  {
  }

  else
  {
    v6 = sub_248A93730();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_248A93480();
      v9 = [v7 initWithSuiteName_];

      if (!v9)
      {
        __break(1u);
      }

      return;
    }
  }

  v10 = [objc_opt_self() standardUserDefaults];

  v11 = v10;
}

id static NSUserDefaults.deviceSharingd.getter()
{
  if (qword_281511438 != -1)
  {
    swift_once();
  }

  v1 = qword_281511440;

  return v1;
}

uint64_t TransportDispatching.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7CBB0, 0, 0);
}

uint64_t sub_248A7CBB0()
{
  v35 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    v31 = v0[10];
    v33 = v8;
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v6(v31, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_248A7E980(v17, v19, &v34);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_248A7B000, v7, v33, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v32, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v21 = v0[8];
    v22 = v0[9];

    (*(v22 + 8))(v10, v21);
  }

  v23 = (*(v0[6] + 24))(v0[5], v0[6]);
  v0[12] = v23;
  v24 = swift_task_alloc();
  v0[13] = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v24 = v0;
  v24[1] = sub_248A7CED0;
  v26 = v0[8];
  v27 = v0[3];
  v28 = v0[4];
  v29 = v0[2];

  return sub_248A906D4(v29, v27, v28, v23, v26, AssociatedConformanceWitness);
}

uint64_t sub_248A7CED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TransportDispatching.register<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7D110, 0, 0);
}

{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7D698, 0, 0);
}

{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7DAC8, 0, 0);
}

uint64_t sub_248A7D110()
{
  v37 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[7];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[16];
    v33 = v0[17];
    v35 = v6;
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v36);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v35(v33, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    v20 = v12;
    v6 = v35;
    (*(v11 + 8))(v10, v20);
    v21 = sub_248A7E980(v17, v19, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v34, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v23 = v0[16];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[15];
  v25 = v0[7];
  v0[19] = (*(v0[12] + 24))(v0[10], v0[12]);
  v0[5] = v24;
  v0[6] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v6(boxed_opaque_existential_1, v25, v24);
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_248A7D450;
  v28 = v0[13];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[9];

  return sub_248A8D448((v0 + 2), v30, v31, v29, v28);
}

uint64_t sub_248A7D450()
{
  v1 = *v0;
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248A7D698()
{
  v37 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[7];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[16];
    v33 = v0[17];
    v35 = v6;
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v36);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v35(v33, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    v20 = v12;
    v6 = v35;
    (*(v11 + 8))(v10, v20);
    v21 = sub_248A7E980(v17, v19, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v34, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v23 = v0[16];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[15];
  v25 = v0[7];
  v0[19] = (*(v0[12] + 24))(v0[10], v0[12]);
  v0[5] = v24;
  v0[6] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v6(boxed_opaque_existential_1, v25, v24);
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_248A7F094;
  v28 = v0[13];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[9];

  return sub_248A8DB8C((v0 + 2), v30, v31, v29, v28);
}

uint64_t sub_248A7DAC8()
{
  v37 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[7];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[16];
    v33 = v0[17];
    v35 = v6;
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v36);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v35(v33, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    v20 = v12;
    v6 = v35;
    (*(v11 + 8))(v10, v20);
    v21 = sub_248A7E980(v17, v19, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v34, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v23 = v0[16];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[15];
  v25 = v0[7];
  v0[19] = (*(v0[12] + 24))(v0[10], v0[12]);
  v0[5] = v24;
  v0[6] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v6(boxed_opaque_existential_1, v25, v24);
  v27 = swift_task_alloc();
  v0[20] = v27;
  *v27 = v0;
  v27[1] = sub_248A7F094;
  v28 = v0[13];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[9];

  return sub_248A8E46C((v0 + 2), v30, v31, v29, v28);
}

uint64_t TransportDispatching.register<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v13;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v9[11] = a5;
  v9[12] = a6;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[17] = AssociatedTypeWitness;
  v9[18] = *(AssociatedTypeWitness - 8);
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7DF04, 0, 0);
}

{
  v9[15] = v13;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v9[11] = a5;
  v9[12] = a6;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[17] = AssociatedTypeWitness;
  v9[18] = *(AssociatedTypeWitness - 8);
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7E340, 0, 0);
}

uint64_t sub_248A7DF04()
{
  v39 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[7];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v11 = v0[18];
    v35 = v0[19];
    v37 = v6;
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v38);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v37(v35, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    v20 = v12;
    v6 = v37;
    (*(v11 + 8))(v10, v20);
    v21 = sub_248A7E980(v17, v19, &v38);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v36, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v22 = v0[17];
    v23 = v0[18];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[17];
  v25 = v0[7];
  v0[21] = (*(v0[13] + 24))(v0[10], v0[13]);
  v0[5] = v24;
  v0[6] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v6(boxed_opaque_existential_1, v25, v24);
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_248A7F098;
  v28 = v0[14];
  v29 = v0[15];
  v30 = v0[11];
  v31 = v0[12];
  v32 = v0[8];
  v33 = v0[9];

  return sub_248A8EC40((v0 + 2), v32, v33, v30, v31, v28, v29);
}

uint64_t sub_248A7E340()
{
  v39 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[7];
  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v11 = v0[18];
    v35 = v0[19];
    v37 = v6;
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v13 = 136446466;
    v14 = sub_248A93830();
    v16 = sub_248A7E980(v14, v15, &v38);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v37(v35, v10, v12);
    v17 = sub_248A934A0();
    v19 = v18;
    v20 = v12;
    v6 = v37;
    (*(v11 + 8))(v10, v20);
    v21 = sub_248A7E980(v17, v19, &v38);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s registering handler for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v36, -1, -1);
    MEMORY[0x24C1E2FB0](v13, -1, -1);
  }

  else
  {
    v22 = v0[17];
    v23 = v0[18];

    (*(v23 + 8))(v10, v22);
  }

  v24 = v0[17];
  v25 = v0[7];
  v0[21] = (*(v0[13] + 24))(v0[10], v0[13]);
  v0[5] = v24;
  v0[6] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v6(boxed_opaque_existential_1, v25, v24);
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_248A7E680;
  v28 = v0[14];
  v29 = v0[15];
  v30 = v0[11];
  v31 = v0[12];
  v32 = v0[8];
  v33 = v0[9];

  return sub_248A8F69C((v0 + 2), v32, v33, v30, v31, v28, v29);
}

uint64_t sub_248A7E680()
{
  v1 = *v0;
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TransportDispatching.unregister(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_248A7E7FC, 0, 0);
}

uint64_t sub_248A7E7FC()
{
  v1 = (*(v0[4] + 24))(v0[3]);
  v0[6] = v1;

  return MEMORY[0x2822009F8](sub_248A7E87C, v1, 0);
}

uint64_t sub_248A7E87C()
{
  v1 = v0[6];
  v2 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_248A90A80(v2, v1, AssociatedTypeWitness, AssociatedConformanceWitness);

  v5 = v0[1];

  return v5();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_248A7E980(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248A7EA4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_248A7EFEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_248A7EA4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_248A7EB58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_248A936A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_248A7EB58(uint64_t a1, unint64_t a2)
{
  v3 = sub_248A7EBA4(a1, a2);
  sub_248A7ECD4(&unk_285B6A6C0);
  return v3;
}

void *sub_248A7EBA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_248A7EDC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_248A936A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_248A93500();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248A7EDC0(v10, 0);
        result = sub_248A93680();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_248A7ECD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_248A7EE34(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_248A7EDC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C78, &qword_248A93EE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248A7EE34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C78, &qword_248A93EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_248A7EFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_248A7F144(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_248A93400();
  v12[0] = 0;
  v7 = [v6 *a4];

  v8 = v12[0];
  if (v7)
  {
    v9 = v7;
    v10 = sub_248A93410();
  }

  else
  {
    v10 = v8;
    sub_248A933F0();

    swift_willThrow();
  }

  return v10;
}

uint64_t static AsyncUtils.withTimeout<A>(_:_:onTimeout:cleanUp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a5;
  *(v9 + 64) = a9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 32) = a2;
  *(v9 + 24) = a6;
  *(v9 + 16) = a1;
  return MEMORY[0x2822009F8](sub_248A7F260, 0, 0);
}

uint64_t sub_248A7F260()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  *(v3 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_248A7F360;
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7);
}

uint64_t sub_248A7F360()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A7F49C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_248A7F49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A7F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 56) = a5;
  *(v8 + 48) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_248A93620();
  *(v8 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A7F5DC, 0, 0);
}

uint64_t sub_248A7F5DC()
{
  v1 = v0[11];
  v2 = v0[9];
  v14 = v0[7];
  v15 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v6 = sub_248A93580();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v4;
  v8[6] = v5;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC3C88, &qword_248A93F70);
  v9 = sub_248A935C0();
  sub_248A7FDE0(v1, &unk_248A93F68, v8, v9);
  sub_248A80664(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v3;
  v10[6] = v14;
  v10[7] = v15;

  sub_248A7FDE0(v1, &unk_248A93F80, v10, v9);
  sub_248A80664(v1);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_248A7F814;
  v12 = v0[10];

  return MEMORY[0x2822004D0](v12, 0, 0, v9);
}

uint64_t sub_248A7F814()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_248A7FA64;
  }

  else
  {
    v2 = sub_248A7F928;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A7F928()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C88, &qword_248A93F70);
    sub_248A935B0();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_248A7FA64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C88, &qword_248A93F70);
  sub_248A935B0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A7FB14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v11 = *(v2 + 6);
  v10 = *(v2 + 7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_248A7FBF4;

  return sub_248A7F500(a1, a2, v7, v8, v11, v10, v6, v9);
}

uint64_t sub_248A7FBF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248A7FCE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_248A7FBF4;

  return v8(a1);
}

uint64_t sub_248A7FDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v20 - v10;
  sub_248A807FC(a1, v20 - v10);
  v12 = sub_248A93580();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_248A80664(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_248A93550();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_248A93570();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_248A7FFB4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  v8 = sub_248A93620();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A80084, 0, 0);
}

uint64_t sub_248A80084(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0xF4240uLL))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = 1000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_248A80188;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_248A80188()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_248A802D8, 0, 0);
  }
}

uint64_t sub_248A802D8()
{
  v1 = *(v0 + 88);
  (*(v0 + 32))();
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(*(v0 + 64) + 8))(v2, *(v0 + 56));
    sub_248A93560();
    sub_248A807A4();
    swift_allocError();
    sub_248A93450();
    swift_willThrow();
LABEL_4:

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  (*(v4 + 32))(*(v0 + 16), v2, v3);

  v5 = *(v0 + 8);
LABEL_5:

  return v5();
}

uint64_t getEnumTagSinglePayload for AsyncUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AsyncUtils(_WORD *result, int a2, int a3)
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

uint64_t sub_248A80540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248A8086C;

  return sub_248A7FCE8(a1, v4, v5, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_248A80664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248A806CC(uint64_t a1)
{
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v6 = *(v1 + 2);
  v7 = v1[5];
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_248A8086C;

  return sub_248A7FFB4(a1, v7, v6, v5, v9, v8, v4);
}

unint64_t sub_248A807A4()
{
  result = qword_27EEC3C90;
  if (!qword_27EEC3C90)
  {
    sub_248A93560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3C90);
  }

  return result;
}

uint64_t sub_248A807FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TransportSerializable<>.transportData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  v4 = sub_248A933B0();

  return v4;
}

uint64_t sub_248A80900@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 3;
  }

  else
  {
    v5 = result;
    sub_248A933A0();
    swift_allocObject();
    sub_248A80ECC(v5, a2);
    sub_248A93390();
    sub_248A8137C();
    sub_248A93380();

    sub_248A80F20(v5, a2);
    result = sub_248A80F20(v5, a2);
    if (!v3)
    {
      *a3 = v7;
    }
  }

  return result;
}

uint64_t sub_248A809E0(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    return v3 > 0xE;
  }

  sub_248A933A0();
  swift_allocObject();
  sub_248A80ECC(a1, a2);
  sub_248A93390();
  sub_248A81424();
  sub_248A93380();

  sub_248A80F20(a1, a2);
  result = sub_248A80F20(a1, a2);
  if (!v2)
  {
    return v3 > 0xE;
  }

  return result;
}

uint64_t sub_248A80AA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_248A933A0();
  swift_allocObject();
  sub_248A80ECC(a1, a2);
  sub_248A93390();
  sub_248A93380();

  sub_248A80F20(a1, a2);
  result = sub_248A80F20(a1, a2);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_248A80B80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 2;
  }

  sub_248A933A0();
  swift_allocObject();
  sub_248A80ECC(a1, a2);
  sub_248A93390();
  sub_248A93380();

  sub_248A80F20(a1, a2);
  result = sub_248A80F20(a1, a2);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_248A80C58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_248A933A0();
  swift_allocObject();
  sub_248A80ECC(a1, a2);
  sub_248A93390();
  sub_248A93380();

  sub_248A80F20(a1, a2);
  result = sub_248A80F20(a1, a2);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t TransportSerializable<>.init(transportData:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](a3, a4);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 >> 60 == 15)
  {
    return (*(v7 + 56))(a2, 1, 1, a1);
  }

  v13 = v8;
  v14 = v9;
  sub_248A933A0();
  swift_allocObject();
  sub_248A80ECC(v13, v14);
  sub_248A93390();
  sub_248A93380();

  sub_248A80F20(v13, v14);
  result = sub_248A80F20(v13, v14);
  if (!v4)
  {
    (*(v7 + 32))(a2, v11, a1);
    return (*(v7 + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_248A80ECC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_248A80F20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248A80F34(a1, a2);
  }

  return a1;
}

uint64_t sub_248A80F34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_248A80FD8(uint64_t a1)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  v1 = sub_248A933B0();

  return v1;
}

uint64_t sub_248A8106C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_248A80AA8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_248A81098(uint64_t a1)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  sub_248A81478();
  v1 = sub_248A933B0();

  return v1;
}

uint64_t sub_248A81118@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A809E0(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_248A81148(uint64_t a1)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  v1 = sub_248A933B0();

  return v1;
}

uint64_t sub_248A811DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_248A80C58(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_248A81210(uint64_t a1)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  v1 = sub_248A933B0();

  return v1;
}

uint64_t sub_248A812A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A80B80(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_248A812D0(uint64_t a1)
{
  sub_248A933D0();
  swift_allocObject();
  sub_248A933C0();
  sub_248A813D0();
  v1 = sub_248A933B0();

  return v1;
}

unint64_t sub_248A8137C()
{
  result = qword_27EEC3C98;
  if (!qword_27EEC3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3C98);
  }

  return result;
}

unint64_t sub_248A813D0()
{
  result = qword_27EEC3CA0;
  if (!qword_27EEC3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3CA0);
  }

  return result;
}

unint64_t sub_248A81424()
{
  result = qword_27EEC3CA8;
  if (!qword_27EEC3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3CA8);
  }

  return result;
}

unint64_t sub_248A81478()
{
  result = qword_27EEC3CB0;
  if (!qword_27EEC3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3CB0);
  }

  return result;
}

uint64_t dispatch thunk of TransportService.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A7FBF4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TransportService.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248A8086C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TransportService.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_248A8086C;

  return v15(a1, a2, a3, a4, a5, a6);
}

{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_248A8086C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportService.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_248A8086C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportService.send<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 64) + **(a9 + 64));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_248A7FBF4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v19 = (*(a9 + 72) + **(a9 + 72));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_248A8086C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of PeerTransportService.activate(transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248A8086C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of XPCTransportService.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A8086C;

  return v7(a1, a2);
}

DeviceSharingServicesCore::DeviceSharingDefaultsKey_optional __swiftcall DeviceSharingDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A936F0();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DeviceSharingDefaultsKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0xD00000000000001ALL;
    if (v1 != 2)
    {
      v7 = 0xD000000000000011;
    }

    v8 = 0xD000000000000021;
    if (!*v0)
    {
      v8 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    v3 = 0xD000000000000023;
    if (v1 != 9)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 == 5)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = v4;
    }

    if (*v0 <= 7u)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_248A821A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "CloudStoredBoolean";
  v4 = a1;
  if (a1 <= 4u)
  {
    v10 = 0xD00000000000001CLL;
    v11 = "HandoverPromotion";
    v12 = 0xD00000000000001ALL;
    v13 = "RecentlySharedApplications";
    if (a1 != 3)
    {
      v13 = "dataExistsInCloud";
    }

    if (a1 != 2)
    {
      v12 = 0xD000000000000011;
      v11 = v13;
    }

    v14 = "LogPeerConnectionPayloadSize";
    if (a1)
    {
      v10 = 0xD000000000000021;
    }

    else
    {
      v14 = "CloudStoredBoolean";
    }

    if (a1 <= 1u)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v5 = "archiveCompressionAlgorithm";
      v6 = "archiveCompressionThreadCount";
      v16 = 0xD000000000000023;
      if (a1 != 9)
      {
        v16 = 0xD00000000000001DLL;
        v6 = "onDeleteFilesOption";
      }

      v8 = a1 == 8;
      if (a1 == 8)
      {
        v9 = 0xD00000000000001DLL;
      }

      else
      {
        v9 = v16;
      }
    }

    else
    {
      v5 = "dataExistsLocally";
      v6 = "associatedAVPState";
      v7 = 0xD00000000000001BLL;
      if (a1 == 6)
      {
        v7 = 0xD000000000000011;
      }

      else
      {
        v6 = "uniqueDeleteEvent";
      }

      v8 = a1 == 5;
      if (a1 == 5)
      {
        v9 = 0xD000000000000012;
      }

      else
      {
        v9 = v7;
      }
    }

    if (v8)
    {
      v15 = v5;
    }

    else
    {
      v15 = v6;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "LogPeerConnectionPayloadSize";
        v2 = 0xD000000000000021;
      }

      else
      {
        v2 = 0xD00000000000001CLL;
      }
    }

    else if (a2 == 2)
    {
      v3 = "HandoverPromotion";
      v2 = 0xD00000000000001ALL;
    }

    else if (a2 == 3)
    {
      v3 = "RecentlySharedApplications";
    }

    else
    {
      v3 = "dataExistsInCloud";
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v17 = "archiveCompressionThreadCount";
      }

      else
      {
        if (a2 == 9)
        {
          v3 = "archiveCompressionThreadCount";
          v2 = 0xD000000000000023;
          goto LABEL_52;
        }

        v17 = "hasSeenGuestUserPrivacySplash";
      }

      v3 = (v17 - 32);
      v2 = 0xD00000000000001DLL;
      goto LABEL_52;
    }

    if (a2 == 5)
    {
      v3 = "dataExistsLocally";
      v2 = 0xD000000000000012;
    }

    else if (a2 == 6)
    {
      v3 = "associatedAVPState";
    }

    else
    {
      v3 = "uniqueDeleteEvent";
      v2 = 0xD00000000000001BLL;
    }
  }

LABEL_52:
  if (v9 == v2 && (v15 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_248A93730();
  }

  return v18 & 1;
}

uint64_t sub_248A8242C()
{
  v1 = *v0;
  sub_248A937C0();
  sub_248A8247C(v3, v1);
  return sub_248A937F0();
}

uint64_t sub_248A8247C(uint64_t a1, unsigned __int8 a2)
{
  sub_248A934D0();
}

uint64_t sub_248A825D0(uint64_t a1)
{
  v2 = *v1;
  sub_248A937C0();
  sub_248A8247C(v4, v2);
  return sub_248A937F0();
}

unint64_t sub_248A82620@<X0>(unint64_t *a1@<X8>)
{
  result = DeviceSharingDefaultsKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Bool __swiftcall DeviceSharingDefaults.logPeerConnectionPayloadSize()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD00000000000001CLL, 0x8000000248A94A90, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Bool __swiftcall DeviceSharingDefaults.guestUserHasSeenHandoverPromotion()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD000000000000021, 0x8000000248A94AB0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Void __swiftcall DeviceSharingDefaults.setGuestUserHasSeenHandoverPromotion(_:)(Swift::Bool a1)
{
  v3 = v1 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v1 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v7 = MEMORY[0x277D839B0];
  v6[0] = a1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 8, v4);
  (*(v5 + 16))(v6, 0xD000000000000021, 0x8000000248A94AB0, v4, v5);
  sub_248A86724(v6, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v3);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

Swift::Bool __swiftcall DeviceSharingDefaults.hasSeenGuestUserPrivacySplash()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD00000000000001DLL, 0x8000000248A94BF0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Void __swiftcall DeviceSharingDefaults.setHasSeenGuestUserPrivacySplash(_:)(Swift::Bool a1)
{
  v3 = v1 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v1 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v7 = MEMORY[0x277D839B0];
  v6[0] = a1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 8, v4);
  (*(v5 + 16))(v6, 0xD00000000000001DLL, 0x8000000248A94BF0, v4, v5);
  sub_248A86724(v6, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v3);
}

uint64_t DeviceSharingDefaults.recentlySharedApplications()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v7, 0xD00000000000001ALL, 0x8000000248A94AE0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC8, &qword_248A94068);
  if ((swift_dynamicCast() & 1) == 0)
  {
    os_unfair_lock_unlock(v1);
LABEL_5:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v4 = v7[4];
  os_unfair_lock_unlock(v1);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  v5 = sub_248A86684(v4);

  return v5;
}

uint64_t DeviceSharingDefaults.setRecentlySharedApplications(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = sub_248A849F4(*(a1 + 16), 0);
  v5 = sub_248A8643C(v12, v4 + 4, v2, a1);
  v6 = v12[0];

  sub_248A8671C(v6);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v7 = v1 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v1 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC8, &qword_248A94068);
  v12[0] = v4;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v7 + 8, v8);
  v10 = *(v9 + 16);

  v10(v12, 0xD00000000000001ALL, 0x8000000248A94AE0, v8, v9);
  sub_248A86724(v12, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v7);
}

Swift::Bool __swiftcall DeviceSharingDefaults.dataExistsInCloud()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD000000000000011, 0x8000000248A94B00, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Bool __swiftcall DeviceSharingDefaults.dataExistsLocally()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD000000000000011, 0x8000000248A94B20, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Void __swiftcall DeviceSharingDefaults.setDataExistsInCloud(state:)(Swift::Bool state)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DeviceSharingDefaults_storage];
  os_unfair_lock_lock(&v2[OBJC_IVAR___DeviceSharingDefaults_storage]);
  v17[3] = MEMORY[0x277D839B0];
  LOBYTE(v17[0]) = state;
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  __swift_mutable_project_boxed_opaque_existential_1((v4 + 8), v5);
  (*(v6 + 16))(v17, 0xD000000000000011, 0x8000000248A94B00, v5, v6);
  sub_248A86724(v17, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v4);
  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v7 = sub_248A93440();
  __swift_project_value_buffer(v7, qword_281511578);
  v8 = v2;
  v9 = sub_248A93420();
  v10 = sub_248A935F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    os_unfair_lock_lock(v4);
    v13 = *(v4 + 4);
    v14 = *(v4 + 5);
    __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v13);
    (*(v14 + 8))(v17, 0xD000000000000011, 0x8000000248A94B00, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
    sub_248A86850(0, &qword_281511428, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    os_unfair_lock_unlock(v4);
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&dword_248A7B000, v9, v10, "Cloud data exists: %{public}@", v11, 0xCu);
    sub_248A86724(v12, &qword_27EEC3CD0, &qword_248A94070);
    MEMORY[0x24C1E2FB0](v12, -1, -1);
    MEMORY[0x24C1E2FB0](v11, -1, -1);
  }
}

Swift::Void __swiftcall DeviceSharingDefaults.setDataExistsLocally(state:)(Swift::Bool state)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DeviceSharingDefaults_storage];
  os_unfair_lock_lock(&v2[OBJC_IVAR___DeviceSharingDefaults_storage]);
  v17[3] = MEMORY[0x277D839B0];
  LOBYTE(v17[0]) = state;
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  __swift_mutable_project_boxed_opaque_existential_1((v4 + 8), v5);
  (*(v6 + 16))(v17, 0xD000000000000011, 0x8000000248A94B20, v5, v6);
  sub_248A86724(v17, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v4);
  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v7 = sub_248A93440();
  __swift_project_value_buffer(v7, qword_281511578);
  v8 = v2;
  v9 = sub_248A93420();
  v10 = sub_248A935F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    os_unfair_lock_lock(v4);
    v13 = *(v4 + 4);
    v14 = *(v4 + 5);
    __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v13);
    (*(v14 + 8))(v17, 0xD000000000000011, 0x8000000248A94B20, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
    sub_248A86850(0, &qword_281511428, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    os_unfair_lock_unlock(v4);
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&dword_248A7B000, v9, v10, "Local data exists: %{public}@", v11, 0xCu);
    sub_248A86724(v12, &qword_27EEC3CD0, &qword_248A94070);
    MEMORY[0x24C1E2FB0](v12, -1, -1);
    MEMORY[0x24C1E2FB0](v11, -1, -1);
  }
}

Swift::Void __swiftcall DeviceSharingDefaults.setAssociatedAVP(state:)(Swift::Bool state)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DeviceSharingDefaults_storage];
  os_unfair_lock_lock(&v2[OBJC_IVAR___DeviceSharingDefaults_storage]);
  v17[3] = MEMORY[0x277D839B0];
  LOBYTE(v17[0]) = state;
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  __swift_mutable_project_boxed_opaque_existential_1((v4 + 8), v5);
  (*(v6 + 16))(v17, 0xD000000000000012, 0x8000000248A94B40, v5, v6);
  sub_248A86724(v17, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v4);
  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v7 = sub_248A93440();
  __swift_project_value_buffer(v7, qword_281511578);
  v8 = v2;
  v9 = sub_248A93420();
  v10 = sub_248A935F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    os_unfair_lock_lock(v4);
    v13 = *(v4 + 4);
    v14 = *(v4 + 5);
    __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v13);
    (*(v14 + 8))(v17, 0xD000000000000012, 0x8000000248A94B40, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
    sub_248A86850(0, &qword_281511428, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    os_unfair_lock_unlock(v4);
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&dword_248A7B000, v9, v10, "Set user default associatedAVPState: %{public}@", v11, 0xCu);
    sub_248A86724(v12, &qword_27EEC3CD0, &qword_248A94070);
    MEMORY[0x24C1E2FB0](v12, -1, -1);
    MEMORY[0x24C1E2FB0](v11, -1, -1);
  }
}

Swift::Bool __swiftcall DeviceSharingDefaults.associatedAVPState()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD000000000000012, 0x8000000248A94B40, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  LOBYTE(v2) = v7;
  os_unfair_lock_unlock(v1);
  return v4 & v2;
}

Swift::Void __swiftcall DeviceSharingDefaults.setLatestDeleteFromCloudEventUUID(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v5 = sub_248A93440();
  __swift_project_value_buffer(v5, qword_281511578);

  v6 = sub_248A93420();
  v7 = sub_248A935F0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_248A7E980(countAndFlagsBits, object, v14);
    _os_log_impl(&dword_248A7B000, v6, v7, "Setting delete from cloud UUID user default to: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1E2FB0](v9, -1, -1);
    MEMORY[0x24C1E2FB0](v8, -1, -1);
  }

  v10 = v2 + OBJC_IVAR___DeviceSharingDefaults_storage;

  os_unfair_lock_lock(v10);
  v14[3] = MEMORY[0x277D837D0];
  v14[0] = countAndFlagsBits;
  v14[1] = object;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v10 + 8, v11);
  v13 = *(v12 + 16);

  v13(v14, 0xD000000000000011, 0x8000000248A94B60, v11, v12);
  sub_248A86724(v14, &qword_27EEC3CC0, &qword_248A94060);
  os_unfair_lock_unlock(v10);
}

Swift::String_optional __swiftcall DeviceSharingDefaults.getLatestDeleteFromCloudEvent()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v10, 0xD000000000000011, 0x8000000248A94B60, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v10[4];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v1);
  v7 = v6;
  v8 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

Swift::String __swiftcall DeviceSharingDefaults.getArchiveCompressionAlgorithm()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v10, 0xD00000000000001BLL, 0x8000000248A94B80, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v10[4];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v1);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6573667A6CLL;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::Int __swiftcall DeviceSharingDefaults.getArchiveCompressionThreadCount()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD00000000000001DLL, 0x8000000248A94BA0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  if (swift_dynamicCast())
  {
    v4 = v6[4];
  }

  else
  {
    v4 = 1;
  }

  os_unfair_lock_unlock(v1);
  return v4;
}

Swift::Bool __swiftcall DeviceSharingDefaults.getArchiveCompressionDeleteFilesOption()()
{
  v1 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  os_unfair_lock_lock((v0 + OBJC_IVAR___DeviceSharingDefaults_storage));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 8), v2);
  (*(v3 + 8))(v6, 0xD000000000000023, 0x8000000248A94BC0, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  if (swift_dynamicCast())
  {
    v4 = v7;
  }

  else
  {
    v4 = 2;
  }

  os_unfair_lock_unlock(v1);
  return (v4 == 2) | v4 & 1;
}

id DeviceSharingDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceSharingDefaults.init()()
{
  ObjectType = swift_getObjectType();
  if (qword_281511438 != -1)
  {
    swift_once();
  }

  v1 = qword_281511440;
  v2 = objc_allocWithZone(ObjectType);
  v11[3] = sub_248A86850(0, &qword_281511430, 0x277CBEBD0);
  v11[4] = &protocol witness table for NSUserDefaults;
  v11[0] = v1;
  *v10 = 0;
  memset(&v10[8], 0, 40);
  v3 = v1;
  sub_248A86898(v11, &v10[8]);
  v4 = &v2[OBJC_IVAR___DeviceSharingDefaults_storage];
  v5 = *&v10[32];
  v6 = *&v10[16];
  *v4 = *v10;
  *(v4 + 1) = v6;
  *(v4 + 2) = v5;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id DeviceSharingDefaults.__allocating_init(storage:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_248A868FC(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id DeviceSharingDefaults.init(storage:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_248A86594(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

double sub_248A83FE8@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  if (a2 <= 4u)
  {
    v17 = 0xD00000000000001CLL;
    v18 = "CloudStoredBoolean";
    v19 = "HandoverPromotion";
    v20 = 0xD00000000000001ALL;
    v21 = "RecentlySharedApplications";
    if (a2 != 3)
    {
      v21 = "dataExistsInCloud";
    }

    if (a2 != 2)
    {
      v20 = 0xD000000000000011;
      v19 = v21;
    }

    if (a2)
    {
      v17 = 0xD000000000000021;
      v18 = "LogPeerConnectionPayloadSize";
    }

    if (a2 <= 1u)
    {
      v15 = v17;
    }

    else
    {
      v15 = v20;
    }

    if (a2 <= 1u)
    {
      v16 = v18;
    }

    else
    {
      v16 = v19;
    }
  }

  else
  {
    v7 = "archiveCompressionAlgorithm";
    v8 = 0xD00000000000001DLL;
    v9 = "archiveCompressionThreadCount";
    v10 = 0xD000000000000023;
    if (a2 != 9)
    {
      v10 = 0xD00000000000001DLL;
      v9 = "onDeleteFilesOption";
    }

    if (a2 != 8)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = "dataExistsLocally";
    v12 = "associatedAVPState";
    v13 = 0xD00000000000001BLL;
    if (a2 == 6)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v12 = "uniqueDeleteEvent";
    }

    if (a2 == 5)
    {
      v14 = 0xD000000000000012;
    }

    else
    {
      v14 = v13;
    }

    if (a2 != 5)
    {
      v11 = v12;
    }

    if (a2 <= 7u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v8;
    }

    if (a2 <= 7u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v7;
    }
  }

  (*(v6 + 8))(v23, v15, v16 | 0x8000000000000000, v5, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Void __swiftcall DeviceSharingDefaults.log()()
{
  v1 = 0;
  v15 = 0xD000000000000028;
  v16 = 0x8000000248A94D10;
  v2 = v0 + OBJC_IVAR___DeviceSharingDefaults_storage;
  do
  {
    v3 = byte_285B6A810[v1 + 32];
    os_unfair_lock_lock(v2);
    sub_248A83FE8((v2 + 8), v3, &v12);
    os_unfair_lock_unlock(v2);
    if (v13)
    {
      sub_248A869E0(&v12, v14);
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      MEMORY[0x24C1E27C0](23306, 0xE200000000000000);
      sub_248A936B0();
      MEMORY[0x24C1E27C0](2112093, 0xE300000000000000);
      sub_248A936B0();
      MEMORY[0x24C1E27C0](v12, *(&v12 + 1));

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_248A86724(&v12, &qword_27EEC3CC0, &qword_248A94060);
    }

    ++v1;
  }

  while (v1 != 11);
  if (qword_281511458 != -1)
  {
    swift_once();
  }

  v4 = sub_248A93440();
  __swift_project_value_buffer(v4, qword_281511590);
  v6 = v15;
  v5 = v16;

  v7 = sub_248A93420();
  v8 = sub_248A935F0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v14[0] = v10;
    *v9 = 136446210;
    v11 = sub_248A7E980(v6, v5, v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_248A7B000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C1E2FB0](v10, -1, -1);
    MEMORY[0x24C1E2FB0](v9, -1, -1);
  }

  else
  {
  }
}

id DeviceSharingDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_248A84524@<D0>(_OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = sub_248A93480();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_248A93640();

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

void sub_248A845DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248A869F0(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_248A93720();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_248A93480();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

double Dictionary<>.object(forKey:)@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_248A85384(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_248A7EFEC(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Dictionary<>.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248A869F0(a1, v6);

  return sub_248A848C8(v6, a2, a3);
}

uint64_t sub_248A847F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_248A85E18(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_248A8533C(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_248A86134();
        v13 = v15;
      }

      result = sub_248A85AF4(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_248A848C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_248A869E0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_248A85F78(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_248A86724(a1, &qword_27EEC3CC0, &qword_248A94060);
    sub_248A85520(a2, a3, v9);

    return sub_248A86724(v9, &qword_27EEC3CC0, &qword_248A94060);
  }

  return result;
}

uint64_t sub_248A849A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248A869F0(a1, v6);

  return sub_248A848C8(v6, a2, a3);
}

void *sub_248A849F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D00, &qword_248A94258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_248A84A78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_248A937C0();
  sub_248A934D0();
  v8 = sub_248A937F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_248A93730() & 1) != 0)
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

    sub_248A84E28(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_248A84BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D08, &qword_248A94260);
  result = sub_248A93670();
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
      sub_248A937C0();
      sub_248A934D0();
      result = sub_248A937F0();
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

uint64_t sub_248A84E28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_248A84BC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_248A84FA8();
      goto LABEL_16;
    }

    sub_248A85104(v8 + 1);
  }

  v10 = *v4;
  sub_248A937C0();
  sub_248A934D0();
  result = sub_248A937F0();
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

      result = sub_248A93730();
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
  result = sub_248A93740();
  __break(1u);
  return result;
}

void *sub_248A84FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D08, &qword_248A94260);
  v2 = *v0;
  v3 = sub_248A93660();
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

uint64_t sub_248A85104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D08, &qword_248A94260);
  result = sub_248A93670();
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
      sub_248A937C0();

      sub_248A934D0();
      result = sub_248A937F0();
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

unint64_t sub_248A8533C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x24C1E2A80](*(v1 + 40), a1, 4);

  return sub_248A853FC(v2, v3);
}

unint64_t sub_248A85384(uint64_t a1, uint64_t a2)
{
  sub_248A937C0();
  sub_248A934D0();
  v4 = sub_248A937F0();

  return sub_248A85468(a1, a2, v4);
}

unint64_t sub_248A853FC(int a1, uint64_t a2)
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

unint64_t sub_248A85468(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_248A93730())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_248A85520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_248A85384(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_248A86298();
      v10 = v12;
    }

    sub_248A869E0((*(v10 + 56) + 32 * v8), a3);
    sub_248A85C68(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_248A855C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D10, &qword_248A94268);
  result = sub_248A936D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x24C1E2A80](*(v7 + 40), v20, 4);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_248A8583C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CF8, &qword_248A94250);
  v33 = v4;
  result = sub_248A936D0();
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
        sub_248A869E0(v24, v34);
      }

      else
      {
        sub_248A7EFEC(v24, v34);
      }

      sub_248A937C0();
      sub_248A934D0();
      result = sub_248A937F0();
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
      result = sub_248A869E0(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_248A85AF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248A93650() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x24C1E2A80](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_248A85C68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248A93650() + 1) & ~v5;
    do
    {
      sub_248A937C0();

      sub_248A934D0();
      v10 = sub_248A937F0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_248A85E18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_248A8533C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_248A855C4(v16, a4 & 1);
      result = sub_248A8533C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_248A93750();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_248A86134();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

_OWORD *sub_248A85F78(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_248A85384(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_248A86298();
      v11 = v19;
      goto LABEL_8;
    }

    sub_248A8583C(v16, a4 & 1);
    v11 = sub_248A85384(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_248A93750();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_248A869E0(a1, v22);
  }

  else
  {
    sub_248A860C8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_248A860C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_248A869E0(a4, (a5[7] + 32 * a1));
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

void *sub_248A86134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D10, &qword_248A94268);
  v2 = *v0;
  v3 = sub_248A936C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_248A86298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CF8, &qword_248A94250);
  v2 = *v0;
  v3 = sub_248A936C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_248A7EFEC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_248A869E0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_248A8643C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_248A86594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *v15 = 0;
  memset(&v15[8], 0, 40);
  sub_248A86898(v16, &v15[8]);
  v10 = &a2[OBJC_IVAR___DeviceSharingDefaults_storage];
  v11 = *&v15[16];
  *v10 = *v15;
  *(v10 + 1) = v11;
  *(v10 + 2) = *&v15[32];
  v14.receiver = a2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v12;
}

uint64_t sub_248A86684(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1E28A0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_248A84A78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_248A86724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_248A86784(void *a1)
{
  v2 = type metadata accessor for DeviceSharingDefaults();
  v3 = objc_allocWithZone(v2);
  v12[3] = sub_248A86850(0, &qword_281511430, 0x277CBEBD0);
  v12[4] = &protocol witness table for NSUserDefaults;
  v12[0] = a1;
  *v11 = 0;
  memset(&v11[8], 0, 40);
  v4 = a1;
  sub_248A86898(v12, &v11[8]);
  v5 = &v3[OBJC_IVAR___DeviceSharingDefaults_storage];
  v6 = *&v11[32];
  v7 = *&v11[16];
  *v5 = *v11;
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v8;
}

uint64_t sub_248A86850(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_248A86898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_248A868FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return sub_248A86594(v9, v11, a3, a4);
}

_OWORD *sub_248A869E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_248A869F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3CC0, &qword_248A94060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_248A86A64()
{
  result = qword_27EEC3CD8;
  if (!qword_27EEC3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3CD8);
  }

  return result;
}

unint64_t sub_248A86ABC()
{
  result = qword_27EEC3CE0;
  if (!qword_27EEC3CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC3CE8, &qword_248A94118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3CE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSharingDefaultsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceSharingDefaultsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t TransportError.hashValue.getter()
{
  v1 = *v0;
  sub_248A937C0();
  MEMORY[0x24C1E2AA0](v1);
  return sub_248A937F0();
}

uint64_t sub_248A86DE4()
{
  v1 = *v0;
  sub_248A937C0();
  MEMORY[0x24C1E2AA0](v1);
  return sub_248A937F0();
}

uint64_t sub_248A86E58(uint64_t a1)
{
  v2 = *v1;
  sub_248A937C0();
  MEMORY[0x24C1E2AA0](v2);
  return sub_248A937F0();
}

unint64_t sub_248A86EA0()
{
  result = qword_27EEC3D18;
  if (!qword_27EEC3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransportError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_248A8708C(unsigned __int8 a1)
{
  sub_248A937C0();
  MEMORY[0x24C1E2AA0](a1);
  return sub_248A937F0();
}

uint64_t sub_248A87100(uint64_t a1)
{
  sub_248A937C0();
  sub_248A87064(v3, *v1);
  return sub_248A937F0();
}

uint64_t XPCService.transportDispatchService.getter()
{
  sub_248A8C1E8();
}

uint64_t *static XPCService.makeDaemonService(machServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCService(0, *(v4 + 80), *(v4 + 88), a4);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v6 = sub_248A93480();
  v7 = [v5 initWithMachServiceName:v6 options:0];

  v10 = sub_248A8C490(v7, 0, v8, v9);
  return v10;
}

uint64_t *XPCService.__allocating_init(connection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248A8C4E4(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_248A87254(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall XPCService.invalidate()()
{
  if (*(v0 + 40) != 2)
  {
    *(v0 + 40) = 2;
    *(v0 + 32) = 0;
    swift_unknownObjectRelease();
    v1 = *(v0 + 24);
    [v1 setInterruptionHandler_];
    [v1 setInvalidationHandler_];

    [v1 invalidate];
  }
}

uint64_t XPCService.deinit()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];

  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCService.__deallocating_deinit()
{
  XPCService.deinit();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_248A873C4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (*(v2 + 40) == 1)
  {
    v3 = *(v2 + 32);
    if (!v3)
    {
      v5 = *(v2 + 24);
      v26[4] = sub_248A8D040;
      v26[5] = v2;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 1107296256;
      v26[2] = sub_248A8795C;
      v26[3] = &block_descriptor_98;
      v6 = _Block_copy(v26);

      v7 = [v5 remoteObjectProxyWithErrorHandler_];
      _Block_release(v6);
      sub_248A93640();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E30, &qword_248A94638);
      v8 = swift_dynamicCast();
      v9 = v27;
      if (!v8)
      {
        v9 = 0;
      }

      *(v2 + 32) = v9;
      swift_unknownObjectRelease();
      v3 = *(v2 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRetain();
  }

  else
  {
    v10 = *v2;
    if (qword_27EEC3C70 != -1)
    {
      swift_once();
    }

    v11 = sub_248A93440();
    __swift_project_value_buffer(v11, qword_27EEC4B20);

    v12 = sub_248A93420();
    v13 = sub_248A935E0();

    if (os_log_type_enabled(v12, v13))
    {
      v3 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v3 = 136446466;
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = sub_248A93830();
      v19 = sub_248A7E980(v17, v18, v26);

      *(v3 + 4) = v19;
      *(v3 + 12) = 2082;
      LOBYTE(v27) = *(v4 + 40);
      type metadata accessor for XPCService.State(0, v15, v16, v20);
      v21 = sub_248A934A0();
      v23 = sub_248A7E980(v21, v22, v26);

      *(v3 + 14) = v23;
      _os_log_impl(&dword_248A7B000, v12, v13, "[%{public}s] XPC state is %{public}s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E2FB0](v14, -1, -1);
      MEMORY[0x24C1E2FB0](v3, -1, -1);
    }

    sub_248A8C530();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  return v3;
}

void sub_248A87720(void *a1, uint64_t a2)
{
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v4 = sub_248A93440();
  __swift_project_value_buffer(v4, qword_27EEC4B20);

  v5 = a1;
  oslog = sub_248A93420();
  v6 = sub_248A935E0();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    v9 = [*(a2 + 24) serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_248A93490();
      v13 = v12;
    }

    else
    {
      v13 = 0xE900000000000029;
      v11 = 0x6E776F6E6B6E7528;
    }

    v14 = sub_248A7E980(v11, v13, &v19);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v15 = sub_248A93760();
    v17 = sub_248A7E980(v15, v16, &v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_248A7B000, oslog, v6, "Error on remote object proxy from %{public}s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v8, -1, -1);
    MEMORY[0x24C1E2FB0](v7, -1, -1);
  }

  else
  {
  }
}

void sub_248A8795C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_248A879C4(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_248A879E8, 0, 0);
}

uint64_t sub_248A879E8()
{
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v1 = sub_248A93440();
  __swift_project_value_buffer(v1, qword_27EEC4B20);
  sub_248A92A80(0xD000000000000074, 0x8000000248A94D60, 0x726F70736E617274, 0xED0000293A5F2874);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_248A87B10;
  v3 = *(v0 + 32);

  return sub_248A8FFF0(v3, 0, 0xF000000000000000);
}

uint64_t sub_248A87B10(uint64_t a1, uint64_t a2)
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

uint64_t sub_248A87C20(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  v13 = sub_248A93580();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248A94618;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248A94620;
  v15[5] = v14;

  sub_248A8BD3C(0, 0, v10, &unk_248A94628, v15);
}

uint64_t sub_248A87DA8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_248A87E64;

  return sub_248A879C4(a1);
}

uint64_t sub_248A87E64(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_248A933E0();

    v10 = v9;
    v11 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  else
  {
    v12 = sub_248A93400();
    sub_248A80F20(a1, a2);
    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_248A88018(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_248A88040, 0, 0);
}

uint64_t sub_248A88040()
{
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v1 = sub_248A93440();
  __swift_project_value_buffer(v1, qword_27EEC4B20);
  sub_248A92A80(0xD000000000000074, 0x8000000248A94D60, 0xD000000000000012, 0x8000000248A94DE0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_248A88160;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);

  return sub_248A8FFF0(v5, v3, v4);
}

uint64_t sub_248A88160(uint64_t a1, uint64_t a2)
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

uint64_t sub_248A88270(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_248A93580();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_248A945D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_248A945E0;
  v17[5] = v16;
  v18 = a4;

  sub_248A8BD3C(0, 0, v12, &unk_248A945F0, v17);
}

uint64_t sub_248A88404(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_248A93410();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_248A88504;

  return sub_248A88018(a1, a2, v9);
}

uint64_t sub_248A88504(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *v3;

  sub_248A80F20(v9, v8);
  if (v4)
  {
    v11 = sub_248A933E0();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v14 = sub_248A93400();
    sub_248A80F20(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_248A886F4()
{
  XPCService.activate()();
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall XPCService.activate()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v3 = sub_248A93440();
  __swift_project_value_buffer(v3, qword_27EEC4B20);
  sub_248A92A80(0xD000000000000074, 0x8000000248A94D60, 0x6574617669746361, 0xEA00000000002928);
  if (!*(v0 + 40))
  {
    v4 = v0[3];
    [v1[3] setExportedObject_];
    v13 = sub_248A8D0D4;
    v14 = 0;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_248A87254;
    v12 = &block_descriptor;
    v5 = _Block_copy(&v9);
    [v4 setInterruptionHandler_];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = *(v2 + 80);
    v7[3] = *(v2 + 88);
    v7[4] = v6;
    v13 = sub_248A8D0F0;
    v14 = v7;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_248A87254;
    v12 = &block_descriptor_10;
    v8 = _Block_copy(&v9);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    [v4 activate];
    *(v1 + 40) = 1;
  }
}

uint64_t sub_248A889B4()
{
  sub_248A8C1E8();
}

uint64_t sub_248A889E8()
{
  XPCService.invalidate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A88A48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248A8086C;

  return XPCService.send(_:)(a1);
}

uint64_t XPCService.send(_:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  return MEMORY[0x2822009F8](sub_248A88B28, 0, 0);
}

uint64_t sub_248A88B28(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 184) = v3;
  if (v3)
  {
    v5 = v3;
    swift_unknownObjectRetain();
    sub_248A93690();
    v6 = *(v2 + 200);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A88CE4;
    v7 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_14;
    *(v2 + 112) = v7;
    [v5 transport:v6 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_248A88CE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_248A88E6C;
  }

  else
  {
    v2 = sub_248A88DF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A88DF4()
{
  swift_unknownObjectRelease();
  sub_248A80F20(v0[18], v0[19]);
  swift_unknownObjectRelease();
  v1 = v0[1];

  return v1();
}

uint64_t sub_248A88E6C(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_248A88EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248A8086C;

  return XPCService.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t XPCService.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_248A93620();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A8909C, 0, 0);
}

{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  return MEMORY[0x2822009F8](sub_248A89880, 0, 0);
}

uint64_t sub_248A8909C(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 232) = v3;
  *(v2 + 240) = 0;
  if (v3)
  {
    v6 = v3;
    swift_unknownObjectRetain();
    sub_248A93690();
    v7 = *(v2 + 256);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A893CC;
    v8 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_18;
    *(v2 + 112) = v8;
    [v6 transport:v7 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    v10 = *(v2 + 176);
    v9 = *(v2 + 184);
    v11 = *(v9 + 16);
    sub_248A8C51C(0, 0xF000000000000000);
    v11(0, 0xF000000000000000, v10, v9);
    v12 = *(v2 + 224);
    v13 = *(v2 + 176);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      (*(*(v2 + 216) + 8))(v12, *(v2 + 208));
      sub_248A8C530();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      sub_248A80F20(0, 0xF000000000000000);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = *(v2 + 160);
      swift_unknownObjectRelease();
      sub_248A80F20(0, 0xF000000000000000);
      (*(v14 + 32))(v16, v12, v13);
    }

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_248A893CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_248A896E8;
  }

  else
  {
    v2 = sub_248A894DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A894DC()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[30];
  v5 = v0[22];
  v4 = v0[23];
  v6 = *(v4 + 16);
  sub_248A8C51C(v2, v1);
  v6(v2, v1, v5, v4);
  if (v3)
  {
    swift_unknownObjectRelease();
    sub_248A80F20(v2, v1);
LABEL_5:

    v11 = v0[1];
    goto LABEL_6;
  }

  v7 = v0[28];
  v8 = v0[22];
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v0[27] + 8))(v7, v0[26]);
    sub_248A8C530();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    sub_248A80F20(v2, v1);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v13 = v0[20];
  swift_unknownObjectRelease();
  sub_248A80F20(v2, v1);
  (*(v9 + 32))(v13, v7, v8);

  v11 = v0[1];
LABEL_6:

  return v11();
}

uint64_t sub_248A896E8(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_248A8976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248A8086C;

  return XPCService.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_248A89880(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 208) = v3;
  *(v2 + 216) = 0;
  if (v3)
  {
    v5 = v3;
    swift_unknownObjectRetain();
    sub_248A93690();
    v6 = *(v2 + 232);
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A89A6C;
    v7 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_22;
    *(v2 + 112) = v7;
    [v5 transport:v6 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    (*(*(v2 + 184) + 16))(0, 0xF000000000000000);
    swift_unknownObjectRelease();
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_248A89A6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_248A89C2C;
  }

  else
  {
    v2 = sub_248A89B7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A89B7C()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_unknownObjectRelease();
  (*(v0[23] + 16))(v2, v1);
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_248A89C2C(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_248A89CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248A8086C;

  return XPCService.send<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t XPCService.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_248A93620();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A89E5C, 0, 0);
}

uint64_t sub_248A89E5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 232) = v3;
  v5 = v3;
  v6 = (v2 + 208);
  v7 = *(v2 + 224);
  v8 = *(v2 + 176);
  (*(*(v2 + 216) + 16))(v7, *(v2 + 168), *(v2 + 208));
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = 0;
    v9 = *(v2 + 216);
    v11 = 0xF000000000000000;
  }

  else
  {
    v10 = (*(*(v2 + 184) + 8))(*(v2 + 176));
    v11 = v12;
    v6 = (v2 + 176);
  }

  v13 = *v6;
  *(v2 + 240) = v10;
  *(v2 + 248) = v11;
  (*(v9 + 8))(*(v2 + 224), v13);
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_248A93690();
    v14 = *(v2 + 272);
    if (v11 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      sub_248A80ECC(v10, v11);
      v15 = sub_248A93400();
      sub_248A80F20(v10, v11);
    }

    *(v2 + 256) = v15;
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A8A188;
    v17 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_26;
    *(v2 + 112) = v17;
    [v5 transport:v14 data:v15 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    sub_248A80F20(v10, v11);

    v16 = *(v2 + 8);

    return v16();
  }
}

uint64_t sub_248A8A188()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_248A8A334;
  }

  else
  {
    v2 = sub_248A8A298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8A298()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_unknownObjectRelease();
  sub_248A80F20(v3, v1);
  sub_248A80F20(v0[18], v0[19]);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_248A8A334(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[30];
  v4 = v1[31];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_248A80F20(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_248A8A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_248A7FBF4;

  return XPCService.send<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t XPCService.send<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[26] = a7;
  v8[27] = v7;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v8[28] = *v7;
  v9 = sub_248A93620();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v10 = sub_248A93620();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A8A61C, 0, 0);
}

{
  v8[26] = a7;
  v8[27] = v7;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v8[28] = *v7;
  v9 = sub_248A93620();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A8B0F4, 0, 0);
}

uint64_t sub_248A8A61C(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 280) = v3;
  v6 = v3;
  v8 = (v2 + 184);
  v7 = *(v2 + 184);
  v9 = *(v2 + 272);
  (*(*(v2 + 264) + 16))(v9, *(v2 + 176), *(v2 + 256));
  v10 = *(v7 - 8);
  if ((*(v10 + 48))(v9, 1, v7) == 1)
  {
    v11 = 0;
    v8 = (v2 + 256);
    v10 = *(v2 + 264);
    v12 = 0xF000000000000000;
  }

  else
  {
    v11 = (*(*(v2 + 200) + 8))(*(v2 + 184));
    v12 = v13;
  }

  v14 = *v8;
  *(v2 + 296) = v11;
  *(v2 + 304) = v12;
  *(v2 + 288) = 0;
  (*(v10 + 8))(*(v2 + 272), v14);
  if (v6)
  {
    swift_unknownObjectRetain();
    sub_248A93690();
    v15 = *(v2 + 328);
    if (v12 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      sub_248A80ECC(v11, v12);
      v16 = sub_248A93400();
      sub_248A80F20(v11, v12);
    }

    *(v2 + 312) = v16;
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A8AAF4;
    v23 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_30;
    *(v2 + 112) = v23;
    [v6 transport:v15 data:v16 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  v17 = *(v2 + 288);
  v18 = *(v2 + 208);
  v19 = *(v2 + 192);
  v20 = *(v18 + 16);
  sub_248A8C51C(0, 0xF000000000000000);
  v20(0, 0xF000000000000000, v19, v18);
  if (v17)
  {
    v21 = *(v2 + 296);
    v22 = *(v2 + 304);
    swift_unknownObjectRelease();
    sub_248A80F20(v21, v22);
    sub_248A80F20(0, 0xF000000000000000);
  }

  else
  {
    v24 = *(v2 + 248);
    v25 = *(v2 + 192);
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v24, 1, v25);
    v29 = *(v2 + 296);
    v28 = *(v2 + 304);
    if (v27 != 1)
    {
      v31 = *(v2 + 160);
      swift_unknownObjectRelease();
      sub_248A80F20(v29, v28);
      sub_248A80F20(0, 0xF000000000000000);
      (*(v26 + 32))(v31, v24, v25);

      v4 = *(v2 + 8);
      goto LABEL_3;
    }

    (*(*(v2 + 240) + 8))(v24, *(v2 + 232));
    sub_248A8C530();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    sub_248A80F20(0, 0xF000000000000000);
    sub_248A80F20(v29, v28);
    swift_unknownObjectRelease();
  }

  v4 = *(v2 + 8);
LABEL_3:

  return v4();
}

uint64_t sub_248A8AAF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_248A8AE64;
  }

  else
  {
    v2 = sub_248A8AC04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8AC04()
{
  v1 = v0[39];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v4 = v0[36];
  v5 = v0[26];
  v6 = v0[24];
  v7 = *(v5 + 16);
  sub_248A8C51C(v3, v2);
  v7(v3, v2, v6, v5);
  if (v4)
  {
    v9 = v0[37];
    v8 = v0[38];
    swift_unknownObjectRelease();
    sub_248A80F20(v9, v8);
    sub_248A80F20(v3, v2);
LABEL_5:

    v17 = v0[1];
    goto LABEL_6;
  }

  v10 = v0[31];
  v11 = v0[24];
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v15 = v0[37];
  v14 = v0[38];
  if (v13 == 1)
  {
    (*(v0[30] + 8))(v10, v0[29]);
    sub_248A8C530();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    sub_248A80F20(v3, v2);
    sub_248A80F20(v15, v14);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v19 = v0[20];
  swift_unknownObjectRelease();
  sub_248A80F20(v15, v14);
  sub_248A80F20(v3, v2);
  (*(v12 + 32))(v19, v10, v11);

  v17 = v0[1];
LABEL_6:

  return v17();
}

uint64_t sub_248A8AE64(uint64_t a1)
{
  v2 = v1[39];
  v3 = v1[37];
  v4 = v1[38];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_248A80F20(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

uint64_t sub_248A8AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_248A8086C;

  return XPCService.send<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_248A8B0F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_248A873C4(a1, a2);
  *(v2 + 256) = v3;
  v6 = v3;
  v7 = (v2 + 232);
  v8 = *(v2 + 248);
  v9 = *(v2 + 184);
  (*(*(v2 + 240) + 16))(v8, *(v2 + 176), *(v2 + 232));
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v11 = 0;
    v10 = *(v2 + 240);
    v12 = 0xF000000000000000;
  }

  else
  {
    v11 = (*(*(v2 + 200) + 8))(*(v2 + 184));
    v12 = v13;
    v7 = (v2 + 184);
  }

  v14 = *v7;
  *(v2 + 272) = v11;
  *(v2 + 280) = v12;
  *(v2 + 264) = 0;
  (*(v10 + 8))(*(v2 + 248), v14);
  if (v6)
  {
    swift_unknownObjectRetain();
    sub_248A93690();
    v15 = *(v2 + 304);
    if (v12 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      sub_248A80ECC(v11, v12);
      v16 = sub_248A93400();
      sub_248A80F20(v11, v12);
    }

    *(v2 + 288) = v16;
    *(v2 + 16) = v2;
    *(v2 + 56) = v2 + 144;
    *(v2 + 24) = sub_248A8B478;
    v17 = swift_continuation_init();
    *(v2 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3D20, &qword_248A94378);
    *(v2 + 80) = MEMORY[0x277D85DD0];
    *(v2 + 88) = 1107296256;
    *(v2 + 96) = sub_248A8D0EC;
    *(v2 + 104) = &block_descriptor_34;
    *(v2 + 112) = v17;
    [v6 transport:v15 data:v16 completionHandler:v2 + 80];

    return MEMORY[0x282200938](v2 + 16);
  }

  else
  {
    (*(*(v2 + 208) + 16))(0, 0xF000000000000000);
    sub_248A80F20(*(v2 + 272), *(v2 + 280));
    swift_unknownObjectRelease();

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_248A8B478()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_248A8B67C;
  }

  else
  {
    v2 = sub_248A8B588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8B588()
{
  v1 = v0[36];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  (*(v0[26] + 16))(v3, v2);
  sub_248A80F20(v0[34], v0[35]);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_248A8B67C(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[34];
  v4 = v1[35];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_248A80F20(v3, v4);
  swift_unknownObjectRelease();

  v5 = v1[1];

  return v5();
}

void sub_248A8B720()
{
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v0 = sub_248A93440();
  __swift_project_value_buffer(v0, qword_27EEC4B20);
  oslog = sub_248A93420();
  v1 = sub_248A935E0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_248A7B000, oslog, v1, "XPC connection interrupted", v2, 2u);
    MEMORY[0x24C1E2FB0](v2, -1, -1);
  }
}

uint64_t sub_248A8B808(uint64_t a1)
{
  if (qword_27EEC3C70 != -1)
  {
    swift_once();
  }

  v1 = sub_248A93440();
  __swift_project_value_buffer(v1, qword_27EEC4B20);
  v2 = sub_248A93420();
  v3 = sub_248A935E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_248A7B000, v2, v3, "XPC connection invalidated", v4, 2u);
    MEMORY[0x24C1E2FB0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    XPCService.invalidate()();
  }

  return result;
}

uint64_t sub_248A8B91C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C88, &qword_248A93F70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_248A93410();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t XPCService.hashValue.getter()
{
  sub_248A937C0();
  sub_248A93610();
  return sub_248A937F0();
}

uint64_t sub_248A8BB08(uint64_t a1)
{
  sub_248A937C0();
  XPCService.hash(into:)();
  return sub_248A937F0();
}

uint64_t sub_248A8BB6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_248A8086C;

  return v6();
}

uint64_t sub_248A8BC54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_248A7FBF4;

  return v7();
}

uint64_t sub_248A8BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C80, &qword_248A945C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_248A807FC(a3, v24 - v11);
  v13 = sub_248A93580();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_248A80664(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248A93570();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_248A93550();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_248A934B0() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_248A80664(a3);

    return v22;
  }

LABEL_8:
  sub_248A80664(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_248A8BFF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248A8C0F0;

  return v6(a1);
}

uint64_t sub_248A8C0F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_248A8C208(void *a1, char a2)
{
  v5 = *v2;
  v2[4] = 0;
  type metadata accessor for TransportDispatchService();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = MEMORY[0x277D84F98];
  *(v2 + 40) = a2;
  v2[2] = v6;
  v2[3] = a1;
  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 interfaceWithProtocol_];
  [v8 setRemoteObjectInterface_];

  v10 = [v7 interfaceWithProtocol_];
  [v8 setExportedInterface_];

  [v8 setExportedObject_];
  v20 = sub_248A8D0D4;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_248A87254;
  v19 = &block_descriptor_101;
  v11 = _Block_copy(&v16);
  [v8 setInterruptionHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = *(v5 + 80);
  v13[3] = *(v5 + 88);
  v13[4] = v12;
  v20 = sub_248A8D048;
  v21 = v13;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_248A87254;
  v19 = &block_descriptor_108;
  v14 = _Block_copy(&v16);

  [v8 setInvalidationHandler_];
  _Block_release(v14);
  return v2;
}

uint64_t *sub_248A8C490(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCService(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_248A8C208(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248A8C51C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248A80ECC(result, a2);
  }

  return result;
}

unint64_t sub_248A8C530()
{
  result = qword_27EEC3D28[0];
  if (!qword_27EEC3D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEC3D28);
  }

  return result;
}

unint64_t sub_248A8C584()
{
  result = qword_281511428;
  if (!qword_281511428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281511428);
  }

  return result;
}

uint64_t sub_248A8C5D0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of XPCService.transport(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248A8D0E8;

  return v6(a1);
}

uint64_t dispatch thunk of XPCService.transport(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_248A8C904;

  return v10(a1, a2, a3);
}

uint64_t sub_248A8C904(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t getEnumTagSinglePayload for CloudStoredBoolean(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudStoredBoolean(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_248A8CB8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_248A7FBF4;

  return sub_248A88404(v2, v3, v4, v5);
}

uint64_t sub_248A8CC50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248A8086C;

  return sub_248A8BB6C(v2, v3, v4);
}

uint64_t sub_248A8CD10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248A8086C;

  return sub_248A8BC54(a1, v4, v5, v6);
}

uint64_t sub_248A8CDDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A8086C;

  return sub_248A8BFF8(a1, v4);
}

uint64_t sub_248A8CE94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A7FBF4;

  return sub_248A8BFF8(a1, v4);
}

uint64_t sub_248A8CF4C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248A8086C;

  return sub_248A87DA8(v2, v4, v3);
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t TransportDispatchService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_248A8D138(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t TransportDispatchService.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_248A8D1FC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_248A8D2E8;

  return v6();
}

uint64_t sub_248A8D2E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_248A8D418, 0, 0);
  }
}

uint64_t sub_248A8D418()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for VoidTransportSerializable;
  *(v1 + 32) = &off_285B6B048;
  return (*(v0 + 8))();
}

uint64_t sub_248A8D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  return MEMORY[0x2822009F8](sub_248A8D498, v5, 0);
}

uint64_t sub_248A8D498()
{
  v24 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_248A93440();
  __swift_project_value_buffer(v2, qword_281511560);
  sub_248A86898(v1, v0 + 16);
  v3 = sub_248A93420();
  v4 = sub_248A935F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446466;
    v7 = sub_248A93830();
    v9 = sub_248A7E980(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_248A86898(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v10 = sub_248A934A0();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = sub_248A7E980(v10, v12, &v23);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248A7B000, v3, v4, "%{public}s registering handler for %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v6, -1, -1);
    MEMORY[0x24C1E2FB0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v14 = *(v0 + 136);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v22 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_248A93690();
  v17 = *(v0 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A94740, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v23;
  swift_endAccess();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_248A8D77C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = sub_248A93620();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[7] = v9;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_248A8D8E4;

  return v12(v9);
}

uint64_t sub_248A8D8E4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_248A8DB28;
  }

  else
  {
    v2 = sub_248A8D9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8D9F8()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    (*(v0[6] + 8))(v1, v0[5]);
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    v5 = v0[4];
    v6 = v0[2];
    v6[3] = v2;
    v6[4] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_248A8DB28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A8DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  return MEMORY[0x2822009F8](sub_248A8DBDC, v5, 0);
}

uint64_t sub_248A8DBDC()
{
  v24 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_248A93440();
  __swift_project_value_buffer(v2, qword_281511560);
  sub_248A86898(v1, v0 + 16);
  v3 = sub_248A93420();
  v4 = sub_248A935F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446466;
    v7 = sub_248A93830();
    v9 = sub_248A7E980(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_248A86898(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v10 = sub_248A934A0();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = sub_248A7E980(v10, v12, &v23);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248A7B000, v3, v4, "%{public}s registering handler for %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v6, -1, -1);
    MEMORY[0x24C1E2FB0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v14 = *(v0 + 136);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v22 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_248A93690();
  v17 = *(v0 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A94730, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v23;
  swift_endAccess();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_248A8DEC0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  v9 = sub_248A93620();
  *(v6 + 56) = v9;
  *(v6 + 64) = *(v9 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *(a5 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_248A8DFEC, 0, 0);
}

uint64_t sub_248A8DFEC()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v3 + 16);
  sub_248A8C51C(v1, v2);
  v5(v1, v2, v4, v3);
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[5];
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    (*(v0[8] + 8))(v6, v0[7]);
    sub_248A8C530();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[3];
    (*(v7 + 32))(v0[11], v6, v8);
    v15 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_248A8E22C;
    v14 = v0[11];

    return v15(v14);
  }
}

uint64_t sub_248A8E22C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_248A8E3E4;
  }

  else
  {
    v2 = sub_248A8E340;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8E340()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[2];
  *(v4 + 24) = &type metadata for VoidTransportSerializable;
  *(v4 + 32) = &off_285B6B048;
  (*(v1 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_248A8E3E4()
{
  (*(v0[10] + 8))(v0[11], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_248A8E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  return MEMORY[0x2822009F8](sub_248A8E4BC, v5, 0);
}

uint64_t sub_248A8E4BC()
{
  v24 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_248A93440();
  __swift_project_value_buffer(v2, qword_281511560);
  sub_248A86898(v1, v0 + 16);
  v3 = sub_248A93420();
  v4 = sub_248A935F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446466;
    v7 = sub_248A93830();
    v9 = sub_248A7E980(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_248A86898(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v10 = sub_248A934A0();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = sub_248A7E980(v10, v12, &v23);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248A7B000, v3, v4, "%{public}s registering handler for %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v6, -1, -1);
    MEMORY[0x24C1E2FB0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v14 = *(v0 + 136);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v22 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_248A93690();
  v17 = *(v0 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A94720, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v23;
  swift_endAccess();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_248A8E7A0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  v8 = sub_248A93620();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = *a2;

  return MEMORY[0x2822009F8](sub_248A8E878, 0, 0);
}

uint64_t sub_248A8E878()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = *(v3 + 16);
  sub_248A8C51C(v1, v2);
  v5(v1, v2, v4, v3);
  v9 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_248A8EA18;
  v7 = v0[9];

  return v9(v7);
}

uint64_t sub_248A8EA18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_248A8EBC4;
  }

  else
  {
    v2 = sub_248A8EB2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8EB2C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  *(v4 + 24) = &type metadata for VoidTransportSerializable;
  *(v4 + 32) = &off_285B6B048;
  (*(v1 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_248A8EBC4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_248A8EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v8[20] = *v7;
  return MEMORY[0x2822009F8](sub_248A8EC94, v7, 0);
}

uint64_t sub_248A8EC94()
{
  v25 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_248A93440();
  __swift_project_value_buffer(v2, qword_281511560);
  sub_248A86898(v1, v0 + 16);
  v3 = sub_248A93420();
  v4 = sub_248A935F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446466;
    v7 = sub_248A93830();
    v9 = sub_248A7E980(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_248A86898(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v10 = sub_248A934A0();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = sub_248A7E980(v10, v12, &v24);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248A7B000, v3, v4, "%{public}s registering handler for %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v6, -1, -1);
    MEMORY[0x24C1E2FB0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v14 = *(v0 + 152);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v22 = *(v0 + 136);
  v23 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_248A93690();
  v17 = *(v0 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 32) = v22;
  *(v18 + 48) = v16;
  *(v18 + 56) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A94710, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v24;
  swift_endAccess();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_248A8EF7C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  v11 = sub_248A93620();
  *(v8 + 72) = v11;
  *(v8 + 80) = *(v11 - 8);
  *(v8 + 88) = swift_task_alloc();
  v12 = sub_248A93620();
  *(v8 + 96) = v12;
  *(v8 + 104) = *(v12 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = *(a5 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *a2;

  return MEMORY[0x2822009F8](sub_248A8F10C, 0, 0);
}

uint64_t sub_248A8F10C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[5];
  v5 = *(v3 + 16);
  sub_248A8C51C(v1, v2);
  v5(v1, v2, v4, v3);
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[5];
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    (*(v0[13] + 8))(v6, v0[12]);
    sub_248A8C530();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[3];
    (*(v7 + 32))(v0[16], v6, v8);
    v16 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_248A8F360;
    v14 = v0[16];
    v15 = v0[11];

    return v16(v15, v14);
  }
}

uint64_t sub_248A8F360()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_248A8F600;
  }

  else
  {
    v2 = sub_248A8F474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8F474()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[15];
  v5 = v0[16];
  if (v4 == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[2];
    (*(v6 + 8))(v0[16], v0[5]);
    (*(v8 + 8))(v1, v7);
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
  }

  else
  {
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v11);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_248A8F600()
{
  (*(v0[15] + 8))(v0[16], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_248A8F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v8[20] = *v7;
  return MEMORY[0x2822009F8](sub_248A8F6F0, v7, 0);
}

uint64_t sub_248A8F6F0()
{
  v25 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_248A93440();
  __swift_project_value_buffer(v2, qword_281511560);
  sub_248A86898(v1, v0 + 16);
  v3 = sub_248A93420();
  v4 = sub_248A935F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446466;
    v7 = sub_248A93830();
    v9 = sub_248A7E980(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_248A86898(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v10 = sub_248A934A0();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = sub_248A7E980(v10, v12, &v24);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248A7B000, v3, v4, "%{public}s registering handler for %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v6, -1, -1);
    MEMORY[0x24C1E2FB0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v14 = *(v0 + 152);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v22 = *(v0 + 136);
  v23 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_248A93690();
  v17 = *(v0 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 32) = v22;
  *(v18 + 48) = v16;
  *(v18 + 56) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A946F8, v18, v17, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v24;
  swift_endAccess();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_248A8F9D8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  v10 = sub_248A93620();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  v11 = sub_248A93620();
  *(v8 + 96) = v11;
  *(v8 + 104) = *(v11 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = *a2;

  return MEMORY[0x2822009F8](sub_248A8FB18, 0, 0);
}

uint64_t sub_248A8FB18()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[7];
  v4 = v0[5];
  v5 = *(v3 + 16);
  sub_248A8C51C(v1, v2);
  v5(v1, v2, v4, v3);
  v10 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_248A8FCCC;
  v7 = v0[14];
  v8 = v0[11];

  return v10(v8, v7);
}

uint64_t sub_248A8FCCC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_248A8FF68;
  }

  else
  {
    v2 = sub_248A8FDE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A8FDE0()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[2];
    (*(v6 + 8))(v0[14], v0[12]);
    (*(v9 + 8))(v1, v8);
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  else
  {
    v11 = v0[8];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_248A8FF68()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_248A8FFF0(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 144) = a1;
  return MEMORY[0x2822009F8](sub_248A90018, v3, 0);
}

uint64_t sub_248A90018()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_248A8533C(*(v0 + 144)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    *(v0 + 120) = *(v5 + 8);
    *(v0 + 80) = *(v0 + 96);

    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_248A901CC;

    return v11(v0 + 16, v0 + 80);
  }

  else
  {
    sub_248A8C530();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_248A901CC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = sub_248A90430;
  }

  else
  {
    v4 = sub_248A90314;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_248A90314()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
    v4 = (*(v3 + 8))(v1, v3);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v6 = v0[1];

      return v6();
    }

    v10 = v4;
    v11 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v9 = v11;
    v8 = v10;
  }

  else
  {
    sub_248A904C0((v0 + 2));
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v8, v9);
}

uint64_t TransportDispatchService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TransportDispatchService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_248A904C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E38, &qword_248A94648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TransportDispatchService.dispatch(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_248A8C904;

  return v10(a1, a2, a3);
}

uint64_t sub_248A906D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v6[22] = *a4;
  v6[5] = a5;
  v6[6] = a6;
  v6[23] = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(a5 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_248A907BC, a4, 0);
}

uint64_t sub_248A907BC()
{
  v22 = v0;
  if (qword_281511448 != -1)
  {
    swift_once();
  }

  v1 = sub_248A93440();
  __swift_project_value_buffer(v1, qword_281511560);
  sub_248A86898(v0 + 16, v0 + 56);
  v2 = sub_248A93420();
  v3 = sub_248A935F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446466;
    v6 = sub_248A93830();
    v8 = sub_248A7E980(v6, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    sub_248A86898(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E40, &qword_248A94700);
    v9 = sub_248A934A0();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v12 = sub_248A7E980(v9, v11, &v21);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_248A7B000, v2, v3, "%{public}s registering handler for %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2FB0](v5, -1, -1);
    MEMORY[0x24C1E2FB0](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  sub_248A93690();
  v16 = *(v0 + 96);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v14 + 112);
  *(v14 + 112) = 0x8000000000000000;
  sub_248A85E18(&unk_248A94758, v17, v16, isUniquelyReferenced_nonNull_native);
  *(v14 + 112) = v21;
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_248A90A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7);
  sub_248A93690();
  v8 = v11;
  swift_beginAccess();
  sub_248A847F4(0, 0, v8);
  swift_endAccess();
  return (*(v5 + 8))(v7, a3);
}

uint64_t sub_248A90BA8(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_248A7FBF4;

  return sub_248A8F9D8(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_248A90C84(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_248A8086C;

  return sub_248A8EF7C(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_248A90D60(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248A8086C;

  return sub_248A8E7A0(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_248A90E28(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248A8086C;

  return sub_248A8DEC0(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_248A90EF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248A8086C;

  return sub_248A8D77C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_248A90FB8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248A8086C;

  return sub_248A8D1FC(a1, a2, v6);
}

uint64_t sub_248A91088@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_248A910D0(uint64_t a1)
{
  v2 = sub_248A91284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A9110C(uint64_t a1)
{
  v2 = sub_248A91284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A91170(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E48, &qword_248A947F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_248A91284();
  sub_248A93800();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_248A91284()
{
  result = qword_27EEC3E50;
  if (!qword_27EEC3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E50);
  }

  return result;
}

unint64_t sub_248A912EC()
{
  result = qword_27EEC3E58;
  if (!qword_27EEC3E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E58);
  }

  return result;
}

unint64_t sub_248A91344()
{
  result = qword_27EEC3E60;
  if (!qword_27EEC3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E60);
  }

  return result;
}

Swift::Bool __swiftcall AppleAccountProvider.accountHasAssociatedAVP()()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    __break(1u);
    return v0;
  }

  v1 = v0;
  v2 = [v0 aa_primaryAppleAccount];

  if (!v2)
  {
    if (qword_281511450 != -1)
    {
      swift_once();
    }

    v23 = sub_248A93440();
    __swift_project_value_buffer(v23, qword_281511578);
    v2 = sub_248A93420();
    v24 = sub_248A935E0();
    if (os_log_type_enabled(v2, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_248A7B000, v2, v24, "Unable to get primary account.", v25, 2u);
      MEMORY[0x24C1E2FB0](v25, -1, -1);
    }

    goto LABEL_24;
  }

  v3 = [v2 propertiesForDataclass:*MEMORY[0x277CB8980]];
  if (!v3 || (v4 = v3, v5 = sub_248A93460(), v4, v6 = sub_248A91848(v5), , !v6))
  {
    if (qword_281511450 != -1)
    {
      swift_once();
    }

    v18 = sub_248A93440();
    __swift_project_value_buffer(v18, qword_281511578);
    v19 = sub_248A93420();
    v20 = sub_248A935F0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "No dataclass properties exist for Apple Account";
    goto LABEL_22;
  }

  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v7 = sub_248A93440();
  __swift_project_value_buffer(v7, qword_281511578);

  v8 = sub_248A93420();
  v9 = sub_248A935F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v12 = sub_248A93470();
    v14 = sub_248A7E980(v12, v13, &v27);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_248A7B000, v8, v9, "Apple Account dataclass properties: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x24C1E2FB0](v11, -1, -1);
    MEMORY[0x24C1E2FB0](v10, -1, -1);
  }

  if (!*(v6 + 16) || (v15 = sub_248A85384(0x746169636F737361, 0xED00005056416465), (v16 & 1) == 0))
  {

    v19 = sub_248A93420();
    v20 = sub_248A935E0();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_23:

LABEL_24:
      v17 = 0;
      goto LABEL_25;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Could not find associatedAVP key in dataclass properties";
LABEL_22:
    _os_log_impl(&dword_248A7B000, v19, v20, v22, v21, 2u);
    MEMORY[0x24C1E2FB0](v21, -1, -1);
    goto LABEL_23;
  }

  v17 = *(*(v6 + 56) + v15);

LABEL_25:

  LOBYTE(v0) = v17;
  return v0;
}

ACAccount_optional __swiftcall AppleAccountProvider.appleAccount()()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v2 = v0;
    v3 = [v0 aa_primaryAppleAccount];

    v0 = v3;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

unint64_t sub_248A91848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E70, &qword_248A94960);
    v2 = sub_248A936E0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_248A929BC(*(a1 + 48) + 40 * v12, v24);
        sub_248A7EFEC(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_248A929BC(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_248A92A18(v21);

          goto LABEL_23;
        }

        sub_248A7EFEC(v22 + 8, v20);
        sub_248A92A18(v21);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_248A85384(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + v10) = v18 & 1;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + result) = v18 & 1;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

ACAccountStore __swiftcall AppleAccountProvider.getAccountStore()()
{
  result.super.isa = [objc_opt_self() defaultStore];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall AppleAccountProvider.isCloudSyncEnabled()()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccount];

    if (v2)
    {
      v3 = [v2 isEnabledForDataclass:*MEMORY[0x277CB8980]];
    }

    else
    {
      if (qword_281511450 != -1)
      {
        swift_once();
      }

      v4 = sub_248A93440();
      __swift_project_value_buffer(v4, qword_281511578);
      v2 = sub_248A93420();
      v5 = sub_248A935F0();
      if (os_log_type_enabled(v2, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_248A7B000, v2, v5, "Primary Apple Account query failed.", v6, 2u);
        MEMORY[0x24C1E2FB0](v6, -1, -1);
      }

      v3 = 0;
    }

    LOBYTE(v0) = v3;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

uint64_t sub_248A91CA4()
{
  v1 = *MEMORY[0x277CB8980];
  *(v0 + 144) = *MEMORY[0x277CB8980];
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 aa_primaryAppleAccount];
  *(v0 + 152) = v5;

  if (v5)
  {
    [v5 setEnabled:*(v0 + 177) forDataclass:v1];
    v3 = [v2 defaultStore];
    *(v0 + 160) = v3;
    if (v3)
    {
      v6 = v3;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 176;
      *(v0 + 24) = sub_248A91F58;
      v7 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E68, &qword_248A948D8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_248A9225C;
      *(v0 + 104) = &block_descriptor_0;
      *(v0 + 112) = v7;
      [v6 saveAccount:v5 withCompletionHandler:v0 + 80];
      v3 = (v0 + 16);

      return MEMORY[0x282200938](v3);
    }

LABEL_15:
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v8 = sub_248A93440();
  __swift_project_value_buffer(v8, qword_281511578);
  v9 = sub_248A93420();
  v10 = sub_248A935E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_248A7B000, v9, v10, "Unable to get primary account.", v11, 2u);
    MEMORY[0x24C1E2FB0](v11, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_248A91F58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_248A921E0;
  }

  else
  {
    v2 = sub_248A92068;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248A92068()
{
  v1 = *(v0 + 152);

  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = sub_248A93440();
  __swift_project_value_buffer(v4, qword_281511578);
  v5 = v2;
  v6 = v3;
  v7 = sub_248A93420();
  v8 = sub_248A935F0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  if (v9)
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = [v10 isEnabledForDataclass_];

    _os_log_impl(&dword_248A7B000, v7, v8, "Set cloud sync state to: %{BOOL,public}d", v12, 8u);
    MEMORY[0x24C1E2FB0](v12, -1, -1);
  }

  else
  {

    v10 = v11;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_248A921E0(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_248A9225C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3C88, &qword_248A93F70);
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

uint64_t AppleAccountProvider.setCloudSyncState(enabled:account:)(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_248A9234C, 0, 0);
}

uint64_t sub_248A9234C()
{
  v1 = *MEMORY[0x277CB8980];
  [*(v0 + 16) setEnabled:*(v0 + 24) forDataclass:*MEMORY[0x277CB8980]];
  if (qword_281511450 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = sub_248A93440();
  __swift_project_value_buffer(v3, qword_281511578);
  v4 = v1;
  v5 = v2;
  v6 = sub_248A93420();
  v7 = sub_248A935F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    *(v9 + 4) = [v8 isEnabledForDataclass_];

    _os_log_impl(&dword_248A7B000, v6, v7, "Set cloud sync state to: %{BOOL,public}d", v9, 8u);
    MEMORY[0x24C1E2FB0](v9, -1, -1);
  }

  else
  {

    v6 = *(v0 + 16);
  }

  v10 = *(v0 + 8);

  return v10();
}

id sub_248A92518()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248A92580()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248A925BC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248A8086C;

  return AppleAccountProvider.setCloudSyncStateAndSave(enabled:)(a1);
}

uint64_t sub_248A92650(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A7FBF4;

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(a1, a2);
}

uint64_t dispatch thunk of AppleAccountProtocol.setCloudSyncStateAndSave(enabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248A8086C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AppleAccountProtocol.setCloudSyncState(enabled:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248A7FBF4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_248A92A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E78, &qword_248A94968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_248A92A80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_248A92C90(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A93420();
  v7 = sub_248A935F0();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_248A7E980(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248A7B000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1E2FB0](v9, -1, -1);
    MEMORY[0x24C1E2FB0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_248A92C18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248A93440();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_248A93430();
}

uint64_t sub_248A92C90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_248A92FDC();
  v8 = (sub_248A93630() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_248A92EEC(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A93520();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1E2790](v10, v12, v14, v16);
  v19 = v18;

  sub_248A92EEC(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A93520();
  v21 = MEMORY[0x24C1E2790](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A93710();
  MEMORY[0x24C1E27C0](v25);

  MEMORY[0x24C1E27C0](8285, 0xE200000000000000);
  MEMORY[0x24C1E27C0](v17, v19);

  MEMORY[0x24C1E27C0](14906, 0xE200000000000000);
  MEMORY[0x24C1E27C0](v21, v23);

  return 91;
}

unint64_t sub_248A92EEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A93510() != a1 || v9 != a2)
  {
    v10 = sub_248A93730();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A934E0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_248A92FDC()
{
  result = qword_27EEC3E80;
  if (!qword_27EEC3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E80);
  }

  return result;
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

uint64_t CloudStoredBoolean.description.getter()
{
  v1 = 0x657572547369;
  if (*v0 != 1)
  {
    v1 = 0x65736C61467369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74657320746F6ELL;
  }
}

DeviceSharingServicesCore::CloudStoredBoolean __swiftcall CloudStoredBoolean.init(_:)(DeviceSharingServicesCore::CloudStoredBoolean result)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == DeviceSharingServicesCore_CloudStoredBoolean_isFalse)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return result;
}

DeviceSharingServicesCore::CloudStoredBoolean_optional __swiftcall CloudStoredBoolean.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_248A9314C()
{
  result = qword_27EEC3E88;
  if (!qword_27EEC3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E88);
  }

  return result;
}

uint64_t sub_248A931A0()
{
  v1 = *v0;
  sub_248A937C0();
  MEMORY[0x24C1E2AB0](v1);
  return sub_248A937F0();
}

uint64_t sub_248A93214(uint64_t a1)
{
  v2 = *v1;
  sub_248A937C0();
  MEMORY[0x24C1E2AB0](v2);
  return sub_248A937F0();
}

unint64_t sub_248A9332C()
{
  result = qword_27EEC3E90;
  if (!qword_27EEC3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E90);
  }

  return result;
}