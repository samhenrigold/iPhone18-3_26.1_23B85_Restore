uint64_t sub_2648A28FC()
{
  v1 = *(v0 + 136);
  v11 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 40);
  (*(**(v0 + 32) + 88))();
  (*(v5 + 16))(v4, v7, v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v4, v6);
  (*(v3 + 16))(v11, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  sub_26488E39C(&qword_280F78FA0, &qword_27FF81D90, &qword_2648BAA60, MEMORY[0x277D857C0]);
  sub_2648B8FF4();
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2648A2AD4, 0, 0);
}

uint64_t sub_2648A2AD4()
{
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  sub_26488E39C(&qword_27FF81DA8, &qword_27FF81D98, &unk_2648BAA68, MEMORY[0x277D85990]);
  sub_2648B8D84();
  v1 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_2648A2C18;
  v3 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t sub_2648A2C18()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_2648A2D58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2648A2D58()
{
  v1 = v0[2];
  v0[23] = v1;
  if (!v1)
  {
    v2 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = sub_2648A2FC4;
    goto LABEL_5;
  }

  if (*(v1 + 16))
  {
    v2 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = sub_2648A2ED8;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  v4 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58, MEMORY[0x277D85980]);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_2648A2C18;
  v6 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v6, v4);
}

uint64_t sub_2648A2ED8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  sub_2648B8CD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2648A2FC4()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  sub_2648A4D60();
  v0[3] = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  sub_2648B8CC4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2648A30D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2648A30F8, 0, 0);
}

uint64_t sub_2648A30F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  v5 = sub_2648A153C(sub_2648A55B4, v4, v1);

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_2648A31B4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D88, &qword_2648BAA58);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D90, &qword_2648BAA60);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D98, &unk_2648BAA68);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_2648B88D4();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v2[18] = *(v7 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = sub_2648B8B14();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A3458, v1, 0);
}

uint64_t sub_2648A3458(uint64_t a1)
{
  v55 = v1;
  v2 = v1[26];
  v3 = v1[23];
  v4 = v1[21];
  v6 = v1[16];
  v5 = v1[17];
  v7 = v1[3];
  v8 = sub_2648A57B8();
  v1[27] = v8;
  v9 = *(v3 + 16);
  v1[28] = v9;
  v1[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51 = v8;
  v49 = v9;
  v9(v2);
  v10 = *(v5 + 16);
  v1[30] = v10;
  v1[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53 = v10;
  v10(v4, v7, v6);
  v11 = sub_2648B8AF4();
  v12 = sub_2648B8E44();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[26];
  v16 = v1[22];
  v15 = v1[23];
  v17 = v1[21];
  v19 = v1[16];
  v18 = v1[17];
  if (v13)
  {
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v20 = 136315138;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = v16;
    v46 = v14;
    v21 = sub_2648B9114();
    v23 = v22;
    v43 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_26488EB20(v21, v23, &v54);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_264887000, v11, v43, "Will unpair device with ID %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2667439C0](v48, -1, -1);
    MEMORY[0x2667439C0](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v46, v44);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v1[32] = v24;
  v1[33] = v26;
  sub_2648B8944();
  swift_allocObject();
  v1[34] = sub_2648B8934();
  sub_2648B8924();
  v49(v1[25], v51, v1[22]);
  v27 = sub_2648B8AF4();
  v28 = sub_2648B8E44();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_264887000, v27, v28, "Waiting for paired device to be removed", v29, 2u);
    MEMORY[0x2667439C0](v29, -1, -1);
  }

  v30 = v1[25];
  v31 = v1[22];
  v32 = v1[17];
  v47 = v1[20];
  v45 = v1[16];
  v33 = v1[11];
  v50 = v1[10];
  v34 = v1[9];
  v52 = v1[8];
  v35 = v27;
  v37 = v1[3];
  v36 = v1[4];

  v38 = (v26)(v30, v31);
  v39 = v33;
  (*(*v36 + 88))(v38);
  v53(v47, v37, v45);
  v40 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v41 = swift_allocObject();
  (*(v32 + 32))(v41 + v40, v47, v45);
  (*(v34 + 16))(v50, v39, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  sub_26488E39C(&qword_280F78FA0, &qword_27FF81D90, &qword_2648BAA60, MEMORY[0x277D857C0]);
  sub_2648B8FF4();
  (*(v34 + 8))(v39, v52);

  return MEMORY[0x2822009F8](sub_2648A3C58, 0, 0);
}

uint64_t sub_2648A3C58()
{
  (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
  sub_26488E39C(&qword_27FF81DA8, &qword_27FF81D98, &unk_2648BAA68, MEMORY[0x277D85990]);
  sub_2648B8D84();
  v1 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58, MEMORY[0x277D85980]);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_2648A3D9C;
  v3 = v0[5];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t sub_2648A3D9C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];

    (*(v4 + 8))(v3, v5);
    v6 = j_nullsub_1;
  }

  else
  {
    v6 = sub_2648A3EDC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2648A3EDC()
{
  v1 = v0[2];
  v0[36] = v1;
  if (v1)
  {
    if (*(v1 + 16))
    {

      v2 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58, MEMORY[0x277D85980]);
      v3 = swift_task_alloc();
      v0[35] = v3;
      *v3 = v0;
      v3[1] = sub_2648A3D9C;
      v4 = v0[5];

      return MEMORY[0x282200308](v0 + 2, v4, v2);
    }

    v5 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v6 = sub_2648A4054;
  }

  else
  {
    v5 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v6 = sub_2648A4180;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2648A4054()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2648A4180()
{
  v34 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_2648A4D60();
  v4 = swift_allocError();
  swift_willThrow();

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 240);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);
  v8 = *(v0 + 24);
  (*(v0 + 224))(*(v0 + 192), *(v0 + 216), *(v0 + 176));
  v5(v6, v8, v7);
  v9 = v4;
  v10 = sub_2648B8AF4();
  v11 = sub_2648B8E34();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 192);
  v32 = *(v0 + 176);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  if (v12)
  {
    v31 = *(v0 + 192);
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v18 = 136446466;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v29 = v14;
    v19 = sub_2648B9114();
    v27 = v11;
    v21 = v20;
    v13(v16, v17);
    v22 = sub_26488EB20(v19, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2114;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v24;
    *v28 = v24;
    _os_log_impl(&dword_264887000, v10, v27, "Failed to unpair device with ID %{public}s: %{public}@", v18, 0x16u);
    sub_264891214(v28, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2667439C0](v30, -1, -1);
    MEMORY[0x2667439C0](v18, -1, -1);

    v29(v31, v32);
  }

  else
  {

    v13(v16, v17);
    v14(v15, v32);
  }

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2648A4524(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2648A454C, 0, 0);
}

uint64_t sub_2648A454C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  v5 = sub_2648A153C(sub_2648A5660, v4, v1);

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_2648A4608(uint64_t a1, uint64_t a2)
{
  v3 = sub_2648B88D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CompanionDevice.id.getter();
  v7 = sub_2648B88A4();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) != 0 && (v8 = *(a1 + *(type metadata accessor for CompanionDevice(0) + 48)), v8 != 4))
  {
    v11[15] = v8;
    v11[14] = 2;
    sub_264893BEC();
    v9 = sub_2648B8BE4();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2648A4740()
{
  v2 = sub_2648B8B14();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A4808, v0, 0);
}

uint64_t sub_2648A4808(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_2648A57B8();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will try to get replicator relationships unstuck", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v1[5];
  v10 = v1[2];
  v11 = v1[3];

  (*(v11 + 8))(v9, v10);
  sub_2648B8944();
  swift_allocObject();
  sub_2648B8934();
  sub_2648B8904();

  v12 = v1[1];

  return v12();
}

uint64_t sub_2648A4A4C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2648A4A7C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_2648A4AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2648A4FA0(v13, v10);
        sub_2648A4FA0(v14, v7);
        sub_2648A5614(&qword_27FF81C28, 255, type metadata accessor for CompanionDevice, &protocol conformance descriptor for CompanionDevice);
        v16 = sub_2648B8BE4();
        sub_26489CB48(v7);
        sub_26489CB48(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2648A4C7C(uint64_t a1, void *a2)
{
  v6 = *(sub_2648B88D4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2648913EC;

  return sub_2648A4524(a1, a2, v2 + v7);
}

unint64_t sub_2648A4D60()
{
  result = qword_27FF81DB8;
  if (!qword_27FF81DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81DB8);
  }

  return result;
}

unint64_t sub_2648A4DB8()
{
  result = qword_27FF81DC0;
  if (!qword_27FF81DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81DC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorController.ReplicatorControllerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ReplicatorController.ReplicatorControllerError(_WORD *result, int a2, int a3)
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

uint64_t sub_2648A4EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2648A4F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2648A4FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2648A5004(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2648A5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2648A5024(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D10, &unk_2648BA8D0);
  v10 = *(type metadata accessor for CompanionDevice(0) - 8);
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
  v15 = *(type metadata accessor for CompanionDevice(0) - 8);
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

uint64_t sub_2648A51FC(void *a1)
{
  v3 = *(sub_2648B88D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B") - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2648A2104(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_2648A5308()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B") - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2648913EC;

  return sub_2648A26DC(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648A54D0(uint64_t a1, void *a2)
{
  v6 = *(sub_2648B88D4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26488D93C;

  return sub_2648A30D0(a1, a2, v2 + v7);
}

uint64_t sub_2648A55E4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_2648A55F0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2648A5608(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2648A5608(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_2648A5614(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2648A57FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2648B8B14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2648B8B04();
}

uint64_t sub_2648A5898(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2648B8B14();

  return __swift_project_value_buffer(v3, a2);
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

unint64_t sub_2648A5950()
{
  result = qword_280F78F88;
  if (!qword_280F78F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F78F88);
  }

  return result;
}

uint64_t sub_2648A59C0()
{
  v0 = swift_allocObject();
  sub_2648A59F8();
  return v0;
}

uint64_t sub_2648A59F8()
{
  v9 = sub_2648B8E54();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2648B8EB4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2648B8B54();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2648A5950();
  v8[0] = "com.apple.screensharing";
  v8[1] = v6;
  sub_2648B8B44();
  v10 = MEMORY[0x277D84F90];
  sub_2648AA0D4(&qword_280F78F90, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90, MEMORY[0x277D83970]);
  sub_2648B8F24();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v9);
  *(v0 + 16) = sub_2648B8EC4();
  *(v0 + 24) = -70;
  return v0;
}

uint64_t sub_2648A5C64@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_2648B88D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RapportController.Change(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = a1;
  v17 = a2;
  v18 = [v17 idsDeviceIdentifier];
  if (!v18)
  {

    return (*(v14 + 56))(a3, 1, 1, v13);
  }

  v25 = v13;
  v26 = a3;
  v19 = v18;
  sub_2648B8C24();

  sub_2648B8884();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_264891214(v8, &qword_27FF81BD0, &unk_2648BAEC0);
    v13 = v25;
    a3 = v26;
    return (*(v14 + 56))(a3, 1, 1, v13);
  }

  (*(v10 + 32))(v12, v8, v9);
  v21 = v25;
  (*(v10 + 16))(&v16[*(v25 + 20)], v12, v9);
  v22 = [v17 proximity];

  (*(v10 + 8))(v12, v9);
  v23 = 0;
  if (v22 == 10)
  {
    v24 = v26;
  }

  else
  {
    v24 = v26;
    if (v22 != 20)
    {
      if (v22 == 30)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }
    }
  }

  v16[*(v21 + 24)] = v23;
  sub_2648AA11C(v16, v24);
  (*(v14 + 56))(v24, 0, 1, v21);
  return sub_2648A9728(v16);
}

uint64_t sub_2648A5FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v63[-v4];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E18, &qword_2648BACA0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v63[-v5];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
  v74 = *(v76 - 8);
  v75 = *(v74 + 64);
  v6 = MEMORY[0x28223BE20](v76);
  v73 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v69 = &v63[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E28, &qword_2648BACB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63[-v11];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v82 = *(v90 - 8);
  v87 = *(v82 + 64);
  v13 = MEMORY[0x28223BE20](v90);
  v15 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v63[-v16];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  v66 = *(v68 - 8);
  v67 = *(v66 + 64);
  v18 = MEMORY[0x28223BE20](v68);
  v65 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v83 = &v63[-v20];
  v21 = [objc_allocWithZone(MEMORY[0x277D441E0]) init];
  v80 = v21;
  [v21 setRssiThreshold_];
  [v21 setDispatchQueue_];
  type metadata accessor for RapportController.Change(0);
  v64 = *MEMORY[0x277D858A0];
  (*(v10 + 104))(v12);
  v22 = v17;
  sub_2648B8D94();
  (*(v10 + 8))(v12, v9);
  v23 = v82;
  v88 = *(v82 + 16);
  v89 = v17;
  v85 = v82 + 16;
  v24 = v90;
  (v88)(v15, v17, v90);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v81 = *(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = *(v23 + 32);
  v86 = v23 + 32;
  v27(v26 + v25, v15, v24);
  v79 = v27;
  v95 = sub_2648A6EBC;
  v96 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v78 = &v93;
  v93 = sub_26488DA30;
  v94 = &block_descriptor_0;
  v28 = _Block_copy(&aBlock);

  v29 = v80;
  [v80 setInterruptionHandler_];
  _Block_release(v28);
  v30 = v22;
  v31 = v88;
  (v88)(v15, v30, v24);
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v33 = v2;
  v27(v32 + v25, v15, v24);
  v95 = sub_2648A6F44;
  v96 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = sub_2648A6F54;
  v94 = &block_descriptor_6;
  v34 = _Block_copy(&aBlock);

  [v29 setDeviceFoundHandler_];
  _Block_release(v34);
  v36 = v89;
  v35 = v90;
  v31(v15, v89, v90);
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  v79(v37 + v25, v15, v35);
  v95 = sub_2648A74AC;
  v96 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = sub_2648A6F54;
  v94 = &block_descriptor_12;
  v38 = _Block_copy(&aBlock);

  v39 = v80;
  [v80 setDeviceLostHandler_];
  _Block_release(v38);
  v40 = v90;
  (v88)(v15, v36, v90);
  v41 = v81;
  v42 = swift_allocObject();
  *(v42 + 16) = v33;
  v43 = v79;
  v79(v42 + v25, v15, v40);
  v95 = sub_2648A7C38;
  v96 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = sub_2648A7CC8;
  v94 = &block_descriptor_18;
  v44 = _Block_copy(&aBlock);

  [v39 setDeviceChangedHandler_];
  _Block_release(v44);
  v45 = v40;
  (v88)(v15, v89, v40);
  v46 = swift_allocObject();
  v43(v46 + ((v41 + 16) & ~v41), v15, v45);
  v95 = sub_2648A8014;
  v96 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = sub_2648A8090;
  v94 = &block_descriptor_24;
  v47 = _Block_copy(&aBlock);

  [v39 activateWithCompletion_];
  _Block_release(v47);
  *(swift_allocObject() + 16) = v39;
  v88 = v39;
  sub_2648B8DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E40, &qword_2648BACC8);
  v48 = v71;
  v49 = v70;
  v50 = v72;
  (*(v71 + 104))(v70, v64, v72);
  v51 = v69;
  sub_2648B8D94();
  (*(v48 + 8))(v49, v50);
  v52 = sub_2648B8D14();
  (*(*(v52 - 8) + 56))(v84, 1, 1, v52);
  v53 = v66;
  v54 = v65;
  v55 = v68;
  (*(v66 + 16))(v65, v83, v68);
  v56 = v74;
  v57 = v73;
  v58 = v76;
  (*(v74 + 16))(v73, v51, v76);
  v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v60 = (v67 + *(v56 + 80) + v59) & ~*(v56 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  (*(v53 + 32))(v61 + v59, v54, v55);
  (*(v56 + 32))(v61 + v60, v57, v58);
  sub_26488BD30(0, 0, v84, &unk_2648BACD8, v61);
  sub_2648B8DA4();

  (*(v56 + 8))(v51, v58);
  (*(v82 + 8))(v89, v90);
  return (*(v53 + 8))(v83, v55);
}

uint64_t type metadata accessor for RapportController.Change(uint64_t a1)
{
  result = qword_27FF835B0;
  if (!qword_27FF835B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2648A6C24(uint64_t a1)
{
  v2 = sub_2648B8B94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2648B8B14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2648A5770();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2648B8AF4();
  v12 = sub_2648B8E44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19[0] = a1;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_264887000, v11, v12, "Interrupted", v13, 2u);
    a1 = v19[0];
    MEMORY[0x2667439C0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = *(a1 + 16);
  *v5 = v15;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v16 = v15;
  v17 = sub_2648B8BA4();
  result = (*(v3 + 8))(v5, v2);
  if (v17)
  {
    sub_2648AA180();
    v19[1] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
    return sub_2648B8DD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2648A6EBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v1 = *(v0 + 16);

  return sub_2648A6C24(v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2648A6F54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2648A6FBC(void *a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v51 = a5;
  v47 = a4;
  v53 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E78, &qword_2648BAEB8);
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v40 - v10;
  v11 = type metadata accessor for RapportController.Change(0);
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - v14;
  v52 = sub_2648B8B94();
  v15 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2648B8B14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2648A5770();
  (*(v19 + 16))(v21, v22, v18);
  v23 = a1;
  v24 = sub_2648B8AF4();
  v25 = sub_2648B8E44();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = v7;
    v27 = v26;
    v28 = swift_slowAlloc();
    v42 = a3;
    v29 = v28;
    *v27 = 138543362;
    *(v27 + 4) = v23;
    *v28 = v23;
    v30 = v23;
    _os_log_impl(&dword_264887000, v24, v25, v47, v27, 0xCu);
    sub_264891214(v29, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v29, -1, -1);
    v31 = v27;
    v7 = v41;
    MEMORY[0x2667439C0](v31, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v32 = v52;
  v33 = *(v53 + 16);
  *v17 = v33;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v32);
  v34 = v33;
  LOBYTE(v33) = sub_2648B8BA4();
  result = (*(v15 + 8))(v17, v32);
  if (v33)
  {
    v36 = v23;
    v37 = v50;
    sub_2648A5C64(v51, v36, v50);
    if ((*(v48 + 48))(v37, 1, v49) == 1)
    {
      return sub_264891214(v37, &qword_27FF81E58, &qword_2648BAE88);
    }

    else
    {
      v38 = v44;
      sub_2648A96C4(v37, v44);
      sub_2648AA11C(v38, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
      v39 = v45;
      sub_2648B8DC4();
      (*(v46 + 8))(v39, v7);
      return sub_2648A9728(v38);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2648A7548(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v65 = a3;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E78, &qword_2648BAEB8);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v51 - v8;
  v9 = type metadata accessor for RapportController.Change(0);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v12;
  v13 = sub_2648B8B94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2648B8B14();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v60 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = sub_2648A5770();
  v58 = *(v18 + 16);
  v59 = v23;
  v58(v22);
  v24 = a1;
  v25 = sub_2648B8AF4();
  v26 = sub_2648B8E44();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v51 = v17;
    v28 = v27;
    v29 = swift_slowAlloc();
    v66 = v18;
    v30 = v29;
    *v28 = 138543362;
    *(v28 + 4) = v24;
    *v29 = v24;
    v31 = v24;
    _os_log_impl(&dword_264887000, v25, v26, "Device changed: %{public}@", v28, 0xCu);
    sub_264891214(v30, &qword_27FF81BC0, &qword_2648BA080);
    v32 = v30;
    v18 = v66;
    MEMORY[0x2667439C0](v32, -1, -1);
    v33 = v28;
    v17 = v51;
    MEMORY[0x2667439C0](v33, -1, -1);
  }

  v34 = *(v18 + 8);
  v66 = v18 + 8;
  v34(v22, v17);
  v35 = *(v65 + 16);
  *v16 = v35;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v36 = v35;
  LOBYTE(v35) = sub_2648B8BA4();
  result = (*(v14 + 8))(v16, v13);
  if (v35)
  {
    if ((v64 & 0x80) != 0)
    {
      v38 = v60;
      (v58)(v60, v59, v17);
      v39 = v24;
      v40 = sub_2648B8AF4();
      v41 = sub_2648B8E44();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v17;
        v44 = swift_slowAlloc();
        *v42 = 138543362;
        *(v42 + 4) = v39;
        *v44 = v39;
        v45 = v39;
        _os_log_impl(&dword_264887000, v40, v41, "Device proximity changed: %{public}@", v42, 0xCu);
        sub_264891214(v44, &qword_27FF81BC0, &qword_2648BA080);
        v46 = v44;
        v17 = v43;
        MEMORY[0x2667439C0](v46, -1, -1);
        MEMORY[0x2667439C0](v42, -1, -1);
      }

      v34(v38, v17);
      v47 = v39;
      v48 = v63;
      sub_2648A5C64(1, v47, v63);
      if ((*(v61 + 48))(v48, 1, v62) == 1)
      {
        return sub_264891214(v48, &qword_27FF81E58, &qword_2648BAE88);
      }

      else
      {
        v49 = v53;
        sub_2648A96C4(v48, v53);
        sub_2648AA11C(v49, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
        v50 = v54;
        sub_2648B8DC4();
        (*(v55 + 8))(v50, v56);
        return sub_2648A9728(v49);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648A7C38(void *a1, int a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2648A7548(a1, a2, v6, v7);
}

void sub_2648A7CC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2648A7D3C(void *a1)
{
  v2 = sub_2648B8B14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  if (a1)
  {
    v9 = a1;
    v10 = sub_2648A5770();
    (*(v3 + 16))(v6, v10, v2);
    v11 = a1;
    v12 = sub_2648B8AF4();
    v13 = sub_2648B8E34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_264887000, v12, v13, "Activation failed: %{public}@", v14, 0xCu);
      sub_264891214(v15, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v15, -1, -1);
      MEMORY[0x2667439C0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v23[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
    return sub_2648B8DD4();
  }

  else
  {
    v19 = sub_2648A5770();
    (*(v3 + 16))(v8, v19, v2);
    v20 = sub_2648B8AF4();
    v21 = sub_2648B8E44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_264887000, v20, v21, "Activation finished", v22, 2u);
      MEMORY[0x2667439C0](v22, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_2648A8014(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);

  return sub_2648A7D3C(a1);
}

void sub_2648A8090(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_2648A80FC(void *a1)
{
  v2 = sub_2648B8B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2648A5770();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264887000, v7, v8, "Change accumulator terminated", v9, 2u);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [a1 invalidate];
}

uint64_t sub_2648A8270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E50, &qword_2648BAE80);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_2648B88D4();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = type metadata accessor for RapportController.Change(0);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E60, &unk_2648BAE90);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v10 = sub_2648B8B14();
  v5[29] = v10;
  v5[30] = *(v10 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A8508, 0, 0);
}

uint64_t sub_2648A8508()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = MEMORY[0x277D84F98];
  v0[8] = MEMORY[0x277D84F98];
  v5 = sub_2648A5770();
  v0[34] = v5;
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264887000, v7, v8, "Will wait for changes", v9, 2u);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  v10 = v0[33];
  v11 = v0[29];
  v12 = v0[30];

  v13 = *(v12 + 8);
  v0[37] = v13;
  v13(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  sub_2648B8D54();
  v0[39] = v4;
  v0[40] = v4;
  v0[38] = v4;
  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = sub_2648A86C8;
  v15 = v0[25];
  v16 = v0[26];

  return MEMORY[0x2822005A8](v15, 0, 0, v16, v0 + 9);
}

uint64_t sub_2648A86C8()
{

  if (v0)
  {
    v1 = sub_2648A8E2C;
  }

  else
  {
    v1 = sub_2648A87D8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2648A87D8()
{
  v64 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  if ((*(*(v0 + 184) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 192);
  sub_2648A96C4(v1, v5);
  v6 = *(v2 + 20);
  if (*v5 > 1u)
  {
    swift_beginAccess();
    v23 = sub_26488F280(&v5[v6]);
    if ((v24 & 1) == 0)
    {
      v27 = *(v0 + 312);
      v28 = *(v0 + 320);
      v26 = *(v0 + 304);
      goto LABEL_25;
    }

    v8 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v0 + 64);
    *(v0 + 96) = v26;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(*(v0 + 160) + 16);
  v10(v8, &v5[v6], *(v0 + 152));
  v11 = *(v7 + *(v9 + 24));
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 64);
  *(v0 + 104) = v13;
  v14 = sub_26488F280(v8);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_32:
    sub_2648A9E64();
    v26 = *(v0 + 96);
LABEL_14:
    (*(*(v0 + 160) + 8))(v26[6] + *(*(v0 + 160) + 72) * v8, *(v0 + 152));
    sub_2648A9B44(v8, v26);
    *(v0 + 64) = v26;
LABEL_24:
    v27 = v26;
    v28 = v26;
LABEL_25:
    swift_endAccess();
    (*(v0 + 280))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
    v42 = sub_2648B8AF4();
    v43 = sub_2648B8E44();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 296);
    v46 = *(v0 + 256);
    v47 = *(v0 + 232);
    if (v44)
    {
      v61 = *(v0 + 256);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63 = v49;
      *v48 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E68, &qword_2648BAEA0);
      v60 = v45;
      v50 = v28;
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v51 = sub_2648B8BB4();
      v53 = v52;

      v54 = sub_26488EB20(v51, v53, &v63);
      v28 = v50;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_264887000, v42, v43, "Producing snapshot: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2667439C0](v49, -1, -1);
      MEMORY[0x2667439C0](v48, -1, -1);

      v60(v61, v47);
      v26 = v27;
    }

    else
    {

      v45(v46, v47);
    }

    v55 = *(v0 + 192);
    v57 = *(v0 + 136);
    v56 = *(v0 + 144);
    v58 = *(v0 + 128);
    *(v0 + 88) = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
    sub_2648B8DC4();
    (*(v57 + 8))(v56, v58);
    sub_2648A9728(v55);
    *(v0 + 312) = v27;
    *(v0 + 320) = v28;
    *(v0 + 304) = v26;
    v59 = swift_task_alloc();
    *(v0 + 328) = v59;
    *v59 = v0;
    v59[1] = sub_2648A86C8;
    v35 = *(v0 + 200);
    v38 = *(v0 + 208);
    v39 = v0 + 72;
    v36 = 0;
    v37 = 0;

    return MEMORY[0x2822005A8](v35, v36, v37, v38, v39);
  }

  v20 = v15;
  if (*(v13 + 24) >= v19)
  {
    v62 = v10;
    v29 = v11;
    if ((v12 & 1) == 0)
    {
      v30 = v14;
      sub_2648A9E64();
      v14 = v30;
    }

    goto LABEL_19;
  }

  v21 = *(v0 + 168);
  sub_2648A9784(v19, v12);
  v14 = sub_26488F280(v21);
  if ((v20 & 1) == (v22 & 1))
  {
    v62 = v10;
    v29 = v11;
LABEL_19:
    v26 = *(v0 + 104);
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    if (v20)
    {
      *(v26[7] + v14) = v29;
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v26[(v14 >> 6) + 8] |= 1 << v14;
      v34 = v14;
      v62(v26[6] + *(v32 + 72) * v14, v31, v33);
      *(v26[7] + v34) = v29;
      v35 = (*(v32 + 8))(v31, v33);
      v40 = v26[2];
      v18 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v18)
      {
        __break(1u);
        return MEMORY[0x2822005A8](v35, v36, v37, v38, v39);
      }

      v26[2] = v41;
    }

    *(v0 + 64) = v26;
    goto LABEL_24;
  }

  return sub_2648B9174();
}

uint64_t sub_2648A8E2C()
{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);

  v5 = v0[9];
  v1(v3, v2, v4);
  v6 = v5;
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_264887000, v7, v8, "Throwing error: %{public}@", v9, 0xCu);
    sub_264891214(v10, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v10, -1, -1);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  v13 = v0[37];
  v14 = v0[31];
  v15 = v0[29];

  v13(v14, v15);
  v0[10] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
  sub_2648B8DD4();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2648A905C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26488D93C;

  return sub_2648A8270(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2648A91A0(uint64_t a1)
{
  v1 = sub_2648B8B14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648A5770();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Result terminated", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return sub_2648B8D74();
}

uint64_t sub_2648A9328()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2648A9364()
{
  result = qword_27FF81E48;
  if (!qword_27FF81E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81E48);
  }

  return result;
}

void sub_2648A9438(uint64_t a1)
{
  sub_2648B88D4();
  if (v1 <= 0x3F)
  {
    sub_2648A94CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2648A94CC()
{
  if (!qword_280F79400)
  {
    v0 = sub_2648B8F04();
    if (!v1)
    {
      atomic_store(v0, &qword_280F79400);
    }
  }
}

uint64_t getEnumTagSinglePayload for RapportController.Change.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RapportController.Change.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2648A9670()
{
  result = qword_27FF835C0[0];
  if (!qword_27FF835C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF835C0);
  }

  return result;
}

uint64_t sub_2648A96C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapportController.Change(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2648A9728(uint64_t a1)
{
  v2 = type metadata accessor for RapportController.Change(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2648A9784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2648B88D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E70, &unk_2648BAEA8);
  v40 = v4;
  result = sub_2648B9024();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_2648A9B44(int64_t a1, uint64_t a2)
{
  v40 = sub_2648B88D4();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2648B8F34();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2648B8BC4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

char *sub_2648A9E64()
{
  v1 = v0;
  v31 = sub_2648B88D4();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E70, &unk_2648BAEA8);
  v3 = *v0;
  v4 = sub_2648B9014();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2648AA0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2648AA11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapportController.Change(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2648AA180()
{
  result = qword_27FF81E80;
  if (!qword_27FF81E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81E80);
  }

  return result;
}

uint64_t sub_2648AA1F4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = sub_2648B8EF4();

  return v3;
}

uint64_t sub_2648AA248(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v22 = a4;
  v13 = sub_2648B8B84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(a7 + 16))(a6, a7);
  (*(v14 + 16))(v16, a1, v13);
  v18 = *(a7 + 8);
  swift_unknownObjectRetain();

  v19 = sub_2648AAC64(v17, v7, v16, v21, a3 & 1, v22, a5, a6, v18);

  swift_unknownObjectRelease();

  return v19;
}

id sub_2648AA3B0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 16))(a5, a6);
  v13 = *(a6 + 8);
  v14 = MEMORY[0x277CCABD8];
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = a2;

  v17 = [objc_allocWithZone(v14) init];
  v18 = v15;
  [v17 setUnderlyingQueue_];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = v13;
  v20[4] = v19;
  v20[5] = v12;
  v20[6] = a3;
  v20[7] = a4;
  v25[4] = sub_2648AB490;
  v25[5] = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_2648AAA64;
  v25[3] = &block_descriptor_1;
  v21 = _Block_copy(v25);
  v22 = v16;
  v23 = v12;

  [v18 addObserverForName:v22 object:0 queue:v17 usingBlock:v21];

  swift_unknownObjectRelease();

  _Block_release(v21);
  return v18;
}

uint64_t sub_2648AA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2648B8CB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_2648AABB4(sub_2648AB4E4, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2648B8FA4();
    MEMORY[0x266742E60](0xD00000000000003FLL, 0x80000002648BBD70);
    sub_2648B9134();
    MEMORY[0x266742E60](46, 0xE100000000000000);
    result = sub_2648B9004();
    __break(1u);
  }

  return result;
}

uint64_t sub_2648AA778()
{
  sub_2648B8B34();
  sub_2648AB608(&qword_27FF81F70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81F78, &unk_2648BAF80);
  sub_2648AB650(&unk_27FF81F80, &qword_27FF81F78, &unk_2648BAF80);
  return sub_2648B8F24();
}

uint64_t sub_2648AA850(uint64_t a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2648B8E94();
  return swift_unknownObjectRelease_n();
}

uint64_t sub_2648AA894(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v13 = sub_2648B8B94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *v16 = a2;
    (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
    v18 = a2;
    v19 = sub_2648B8BA4();
    result = (*(v14 + 8))(v16, v13);
    if (v19)
    {
      MEMORY[0x28223BE20](result);
      *(&v21 - 4) = a5;
      *(&v21 - 3) = a6;
      v20 = a4;
      sub_2648AA5C4(a7, (&v21 - 6), "ScreenContinuityServices/QueueIsolatedActor.swift", 49, 2u, v22, a5, MEMORY[0x277D84F78] + 8, a6);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2648AAA64(uint64_t a1, uint64_t a2)
{
  v3 = sub_2648B8734();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2648B8724();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_2648AAB58(void *a1, void *a2, uint64_t a3)
{
  [a1 removeObserver_];
  swift_unknownObjectRelease();
}

uint64_t sub_2648AABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_2648AB50C(&v14);
}

uint64_t sub_2648AAC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v50 = a6;
  v52 = a7;
  v56 = a5;
  v44 = a4;
  v60 = a3;
  v47 = a2;
  v46 = a1;
  v48 = a9;
  v9 = sub_2648B8B24();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v45 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v57 = (&v44 - v12);
  v13 = sub_2648B8B34();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2648B8B54();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2648B8E64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648AB538();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2648AB608(&qword_27FF81F58, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81F60, &qword_2648BAF78);
  sub_2648AB650(&qword_27FF81F68, &qword_27FF81F60, &qword_2648BAF78);
  sub_2648B8F24();
  v22 = v46;
  v23 = sub_2648B8E74();
  (*(v19 + 8))(v21, v18);
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v27 = v48;
  v26[2] = v49;
  v26[3] = v27;
  v26[4] = v25;
  v26[5] = v22;
  v28 = v52;
  v26[6] = v50;
  v26[7] = v28;
  aBlock[4] = sub_2648AB5CC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26488DA30;
  aBlock[3] = &block_descriptor_21;
  v29 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v30 = v22;

  sub_2648B8B44();
  sub_2648AA778();
  sub_2648B8E84();
  _Block_release(v29);
  swift_unknownObjectRelease();
  (*(v54 + 8))(v15, v55);
  (*(v51 + 8))(v17, v53);

  if (v56)
  {
    v32 = v57;
    v31 = v58;
    v33 = *(v58 + 104);
    v34 = v59;
    v33(v57, *MEMORY[0x277D85180], v59);
    v35 = v45;
    *v45 = 0;
    v33(v35, *MEMORY[0x277D85168], v34);
    swift_unknownObjectRetain();
    v36 = v60;
    MEMORY[0x2667430D0](v60, v32, v35, ObjectType);
    v37 = *(v31 + 8);
    v37(v35, v34);
    v37(v32, v34);
  }

  else
  {
    v38 = *&v44;
    v40 = v57;
    v39 = v58;
    *v57 = 0;
    v41 = v59;
    (*(v39 + 104))(v40, *MEMORY[0x277D85168], v59);
    swift_unknownObjectRetain();
    v36 = v60;
    MEMORY[0x2667430E0](v60, v40, ObjectType, v38);
    (*(v39 + 8))(v40, v41);
  }

  sub_2648B8EA4();
  swift_unknownObjectRelease();
  v42 = sub_2648B8B84();
  (*(*(v42 - 8) + 8))(v36, v42);
  return v23;
}

uint64_t *sub_2648AB2A4(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_2648AB2D8(uint64_t *a1, int a2)
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

uint64_t sub_2648AB320(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2648AB3A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_2648AB3F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2648AB438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2648AB538()
{
  result = qword_27FF81F50;
  if (!qword_27FF81F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF81F50);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2648AB608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2648AB650(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2648AB724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82008, &qword_2648BB070);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2648B8AB4();
  __swift_allocate_value_buffer(v3, qword_27FF849C0);
  __swift_project_value_buffer(v3, qword_27FF849C0);
  v4 = sub_2648B8A74();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_2648B8AA4();
}

uint64_t sub_2648AB864@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF83750 != -1)
  {
    swift_once();
  }

  v2 = sub_2648B8AB4();
  v3 = __swift_project_value_buffer(v2, qword_27FF849C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_2648AB96C()
{
  result = static ContinuityEligibility.isiPhoneMirroringEligible.getter();
  if (!v0)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82000, &qword_2648BB068);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2648BAF90;
    *(v3 + 56) = MEMORY[0x277D837D0];
    v4 = "me executor as ";
    if (v2)
    {
      v4 = " iPhone Mirroring";
    }

    v5 = 0xD00000000000001DLL;
    if ((v2 & 1) == 0)
    {
      v5 = 0xD000000000000021;
    }

    *(v3 + 32) = v5;
    *(v3 + 40) = v4 | 0x8000000000000000;
    sub_2648B91C4();
  }

  return result;
}

unint64_t sub_2648ABA38()
{
  result = qword_27FF81FF0;
  if (!qword_27FF81FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81FF0);
  }

  return result;
}

unint64_t sub_2648ABA90()
{
  result = qword_27FF81FF8;
  if (!qword_27FF81FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81FF8);
  }

  return result;
}

uint64_t sub_2648ABAF4()
{
  v0 = swift_allocObject();
  sub_2648ABB2C();
  return v0;
}

uint64_t sub_2648ABB2C()
{
  v1 = v0;
  v2 = sub_2648B87B4();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v45 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v55 = &v45 - v11;
  v51 = sub_2648B8E54();
  v12 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2648B8EB4();
  MEMORY[0x28223BE20](v15);
  v16 = sub_2648B8B54();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2648A5950();
  v49 = "ContinuityServices";
  v50 = v17;
  sub_2648B8B44();
  v56 = MEMORY[0x277D84F90];
  sub_2648B6E3C(&qword_280F78F90, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90, MEMORY[0x277D83970]);
  sub_2648B8F24();
  (*(v12 + 104))(v14, *MEMORY[0x277D85268], v51);
  *(v0 + 16) = sub_2648B8EC4();
  v18 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter;
  *(v1 + v18) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer) = 0;
  v19 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName;
  *(v1 + v19) = sub_2648B8BF4();
  v20 = (v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
  v20[1] = 0;
  v20[2] = 0;
  *v20 = 0;
  v21 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo) = v21;
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers) = v21;
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = 0;
  v22 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v23 = sub_2648B8BF4();
  v24 = [v22 containerURLForSecurityApplicationGroupIdentifier_];

  if (v24)
  {
    v25 = v52;
    sub_2648B87E4();

    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v52;
  }

  v27 = sub_2648B8804();
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = *(v28 + 56);
  v31 = (v28 + 56);
  v30(v25, v26, 1, v27);
  v32 = v25;
  v33 = v55;
  sub_264893A78(v32, v55, &qword_27FF82010, &qword_2648BB078);
  v34 = v53;
  sub_264893A10(v33, v53, &qword_27FF82010, &qword_2648BB078);
  if ((*(v29 + 48))(v34, 1, v27) == 1)
  {
    sub_264891214(v33, &qword_27FF82010, &qword_2648BB078);
    sub_264891214(v34, &qword_27FF82010, &qword_2648BB078);
    v35 = 1;
    v36 = v54;
  }

  else
  {
    v37 = *MEMORY[0x277CC91D8];
    v38 = v46;
    v39 = v47;
    v40 = *(v47 + 104);
    v52 = v31;
    v41 = v30;
    v42 = v48;
    v40(v46, v37, v48);
    sub_2648AC210();
    v36 = v54;
    sub_2648B87F4();
    v43 = v42;
    v30 = v41;
    (*(v39 + 8))(v38, v43);
    sub_264891214(v55, &qword_27FF82010, &qword_2648BB078);
    (*(v29 + 8))(v34, v27);
    v35 = 0;
  }

  v30(v36, v35, 1, v27);
  sub_264893A78(v36, v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, &qword_27FF82010, &qword_2648BB078);
  return v1;
}

unint64_t sub_2648AC210()
{
  result = qword_280F78FB8[0];
  if (!qword_280F78FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F78FB8);
  }

  return result;
}

uint64_t sub_2648AC264(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v34 = sub_2648B8804();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = sub_2648B8B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2648B8B84();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v16 = &v30 - v15;
  v17 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer;
  v35 = v2;
  if (!*(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer))
  {
    v31 = result;
    v18 = v14;
    sub_2648B8B64();
    *v8 = 120;
    (*(v6 + 104))(v8, *MEMORY[0x277D85188], v5);
    sub_2648B8B74();
    (*(v6 + 8))(v8, v5);
    v19 = *(v18 + 8);
    v32 = v18 + 8;
    v20 = v31;
    v19(v12, v31);
    v21 = v34;
    (*(v3 + 16))(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v34);
    v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v23 = swift_allocObject();
    (*(v3 + 32))(v23 + v22, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v24 = type metadata accessor for SessionManager(0);
    v25 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager, &unk_2648BB1A8);
    v26 = v24;
    v27 = v35;
    v28 = sub_2648AA248(v16, 0, 1, sub_2648B7868, v23, v26, v25);

    v19(v16, v20);
    v29 = *(v27 + v17);
    *(v27 + v17) = v28;
    return sub_2648B6CB0(v29);
  }

  return result;
}

uint64_t sub_2648AC5D0(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v27 - v7;
  v8 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer);
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer) = 0;
  sub_2648B6CB0(v8);
  v9 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v10 = *(v1 + v9);

  sub_2648ACC88(a1);
  sub_2648AC8EC(a1);
  v29 = v9;
  v11 = *(v1 + v9);

  LOBYTE(a1) = sub_2648B2868(v10, v11);

  if ((a1 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = (v4 + 8);
    v27[1] = v6 + 8;
    v27[2] = v6 + 16;
    v28 = v14;

    for (i = 0; v18; result = (*(v6 + 8))(v24, v25))
    {
      v22 = i;
LABEL_10:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v30;
      v25 = v31;
      (*(v6 + 16))(v30, *(v28 + 56) + *(v6 + 72) * (v23 | (v22 << 6)), v31);
      v34 = *(v2 + v29);

      v26 = v32;
      sub_2648B8DC4();
      (*v20)(v26, v33);
    }

    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
      }

      v18 = *(v15 + 8 * v22);
      ++i;
      if (v18)
      {
        i = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2648AC8EC(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v32 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - v6;
  v7 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v33 = v1;
  v8 = *(v1 + v7);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v38 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v35;
  while (v12)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v38;
    v21 = *(v38 + 48);
    v22 = sub_2648B88D4();
    v23 = *(v22 - 8);
    v39 = v22;
    v40 = v23;
    v24 = v34;
    (*(v23 + 16))(v34, v21 + *(v23 + 72) * v19, v22);
    v25 = *(v20 + 56);
    v26 = (type metadata accessor for CompanionDevice.SessionInfo(0) - 8);
    v27 = v25 + *(*v26 + 72) * v19;
    v28 = v36;
    sub_2648B6B80(v27, v24 + *(v36 + 48), type metadata accessor for CompanionDevice.SessionInfo);
    sub_264893A78(v24, v16, &qword_27FF82118, &unk_2648BB578);
    v29 = v16 + *(v28 + 48);
    v30 = v37;
    sub_264893A10(v29 + v26[7], v37, &qword_27FF81BE8, &qword_2648BB0C0);
    sub_2648B6C50(v29, type metadata accessor for CompanionDevice.SessionInfo);
    v31 = sub_2648B8874();
    LODWORD(v26) = (*(*(v31 - 8) + 48))(v30, 1, v31);
    sub_264891214(v30, &qword_27FF81BE8, &qword_2648BB0C0);
    result = (*(v40 + 8))(v16, v39);
    if (v26 == 1)
    {

      return sub_2648AC264(v32);
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648ACC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = v57 - v3;
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = v57 - v9;
  MEMORY[0x28223BE20](v8);
  v81 = v57 - v10;
  v11 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Session(0);
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v62 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2648B88D4();
  v77 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v80 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2648B8814();
  v79 = v5;
  v18 = v17;
  v20 = v19;
  sub_2648B8764();
  swift_allocObject();
  sub_2648B8754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82128, &qword_2648BB590);
  sub_2648B7A34();
  sub_2648B8744();
  v57[1] = 0;

  sub_264894BFC(v18, v20);
  v56 = v82;
  v21 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  swift_beginAccess();
  v58 = v1;
  *(v1 + v21) = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82140, &qword_2648BB598);
  result = sub_2648B9014();
  v23 = result;
  v24 = 0;
  v76 = v56;
  v27 = *(v56 + 64);
  v26 = v56 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v69 = v77 + 16;
  v32 = (v79 + 16);
  v59 = (v79 + 8);
  v68 = (v79 + 56);
  v67 = result + 64;
  v66 = (v77 + 32);
  v33 = v63;
  v34 = v62;
  v70 = result;
  v65 = (v79 + 16);
  v71 = v15;
  if (v30)
  {
    while (1)
    {
      v35 = __clz(__rbit64(v30));
      v78 = (v30 - 1) & v30;
LABEL_10:
      v38 = v35 | (v24 << 6);
      v39 = v76;
      v40 = *(v76 + 48);
      v41 = *(v77 + 16);
      v79 = *(v77 + 72) * v38;
      v41(v80, v40 + v79, v15);
      sub_2648B6B80(*(v39 + 56) + *(v72 + 72) * v38, v34, type metadata accessor for Session);
      v42 = *v32;
      (*v32)(v81, v34, v4);
      if (*(v34 + *(v73 + 20)))
      {
        v42(v33, v34 + *(v73 + 24), v4);
        v43 = 0;
      }

      else
      {
        v44 = v60;
        sub_2648B8844();
        v45 = v61;
        sub_2648B8864();
        v64 = sub_2648B8834();
        v46 = *v59;
        (*v59)(v45, v4);
        v46(v44, v4);
        if (v64)
        {
          v43 = 1;
          v33 = v63;
          v34 = v62;
        }

        else
        {
          v47 = v62;
          v33 = v63;
          sub_2648B8844();
          v43 = 0;
          v34 = v47;
        }
      }

      v48 = v79;
      (*v68)(v33, v43, 1, v4);
      v49 = v74;
      sub_264891E74(v81, v33, v74);
      sub_2648B6C50(v34, type metadata accessor for Session);
      *(v67 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v23 = v70;
      v50 = *(v70 + 48) + v48;
      v15 = v71;
      (*v66)(v50, v80, v71);
      result = sub_2648B6BE8(v49, *(v23 + 56) + *(v75 + 72) * v38, type metadata accessor for CompanionDevice.SessionInfo);
      v51 = *(v23 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        break;
      }

      *(v23 + 16) = v53;
      v32 = v65;
      v30 = v78;
      if (!v78)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v36 = v24;
    while (1)
    {
      v24 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v24 >= v31)
      {

        v54 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
        v55 = v58;
        swift_beginAccess();
        *(v55 + v54) = v23;
      }

      v37 = *(v26 + 8 * v24);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v78 = (v37 - 1) & v37;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2648AD448(uint64_t a1)
{
  v3 = sub_2648B8804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v7 = (v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
  if (!*(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer))
  {
    v8 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter);
    v9 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName);
    (*(v4 + 16))(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v12 = type metadata accessor for SessionManager(0);
    v13 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager, &unk_2648BB1A8);
    v14 = sub_2648AA3B0(v8, v9, sub_2648B7BD8, v11, v12, v13);
    v16 = v15;
    v18 = v17;

    v19 = *v7;
    v20 = v7[1];
    v21 = v7[2];
    *v7 = v14;
    v7[1] = v16;
    v7[2] = v18;
    return sub_2648B6D1C(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2648AD624(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v25 = a2;
  sub_2648ACC88(a2);
  v10 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v11 = *(a1 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  v31 = v11;

  v32 = a1;
  v28 = v16;
  result = swift_beginAccess();
  v18 = 0;
  v19 = (v13 + 63) >> 6;
  v20 = (v4 + 8);
  v26 = v7 + 8;
  for (i = v7 + 16; v15; result = (*(v7 + 8))(v9, v6))
  {
    v21 = v18;
LABEL_9:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v7 + 16))(v9, *(v31 + 56) + *(v7 + 72) * (v22 | (v21 << 6)), v6);
    v33 = *(v32 + v28);

    v23 = v29;
    sub_2648B8DC4();
    (*v20)(v23, v30);
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return sub_2648AC8EC(v25);
    }

    v15 = *(v12 + 8 * v21);
    ++v18;
    if (v15)
    {
      v18 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648AD8FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2648B88D4();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  sub_2648ADAC0(v6, v9);
  result = swift_endAccess();
  if (!*(*(v2 + v12) + 16))
  {
    v14 = (v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
    v15 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
    v16 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 8);
    v17 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 16);
    v14[1] = 0;
    v14[2] = 0;
    *v14 = 0;
    return sub_2648B6D1C(v15, v16, v17);
  }

  return result;
}

uint64_t sub_2648ADAC0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_264891214(a1, &qword_27FF82020, &qword_2648BB088);
    sub_2648B37BC(a2, v7);
    v12 = sub_2648B88D4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_264891214(v7, &qword_27FF82020, &qword_2648BB088);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2648B43E4(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2648B88D4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2648ADCF4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Session(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_264891214(a1, &qword_27FF82050, &qword_2648BB0B8);
    sub_2648B3974(a2, v7);
    v12 = sub_2648B88D4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_264891214(v7, &qword_27FF82050, &qword_2648BB0B8);
  }

  else
  {
    sub_2648B6BE8(a1, v10, type metadata accessor for Session);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2648B45F4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2648B88D4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2648ADF14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CompanionDevice.SessionInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_264891214(a1, &qword_27FF81BF8, &qword_2648B9CE0);
    sub_2648B3B5C(a2, v7);
    v12 = sub_2648B88D4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_264891214(v7, &qword_27FF81BF8, &qword_2648B9CE0);
  }

  else
  {
    sub_2648B6BE8(a1, v10, type metadata accessor for CompanionDevice.SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2648B4860(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2648B88D4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2648AE134@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - v6;
  v8 = sub_2648B8804();
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82028, &qword_2648BB090);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v69 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82038, &qword_2648BB0A0);
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v66 = sub_2648B88D4();
  v20 = *(v66 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v66);
  v53 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  sub_2648B88C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82040, &unk_2648BB0A8);
  (*(v12 + 104))(v14, *MEMORY[0x277D858A0], v11);
  v61 = v19;
  sub_2648B8D94();
  v25 = v14;
  v27 = v67;
  v26 = v68;
  (*(v12 + 8))(v25, v11);
  v28 = v59;
  sub_264893A10(v59 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v7, &qword_27FF82010, &qword_2648BB078);
  if ((*(v26 + 48))(v7, 1, v27) == 1)
  {
    sub_264891214(v7, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    v29 = swift_allocError();
    *v30 = 3;
    v71 = v29;
    v31 = v60;
    sub_2648B8DD4();
    (*(v69 + 8))(v16, v31);
    (*(v20 + 8))(v24, v66);
  }

  else
  {
    v32 = v20;
    v55 = v16;
    v33 = v66;
    (*(v26 + 32))(v65, v7, v27);
    v34 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
    swift_beginAccess();
    if (!*(*(v28 + v34) + 16))
    {
      v35 = v65;
      sub_2648AD448(v65);
      sub_2648ACC88(v35);
      sub_2648AC8EC(v35);
    }

    v36 = v32;
    v52 = *(v32 + 16);
    v37 = v53;
    v38 = v24;
    v52(v53, v24, v33);
    v39 = v69;
    v40 = v54;
    v41 = v60;
    (*(v69 + 16))(v54, v55, v60);
    (*(v39 + 56))(v40, 0, 1, v41);
    swift_beginAccess();
    sub_2648ADAC0(v40, v37);
    swift_endAccess();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = v38;
    v44 = v38;
    v45 = v66;
    v52(v37, v44, v66);
    v46 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v42;
    (*(v36 + 32))(v47 + v46, v37, v45);
    v48 = v55;
    sub_2648B8DA4();
    v49 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
    swift_beginAccess();
    v70 = *(v28 + v49);

    v50 = v56;
    sub_2648B8DC4();
    (*(v57 + 8))(v50, v58);
    (*(v68 + 8))(v65, v67);
    (*(v69 + 8))(v48, v41);
    (*(v36 + 8))(v43, v45);
  }

  return (*(v62 + 32))(v64, v61, v63);
}

unint64_t sub_2648AE930()
{
  result = qword_27FF82048;
  if (!qword_27FF82048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82048);
  }

  return result;
}

uint64_t sub_2648AE984(uint64_t a1, uint64_t a2)
{
  v3 = sub_2648B88D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_2648B8D14();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_26488BD30(0, 0, v8, &unk_2648BB5B8, v13);
  }

  return result;
}

uint64_t sub_2648AEB84()
{
  v1 = *(sub_2648B88D4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2648AE984(v2, v3);
}

uint64_t sub_2648AEBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for SessionManager(0);
  sub_2648B6E3C(&qword_280F78F80, type metadata accessor for SessionManager, &unk_2648BB180);
  v7 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_2648AECA4, v7, v6);
}

uint64_t sub_2648AECA4()
{
  sub_2648AD8FC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2648AED04(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v44 = a1;
  v43 = sub_2648B8804();
  v41 = *(v43 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648B8B24();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_2648B8B84();
  v40 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v35 - v11;
  v12 = sub_2648B88D4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  v20 = *(*(v3 + v19) + 16);
  (*(v13 + 16))(v16, v44, v12);
  swift_beginAccess();
  sub_2648B5334(v18, v16);
  (*(v13 + 8))(v18, v12);
  result = swift_endAccess();
  if (!v20)
  {
    sub_2648B8B64();
    *v7 = 60;
    v23 = v35;
    v22 = v36;
    (*(v35 + 104))(v7, *MEMORY[0x277D85188], v36);
    v24 = v37;
    sub_2648B8B74();
    (*(v23 + 8))(v7, v22);
    v44 = *(v40 + 8);
    v25 = v42;
    v44(v10, v42);
    v26 = v41;
    v27 = v38;
    v28 = v43;
    (*(v41 + 16))(v38, v39, v43);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = swift_allocObject();
    (*(v26 + 32))(v30 + v29, v27, v28);
    v31 = type metadata accessor for SessionManager(0);
    v32 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager, &unk_2648BB1A8);
    v33 = sub_2648AA248(v24, 0x404E000000000000, 0, sub_2648B7850, v30, v31, v32);

    v44(v24, v25);
    v34 = *(v3 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer);
    *(v3 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = v33;
    return sub_2648B6CB0(v34);
  }

  return result;
}

uint64_t sub_2648AF1A4(uint64_t a1)
{
  v77 = a1;
  v2 = type metadata accessor for Session(0);
  v81 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v73 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v84 = &v73 - v9;
  v10 = sub_2648B88D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v90 = &v73 - v16;
  v83 = sub_2648B8874();
  v17 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648B8864();
  v19 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  v91 = v20;

  v94 = v25;
  v95 = v1;
  swift_beginAccess();
  v26 = 0;
  v27 = v10;
  v28 = (v22 + 63) >> 6;
  v93 = v11 + 16;
  v89 = v11 + 32;
  v76 = v17;
  v74 = (v17 + 16);
  v88 = (v11 + 8);
  v85 = v2;
  v92 = v10;
  v78 = v11;
  if (v24)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      swift_beginAccess();

      sub_2648B6934(v71, v77);
      (*(v76 + 8))(v82, v83);
    }

    v24 = *(v21 + 8 * v31);
    ++v26;
    if (v24)
    {
      v30 = v2;
      v26 = v31;
LABEL_12:
      v32 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v33 = *(v91 + 48);
      v87 = *(v11 + 72);
      v34 = *(v11 + 16);
      v35 = v90;
      v34(v90, v33 + v87 * (v32 | (v26 << 6)), v27);
      v29 = v96;
      (*(v11 + 32))(v96, v35, v27);
      v36 = *(v95 + v94);
      if (*(v36 + 16))
      {

        v37 = sub_26488F280(v29);
        if (v38)
        {
          v39 = *(v81 + 72);
          v40 = v80;
          sub_2648B6B80(*(v36 + 56) + v39 * v37, v80, type metadata accessor for Session);

          v41 = v40;
          v42 = v84;
          v2 = v85;
          sub_2648B6BE8(v41, v84, type metadata accessor for Session);
          if (*(v42 + *(v2 + 20)))
          {
            sub_2648B6C50(v42, type metadata accessor for Session);
            v27 = v92;
            (*v88)(v96, v92);
          }

          else
          {
            v73 = v39;
            v34(v86, v96, v92);
            v43 = v2;
            v44 = v42;
            v45 = *v74;
            v46 = v75;
            v47 = v83;
            (*v74)(v75, v44, v83);
            v45((v46 + *(v43 + 24)), v82, v47);
            *(v46 + *(v43 + 20)) = 0;
            v49 = v94;
            v48 = v95;
            swift_beginAccess();
            sub_2648B6BE8(v46, v79, type metadata accessor for Session);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v48;
            v52 = isUniquelyReferenced_nonNull_native;
            v53 = *(v48 + v49);
            v98 = v53;
            *(v51 + v49) = 0x8000000000000000;
            v55 = sub_26488F280(v86);
            v56 = v53[2];
            v57 = (v54 & 1) == 0;
            v58 = v56 + v57;
            if (__OFADD__(v56, v57))
            {
              goto LABEL_31;
            }

            v59 = v54;
            if (v53[3] >= v58)
            {
              if ((v52 & 1) == 0)
              {
                sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
              }
            }

            else
            {
              sub_2648B3348(v58, v52, type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
              v60 = sub_26488F280(v86);
              if ((v59 & 1) != (v61 & 1))
              {
                goto LABEL_33;
              }

              v55 = v60;
            }

            v62 = v73;
            v63 = v98;
            if (v59)
            {
              sub_2648B79CC(v79, v98[7] + v55 * v73, type metadata accessor for Session);
              v64 = *v88;
              v65 = v92;
              (*v88)(v86, v92);
            }

            else
            {
              v98[(v55 >> 6) + 8] |= 1 << v55;
              v66 = v86;
              v67 = v92;
              v34((v63[6] + v55 * v87), v86, v92);
              sub_2648B6BE8(v79, v63[7] + v55 * v62, type metadata accessor for Session);
              v64 = *v88;
              (*v88)(v66, v67);
              v68 = v63[2];
              v69 = __OFADD__(v68, 1);
              v70 = v68 + 1;
              if (v69)
              {
                goto LABEL_32;
              }

              v63[2] = v70;
              v65 = v92;
            }

            *(v95 + v94) = v63;

            swift_endAccess();
            sub_2648B6C50(v84, type metadata accessor for Session);
            v64(v96, v65);
            v2 = v85;
            v27 = v65;
          }

          v11 = v78;
          if (!v24)
          {
            continue;
          }

          goto LABEL_7;
        }

        v29 = v96;
      }

      v27 = v92;
      (*v88)(v29, v92);
      v2 = v30;
      if (!v24)
      {
        continue;
      }

LABEL_7:
      v30 = v2;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2648B9174();
  __break(1u);

  v98 = 0;
  v99 = 0xE000000000000000;
  sub_2648B8FA4();
  MEMORY[0x266742E60](0xD000000000000011, 0x80000002648BC080);
  v97 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
  sub_2648B8FE4();
  result = sub_2648B9004();
  __break(1u);
  return result;
}

uint64_t sub_2648AFB38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  sub_2648B6168(a1, v5);
  sub_264891214(v5, &qword_27FF81BD0, &unk_2648BAEC0);
  result = swift_endAccess();
  if (!*(*(v1 + v6) + 16))
  {
    v8 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer);
    *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = 0;
    return sub_2648B6CB0(v8);
  }

  return result;
}

uint64_t sub_2648AFC34(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v101 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v79 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v74 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v98 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v74 - v8;
  v99 = sub_2648B88D4();
  v85 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2648B8874();
  v10 = *(v97 - 8);
  v11 = MEMORY[0x28223BE20](v97);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v83 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v19 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v74 - v26;
  v28 = sub_2648B8804();
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  v34 = v33;
  sub_264893A10(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v27, &qword_27FF82010, &qword_2648BB078);
  if ((*(v34 + 48))(v27, 1, v32) == 1)
  {
    sub_264891214(v27, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    swift_allocError();
    *v35 = 3;
    return swift_willThrow();
  }

  v37 = *(v34 + 32);
  v80 = v30;
  v37(v30, v27, v32);
  v38 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v75 = v38;
  if (!*(*(v2 + v38) + 16))
  {
    sub_2648ACC88(v80);
  }

  v39 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v92 = v39;
  v40 = *(v2 + v39);
  v41 = *(v40 + 16);
  v42 = v101;
  v78 = v34;
  if (v41)
  {

    v43 = sub_26488F280(v42);
    if (v44)
    {
      sub_2648B6B80(*(v40 + 56) + *(v90 + 72) * v43, v22, type metadata accessor for CompanionDevice.SessionInfo);

      sub_2648B6BE8(v22, v24, type metadata accessor for CompanionDevice.SessionInfo);
      sub_264893A10(&v24[*(v91 + 20)], v18, &qword_27FF81BE8, &qword_2648BB0C0);
      if ((*(v10 + 48))(v18, 1, v97) == 1)
      {
        sub_264891214(v18, &qword_27FF81BE8, &qword_2648BB0C0);
        sub_2648AE930();
        swift_allocError();
        *v45 = 0;
        swift_willThrow();
        sub_2648B6C50(v24, type metadata accessor for CompanionDevice.SessionInfo);
        return (*(v78 + 8))(v80, v32);
      }

      sub_2648B6C50(v24, type metadata accessor for CompanionDevice.SessionInfo);
      sub_264891214(v18, &qword_27FF81BE8, &qword_2648BB0C0);
    }

    else
    {
    }
  }

  v76 = v32;
  v46 = v89;
  sub_2648B8864();
  v81 = v10;
  v85 = *(v85 + 16);
  v47 = v82;
  (v85)(v82, v42, v99);
  v77 = *(v81 + 16);
  v48 = v86;
  v49 = v97;
  v77(v86, v46, v97);
  v50 = type metadata accessor for Session(0);
  sub_2648B8864();
  *(v48 + *(v50 + 20)) = 0;
  (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
  swift_beginAccess();
  sub_2648ADCF4(v48, v47);
  swift_endAccess();
  (v85)(v47, v101, v99);
  v51 = v81;
  v52 = v84;
  v77(v84, v46, v49);
  v53 = v83;
  (*(v51 + 56))(v83, 1, 1, v49);
  v54 = v87;
  sub_264891E74(v52, v53, v87);
  (*(v90 + 56))(v54, 0, 1, v91);
  swift_beginAccess();
  sub_2648ADF14(v54, v47);
  swift_endAccess();

  v56 = v80;
  v57 = v88;
  sub_2648B6934(v55, v80);
  if (v57)
  {

    (*(v51 + 8))(v46, v49);
    return (*(v78 + 8))(v56, v76);
  }

  else
  {
    v87 = 0;

    v99 = v2;
    v58 = *(v2 + v75);
    v59 = v58 + 64;
    v60 = 1 << *(v58 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v58 + 64);
    v63 = (v60 + 63) >> 6;
    v90 = v98 + 16;
    v64 = (v79 + 8);
    v88 = v98 + 8;
    v91 = v58;

    for (i = 0; v62; result = (*(v69 + 8))(v71, v70))
    {
      v66 = i;
LABEL_22:
      v68 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v69 = v98;
      v71 = v93;
      v70 = v94;
      (*(v98 + 16))(v93, *(v91 + 56) + *(v98 + 72) * (v68 | (v66 << 6)), v94);
      v100 = *(v99 + v92);

      v72 = v95;
      sub_2648B8DC4();
      (*v64)(v72, v96);
    }

    v67 = v99;
    while (1)
    {
      v66 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        return result;
      }

      if (v66 >= v63)
      {
        break;
      }

      v62 = *(v59 + 8 * v66);
      ++i;
      if (v62)
      {
        i = v66;
        goto LABEL_22;
      }
    }

    [*(v67 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter) postNotificationName:*(v67 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName) object:0];
    v73 = v80;
    if (*(*(v67 + v75) + 16))
    {
      sub_2648AC264(v80);
    }

    sub_2648AED04(v101, v73);
    (*(v81 + 8))(v89, v97);
    return (*(v78 + 8))(v73, v76);
  }
}

uint64_t sub_2648B0848(uint64_t a1)
{
  v2 = v1;
  v122 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v100 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v93 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v112 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  MEMORY[0x28223BE20](v7 - 8);
  v103 = &v93 - v8;
  v113 = sub_2648B88D4();
  v102 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v116 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2648B8874();
  v117 = *(v120 - 8);
  v10 = MEMORY[0x28223BE20](v120);
  v106 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v115 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v101 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v93 - v19;
  v21 = type metadata accessor for Session(0);
  v118 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v119 = &v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v93 - v27;
  v29 = sub_2648B8804();
  MEMORY[0x28223BE20](v29);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  v35 = v34;
  sub_264893A10(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v28, &qword_27FF82010, &qword_2648BB078);
  if ((*(v35 + 48))(v28, 1, v33) == 1)
  {
    sub_264891214(v28, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    swift_allocError();
    *v36 = 3;
    return swift_willThrow();
  }

  v99 = v35;
  (*(v35 + 32))(v31, v28, v33);
  v38 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v98 = v38;
  v39 = *(*(v2 + v38) + 16);
  v114 = v2;
  if (!v39)
  {
    sub_2648ACC88(v31);
    v2 = v114;
  }

  v107 = v31;
  v40 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  swift_beginAccess();
  v41 = *(v2 + v40);
  if (!*(v41 + 16))
  {
    goto LABEL_10;
  }

  v42 = sub_26488F280(v122);
  if ((v43 & 1) == 0)
  {

LABEL_10:
    sub_2648AE930();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    return (*(v99 + 8))(v107, v33);
  }

  v97 = v33;
  sub_2648B6B80(*(v41 + 56) + *(v118 + 72) * v42, v24, type metadata accessor for Session);

  v44 = v119;
  sub_2648B6BE8(v24, v119, type metadata accessor for Session);
  if (*(v44 + *(v21 + 20)))
  {
    v45 = v117;
    v46 = v120;
    (*(v117 + 16))(v20, v44 + *(v21 + 24), v120);
LABEL_15:
    (*(v45 + 56))(v20, 0, 1, v46);
    sub_264891214(v20, &qword_27FF81BE8, &qword_2648BB0C0);
    sub_2648AE930();
    swift_allocError();
    *v74 = 2;
    swift_willThrow();
    sub_2648B6C50(v44, type metadata accessor for Session);
    v75 = *(v99 + 8);
    v76 = v107;
    return v75(v76, v97);
  }

  v48 = v115;
  sub_2648B8844();
  sub_2648B8864();
  LODWORD(v96) = sub_2648B8834();
  v45 = v117;
  v49 = v117 + 8;
  v50 = *(v117 + 8);
  v51 = v14;
  v52 = v48;
  v46 = v120;
  v50(v51, v120);
  v95 = v49;
  v94 = v50;
  v50(v52, v46);
  if ((v96 & 1) == 0)
  {
    v44 = v119;
    sub_2648B8844();
    goto LABEL_15;
  }

  v53 = *(v45 + 56);
  v93 = v45 + 56;
  v96 = v53;
  v53(v20, 1, 1, v46);
  sub_264891214(v20, &qword_27FF81BE8, &qword_2648BB0C0);
  v54 = v122;
  sub_2648AFB38(v122);
  v55 = v106;
  sub_2648B8864();
  v102 = *(v102 + 16);
  (v102)(v116, v54, v113);
  v56 = *(v45 + 16);
  v57 = v103;
  v58 = v119;
  v56(v103, v119, v120);
  v56(&v57[*(v21 + 24)], v55, v120);
  v57[*(v21 + 20)] = 1;
  (*(v118 + 56))(v57, 0, 1, v21);
  swift_beginAccess();
  v59 = v57;
  v60 = v116;
  sub_2648ADCF4(v59, v116);
  swift_endAccess();
  (v102)(v60, v122, v113);
  v61 = v120;
  v62 = v115;
  v56(v115, v58, v120);
  v63 = v101;
  v56(v101, v55, v61);
  v96(v63, 0, 1, v61);
  v64 = v104;
  v65 = v63;
  v66 = v114;
  sub_264891E74(v62, v65, v104);
  v67 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v67 - 8) + 56))(v64, 0, 1, v67);
  v68 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  sub_2648ADF14(v64, v116);
  swift_endAccess();

  v70 = v107;
  v71 = v105;
  sub_2648B6934(v69, v107);
  if (v71)
  {

    v72 = v55;
    v73 = v61;
LABEL_28:
    v94(v72, v73);
    sub_2648B6C50(v119, type metadata accessor for Session);
    v75 = *(v99 + 8);
    v76 = v70;
    return v75(v76, v97);
  }

  v77 = *(v66 + v98);
  v78 = *(v77 + 64);
  v116 = v77 + 64;
  v79 = 1 << *(v77 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & v78;
  v115 = ((v79 + 63) >> 6);
  v122 = v112 + 16;
  v117 = v112 + 8;
  v118 = v100 + 8;
  v82 = v77;

  v83 = 0;
  for (i = v68; v81; v70 = v107)
  {
    v85 = v83;
LABEL_25:
    v88 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v89 = v112;
    v90 = v108;
    v91 = v109;
    (*(v112 + 16))(v108, *(v82 + 56) + *(v112 + 72) * (v88 | (v85 << 6)), v109);
    v121 = *(v114 + i);

    v92 = v110;
    sub_2648B8DC4();
    (*v118)(v92, v111);
    result = (*(v89 + 8))(v90, v91);
  }

  v86 = i;
  v87 = v114;
  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v85 >= v115)
    {

      [*(v87 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter) postNotificationName:*(v87 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName) object:0];
      v72 = v106;
      v73 = v120;
      goto LABEL_28;
    }

    v81 = *(v116 + 8 * v85);
    ++v83;
    if (v81)
    {
      v83 = v85;
      i = v86;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648B1584()
{
  sub_264891214(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, &qword_27FF82010, &qword_2648BB078);

  sub_2648B6CB0(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer));
  sub_2648B6D1C(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer), *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 8), *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 16));

  sub_2648B6CB0(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer));
  return v0;
}

uint64_t sub_2648B165C()
{
  sub_2648B1584();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2648B16B4()
{
  v0 = type metadata accessor for SessionManager(0);
  v1 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager, &unk_2648BB1A8);

  return sub_2648AA1F4(v0, v1);
}

uint64_t sub_2648B173C(uint64_t a1)
{
  v2 = sub_2648B77FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1778(uint64_t a1)
{
  v2 = sub_2648B77FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B17B4(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820F0, &qword_2648BB548);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820F8, &qword_2648BB550);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82100, &unk_2648BB558);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B7754();
  sub_2648B9234();
  if (v18)
  {
    v20 = 1;
    sub_2648B77A8();
    sub_2648B90C4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_2648B77FC();
    sub_2648B90C4();
    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2648B1A68()
{
  if (*v0)
  {
    return 0x6465646E65;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_2648B1A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_2648B9144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2648B9144();

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

uint64_t sub_2648B1B70(uint64_t a1)
{
  v2 = sub_2648B7754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1BAC(uint64_t a1)
{
  v2 = sub_2648B7754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B1BE8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2648B1C24(uint64_t a1)
{
  v2 = sub_2648B77A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1C60(uint64_t a1)
{
  v2 = sub_2648B77A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B1C9C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2648B7318(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_2648B1CF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820C0, &qword_2648BB520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B721C();
  sub_2648B9234();
  v14 = 0;
  sub_2648B8874();
  sub_2648B6E3C(&qword_27FF820C8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2648B9104();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for Session(0) + 20));
    v12 = 1;
    sub_2648B72C4();
    sub_2648B9104();
    v11 = 2;
    sub_2648B9104();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2648B1F08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_2648B8874();
  v31 = *(v34 - 8);
  v4 = MEMORY[0x28223BE20](v34);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820B0, &qword_2648BB518);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Session(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B721C();
  sub_2648B9224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v6;
  v29 = a1;
  v27 = v10;
  v13 = v12;
  v14 = v31;
  v39 = 0;
  v15 = sub_2648B6E3C(&qword_27FF820B8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v16 = v32;
  sub_2648B90A4();
  v26 = v15;
  v17 = *(v14 + 32);
  v18 = v16;
  v19 = v34;
  v17(v12, v18, v34);
  v37 = 1;
  sub_2648B7270();
  sub_2648B90A4();
  v20 = v19;
  v32 = v17;
  v22 = v27;
  v21 = v28;
  v13[*(v27 + 20)] = v38;
  v36 = 2;
  sub_2648B90A4();
  v23 = v13;
  v24 = v29;
  (*(v33 + 8))(v9, v35);
  (v32)(v23 + *(v22 + 24), v21, v20);
  sub_2648B6B80(v23, v30, type metadata accessor for Session);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_2648B6C50(v23, type metadata accessor for Session);
}

uint64_t sub_2648B2340()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 1716482913;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2648B238C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2648B80D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2648B23C0(uint64_t a1)
{
  v2 = sub_2648B721C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B23FC(uint64_t a1)
{
  v2 = sub_2648B721C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B2470(uint64_t a1, id *a2)
{
  result = sub_2648B8C04();
  *a2 = 0;
  return result;
}

uint64_t sub_2648B24E8(uint64_t a1, id *a2)
{
  v3 = sub_2648B8C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2648B2568@<X0>(uint64_t *a2@<X8>)
{
  sub_2648B8C24();
  v3 = sub_2648B8BF4();

  *a2 = v3;
  return result;
}

uint64_t sub_2648B25AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2648B8BF4();

  *a2 = v3;
  return result;
}

uint64_t sub_2648B25F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2648B8C24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2648B2620(uint64_t a1)
{
  v2 = sub_2648B6E3C(&qword_27FF820A0, type metadata accessor for Name, &unk_2648BB488);
  v3 = sub_2648B6E3C(&qword_27FF820A8, type metadata accessor for Name, &unk_2648BB428);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2648B26DC()
{
  v0 = sub_2648B8C24();
  v1 = MEMORY[0x266742E90](v0);

  return v1;
}

uint64_t sub_2648B2718(uint64_t a1)
{
  sub_2648B8C24();
  sub_2648B8C54();
}

uint64_t sub_2648B276C(uint64_t a1)
{
  sub_2648B8C24();
  sub_2648B91D4();
  sub_2648B8C54();
  v1 = sub_2648B9214();

  return v1;
}

uint64_t sub_2648B27E0(void *a1, uint64_t *a2)
{
  v2 = sub_2648B8C24();
  v4 = v3;
  if (v2 == sub_2648B8C24() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2648B9144();
  }

  return v7 & 1;
}

uint64_t sub_2648B2868(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v71 = *(v64 - 8);
  v4 = MEMORY[0x28223BE20](v64);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v55 - v7;
  v72 = sub_2648B88D4();
  v63 = *(v72 - 8);
  v8 = MEMORY[0x28223BE20](v72);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82110, &qword_2648BB570);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = a2;
  v17 = 0;
  v59 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v56 = v19;
  v57 = v63 + 16;
  v67 = &v55 - v15;
  v68 = (v63 + 32);
  v60 = (v63 + 8);
  v58 = v6;
  while (v23)
  {
    v69 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v30 = v59;
    v32 = v62;
    v31 = v63;
    v33 = v72;
    (*(v63 + 16))(v62, *(v59 + 48) + *(v63 + 72) * v25, v72);
    v34 = v70;
    sub_2648B6B80(*(v30 + 56) + *(v71 + 72) * v25, v70, type metadata accessor for CompanionDevice.SessionInfo);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
    v36 = *(v35 + 48);
    v37 = *(v31 + 32);
    v38 = v66;
    v37(v66, v32, v33);
    v39 = &v38[v36];
    v40 = v38;
    sub_2648B6BE8(v34, v39, type metadata accessor for CompanionDevice.SessionInfo);
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
    v6 = v58;
    v16 = v67;
LABEL_17:
    sub_264893A78(v40, v16, &qword_27FF82110, &qword_2648BB570);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
    v42 = (*(*(v41 - 8) + 48))(v16, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v65;
    v46 = v72;
    (*v68)(v65, v16, v72);
    sub_2648B6BE8(&v16[v44], v6, type metadata accessor for CompanionDevice.SessionInfo);
    v47 = v61;
    v48 = sub_26488F280(v45);
    LOBYTE(v44) = v49;
    (*v60)(v45, v46);
    if ((v44 & 1) == 0)
    {
      sub_2648B6C50(v6, type metadata accessor for CompanionDevice.SessionInfo);
      return 0;
    }

    v50 = *(v47 + 56) + *(v71 + 72) * v48;
    v51 = v70;
    sub_2648B6B80(v50, v70, type metadata accessor for CompanionDevice.SessionInfo);
    sub_2648B6E3C(&qword_27FF81C20, type metadata accessor for CompanionDevice.SessionInfo, &protocol conformance descriptor for CompanionDevice.SessionInfo);
    v52 = sub_2648B8BE4();
    sub_2648B6C50(v51, type metadata accessor for CompanionDevice.SessionInfo);
    result = sub_2648B6C50(v6, type metadata accessor for CompanionDevice.SessionInfo);
    v16 = v67;
    v23 = v69;
    if ((v52 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
      v54 = v66;
      (*(*(v53 - 8) + 56))(v66, 1, 1, v53);
      v69 = 0;
      v17 = v27;
      v40 = v54;
      goto LABEL_17;
    }

    v29 = *(v56 + 8 * v28);
    ++v17;
    if (v29)
    {
      v69 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648B2E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_2648B88D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82160, &qword_2648BB5C8);
  v47 = v4;
  result = sub_2648B9024();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2648B3348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v46 - v12;
  v13 = sub_2648B88D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v10;
  v17 = v16;
  result = sub_2648B9024();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_2648B6BE8(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_2648B6B80(v37 + v36 * v32, v56, v57);
      }

      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_2648B6BE8(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

uint64_t sub_2648B37BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26488F280(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B4CC0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2648B88D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2648B3D44(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2648B3974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26488F280(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2648B88D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Session(0);
    v20 = *(v13 - 8);
    sub_2648B6BE8(v12 + *(v20 + 72) * v7, a2, type metadata accessor for Session);
    sub_2648B4094(v7, v9, type metadata accessor for Session);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Session(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2648B3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26488F280(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B501C(type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2648B88D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for CompanionDevice.SessionInfo(0);
    v20 = *(v13 - 8);
    sub_2648B6BE8(v12 + *(v20 + 72) * v7, a2, type metadata accessor for CompanionDevice.SessionInfo);
    sub_2648B4094(v7, v9, type metadata accessor for CompanionDevice.SessionInfo);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CompanionDevice.SessionInfo(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_2648B3D44(int64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2648B8F34();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_2648B8BC4();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2648B4094(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_2648B88D4();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_2648B8F34();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_2648B8BC4();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2648B43E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26488F280(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2648B4CC0();
      goto LABEL_7;
    }

    sub_2648B2E98(v17, a3 & 1);
    v28 = sub_26488F280(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2648B4ACC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2648B45F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26488F280(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for Session(0);
      return sub_2648B79CC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for Session);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
    goto LABEL_7;
  }

  sub_2648B3348(v17, a3 & 1, type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
  v24 = sub_26488F280(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2648B4BCC(v14, v11, a1, v20, type metadata accessor for Session, type metadata accessor for Session);
}

uint64_t sub_2648B4860(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26488F280(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for CompanionDevice.SessionInfo(0);
      return sub_2648B79CC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for CompanionDevice.SessionInfo);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2648B501C(type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
    goto LABEL_7;
  }

  sub_2648B3348(v17, a3 & 1, type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
  v24 = sub_26488F280(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2648B4BCC(v14, v11, a1, v20, type metadata accessor for CompanionDevice.SessionInfo, type metadata accessor for CompanionDevice.SessionInfo);
}

uint64_t sub_2648B4ACC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2648B4BCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_2648B88D4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_2648B6BE8(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_2648B4CC0()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_2648B88D4();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82160, &qword_2648BB5C8);
  v4 = *v0;
  v5 = sub_2648B9014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2648B501C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_2648B88D4();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_2648B9014();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_2648B6B80(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_2648B6BE8(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

uint64_t sub_2648B5334(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_2648B8BC4();
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
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2648B8BE4();
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
    sub_2648B5970(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2648B5614(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2648B88D4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  result = sub_2648B8F84();
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
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
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

uint64_t sub_2648B5970(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2648B88D4();
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
    sub_2648B5614(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2648B5C14();
      goto LABEL_12;
    }

    sub_2648B5E4C(v10 + 1);
  }

  v12 = *v3;
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_2648B8BC4();
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
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_2648B8BE4();
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
  result = sub_2648B9164();
  __break(1u);
  return result;
}

void *sub_2648B5C14()
{
  v1 = v0;
  v2 = sub_2648B88D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  v6 = *v0;
  v7 = sub_2648B8F74();
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

uint64_t sub_2648B5E4C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2648B88D4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  v7 = sub_2648B8F84();
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
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2648B8BC4();
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

uint64_t sub_2648B6168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2648B88D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_2648B8BC4();
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
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_2648B8BE4();
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
      sub_2648B5C14();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2648B6410(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2648B6410(int64_t a1)
{
  v3 = sub_2648B88D4();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2648B8F34();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_2648B8BC4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
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

unint64_t sub_2648B6718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82158, &unk_2648BB5A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82108, &qword_2648BB568);
    v7 = sub_2648B9034();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_264893A10(v9, v5, &qword_27FF82158, &unk_2648BB5A0);
      result = sub_26488F280(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2648B88D4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for Session(0);
      result = sub_2648B6BE8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for Session);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2648B6934(void *a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2648B8804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648B8794();
  swift_allocObject();
  sub_2648B8784();
  v23[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82128, &qword_2648BB590);
  sub_2648B78F4();
  v8 = sub_2648B8774();
  if (!v2)
  {
    v10 = v8;
    v22 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    sub_2648B87D4();
    v12 = sub_2648B87C4();
    (*(v5 + 8))(v7, v4);
    v23[0] = 0;
    v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v23];

    if (v13)
    {
      v14 = v23[0];
      v15 = v10;
      v16 = v22;
      sub_2648B8824();
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v19 = v23[0];
      sub_2648B87A4();

      swift_willThrow();
      v17 = v10;
      v18 = v22;
    }

    sub_264894BFC(v17, v18);
  }
}

uint64_t sub_2648B6B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2648B6BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2648B6C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2648B6CB0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82058, &qword_2648BB0C8);
    return (*(*(v1 - 8) + 8))(&v2, v1);
  }

  return result;
}

uint64_t sub_2648B6D1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4[0] = result;
    v4[1] = a2;
    v4[2] = a3;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82060, &qword_2648BB0D0);
    return (*(*(v3 - 8) + 8))(v4, v3);
  }

  return result;
}

unint64_t sub_2648B6D90()
{
  result = qword_27FF82068;
  if (!qword_27FF82068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82068);
  }

  return result;
}

uint64_t sub_2648B6DE4(uint64_t a1)
{
  result = sub_2648B6E3C(&qword_280F78F80, type metadata accessor for SessionManager, &unk_2648BB180);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2648B6E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2648B6EBC(uint64_t a1)
{
  sub_2648B6F90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2648B6F90(uint64_t a1)
{
  if (!qword_280F796F0)
  {
    sub_2648B8804();
    v1 = sub_2648B8F04();
    if (!v2)
    {
      atomic_store(v1, &qword_280F796F0);
    }
  }
}

void type metadata accessor for Name()
{
  if (!qword_27FF82080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF82080);
    }
  }
}

uint64_t sub_2648B7060(uint64_t a1)
{
  result = sub_2648B8874();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2648B70F0()
{
  result = qword_27FF83B60[0];
  if (!qword_27FF83B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF83B60);
  }

  return result;
}

unint64_t sub_2648B721C()
{
  result = qword_27FF84070;
  if (!qword_27FF84070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84070);
  }

  return result;
}

unint64_t sub_2648B7270()
{
  result = qword_27FF84078;
  if (!qword_27FF84078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84078);
  }

  return result;
}

unint64_t sub_2648B72C4()
{
  result = qword_27FF84080;
  if (!qword_27FF84080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84080);
  }

  return result;
}

uint64_t sub_2648B7318(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820D0, &qword_2648BB528);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820D8, &qword_2648BB530);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820E0, &qword_2648BB538);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B7754();
  v10 = v26;
  sub_2648B9224();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_2648B90B4();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_2648B8FC4();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820E8, &qword_2648BB540);
    *v18 = &type metadata for Session.State;
    sub_2648B9064();
    sub_2648B8FB4();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_2648B77A8();
    sub_2648B9054();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_2648B77FC();
    sub_2648B9054();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

unint64_t sub_2648B7754()
{
  result = qword_27FF84088;
  if (!qword_27FF84088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84088);
  }

  return result;
}

unint64_t sub_2648B77A8()
{
  result = qword_27FF84090;
  if (!qword_27FF84090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84090);
  }

  return result;
}

unint64_t sub_2648B77FC()
{
  result = qword_27FF84098;
  if (!qword_27FF84098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84098);
  }

  return result;
}

unint64_t sub_2648B78F4()
{
  result = qword_27FF82130;
  if (!qword_27FF82130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF82128, &qword_2648BB590);
    sub_2648B6E3C(&qword_27FF82138, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2648B7B0C(&qword_27FF840A0, &unk_2648BB364);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82130);
  }

  return result;
}

uint64_t sub_2648B79CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2648B7A34()
{
  result = qword_27FF82148;
  if (!qword_27FF82148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF82128, &qword_2648BB590);
    sub_2648B6E3C(&qword_27FF82150, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2648B7B0C(qword_27FF840A8, &unk_2648BB38C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82148);
  }

  return result;
}

uint64_t sub_2648B7B0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Session(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_2648B8804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648B7BD8(uint64_t a1)
{
  v3 = *(sub_2648B8804() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2648AD624(a1, v4);
}

uint64_t sub_2648B7C48()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26488D93C;

  return sub_2648AEBE8(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_2648B7D64()
{
  result = qword_27FF841B0[0];
  if (!qword_27FF841B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF841B0);
  }

  return result;
}

unint64_t sub_2648B7DBC()
{
  result = qword_27FF845C0[0];
  if (!qword_27FF845C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF845C0);
  }

  return result;
}

unint64_t sub_2648B7E14()
{
  result = qword_27FF846D0;
  if (!qword_27FF846D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF846D0);
  }

  return result;
}

unint64_t sub_2648B7E6C()
{
  result = qword_27FF846D8[0];
  if (!qword_27FF846D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF846D8);
  }

  return result;
}

unint64_t sub_2648B7EC4()
{
  result = qword_27FF84760;
  if (!qword_27FF84760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84760);
  }

  return result;
}

unint64_t sub_2648B7F1C()
{
  result = qword_27FF84768[0];
  if (!qword_27FF84768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF84768);
  }

  return result;
}

unint64_t sub_2648B7F74()
{
  result = qword_27FF847F0;
  if (!qword_27FF847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF847F0);
  }

  return result;
}

unint64_t sub_2648B7FCC()
{
  result = qword_27FF847F8[0];
  if (!qword_27FF847F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF847F8);
  }

  return result;
}

unint64_t sub_2648B8024()
{
  result = qword_27FF84880;
  if (!qword_27FF84880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84880);
  }

  return result;
}

unint64_t sub_2648B807C()
{
  result = qword_27FF84888[0];
  if (!qword_27FF84888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF84888);
  }

  return result;
}

uint64_t sub_2648B80D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_2648B9144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_2648B9144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1716482913 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2648B9144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *static ContinuityEligibility.isiPhoneMirroringEligible.getter()
{
  v34[3] = *MEMORY[0x277D85DE8];
  v1 = sub_2648B8B14();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v32 = 0;
  v33 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
    v21 = v33;
    v22 = sub_2648A56A4();
    v23 = *(v2 + 16);
    LOBYTE(v0) = v21 == 4;
    if (v21 == 4)
    {
      v23(v10, v22, v1);
      v27 = sub_2648B8AF4();
      v24 = sub_2648B8E24();
      if (!os_log_type_enabled(v27, v24))
      {
        v8 = v10;
        goto LABEL_15;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_264887000, v27, v24, "Device is eligible for iPhone Mirroring", v25, 2u);
      v8 = v10;
    }

    else
    {
      v23(v8, v22, v1);
      v27 = sub_2648B8AF4();
      v28 = sub_2648B8E34();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_15;
      }

      v25 = swift_slowAlloc();
      *v25 = 134349056;
      swift_beginAccess();
      *(v25 + 4) = v33;
      _os_log_impl(&dword_264887000, v27, v28, "Device is ineligible for iPhone Mirroring due to answer: %{public}llu", v25, 0xCu);
    }

    MEMORY[0x2667439C0](v25, -1, -1);
LABEL_15:

    (*(v2 + 8))(v8, v1);
    return (v0 & 1);
  }

  v12 = domain_answer;
  v13 = sub_2648A56A4();
  (*(v2 + 16))(v5, v13, v1);
  v14 = sub_2648B8AF4();
  v15 = sub_2648B8E34();
  if (!os_log_type_enabled(v14, v15))
  {

    (*(v2 + 8))(v5, v1);
    goto LABEL_10;
  }

  v31 = v1;
  v16 = swift_slowAlloc();
  v0 = swift_slowAlloc();
  v34[0] = v0;
  *v16 = 136446210;
  result = strerror(v12);
  if (result)
  {
    v18 = sub_2648B8C74();
    v20 = sub_26488EB20(v18, v19, v34);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_264887000, v14, v15, "Failed to get eligibility answer: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v0);
    MEMORY[0x2667439C0](v0, -1, -1);
    MEMORY[0x2667439C0](v16, -1, -1);

    (*(v2 + 8))(v5, v31);
LABEL_10:
    sub_2648B85FC();
    swift_allocError();
    *v26 = v12;
    swift_willThrow();
    return (v0 & 1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2648B85FC()
{
  result = qword_27FF82168;
  if (!qword_27FF82168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82168);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinuityEligibility.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContinuityEligibility.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}