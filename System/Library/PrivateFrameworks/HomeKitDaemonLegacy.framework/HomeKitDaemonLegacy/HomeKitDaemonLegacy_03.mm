uint64_t sub_25324ACC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25324ADBC, 0, 0);
}

uint64_t sub_25324ADBC()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeDeviceEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeDeviceEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_25323D890();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeDeviceEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeDeviceEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for HomeDeviceEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for HomeDeviceEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for HomeDeviceEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for HomeDeviceEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25324B244(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25324B33C, 0, 0);
}

uint64_t sub_25324B33C()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeGroupEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA78;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeGroupEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2532410D8();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeGroupEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeGroupEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for HomeGroupEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for HomeGroupEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for HomeGroupEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for HomeGroupEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25324B7C4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25324B8BC, 0, 0);
}

uint64_t sub_25324B8BC()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for HomeEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBA48;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for HomeEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253240288();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for HomeEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for HomeEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for HomeEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for HomeEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for HomeEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25324BD44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2532517B8;

  return v6(a1);
}

uint64_t sub_25324BE3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C7A8;

  return sub_25324BD44(a1, v4);
}

uint64_t sub_25324BEF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25320C438;

  return sub_2532489D8();
}

uint64_t sub_25324BF90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25320C7A8;

  return sub_25324916C(v0);
}

uint64_t objectdestroy_30Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25324C06C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C7A8;

  return sub_253248A68(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for CascadeIndexer.CascadeIndexingSession(uint64_t a1)
{
  result = qword_27F5A3940;
  if (!qword_27F5A3940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25324C178(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25324C26C;

  return v5(v2 + 32);
}

uint64_t sub_25324C26C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25324C380(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = sub_253CD07E8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324C480, 0, 0);
}

uint64_t sub_25324C480()
{
  v1 = [*(v0 + 56) home];
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3908, &qword_253D4A2F0);
    v4 = *(*(type metadata accessor for HomeGroupEntity(0) - 8) + 80);
    *(v0 + 112) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = swift_allocObject();
    *(v0 + 96) = v6;
    *(v6 + 16) = xmmword_253D48DA0;
    sub_253240970(v3, v2, (v6 + v5));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_25324C7B8;

    return sub_25324B244(v6);
  }

  else
  {
    v9 = *(v0 + 56);
    sub_253CD0968();
    off_2864FC278();
    sub_253CD07D8();
    v10 = v9;
    v11 = sub_253CD07C8();
    v12 = sub_253CD0C98();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 56);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v11, v12, "Could not index %@ as it does not have valid home pointer", v14, 0xCu);
      sub_253206054(v15, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v15, -1, -1);
      MEMORY[0x259C040E0](v14, -1, -1);
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);

    (*(v18 + 8))(v17, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_25324C7B8()
{
  v1 = *(*v0 + 96);
  v2 = (*(*v0 + 112) + 32) & ~*(*v0 + 112);

  swift_setDeallocating();
  sub_253251550(v1 + v2, type metadata accessor for HomeGroupEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324C908, 0, 0);
}

uint64_t sub_25324C908()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25324C97C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v4 = sub_253CD07E8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3910, &qword_253D4A300);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for SceneEntity(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[5] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324CB10, 0, 0);
}

uint64_t sub_25324CB10()
{
  v34 = v0;
  v1 = [*(v0 + 64) type];
  v2 = sub_253CD0968();
  v4 = v3;

  if (v2 == sub_253CD0968() && v4 == v5)
  {

    goto LABEL_11;
  }

  v7 = sub_253CD1118();

  if (v7)
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  sub_253242890(*(v0 + 64), v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 64);
    sub_253206054(*(v0 + 96), &qword_27F5A3910, &qword_253D4A300);
    sub_253CD0968();
    off_2864FC278();
    sub_253CD07D8();
    v12 = v11;
    v13 = sub_253CD07C8();
    v14 = sub_253CD0C98();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    if (v15)
    {
      v19 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      *(v0 + 56) = v19;
      sub_253200644(0, &qword_281530E90, off_279719FF0);
      v22 = sub_253CD00F8();
      v24 = sub_253277BA8(v22, v23, &v33);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2531F8000, v13, v14, "Unable to create SceneEntity from scene %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x259C040E0](v21, -1, -1);
      MEMORY[0x259C040E0](v20, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    goto LABEL_11;
  }

  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  sub_2532514E8(*(v0 + 96), v27, type metadata accessor for SceneEntity);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3918, &qword_253D4A308);
  v29 = *(v28 + 80);
  *(v0 + 144) = v29;
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  *(v0 + 128) = v31;
  *(v31 + 16) = xmmword_253D48DA0;
  sub_2532515B0(v27, v31 + v30, type metadata accessor for SceneEntity);
  v32 = swift_task_alloc();
  *(v0 + 136) = v32;
  *v32 = v0;
  v32[1] = sub_25324CF30;

  return sub_25324A744(v31);
}

uint64_t sub_25324CF30()
{
  v1 = *(*v0 + 128);
  v2 = (*(*v0 + 144) + 32) & ~*(*v0 + 144);

  swift_setDeallocating();
  sub_253251550(v1 + v2, type metadata accessor for SceneEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324D080, 0, 0);
}

uint64_t sub_25324D080()
{
  sub_253251550(v0[15], type metadata accessor for SceneEntity);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25324D124(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v4 = sub_253CD07E8();
  v2[53] = v4;
  v2[54] = *(v4 - 8);
  v2[55] = swift_task_alloc();
  v5 = type metadata accessor for RoomEntity(0);
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v6 = type metadata accessor for ZoneEntity(0);
  v2[60] = v6;
  v2[61] = *(v6 - 8);
  v2[62] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity(0);
  v2[63] = v7;
  v2[64] = *(v7 - 8);
  v2[65] = swift_task_alloc();
  v8 = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[66] = v8;
  v2[5] = v8;
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_25324D348, 0, 0);
}

uint64_t sub_25324D348()
{
  v1 = [*(v0 + 416) urlString];
  if (v1)
  {
    v2 = v1;
    v3 = sub_253CD0968();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 416);
  *v6 = v3;
  v6[1] = v5;
  v10 = [v9 spiClientIdentifier];
  sub_253CCFF38();

  v11 = [v9 name];
  v12 = sub_253CD0968();
  v14 = v13;

  v15 = (v6 + *(v8 + 24));
  *v15 = v12;
  v15[1] = v14;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F0, &qword_253D4A2A0);
  v16 = *(v7 + 80);
  *(v0 + 784) = v16;
  v17 = (v16 + 32) & ~v16;
  v18 = swift_allocObject();
  *(v0 + 536) = v18;
  *(v18 + 16) = xmmword_253D48DA0;
  sub_2532515B0(v6, v18 + v17, type metadata accessor for HomeEntity);
  v19 = swift_task_alloc();
  *(v0 + 544) = v19;
  *v19 = v0;
  v19[1] = sub_25324D53C;

  return sub_25324B7C4(v18);
}

uint64_t sub_25324D53C()
{
  v1 = *(*v0 + 536);
  v2 = (*(*v0 + 784) + 32) & ~*(*v0 + 784);

  swift_setDeallocating();
  sub_253251550(v1 + v2, type metadata accessor for HomeEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_25324D68C, 0, 0);
}

int64_t sub_25324D68C()
{
  v1 = [*(v0 + 416) rooms];
  sub_253200644(0, &qword_281530D18, off_27971A220);
  v2 = sub_253CD0A58();
  *(v0 + 552) = v2;

  if (v2 >> 62)
  {
    v4 = sub_253CD0ED8();
    *(v0 + 560) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = 0;
        *(v0 + 568) = *MEMORY[0x277D0F1A8];
        *&v3 = 138412290;
        v123 = v3;
        while (1)
        {
          *(v0 + 752) = v5;
          v10 = *(v0 + 552);
          v11 = (v10 & 0xC000000000000001) != 0 ? MEMORY[0x259C00F30](v5) : *(v10 + 8 * v5 + 32);
          v12 = v11;
          *(v0 + 760) = v11;
          v13 = *(v0 + 528);
          v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 80) = v13;
          *(v0 + 88) = &off_2864FBEB8;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
          sub_2532515B0(v14, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v16 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
          *(v0 + 120) = v13;
          *(v0 + 128) = &off_2864FBEB8;
          v17 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
          sub_2532515B0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v18 = [v12 home];
          if (v18)
          {
            break;
          }

          sub_253CD0968();
          off_2864FBAC8();
          sub_253CD07D8();
          v19 = v12;
          v20 = sub_253CD07C8();
          v21 = sub_253CD0C98();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = v123;
            *(v22 + 4) = v19;
            *v23 = v19;
            v24 = v19;
            _os_log_impl(&dword_2531F8000, v20, v21, "room %@ has no home", v22, 0xCu);
            sub_253206054(v23, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v23, -1, -1);
            MEMORY[0x259C040E0](v22, -1, -1);
          }

          ++v5;
          v6 = *(v0 + 560);
          v8 = *(v0 + 432);
          v7 = *(v0 + 440);
          v9 = *(v0 + 424);

          (*(v8 + 8))(v7, v9);
          __swift_destroy_boxed_opaque_existential_0((v0 + 96));
          __swift_destroy_boxed_opaque_existential_0((v0 + 56));

          if (v5 == v6)
          {
            goto LABEL_17;
          }
        }

        v25 = v18;
        v26 = v12;
        v27 = [v26 urlString];
        if (v27)
        {
          v28 = v27;
          v29 = sub_253CD0968();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v33 = *(v0 + 464);
        v32 = *(v0 + 472);
        v35 = *(v0 + 448);
        v34 = *(v0 + 456);
        v36 = (v33 + *(v35 + 20));
        *v36 = v29;
        v36[1] = v31;
        v37 = [v26 spiClientIdentifier];
        sub_253CCFF38();

        v38 = [v26 name];
        v39 = sub_253CD0968();
        v41 = v40;

        v42 = (v33 + *(v35 + 24));
        *v42 = v39;
        v42[1] = v41;
        sub_2532514E8(v33, v32, type metadata accessor for RoomEntity);
        __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
        v43 = *(v34 + 80);
        *(v0 + 792) = v43;
        v44 = (v43 + 32) & ~v43;
        v45 = swift_allocObject();
        *(v0 + 768) = v45;
        *(v45 + 16) = xmmword_253D48DA0;
        sub_2532515B0(v32, v45 + v44, type metadata accessor for RoomEntity);
        v124 = sub_253249C44;
        v46 = swift_task_alloc();
        *(v0 + 776) = v46;
        *v46 = v0;
        v46[1] = sub_253250048;
        v47 = v45;
        goto LABEL_27;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_17:
  v48 = *(v0 + 416);

  v49 = [v48 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v50 = sub_253CD0A58();
  *(v0 + 576) = v50;

  if (v50 >> 62)
  {
    v51 = sub_253CD0ED8();
    *(v0 + 584) = v51;
    if (v51)
    {
LABEL_19:
      if (v51 >= 1)
      {
        *(v0 + 720) = 0;
        v52 = *(v0 + 576);
        if ((v52 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v53 = *(v52 + 32);
        }

        v54 = v53;
        *(v0 + 728) = v53;
        v55 = *(v0 + 528);
        v56 = *(v0 + 488);
        v57 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v55;
        *(v0 + 168) = &off_2864FBEB8;
        v58 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
        sub_2532515B0(v57, v58, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v59 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v55;
        *(v0 + 208) = &off_2864FBEB8;
        v60 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
        sub_2532515B0(v59, v60, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
        v61 = *(v56 + 80);
        *(v0 + 788) = v61;
        v62 = (v61 + 32) & ~v61;
        v63 = swift_allocObject();
        *(v0 + 736) = v63;
        *(v63 + 16) = xmmword_253D48DA0;
        v64 = v54;
        v65 = [v64 urlString];
        if (v65)
        {
          v66 = v65;
          v67 = sub_253CD0968();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        v70 = *(v0 + 496);
        v71 = *(v0 + 480);
        *v70 = v67;
        v70[1] = v69;
        v72 = [v64 spiClientIdentifier];
        sub_253CCFF38();

        v73 = [v64 name];
        v74 = sub_253CD0968();
        v76 = v75;

        v77 = (v70 + *(v71 + 24));
        *v77 = v74;
        v77[1] = v76;
        sub_2532514E8(v70, v63 + v62, type metadata accessor for ZoneEntity);
        v124 = sub_25324A1C4;
        v78 = swift_task_alloc();
        *(v0 + 744) = v78;
        *v78 = v0;
        v78[1] = sub_25324F588;
        v47 = v63;
        goto LABEL_27;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v51;
    if (v51)
    {
      goto LABEL_19;
    }
  }

  v80 = *(v0 + 416);

  result = [v80 actionSets];
  if (!result)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v81 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v82 = sub_253CD0A58();
  *(v0 + 592) = v82;

  if (!(v82 >> 62))
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v83;
    if (!v83)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

LABEL_44:
  v83 = sub_253CD0ED8();
  *(v0 + 600) = v83;
  if (!v83)
  {
LABEL_45:
    v93 = *(v0 + 416);

    v94 = [v93 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v95 = sub_253CD0A58();
    *(v0 + 608) = v95;

    if (!(v95 >> 62))
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v96;
      if (v96)
      {
LABEL_47:
        if (v96 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v97 = *(v0 + 608);
          if ((v97 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v98 = *(v97 + 32);
          }

          v99 = v98;
          *(v0 + 672) = v98;
          v100 = *(v0 + 528);
          v101 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v100;
          *(v0 + 288) = &off_2864FBEB8;
          v102 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v101, v102, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v103 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v100;
          *(v0 + 328) = &off_2864FBEB8;
          v104 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v103, v104, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v105 = [v99 home];
          v106 = sub_25323F600(v99, v105);

          v107 = v106[2];
          if (!v107)
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v108 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v109 = *(v108 + 72);
          v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v111 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v111);
          if (v109)
          {
            if (result - v110 != 0x8000000000000000 || v109 != -1)
            {
              v111[2] = v107;
              v111[3] = 2 * ((result - v110) / v109);
              v112 = sub_2532220B8((v0 + 336), v111 + v110, v107, v106);
              sub_25320C5EC(*(v0 + 336));
              if (v112 == v107)
              {
LABEL_58:
                *(v0 + 680) = v111;
                v124 = sub_25324ACC4;
                v113 = swift_task_alloc();
                *(v0 + 688) = v113;
                *v113 = v0;
                v113[1] = sub_25324E7E8;
                v47 = v111;
LABEL_27:

                return v124(v47);
              }

              __break(1u);
LABEL_57:

              v111 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }

            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_61:
      v114 = *(v0 + 416);

      v115 = [v114 serviceGroups];
      sub_253200644(0, &qword_281530E68, off_27971A230);
      v116 = sub_253CD0A58();
      *(v0 + 624) = v116;

      if (!(v116 >> 62))
      {
        result = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_71:
          sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v122 = *(v0 + 8);

          return v122();
        }

        goto LABEL_63;
      }

LABEL_70:
      result = sub_253CD0ED8();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_71;
      }

LABEL_63:
      if (result < 1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      *(v0 + 640) = 0;
      v117 = *(v0 + 624);
      if ((v117 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x259C00F30](0);
      }

      else
      {
        v118 = *(v117 + 32);
      }

      v86 = v118;
      *(v0 + 648) = v118;
      v119 = *(v0 + 528);
      v120 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v119;
      *(v0 + 408) = &off_2864FBEB8;
      v121 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
      sub_2532515B0(v120, v121, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v90 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v125 = sub_25324C380;
      v91 = swift_task_alloc();
      *(v0 + 656) = v91;
      *v91 = v0;
      v92 = sub_25324E4DC;
      goto LABEL_39;
    }

LABEL_60:
    v96 = sub_253CD0ED8();
    *(v0 + 616) = v96;
    if (v96)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_34:
  if (v83 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 696) = 0;
  v84 = *(v0 + 592);
  if ((v84 & 0xC000000000000001) != 0)
  {
    v85 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v85 = *(v84 + 32);
  }

  v86 = v85;
  *(v0 + 704) = v85;
  v87 = *(v0 + 528);
  v88 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v87;
  *(v0 + 248) = &off_2864FBEB8;
  v89 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v88, v89, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v90 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v125 = sub_25324C97C;
  v91 = swift_task_alloc();
  *(v0 + 712) = v91;
  *v91 = v0;
  v92 = sub_25324EE14;
LABEL_39:
  v91[1] = v92;

  return v125(v86, v90);
}

uint64_t sub_25324E4DC()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 376));

  return MEMORY[0x2822009F8](sub_25324E5E0, 0, 0);
}

uint64_t sub_25324E5E0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);

  if (v1 + 1 == v2)
  {
    sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 640) + 1;
    *(v0 + 640) = v5;
    v6 = *(v0 + 624);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C00F30]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 648) = v7;
    v9 = *(v0 + 528);
    v10 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v9;
    *(v0 + 408) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    sub_2532515B0(v10, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v12 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v13 = swift_task_alloc();
    *(v0 + 656) = v13;
    *v13 = v0;
    v13[1] = sub_25324E4DC;

    return sub_25324C380(v8, v12);
  }
}

uint64_t sub_25324E7E8()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 296));
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));

  return MEMORY[0x2822009F8](sub_25324E910, 0, 0);
}

int64_t sub_25324E910()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 616);

  if (v1 + 1 != v2)
  {
    v9 = *(v0 + 664) + 1;
    *(v0 + 664) = v9;
    v10 = *(v0 + 608);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C00F30]();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    v12 = v11;
    *(v0 + 672) = v11;
    v13 = *(v0 + 528);
    v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 280) = v13;
    *(v0 + 288) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_2532515B0(v14, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
    *(v0 + 320) = v13;
    *(v0 + 328) = &off_2864FBEB8;
    v17 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
    sub_2532515B0(v16, v17, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
    v18 = [v12 home];
    v19 = sub_25323F600(v12, v18);

    v20 = v19[2];
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
      v21 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v24);
      if (!v22)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (result - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_32;
      }

      v24[2] = v20;
      v24[3] = 2 * ((result - v23) / v22);
      v26 = sub_2532220B8((v0 + 336), v24 + v23, v20, v19);
      sub_25320C5EC(*(v0 + 336));
      if (v26 == v20)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
LABEL_19:
    *(v0 + 680) = v24;
    v27 = swift_task_alloc();
    *(v0 + 688) = v27;
    *v27 = v0;
    v27[1] = sub_25324E7E8;

    return sub_25324ACC4(v24);
  }

  v3 = *(v0 + 416);

  v4 = [v3 serviceGroups];
  sub_253200644(0, &qword_281530E68, off_27971A230);
  v5 = sub_253CD0A58();
  *(v0 + 624) = v5;

  if (v5 >> 62)
  {
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 632) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 640) = 0;
        v7 = *(v0 + 624);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v28 = v8;
        *(v0 + 648) = v8;
        v29 = *(v0 + 528);
        v30 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 400) = v29;
        *(v0 + 408) = &off_2864FBEB8;
        v31 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
        sub_2532515B0(v30, v31, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v32 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
        v33 = swift_task_alloc();
        *(v0 + 656) = v33;
        *v33 = v0;
        v33[1] = sub_25324E4DC;

        return sub_25324C380(v28, v32);
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_25324EE14()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 216));

  return MEMORY[0x2822009F8](sub_25324EF18, 0, 0);
}

int64_t sub_25324EF18()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 416);

    v4 = [v3 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v5 = sub_253CD0A58();
    *(v0 + 608) = v5;

    if (v5 >> 62)
    {
      v6 = sub_253CD0ED8();
      *(v0 + 616) = v6;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v6;
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v7 = *(v0 + 608);
          if ((v7 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v8 = *(v7 + 32);
          }

          v20 = v8;
          *(v0 + 672) = v8;
          v21 = *(v0 + 528);
          v22 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v21;
          *(v0 + 288) = &off_2864FBEB8;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v22, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v24 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v21;
          *(v0 + 328) = &off_2864FBEB8;
          v25 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v24, v25, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v26 = [v20 home];
          v27 = sub_25323F600(v20, v26);

          v28 = v27[2];
          if (!v28)
          {
            goto LABEL_21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v29 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v30 = *(v29 + 72);
          v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v32 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v32);
          if (v30)
          {
            if (result - v31 != 0x8000000000000000 || v30 != -1)
            {
              v32[2] = v28;
              v32[3] = 2 * ((result - v31) / v30);
              v33 = sub_2532220B8((v0 + 336), v32 + v31, v28, v27);
              sub_25320C5EC(*(v0 + 336));
              if (v33 == v28)
              {
LABEL_22:
                *(v0 + 680) = v32;
                v34 = swift_task_alloc();
                *(v0 + 688) = v34;
                *v34 = v0;
                v34[1] = sub_25324E7E8;

                return sub_25324ACC4(v32);
              }

              __break(1u);
LABEL_21:

              v32 = MEMORY[0x277D84F90];
              goto LABEL_22;
            }

LABEL_40:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }

    v35 = *(v0 + 416);

    v36 = [v35 serviceGroups];
    sub_253200644(0, &qword_281530E68, off_27971A230);
    v37 = sub_253CD0A58();
    *(v0 + 624) = v37;

    if (!(v37 >> 62))
    {
      result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (!result)
      {
LABEL_36:
        sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));

        v43 = *(v0 + 8);

        return v43();
      }

      goto LABEL_28;
    }

LABEL_35:
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (!result)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (result < 1)
    {
      __break(1u);
      goto LABEL_40;
    }

    *(v0 + 640) = 0;
    v38 = *(v0 + 624);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x259C00F30](0);
    }

    else
    {
      v39 = *(v38 + 32);
    }

    v12 = v39;
    *(v0 + 648) = v39;
    v40 = *(v0 + 528);
    v41 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 400) = v40;
    *(v0 + 408) = &off_2864FBEB8;
    v42 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    sub_2532515B0(v41, v42, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
    v44 = sub_25324C380;
    v17 = swift_task_alloc();
    *(v0 + 656) = v17;
    *v17 = v0;
    v18 = sub_25324E4DC;
    goto LABEL_11;
  }

  v9 = *(v0 + 696) + 1;
  *(v0 + 696) = v9;
  v10 = *(v0 + 592);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x259C00F30]();
  }

  else
  {
    v11 = *(v10 + 8 * v9 + 32);
  }

  v12 = v11;
  *(v0 + 704) = v11;
  v13 = *(v0 + 528);
  v14 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v13;
  *(v0 + 248) = &off_2864FBEB8;
  v15 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v14, v15, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v16 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v44 = sub_25324C97C;
  v17 = swift_task_alloc();
  *(v0 + 712) = v17;
  *v17 = v0;
  v18 = sub_25324EE14;
LABEL_11:
  v17[1] = v18;

  return v44(v12, v16);
}

uint64_t sub_25324F588()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v3 = (*(v1 + 788) + 32) & ~*(v1 + 788);

  swift_setDeallocating();
  sub_253251550(v2 + v3, type metadata accessor for ZoneEntity);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  __swift_destroy_boxed_opaque_existential_0((v1 + 136));

  return MEMORY[0x2822009F8](sub_25324F6F0, 0, 0);
}

int64_t sub_25324F6F0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 584);

  if (v1 + 1 != v2)
  {
    v10 = *(v0 + 720) + 1;
    *(v0 + 720) = v10;
    v11 = *(v0 + 576);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x259C00F30]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    *(v0 + 728) = v12;
    v14 = *(v0 + 528);
    v15 = *(v0 + 488);
    v16 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 160) = v14;
    *(v0 + 168) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
    sub_2532515B0(v16, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v18 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    *(v0 + 200) = v14;
    *(v0 + 208) = &off_2864FBEB8;
    v19 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    sub_2532515B0(v18, v19, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
    v20 = *(v15 + 80);
    *(v0 + 788) = v20;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v0 + 736) = v22;
    *(v22 + 16) = xmmword_253D48DA0;
    v23 = v13;
    v24 = [v23 urlString];
    if (v24)
    {
      v25 = v24;
      v26 = sub_253CD0968();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = *(v0 + 496);
    v30 = *(v0 + 480);
    *v29 = v26;
    v29[1] = v28;
    v31 = [v23 spiClientIdentifier];
    sub_253CCFF38();

    v32 = [v23 name];
    v33 = sub_253CD0968();
    v35 = v34;

    v36 = (v29 + *(v30 + 24));
    *v36 = v33;
    v36[1] = v35;
    sub_2532514E8(v29, v22 + v21, type metadata accessor for ZoneEntity);
    v76 = sub_25324A1C4;
    v37 = swift_task_alloc();
    *(v0 + 744) = v37;
    *v37 = v0;
    v37[1] = sub_25324F588;
    v38 = v22;
    goto LABEL_15;
  }

  v3 = *(v0 + 416);

  result = [v3 actionSets];
  if (!result)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v6 = sub_253CD0A58();
  *(v0 + 592) = v6;

  if (v6 >> 62)
  {
    v7 = sub_253CD0ED8();
    *(v0 + 600) = v7;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v7;
    if (v7)
    {
LABEL_5:
      if (v7 >= 1)
      {
        *(v0 + 696) = 0;
        v8 = *(v0 + 592);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v39 = v9;
        *(v0 + 704) = v9;
        v40 = *(v0 + 528);
        v41 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 240) = v40;
        *(v0 + 248) = &off_2864FBEB8;
        v42 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
        sub_2532515B0(v41, v42, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v43 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
        v77 = sub_25324C97C;
        v44 = swift_task_alloc();
        *(v0 + 712) = v44;
        *v44 = v0;
        v45 = sub_25324EE14;
LABEL_20:
        v44[1] = v45;

        return v77(v39, v43);
      }

      __break(1u);
      goto LABEL_39;
    }
  }

  v46 = *(v0 + 416);

  v47 = [v46 accessories];
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  v48 = sub_253CD0A58();
  *(v0 + 608) = v48;

  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 616) = v49;
    if (!v49)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

LABEL_39:
  v49 = sub_253CD0ED8();
  *(v0 + 616) = v49;
  if (!v49)
  {
LABEL_40:
    v67 = *(v0 + 416);

    v68 = [v67 serviceGroups];
    sub_253200644(0, &qword_281530E68, off_27971A230);
    v69 = sub_253CD0A58();
    *(v0 + 624) = v69;

    if (!(v69 >> 62))
    {
      result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 632) = result;
      if (result)
      {
LABEL_42:
        if (result >= 1)
        {
          *(v0 + 640) = 0;
          v70 = *(v0 + 624);
          if ((v70 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v71 = *(v70 + 32);
          }

          v39 = v71;
          *(v0 + 648) = v71;
          v72 = *(v0 + 528);
          v73 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 400) = v72;
          *(v0 + 408) = &off_2864FBEB8;
          v74 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
          sub_2532515B0(v73, v74, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v43 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
          v77 = sub_25324C380;
          v44 = swift_task_alloc();
          *(v0 + 656) = v44;
          *v44 = v0;
          v45 = sub_25324E4DC;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    result = sub_253CD0ED8();
    *(v0 + 632) = result;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_50:
    sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v75 = *(v0 + 8);

    return v75();
  }

LABEL_26:
  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_48;
  }

  *(v0 + 664) = 0;
  v50 = *(v0 + 608);
  if ((v50 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v51 = *(v50 + 32);
  }

  v52 = v51;
  *(v0 + 672) = v51;
  v53 = *(v0 + 528);
  v54 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 280) = v53;
  *(v0 + 288) = &off_2864FBEB8;
  v55 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  sub_2532515B0(v54, v55, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v56 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
  *(v0 + 320) = v53;
  *(v0 + 328) = &off_2864FBEB8;
  v57 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
  sub_2532515B0(v56, v57, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
  v58 = [v52 home];
  v59 = sub_25323F600(v52, v58);

  v60 = v59[2];
  if (!v60)
  {
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
  v61 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v64);
  if (!v62)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result - v63 == 0x8000000000000000 && v62 == -1)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v64[2] = v60;
  v64[3] = 2 * ((result - v63) / v62);
  v65 = sub_2532220B8((v0 + 336), v64 + v63, v60, v59);
  sub_25320C5EC(*(v0 + 336));
  if (v65 == v60)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_36:

  v64 = MEMORY[0x277D84F90];
LABEL_37:
  *(v0 + 680) = v64;
  v76 = sub_25324ACC4;
  v66 = swift_task_alloc();
  *(v0 + 688) = v66;
  *v66 = v0;
  v66[1] = sub_25324E7E8;
  v38 = v64;
LABEL_15:

  return v76(v38);
}

uint64_t sub_253250048()
{
  v1 = *(*v0 + 768);
  v2 = (*(*v0 + 792) + 32) & ~*(*v0 + 792);

  swift_setDeallocating();
  sub_253251550(v1 + v2, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_253250198, 0, 0);
}

int64_t sub_253250198()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 560);
  v3 = *(v0 + 752) + 1;
  sub_253251550(*(v0 + 472), type metadata accessor for RoomEntity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  if (v3 != v2)
  {
    v11 = *(v0 + 752) + 5;
    *&v4 = 138412290;
    v124 = v4;
    while (1)
    {
      *(v0 + 752) = v11 - 4;
      v17 = *(v0 + 552);
      v18 = (v17 & 0xC000000000000001) != 0 ? MEMORY[0x259C00F30]() : *(v17 + 8 * v11);
      v19 = v18;
      *(v0 + 760) = v18;
      v20 = *(v0 + 528);
      v21 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 80) = v20;
      *(v0 + 88) = &off_2864FBEB8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
      sub_2532515B0(v21, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v23 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
      *(v0 + 120) = v20;
      *(v0 + 128) = &off_2864FBEB8;
      v24 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
      sub_2532515B0(v23, v24, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v25 = [v19 home];
      if (v25)
      {
        break;
      }

      sub_253CD0968();
      off_2864FBAC8();
      sub_253CD07D8();
      v26 = v19;
      v27 = sub_253CD07C8();
      v28 = sub_253CD0C98();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = v124;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_2531F8000, v27, v28, "room %@ has no home", v29, 0xCu);
        sub_253206054(v30, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v30, -1, -1);
        MEMORY[0x259C040E0](v29, -1, -1);
      }

      v12 = *(v0 + 560);
      v14 = *(v0 + 432);
      v13 = *(v0 + 440);
      v15 = *(v0 + 424);

      (*(v14 + 8))(v13, v15);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      v16 = v11 - 3;
      ++v11;
      if (v16 == v12)
      {
        goto LABEL_2;
      }
    }

    v32 = v25;
    v33 = v19;
    v34 = [v33 urlString];
    if (v34)
    {
      v35 = v34;
      v36 = sub_253CD0968();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v66 = *(v0 + 464);
    v65 = *(v0 + 472);
    v68 = *(v0 + 448);
    v67 = *(v0 + 456);
    v69 = (v66 + *(v68 + 20));
    *v69 = v36;
    v69[1] = v38;
    v70 = [v33 spiClientIdentifier];
    sub_253CCFF38();

    v71 = [v33 name];
    v72 = sub_253CD0968();
    v74 = v73;

    v75 = (v66 + *(v68 + 24));
    *v75 = v72;
    v75[1] = v74;
    sub_2532514E8(v66, v65, type metadata accessor for RoomEntity);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
    v76 = *(v67 + 80);
    *(v0 + 792) = v76;
    v77 = (v76 + 32) & ~v76;
    v78 = swift_allocObject();
    *(v0 + 768) = v78;
    *(v78 + 16) = xmmword_253D48DA0;
    sub_2532515B0(v65, v78 + v77, type metadata accessor for RoomEntity);
    v125 = sub_253249C44;
    v79 = swift_task_alloc();
    *(v0 + 776) = v79;
    *v79 = v0;
    v79[1] = sub_253250048;
    v64 = v78;
    goto LABEL_52;
  }

LABEL_2:
  v5 = *(v0 + 416);

  v6 = [v5 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v7 = sub_253CD0A58();
  *(v0 + 576) = v7;

  if (v7 >> 62)
  {
    v8 = sub_253CD0ED8();
    *(v0 + 584) = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v8;
    if (v8)
    {
LABEL_4:
      if (v8 >= 1)
      {
        *(v0 + 720) = 0;
        v9 = *(v0 + 576);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v39 = v10;
        *(v0 + 728) = v10;
        v40 = *(v0 + 528);
        v41 = *(v0 + 488);
        v42 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v40;
        *(v0 + 168) = &off_2864FBEB8;
        v43 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
        sub_2532515B0(v42, v43, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v44 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v40;
        *(v0 + 208) = &off_2864FBEB8;
        v45 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
        sub_2532515B0(v44, v45, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38F8, &qword_253D4A2B8);
        v46 = *(v41 + 80);
        *(v0 + 788) = v46;
        v47 = (v46 + 32) & ~v46;
        v48 = swift_allocObject();
        *(v0 + 736) = v48;
        *(v48 + 16) = xmmword_253D48DA0;
        v49 = v39;
        v50 = [v49 urlString];
        if (v50)
        {
          v51 = v50;
          v52 = sub_253CD0968();
          v54 = v53;
        }

        else
        {
          v52 = 0;
          v54 = 0;
        }

        v55 = *(v0 + 496);
        v56 = *(v0 + 480);
        *v55 = v52;
        v55[1] = v54;
        v57 = [v49 spiClientIdentifier];
        sub_253CCFF38();

        v58 = [v49 name];
        v59 = sub_253CD0968();
        v61 = v60;

        v62 = (v55 + *(v56 + 24));
        *v62 = v59;
        v62[1] = v61;
        sub_2532514E8(v55, v48 + v47, type metadata accessor for ZoneEntity);
        v125 = sub_25324A1C4;
        v63 = swift_task_alloc();
        *(v0 + 744) = v63;
        *v63 = v0;
        v63[1] = sub_25324F588;
        v64 = v48;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v80 = *(v0 + 416);

  result = [v80 actionSets];
  if (!result)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v82 = result;
  sub_253200644(0, &qword_281530E90, off_279719FF0);
  v83 = sub_253CD0A58();
  *(v0 + 592) = v83;

  if (!(v83 >> 62))
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v84;
    if (!v84)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_37:
  v84 = sub_253CD0ED8();
  *(v0 + 600) = v84;
  if (!v84)
  {
LABEL_38:
    v94 = *(v0 + 416);

    v95 = [v94 accessories];
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    v96 = sub_253CD0A58();
    *(v0 + 608) = v96;

    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v97;
      if (v97)
      {
LABEL_40:
        if (v97 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v98 = *(v0 + 608);
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x259C00F30](0);
          }

          else
          {
            v99 = *(v98 + 32);
          }

          v100 = v99;
          *(v0 + 672) = v99;
          v101 = *(v0 + 528);
          v102 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v101;
          *(v0 + 288) = &off_2864FBEB8;
          v103 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
          sub_2532515B0(v102, v103, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v104 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v101;
          *(v0 + 328) = &off_2864FBEB8;
          v105 = __swift_allocate_boxed_opaque_existential_0((v0 + 296));
          sub_2532515B0(v104, v105, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v106 = [v100 home];
          v107 = sub_25323F600(v100, v106);

          v108 = v107[2];
          if (!v108)
          {
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
          v109 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v110 = *(v109 + 72);
          v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v112 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v112);
          if (v110)
          {
            if (result - v111 != 0x8000000000000000 || v110 != -1)
            {
              v112[2] = v108;
              v112[3] = 2 * ((result - v111) / v110);
              v113 = sub_2532220B8((v0 + 336), v112 + v111, v108, v107);
              sub_25320C5EC(*(v0 + 336));
              if (v113 == v108)
              {
LABEL_51:
                *(v0 + 680) = v112;
                v125 = sub_25324ACC4;
                v114 = swift_task_alloc();
                *(v0 + 688) = v114;
                *v114 = v0;
                v114[1] = sub_25324E7E8;
                v64 = v112;
LABEL_52:

                return v125(v64);
              }

              __break(1u);
LABEL_50:

              v112 = MEMORY[0x277D84F90];
              goto LABEL_51;
            }

            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_57:
      v115 = *(v0 + 416);

      v116 = [v115 serviceGroups];
      sub_253200644(0, &qword_281530E68, off_27971A230);
      v117 = sub_253CD0A58();
      *(v0 + 624) = v117;

      if (!(v117 >> 62))
      {
        result = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_67:
          sub_253251550(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v123 = *(v0 + 8);

          return v123();
        }

        goto LABEL_59;
      }

LABEL_66:
      result = sub_253CD0ED8();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_59:
      if (result < 1)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      *(v0 + 640) = 0;
      v118 = *(v0 + 624);
      if ((v118 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x259C00F30](0);
      }

      else
      {
        v119 = *(v118 + 32);
      }

      v87 = v119;
      *(v0 + 648) = v119;
      v120 = *(v0 + 528);
      v121 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v120;
      *(v0 + 408) = &off_2864FBEB8;
      v122 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
      sub_2532515B0(v121, v122, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v91 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v126 = sub_25324C380;
      v92 = swift_task_alloc();
      *(v0 + 656) = v92;
      *v92 = v0;
      v93 = sub_25324E4DC;
      goto LABEL_33;
    }

LABEL_56:
    v97 = sub_253CD0ED8();
    *(v0 + 616) = v97;
    if (v97)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_28:
  if (v84 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 696) = 0;
  v85 = *(v0 + 592);
  if ((v85 & 0xC000000000000001) != 0)
  {
    v86 = MEMORY[0x259C00F30](0);
  }

  else
  {
    v86 = *(v85 + 32);
  }

  v87 = v86;
  *(v0 + 704) = v86;
  v88 = *(v0 + 528);
  v89 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v88;
  *(v0 + 248) = &off_2864FBEB8;
  v90 = __swift_allocate_boxed_opaque_existential_0((v0 + 216));
  sub_2532515B0(v89, v90, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v91 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v126 = sub_25324C97C;
  v92 = swift_task_alloc();
  *(v0 + 712) = v92;
  *v92 = v0;
  v93 = sub_25324EE14;
LABEL_33:
  v92[1] = v93;

  return v126(v87, v91);
}

uint64_t sub_253250F9C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 2);
  sub_2532515B0(a2, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_253251044, 0, 0);
}

uint64_t sub_253251044()
{
  result = [*(v0 + 96) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v3 = sub_253CD0A58();
  *(v0 + 112) = v3;

  if (v3 >> 62)
  {
    result = sub_253CD0ED8();
    *(v0 + 120) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 128) = 0;
        v4 = *(v0 + 112);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x259C00F30](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;
        *(v0 + 136) = v5;
        v7 = *(v0 + 104);
        v8 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 80) = v7;
        *(v0 + 88) = &off_2864FBEB8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
        sub_2532515B0(v8, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v10 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
        v11 = swift_task_alloc();
        *(v0 + 144) = v11;
        *v11 = v0;
        v11[1] = sub_25325124C;

        return sub_25324D124(v6, v10);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25325124C()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_253251350, 0, 0);
}

uint64_t sub_253251350()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128) + 1;
    *(v0 + 128) = v5;
    v6 = *(v0 + 112);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C00F30]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 136) = v7;
    v9 = *(v0 + 104);
    v10 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v9;
    *(v0 + 88) = &off_2864FBEB8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2532515B0(v10, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v12 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_25325124C;

    return sub_25324D124(v8, v12);
  }
}

uint64_t sub_2532514E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253251550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2532515B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_253251644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C7A8;

  return sub_25324C178(a1, v4);
}

uint64_t sub_253251724(uint64_t a1)
{
  result = sub_253200644(319, &qword_27F5A3930, 0x277CF94B8);
  if (v2 <= 0x3F)
  {
    result = sub_253CD07E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2532517BC(void *a1)
{
  v2 = v1;
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CD00B8();
  v8 = a1;
  v9 = sub_253CD00A8();
  v41[5] = &type metadata for HomeGraphTraverser;
  v41[6] = &off_2864FC228;
  v41[0] = v8;
  v41[1] = v9;
  v10 = [v8 featuresDataSource];

  if (v10)
  {
    v11 = [v10 isCascadeDonationsEnabled];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_253211D58(v2, &off_2864FBEC8);
      v12 = sub_253CD07C8();
      v13 = sub_253CD0C78();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2531F8000, v12, v13, "Cascade indexer is enabled", v14, 2u);
        MEMORY[0x259C040E0](v14, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v37 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v38 = &off_2864FC178;
      v35 = swift_allocObject();
      sub_2532683A0(v41, v35 + 16);
      v15 = type metadata accessor for CascadeIndexer();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v35, &type metadata for HomeGraphIndexer.DefaultIndexerDataSource);
      MEMORY[0x28223BE20](v17);
      swift_cvw_initWithCopy();
      v33 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v34 = &off_2864FC178;
      v18 = swift_allocObject();
      *&v32 = v18;
      v19 = *(&v31 - 3);
      *(v18 + 16) = *(&v31 - 4);
      *(v18 + 32) = v19;
      *(v18 + 48) = *(&v31 - 2);
      *(v18 + 64) = *(&v31 - 2);
      swift_defaultActor_initialize();
      *(v16 + 176) = sub_253CD02F8();
      *(v16 + 184) = sub_253268470(&qword_281531978, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
      __swift_allocate_boxed_opaque_existential_0((v16 + 152));
      sub_253CD02E8();
      *(v16 + 208) = 0u;
      *(v16 + 224) = 0u;
      *(v16 + 192) = 0u;
      sub_2531FF170(&v32, v16 + 112);
      __swift_destroy_boxed_opaque_existential_0(&v35);
      v37 = v15;
      v38 = &off_2864FBCE8;
      v35 = v16;
      v20 = sub_253283334(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_253283334((v21 > 1), v22 + 1, 1, v20);
      }

      v23 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v15);
      MEMORY[0x28223BE20](v23);
      v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v25;
      v33 = v15;
      v34 = &off_2864FBCE8;
      *&v32 = v27;
      v20[2] = v22 + 1;
      sub_2531FF170(&v32, &v20[5 * v22 + 4]);
      __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v28 = [objc_opt_self() defaultCenter];
    v38 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
    v39 = &off_2864FC178;
    v36 = swift_allocObject();
    sub_2532683A0(v41, v36 + 16);
    v40 = v20;
    v33 = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
    v34 = &off_2864FC158;
    v35 = v28;
    *&v32 = swift_allocObject();
    sub_2532683D8(&v35, v32 + 16);
    type metadata accessor for HomeGraphIndexer(0);
    v29 = swift_allocObject();
    v30 = __swift_mutable_project_boxed_opaque_existential_1(&v32, &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource);
    MEMORY[0x28223BE20](v30);
    swift_cvw_initWithCopy();
    sub_253267AB8((&v31 - 8), v29);
    __swift_destroy_boxed_opaque_existential_0(&v32);
    sub_253268410(&v35);
    sub_253268440(v41);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253251D28(uint64_t a1, uint64_t a2)
{
  sub_253206054(a2, &qword_27F5A39E8, &qword_253D4A658);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_253251E04()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_253251E4C, v0, 0);
}

uint64_t sub_253251E4C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  sub_2532074E4((v3 + 1), (v0 + 2));
  v0[9] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v8 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_253251F88;
  v6 = MEMORY[0x277D84F78] + 8;

  return v8(&unk_253D4A678, v4, v6);
}

uint64_t sub_253251F88(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2532520C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_253CD07E8();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325218C, a2, 0);
}

uint64_t sub_25325218C()
{
  v1 = v0[2];
  if (*(__swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6] + 16))
  {
    v2 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
    v0[7] = v2;
    v3 = *(v2 + 16);
    v0[8] = v3;
    if (v3)
    {
      v0[9] = objc_opt_self();
      v0[10] = sel_handleDonateNowNotification_;
      v0[11] = 0;
      v4 = v0[7];
      v5 = *(v4 + 56);

      v6 = __swift_project_boxed_opaque_existential_0((v4 + 32), v5);
      v7 = *v6;
      v0[12] = *v6;

      return MEMORY[0x2822009F8](sub_2532523D4, v7, 0);
    }

    else
    {
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_253252848;

      return sub_253252B30();
    }
  }

  else
  {
    sub_253211D58(v0[3], &off_2864FBEC8);
    v8 = sub_253CD07C8();
    v9 = sub_253CD0C98();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2531F8000, v8, v9, "There are no indexers enabled. Not starting indexing.", v14, 2u);
      MEMORY[0x259C040E0](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2532523D4()
{
  v1 = [*(v0 + 72) defaultCenter];
  if (qword_2815314B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  [v1 addObserver:v2 selector:*(v0 + 80) name:qword_281532BE8 object:0];

  v3 = *(v2 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + 112), v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  *(v0 + 104) = *(v6 + 8);
  v7 = *(v5 + 8);

  v7(v6, v3);

  v12 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_2532525E8;
  v9 = *(v0 + 96);
  v10 = MEMORY[0x277D84F78] + 8;

  return v12(&unk_253D4A250, v9, v10);
}

uint64_t sub_2532525E8(uint64_t a1)
{
  v2 = *(*v1 + 16);

  return MEMORY[0x2822009F8](sub_253252744, v2, 0);
}

uint64_t sub_253252744()
{
  v1 = v0[11] + 1;
  if (v1 == v0[8])
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_253252848;

    return sub_253252B30();
  }

  else
  {
    v0[11] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[7] + 40 * v1 + 32), *(v0[7] + 40 * v1 + 56));
    v5 = *v4;
    v0[12] = *v4;

    return MEMORY[0x2822009F8](sub_2532523D4, v5, 0);
  }
}

uint64_t sub_253252848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25325295C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  sub_253206054(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation, &qword_27F5A39E8, &qword_253D4A658);
  sub_253206054(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream, &qword_27F5A39C8, &qword_253D4A618);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_253252A0C(uint64_t a1)
{
  sub_253267910(319, &qword_27F5A3970, &qword_27F5A3978, &qword_253D4A4F0);
  if (v1 <= 0x3F)
  {
    sub_253267910(319, &qword_27F5A3980, &qword_27F5A3988, &qword_253D4A4F8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_253252B50()
{
  v0[6] = @"HMDNotificationCurrentHomeDidChange";
  v0[8] = 0;
  v1 = v0 + 8;
  v0[7] = sub_253253350;
  v0[9] = @"HMDHomeAddedNotification";
  v0[10] = sub_253253358;
  v0[11] = 0;
  v0[12] = @"HMDHomeNameChangedNotification";
  v0[13] = sub_2532533FC;
  v0[14] = 0;
  v0[15] = @"HMDHomeRemovedNotification";
  v0[16] = sub_253253404;
  v0[17] = 0;
  v0[18] = @"HMDRoomAddedNotification";
  v0[19] = sub_25325340C;
  v0[20] = 0;
  v0[21] = @"HMDRoomNameUpdatedNotification";
  v0[22] = sub_253253414;
  v0[23] = 0;
  v0[24] = @"HMDRoomRemovedNotification";
  v0[25] = sub_25325341C;
  v0[26] = 0;
  v0[27] = @"HMDZoneAddedNotification";
  v0[28] = sub_253253424;
  v0[29] = 0;
  v0[30] = @"HMDZoneNameChangedNotification";
  v0[31] = sub_25325342C;
  v0[32] = 0;
  v0[33] = @"HMDZoneRoomsUpdatedNotification";
  v0[34] = sub_253253434;
  v0[35] = 0;
  v0[36] = @"HMDZoneRemovedNotification";
  v0[37] = sub_25325343C;
  v0[38] = 0;
  v0[39] = @"HMDActionSetAddedNotification";
  v0[40] = sub_253253444;
  v0[41] = 0;
  v0[42] = @"HMDActionSetRenamedNotification";
  v0[43] = sub_25325344C;
  v0[44] = 0;
  v0[45] = @"HMDActionSetRemovedNotification";
  v0[46] = sub_253253454;
  v0[47] = 0;
  v0[48] = @"HMDServiceGroupAddedNotification";
  v0[49] = sub_25325345C;
  v0[50] = 0;
  v0[51] = @"HMDServiceGroupNameChangedNotification";
  v0[52] = sub_253253464;
  v0[53] = 0;
  v0[54] = @"HMDServiceGroupRemovedNotification";
  v0[55] = sub_25325346C;
  v0[56] = 0;
  v0[57] = @"HMDNotificationHomeAddedAccessory";
  v0[58] = sub_253253474;
  v0[59] = 0;
  v0[60] = @"kHMDNotificationServicesUpdated";
  v0[61] = sub_25325347C;
  v0[62] = 0;
  v0[63] = @"kHMDNotificationCharacteristicsUpdated";
  v0[64] = sub_253253484;
  v0[65] = 0;
  v0[66] = @"HMDNotificationAccessoryChangedRoom";
  v0[67] = sub_25325348C;
  v0[68] = 0;
  v0[69] = @"HMDAccessoryNameUpdatedNotification";
  v0[70] = sub_253253494;
  v0[71] = 0;
  v0[72] = @"HMDHomeAccessoryRemovedNotification";
  v0[73] = sub_25325349C;
  v0[74] = 0;
  v0[81] = MEMORY[0x277D84F90];
  v40 = objc_opt_self();
  v2 = @"HMDNotificationCurrentHomeDidChange";
  v3 = @"HMDHomeAddedNotification";
  v4 = @"HMDHomeNameChangedNotification";
  v5 = @"HMDHomeRemovedNotification";
  v6 = @"HMDRoomAddedNotification";
  v7 = @"HMDRoomNameUpdatedNotification";
  v8 = @"HMDRoomRemovedNotification";
  v9 = @"HMDZoneAddedNotification";
  v10 = @"HMDZoneNameChangedNotification";
  v11 = @"HMDZoneRoomsUpdatedNotification";
  v12 = @"HMDZoneRemovedNotification";
  v13 = @"HMDActionSetAddedNotification";
  v14 = @"HMDActionSetRenamedNotification";
  v15 = @"HMDActionSetRemovedNotification";
  v16 = @"HMDServiceGroupAddedNotification";
  v17 = @"HMDServiceGroupNameChangedNotification";
  v18 = @"HMDServiceGroupRemovedNotification";
  v19 = @"HMDNotificationHomeAddedAccessory";
  v20 = @"kHMDNotificationServicesUpdated";
  v21 = @"kHMDNotificationCharacteristicsUpdated";
  v22 = @"HMDNotificationAccessoryChangedRoom";
  v23 = @"HMDAccessoryNameUpdatedNotification";
  v24 = @"HMDHomeAccessoryRemovedNotification";
  v25 = 23;
  do
  {
    v26 = *(v1 - 1);
    v27 = *v1;
    v28 = *(v1 - 2);

    v29 = [v40 defaultCenter];
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v26;
    v31[4] = v27;
    v0[79] = sub_2532681B8;
    v0[80] = v31;
    v0[75] = MEMORY[0x277D85DD0];
    v0[76] = 1107296256;
    v0[77] = sub_253253C10;
    v0[78] = &block_descriptor_8;
    v32 = _Block_copy(v0 + 75);
    v33 = v28;

    v34 = [v29 addObserverForName:v33 object:0 queue:0 usingBlock:v32];
    _Block_release(v32);

    v35 = swift_unknownObjectRetain();
    MEMORY[0x259C00990](v35);
    if (*((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_253CD0A78();
    }

    sub_253CD0A88();

    swift_unknownObjectRelease();
    v1 += 3;
    --v25;
  }

  while (v25);
  v36 = v0[82];
  v37 = v0[81];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E0, &qword_253D4A640);
  swift_arrayDestroy();
  *(v36 + 160) = v37;

  v38 = swift_task_alloc();
  v0[83] = v38;
  *v38 = v0;
  v38[1] = sub_253253240;

  return sub_253253D04();
}

uint64_t sub_253253240()
{
  v1 = *(*v0 + 656);

  return MEMORY[0x2822009F8](sub_2532335C4, v1, 0);
}

uint64_t sub_253253360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for HomeGraphIndexer.NotificationType(0);

  return MEMORY[0x2821FEBC8](a3, v7, a2);
}

uint64_t sub_2532534A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_253CCFD58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    (*(v8 + 16))(v10, v25, v7);
    MEMORY[0x259C00030](v10, v7);
    v20 = sub_253CD0B58();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    (*(v12 + 16))(v15, v17, v11);
    v21 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    v23 = v26;
    v24 = v27;
    *(v22 + 4) = v19;
    *(v22 + 5) = v23;
    *(v22 + 6) = v24;
    (*(v12 + 32))(&v22[v21], v15, v11);

    sub_25324690C(0, 0, v6, &unk_253D4A650, v22);

    return (*(v12 + 8))(v17, v11);
  }

  return result;
}

uint64_t sub_2532537C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39F0, &qword_253D4A660);
  v7[13] = swift_task_alloc();
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325393C, 0, 0);
}

uint64_t sub_25325393C()
{
  v1 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 64));

  return MEMORY[0x2822009F8](sub_2532539B0, v1, 0);
}

uint64_t sub_2532539B0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_2532168A0(v4 + v5, v1, &qword_27F5A39E8, &qword_253D4A658);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[12];
    sub_253267E60(v0[15], type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_253206054(v8, &qword_27F5A39E8, &qword_253D4A658);
    v9 = 1;
  }

  else
  {
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v14 = v0[10];
    (*(v14 + 16))(v12, v11, v13);
    sub_253206054(v11, &qword_27F5A39E8, &qword_253D4A658);
    sub_253267EC0(v7, v10, type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_253CD0B68();
    (*(v14 + 8))(v12, v13);
    sub_253267E60(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    v9 = 0;
  }

  v15 = v0[13];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39F8, &qword_253D4A668);
  (*(*(v16 - 8) + 56))(v15, v9, 1, v16);
  sub_253206054(v15, &qword_27F5A39F0, &qword_253D4A660);

  v17 = v0[1];

  return v17();
}

uint64_t sub_253253C10(uint64_t a1, uint64_t a2)
{
  v3 = sub_253CCFD58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_253CCFD18();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_253253D04()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_253CD07E8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C8, &qword_253D4A618);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v1[14] = *(v4 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253253ED8, v0, 0);
}

uint64_t sub_253253ED8()
{
  v1 = v0[5];
  v2 = v1;
  if (*(v1 + 152))
  {

    sub_253CD0BA8();

    v2 = v0[5];
  }

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2532168A0(v2 + v6, v5, &qword_27F5A39C8, &qword_253D4A618);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[6];
    sub_253206054(v0[11], &qword_27F5A39C8, &qword_253D4A618);
    sub_253211D58(v7, &off_2864FBEC8);
    v8 = sub_253CD07C8();
    v9 = sub_253CD0C98();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2531F8000, v8, v9, "Notification stream is nil", v14, 2u);
      MEMORY[0x259C040E0](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];
    v18 = v0[12];
    v19 = v0[10];
    v27 = v19;
    v28 = *(v17 + 32);
    v28(v15, v0[11], v18);
    v20 = sub_253CD0B58();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    (*(v17 + 16))(v16, v15, v18);
    v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v21;
    v28(&v23[v22], v16, v18);
    v24 = sub_25324690C(0, 0, v27, &unk_253D4A628, v23);
    (*(v17 + 8))(v15, v18);
    *(v1 + 152) = v24;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_253254248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39D0, &qword_253D4A630);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39D8, &qword_253D4A638);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532543A8, 0, 0);
}

uint64_t sub_2532543A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
    sub_253CD0B78();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_2532544F0;
    v3 = v0[10];
    v4 = v0[11];

    return MEMORY[0x2822003E8](v3, 0, 0, v4);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2532544F0()
{

  return MEMORY[0x2822009F8](sub_2532545EC, 0, 0);
}

uint64_t sub_2532545EC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

LABEL_5:

    v6 = v0[1];

    return v6();
  }

  sub_253267F28(v1, v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  if (sub_253CD0BD8())
  {
    v2 = v0[13];
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[9];

    sub_253267E60(v5, type metadata accessor for HomeGraphIndexer.NotificationType);
    (*(v4 + 8))(v2, v3);
    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_253254794;
  v9 = v0[9];

  return sub_253254950(v9);
}

uint64_t sub_253254794()
{

  return MEMORY[0x2822009F8](sub_253254890, 0, 0);
}

uint64_t sub_253254890()
{
  sub_253267E60(v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2532544F0;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_253254950(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253254A3C, v1, 0);
}

uint64_t sub_253254A3C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = __swift_project_boxed_opaque_existential_0((v5 + 112), *(v5 + 136));
  sub_2532074E4((v7 + 1), (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_253267EC0(v6, v1, type metadata accessor for HomeGraphIndexer.NotificationType);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[14] = v10;
  sub_253267F28(v1, v10 + v8, type metadata accessor for HomeGraphIndexer.NotificationType);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v14 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_253254BEC;
  v12 = MEMORY[0x277D84F78] + 8;

  return v14(&unk_253D4A610, v10, v12);
}

uint64_t sub_253254BEC(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_253254D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_253CCFD58();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = sub_253CD07E8();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v4[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v4[35] = v8;
  v4[36] = *(v8 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253255228, a3, 0);
}

uint64_t sub_253255228()
{
  v724 = v0;
  v1 = v0[36];
  v2 = v0 + 34;
  sub_253267EC0(v0[2], v0[34], type metadata accessor for HomeGraphIndexer.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v161 = v0[72];
      v162 = v0[71];
      v163 = v0[35];
      v164 = v0[36];
      v165 = v0[4];
      v4(v161, v0[34], v163);
      sub_253211D58(v165, &off_2864FBEC8);
      (*(v164 + 16))(v162, v161, v163);
      v166 = sub_253CD07C8();
      v167 = sub_253CD0C78();
      v168 = os_log_type_enabled(v166, v167);
      v169 = v0[71];
      v171 = v0[35];
      v170 = v0[36];
      v172 = v0[31];
      v173 = v0[8];
      v174 = v0[9];
      if (v168)
      {
        logj = v166;
        v175 = v0[6];
        v176 = v0[7];
        v661 = v167;
        v177 = v0[5];
        v707 = v0[8];
        v178 = swift_slowAlloc();
        v615 = swift_slowAlloc();
        v723 = v615;
        *v178 = 136315138;
        sub_253CD00D8();
        v592 = sub_253CD00F8();
        v638 = v172;
        v180 = v179;
        (*(v175 + 8))(v176, v177);
        v183 = *(v170 + 8);
        v182 = v170 + 8;
        v181 = v183;
        v183(v169, v171);
        v184 = sub_253277BA8(v592, v180, &v723);

        *(v178 + 4) = v184;
        _os_log_impl(&dword_2531F8000, logj, v661, "New home added notification received: %s", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v615);
        MEMORY[0x259C040E0](v615, -1, -1);
        MEMORY[0x259C040E0](v178, -1, -1);

        (*(v174 + 8))(v638, v707);
      }

      else
      {

        v405 = *(v170 + 8);
        v182 = v170 + 8;
        v181 = v405;
        v405(v169, v171);
        (*(v174 + 8))(v172, v173);
      }

      v0[87] = v181;
      v0[86] = v182;
      v406 = swift_task_alloc();
      v0[88] = v406;
      *v406 = v0;
      v406[1] = sub_253258C48;
      v407 = v0[72];

      return sub_25325CE28(v407);
    case 2:
      v95 = v0[70];
      v96 = v0[69];
      v97 = v0[35];
      v98 = v0[36];
      v99 = v0[4];
      v4(v95, v0[34], v97);
      sub_253211D58(v99, &off_2864FBEC8);
      (*(v98 + 16))(v96, v95, v97);
      v100 = sub_253CD07C8();
      v101 = sub_253CD0C78();
      v102 = os_log_type_enabled(v100, v101);
      v103 = v0[69];
      v105 = v0[35];
      v104 = v0[36];
      v106 = v0[30];
      v107 = v0[8];
      v108 = v0[9];
      if (v102)
      {
        logh = v100;
        v109 = v0[6];
        v110 = v0[7];
        v658 = v101;
        v111 = v0[5];
        v704 = v0[8];
        v112 = swift_slowAlloc();
        v612 = swift_slowAlloc();
        v723 = v612;
        *v112 = 136315138;
        sub_253CD00D8();
        v589 = sub_253CD00F8();
        v635 = v106;
        v114 = v113;
        (*(v109 + 8))(v110, v111);
        v117 = *(v104 + 8);
        v116 = v104 + 8;
        v115 = v117;
        v117(v103, v105);
        v118 = sub_253277BA8(v589, v114, &v723);

        *(v112 + 4) = v118;
        _os_log_impl(&dword_2531F8000, logh, v658, "Home name changed notification received: %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v612);
        MEMORY[0x259C040E0](v612, -1, -1);
        MEMORY[0x259C040E0](v112, -1, -1);

        (*(v108 + 8))(v635, v704);
      }

      else
      {

        v370 = *(v104 + 8);
        v116 = v104 + 8;
        v115 = v370;
        v370(v103, v105);
        (*(v108 + 8))(v106, v107);
      }

      v0[90] = v115;
      v0[89] = v116;
      v371 = swift_task_alloc();
      v0[91] = v371;
      *v371 = v0;
      v371[1] = sub_253259160;
      v372 = v0[70];

      return sub_25325DDCC(v372);
    case 3:
      v137 = v0[68];
      v138 = v0[67];
      v139 = v0[35];
      v140 = v0[36];
      v141 = v0[4];
      v4(v137, v0[34], v139);
      sub_253211D58(v141, &off_2864FBEC8);
      (*(v140 + 16))(v138, v137, v139);
      v142 = sub_253CD07C8();
      v143 = sub_253CD0C78();
      v144 = os_log_type_enabled(v142, v143);
      v145 = v0[67];
      v147 = v0[35];
      v146 = v0[36];
      v148 = v0[29];
      v149 = v0[8];
      v150 = v0[9];
      if (v144)
      {
        logi = v142;
        v151 = v0[6];
        v152 = v0[7];
        v660 = v143;
        v153 = v0[5];
        v706 = v0[8];
        v154 = swift_slowAlloc();
        v614 = swift_slowAlloc();
        v723 = v614;
        *v154 = 136315138;
        sub_253CD00D8();
        v591 = sub_253CD00F8();
        v637 = v148;
        v156 = v155;
        (*(v151 + 8))(v152, v153);
        v159 = *(v146 + 8);
        v158 = v146 + 8;
        v157 = v159;
        v159(v145, v147);
        v160 = sub_253277BA8(v591, v156, &v723);

        *(v154 + 4) = v160;
        _os_log_impl(&dword_2531F8000, logi, v660, "Home removed notification received: %s", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v614);
        MEMORY[0x259C040E0](v614, -1, -1);
        MEMORY[0x259C040E0](v154, -1, -1);

        (*(v150 + 8))(v637, v706);
      }

      else
      {

        v401 = *(v146 + 8);
        v158 = v146 + 8;
        v157 = v401;
        v401(v145, v147);
        (*(v150 + 8))(v148, v149);
      }

      v0[93] = v157;
      v0[92] = v158;
      v402 = swift_task_alloc();
      v0[94] = v402;
      *v402 = v0;
      v402[1] = sub_253259678;

      return sub_25325E72C();
    case 4:
      v2 = v0 + 66;
      v185 = v0[66];
      v186 = v0[65];
      v187 = v0[35];
      v188 = v0[36];
      v189 = v0[4];
      v4(v185, v0[34], v187);
      sub_253211D58(v189, &off_2864FBEC8);
      (*(v188 + 16))(v186, v185, v187);
      v190 = sub_253CD07C8();
      v639 = sub_253CD0C78();
      v191 = os_log_type_enabled(v190, v639);
      v192 = v0[65];
      v194 = v0[35];
      v193 = v0[36];
      v195 = v0[9];
      v662 = v0[28];
      logb = v0[8];
      if (v191)
      {
        v708 = v4;
        v616 = v190;
        v196 = v0[6];
        v197 = v0[7];
        v574 = v0[9];
        v198 = v0[5];
        bufb = swift_slowAlloc();
        v593 = swift_slowAlloc();
        v723 = v593;
        *bufb = 136315138;
        sub_253CD00D8();
        v569 = sub_253CD00F8();
        v200 = v199;
        v201 = v197;
        v4 = v708;
        (*(v196 + 8))(v201, v198);
        (*(v193 + 8))(v192, v194);
        v202 = sub_253277BA8(v569, v200, &v723);

        *(bufb + 4) = v202;
        _os_log_impl(&dword_2531F8000, v616, v639, "Room added notification received: %s", bufb, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v593);
        MEMORY[0x259C040E0](v593, -1, -1);
        MEMORY[0x259C040E0](bufb, -1, -1);

        (*(v574 + 8))(v662, logb);
      }

      else
      {

        (*(v193 + 8))(v192, v194);
        (*(v195 + 8))(v662, logb);
      }

      goto LABEL_74;
    case 5:
LABEL_74:
      v408 = *v2;
      v409 = v0[82];
      v410 = v0[64];
      v411 = v0[35];
      v412 = v0[36];
      v413 = v0[4];
      v4(v409, v408, v411);
      sub_253211D58(v413, &off_2864FBEC8);
      (*(v412 + 16))(v410, v409, v411);
      v414 = sub_253CD07C8();
      v415 = sub_253CD0C78();
      v416 = os_log_type_enabled(v414, v415);
      v417 = v0[64];
      v419 = v0[35];
      v418 = v0[36];
      v420 = v0[27];
      v421 = v0[8];
      v422 = v0[9];
      if (v416)
      {
        logq = v414;
        v423 = v0[6];
        v424 = v0[7];
        v671 = v415;
        v425 = v0[5];
        v717 = v0[8];
        v426 = swift_slowAlloc();
        v625 = swift_slowAlloc();
        v723 = v625;
        *v426 = 136315138;
        sub_253CD00D8();
        v602 = sub_253CD00F8();
        v648 = v420;
        v428 = v427;
        (*(v423 + 8))(v424, v425);
        v431 = *(v418 + 8);
        v430 = v418 + 8;
        v429 = v431;
        v431(v417, v419);
        v432 = sub_253277BA8(v602, v428, &v723);

        *(v426 + 4) = v432;
        _os_log_impl(&dword_2531F8000, logq, v671, "Room name updated notification received: %s", v426, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v625);
        MEMORY[0x259C040E0](v625, -1, -1);
        MEMORY[0x259C040E0](v426, -1, -1);

        (*(v422 + 8))(v648, v717);
      }

      else
      {

        v433 = *(v418 + 8);
        v430 = v418 + 8;
        v429 = v433;
        v433(v417, v419);
        (*(v422 + 8))(v420, v421);
      }

      v0[96] = v429;
      v0[95] = v430;
      v434 = swift_task_alloc();
      v0[97] = v434;
      *v434 = v0;
      v434[1] = sub_253259B90;
      v435 = v0[82];

      return sub_25325EB80(v435);
    case 6:
      v228 = v0[62];
      v227 = v0[63];
      v229 = v0[35];
      v230 = v0[36];
      v231 = v0[4];
      v4(v227, v0[34], v229);
      sub_253211D58(v231, &off_2864FBEC8);
      (*(v230 + 16))(v228, v227, v229);
      v232 = sub_253CD07C8();
      v233 = sub_253CD0C78();
      v234 = os_log_type_enabled(v232, v233);
      v235 = v0[62];
      v237 = v0[35];
      v236 = v0[36];
      v238 = v0[26];
      v239 = v0[8];
      v240 = v0[9];
      if (v234)
      {
        logl = v232;
        v241 = v0[6];
        v242 = v0[7];
        v664 = v233;
        v243 = v0[5];
        v710 = v0[8];
        v244 = swift_slowAlloc();
        v618 = swift_slowAlloc();
        v723 = v618;
        *v244 = 136315138;
        sub_253CD00D8();
        v595 = sub_253CD00F8();
        v641 = v238;
        v246 = v245;
        (*(v241 + 8))(v242, v243);
        v249 = *(v236 + 8);
        v248 = v236 + 8;
        v247 = v249;
        v249(v235, v237);
        v250 = sub_253277BA8(v595, v246, &v723);

        *(v244 + 4) = v250;
        _os_log_impl(&dword_2531F8000, logl, v664, "Room removed notification received: %s", v244, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v618);
        MEMORY[0x259C040E0](v618, -1, -1);
        MEMORY[0x259C040E0](v244, -1, -1);

        (*(v240 + 8))(v641, v710);
      }

      else
      {

        v439 = *(v236 + 8);
        v248 = v236 + 8;
        v247 = v439;
        v439(v235, v237);
        (*(v240 + 8))(v238, v239);
      }

      v0[99] = v247;
      v0[98] = v248;
      v440 = swift_task_alloc();
      v0[100] = v440;
      *v440 = v0;
      v440[1] = sub_25325A100;
      v441 = v0[63];

      return sub_25325F6C4(v441);
    case 7:
      v2 = v0 + 61;
      v294 = v0[60];
      v293 = v0[61];
      v295 = v0[35];
      v296 = v0[36];
      v297 = v0[4];
      v4(v293, v0[34], v295);
      sub_253211D58(v297, &off_2864FBEC8);
      (*(v296 + 16))(v294, v293, v295);
      v298 = sub_253CD07C8();
      v644 = sub_253CD0C78();
      v299 = os_log_type_enabled(v298, v644);
      v300 = v0[60];
      v302 = v0[35];
      v301 = v0[36];
      v303 = v0[9];
      v667 = v0[25];
      logd = v0[8];
      if (v299)
      {
        v713 = v4;
        v621 = v298;
        v304 = v0[6];
        v305 = v0[7];
        v576 = v0[9];
        v306 = v0[5];
        bufd = swift_slowAlloc();
        v598 = swift_slowAlloc();
        v723 = v598;
        *bufd = 136315138;
        sub_253CD00D8();
        v571 = sub_253CD00F8();
        v308 = v307;
        v309 = v305;
        v4 = v713;
        (*(v304 + 8))(v309, v306);
        (*(v301 + 8))(v300, v302);
        v310 = sub_253277BA8(v571, v308, &v723);

        *(bufd + 4) = v310;
        _os_log_impl(&dword_2531F8000, v621, v644, "Zone added notification received: %s", bufd, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v598);
        MEMORY[0x259C040E0](v598, -1, -1);
        MEMORY[0x259C040E0](bufd, -1, -1);

        (*(v576 + 8))(v667, logd);
      }

      else
      {

        (*(v301 + 8))(v300, v302);
        (*(v303 + 8))(v667, logd);
      }

      goto LABEL_112;
    case 8:
LABEL_112:
      v536 = *v2;
      v537 = v0[81];
      v538 = v0[59];
      v539 = v0[35];
      v540 = v0[36];
      v541 = v0[4];
      v4(v537, v536, v539);
      sub_253211D58(v541, &off_2864FBEC8);
      (*(v540 + 16))(v538, v537, v539);
      v542 = sub_253CD07C8();
      v543 = sub_253CD0C78();
      v544 = os_log_type_enabled(v542, v543);
      v545 = v0[59];
      v547 = v0[35];
      v546 = v0[36];
      v548 = v0[24];
      v549 = v0[8];
      v550 = v0[9];
      if (v544)
      {
        logv = v542;
        v551 = v0[6];
        v552 = v0[7];
        v676 = v543;
        v553 = v0[5];
        v722 = v0[8];
        v554 = swift_slowAlloc();
        v630 = swift_slowAlloc();
        v723 = v630;
        *v554 = 136315138;
        sub_253CD00D8();
        v607 = sub_253CD00F8();
        v653 = v548;
        v556 = v555;
        (*(v551 + 8))(v552, v553);
        v559 = *(v546 + 8);
        v558 = v546 + 8;
        v557 = v559;
        v559(v545, v547);
        v560 = sub_253277BA8(v607, v556, &v723);

        *(v554 + 4) = v560;
        _os_log_impl(&dword_2531F8000, logv, v676, "Zone name changed notification received: %s", v554, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v630);
        MEMORY[0x259C040E0](v630, -1, -1);
        MEMORY[0x259C040E0](v554, -1, -1);

        (*(v550 + 8))(v653, v722);
      }

      else
      {

        v561 = *(v546 + 8);
        v558 = v546 + 8;
        v557 = v561;
        v561(v545, v547);
        (*(v550 + 8))(v548, v549);
      }

      v0[102] = v557;
      v0[101] = v558;
      v562 = swift_task_alloc();
      v0[103] = v562;
      *v562 = v0;
      v562[1] = sub_25325A618;
      v563 = v0[81];

      return sub_25325FFB0(v563);
    case 9:
      v72 = v0[57];
      v71 = v0[58];
      v73 = v0[35];
      v74 = v0[36];
      v75 = v0[4];
      v4(v71, v0[34], v73);
      sub_253211D58(v75, &off_2864FBEC8);
      (*(v74 + 16))(v72, v71, v73);
      v76 = sub_253CD07C8();
      v77 = sub_253CD0C78();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v0[57];
      v81 = v0[35];
      v80 = v0[36];
      v82 = v0[23];
      v83 = v0[8];
      v84 = v0[9];
      if (v78)
      {
        logg = v76;
        v85 = v0[6];
        v86 = v0[7];
        v657 = v77;
        v87 = v0[5];
        v703 = v0[8];
        v88 = swift_slowAlloc();
        v611 = swift_slowAlloc();
        v723 = v611;
        *v88 = 136315138;
        sub_253CD00D8();
        v588 = sub_253CD00F8();
        v634 = v82;
        v90 = v89;
        (*(v85 + 8))(v86, v87);
        v93 = *(v80 + 8);
        v92 = v80 + 8;
        v91 = v93;
        v93(v79, v81);
        v94 = sub_253277BA8(v588, v90, &v723);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_2531F8000, logg, v657, "Zone updated notification received: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v611);
        MEMORY[0x259C040E0](v611, -1, -1);
        MEMORY[0x259C040E0](v88, -1, -1);

        (*(v84 + 8))(v634, v703);
      }

      else
      {

        v367 = *(v80 + 8);
        v92 = v80 + 8;
        v91 = v367;
        v367(v79, v81);
        (*(v84 + 8))(v82, v83);
      }

      v0[105] = v91;
      v0[104] = v92;
      v368 = swift_task_alloc();
      v0[106] = v368;
      *v368 = v0;
      v368[1] = sub_25325A79C;
      v369 = v0[58];

      return sub_253260910(v369);
    case 10:
      v270 = v0[55];
      v269 = v0[56];
      v271 = v0[35];
      v272 = v0[36];
      v273 = v0[4];
      v4(v269, v0[34], v271);
      sub_253211D58(v273, &off_2864FBEC8);
      (*(v272 + 16))(v270, v269, v271);
      v274 = sub_253CD07C8();
      v275 = sub_253CD0C78();
      v276 = os_log_type_enabled(v274, v275);
      v277 = v0[55];
      v279 = v0[35];
      v278 = v0[36];
      v280 = v0[22];
      v281 = v0[8];
      v282 = v0[9];
      if (v276)
      {
        logm = v274;
        v283 = v0[6];
        v284 = v0[7];
        v666 = v275;
        v285 = v0[5];
        v712 = v0[8];
        v286 = swift_slowAlloc();
        v620 = swift_slowAlloc();
        v723 = v620;
        *v286 = 136315138;
        sub_253CD00D8();
        v597 = sub_253CD00F8();
        v643 = v280;
        v288 = v287;
        (*(v283 + 8))(v284, v285);
        v291 = *(v278 + 8);
        v290 = v278 + 8;
        v289 = v291;
        v291(v277, v279);
        v292 = sub_253277BA8(v597, v288, &v723);

        *(v286 + 4) = v292;
        _os_log_impl(&dword_2531F8000, logm, v666, "Zone removed notification received: %s", v286, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v620);
        MEMORY[0x259C040E0](v620, -1, -1);
        MEMORY[0x259C040E0](v286, -1, -1);

        (*(v282 + 8))(v643, v712);
      }

      else
      {

        v533 = *(v278 + 8);
        v290 = v278 + 8;
        v289 = v533;
        v533(v277, v279);
        (*(v282 + 8))(v280, v281);
      }

      v0[108] = v289;
      v0[107] = v290;
      v534 = swift_task_alloc();
      v0[109] = v534;
      *v534 = v0;
      v534[1] = sub_25325ACB4;
      v535 = v0[56];

      return sub_253262A50(v535);
    case 11:
      v2 = v0 + 54;
      v54 = v0[53];
      v53 = v0[54];
      v55 = v0[35];
      v56 = v0[36];
      v57 = v0[4];
      v4(v53, v0[34], v55);
      sub_253211D58(v57, &off_2864FBEC8);
      (*(v56 + 16))(v54, v53, v55);
      v58 = sub_253CD07C8();
      v633 = sub_253CD0C78();
      v59 = os_log_type_enabled(v58, v633);
      v60 = v0[53];
      v62 = v0[35];
      v61 = v0[36];
      v63 = v0[9];
      v656 = v0[21];
      log = v0[8];
      if (v59)
      {
        v702 = v4;
        v610 = v58;
        v64 = v0[6];
        v65 = v0[7];
        v572 = v0[9];
        v66 = v0[5];
        buf = swift_slowAlloc();
        v587 = swift_slowAlloc();
        v723 = v587;
        *buf = 136315138;
        sub_253CD00D8();
        v567 = sub_253CD00F8();
        v68 = v67;
        v69 = v65;
        v4 = v702;
        (*(v64 + 8))(v69, v66);
        (*(v61 + 8))(v60, v62);
        v70 = sub_253277BA8(v567, v68, &v723);

        *(buf + 4) = v70;
        _os_log_impl(&dword_2531F8000, v610, v633, "Scene added notification received: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v587);
        MEMORY[0x259C040E0](v587, -1, -1);
        MEMORY[0x259C040E0](buf, -1, -1);

        (*(v572 + 8))(v656, log);
      }

      else
      {

        (*(v61 + 8))(v60, v62);
        (*(v63 + 8))(v656, log);
      }

      goto LABEL_40;
    case 12:
LABEL_40:
      v339 = *v2;
      v340 = v0[80];
      v341 = v0[52];
      v342 = v0[35];
      v343 = v0[36];
      v344 = v0[4];
      v4(v340, v339, v342);
      sub_253211D58(v344, &off_2864FBEC8);
      (*(v343 + 16))(v341, v340, v342);
      v345 = sub_253CD07C8();
      v346 = sub_253CD0C78();
      v347 = os_log_type_enabled(v345, v346);
      v348 = v0[52];
      v350 = v0[35];
      v349 = v0[36];
      v351 = v0[20];
      v352 = v0[8];
      v353 = v0[9];
      if (v347)
      {
        logo = v345;
        v354 = v0[6];
        v355 = v0[7];
        v669 = v346;
        v356 = v0[5];
        v715 = v0[8];
        v357 = swift_slowAlloc();
        v623 = swift_slowAlloc();
        v723 = v623;
        *v357 = 136315138;
        sub_253CD00D8();
        v600 = sub_253CD00F8();
        v646 = v351;
        v359 = v358;
        (*(v354 + 8))(v355, v356);
        v362 = *(v349 + 8);
        v361 = v349 + 8;
        v360 = v362;
        v362(v348, v350);
        v363 = sub_253277BA8(v600, v359, &v723);

        *(v357 + 4) = v363;
        _os_log_impl(&dword_2531F8000, logo, v669, "Scene renamed notification received: %s", v357, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v623);
        MEMORY[0x259C040E0](v623, -1, -1);
        MEMORY[0x259C040E0](v357, -1, -1);

        (*(v353 + 8))(v646, v715);
      }

      else
      {

        v364 = *(v349 + 8);
        v361 = v349 + 8;
        v360 = v364;
        v364(v348, v350);
        (*(v353 + 8))(v351, v352);
      }

      v0[111] = v360;
      v0[110] = v361;
      v365 = swift_task_alloc();
      v0[112] = v365;
      *v365 = v0;
      v365[1] = sub_25325B1CC;
      v366 = v0[80];

      return sub_2532633C8(v366);
    case 13:
      v204 = v0[50];
      v203 = v0[51];
      v205 = v0[35];
      v206 = v0[36];
      v207 = v0[4];
      v4(v203, v0[34], v205);
      sub_253211D58(v207, &off_2864FBEC8);
      (*(v206 + 16))(v204, v203, v205);
      v208 = sub_253CD07C8();
      v209 = sub_253CD0C78();
      v210 = os_log_type_enabled(v208, v209);
      v211 = v0[50];
      v213 = v0[35];
      v212 = v0[36];
      v214 = v0[19];
      v215 = v0[8];
      v216 = v0[9];
      if (v210)
      {
        logk = v208;
        v217 = v0[6];
        v218 = v0[7];
        v663 = v209;
        v219 = v0[5];
        v709 = v0[8];
        v220 = swift_slowAlloc();
        v617 = swift_slowAlloc();
        v723 = v617;
        *v220 = 136315138;
        sub_253CD00D8();
        v594 = sub_253CD00F8();
        v640 = v214;
        v222 = v221;
        (*(v217 + 8))(v218, v219);
        v225 = *(v212 + 8);
        v224 = v212 + 8;
        v223 = v225;
        v225(v211, v213);
        v226 = sub_253277BA8(v594, v222, &v723);

        *(v220 + 4) = v226;
        _os_log_impl(&dword_2531F8000, logk, v663, "Scene removed notification received: %s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v617);
        MEMORY[0x259C040E0](v617, -1, -1);
        MEMORY[0x259C040E0](v220, -1, -1);

        (*(v216 + 8))(v640, v709);
      }

      else
      {

        v436 = *(v212 + 8);
        v224 = v212 + 8;
        v223 = v436;
        v436(v211, v213);
        (*(v216 + 8))(v214, v215);
      }

      v0[114] = v223;
      v0[113] = v224;
      v437 = swift_task_alloc();
      v0[115] = v437;
      *v437 = v0;
      v437[1] = sub_25325B350;
      v438 = v0[51];

      return sub_2532649E8(v438);
    case 14:
      v2 = v0 + 49;
      v120 = v0[48];
      v119 = v0[49];
      v121 = v0[35];
      v122 = v0[36];
      v123 = v0[4];
      v4(v119, v0[34], v121);
      sub_253211D58(v123, &off_2864FBEC8);
      (*(v122 + 16))(v120, v119, v121);
      v124 = sub_253CD07C8();
      v636 = sub_253CD0C78();
      v125 = os_log_type_enabled(v124, v636);
      v126 = v0[48];
      v128 = v0[35];
      v127 = v0[36];
      v129 = v0[9];
      v659 = v0[18];
      loga = v0[8];
      if (v125)
      {
        v705 = v4;
        v613 = v124;
        v130 = v0[6];
        v131 = v0[7];
        v573 = v0[9];
        v132 = v0[5];
        bufa = swift_slowAlloc();
        v590 = swift_slowAlloc();
        v723 = v590;
        *bufa = 136315138;
        sub_253CD00D8();
        v568 = sub_253CD00F8();
        v134 = v133;
        v135 = v131;
        v4 = v705;
        (*(v130 + 8))(v135, v132);
        (*(v127 + 8))(v126, v128);
        v136 = sub_253277BA8(v568, v134, &v723);

        *(bufa + 4) = v136;
        _os_log_impl(&dword_2531F8000, v613, v636, "Service group added notification received: %s", bufa, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v590);
        MEMORY[0x259C040E0](v590, -1, -1);
        MEMORY[0x259C040E0](bufa, -1, -1);

        (*(v573 + 8))(v659, loga);
      }

      else
      {

        (*(v127 + 8))(v126, v128);
        (*(v129 + 8))(v659, loga);
      }

      goto LABEL_55;
    case 15:
LABEL_55:
      v373 = *v2;
      v374 = v0[79];
      v375 = v0[47];
      v376 = v0[35];
      v377 = v0[36];
      v378 = v0[4];
      v4(v374, v373, v376);
      sub_253211D58(v378, &off_2864FBEC8);
      (*(v377 + 16))(v375, v374, v376);
      v379 = sub_253CD07C8();
      v380 = sub_253CD0C78();
      v381 = os_log_type_enabled(v379, v380);
      v382 = v0[47];
      v384 = v0[35];
      v383 = v0[36];
      v385 = v0[17];
      v386 = v0[8];
      v387 = v0[9];
      if (v381)
      {
        logp = v379;
        v388 = v0[6];
        v389 = v0[7];
        v670 = v380;
        v390 = v0[5];
        v716 = v0[8];
        v391 = swift_slowAlloc();
        v624 = swift_slowAlloc();
        v723 = v624;
        *v391 = 136315138;
        sub_253CD00D8();
        v601 = sub_253CD00F8();
        v647 = v385;
        v393 = v392;
        (*(v388 + 8))(v389, v390);
        v396 = *(v383 + 8);
        v395 = v383 + 8;
        v394 = v396;
        v396(v382, v384);
        v397 = sub_253277BA8(v601, v393, &v723);

        *(v391 + 4) = v397;
        _os_log_impl(&dword_2531F8000, logp, v670, "Service group renamed notification received: %s", v391, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v624);
        MEMORY[0x259C040E0](v624, -1, -1);
        MEMORY[0x259C040E0](v391, -1, -1);

        (*(v387 + 8))(v647, v716);
      }

      else
      {

        v398 = *(v383 + 8);
        v395 = v383 + 8;
        v394 = v398;
        v398(v382, v384);
        (*(v387 + 8))(v385, v386);
      }

      v0[117] = v394;
      v0[116] = v395;
      v399 = swift_task_alloc();
      v0[118] = v399;
      *v399 = v0;
      v399[1] = sub_25325B868;
      v400 = v0[79];

      return sub_253266614(v400);
    case 16:
      v30 = v0[45];
      v29 = v0[46];
      v31 = v0[35];
      v32 = v0[36];
      v33 = v0[4];
      v4(v29, v0[34], v31);
      sub_253211D58(v33, &off_2864FBEC8);
      (*(v32 + 16))(v30, v29, v31);
      v34 = sub_253CD07C8();
      v35 = sub_253CD0C78();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[45];
      v39 = v0[35];
      v38 = v0[36];
      v40 = v0[16];
      v41 = v0[8];
      v42 = v0[9];
      if (v36)
      {
        logf = v34;
        v43 = v0[6];
        v44 = v0[7];
        v655 = v35;
        v45 = v0[5];
        v701 = v0[8];
        v46 = swift_slowAlloc();
        v609 = swift_slowAlloc();
        v723 = v609;
        *v46 = 136315138;
        sub_253CD00D8();
        v586 = sub_253CD00F8();
        v632 = v40;
        v48 = v47;
        (*(v43 + 8))(v44, v45);
        v51 = *(v38 + 8);
        v50 = v38 + 8;
        v49 = v51;
        v51(v37, v39);
        v52 = sub_253277BA8(v586, v48, &v723);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_2531F8000, logf, v655, "Service group removed notification received: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v609);
        MEMORY[0x259C040E0](v609, -1, -1);
        MEMORY[0x259C040E0](v46, -1, -1);

        (*(v42 + 8))(v632, v701);
      }

      else
      {

        v335 = *(v38 + 8);
        v50 = v38 + 8;
        v49 = v335;
        v335(v37, v39);
        (*(v42 + 8))(v40, v41);
      }

      v0[120] = v49;
      v0[119] = v50;
      v336 = swift_task_alloc();
      v0[121] = v336;
      *v336 = v0;
      v336[1] = sub_25325B9EC;
      v337 = v0[46];

      return sub_253266F54(v337);
    case 17:
      v2 = v0 + 44;
      v252 = v0[43];
      v251 = v0[44];
      v253 = v0[35];
      v254 = v0[36];
      v255 = v0[4];
      v4(v251, v0[34], v253);
      sub_253211D58(v255, &off_2864FBEC8);
      (*(v254 + 16))(v252, v251, v253);
      v256 = sub_253CD07C8();
      v642 = sub_253CD0C78();
      v257 = os_log_type_enabled(v256, v642);
      v258 = v0[43];
      v260 = v0[35];
      v259 = v0[36];
      v261 = v0[9];
      v665 = v0[15];
      logc = v0[8];
      if (v257)
      {
        v711 = v4;
        v619 = v256;
        v262 = v0[6];
        v263 = v0[7];
        v575 = v0[9];
        v264 = v0[5];
        bufc = swift_slowAlloc();
        v596 = swift_slowAlloc();
        v723 = v596;
        *bufc = 136315138;
        sub_253CD00D8();
        v570 = sub_253CD00F8();
        v266 = v265;
        v267 = v263;
        v4 = v711;
        (*(v262 + 8))(v267, v264);
        (*(v259 + 8))(v258, v260);
        v268 = sub_253277BA8(v570, v266, &v723);

        *(bufc + 4) = v268;
        _os_log_impl(&dword_2531F8000, v619, v642, "Accessory added notification received: %s", bufc, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v596);
        MEMORY[0x259C040E0](v596, -1, -1);
        MEMORY[0x259C040E0](bufc, -1, -1);

        (*(v575 + 8))(v665, logc);
      }

      else
      {

        (*(v259 + 8))(v258, v260);
        (*(v261 + 8))(v665, logc);
      }

      goto LABEL_89;
    case 18:
LABEL_89:
      v442 = *v2;
      v443 = v0[78];
      v444 = v0[42];
      v445 = v0[35];
      v446 = v0[36];
      v447 = v0[4];
      v4(v443, v442, v445);
      sub_253211D58(v447, &off_2864FBEC8);
      (*(v446 + 16))(v444, v443, v445);
      v448 = sub_253CD07C8();
      v449 = sub_253CD0C88();
      v450 = os_log_type_enabled(v448, v449);
      v451 = v0[42];
      v452 = v0[35];
      v453 = v0[36];
      v454 = v0[14];
      v456 = v0[8];
      v455 = v0[9];
      if (v450)
      {
        logr = v0[14];
        v718 = v4;
        v672 = v448;
        v457 = v0[6];
        v458 = v0[7];
        v459 = v0[5];
        v626 = v449;
        v460 = swift_slowAlloc();
        v603 = swift_slowAlloc();
        v723 = v603;
        *v460 = 136315138;
        sub_253CD00D8();
        bufe = sub_253CD00F8();
        v649 = v456;
        v462 = v461;
        v463 = v458;
        v4 = v718;
        (*(v457 + 8))(v463, v459);
        (*(v453 + 8))(v451, v452);
        v464 = sub_253277BA8(bufe, v462, &v723);

        *(v460 + 4) = v464;
        _os_log_impl(&dword_2531F8000, v672, v626, "services inside accessory updated notification received: %s", v460, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v603);
        MEMORY[0x259C040E0](v603, -1, -1);
        MEMORY[0x259C040E0](v460, -1, -1);

        (*(v455 + 8))(logr, v649);
      }

      else
      {

        (*(v453 + 8))(v451, v452);
        (*(v455 + 8))(v454, v456);
      }

      v4(v0[77], v0[78], v0[35]);
      goto LABEL_93;
    case 19:
      v4(v0[77], v0[34], v0[35]);
LABEL_93:
      v465 = v0[77];
      v466 = v0[41];
      v467 = v0[35];
      v468 = v0[36];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v468 + 16))(v466, v465, v467);
      v469 = sub_253CD07C8();
      v470 = sub_253CD0C78();
      v471 = os_log_type_enabled(v469, v470);
      v472 = v0[41];
      v473 = v0[35];
      v474 = v0[36];
      v475 = v0[13];
      v477 = v0[8];
      v476 = v0[9];
      if (v471)
      {
        logs = v0[13];
        v719 = v4;
        v673 = v469;
        v478 = v0[6];
        v479 = v0[7];
        v480 = v0[5];
        v627 = v470;
        v481 = swift_slowAlloc();
        v604 = swift_slowAlloc();
        v723 = v604;
        *v481 = 136315138;
        sub_253CD00D8();
        buff = sub_253CD00F8();
        v650 = v477;
        v483 = v482;
        v484 = v479;
        v4 = v719;
        (*(v478 + 8))(v484, v480);
        (*(v474 + 8))(v472, v473);
        v485 = sub_253277BA8(buff, v483, &v723);

        *(v481 + 4) = v485;
        _os_log_impl(&dword_2531F8000, v673, v627, "Characteristics inside accessory updated notification received: %s", v481, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v604);
        MEMORY[0x259C040E0](v604, -1, -1);
        MEMORY[0x259C040E0](v481, -1, -1);

        (*(v476 + 8))(logs, v650);
      }

      else
      {

        (*(v474 + 8))(v472, v473);
        (*(v476 + 8))(v475, v477);
      }

      v4(v0[76], v0[77], v0[35]);
      goto LABEL_97;
    case 20:
      v4(v0[76], v0[34], v0[35]);
LABEL_97:
      v486 = v0[76];
      v487 = v0[40];
      v488 = v0[35];
      v489 = v0[36];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v489 + 16))(v487, v486, v488);
      v490 = sub_253CD07C8();
      v491 = sub_253CD0C78();
      v492 = os_log_type_enabled(v490, v491);
      v493 = v0[40];
      v494 = v0[35];
      v495 = v0[36];
      v496 = v0[12];
      v498 = v0[8];
      v497 = v0[9];
      if (v492)
      {
        logt = v0[12];
        v720 = v4;
        v674 = v490;
        v499 = v0[6];
        v500 = v0[7];
        v501 = v0[5];
        v628 = v491;
        v502 = swift_slowAlloc();
        v605 = swift_slowAlloc();
        v723 = v605;
        *v502 = 136315138;
        sub_253CD00D8();
        bufg = sub_253CD00F8();
        v651 = v498;
        v504 = v503;
        v505 = v500;
        v4 = v720;
        (*(v499 + 8))(v505, v501);
        (*(v495 + 8))(v493, v494);
        v506 = sub_253277BA8(bufg, v504, &v723);

        *(v502 + 4) = v506;
        _os_log_impl(&dword_2531F8000, v674, v628, "Accessory moved to room notification received: %s", v502, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v605);
        MEMORY[0x259C040E0](v605, -1, -1);
        MEMORY[0x259C040E0](v502, -1, -1);

        (*(v497 + 8))(logt, v651);
      }

      else
      {

        (*(v495 + 8))(v493, v494);
        (*(v497 + 8))(v496, v498);
      }

      v4(v0[75], v0[76], v0[35]);
      goto LABEL_101;
    case 21:
      v4(v0[75], v0[34], v0[35]);
LABEL_101:
      v507 = v0[75];
      v508 = v0[39];
      v509 = v0[35];
      v510 = v0[36];
      sub_253211D58(v0[4], &off_2864FBEC8);
      (*(v510 + 16))(v508, v507, v509);
      v511 = sub_253CD07C8();
      v512 = sub_253CD0C78();
      v513 = os_log_type_enabled(v511, v512);
      v514 = v0[39];
      v516 = v0[35];
      v515 = v0[36];
      v517 = v0[11];
      v518 = v0[8];
      v519 = v0[9];
      if (v513)
      {
        logu = v511;
        v520 = v0[6];
        v521 = v0[7];
        v675 = v512;
        v522 = v0[5];
        v721 = v0[8];
        v523 = swift_slowAlloc();
        v629 = swift_slowAlloc();
        v723 = v629;
        *v523 = 136315138;
        sub_253CD00D8();
        v606 = sub_253CD00F8();
        v652 = v517;
        v525 = v524;
        (*(v520 + 8))(v521, v522);
        v528 = *(v515 + 8);
        v527 = v515 + 8;
        v526 = v528;
        v528(v514, v516);
        v529 = sub_253277BA8(v606, v525, &v723);

        *(v523 + 4) = v529;
        _os_log_impl(&dword_2531F8000, logu, v675, "Accessory name updated notification received: %s", v523, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v629);
        MEMORY[0x259C040E0](v629, -1, -1);
        MEMORY[0x259C040E0](v523, -1, -1);

        (*(v519 + 8))(v652, v721);
      }

      else
      {

        v530 = *(v515 + 8);
        v527 = v515 + 8;
        v526 = v530;
        v530(v514, v516);
        (*(v519 + 8))(v517, v518);
      }

      v0[123] = v526;
      v0[122] = v527;
      v531 = swift_task_alloc();
      v0[124] = v531;
      *v531 = v0;
      v531[1] = sub_25325BF04;
      v532 = v0[75];

      result = sub_2532652A4(v532);
      break;
    case 22:
      v312 = v0[37];
      v311 = v0[38];
      v313 = v0[35];
      v314 = v0[36];
      v315 = v0[4];
      v4(v311, v0[34], v313);
      sub_253211D58(v315, &off_2864FBEC8);
      (*(v314 + 16))(v312, v311, v313);
      v316 = sub_253CD07C8();
      v317 = sub_253CD0C78();
      v318 = os_log_type_enabled(v316, v317);
      v320 = v0[36];
      v319 = v0[37];
      v321 = v0[35];
      v323 = v0[9];
      v322 = v0[10];
      v324 = v0[8];
      if (v318)
      {
        logn = v316;
        v325 = v0[6];
        v326 = v0[7];
        v668 = v317;
        v327 = v0[5];
        v714 = v0[8];
        v328 = swift_slowAlloc();
        v622 = swift_slowAlloc();
        v723 = v622;
        *v328 = 136315138;
        sub_253CD00D8();
        v599 = sub_253CD00F8();
        v645 = v322;
        v330 = v329;
        (*(v325 + 8))(v326, v327);
        v333 = *(v320 + 8);
        v332 = v320 + 8;
        v331 = v333;
        v333(v319, v321);
        v334 = sub_253277BA8(v599, v330, &v723);

        *(v328 + 4) = v334;
        _os_log_impl(&dword_2531F8000, logn, v668, "Accessory removed notification received: %s", v328, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v622);
        MEMORY[0x259C040E0](v622, -1, -1);
        MEMORY[0x259C040E0](v328, -1, -1);

        (*(v323 + 8))(v645, v714);
      }

      else
      {

        v564 = *(v320 + 8);
        v332 = v320 + 8;
        v331 = v564;
        v564(v319, v321);
        (*(v323 + 8))(v322, v324);
      }

      v0[126] = v331;
      v0[125] = v332;
      v565 = swift_task_alloc();
      v0[127] = v565;
      *v565 = v0;
      v565[1] = sub_25325C088;
      v566 = v0[38];

      result = sub_253265848(v566);
      break;
    default:
      v5 = v0[74];
      v6 = v0[73];
      v7 = v0[35];
      v8 = v0[36];
      v9 = v0[4];
      v4(v5, v0[34], v7);
      sub_253211D58(v9, &off_2864FBEC8);
      (*(v8 + 16))(v6, v5, v7);
      v10 = sub_253CD07C8();
      v11 = sub_253CD0C78();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[73];
      v15 = v0[35];
      v14 = v0[36];
      v16 = v0[32];
      v17 = v0[8];
      v18 = v0[9];
      if (v12)
      {
        loge = v10;
        v19 = v0[6];
        v20 = v0[7];
        v654 = v11;
        v21 = v0[5];
        v700 = v0[8];
        v22 = swift_slowAlloc();
        v608 = swift_slowAlloc();
        v723 = v608;
        *v22 = 136315138;
        sub_253CD00D8();
        v585 = sub_253CD00F8();
        v631 = v16;
        v24 = v23;
        (*(v19 + 8))(v20, v21);
        v27 = *(v14 + 8);
        v26 = v14 + 8;
        v25 = v27;
        v27(v13, v15);
        v28 = sub_253277BA8(v585, v24, &v723);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_2531F8000, loge, v654, "Current home changed notification received: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v608);
        MEMORY[0x259C040E0](v608, -1, -1);
        MEMORY[0x259C040E0](v22, -1, -1);

        (*(v18 + 8))(v631, v700);
      }

      else
      {

        v403 = *(v14 + 8);
        v26 = v14 + 8;
        v25 = v403;
        v403(v13, v15);
        (*(v18 + 8))(v16, v17);
      }

      v0[84] = v25;
      v0[83] = v26;
      v404 = swift_task_alloc();
      v0[85] = v404;
      *v404 = v0;
      v404[1] = sub_253258730;

      result = sub_25325C5A0();
      break;
  }

  return result;
}

uint64_t sub_253258730()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_253258840, v1, 0);
}

uint64_t sub_253258840()
{
  (*(v0 + 672))(*(v0 + 592), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253258C48()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_253258D58, v1, 0);
}

uint64_t sub_253258D58()
{
  (*(v0 + 696))(*(v0 + 576), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253259160()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_253259270, v1, 0);
}

uint64_t sub_253259270()
{
  (*(v0 + 720))(*(v0 + 560), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253259678()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_253259788, v1, 0);
}

uint64_t sub_253259788()
{
  (*(v0 + 744))(*(v0 + 544), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253259B90()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_253259D14, v4, 0);
}

uint64_t sub_253259D14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325A100()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325A210, v1, 0);
}

uint64_t sub_25325A210()
{
  (*(v0 + 792))(*(v0 + 504), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325A618()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25326866C, v4, 0);
}

uint64_t sub_25325A79C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325A8AC, v1, 0);
}

uint64_t sub_25325A8AC()
{
  (*(v0 + 840))(*(v0 + 464), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325ACB4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325ADC4, v1, 0);
}

uint64_t sub_25325ADC4()
{
  (*(v0 + 864))(*(v0 + 448), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325B1CC()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25326866C, v4, 0);
}

uint64_t sub_25325B350()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325B460, v1, 0);
}

uint64_t sub_25325B460()
{
  (*(v0 + 912))(*(v0 + 408), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325B868()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25326866C, v4, 0);
}

uint64_t sub_25325B9EC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325BAFC, v1, 0);
}

uint64_t sub_25325BAFC()
{
  (*(v0 + 960))(*(v0 + 368), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325BF04()
{
  v1 = *(*v0 + 984);
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_25326866C, v4, 0);
}

uint64_t sub_25325C088()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25325C198, v1, 0);
}

uint64_t sub_25325C198()
{
  (*(v0 + 1008))(*(v0 + 304), *(v0 + 280));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25325C5A0()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for HomeEntity(0);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325C66C, v0, 0);
}

uint64_t sub_25325C66C()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136));
  sub_2532074E4((v1 + 1), (v0 + 2));
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [v2 homes];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  v7 = sub_253CD0A58();
  v0[24] = v7;

  if (v7 >> 62)
  {
LABEL_23:
    v34 = sub_253CD0ED8();
    v0[25] = v34;
    if (v34)
    {
LABEL_4:
      v9 = 0;
      while (1)
      {
        v10 = v0[24];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x259C00F30](v9);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v10 + 8 * v9 + 32);
        }

        v12 = v11;
        v0[26] = v11;
        v0[27] = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
        v0[28] = v13;
        v14 = *(v13 + 16);
        v0[29] = v14;
        if (v14)
        {
          break;
        }

        v9 = v0[27];
        if (v9 == v0[25])
        {
          goto LABEL_12;
        }
      }

      v0[30] = 0;
      v17 = v0[26];

      sub_2532074E4(v18 + 32, (v0 + 7));
      v19 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v20 = [v17 urlString];
      if (v20)
      {
        v21 = v20;
        v22 = sub_253CD0968();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = v0[26];
      v27 = v0[22];
      v26 = v0[23];
      *v26 = v22;
      v26[1] = v24;
      v28 = [v25 spiClientIdentifier];
      sub_253CCFF38();

      v29 = [v25 name];
      v30 = sub_253CD0968();
      v32 = v31;

      v33 = (v26 + *(v27 + 24));
      *v33 = v30;
      v33[1] = v32;
      sub_253267E60(v26, type metadata accessor for HomeEntity);
      v5 = *v19;
      v0[31] = *v19;
      v4 = sub_25325C984;
      v6 = 0;

      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[25] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_12:

  v15 = v0[1];

  return v15();
}

uint64_t sub_25325C984()
{
  v1 = v0[31];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[31];
  }

  v2 = v0[20];
  v3 = v0[21];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 12);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 12), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325CB94, v2, 0);
}

uint64_t sub_25325CB94()
{
  v1 = v0[29];
  v2 = v0[30] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[26];

    while (1)
    {
      v6 = v0[27];
      if (v6 == v0[25])
      {
        break;
      }

      v7 = v0[24];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C00F30](v0[27]);
      }

      else
      {
        if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v4 = *(v7 + 8 * v6 + 32);
      }

      v8 = v4;
      v0[26] = v4;
      v0[27] = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v7, v5);
      }

      v9 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
      v0[28] = v9;
      v10 = *(v9 + 16);
      v0[29] = v10;
      if (v10)
      {

        v11 = 0;
        goto LABEL_16;
      }
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v11 = v0[30] + 1;
    v12 = v0[28];
LABEL_16:
    v0[30] = v11;
    v15 = v0[26];
    sub_2532074E4(v12 + 40 * v11 + 32, (v0 + 7));
    v16 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v17 = [v15 urlString];
    if (v17)
    {
      v18 = v17;
      v19 = sub_253CD0968();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = v0[26];
    v24 = v0[22];
    v23 = v0[23];
    *v23 = v19;
    v23[1] = v21;
    v25 = [v22 spiClientIdentifier];
    sub_253CCFF38();

    v26 = [v22 name];
    v27 = sub_253CD0968();
    v29 = v28;

    v30 = (v23 + *(v24 + 24));
    *v30 = v27;
    v30[1] = v29;
    sub_253267E60(v23, type metadata accessor for HomeEntity);
    v7 = *v16;
    v0[31] = *v16;
    v4 = sub_25325C984;
    v5 = 0;

    return MEMORY[0x2822009F8](v4, v7, v5);
  }
}

uint64_t sub_25325CE28(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_253CD07E8();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for HomeEntity(0);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v2[42] = swift_task_alloc();
  v4 = sub_253CCFF58();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v5 = sub_253CCFD58();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325D08C, v1, 0);
}

uint64_t sub_25325D08C()
{
  v101 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v1 = sub_253CCFD48();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 232) = sub_253CD0968();
  *(v0 + 240) = v3;
  sub_253CD0F58();
  if (!*(v2 + 16) || (v4 = sub_253217D40(v0 + 16), (v5 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v2 + 56) + 32 * v4, v0 + 176);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 200))
  {
LABEL_12:
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    sub_253206054(v0 + 176, &qword_27F5A2AB0, &unk_253D4A560);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_13:
    v29 = *(v0 + 392);
    v28 = *(v0 + 400);
    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v32 = *(v0 + 272);
    sub_253206054(*(v0 + 336), &unk_27F5A2AD0, &unk_253D486A0);
    sub_253211D58(v32, &off_2864FBEC8);
    (*(v31 + 16))(v29, v28, v30);
    v33 = sub_253CD07C8();
    v34 = sub_253CD0C98();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 392);
    v37 = *(v0 + 400);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v40 = *(v0 + 288);
    v41 = *(v0 + 296);
    v42 = *(v0 + 280);
    if (v35)
    {
      v98 = *(v0 + 296);
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v100 = v94;
      *v43 = 136315138;
      v92 = v34;
      *(v0 + 248) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v44 = sub_253CD0DB8();
      v45 = v39;
      v47 = v46;
      v48 = *(v38 + 8);
      v49 = v36;
      v50 = v45;
      v48(v49, v45);

      v51 = sub_253277BA8(v44, v47, &v100);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_2531F8000, v33, v92, "Could not handle new home added notification %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x259C040E0](v94, -1, -1);
      MEMORY[0x259C040E0](v43, -1, -1);

      (*(v40 + 8))(v98, v42);
      v48(v37, v50);
    }

    else
    {

      v52 = *(v38 + 8);
      v52(v36, v39);
      (*(v40 + 8))(v41, v42);
      v52(v37, v39);
    }

    goto LABEL_16;
  }

  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = swift_dynamicCast();
  (*(v7 + 56))(v8, v9 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_13;
  }

  v10 = *(v0 + 264);
  (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 336), *(v0 + 344));
  v11 = __swift_project_boxed_opaque_existential_0((v10 + 112), *(v10 + 136));
  sub_2532074E4((v11 + 1), v0 + 56);
  v12 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v13 = sub_253CCFF18();
  v14 = [v12 _homeWithUUID_];
  *(v0 + 408) = v14;

  if (v14)
  {
    v15 = __swift_project_boxed_opaque_existential_0((v10 + 112), *(v10 + 136))[6];
    *(v0 + 416) = v15;
    v16 = *(v15 + 16);
    *(v0 + 424) = v16;
    if (v16)
    {
      *(v0 + 432) = 0;
      v17 = *(v0 + 408);

      sub_2532074E4(v18 + 32, v0 + 96);
      v19 = __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
      v20 = [v17 urlString];
      if (v20)
      {
        v21 = v20;
        v22 = sub_253CD0968();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v80 = *(v0 + 408);
      v82 = *(v0 + 320);
      v81 = *(v0 + 328);
      *v81 = v22;
      v81[1] = v24;
      v83 = [v80 spiClientIdentifier];
      sub_253CCFF38();

      v84 = [v80 name];
      v85 = sub_253CD0968();
      v87 = v86;

      v88 = (v81 + *(v82 + 24));
      *v88 = v85;
      v88[1] = v87;
      sub_253267E60(v81, type metadata accessor for HomeEntity);
      v89 = *v19;
      *(v0 + 440) = *v19;

      return MEMORY[0x2822009F8](sub_25325D94C, v89, 0);
    }

    v76 = *(v0 + 400);
    v77 = *(v0 + 376);
    v78 = *(v0 + 384);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    (*(v78 + 8))(v76, v77);
  }

  else
  {
    v56 = *(v0 + 360);
    v55 = *(v0 + 368);
    v57 = *(v0 + 344);
    v58 = *(v0 + 352);
    sub_253211D58(*(v0 + 272), &off_2864FBEC8);
    (*(v58 + 16))(v56, v55, v57);
    v59 = sub_253CD07C8();
    v60 = sub_253CD0C78();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 400);
    v64 = *(v0 + 376);
    v63 = *(v0 + 384);
    v65 = *(v0 + 360);
    v66 = *(v0 + 344);
    v67 = *(v0 + 352);
    v97 = *(v0 + 304);
    v99 = *(v0 + 368);
    v68 = *(v0 + 288);
    v96 = *(v0 + 280);
    if (v61)
    {
      v90 = v60;
      v69 = swift_slowAlloc();
      v95 = v63;
      v70 = swift_slowAlloc();
      v100 = v70;
      *v69 = 136315138;
      sub_253268470(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v91 = v64;
      v93 = v62;
      v71 = sub_253CD10E8();
      v73 = v72;
      v74 = *(v67 + 8);
      v74(v65, v66);
      v75 = sub_253277BA8(v71, v73, &v100);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_2531F8000, v59, v90, "Could not find the home with UUID %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x259C040E0](v70, -1, -1);
      MEMORY[0x259C040E0](v69, -1, -1);

      (*(v68 + 8))(v97, v96);
      v74(v99, v66);
      (*(v95 + 8))(v93, v91);
    }

    else
    {

      v79 = *(v67 + 8);
      v79(v65, v66);
      (*(v68 + 8))(v97, v96);
      v79(v99, v66);
      (*(v63 + 8))(v62, v64);
    }
  }

LABEL_16:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_25325D94C()
{
  v1 = v0[55];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[55];
  }

  v2 = v0[39];
  v3 = v0[33];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 17), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325DB60, v3, 0);
}

uint64_t sub_25325DB60()
{
  v1 = v0[53];
  v2 = v0[54] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v2 == v1)
  {
    v3 = v0[51];

    v4 = v0[50];
    v5 = v0[47];
    v6 = v0[48];
    (*(v0[44] + 8))(v0[46], v0[43]);
    (*(v6 + 8))(v4, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[54];
    v0[54] = v9 + 1;
    v10 = v0[51];
    sub_2532074E4(v0[52] + 40 * v9 + 72, (v0 + 12));
    v11 = __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    v12 = [v10 urlString];
    if (v12)
    {
      v13 = v12;
      v14 = sub_253CD0968();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = v0[51];
    v19 = v0[40];
    v18 = v0[41];
    *v18 = v14;
    v18[1] = v16;
    v20 = [v17 spiClientIdentifier];
    sub_253CCFF38();

    v21 = [v17 name];
    v22 = sub_253CD0968();
    v24 = v23;

    v25 = (v18 + *(v19 + 24));
    *v25 = v22;
    v25[1] = v24;
    sub_253267E60(v18, type metadata accessor for HomeEntity);
    v26 = *v11;
    v0[55] = *v11;

    return MEMORY[0x2822009F8](sub_25325D94C, v26, 0);
  }
}

uint64_t sub_25325DDCC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for HomeEntity(0);
  v2[28] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325DF78, v1, 0);
}

uint64_t sub_25325DF78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_7;
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_253211D58(v0[22], &off_2864FBEC8);
    v13 = sub_253CD07C8();
    v14 = sub_253CD0C98();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[29];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2531F8000, v13, v14, "Could not handle home name changed notification as passed object is not HMDHome type", v22, 2u);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    goto LABEL_10;
  }

  v1 = v0[21];
  v2 = v0[19];
  v0[32] = v2;
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
  v0[33] = v3;
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (v4)
  {
    v0[35] = 0;
    v5 = v0[32];

    sub_2532074E4(v6 + 32, (v0 + 2));
    v7 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v8 = [v5 urlString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_253CD0968();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v25 = v0[32];
    v27 = v0[27];
    v26 = v0[28];
    *v26 = v10;
    v26[1] = v12;
    v28 = [v25 spiClientIdentifier];
    sub_253CCFF38();

    v29 = [v25 name];
    v30 = sub_253CD0968();
    v32 = v31;

    v33 = (v26 + *(v27 + 24));
    *v33 = v30;
    v33[1] = v32;
    sub_253267E60(v26, type metadata accessor for HomeEntity);
    v34 = *v7;
    v0[36] = *v7;

    return MEMORY[0x2822009F8](sub_25325E2FC, v34, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:

  v23 = v0[1];

  return v23();
}

uint64_t sub_25325E2FC()
{
  v1 = v0[36];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[36];
  }

  v2 = v0[26];
  v3 = v0[21];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325E510, v3, 0);
}

uint64_t sub_25325E510()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[32];

    (*(v0[30] + 8))(v0[31], v0[29]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[35];
    v0[35] = v6 + 1;
    v7 = v0[32];
    sub_2532074E4(v0[33] + 40 * v6 + 72, (v0 + 2));
    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = [v7 urlString];
    if (v9)
    {
      v10 = v9;
      v11 = sub_253CD0968();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v0[32];
    v16 = v0[27];
    v15 = v0[28];
    *v15 = v11;
    v15[1] = v13;
    v17 = [v14 spiClientIdentifier];
    sub_253CCFF38();

    v18 = [v14 name];
    v19 = sub_253CD0968();
    v21 = v20;

    v22 = (v15 + *(v16 + 24));
    *v22 = v19;
    v22[1] = v21;
    sub_253267E60(v15, type metadata accessor for HomeEntity);
    v23 = *v8;
    v0[36] = *v8;

    return MEMORY[0x2822009F8](sub_25325E2FC, v23, 0);
  }
}

uint64_t sub_25325E72C()
{
  *(v1 + 80) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325E7C8, v0, 0);
}

uint64_t sub_25325E7C8()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[15] = *v5;

    return MEMORY[0x2822009F8](sub_25325E8A0, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_25325E8A0()
{
  v1 = v0[15];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[15];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325EAB0, v2, 0);
}

uint64_t sub_25325EAB0()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[14] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[12] + 40 * v1 + 32), *(v0[12] + 40 * v1 + 56));
    v5 = *v4;
    v0[15] = *v4;

    return MEMORY[0x2822009F8](sub_25325E8A0, v5, 0);
  }
}

uint64_t sub_25325EB80(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C0, &unk_253D4A5D0);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for RoomEntity(0);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = sub_253CCFD58();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325ED9C, v1, 0);
}

uint64_t sub_25325ED9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_8;
  }

  sub_253200644(0, &qword_281530D18, off_27971A220);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_253211D58(v0[22], &off_2864FBEC8);
    v18 = sub_253CD07C8();
    v19 = sub_253CD0C98();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[33];
    v21 = v0[34];
    v23 = v0[32];
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[23];
    if (v20)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2531F8000, v18, v19, "Could not index room as the notification did not contain a HMDRoom", v27, 2u);
      MEMORY[0x259C040E0](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    goto LABEL_11;
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[19];
  v0[35] = v4;
  sub_253241798(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[22];
    sub_253206054(v0[28], &qword_27F5A39C0, &unk_253D4A5D0);
    sub_253211D58(v5, &off_2864FBEC8);
    v6 = v4;
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v7, v8, "Unable to create RoomEntity for %@", v9, 0xCu);
      sub_253206054(v10, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v10, -1, -1);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    v13 = v0[33];
    v12 = v0[34];
    v14 = v0[32];
    v15 = v0[26];
    v16 = v0[23];
    v17 = v0[24];

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    goto LABEL_11;
  }

  v30 = v0[21];
  sub_253267F28(v0[28], v0[31], type metadata accessor for RoomEntity);
  v31 = __swift_project_boxed_opaque_existential_0((v30 + 112), *(v30 + 136))[6];
  v0[36] = v31;
  v32 = *(v31 + 16);
  v0[37] = v32;
  if (!v32)
  {

    v41 = v0[33];
    v40 = v0[34];
    v42 = v0[32];
    sub_253267E60(v0[31], type metadata accessor for RoomEntity);
    (*(v41 + 8))(v40, v42);
LABEL_11:

    v28 = v0[1];

    return v28();
  }

  v0[38] = 0;
  v34 = v0[30];
  v33 = v0[31];

  sub_2532074E4(v35 + 32, (v0 + 2));
  v36 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  sub_253267EC0(v33, v38 + v37, type metadata accessor for RoomEntity);
  swift_setDeallocating();
  sub_253267E60(v38 + v37, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();
  v39 = *v36;
  v0[39] = *v36;

  return MEMORY[0x2822009F8](sub_25325F2AC, v39, 0);
}

uint64_t sub_25325F2AC()
{
  v1 = v0[39];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[39];
  }

  v2 = v0[27];
  v3 = v0[21];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325F4C0, v3, 0);
}

uint64_t sub_25325F4C0()
{
  v1 = v0[37];
  v2 = v0[38] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[35];

    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[32];
    sub_253267E60(v0[31], type metadata accessor for RoomEntity);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[38];
    v0[38] = v9 + 1;
    v11 = v0[30];
    v10 = v0[31];
    sub_2532074E4(v0[36] + 40 * v9 + 72, (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3900, &qword_253D4A2E0);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    sub_253267EC0(v10, v14 + v13, type metadata accessor for RoomEntity);
    swift_setDeallocating();
    sub_253267E60(v14 + v13, type metadata accessor for RoomEntity);
    swift_deallocClassInstance();
    v15 = *v12;
    v0[39] = *v12;

    return MEMORY[0x2822009F8](sub_25325F2AC, v15, 0);
  }
}

uint64_t sub_25325F6C4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_253CD07E8();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[30] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25325F84C, v1, 0);
}

uint64_t sub_25325F84C()
{
  v43 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v1 = sub_253CCFD48();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v3;
  sub_253CD0F58();
  if (!*(v2 + 16) || (v4 = sub_253217D40(v0 + 16), (v5 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    sub_253211D58(*(v0 + 208), &off_2864FBEC8);
    (*(v16 + 16))(v14, v13, v15);
    v17 = sub_253CD07C8();
    v18 = sub_253CD0C98();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    if (v19)
    {
      v41 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v27 = 136315138;
      v39 = v18;
      *(v0 + 184) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v28 = sub_253CD0DB8();
      v29 = v23;
      v31 = v30;
      v32 = *(v22 + 8);
      v33 = v20;
      v34 = v29;
      v32(v33, v29);

      v35 = sub_253277BA8(v28, v31, &v42);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_2531F8000, v17, v39, "Did not find room uuid. Could not handle room removed notification %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x259C040E0](v40, -1, -1);
      MEMORY[0x259C040E0](v27, -1, -1);

      (*(v24 + 8))(v41, v26);
      v32(v21, v34);
    }

    else
    {

      v36 = *(v22 + 8);
      v36(v20, v23);
      (*(v24 + 8))(v25, v26);
      v36(v21, v23);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 200);

  v7 = __swift_project_boxed_opaque_existential_0((v6 + 112), *(v6 + 136))[6];
  *(v0 + 280) = v7;
  v8 = *(v7 + 16);
  *(v0 + 288) = v8;
  if (v8)
  {
    *(v0 + 296) = 0;
    v9 = *(v7 + 56);

    v11 = __swift_project_boxed_opaque_existential_0((v10 + 32), v9);
    v12 = *v11;
    *(v0 + 304) = *v11;

    return MEMORY[0x2822009F8](sub_25325FC8C, v12, 0);
  }

  (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_16:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_25325FC8C()
{
  v1 = v0[38];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[38];
  }

  v2 = v0[30];
  v3 = v0[25];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25325FEA0, v3, 0);
}

uint64_t sub_25325FEA0()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {

    (*(v0[32] + 8))(v0[34], v0[31]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[37] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v5 = *v4;
    v0[38] = *v4;

    return MEMORY[0x2822009F8](sub_25325FC8C, v5, 0);
  }
}

uint64_t sub_25325FFB0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_253CD07E8();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for ZoneEntity(0);
  v2[28] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25326015C, v1, 0);
}

uint64_t sub_25326015C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[15])
  {
    sub_253206054((v0 + 12), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_7;
  }

  sub_253200644(0, &qword_281530D10, off_27971A280);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_253211D58(v0[22], &off_2864FBEC8);
    v13 = sub_253CD07C8();
    v14 = sub_253CD0C98();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[29];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2531F8000, v13, v14, "Did not find HMDZone as part of the zone added notification", v22, 2u);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    goto LABEL_10;
  }

  v1 = v0[21];
  v2 = v0[19];
  v0[32] = v2;
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
  v0[33] = v3;
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (v4)
  {
    v0[35] = 0;
    v5 = v0[32];

    sub_2532074E4(v6 + 32, (v0 + 2));
    v7 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v8 = [v5 urlString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_253CD0968();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v25 = v0[32];
    v27 = v0[27];
    v26 = v0[28];
    *v26 = v10;
    v26[1] = v12;
    v28 = [v25 spiClientIdentifier];
    sub_253CCFF38();

    v29 = [v25 name];
    v30 = sub_253CD0968();
    v32 = v31;

    v33 = (v26 + *(v27 + 24));
    *v33 = v30;
    v33[1] = v32;
    sub_253267E60(v26, type metadata accessor for ZoneEntity);
    v34 = *v7;
    v0[36] = *v7;

    return MEMORY[0x2822009F8](sub_2532604E0, v34, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:

  v23 = v0[1];

  return v23();
}

uint64_t sub_2532604E0()
{
  v1 = v0[36];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[36];
  }

  v2 = v0[26];
  v3 = v0[21];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532606F4, v3, 0);
}

uint64_t sub_2532606F4()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[32];

    (*(v0[30] + 8))(v0[31], v0[29]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[35];
    v0[35] = v6 + 1;
    v7 = v0[32];
    sub_2532074E4(v0[33] + 40 * v6 + 72, (v0 + 2));
    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = [v7 urlString];
    if (v9)
    {
      v10 = v9;
      v11 = sub_253CD0968();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v0[32];
    v16 = v0[27];
    v15 = v0[28];
    *v15 = v11;
    v15[1] = v13;
    v17 = [v14 spiClientIdentifier];
    sub_253CCFF38();

    v18 = [v14 name];
    v19 = sub_253CD0968();
    v21 = v20;

    v22 = (v15 + *(v16 + 24));
    *v22 = v19;
    v22[1] = v21;
    sub_253267E60(v15, type metadata accessor for ZoneEntity);
    v23 = *v8;
    v0[36] = *v8;

    return MEMORY[0x2822009F8](sub_2532604E0, v23, 0);
  }
}

uint64_t sub_253260910(uint64_t a1)
{
  v2[71] = v1;
  v2[70] = a1;
  v2[72] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[73] = swift_task_alloc();
  v2[74] = type metadata accessor for ZoneEntity(0);
  v2[75] = swift_task_alloc();
  v3 = type metadata accessor for RoomEntity(0);
  v2[76] = v3;
  v2[77] = *(v3 - 8);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v4 = sub_253CCFE58();
  v2[81] = v4;
  v2[82] = *(v4 - 8);
  v2[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v5 = sub_253CCFD58();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v6 = sub_253CD07E8();
  v2[91] = v6;
  v2[92] = *(v6 - 8);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253260C4C, v1, 0);
}

uint64_t sub_253260C4C()
{
  v212 = v0;
  v1 = v0;
  sub_253211D58(v0[72], &off_2864FBEC8);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Handling zone room relationship updated notification", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = v0[101];
  v6 = v0[92];
  v7 = v1[91];

  v8 = *(v6 + 8);
  v8(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v1[35])
  {
    sub_253206054((v1 + 32), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_51;
  }

  sub_253200644(0, &qword_281530D10, off_27971A280);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    sub_253211D58(v1[72], &off_2864FBEC8);
    v94 = sub_253CD07C8();
    v95 = sub_253CD0C98();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v1[93];
    v98 = v1[91];
    v99 = v1[90];
    v100 = v1[87];
    v101 = v1[86];
    if (v96)
    {
      v210 = v8;
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_2531F8000, v94, v95, "Did not find HMDZone as part of the zone updated notification", v102, 2u);
      MEMORY[0x259C040E0](v102, -1, -1);

      v210(v97, v98);
    }

    else
    {

      v8(v97, v98);
    }

    (*(v100 + 8))(v99, v101);
    goto LABEL_55;
  }

  v9 = v1[66];
  v1[102] = v9;
  v10 = sub_253CCFD48();
  v209 = v8;
  if (!v10)
  {
LABEL_59:
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    goto LABEL_60;
  }

  v11 = v10;
  v1[58] = sub_253CD0968();
  v1[59] = v12;
  sub_253CD0F58();
  if (!*(v11 + 16) || (v13 = sub_253217D40((v1 + 2)), (v14 & 1) == 0))
  {

    sub_253205FA4((v1 + 2));
    goto LABEL_59;
  }

  sub_253205FF8(*(v11 + 56) + 32 * v13, (v1 + 36));
  sub_253205FA4((v1 + 2));

  if (!v1[39])
  {
LABEL_60:
    sub_253206054((v1 + 36), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_61:
    v105 = v1[90];
    v106 = v1[88];
    v107 = v1[87];
    v108 = v1[86];
    sub_253211D58(v1[72], &off_2864FBEC8);
    (*(v107 + 16))(v106, v105, v108);
    v109 = sub_253CD07C8();
    v110 = sub_253CD0C98();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v1[94];
    v206 = v1[91];
    v113 = v1[90];
    v114 = v1[88];
    v115 = v1[87];
    v116 = v1[86];
    if (v111)
    {
      v198 = v1[90];
      v117 = v1 + 67;
      v204 = v9;
      v118 = swift_slowAlloc();
      v200 = v1;
      v119 = swift_slowAlloc();
      v211 = v119;
      *v118 = 136315138;
      *v117 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v120 = sub_253CD0DB8();
      v122 = v121;
      v123 = *(v115 + 8);
      v123(v114);

      v124 = sub_253277BA8(v120, v122, &v211);

      *(v118 + 4) = v124;
      _os_log_impl(&dword_2531F8000, v109, v110, "Did not find list of rooms as part of the zone updated notification %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      v125 = v119;
      v1 = v200;
      MEMORY[0x259C040E0](v125, -1, -1);
      MEMORY[0x259C040E0](v118, -1, -1);

      v209(v112, v206);
      (v123)(v198, v116);
    }

    else
    {

      v126 = *(v115 + 8);
      v126(v114, v116);
      v209(v112, v206);
      v126(v113, v116);
    }

    goto LABEL_55;
  }

  sub_253200644(0, &qword_27F5A39B8, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v15 = v1[68];
  v1[103] = v15;
  v16 = sub_253CCFD48();
  v203 = v9;
  if (!v16)
  {
LABEL_65:
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    goto LABEL_66;
  }

  v17 = v16;
  v1[60] = sub_253CD0968();
  v1[61] = v18;
  sub_253CD0F58();
  if (!*(v17 + 16) || (v19 = sub_253217D40((v1 + 7)), (v20 & 1) == 0))
  {

    sub_253205FA4((v1 + 7));
    goto LABEL_65;
  }

  sub_253205FF8(*(v17 + 56) + 32 * v19, (v1 + 40));
  sub_253205FA4((v1 + 7));

  if (!v1[43])
  {
LABEL_66:
    sub_253206054((v1 + 40), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_67:
    v127 = v1[90];
    v128 = v1[89];
    v129 = v1[87];
    v130 = v1[86];
    sub_253211D58(v1[72], &off_2864FBEC8);
    (*(v129 + 16))(v128, v127, v130);
    v131 = sub_253CD07C8();
    v132 = sub_253CD0C98();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v1[95];
    v207 = v1[91];
    v135 = v1[90];
    v136 = v1[89];
    v137 = v1[87];
    v138 = v1[86];
    if (v133)
    {
      v196 = v1[95];
      v139 = v1 + 69;
      v201 = v1;
      v140 = swift_slowAlloc();
      v193 = v138;
      v141 = swift_slowAlloc();
      v211 = v141;
      *v140 = 136315138;
      *v139 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v142 = sub_253CD0DB8();
      v144 = v143;
      v145 = *(v137 + 8);
      v145(v136, v193);

      v146 = sub_253277BA8(v142, v144, &v211);

      *(v140 + 4) = v146;
      _os_log_impl(&dword_2531F8000, v131, v132, "Did not find homeUUID as part of the zone updated notification %s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      MEMORY[0x259C040E0](v141, -1, -1);
      v147 = v140;
      v1 = v201;
      MEMORY[0x259C040E0](v147, -1, -1);

      v209(v196, v207);
      v145(v135, v193);
    }

    else
    {

      v148 = *(v137 + 8);
      v148(v136, v138);
      v209(v134, v207);
      v148(v135, v138);
    }

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v197 = v15;
  v21 = v1[85];
  v23 = v1[62];
  v22 = v1[63];
  v190 = v1[71];
  v24 = __swift_project_boxed_opaque_existential_0((v190 + 112), *(v190 + 136));
  sub_2532074E4((v24 + 1), (v1 + 12));
  v25 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  sub_253CCFEF8();
  v26 = sub_253CCFF58();
  v27 = *(v26 - 8);
  v192 = v26;
  v195 = *(v27 + 48);
  v28 = v195(v21, 1);
  v29 = 0;
  if (v28 != 1)
  {
    v30 = v1[85];
    v29 = sub_253CCFF18();
    (*(v27 + 8))(v30, v192);
  }

  v31 = [v25 _homeWithUUID_];
  v1[104] = v31;

  v194 = v31;
  if (!v31)
  {
    sub_253211D58(v1[72], &off_2864FBEC8);

    v149 = sub_253CD07C8();
    v150 = sub_253CD0C78();

    v151 = os_log_type_enabled(v149, v150);
    v152 = v1[96];
    v153 = v1[91];
    v154 = v1[90];
    v155 = v1[87];
    v208 = v1[86];
    if (v151)
    {
      v202 = v1;
      v156 = swift_slowAlloc();
      v205 = v154;
      v157 = swift_slowAlloc();
      v211 = v157;
      *v156 = 136315138;
      v158 = sub_253277BA8(v23, v22, &v211);

      *(v156 + 4) = v158;
      _os_log_impl(&dword_2531F8000, v149, v150, "Could not find the home with UUID %s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v157);
      MEMORY[0x259C040E0](v157, -1, -1);
      v159 = v156;
      v1 = v202;
      MEMORY[0x259C040E0](v159, -1, -1);

      v209(v152, v153);
      (*(v155 + 8))(v205, v208);
    }

    else
    {

      v209(v152, v153);
      (*(v155 + 8))(v154, v208);
    }

    goto LABEL_55;
  }

  sub_253CD0D68();
  sub_253CCFE48();
  if (!v1[47])
  {
    v32 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v32 = MEMORY[0x277D84F90];
  v191 = (v27 + 8);
  v187 = v1[76];
  v188 = v1[77];
  v33 = v192;
  do
  {
    v189 = v32;
    while (1)
    {
      sub_2531FF150(v1 + 22, v1 + 24);
      if (!swift_dynamicCast())
      {
        sub_253211D58(v1[72], &off_2864FBEC8);
        v42 = sub_253CD07C8();
        v43 = sub_253CD0C98();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v1[97];
        v46 = v1[91];
        if (v44)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_2531F8000, v42, v43, "Could not convert affected room UUID string", v47, 2u);
          MEMORY[0x259C040E0](v47, -1, -1);
        }

        v34 = v45;
        v35 = v46;
        goto LABEL_22;
      }

      v36 = v1[84];
      v37 = v1[64];
      v38 = v1;
      v39 = v1[65];
      sub_253CCFEF8();
      v40 = v38;
      if ((v195)(v36, 1, v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v48 = v38[84];
        v41 = sub_253CCFF18();
        (*v191)(v48, v33);
      }

      v49 = [v194 roomWithUUID_];

      if (!v49)
      {
        sub_253211D58(v38[72], &off_2864FBEC8);

        v66 = sub_253CD07C8();
        v67 = sub_253CD0C98();

        v68 = os_log_type_enabled(v66, v67);
        v69 = v38[98];
        v70 = v38[91];
        if (v68)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v211 = v72;
          *v71 = 136315138;
          v73 = sub_253277BA8(v37, v39, &v211);

          *(v71 + 4) = v73;
          _os_log_impl(&dword_2531F8000, v66, v67, "Could not find room with UUID %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x259C040E0](v72, -1, -1);
          v74 = v71;
          v33 = v192;
          MEMORY[0x259C040E0](v74, -1, -1);
        }

        else
        {
        }

        v209(v69, v70);
        v1 = v40;
        goto LABEL_23;
      }

      v50 = [v49 home];
      if (v50)
      {
        break;
      }

      sub_253CD0968();
      off_2864FBAC8();
      sub_253CD07D8();
      v51 = v49;
      v52 = sub_253CD07C8();
      v53 = sub_253CD0C98();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v49;
        v56 = v51;
        _os_log_impl(&dword_2531F8000, v52, v53, "room %@ has no home", v54, 0xCu);
        sub_253206054(v55, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v55, -1, -1);
        MEMORY[0x259C040E0](v54, -1, -1);
      }

      v57 = v38[100];
      v58 = v38[91];
      v59 = v38[72];

      v209(v57, v58);
      sub_253211D58(v59, &off_2864FBEC8);
      v60 = v51;
      v61 = sub_253CD07C8();
      v62 = sub_253CD0C98();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        *(v63 + 4) = v60;
        *v64 = v49;
        v65 = v60;
        _os_log_impl(&dword_2531F8000, v61, v62, "Unable to create RoomEntity for %@", v63, 0xCu);
        sub_253206054(v64, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v64, -1, -1);
        MEMORY[0x259C040E0](v63, -1, -1);
        v60 = v61;
        v61 = v65;
      }

      v33 = v192;

      v1 = v38;
      v34 = v38[99];
      v35 = v38[91];
LABEL_22:
      v209(v34, v35);
LABEL_23:
      sub_253CCFE48();
      if (!v1[47])
      {
        v32 = v189;
        goto LABEL_74;
      }
    }

    v75 = v50;
    v186 = v49;
    v76 = [v186 urlString];
    if (v76)
    {
      v77 = v76;
      v78 = sub_253CD0968();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = v38[80];
    v82 = v38[79];
    v199 = v38;
    v185 = v38[78];
    v83 = (v82 + *(v187 + 20));
    *v83 = v78;
    v83[1] = v80;
    v84 = [v186 spiClientIdentifier];
    sub_253CCFF38();

    v85 = [v186 name];
    v86 = sub_253CD0968();
    v88 = v87;

    v89 = (v82 + *(v187 + 24));
    *v89 = v86;
    v89[1] = v88;
    sub_253267F28(v82, v81, type metadata accessor for RoomEntity);
    sub_253267EC0(v81, v185, type metadata accessor for RoomEntity);
    v32 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_253283938(0, v189[2] + 1, 1, v189);
    }

    v91 = v32[2];
    v90 = v32[3];
    v1 = v199;
    if (v91 >= v90 >> 1)
    {
      v32 = sub_253283938((v90 > 1), v91 + 1, 1, v32);
    }

    v92 = v199[80];
    v93 = v199[78];

    sub_253267E60(v92, type metadata accessor for RoomEntity);
    v32[2] = v91 + 1;
    sub_253267F28(v93, v32 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v91, type metadata accessor for RoomEntity);
    sub_253CCFE48();
  }

  while (v199[47]);
LABEL_74:
  v1[105] = v32;
  (*(v1[82] + 8))(v1[83], v1[81]);
  v160 = __swift_project_boxed_opaque_existential_0((v190 + 112), *(v190 + 136))[6];
  v1[106] = v160;
  v161 = *(v160 + 16);
  v1[107] = v161;
  if (v161)
  {
    v1[108] = 0;
    v162 = v1[102];

    sub_2532074E4(v163 + 32, (v1 + 17));
    v164 = __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
    v165 = [v162 urlString];
    if (v165)
    {
      v166 = v165;
      v167 = sub_253CD0968();
      v169 = v168;
    }

    else
    {
      v167 = 0;
      v169 = 0;
    }

    v175 = v1[102];
    v176 = v1[75];
    v177 = v1[74];
    *v176 = v167;
    v176[1] = v169;
    v178 = [v175 spiClientIdentifier];
    sub_253CCFF38();

    v179 = [v175 name];
    v180 = sub_253CD0968();
    v182 = v181;

    v183 = (v176 + *(v177 + 24));
    *v183 = v180;
    v183[1] = v182;
    sub_253267E60(v176, type metadata accessor for ZoneEntity);
    v184 = *v164;
    v1[109] = *v164;

    return MEMORY[0x2822009F8](sub_253262284, v184, 0);
  }

  v170 = v1[104];
  v171 = v1[103];
  v172 = v1[90];
  v173 = v1[87];
  v174 = v1[86];

  (*(v173 + 8))(v172, v174);

LABEL_55:

  v103 = v1[1];

  return v103();
}

uint64_t sub_253262284()
{
  v1 = v0[109];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[109];
  }

  v2 = v0[73];
  v3 = v0[71];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  v0[110] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[111] = v6;
  v0[112] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 0, 1, v4);
  v0[25] = swift_getAssociatedTypeWitness();
  v0[26] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 22);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 22), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532624AC, v3, 0);
}

uint64_t sub_2532624AC()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  v2 = *v1;
  v0[113] = *v1;

  return MEMORY[0x2822009F8](sub_25326251C, v2, 0);
}

uint64_t sub_25326251C()
{
  v1 = v0[113];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[113];
  }

  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[73];
  v5 = v0[71];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v2(v4, 0, 1, v3);
  v0[30] = swift_getAssociatedTypeWitness();
  v0[31] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 27);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 27), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253262718, v5, 0);
}

uint64_t sub_253262718()
{
  v1 = v0[107];
  v2 = v0[108] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v2 == v1)
  {
    v3 = v0[104];
    v4 = v0[103];
    v5 = v0[102];
    v6 = v0[90];
    v7 = v0[87];
    v8 = v0[86];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[108];
    v0[108] = v11 + 1;
    v12 = v0[102];
    sub_2532074E4(v0[106] + 40 * v11 + 72, (v0 + 17));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_253CD0968();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[102];
    v20 = v0[75];
    v21 = v0[74];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    sub_253CCFF38();

    v23 = [v19 name];
    v24 = sub_253CD0968();
    v26 = v25;

    v27 = (v20 + *(v21 + 24));
    *v27 = v24;
    v27[1] = v26;
    sub_253267E60(v20, type metadata accessor for ZoneEntity);
    v28 = *v13;
    v0[109] = *v13;

    return MEMORY[0x2822009F8](sub_253262284, v28, 0);
  }
}

uint64_t sub_253262A50(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[26] = swift_task_alloc();
  v3 = sub_253CCFD58();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = sub_253CD07E8();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253262BE4, v1, 0);
}

uint64_t sub_253262BE4()
{
  v47 = v0;
  sub_253211D58(*(v0 + 200), &off_2864FBEC8);
  v1 = sub_253CD07C8();
  v2 = sub_253CD0C78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2531F8000, v1, v2, "Handling zone removed notification", v3, 2u);
    MEMORY[0x259C040E0](v3, -1, -1);
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  v7 = *(v6 + 8);
  v7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v8 = sub_253CCFD48();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v10;
  sub_253CD0F58();
  if (!*(v9 + 16) || (v11 = sub_253217D40(v0 + 16), (v12 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v9 + 56) + 32 * v11, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_15:
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);
    sub_253211D58(*(v0 + 200), &off_2864FBEC8);
    (*(v23 + 16))(v21, v20, v22);
    v24 = sub_253CD07C8();
    v25 = sub_253CD0C98();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 264);
    v28 = *(v0 + 240);
    v45 = *(v0 + 248);
    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *(v0 + 216);
    if (v26)
    {
      v44 = v7;
      v32 = swift_slowAlloc();
      v43 = v27;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      v34 = sub_253CCFD08();
      v42 = v28;
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v29, v31);
      v38 = sub_253277BA8(v34, v36, &v46);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2531F8000, v24, v25, "Did not find zone uuid. Could not handle zone removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C040E0](v33, -1, -1);
      MEMORY[0x259C040E0](v32, -1, -1);

      v44(v43, v45);
      v37(v42, v31);
    }

    else
    {

      v39 = *(v30 + 8);
      v39(v29, v31);
      v7(v27, v45);
      v39(v28, v31);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(v0 + 192);

  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
  *(v0 + 280) = v14;
  v15 = *(v14 + 16);
  *(v0 + 288) = v15;
  if (v15)
  {
    *(v0 + 296) = 0;
    v16 = *(v14 + 56);

    v18 = __swift_project_boxed_opaque_existential_0((v17 + 32), v16);
    v19 = *v18;
    *(v0 + 304) = *v18;

    return MEMORY[0x2822009F8](sub_253263098, v19, 0);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
LABEL_18:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_253263098()
{
  v1 = v0[38];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[38];
  }

  v2 = v0[26];
  v3 = v0[24];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532632AC, v3, 0);
}

uint64_t sub_2532632AC()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {

    (*(v0[28] + 8))(v0[30], v0[27]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[37] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v5 = *v4;
    v0[38] = *v4;

    return MEMORY[0x2822009F8](sub_253263098, v5, 0);
  }
}

uint64_t sub_2532633C8(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3910, &qword_253D4A300);
  v2[47] = swift_task_alloc();
  v3 = sub_253CD07E8();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253263614, v1, 0);
}

uint64_t sub_253263614()
{
  v166 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v1 = sub_253CCFD48();
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  v0[33] = sub_253CD0968();
  v0[34] = v3;
  sub_253CD0F58();
  if (!*(v2 + 16) || (v4 = sub_253217D40((v0 + 2)), (v5 & 1) == 0))
  {

    sub_253205FA4((v0 + 2));
LABEL_17:
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    goto LABEL_18;
  }

  sub_253205FF8(*(v2 + 56) + 32 * v4, (v0 + 22));
  sub_253205FA4((v0 + 2));

  if (!v0[25])
  {
LABEL_18:
    sub_253206054((v0 + 22), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_19:
    v28 = v0[62];
    v30 = v0[59];
    v29 = v0[60];
    v31 = v0[58];
    sub_253211D58(v0[45], &off_2864FBEC8);
    (*(v30 + 16))(v29, v28, v31);
    v32 = sub_253CD07C8();
    v33 = sub_253CD0C98();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[62];
    v37 = v0[59];
    v36 = v0[60];
    v38 = v0[58];
    v39 = v0[49];
    v40 = v0[50];
    v41 = v0[48];
    if (v34)
    {
      v163 = v0[50];
      v42 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v165 = v152;
      *v42 = 136315138;
      v149 = v33;
      v0[41] = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v43 = sub_253CD0DB8();
      v44 = v38;
      v46 = v45;
      v47 = *(v37 + 8);
      v48 = v36;
      v49 = v44;
      v47(v48, v44);

      v50 = sub_253277BA8(v43, v46, &v165);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_2531F8000, v32, v149, "Could not handle new home added notification %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x259C040E0](v152, -1, -1);
      MEMORY[0x259C040E0](v42, -1, -1);

      (*(v39 + 8))(v163, v41);
      v47(v35, v49);
    }

    else
    {

      v51 = *(v37 + 8);
      v51(v36, v38);
      (*(v39 + 8))(v40, v41);
      v51(v35, v38);
    }

LABEL_22:

    v52 = v0[1];

    return v52();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = v0[57];
  v8 = v0[35];
  v7 = v0[36];
  v157 = v0[44];
  v9 = __swift_project_boxed_opaque_existential_0((v157 + 112), *(v157 + 136));
  sub_2532074E4((v9 + 1), (v0 + 7));
  v10 = *__swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_253CCFEF8();
  v11 = sub_253CCFF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v6, 1, v11);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = v0[57];
    v15 = sub_253CCFF18();
    (*(v12 + 8))(v16, v11);
  }

  v17 = [v10 _homeWithUUID_];
  v0[63] = v17;

  if (!v17)
  {
    sub_253211D58(v0[45], &off_2864FBEC8);

    v54 = sub_253CD07C8();
    v55 = sub_253CD0C78();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[62];
    v59 = v0[58];
    v58 = v0[59];
    v164 = v0[51];
    v61 = v0[48];
    v60 = v0[49];
    v147 = v0;
    if (v56)
    {
      v158 = v0[58];
      v62 = swift_slowAlloc();
      v63 = v57;
      v64 = swift_slowAlloc();
      v165 = v64;
      *v62 = 136315138;
      v65 = sub_253277BA8(v8, v7, &v165);

      *(v62 + 4) = v65;
      _os_log_impl(&dword_2531F8000, v54, v55, "Could not find the home with UUID %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x259C040E0](v64, -1, -1);
      MEMORY[0x259C040E0](v62, -1, -1);

      (*(v60 + 8))(v164, v61);
      (*(v58 + 8))(v63, v158);
    }

    else
    {

      (*(v60 + 8))(v164, v61);
      (*(v58 + 8))(v57, v59);
    }

    v0 = v147;
    goto LABEL_22;
  }

  v162 = v17;

  v18 = sub_253CCFD48();
  v19 = v0;
  if (!v18)
  {
    goto LABEL_28;
  }

  v20 = v18;
  v0[37] = sub_253CD0968();
  v0[38] = v21;
  sub_253CD0F58();
  if (!*(v20 + 16) || (v22 = sub_253217D40((v0 + 12)), (v23 & 1) == 0))
  {

    sub_253205FA4((v0 + 12));
LABEL_28:
    *(v0 + 13) = 0u;
    *(v0 + 14) = 0u;
    goto LABEL_29;
  }

  sub_253205FF8(*(v20 + 56) + 32 * v22, (v0 + 26));
  sub_253205FA4((v0 + 12));

  if (!v0[29])
  {
LABEL_29:
    sub_253206054((v0 + 26), &qword_27F5A2AB0, &unk_253D4A560);
LABEL_30:
    v67 = v0[61];
    v66 = v0[62];
    v69 = v0[58];
    v68 = v0[59];
    sub_253211D58(v19[45], &off_2864FBEC8);
    (*(v68 + 16))(v67, v66, v69);
    v0 = v19;
    v70 = sub_253CD07C8();
    v71 = sub_253CD0C98();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v19[61];
    v74 = v19[62];
    v76 = v19[58];
    v75 = v19[59];
    v77 = v19[52];
    v78 = v19[49];
    v159 = v19[48];
    if (v72)
    {
      v154 = v19[52];
      v79 = swift_slowAlloc();
      v80 = v76;
      v150 = v76;
      v81 = swift_slowAlloc();
      v165 = v81;
      *v79 = 136315138;
      v153 = v74;
      v82 = sub_253CCFD08();
      log = v70;
      v84 = v83;
      v85 = *(v75 + 8);
      v85(v73, v80);
      v86 = sub_253277BA8(v82, v84, &v165);
      v0 = v19;

      *(v79 + 4) = v86;
      _os_log_impl(&dword_2531F8000, log, v71, "Did not find actionSet UUID in the notification dictionary %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x259C040E0](v81, -1, -1);
      MEMORY[0x259C040E0](v79, -1, -1);

      (*(v78 + 8))(v154, v159);
      v85(v153, v150);
    }

    else
    {

      v87 = *(v75 + 8);
      v87(v73, v76);
      (*(v78 + 8))(v77, v159);
      v87(v74, v76);
    }

    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v24 = v0[56];
  v26 = v0[39];
  v25 = v0[40];
  sub_253CCFEF8();
  if (v13(v24, 1, v11) == 1)
  {
    v27 = 0;
  }

  else
  {
    v88 = v0[56];
    v27 = sub_253CCFF18();
    (*(v12 + 8))(v88, v11);
  }

  v89 = [v162 actionSetWithUUID_];
  v0[64] = v89;

  v148 = v0;
  if (!v89)
  {
    sub_253211D58(v0[45], &off_2864FBEC8);

    v95 = sub_253CD07C8();
    v96 = sub_253CD0C98();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[62];
    v99 = v0[58];
    v100 = v0[59];
    v160 = v0[53];
    v102 = v0[48];
    v101 = v0[49];
    if (v97)
    {
      v155 = v0[62];
      v103 = swift_slowAlloc();
      v104 = v99;
      v105 = swift_slowAlloc();
      v165 = v105;
      *v103 = 136315138;
      v106 = sub_253277BA8(v26, v25, &v165);

      *(v103 + 4) = v106;
      _os_log_impl(&dword_2531F8000, v95, v96, "Could not find the scene with UUID %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x259C040E0](v105, -1, -1);
      MEMORY[0x259C040E0](v103, -1, -1);

      (*(v101 + 8))(v160, v102);
      (*(v100 + 8))(v155, v104);
    }

    else
    {

      (*(v101 + 8))(v160, v102);
      (*(v100 + 8))(v98, v99);
    }

    v0 = v148;
    goto LABEL_22;
  }

  v90 = [v89 type];
  v91 = sub_253CD0968();
  v93 = v92;

  if (v91 == sub_253CD0968() && v93 == v94)
  {

LABEL_43:
    sub_253211D58(v0[45], &off_2864FBEC8);
    v108 = sub_253CD07C8();
    v109 = sub_253CD0C78();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v0[62];
    v113 = v0[58];
    v112 = v0[59];
    v114 = v0[55];
    v116 = v0[48];
    v115 = v0[49];
    if (v110)
    {
      v117 = v0[62];
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_2531F8000, v108, v109, "Not going to index trigger owned actionSet", v118, 2u);
      MEMORY[0x259C040E0](v118, -1, -1);

      (*(v115 + 8))(v114, v116);
      (*(v112 + 8))(v117, v113);
    }

    else
    {

      (*(v115 + 8))(v114, v116);
      (*(v112 + 8))(v111, v113);
    }

    v0 = v148;
    goto LABEL_22;
  }

  v107 = sub_253CD1118();

  if (v107)
  {
    goto LABEL_43;
  }

  v119 = v0[47];
  sub_253242890(v89, v119);
  v120 = type metadata accessor for SceneEntity(0);
  v121 = (*(*(v120 - 8) + 48))(v119, 1, v120);
  sub_253206054(v119, &qword_27F5A3910, &qword_253D4A300);
  if (v121 == 1)
  {
    sub_253211D58(v0[45], &off_2864FBEC8);
    v122 = v89;
    v123 = sub_253CD07C8();
    v124 = sub_253CD0C98();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v0[62];
    v127 = v0[58];
    v128 = v0[59];
    v129 = v0[54];
    v131 = v0[48];
    v130 = v0[49];
    if (v125)
    {
      v161 = v0[48];
      v132 = swift_slowAlloc();
      v156 = v126;
      v133 = swift_slowAlloc();
      v165 = v133;
      *v132 = 136315138;
      v0[42] = v122;
      sub_253200644(0, &qword_281530E90, off_279719FF0);
      v134 = sub_253CD00F8();
      v151 = v129;
      v136 = sub_253277BA8(v134, v135, &v165);

      *(v132 + 4) = v136;
      _os_log_impl(&dword_2531F8000, v123, v124, "Unable to create SceneEntity from scene %s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x259C040E0](v133, -1, -1);
      MEMORY[0x259C040E0](v132, -1, -1);

      (*(v130 + 8))(v151, v161);
      (*(v128 + 8))(v156, v127);
    }

    else
    {

      (*(v130 + 8))(v129, v131);
      (*(v128 + 8))(v126, v127);
    }

    goto LABEL_22;
  }

  v137 = __swift_project_boxed_opaque_existential_0((v157 + 112), *(v157 + 136))[6];
  v0[65] = v137;
  v138 = *(v137 + 16);
  v0[66] = v138;
  if (!v138)
  {

    v143 = v0[62];
    v144 = v0[58];
    v145 = v0[59];

    (*(v145 + 8))(v143, v144);
    goto LABEL_22;
  }

  v0[67] = 0;
  v139 = *(v137 + 56);

  v141 = __swift_project_boxed_opaque_existential_0((v140 + 32), v139);
  v142 = *v141;
  v0[68] = *v141;

  return MEMORY[0x2822009F8](sub_253264624, v142, 0);
}

uint64_t sub_253264624()
{
  v1 = v0[68];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[68];
  }

  v2 = v0[46];
  v3 = v0[44];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 17);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 17), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253264838, v3, 0);
}

uint64_t sub_253264838()
{
  v1 = *(v0 + 536) + 1;
  if (v1 == *(v0 + 528))
  {
    v2 = *(v0 + 512);

    v3 = *(v0 + 496);
    v4 = *(v0 + 464);
    v5 = *(v0 + 472);

    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 536) = v1;
    v8 = __swift_project_boxed_opaque_existential_0((*(v0 + 520) + 40 * v1 + 32), *(*(v0 + 520) + 40 * v1 + 56));
    v9 = *v8;
    *(v0 + 544) = *v8;

    return MEMORY[0x2822009F8](sub_253264624, v9, 0);
  }
}

uint64_t sub_2532649E8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = sub_253CD07E8();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[29] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253264B70, v1, 0);
}

uint64_t sub_253264B70()
{
  v41 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v1 = sub_253CCFD48();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v3;
  sub_253CD0F58();
  if (!*(v2 + 16) || (v4 = sub_253217D40(v0 + 16), (v5 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    sub_253211D58(*(v0 + 200), &off_2864FBEC8);
    (*(v16 + 16))(v14, v13, v15);
    v17 = sub_253CD07C8();
    v18 = sub_253CD0C98();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v39 = *(v0 + 208);
    if (v19)
    {
      v26 = swift_slowAlloc();
      v38 = v25;
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      v36 = v18;
      v28 = sub_253CCFD08();
      v37 = v21;
      v30 = v29;
      v31 = *(v22 + 8);
      v31(v20, v23);
      v32 = sub_253277BA8(v28, v30, &v40);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_2531F8000, v17, v36, "Did not find scene uuid. Could not handle scene removed notification %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C040E0](v27, -1, -1);
      MEMORY[0x259C040E0](v26, -1, -1);

      (*(v24 + 8))(v38, v39);
      v31(v37, v23);
    }

    else
    {

      v33 = *(v22 + 8);
      v33(v20, v23);
      (*(v24 + 8))(v25, v39);
      v33(v21, v23);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 192);

  v7 = __swift_project_boxed_opaque_existential_0((v6 + 112), *(v6 + 136))[6];
  *(v0 + 272) = v7;
  v8 = *(v7 + 16);
  *(v0 + 280) = v8;
  if (v8)
  {
    *(v0 + 288) = 0;
    v9 = *(v7 + 56);

    v11 = __swift_project_boxed_opaque_existential_0((v10 + 32), v9);
    v12 = *v11;
    *(v0 + 296) = *v11;

    return MEMORY[0x2822009F8](sub_253264F80, v12, 0);
  }

  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
LABEL_16:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_253264F80()
{
  v1 = v0[37];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[37];
  }

  v2 = v0[29];
  v3 = v0[24];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265194, v3, 0);
}

uint64_t sub_253265194()
{
  v1 = v0[36] + 1;
  if (v1 == v0[35])
  {

    (*(v0[31] + 8))(v0[33], v0[30]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[36] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[34] + 40 * v1 + 32), *(v0[34] + 40 * v1 + 56));
    v5 = *v4;
    v0[37] = *v4;

    return MEMORY[0x2822009F8](sub_253264F80, v5, 0);
  }
}

uint64_t sub_2532652A4(uint64_t a1)
{
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_253265374;

  return sub_253265DEC(a1);
}

uint64_t sub_253265374(uint64_t a1)
{
  v2 = *(*v1 + 80);

  return MEMORY[0x2822009F8](sub_253265490, v2, 0);
}

uint64_t sub_253265490()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_253265568, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_253265568()
{
  v1 = v0[16];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[16];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265778, v2, 0);
}

uint64_t sub_253265778()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v5 = *v4;
    v0[16] = *v4;

    return MEMORY[0x2822009F8](sub_253265568, v5, 0);
  }
}

uint64_t sub_253265848(uint64_t a1)
{
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_253265918;

  return sub_253265DEC(a1);
}

uint64_t sub_253265918(uint64_t a1)
{
  v2 = *(*v1 + 80);

  return MEMORY[0x2822009F8](sub_253265A34, v2, 0);
}

uint64_t sub_253265A34()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_253265B0C, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_253265B0C()
{
  v1 = v0[16];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[16];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253265D1C, v2, 0);
}

uint64_t sub_253265D1C()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v5 = *v4;
    v0[16] = *v4;

    return MEMORY[0x2822009F8](sub_253265B0C, v5, 0);
  }
}

uint64_t sub_253265DEC(uint64_t a1)
{
  v3 = *v1;
  v2[26] = a1;
  v2[27] = v3;
  v4 = sub_253CD07E8();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_253CCFD58();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253265F50, v1, 0);
}

uint64_t sub_253265F50()
{
  v67 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v1 = sub_253CCFD48();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 160) = sub_253CD0968();
  *(v0 + 168) = v3;
  sub_253CD0F58();
  if (!*(v2 + 16) || (v4 = sub_253217D40(v0 + 16), (v5 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_253205FF8(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_13:
    v15 = *(v0 + 288);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_253211D58(*(v0 + 216), &off_2864FBEC8);
    (*(v17 + 16))(v16, v15, v18);
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C98();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 256);
    v26 = *(v0 + 232);
    v25 = *(v0 + 240);
    v27 = *(v0 + 224);
    if (v21)
    {
      v64 = *(v0 + 224);
      v28 = swift_slowAlloc();
      v60 = v20;
      v29 = swift_slowAlloc();
      v66 = v29;
      *v28 = 136315138;
      v30 = sub_253CCFD08();
      v62 = v25;
      v32 = v31;
      (*(v23 + 8))(v22, v24);
      v33 = sub_253277BA8(v30, v32, &v66);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2531F8000, v19, v60, "Could not find accessory in notification %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x259C040E0](v29, -1, -1);
      MEMORY[0x259C040E0](v28, -1, -1);

      (*(v26 + 8))(v62, v64);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v26 + 8))(v25, v27);
    }

    goto LABEL_16;
  }

  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 192);
  v7 = [v6 home];
  if (v7)
  {
    goto LABEL_7;
  }

  v35 = sub_253CCFD48();
  if (!v35)
  {
    goto LABEL_28;
  }

  v36 = v35;
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v37;
  sub_253CD0F58();
  if (!*(v36 + 16) || (v38 = sub_253217D40(v0 + 56), (v39 & 1) == 0))
  {

    sub_253205FA4(v0 + 56);
LABEL_28:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_29;
  }

  sub_253205FF8(*(v36 + 56) + 32 * v38, v0 + 128);
  sub_253205FA4(v0 + 56);

  if (!*(v0 + 152))
  {
LABEL_29:
    sub_253206054(v0 + 128, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_30;
  }

  sub_253200644(0, &unk_281530D20, off_27971A118);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v41 = *(v0 + 280);
    v40 = *(v0 + 288);
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);
    sub_253211D58(*(v0 + 216), &off_2864FBEC8);
    (*(v43 + 16))(v41, v40, v42);
    v44 = sub_253CD07C8();
    v45 = sub_253CD0C98();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 280);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 248);
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    if (v46)
    {
      v65 = *(v0 + 224);
      v53 = swift_slowAlloc();
      v61 = v45;
      v54 = swift_slowAlloc();
      v66 = v54;
      *v53 = 136315138;
      log = v44;
      v55 = sub_253CCFD08();
      v63 = v50;
      v57 = v56;
      (*(v48 + 8))(v47, v49);
      v58 = sub_253277BA8(v55, v57, &v66);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_2531F8000, log, v61, "Could not find valid instance of home in notification %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x259C040E0](v54, -1, -1);
      MEMORY[0x259C040E0](v53, -1, -1);

      (*(v51 + 8))(v63, v65);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      (*(v51 + 8))(v50, v52);
    }

    goto LABEL_16;
  }

  v7 = *(v0 + 200);
LABEL_7:
  v8 = sub_25323F600(v6, v7);
  v9 = v8;
  v10 = *(v8 + 16);
  if (!v10)
  {

LABEL_16:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v11 = sub_253221A64(*(v8 + 16), 0);
  v12 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
  v13 = sub_2532220B8(&v66, v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10, v9);
  result = sub_25320C5EC(v66);
  if (v13 != v10)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

  v34 = *(v0 + 8);

  return v34(v11);
}

uint64_t sub_253266614(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = sub_253CD07E8();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39B0, &unk_253D4A570);
  v2[23] = swift_task_alloc();
  v4 = sub_253CCFD58();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532667D4, v1, 0);
}

uint64_t sub_2532667D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  sub_253CCFD38();
  if (!v0[10])
  {
    sub_253206054((v0 + 7), &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_8;
  }

  sub_253200644(0, &qword_281530E68, off_27971A230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_253211D58(v0[17], &off_2864FBEC8);
    v17 = sub_253CD07C8();
    v18 = sub_253CD0C98();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[18];
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2531F8000, v17, v18, "Could not index service group as the notification did not contain a HMDServiceGroup", v26, 2u);
      MEMORY[0x259C040E0](v26, -1, -1);
    }

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_11;
  }

  v1 = v0[23];
  v2 = v0[14];
  v0[27] = v2;
  sub_253240A68(v2, v1);
  v3 = type metadata accessor for HomeGroupEntity(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  sub_253206054(v1, &qword_27F5A39B0, &unk_253D4A570);
  if (v4 == 1)
  {
    sub_253211D58(v0[17], &off_2864FBEC8);
    v5 = v2;
    v6 = sub_253CD07C8();
    v7 = sub_253CD0C98();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_2531F8000, v6, v7, "Unable to create HomeGroupEntity for %@", v8, 0xCu);
      sub_253206054(v9, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v9, -1, -1);
      MEMORY[0x259C040E0](v8, -1, -1);
    }

    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[18];
    v16 = v0[19];

    (*(v16 + 8))(v14, v15);
    (*(v12 + 8))(v11, v13);
    goto LABEL_11;
  }

  v29 = __swift_project_boxed_opaque_existential_0((v0[16] + 112), *(v0[16] + 136))[6];
  v0[28] = v29;
  v30 = *(v29 + 16);
  v0[29] = v30;
  if (!v30)
  {

    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_11:

    v27 = v0[1];

    return v27();
  }

  v0[30] = 0;
  v31 = *(v29 + 56);

  v33 = __swift_project_boxed_opaque_existential_0((v32 + 32), v31);
  v34 = *v33;
  v0[31] = *v33;

  return MEMORY[0x2822009F8](sub_253266C20, v34, 0);
}

uint64_t sub_253266C20()
{
  v1 = v0[31];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[31];
  }

  v2 = v0[22];
  v3 = v0[16];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 2), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_253266E34, v3, 0);
}

uint64_t sub_253266E34()
{
  v1 = v0[30] + 1;
  if (v1 == v0[29])
  {
    v2 = v0[27];

    (*(v0[25] + 8))(v0[26], v0[24]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[30] = v1;
    v5 = __swift_project_boxed_opaque_existential_0((v0[28] + 40 * v1 + 32), *(v0[28] + 40 * v1 + 56));
    v6 = *v5;
    v0[31] = *v5;

    return MEMORY[0x2822009F8](sub_253266C20, v6, 0);
  }
}

uint64_t sub_253266F54(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2[27] = swift_task_alloc();
  v3 = sub_253CCFD58();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_253CD07E8();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532670E8, v1, 0);
}

uint64_t sub_2532670E8()
{
  v50 = v0;
  sub_253211D58(*(v0 + 208), &off_2864FBEC8);
  v1 = sub_253CD07C8();
  v2 = sub_253CD0C78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2531F8000, v1, v2, "Handling service group removed notification", v3, 2u);
    MEMORY[0x259C040E0](v3, -1, -1);
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);

  v7 = *(v6 + 8);
  v7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  sub_253CD00D8();
  v8 = sub_253CCFD48();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v10;
  sub_253CD0F58();
  if (!*(v9 + 16) || (v11 = sub_253217D40(v0 + 16), (v12 & 1) == 0))
  {

    sub_253205FA4(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v9 + 56) + 32 * v11, v0 + 96);
  sub_253205FA4(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_253206054(v0 + 96, &qword_27F5A2AB0, &unk_253D4A560);
LABEL_15:
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    sub_253211D58(*(v0 + 208), &off_2864FBEC8);
    (*(v23 + 16))(v21, v20, v22);
    v24 = sub_253CD07C8();
    v25 = sub_253CD0C98();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 272);
    v28 = *(v0 + 248);
    v48 = *(v0 + 256);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    if (v26)
    {
      v47 = v7;
      v32 = swift_slowAlloc();
      v46 = v27;
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      v45 = v25;
      *(v0 + 184) = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v34 = sub_253CD0DB8();
      v35 = v31;
      v37 = v36;
      v38 = *(v30 + 8);
      v39 = v29;
      v40 = v35;
      v38(v39, v35);

      v41 = sub_253277BA8(v34, v37, &v49);

      *(v32 + 4) = v41;
      _os_log_impl(&dword_2531F8000, v24, v45, "Did not find service group uuid. Could not handle service group removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C040E0](v33, -1, -1);
      MEMORY[0x259C040E0](v32, -1, -1);

      v47(v46, v48);
      v38(v28, v40);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v29, v31);
      v7(v27, v48);
      v42(v28, v31);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(v0 + 200);

  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
  *(v0 + 288) = v14;
  v15 = *(v14 + 16);
  *(v0 + 296) = v15;
  if (v15)
  {
    *(v0 + 304) = 0;
    v16 = *(v14 + 56);

    v18 = __swift_project_boxed_opaque_existential_0((v17 + 32), v16);
    v19 = *v18;
    *(v0 + 312) = *v18;

    return MEMORY[0x2822009F8](sub_2532675E0, v19, 0);
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_18:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2532675E0()
{
  v1 = v0[39];
  if (v1[29])
  {

    sub_253CD0BA8();

    v1 = v0[39];
  }

  v2 = v0[27];
  v3 = v0[25];
  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);

  sub_253CD0188();

  sub_253206054(v2, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_2532684C0((v0 + 7), (v1 + 24), &qword_27F5A3630, &unk_253D49680);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2532677F4, v3, 0);
}

uint64_t sub_2532677F4()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {

    (*(v0[29] + 8))(v0[31], v0[28]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[38] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[36] + 40 * v1 + 32), *(v0[36] + 40 * v1 + 56));
    v5 = *v4;
    v0[39] = *v4;

    return MEMORY[0x2822009F8](sub_2532675E0, v5, 0);
  }
}

void sub_253267910(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_253CD0DD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2532679D4(uint64_t a1)
{
  sub_253267A60(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_253267A60(uint64_t a1)
{
  if (!qword_27F5A39A0)
  {
    sub_253CCFD58();
    v1 = sub_253CD00E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5A39A0);
    }
  }
}

uint64_t sub_253267AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A00, &qword_253D4A688);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39C8, &qword_253D4A618);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39E8, &qword_253D4A658);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v29[3] = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
  v29[4] = &off_2864FC158;
  v12 = swift_allocObject();
  v29[0] = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  swift_defaultActor_initialize();
  v14 = MEMORY[0x277D84F90];
  *(a2 + 152) = 0;
  *(a2 + 160) = v14;
  v15 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3978, &qword_253D4A4F0);
  v17 = *(*(v16 - 8) + 56);
  v17(a2 + v15, 1, 1, v16);
  v18 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
  v20 = *(*(v19 - 8) + 56);
  v20(a2 + v18, 1, 1, v19);
  sub_2532074E4(v29, a2 + 112);
  v17(v11, 1, 1, v16);
  v28 = v11;
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  (*(v26 + 104))(v25, *MEMORY[0x277D85778], v27);
  sub_253CD0B98();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v20(v8, 0, 1, v19);
  v21 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2532684C0(v8, a2 + v21, &qword_27F5A39C8, &qword_253D4A618);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC19HomeKitDaemonLegacy16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_253268528(v11, a2 + v22);
  swift_endAccess();
  sub_253206054(v11, &qword_27F5A39E8, &qword_253D4A658);
  return a2;
}

uint64_t sub_253267E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_253267EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_253267F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253267F90(uint64_t a1)
{
  v4 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253254D48(a1, v1 + v5, v7, v8);
}

uint64_t sub_2532680B4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253254248(a1, v6, v7, v8, v1 + v5);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2532681DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25320C438;

  return sub_2532537C4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_2532682F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_2532520C8(a1, v5, v4);
}