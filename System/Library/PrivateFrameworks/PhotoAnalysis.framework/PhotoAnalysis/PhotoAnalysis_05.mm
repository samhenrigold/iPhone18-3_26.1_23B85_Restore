uint64_t sub_22FA96C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA96C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA96D38, v4, 0);
}

uint64_t sub_22FA96D38(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA97648;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD3F20, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA970DC;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA970DC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA31A0;
  }

  else
  {
    v4 = sub_22FA97208;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA97208()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for TestService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 128);
      v9 = *(v3 + 136);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&unk_27DAD7B40, type metadata accessor for TestService, &unk_22FCD7E98);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA97648()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA3194;
  }

  else
  {
    v4 = sub_22FA97774;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA97774()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for TestService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 128);
      v11 = *(v5 + 136);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&unk_27DAD7B40, type metadata accessor for TestService, &unk_22FCD7E98);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FA97BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA97C98, v4, 0);
}

uint64_t sub_22FA97C98(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA985A8;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD3EE0, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA9803C;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA9803C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA31A0;
  }

  else
  {
    v4 = sub_22FA98168;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA98168()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for ExecutiveService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 112);
      v9 = *(v3 + 120);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&qword_27DAD7B38, type metadata accessor for ExecutiveService, &unk_22FCDC008);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA985A8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA3194;
  }

  else
  {
    v4 = sub_22FA986D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA986D4()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for ExecutiveService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 112);
      v11 = *(v5 + 120);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&qword_27DAD7B38, type metadata accessor for ExecutiveService, &unk_22FCDC008);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FA98B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA98BF8, v4, 0);
}

uint64_t sub_22FA98BF8(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA99508;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD3EA0, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA98F9C;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA98F9C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA31A0;
  }

  else
  {
    v4 = sub_22FA990C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA990C8()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for WallpaperService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 120);
      v9 = *(v3 + 128);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&qword_281480348, type metadata accessor for WallpaperService, &unk_22FCD6550);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA99508()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA3194;
  }

  else
  {
    v4 = sub_22FA99634;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA99634()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for WallpaperService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 120);
      v11 = *(v5 + 128);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&qword_281480348, type metadata accessor for WallpaperService, &unk_22FCD6550);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FA99AB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a3;
  v37 = a8;
  v35 = a7;
  v11 = v10;
  v16 = a10;
  v38 = a9;
  v39 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v33 - v19;

  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F34();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = a6;
    v25 = v24;
    v40 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_22FA2F600(v39, a2, &v40);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_22FA2F600(*(v11 + 152), *(v11 + 160), &v40);
    _os_log_impl(&dword_22FA28000, v21, v22, "Request for service %{public}s from %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    v16 = a10;
    a6 = v34;
    MEMORY[0x23190A000](v26, -1, -1);
    MEMORY[0x23190A000](v23, -1, -1);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = a4;
  v28 = sub_22FCC8D14();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v38;
  v31 = v39;
  v29[4] = v11;
  v29[5] = v31;
  v29[6] = a2;
  v29[7] = a5;
  v29[8] = a6;
  v29[9] = v30;
  v29[10] = v27;

  sub_22FC3EE08(0, 0, v20, v16, v29);
}

uint64_t sub_22FA99D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA99E38;

  return sub_22FA93BF0(a5, a6, a7, a8);
}

uint64_t sub_22FA99E38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FAA3198;
  }

  else
  {
    v4 = sub_22FAA3188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FA99F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA99E38;

  return sub_22FA94B50(a5, a6, a7, a8);
}

uint64_t sub_22FA9A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA9A124;

  return sub_22FA95AB0(a5, a6, a7, a8);
}

uint64_t sub_22FA9A124(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FA9A3CC;
  }

  else
  {
    v4 = sub_22FA9A238;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FA9A238()
{
  v14 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = *(v3 + 112);
    v7 = *(v3 + 120);

    v8 = sub_22FA2F600(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v1, v2, "Successfully created service %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = v0[5];
  v12 = v0[8];
  v13 = 0;

  v9(&v12, &v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FA9A3CC()
{
  v20 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_22FA2F600(v7, v6, &v19);
    *(v8 + 12) = 2114;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to create service %{public}s: %{public}@", v8, 0x16u);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v13 = v0[9];
  v14 = v0[5];
  v18 = 0;
  v19 = v13;
  v15 = v13;
  v14(&v18, &v19);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FA9A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA9A6B0;

  return sub_22FA96C94(a5, a6, a7, a8);
}

uint64_t sub_22FA9A6B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FAA3198;
  }

  else
  {
    v4 = sub_22FA9A7C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FA9A7C4()
{
  v14 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = *(v3 + 128);
    v7 = *(v3 + 136);

    v8 = sub_22FA2F600(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v1, v2, "Successfully created service %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = v0[5];
  v12 = v0[8];
  v13 = 0;

  v9(&v12, &v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FA9A958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA99E38;

  return sub_22FA97BF4(a5, a6, a7, a8);
}

uint64_t sub_22FA9AA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v16;
  v8[6] = v17;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_22FA9AB30;

  return sub_22FA98B54(a5, a6, a7, a8);
}

uint64_t sub_22FA9AB30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FAA3198;
  }

  else
  {
    v4 = sub_22FA9AC44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FA9AC44()
{
  v14 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = *(v3 + 120);
    v7 = *(v3 + 128);

    v8 = sub_22FA2F600(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v1, v2, "Successfully created service %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = v0[5];
  v12 = v0[8];
  v13 = 0;

  v9(&v12, &v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FA9ADD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v25 = sub_22FCC65F4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25, v9);
  v27 = 0xD00000000000001DLL;
  v28 = 0x800000022FCE1A30;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v24 = 0xD00000000000001DLL;
  v11 = *(v3 + 184);
  v27 = *(v3 + 176);
  v28 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0xD00000000000001DLL, 0x800000022FCE1A30);
  v22 = v28;
  v23 = v27;
  if (*(v3 + 168) == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v21 = v12;
  v13 = swift_allocObject();
  v14 = v25;
  *(v13 + 16) = v26;
  *(v13 + 24) = a3;
  (*(v7 + 16))(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v14);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = v22;
  *v17 = v23;
  *(v17 + 8) = v18;
  *(v17 + 16) = v21;

  sub_22FA99AB4(v24, 0x800000022FCE1A30, sub_22FAA2CFC, v13, &unk_22FCD3FD8, v16, &unk_2844A8798, &unk_2844A87C0, sub_22FAA319C, &unk_22FCD3FE8);
}

uint64_t sub_22FA9B084(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t, __n128))
{
  if (a1)
  {
    v8 = type metadata accessor for LegacyStorytellingService();
    *&v7 = a1;
    sub_22FA32554(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  (a3)(v9, a2);
  return sub_22FA2B420(v9, &qword_27DAD7BB8, &qword_22FCD4010);
}

uint64_t sub_22FA9B11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22FAA31A4;

  return sub_22FA9B1E0(a2, a3, a4, v6);
}

uint64_t sub_22FA9B1E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 144) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  return MEMORY[0x2822009F8](sub_22FA9B208, v4, 0);
}

uint64_t sub_22FA9B208(uint64_t a1)
{
  v2 = v1[11];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v2 + 128);
    v1[12] = v4;
    v5 = *(v4 + 120);
    v1[13] = v5;
    v1[7] = v2;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();

    return MEMORY[0x2822009F8](sub_22FA9B3A0, v5, 0);
  }

  else
  {
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    swift_willThrow();
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_22FA9B3A0()
{
  v1 = sub_22FBBEC80(v0[8]);
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_22FA9B460;

  return sub_22FAFFD68(v1, (v0 + 2));
}

uint64_t sub_22FA9B460(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[13];

  if (v1)
  {
    v6 = sub_22FA9B708;
  }

  else
  {
    v4[17] = a1;
    v6 = sub_22FA9B5B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FA9B5B8()
{
  v1 = *(v0 + 88);

  sub_22FA3A7C4(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FA9B62C, v1, 0);
}

uint64_t sub_22FA9B62C()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(*(v0 + 96) + 128);
  v5 = *(v0 + 144);
  type metadata accessor for LegacyStorytellingService();
  swift_allocObject();

  v6 = sub_22FC11830(v3, v2, v1, v4, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22FA9B708()
{
  v1 = *(v0 + 88);

  sub_22FA3A7C4(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FAA318C, v1, 0);
}

void sub_22FA9B7B0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22FA4FAA4(a1, v12, &qword_27DAD7BB8, &qword_22FCD4010);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6, v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_22FCC96F4();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_22FCC6504();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_22FA9B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v22 = a3;
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v23 = 0xD000000000000017;
  v24 = 0x800000022FCE1A10;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v20 = 0xD000000000000017;
  v11 = *(v3 + 184);
  v23 = *(v3 + 176);
  v24 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0xD000000000000017, 0x800000022FCE1A10);
  v12 = v24;
  v19 = v23;
  if (*(v3 + 168) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v6;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v19;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;

  sub_22FA99AB4(v20, 0x800000022FCE1A10, v21, v22, &unk_22FCD3F90, v16, &unk_2844A86A8, &unk_2844A86D0, sub_22FAA319C, &unk_22FCD3FA0);
}

uint64_t sub_22FA9BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22FAA31A4;

  return sub_22FA9BC48(a2, a3, a4, v6);
}

uint64_t sub_22FA9BC48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 136) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  return MEMORY[0x2822009F8](sub_22FA9BC70, v4, 0);
}

uint64_t sub_22FA9BC70(uint64_t a1)
{
  v2 = v1[11];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v2 + 128);
    v1[12] = v4;
    v1[13] = *(v4 + 120);
    v1[7] = v2;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();
    v5 = swift_task_alloc();
    v1[14] = v5;
    *v5 = v1;
    v5[1] = sub_22FA9BE54;
    v6 = v1[8];

    return sub_22FA9E918(v6, (v1 + 2));
  }

  else
  {
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();
    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_22FA9BE54(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[11];
  if (v1)
  {
    sub_22FA3A7C4((v4 + 2));

    v6 = sub_22FA9C0A4;
  }

  else
  {
    v4[16] = a1;
    sub_22FA3A7C4((v4 + 2));

    v6 = sub_22FA9BFC8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FA9BFC8()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(*(v0 + 96) + 128);
  v5 = *(v0 + 136);
  type metadata accessor for PhotoLibraryService();
  swift_allocObject();

  v6 = sub_22FA7CDC8(v3, v2, v1, v4, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22FA9C0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v22 = a3;
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v23 = 0xD000000000000016;
  v24 = 0x800000022FCE19F0;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v20 = 0xD000000000000016;
  v11 = *(v3 + 184);
  v23 = *(v3 + 176);
  v24 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0xD000000000000016, 0x800000022FCE19F0);
  v12 = v24;
  v19 = v23;
  if (*(v3 + 168) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v6;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v19;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;

  sub_22FA99AB4(v20, 0x800000022FCE19F0, v21, v22, &unk_22FCD3F48, v16, &unk_2844A85E0, &unk_2844A8608, sub_22FAA2824, &unk_22FCD3F58);
}

uint64_t sub_22FA9C350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22FA52F04;

  return sub_22FA9C414(a2, a3, a4, v6);
}

uint64_t sub_22FA9C414(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 144) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  return MEMORY[0x2822009F8](sub_22FA9C43C, v4, 0);
}

uint64_t sub_22FA9C43C(uint64_t a1)
{
  v2 = v1[11];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v2 + 128);
    v1[12] = v4;
    v5 = *(v4 + 120);
    v1[13] = v5;
    v1[7] = v2;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();

    return MEMORY[0x2822009F8](sub_22FA9C5D4, v5, 0);
  }

  else
  {
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0;
    swift_willThrow();
    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_22FA9C5D4()
{
  v1 = sub_22FA90184(v0[8]);
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_22FA9C694;

  return sub_22FAFCE24(v1, (v0 + 2));
}

uint64_t sub_22FA9C694(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[13];

  if (v1)
  {
    v6 = sub_22FA9C93C;
  }

  else
  {
    v4[17] = a1;
    v6 = sub_22FA9C7EC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FA9C7EC()
{
  v1 = *(v0 + 88);

  sub_22FA3A7C4(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FA9C860, v1, 0);
}

uint64_t sub_22FA9C860()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(*(v0 + 96) + 128);
  v5 = *(v0 + 144);
  type metadata accessor for MomentGraphService();
  swift_allocObject();

  v6 = sub_22FBA4C84(v3, v2, v1, v4, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22FA9C93C()
{
  v1 = *(v0 + 88);

  sub_22FA3A7C4(v0 + 16);

  return MEMORY[0x2822009F8](sub_22FA9C9B0, v1, 0);
}

uint64_t sub_22FA9C9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v22 = a3;
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v23 = 0x7672655374736554;
  v24 = 0xEF27204020656369;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v20 = 0x7672655374736554;
  v11 = *(v3 + 184);
  v23 = *(v3 + 176);
  v24 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0x7672655374736554, 0xEF27204020656369);
  v12 = v24;
  v19 = v23;
  if (*(v3 + 168) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v6;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v19;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;

  sub_22FA99AB4(v20, 0xEF27204020656369, v21, v22, &unk_22FCD3EF8, v16, &unk_2844A8518, &unk_2844A8540, sub_22FAA319C, &unk_22FCD3F08);
}

uint64_t sub_22FA9CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22FAA31A4;

  return sub_22FA9CD28(a2, a3, a4, v6);
}

uint64_t sub_22FA9CD28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 136) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  return MEMORY[0x2822009F8](sub_22FA9CD50, v4, 0);
}

uint64_t sub_22FA9CD50(uint64_t a1)
{
  v2 = v1[11];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v2 + 128);
    v1[12] = v4;
    v1[13] = *(v4 + 120);
    v1[7] = v2;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();
    v5 = swift_task_alloc();
    v1[14] = v5;
    *v5 = v1;
    v5[1] = sub_22FA9CF34;
    v6 = v1[8];

    return sub_22FA9EBC0(v6, (v1 + 2));
  }

  else
  {
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();
    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_22FA9CF34(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[11];
  if (v1)
  {
    sub_22FA3A7C4((v4 + 2));

    v6 = sub_22FAA3190;
  }

  else
  {
    v4[16] = a1;
    sub_22FA3A7C4((v4 + 2));

    v6 = sub_22FA9D0A8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FA9D0A8()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(*(v0 + 96) + 128);
  v5 = *(v0 + 136);
  type metadata accessor for TestService();
  swift_allocObject();

  v6 = sub_22FB3D494(v3, v2, v1, v4, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22FA9D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v22 = a3;
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v23 = 0xD000000000000014;
  v24 = 0x800000022FCE19D0;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v20 = 0xD000000000000014;
  v11 = *(v3 + 184);
  v23 = *(v3 + 176);
  v24 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE19D0);
  v12 = v24;
  v19 = v23;
  if (*(v3 + 168) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v6;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v19;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;

  sub_22FA99AB4(v20, 0x800000022FCE19D0, v21, v22, &unk_22FCD3EB8, v16, &unk_2844A8450, &unk_2844A8478, sub_22FAA319C, &unk_22FCD3EC8);
}

uint64_t sub_22FA9D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22FA9D440, a1, 0);
}

uint64_t sub_22FA9D440(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    v6 = *(v2 + 128);
    v7 = *(v1 + 40);
    type metadata accessor for ExecutiveService();
    swift_allocObject();

    v8 = sub_22FBD58B0(v4, v5, v6, v7);

    v9 = *(v1 + 8);

    return v9(v8);
  }

  else
  {
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = v11;
    *(v13 + 16) = 0;
    swift_willThrow();
    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_22FA9D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v22 = a3;
  v6 = sub_22FCC65F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v23 = 0xD000000000000014;
  v24 = 0x800000022FCE19B0;
  v10 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v10);

  MEMORY[0x231907FA0](39, 0xE100000000000000);
  v20 = 0xD000000000000014;
  v11 = *(v3 + 184);
  v23 = *(v3 + 176);
  v24 = v11;

  MEMORY[0x231907FA0](540945696, 0xE400000000000000);
  MEMORY[0x231907FA0](0xD000000000000014, 0x800000022FCE19B0);
  v12 = v24;
  v19 = v23;
  if (*(v3 + 168) == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v6;
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v17 = v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v19;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;

  sub_22FA99AB4(v20, 0x800000022FCE19B0, v21, v22, &unk_22FCD3E78, v16, &unk_2844A8388, &unk_2844A83B0, sub_22FAA319C, &unk_22FCD3E88);
}

uint64_t sub_22FA9D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22FA9D86C, a1, 0);
}

uint64_t sub_22FA9D86C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    v6 = *(*(v2 + 128) + 128);
    v7 = *(v1 + 40);
    type metadata accessor for WallpaperService();
    swift_allocObject();

    v8 = sub_22FB1207C(v4, v5, v6, v7);

    v9 = *(v1 + 8);

    return v9(v8);
  }

  else
  {
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = v11;
    *(v13 + 16) = 0;
    swift_willThrow();
    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_22FA9DA14(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v10 = sub_22FCC65F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  sub_22FCC65A4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  a7(v14, a6, v16);

  return (*(v11 + 8))(v14, v10);
}

void sub_22FA9DB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22FCC6504();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_22FA9DBC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v39 = &v33 - v6;
  v7 = sub_22FCC65F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v37 = v10;
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v33 - v14;
  v36 = *(v8 + 16);
  v36(&v33 - v14, a1, v7, v13);
  v16 = sub_22FCC8664();
  v17 = sub_22FCC8F34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = v20;
    *v19 = 136446210;
    v21 = sub_22FCC65B4();
    v34 = a1;
    v23 = v22;
    (*(v8 + 8))(v15, v7);
    v24 = sub_22FA2F600(v21, v23, &v40);
    a1 = v34;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_22FA28000, v16, v17, "notifyLibraryAvailableAtURL %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23190A000](v20, -1, -1);
    v25 = v19;
    v2 = v35;
    MEMORY[0x23190A000](v25, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }

  v26 = sub_22FCC8D14();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v28 = v38;
  (v36)(v38, a1, v7);
  v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v30 = (v37 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  (*(v8 + 32))(v31 + v29, v28, v7);
  *(v31 + v30) = v2;

  sub_22FC3EE08(0, 0, v27, &unk_22FCD3E60, v31);
}

uint64_t sub_22FA9DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22FCC65F4();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for PhotoLibraryResource(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA9E040, 0, 0);
}

uint64_t sub_22FA9E040()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *(v6 + 16);
  v8(v3, v0[2], v5);
  v8(&v1[*(v4 + 20)], v3, v5);
  v9 = objc_opt_self();
  v10 = sub_22FCC6564();
  LOBYTE(v9) = [v9 isSystemPhotoLibraryURL_];

  (*(v6 + 8))(v3, v5);
  *v1 = v9;
  v11 = *(v7 + 128);
  v0[10] = v11;
  sub_22FAA1C20(v1, v2);

  return MEMORY[0x2822009F8](sub_22FA9E16C, v11, 0);
}

uint64_t sub_22FA9E16C(uint64_t a1)
{
  v2 = v1[10];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis9Executive_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v2 + 112);
    v1[11] = v4;
    v5 = sub_22FA9E25C;
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    sub_22FAA1C84();
    v1[13] = swift_allocError();
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    swift_willThrow();

    v5 = sub_22FA9E388;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22FA9E25C()
{
  v1 = *(*(v0 + 88) + 128);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_22FA9E280, v1, 0);
}

uint64_t sub_22FA9E280()
{
  v1 = *(v0 + 64);
  sub_22FA9EFB8(v1, *(v0 + 96));
  sub_22FA631E8();
  sub_22FA64AB0(v1);

  return MEMORY[0x2822009F8](sub_22FA9E300, 0, 0);
}

uint64_t sub_22FA9E300()
{
  sub_22FA64AB0(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA9E388()
{
  v1 = v0[13];
  sub_22FA64AB0(v0[8]);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to notify: %{public}@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FA64AB0(v0[9]);

  v11 = v0[1];

  return v11();
}

uint64_t getEnumTagSinglePayload for ServiceProvider.Client(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceProvider.Client(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FA9E764()
{
  result = qword_27DAD7960;
  if (!qword_27DAD7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7960);
  }

  return result;
}

uint64_t sub_22FA9E800(uint64_t a1)
{
  result = sub_22FAA3118(&unk_27DAD7970, type metadata accessor for ServiceProvider, &unk_22FCD3D48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FA9E858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FA2C21C;

  return sub_22FA91D50(a1, v4, v5, v7, v6);
}

uint64_t sub_22FA9E918(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC65F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA9E9DC, v2, 0);
}

uint64_t sub_22FA9E9DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_22FCD1800;
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = type metadata accessor for PhotoLibraryResource(0);
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_22FAA3118(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  v6(boxed_opaque_existential_1 + *(v7 + 20), v1, v3);
  v9 = objc_opt_self();
  v10 = sub_22FCC6564();
  LOBYTE(v9) = [v9 isSystemPhotoLibraryURL_];

  (*(v2 + 8))(v1, v3);
  *boxed_opaque_existential_1 = v9;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_22FAA317C;
  v12 = v0[3];

  return sub_22FAFE728(v5, v12);
}

uint64_t sub_22FA9EBC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC65F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA9EC84, v2, 0);
}

uint64_t sub_22FA9EC84()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_22FCD1800;
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = type metadata accessor for PhotoLibraryResource(0);
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_22FAA3118(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  v6(boxed_opaque_existential_1 + *(v7 + 20), v1, v3);
  v9 = objc_opt_self();
  v10 = sub_22FCC6564();
  LOBYTE(v9) = [v9 isSystemPhotoLibraryURL_];

  (*(v2 + 8))(v1, v3);
  *boxed_opaque_existential_1 = v9;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_22FA9EE68;
  v12 = v0[3];

  return sub_22FB013AC(v5, v12);
}

uint64_t sub_22FA9EE68(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_22FA9EFB8(uint64_t a1, uint64_t a2)
{
  v40[3] = type metadata accessor for PhotoLibraryResource(0);
  v40[4] = sub_22FAA3118(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_22FAA1C20(a1, boxed_opaque_existential_1);
  if ((sub_22FA63954(v40) & 1) == 0)
  {
    sub_22FA2D328(v40, &v38);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37[0] = v13;
      *v12 = 136446210;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(&v38);
      v22 = sub_22FA2F600(v19, v21, v37);

      *(v12 + 4) = v22;
      v18 = "Skipping invalid resource: %{public}s";
      goto LABEL_7;
    }

LABEL_8:

    __swift_destroy_boxed_opaque_existential_0(&v38);
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v5 = OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources;
  v6 = swift_beginAccess();
  v7 = *(a2 + v5);
  MEMORY[0x28223BE20](v6, v8);

  sub_22FA90EF8(sub_22FAA1CD8, v7, &v38);

  v9 = v39;
  sub_22FA2B420(&v38, &unk_27DAD7B20, &unk_22FCD25E0);
  if (v9)
  {
    sub_22FA2D328(v40, &v38);
    v10 = sub_22FCC8664();
    v11 = sub_22FCC8F14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36[0] = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v14 = sub_22FCC96C4();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0(&v38);
      v17 = sub_22FA2F600(v14, v16, v36);

      *(v12 + 4) = v17;
      v18 = "Skipping duplicate resource %s";
LABEL_7:
      _os_log_impl(&dword_22FA28000, v10, v11, v18, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v12, -1, -1);

      return __swift_destroy_boxed_opaque_existential_0(v40);
    }

    goto LABEL_8;
  }

  sub_22FA2D328(v40, &v38);
  v23 = sub_22FCC8664();
  v24 = sub_22FCC8EF4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    v27 = sub_22FCC96C4();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0(&v38);
    v30 = sub_22FA2F600(v27, v29, v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_22FA28000, v23, v24, "Adding resource %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23190A000](v26, -1, -1);
    MEMORY[0x23190A000](v25, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v38);
  }

  sub_22FA2D328(v40, &v38);
  swift_beginAccess();
  v31 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v5) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_22FAC23BC(0, v31[2] + 1, 1, v31);
    *(a2 + v5) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_22FAC23BC((v33 > 1), v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  sub_22FA2CF78(&v38, &v31[5 * v34 + 4]);
  *(a2 + v5) = v31;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t sub_22FA9F4BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FA9F5A8;

  return v7();
}

uint64_t sub_22FA9F5A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FA9F6F4, a1, 0);
  }
}

uint64_t sub_22FA9F6F4()
{
  v1 = *(*(v0 + 32) + 144);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FA9F7A0;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FA9F7A0()
{

  return MEMORY[0x2822009F8](sub_22FA9F89C, 0, 0);
}

uint64_t sub_22FA9F89C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&qword_28147E830, type metadata accessor for LegacyStorytellingService, &unk_22FCDC528);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FA9F938(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FA9FA24;

  return v7();
}

uint64_t sub_22FA9FA24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FA9FB70, a1, 0);
  }
}

uint64_t sub_22FA9FB70()
{
  v1 = *(*(v0 + 32) + 144);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FA9FC1C;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FA9FC1C()
{

  return MEMORY[0x2822009F8](sub_22FA9FD18, 0, 0);
}

uint64_t sub_22FA9FD18()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&qword_281481F90, type metadata accessor for PhotoLibraryService, &unk_22FCD2B98);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FA9FDB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FA9FEA0;

  return v7();
}

uint64_t sub_22FA9FEA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FA9FFEC, a1, 0);
  }
}

uint64_t sub_22FA9FFEC()
{
  v1 = *(*(v0 + 32) + 160);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FAA0098;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FAA0098()
{

  return MEMORY[0x2822009F8](sub_22FAA0194, 0, 0);
}

uint64_t sub_22FAA0194()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&qword_28147FF30, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FAA0230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FAA031C;

  return v7();
}

uint64_t sub_22FAA031C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FAA0468, a1, 0);
  }
}

uint64_t sub_22FAA0468()
{
  v1 = *(*(v0 + 32) + 144);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FAA0514;

  return sub_22FAE2318(v1);
}

uint64_t sub_22FAA0514()
{

  return MEMORY[0x2822009F8](sub_22FAA0610, 0, 0);
}

uint64_t sub_22FAA0610()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&unk_27DAD7B40, type metadata accessor for TestService, &unk_22FCD7E98);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FAA06AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FAA0798;

  return v7();
}

uint64_t sub_22FAA0798(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FAA08E4, a1, 0);
  }
}

uint64_t sub_22FAA08E4()
{
  v1 = *(*(v0 + 32) + 136);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FAA0990;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FAA0990()
{

  return MEMORY[0x2822009F8](sub_22FAA0A8C, 0, 0);
}

uint64_t sub_22FAA0A8C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&qword_27DAD7B38, type metadata accessor for ExecutiveService, &unk_22FCDC008);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FAA0B28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22FAA0C14;

  return v7();
}

uint64_t sub_22FAA0C14(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FAA0D60, a1, 0);
  }
}

uint64_t sub_22FAA0D60()
{
  v1 = *(*(v0 + 32) + 136);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22FAA0E0C;

  return sub_22FAE21E4(v1);
}

uint64_t sub_22FAA0E0C()
{

  return MEMORY[0x2822009F8](sub_22FAA0F08, 0, 0);
}

uint64_t sub_22FAA0F08()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22FAA3118(&qword_281480348, type metadata accessor for WallpaperService, &unk_22FCD6550);
  *v2 = v1;
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

id sub_22FAA0FA4()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [objc_opt_self() configureInterface_];
  [v1 setInterface:v2 forSelector:sel_legacyStorytellingServiceAt_reply_ argumentIndex:0 ofReply:1];
  v3 = &unk_2844CE5C8;
  v4 = sub_22FA90FB4(v3);

  [v1 setInterface:v4 forSelector:sel_photoLibraryServiceAt_reply_ argumentIndex:0 ofReply:1];
  v5 = sub_22FBA4878();
  [v1 setInterface:v5 forSelector:sel_momentGraphServiceAt_reply_ argumentIndex:0 ofReply:1];
  v6 = &unk_2844CEB00;
  v7 = sub_22FA90FB4(v6);

  [v1 setInterface:v7 forSelector:sel_testServiceAt_reply_ argumentIndex:0 ofReply:1];
  v8 = &unk_2844CFB40;
  v9 = sub_22FA90FB4(v8);

  [v1 setInterface:v9 forSelector:sel_executiveServiceAt_reply_ argumentIndex:0 ofReply:1];
  v10 = &unk_2844CE9E0;
  v11 = sub_22FA90FB4(v10);

  [v1 setInterface:v11 forSelector:sel_wallpaperServiceAt_reply_ argumentIndex:0 ofReply:1];
  return v1;
}

uint64_t *sub_22FAA11A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v61 = *v3;
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v62 = &v57 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v57 - v19;
  swift_defaultActor_initialize();
  v3[14] = MEMORY[0x277D84F98];
  v66 = OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_logger;
  sub_22FCC8674();
  v3[15] = a1;
  v3[16] = a2;
  v21 = a1;

  [v21 auditToken];
  v22 = SecTaskCreateWithAuditToken(0, &token);
  v64 = v16;
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = v22;
  v24 = SecTaskCopySigningIdentifier(v22, 0);
  if (!v24)
  {
    v25 = v23;
LABEL_14:

    goto LABEL_15;
  }

  v25 = v24;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_14;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  sub_22FCC8A74();

  v26 = *&token.val[2];
  if (!*&token.val[2])
  {
LABEL_15:
    v3[17] = 0;
    v3[18] = 0;
    token.val[0] = [v21 processIdentifier];
    v30 = sub_22FCC96C4();
    v31 = v33;
    v32 = 3;
    goto LABEL_16;
  }

  v27 = *token.val;
  v3[17] = *token.val;
  v3[18] = v26;
  *token.val = v27;
  *&token.val[2] = v26;
  swift_bridgeObjectRetain_n();
  MEMORY[0x231907FA0](10272, 0xE200000000000000);
  LODWORD(v70) = [v21 processIdentifier];
  v28 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v28);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  v29 = v27;
  v30 = *token.val;
  v31 = *&token.val[2];
  if (v29 == 0xD000000000000010 && 0x800000022FCE1910 == v26 || (sub_22FCC9704() & 1) != 0 || v29 == 0xD000000000000019 && 0x800000022FCE1930 == v26 || (sub_22FCC9704() & 1) != 0)
  {

    v32 = 0;
  }

  else if (v29 == 0xD000000000000011 && 0x800000022FCE1950 == v26 || (sub_22FCC9704() & 1) != 0 || v29 == 0xD000000000000017 && 0x800000022FCE1970 == v26 || (sub_22FCC9704() & 1) != 0)
  {

    v32 = 1;
  }

  else if (v29 == 0xD000000000000015 && 0x800000022FCE1990 == v26)
  {

    v32 = 2;
  }

  else
  {
    v56 = sub_22FCC9704();

    if (v56)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }
  }

LABEL_16:
  v60 = v21;
  *(v3 + 168) = v32;

  v59 = *(v7 + 16);
  v59(v20, v3 + v66, v6);

  v34 = sub_22FCC8664();
  v35 = sub_22FCC8F34();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v57 = v20;
    v37 = v6;
    v38 = v36;
    v39 = v30;
    v40 = swift_slowAlloc();
    *token.val = v40;
    *v38 = 136446210;
    *(v38 + 4) = sub_22FA2F600(v39, v31, &token);
    _os_log_impl(&dword_22FA28000, v34, v35, "New connection from client %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v41 = v40;
    v30 = v39;
    MEMORY[0x23190A000](v41, -1, -1);
    MEMORY[0x23190A000](v38, -1, -1);

    v65 = *(v7 + 8);
    v58 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65(v57, v37);
  }

  else
  {

    v65 = *(v7 + 8);
    v58 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65(v20, v6);
    v37 = v6;
  }

  v3[19] = v30;
  v3[20] = v31;
  *token.val = 0;
  *&token.val[2] = 0xE000000000000000;
  MEMORY[0x231907FA0](10272, 0xE200000000000000);
  v42 = v60;
  v70 = v60;
  sub_22FCC94A4();
  MEMORY[0x231907FA0](41, 0xE100000000000000);
  v43 = *token.val;
  v44 = *&token.val[2];
  *token.val = v30;
  *&token.val[2] = v31;

  MEMORY[0x231907FA0](v43, v44);

  v45 = *&token.val[2];
  v3[22] = *token.val;
  v3[23] = v45;
  v46 = v64;
  v47 = v59;
  v59(v64, v3 + v66, v37);
  v48 = sub_22FCC9904();
  v50 = v49;
  v51 = v62;
  v47(v62, v46, v37);
  type metadata accessor for StateHolder(0);
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v52[2] = v48;
  v52[3] = v50;
  v52[4] = 0;
  v52[5] = 0xE000000000000000;
  v47(v52 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v51, v37);
  v47(v63, v51, v37);
  sub_22FCC85E4();
  v65(v51, v37);
  *(v3 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) = v52;
  [v42 setExportedObject_];
  v53 = sub_22FAA0FA4();
  [v42 setExportedInterface_];

  v68 = sub_22FAA1A3C;
  v69 = v3;
  *token.val = MEMORY[0x277D85DD0];
  *&token.val[2] = 1107296256;
  *&token.val[4] = sub_22FA2B268;
  *&token.val[6] = &block_descriptor_8;
  v54 = _Block_copy(&token);

  [v42 setInvalidationHandler_];
  _Block_release(v54);
  if (qword_281480880 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  v65(v46, v37);
  return v3;
}

uint64_t sub_22FAA1A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA91464(a1, v4, v5, v6);
}

uint64_t sub_22FAA1B00(uint64_t a1)
{
  v4 = *(sub_22FCC65F4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C030;

  return sub_22FA9DF44(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22FAA1C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FAA1C84()
{
  result = qword_281481930[0];
  if (!qword_281481930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281481930);
  }

  return result;
}

uint64_t sub_22FAA1CF8()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA3184;

  return sub_22FA9D844(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_22FAA1E18(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA9AA44(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA1F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FAA0B28(a1, v4, v5, v6);
}

unint64_t sub_22FAA1FD8()
{
  result = qword_27DAD7B30;
  if (!qword_27DAD7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7B30);
  }

  return result;
}

uint64_t sub_22FAA202C()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA3184;

  return sub_22FA9D418(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_22FAA214C(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA9A958(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA2240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FAA06AC(a1, v4, v5, v6);
}

uint64_t sub_22FAA2328()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA3184;

  return sub_22FA9CC64(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_22FAA2448(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA9A5C4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA253C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FAA0230(a1, v4, v5, v6);
}

uint64_t sub_22FAA2608()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA2728;

  return sub_22FA9C350(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_22FAA2728(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22FAA2854(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA9A038(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA2948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FA9FDB4(a1, v4, v5, v6);
}

uint64_t sub_22FAA2A14()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA3184;

  return sub_22FA9BB84(v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_22FAA2B34(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA99F4C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA2C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA9F938(a1, v4, v5, v6);
}

uint64_t objectdestroy_39Tm()
{
  v1 = sub_22FCC65F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_22FAA2DE0()
{
  v2 = *(sub_22FCC65F4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22FAA3184;

  return sub_22FA9B11C(v4, v0 + v3, v6, v7, v8);
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22FAA2F58(uint64_t a1)
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
  v10[1] = sub_22FA2C21C;

  return sub_22FA99D4C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FAA304C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA9F4BC(a1, v4, v5, v6);
}

uint64_t sub_22FAA3118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22FAA3160(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22FAA31A8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22FCC84E4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAA3268, 0, 0);
}

uint64_t sub_22FAA3268()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_22FCC8414();
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Reading current memory triggers", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 32);

  *(v0 + 16) = MEMORY[0x277D84F90];
  v5 = *(v4 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_graphManager);
  *(v0 + 64) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v0 + 16;
  *(v6 + 24) = v4;

  return MEMORY[0x2822009F8](sub_22FAA33B8, v5, 0);
}

uint64_t sub_22FAA33B8()
{
  v1 = [*(*(v0 + 64) + 112) workingContext];
  sub_22FCC9124();

  return MEMORY[0x2822009F8](sub_22FAA346C, 0, 0);
}

uint64_t sub_22FAA346C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_22FAA352C(void *a1)
{
  v2 = *(v1 + 16);
  sub_22FAA356C(a1);
  *v2 = v3;
}

void sub_22FAA356C(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_photoLibrary) librarySpecificFetchOptions];
  [v4 setIncludePendingMemories_];
  v39 = v1;
  if ([objc_opt_self() debugContextualPromptSuggestionsFromAllMemories])
  {
    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, v5, v6, "Debug override 'debugContextualPromptSuggestionsFromAllMemories' enabled to test on all eligible memories, not just promoted ones. Was this intentional?", v7, 2u);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    [v4 setFetchLimit_];
    sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22FCD17F0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_22FA4EF4C();
    strcpy((v8 + 32), "featuredState");
    *(v8 + 46) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77F8, &qword_22FCD4150);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22FCD17F0;
    *(v9 + 32) = xmmword_22FCD40B0;
    *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7EE0, &unk_22FCD4158);
    *(v8 + 104) = sub_22FA2CF90(&qword_27DAD7EE8, &qword_27DAD7EE0, &unk_22FCD4158, MEMORY[0x277CC9C50]);
    *(v8 + 72) = v9;
    v10 = sub_22FCC8EE4();
    v2 = v39;
  }

  else
  {
    sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22FCD17F0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    v12 = sub_22FA4EF4C();
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    strcpy((v11 + 32), "featuredState");
    *(v11 + 46) = -4864;
    *(v11 + 96) = v13;
    *(v11 + 104) = v14;
    *(v11 + 64) = v12;
    *(v11 + 72) = 1;
    v10 = sub_22FCC8EE4();
  }

  [v4 setPredicate_];

  v15 = [objc_opt_self() fetchMemoriesWithOptions_];
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F90];
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = v16;
  aBlock[4] = sub_22FAA444C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA862D0;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  v36 = v15;
  [v15 enumerateObjectsUsingBlock_];
  _Block_release(v18);

  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F34();
  v37 = v4;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    swift_beginAccess();
    *(v22 + 4) = *(*(v16 + 16) + 16);

    _os_log_impl(&dword_22FA28000, v20, v21, "Elected memories with contextual triggers: %ld", v22, 0xCu);
    MEMORY[0x23190A000](v22, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = *(v16 + 16);
  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = 0;
    v26 = (v23 + 40);
    v38 = v24;
    while (v25 < *(v23 + 16))
    {
      v27 = *v26;
      v28 = *(v26 - 1);

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F04();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136315138;
        v33 = sub_22FAA4460(v28, v27);
        v35 = sub_22FA2F600(v33, v34, &v40);
        v24 = v38;

        *(v31 + 4) = v35;
        _os_log_impl(&dword_22FA28000, v29, v30, "Contextual trigger: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x23190A000](v32, -1, -1);
        MEMORY[0x23190A000](v31, -1, -1);
      }

      ++v25;
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_22FAA3C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_22FAA48EC(a1);
  sub_22FAA4B00(a1);
  v10 = sub_22FACACB4(v9);

  swift_beginAccess();
  v11 = *(a6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_22FAC2760(0, v11[2] + 1, 1, v11);
    *(a6 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_22FAC2760((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = v8;
  v15[5] = v10;
  *(a6 + 16) = v11;
  return swift_endAccess();
}

uint64_t ContextualPromptTriggers.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ContextualPromptTriggers.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis24ContextualPromptTriggers_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FAA4054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA4C64C;

  return sub_22FAA31A8(a1);
}

uint64_t dispatch thunk of ContextualPromptTriggerReading.readCurrentTriggers(eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA8E164;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for ContextualPromptTriggers(uint64_t a1)
{
  result = qword_28147EC58;
  if (!qword_28147EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAA4268(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t dispatch thunk of ContextualPromptTriggers.readCurrentTriggers(eventRecorder:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FA4C64C;

  return v6(a1);
}

char *sub_22FAA4460(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v44 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v2, 0);
    v4 = objc_opt_self();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = [v4 stringForTriggerType_];
      v8 = sub_22FCC8A84();
      v10 = v9;

      v12 = *(v44 + 16);
      v11 = *(v44 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22FA86EA8((v11 > 1), v12 + 1, 1);
      }

      *(v44 + 16) = v12 + 1;
      v13 = v44 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      --v2;
    }

    while (v2);
    v14 = a2;
  }

  else
  {
    v14 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
  sub_22FA2CF90(&qword_28147AF28, &qword_27DAD7448, &qword_22FCD2C50, MEMORY[0x277D83958]);
  v15 = sub_22FCC8A24();
  v17 = v16;

  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {
    if (!i)
    {
LABEL_22:
      v35 = sub_22FCC8A24();
      v37 = v36;

      sub_22FCC9384();

      MEMORY[0x231907FA0](v15, v17);

      MEMORY[0x231907FA0](0x727574616546202CLL, 0xEC000000203A7365);
      MEMORY[0x231907FA0](v35, v37);

      MEMORY[0x231907FA0](93, 0xE100000000000000);
      return 0x726567676972545BLL;
    }

    v45 = MEMORY[0x277D84F90];
    result = sub_22FA86EA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = v15;
    v39 = v17;
    v42 = v14 & 0xC000000000000001;
    v20 = objc_opt_self();
    v21 = v14;
    v22 = 0;
    v40 = v14 & 0xFFFFFFFFFFFFFF8;
    v41 = v20;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v42)
      {
        v24 = MEMORY[0x231908810](v22, v21);
      }

      else
      {
        if (v22 >= *(v40 + 16))
        {
          goto LABEL_24;
        }

        v24 = *(v21 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v41 stringForFeatureType_];
      v27 = sub_22FCC8A84();
      v15 = v28;

      v29 = [v25 name];
      v30 = sub_22FCC8A84();
      v32 = v31;

      sub_22FCC9384();

      MEMORY[0x231907FA0](v27, v15);

      MEMORY[0x231907FA0](0x203A656D614E202CLL, 0xE800000000000000);
      MEMORY[0x231907FA0](v30, v32);

      MEMORY[0x231907FA0](93, 0xE100000000000000);

      v14 = 0x657275746165465BLL;
      v17 = *(v45 + 16);
      v33 = *(v45 + 24);
      if (v17 >= v33 >> 1)
      {
        sub_22FA86EA8((v33 > 1), v17 + 1, 1);
      }

      *(v45 + 16) = v17 + 1;
      v34 = v45 + 16 * v17;
      *(v34 + 32) = 0x657275746165465BLL;
      *(v34 + 40) = 0xEA0000000000203ALL;
      ++v22;
      v21 = a2;
      if (v23 == i)
      {
        v15 = v38;
        v17 = v39;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

char *sub_22FAA48EC(void *a1)
{
  v2 = [a1 triggerTypes];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v4 = sub_22FCC8C44();

  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
  {
    v6 = 0;
    v17 = v4 & 0xC000000000000001;
    v7 = v4 & 0xFFFFFFFFFFFFFF8;
    v1 = MEMORY[0x277D84F90];
    v8 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x231908810](v6, v4);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v9 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_22FAC265C(0, *(v1 + 2) + 1, 1, v1);
      }

      v13 = *(v1 + 2);
      v12 = *(v1 + 3);
      if (v13 >= v12 >> 1)
      {
        v1 = sub_22FAC265C((v12 > 1), v13 + 1, 1, v1);
      }

      *(v1 + 2) = v13 + 1;
      *&v1[8 * v13 + 32] = v11;
      ++v6;
      v14 = v4 == i;
      v4 = v8;
      if (v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_21:

  if (!*(v1 + 2))
  {

LABEL_23:
    sub_22FAA4E9C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }

  return v1;
}

void sub_22FAA4B00(void *a1)
{
  v2 = [a1 photosGraphProperties];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = sub_22FCC89D4();

  v5 = sub_22FCC8A84();
  if (!*(v4 + 16))
  {

    goto LABEL_14;
  }

  v7 = sub_22FA2DB54(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_22FA2F7D8(*(v4 + 56) + 32 * v7, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7EF0, &qword_22FCD4168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v19 = a1;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      v24 = [v19 localIdentifier];
      v25 = sub_22FCC8A84();
      v27 = v26;

      v28 = sub_22FA2F600(v25, v27, v30);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "No encoded features for memory %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23190A000](v23, -1, -1);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    sub_22FAA4E9C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    return;
  }

  v10 = 0;
  v11 = v31;
  v12 = MEMORY[0x277D84F90];
  v30[0] = MEMORY[0x277D84F90];
  v13 = *(v31 + 16);
LABEL_6:
  v14 = v10;
  while (1)
  {
    if (v13 == v14)
    {

      sub_22FAA9AEC(v12);

      return;
    }

    if (v14 >= *(v11 + 16))
    {
      break;
    }

    v10 = v14 + 1;

    sub_22FAC78E8(v15);
    v16 = objc_allocWithZone(MEMORY[0x277D3B6C8]);
    v17 = sub_22FCC89C4();

    v18 = [v16 initWithEncodedFeature_];

    v14 = v10;
    if (v18)
    {
      MEMORY[0x231908070]();
      if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      sub_22FCC8C84();
      v12 = v30[0];
      goto LABEL_6;
    }
  }

  __break(1u);
}

unint64_t sub_22FAA4E9C()
{
  result = qword_28147EC68[0];
  if (!qword_28147EC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28147EC68);
  }

  return result;
}

unint64_t sub_22FAA4F04()
{
  result = qword_27DAD7EF8;
  if (!qword_27DAD7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7EF8);
  }

  return result;
}

uint64_t sub_22FAA4F58()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22FCC8F94();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v28 = *(v6 - 8);
  v7 = v28;
  v29 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for HighlightEnrichmentActivityTaskSource();
  v17 = sub_22FAA57E0(qword_28147C4B8, v16, type metadata accessor for HighlightEnrichmentActivityTaskSource, &unk_22FCD4250);
  sub_22FCC8904();
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v34[3] = v18;
  v34[4] = &off_2844A92C8;
  v34[0] = v19;
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD00000000000002CLL;
  *(v20 + 32) = 0x800000022FCE1BD0;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  sub_22FA2D328(v34, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v27 = sub_22FA5191C();
  v22 = v10;
  v23 = v14;
  v24 = v29;
  (*(v7 + 16))(v22, v14, v29);
  (*(v3 + 104))(v30, *MEMORY[0x277D85268], v31);
  v33 = MEMORY[0x277D84F90];
  sub_22FAA57E0(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v25 = sub_22FCC8FC4();
  (*(v28 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v34);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v25;
  return v20;
}

uint64_t sub_22FAA53FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22FAA541C, v2, 0);
}

uint64_t sub_22FAA541C()
{
  v1 = *(v0 + 64);
  [objc_allocWithZone(PHAHighlightEnrichmentTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v2 = sub_22FC3CDC4();

  v3 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22FAC2350((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 64);
  v7 = type metadata accessor for LegacyTask();
  *(v0 + 40) = v7;
  v8 = sub_22FAA57E0(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v0 + 48) = v8;
  *(v0 + 16) = v2;
  v3[2] = v5 + 1;
  sub_22FA2D89C((v0 + 16), &v3[5 * v5 + 4]);
  [objc_allocWithZone(PHAHighlightCollectionEnrichmentTask) init];
  sub_22FA2E6E4(v6, v0 + 16);

  v9 = sub_22FC3CDC4();

  v11 = v3[2];
  v10 = v3[3];
  if (v11 >= v10 >> 1)
  {
    v3 = sub_22FAC2350((v10 > 1), v11 + 1, 1, v3);
  }

  v12 = *(v0 + 64);
  *(v0 + 40) = v7;
  *(v0 + 48) = v8;
  *(v0 + 16) = v9;
  v3[2] = v11 + 1;
  sub_22FA2D89C((v0 + 16), &v3[5 * v11 + 4]);
  [objc_allocWithZone(PHAForcedHighlightEnrichmentTask) init];
  sub_22FA2E6E4(v12, v0 + 16);

  v13 = sub_22FC3CDC4();

  v15 = v3[2];
  v14 = v3[3];
  if (v15 >= v14 >> 1)
  {
    v3 = sub_22FAC2350((v14 > 1), v15 + 1, 1, v3);
  }

  *(v0 + 40) = v7;
  *(v0 + 48) = v8;
  *(v0 + 16) = v13;
  v3[2] = v15 + 1;
  sub_22FA2D89C((v0 + 16), &v3[5 * v15 + 4]);
  v16 = *(v0 + 8);

  return v16(v3);
}

uint64_t sub_22FAA574C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HighlightEnrichmentActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FAA5788(uint64_t a1, uint64_t a2)
{
  result = sub_22FAA57E0(qword_28147C4B8, a2, type metadata accessor for HighlightEnrichmentActivityTaskSource, &unk_22FCD4250);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FAA57E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FAA5828(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22FA87220(0, v4, 0);
    v5 = v17;
    v8 = *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v16, v9, &v15);
      if (v3)
      {
        break;
      }

      v11 = v16;
      v17 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22FA87220((v12 > 1), v13 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v13 + 1;
      *(v5 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_22FAA598C(uint64_t a1)
{
  result = MEMORY[0x231908300](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22FB04E04(v13, v11, v12);
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

      return v14;
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

uint64_t sub_22FAA5AA8(uint64_t a1)
{
  result = MEMORY[0x231908300](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22FB04E04(v13, v11, v12);
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

      return v14;
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

uint64_t sub_22FAA5C54()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_27DAD7F00 = result;
  return result;
}

uint64_t sub_22FAA5CCC()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD7F08);
  __swift_project_value_buffer(v0, qword_27DAD7F08);
  if (qword_27DAD6E78 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD7F00;
  return sub_22FCC8694();
}

uint64_t sub_22FAA5D5C@<X0>(void *a1@<X3>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v7 = sub_22FCC8264();
  v8 = sub_22FCC8274();
  PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo.toDictionary(personalTraitsSceneNames:personalTraitsMeaningNames:sceneTaxonomy:)(v7, v8, a1);
  v10 = v9;

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v10;
  }

  return result;
}

void PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo.toDictionary(personalTraitsSceneNames:personalTraitsMeaningNames:sceneTaxonomy:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2680;
  *(inited + 32) = sub_22FCC8A84();
  *(inited + 40) = v8;
  v9 = sub_22FCC7034();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 80) = sub_22FCC8A84();
  *(inited + 88) = v11;
  v12 = sub_22FCC7014();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
  *(inited + 120) = v13;
  *(inited + 96) = v12;
  *(inited + 128) = sub_22FCC8A84();
  *(inited + 136) = v14;
  v15 = *(v3 + *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) + 20));
  v16 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v15;
  *(inited + 176) = sub_22FCC8A84();
  *(inited + 184) = v17;
  v18 = sub_22FAA73E0(a1, a2, a3);
  *(inited + 216) = v16;
  *(inited + 192) = v18 & 1;
  *(inited + 224) = sub_22FCC8A84();
  *(inited + 232) = v19;
  sub_22FA3A77C(0, &qword_27DAD7F20, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_22FCC7024();
  sub_22FAA99B0(v21);

  v22 = sub_22FCC8E64();

  v23 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_22FCC8E84();

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = sub_22FA86B08(*(v24 + 16), 0);
    v27 = sub_22FA88270(v33, v26 + 4, v25, v24);
    sub_22FA37D64(v33[0]);
    if (v27 == v25)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_6:
  *(inited + 264) = v13;
  *(inited + 240) = v26;
  v28 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  swift_arrayDestroy();
  v29 = v33[41];
  v30 = sub_22FAA7658();
  if (v29)
  {
  }

  else
  {
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v28;
    sub_22FAAE408(v31, sub_22FAA7B70, 0, isUniquelyReferenced_nonNull_native, v33);
  }
}

uint64_t sub_22FAA6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_22FCC8494();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAA61E8, 0, 0);
}

uint64_t sub_22FAA61E8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  *(swift_allocObject() + 16) = v5;

  sub_22FCC84B4();
  sub_22FCC8554();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80, &unk_22FCD8180);
  v0[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  MEMORY[0x231907860]();
  (*(v4 + 32))(v1, v2, v3);
  v6 = sub_22FCC80F4();
  v7 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  *v7 = v6;

  v8 = v0[1];

  return v8();
}

void sub_22FAA63A0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x231908810](0, a1);
    goto LABEL_4;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(a1 + 32);
LABEL_4:
    v2 = v1;
    sub_22FCC8FF4();

    return;
  }

  __break(1u);
}

uint64_t sub_22FAA640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_22FAA6434, 0, 0);
}

uint64_t sub_22FAA6434()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FAA64B0, v1, 0);
}

uint64_t sub_22FAA64B0()
{
  v1 = [*(v0[4] + 112) workingContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F90, &qword_22FCD4528);
  sub_22FCC9114();
  v2 = v0[3];

  v3 = v0[2];

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo.init(trait:isGatedForStorytelling:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_22FCC7074();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_22FAA662C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F58, &qword_22FCD44F0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v22 - v9;
  result = sub_22FCC8294();
  if (!v1)
  {
    sub_22FA4FAA4(v10, v6, &qword_27DAD7F58, &qword_22FCD44F0);
    v12 = *(v3 + 48);
    v13 = sub_22FCC82A4();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a1, v6, v13);
    (*(v14 + 8))(&v6[v12], v13);
    sub_22FCC8234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F60, &qword_22FCD44F8);
    v15 = sub_22FCC7984();
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22FCD17F0;
    v20 = v19 + v18;
    v21 = *(v16 + 104);
    v21(v20, *MEMORY[0x277D3C3C8], v15);
    v21(v20 + v17, *MEMORY[0x277D3C3D0], v15);
    sub_22FAA9DDC(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22FCC8284();
    return sub_22FAAEA18(v10);
  }

  return result;
}

uint64_t sub_22FAA68C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F58, &qword_22FCD44F0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24[-v9];
  result = sub_22FCC8294();
  if (!v1)
  {
    sub_22FA4FAA4(v10, v6, &qword_27DAD7F58, &qword_22FCD44F0);
    v12 = *(v3 + 48);
    v13 = sub_22FCC82A4();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a1, &v6[v12], v13);
    (*(v14 + 8))(v6, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F60, &qword_22FCD44F8);
    v15 = sub_22FCC7984();
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22FCD17F0;
    v20 = v19 + v18;
    v21 = *(v16 + 104);
    v21(v20, *MEMORY[0x277D3C3C8], v15);
    v21(v20 + v17, *MEMORY[0x277D3C3D0], v15);
    sub_22FAA9DDC(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22FCC8284();
    v22 = sub_22FCC8244();
    sub_22FCC7D64();
    v22(v24, 0);
    v23 = sub_22FCC8244();
    sub_22FCC7D74();
    v23(v24, 0);
    return sub_22FAAEA18(v10);
  }

  return result;
}

uint64_t sub_22FAA6BB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27[1] = a4;
  v27[2] = a5;
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v27[0] = a6;
  v6 = sub_22FCC7E14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC82A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22FCC6974();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v28, v11, v19);
  (*(v7 + 16))(v10, v29, v6);
  v22 = v30;
  v23 = v31;
  result = sub_22FCC6944();
  if (!v23)
  {
    v25 = v27[0];
    v26 = sub_22FCC6954();
    result = (*(v17 + 8))(v21, v16);
    *v25 = v26;
  }

  return result;
}

uint64_t sub_22FAA6E24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v46 = a1;
  v40 = a4;
  v41 = a5;
  v44 = a2;
  v45 = a3;
  v43 = a6;
  v6 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC7E14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FCC82A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FCC6974();
  v42 = *(v20 - 1);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v44, v15, v22);
  (*(v11 + 16))(v14, v45, v10);
  v25 = v46;
  v26 = v47;
  result = sub_22FCC6944();
  if (!v26)
  {
    v28 = v43;
    v46 = v20;
    v29 = sub_22FCC6934();
    v45 = 0;
    v30 = *(v29 + 16);
    if (v30)
    {
      v41 = v24;
      v50 = MEMORY[0x277D84F90];
      v31 = v29;
      sub_22FA871DC(0, v30, 0);
      v32 = v50;
      v47 = sub_22FCC7074();
      v33 = *(v47 - 8);
      v34 = *(v33 + 16);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v44 = v31;
      v36 = v31 + v35;
      v37 = *(v33 + 72);
      do
      {
        v34(v9, v36, v47);
        v9[*(v49 + 20)] = 0;
        v50 = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22FA871DC((v38 > 1), v39 + 1, 1);
          v32 = v50;
        }

        *(v32 + 16) = v39 + 1;
        sub_22FA89EF8(v9, v32 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39);
        v36 += v37;
        --v30;
      }

      while (v30);
      (*(v42 + 8))(v41, v46);

      *v43 = v32;
    }

    else
    {

      result = (*(v42 + 8))(v24, v46);
      *v28 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22FAA7254(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_22FCC7014() + 16);

  v5 = *(sub_22FCC7014() + 16);

  if (v4 != v5)
  {
    return v5 < v4;
  }

  v6 = *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) + 20);
  result = *(a1 + v6);
  if (result == *(a2 + v6))
  {
    v8 = sub_22FCC7034();
    v10 = v9;
    if (v8 == sub_22FCC7034() && v10 == v11)
    {

      return 0;
    }

    else
    {
      v12 = sub_22FCC9704();

      return v12 & 1;
    }
  }

  return result;
}

uint64_t PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo.trait.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FCC7074();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FAA73E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22FCC7054();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FCC7064();
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 != *MEMORY[0x277D3C020])
  {
    if (v11 == *MEMORY[0x277D3C030])
    {
      (*(v7 + 96))(v10, v6);
      v18 = sub_22FAB5B3C(*v10, v10[1], a2);
      goto LABEL_6;
    }

    if (v11 == *MEMORY[0x277D3C028])
    {
      (*(v7 + 8))(v10, v6);
    }

    else if (v11 != *MEMORY[0x277D3C038] && v11 != *MEMORY[0x277D3C040])
    {
      result = sub_22FCC94D4();
      __break(1u);
      return result;
    }

LABEL_14:
    v18 = 0;
    return v18 & 1;
  }

  (*(v7 + 96))(v10, v6);
  v12 = [a3 nodeForExtendedSceneClassId_];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 name];

  v15 = sub_22FCC8A84();
  v17 = v16;

  v18 = sub_22FAB5B3C(v15, v17, a1);
LABEL_6:

  return v18 & 1;
}

uint64_t sub_22FAA7658()
{
  v0 = sub_22FCC7054();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v30[-v7];
  sub_22FCC7064();
  v9 = (*(v1 + 88))(v8, v0);
  if (v9 == *MEMORY[0x277D3C020])
  {
    (*(v1 + 96))(v8, v0);
    v10 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD17F0;
    *(inited + 32) = sub_22FCC8A84();
    *(inited + 40) = v12;
    v13 = sub_22FCC8A84();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v13;
    *(inited + 56) = v14;
    *(inited + 80) = sub_22FCC8A84();
    *(inited + 88) = v15;
    *(inited + 120) = MEMORY[0x277D84D38];
    *(inited + 96) = v10;
LABEL_6:
    v23 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
    swift_arrayDestroy();
    return v23;
  }

  if (v9 == *MEMORY[0x277D3C030] || v9 == *MEMORY[0x277D3C028])
  {
    (*(v1 + 96))(v8, v0);
    v17 = *v8;
    v16 = v8[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD17F0;
    *(inited + 32) = sub_22FCC8A84();
    *(inited + 40) = v18;
    v19 = sub_22FCC8A84();
    v20 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v19;
    *(inited + 56) = v21;
    *(inited + 80) = sub_22FCC8A84();
    *(inited + 88) = v22;
    *(inited + 120) = v20;
    *(inited + 96) = v17;
    *(inited + 104) = v16;
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D3C038] || v9 == *MEMORY[0x277D3C040])
  {
    v26 = v9;
    (*(v1 + 96))(v8, v0);
    *v4 = *v8;
    (*(v1 + 104))(v4, v26, v0);
    v27 = sub_22FCC7044();
    v23 = v28;
    (*(v1 + 8))(v4, v0);
    sub_22FAAED80();
    swift_allocError();
    *v29 = v27;
    v29[1] = v23;
    swift_willThrow();
    return v23;
  }

  result = sub_22FCC94D4();
  __break(1u);
  return result;
}

void sub_22FAA7AC8(uint64_t *a1)
{
  v2 = *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22FB0F674(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22FAA7BBC(v5);
  *a1 = v3;
}

double sub_22FAA7B70@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22FA2F7D8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_22FAA7BBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22FCC96B4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
        v6 = sub_22FCC8C74();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22FAA8580(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22FAA7CE8(0, v2, 1, a1);
  }
}

void sub_22FAA7CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  MEMORY[0x28223BE20](v44, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v35 - v17;
  v37 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v42 = *a4;
    v36 = v19;
    v23 = v42 + v19 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v23;
    v39 = v22;
    v24 = v20;
    while (1)
    {
      sub_22FA89E94(v23, v18);
      sub_22FA89E94(v24, v13);
      v25 = *(sub_22FCC7014() + 16);

      v26 = *(sub_22FCC7014() + 16);

      if (v25 == v26)
      {
        v27 = *(v44 + 20);
        v28 = v18[v27];
        if (v28 == v13[v27])
        {
          v29 = sub_22FCC7034();
          v31 = v30;
          if (v29 == sub_22FCC7034() && v31 == v32)
          {

            sub_22FAAEF0C(v13);
            sub_22FAAEF0C(v18);
LABEL_5:
            a3 = v41 + 1;
            v20 = v40 + v36;
            v22 = v39 - 1;
            v23 = v38 + v36;
            if (v41 + 1 == v37)
            {
              return;
            }

            goto LABEL_6;
          }

          LOBYTE(v28) = sub_22FCC9704();
        }
      }

      else
      {
        LOBYTE(v28) = v26 < v25;
      }

      sub_22FAAEF0C(v13);
      sub_22FAAEF0C(v18);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v33 = v43;
      sub_22FA89EF8(v23, v43);
      swift_arrayInitWithTakeFrontToBack();
      sub_22FA89EF8(v33, v24);
      v24 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22FAA7FA4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22FB0EF2C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22FAA9030((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22FCC9704();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22FCC9704();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FAC21FC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22FAC21FC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22FAA9030((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22FB0EF2C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22FB0EEA0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22FCC9704(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_22FAA8580(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v8 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  MEMORY[0x28223BE20](v8, v9);
  v144 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v153 = &v133 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v154 = &v133 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v133 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v133 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v133 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v138 = &v133 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v137 = &v133 - v34;
  v150 = a3;
  v35 = *(a3 + 8);
  v148 = v36;
  if (v35 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_111:
    a4 = *v140;
    if (!*v140)
    {
      goto LABEL_151;
    }

    a3 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v148;
    if (isUniquelyReferenced_nonNull_native)
    {
      v128 = a3;
    }

    else
    {
LABEL_145:
      v128 = sub_22FB0EF2C(a3);
    }

    v156 = v128;
    a3 = *(v128 + 2);
    if (a3 >= 2)
    {
      while (*v150)
      {
        v129 = *&v128[16 * a3];
        v130 = v128;
        v131 = *&v128[16 * a3 + 24];
        sub_22FAA9258(*v150 + *(v28 + 9) * v129, *v150 + *(v28 + 9) * *&v128[16 * a3 + 16], *v150 + *(v28 + 9) * v131, a4);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v131 < v129)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_22FB0EF2C(v130);
        }

        if (a3 - 2 >= *(v130 + 2))
        {
          goto LABEL_139;
        }

        v132 = &v130[16 * a3];
        *v132 = v129;
        *(v132 + 1) = v131;
        v156 = v130;
        sub_22FB0EEA0(a3 - 1);
        v128 = v156;
        a3 = *(v156 + 2);
        if (a3 <= 1)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_149;
    }

LABEL_122:

    return;
  }

  v136 = a4;
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v155 = v8;
  v152 = v20;
  v141 = v24;
  while (1)
  {
    v142 = v38;
    if (v37 + 1 >= v35)
    {
      v46 = v37 + 1;
      goto LABEL_33;
    }

    v151 = v35;
    v39 = *v150;
    v40 = *(v148 + 9);
    v41 = *v150 + v40 * (v37 + 1);
    v42 = v137;
    sub_22FA89E94(v41, v137);
    v149 = v39;
    v43 = v39 + v40 * v37;
    a3 = v138;
    sub_22FA89E94(v43, v138);
    LODWORD(v147) = sub_22FAA7254(v42, a3);
    if (v5)
    {
      sub_22FAAEF0C(a3);
      sub_22FAAEF0C(v42);
      goto LABEL_122;
    }

    sub_22FAAEF0C(a3);
    sub_22FAAEF0C(v42);
    v139 = v37;
    v44 = v37 + 2;
    a4 = v149 + v40 * v44;
    v45 = v40;
    v149 = v40;
    while (1)
    {
      v46 = v151;
      if (v151 == v44)
      {
        break;
      }

      v47 = v5;
      sub_22FA89E94(a4, v28);
      sub_22FA89E94(v41, v24);
      v48 = v28;
      v49 = *(sub_22FCC7014() + 16);

      v50 = *(sub_22FCC7014() + 16);

      if (v49 == v50)
      {
        v51 = *(v155 + 20);
        a3 = v48[v51];
        v28 = v48;
        v5 = v47;
        if (a3 == v24[v51])
        {
          v52 = sub_22FCC7034();
          v54 = v53;
          if (v52 == sub_22FCC7034() && v54 == v55)
          {

            a3 = 0;
          }

          else
          {
            a3 = sub_22FCC9704();
          }

          v20 = v152;
          v24 = v141;
        }
      }

      else
      {
        a3 = v50 < v49;
        v28 = v48;
        v5 = v47;
      }

      sub_22FAAEF0C(v24);
      sub_22FAAEF0C(v28);
      ++v44;
      v45 = v149;
      a4 += v149;
      v41 += v149;
      if ((v147 ^ a3))
      {
        v46 = v44 - 1;
        break;
      }
    }

    v38 = v142;
    v37 = v139;
    if (v147)
    {
      if (v46 < v139)
      {
        goto LABEL_144;
      }

      if (v139 < v46)
      {
        v135 = v28;
        v56 = v46;
        a3 = v45 * (v46 - 1);
        v57 = v46 * v45;
        v58 = v139 * v45;
        do
        {
          if (v37 != --v56)
          {
            v59 = *v150;
            if (!*v150)
            {
              goto LABEL_148;
            }

            a4 = v59 + v58;
            sub_22FA89EF8(v59 + v58, v144);
            if (v58 < a3 || a4 >= v59 + v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22FA89EF8(v144, v59 + a3);
            v38 = v142;
            v20 = v152;
            v45 = v149;
          }

          ++v37;
          a3 -= v45;
          v57 -= v45;
          v58 += v45;
        }

        while (v37 < v56);
        v28 = v135;
        v37 = v139;
      }
    }

LABEL_33:
    v60 = v150[1];
    if (v46 >= v60)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v46, v37))
    {
      goto LABEL_141;
    }

    if (v46 - v37 >= v136)
    {
LABEL_42:
      v62 = v46;
      if (v46 < v37)
      {
        goto LABEL_140;
      }

      goto LABEL_43;
    }

    if (__OFADD__(v37, v136))
    {
      goto LABEL_142;
    }

    if (v37 + v136 >= v60)
    {
      v61 = v150[1];
    }

    else
    {
      v61 = v37 + v136;
    }

    if (v61 < v37)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v46 == v61)
    {
      goto LABEL_42;
    }

    v135 = v28;
    v134 = v5;
    v108 = *v150;
    v109 = *(v148 + 9);
    v110 = *v150 + v109 * (v46 - 1);
    v111 = v37;
    v112 = -v109;
    v139 = v111;
    v113 = v111 - v46;
    v143 = v109;
    v114 = v108 + v46 * v109;
    v145 = v61;
LABEL_95:
    v151 = v46;
    v146 = v114;
    v147 = v113;
    v115 = v114;
    v149 = v110;
LABEL_96:
    sub_22FA89E94(v115, v20);
    v116 = v20;
    v117 = v154;
    sub_22FA89E94(v110, v154);
    a4 = *(sub_22FCC7014() + 16);

    v118 = *(sub_22FCC7014() + 16);

    if (a4 != v118)
    {
      break;
    }

    v119 = *(v155 + 20);
    a3 = *(v116 + v119);
    if (a3 != *(v117 + v119))
    {
      goto LABEL_102;
    }

    v120 = v117;
    v121 = sub_22FCC7034();
    v123 = v122;
    a3 = v120;
    v124 = sub_22FCC7034();
    a4 = v125;
    if (v121 != v124 || v123 != v125)
    {
      a3 = sub_22FCC9704();

      v117 = v154;
      v116 = v152;
      goto LABEL_102;
    }

    sub_22FAAEF0C(v154);
    v20 = v152;
    sub_22FAAEF0C(v152);
LABEL_94:
    v46 = v151 + 1;
    v110 = v149 + v143;
    v113 = v147 - 1;
    v114 = v146 + v143;
    v62 = v145;
    if (v151 + 1 != v145)
    {
      goto LABEL_95;
    }

    v5 = v134;
    v28 = v135;
    v38 = v142;
    v37 = v139;
    if (v145 < v139)
    {
      goto LABEL_140;
    }

LABEL_43:
    v63 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = v63;
    }

    else
    {
      v38 = sub_22FAC21FC(0, *(v63 + 2) + 1, 1, v63);
    }

    a4 = *(v38 + 2);
    v64 = *(v38 + 3);
    a3 = a4 + 1;
    if (a4 >= v64 >> 1)
    {
      v38 = sub_22FAC21FC((v64 > 1), a4 + 1, 1, v38);
    }

    *(v38 + 2) = a3;
    v65 = &v38[16 * a4];
    *(v65 + 4) = v37;
    *(v65 + 5) = v62;
    v66 = *v140;
    if (!*v140)
    {
      goto LABEL_150;
    }

    v145 = v62;
    if (a4)
    {
      while (2)
      {
        v67 = a3 - 1;
        if (a3 >= 4)
        {
          v72 = &v38[16 * a3 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_127;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_128;
          }

          v79 = &v38[16 * a3];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_130;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_133;
          }

          if (v83 >= v75)
          {
            v101 = &v38[16 * v67 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_137;
            }

            if (v70 < v104)
            {
              v67 = a3 - 2;
            }
          }

          else
          {
LABEL_62:
            if (v71)
            {
              goto LABEL_129;
            }

            v84 = &v38[16 * a3];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_132;
            }

            v90 = &v38[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_136;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_76;
            }

            if (v70 < v93)
            {
              v67 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v68 = *(v38 + 4);
            v69 = *(v38 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_62;
          }

          v94 = &v38[16 * a3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_76:
          if (v89)
          {
            goto LABEL_131;
          }

          v97 = &v38[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_134;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        a4 = v67 - 1;
        if (v67 - 1 >= a3)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v150)
        {
          goto LABEL_147;
        }

        v105 = v38;
        a3 = *&v38[16 * a4 + 32];
        v106 = *&v38[16 * v67 + 40];
        sub_22FAA9258(*v150 + *(v148 + 9) * a3, *v150 + *(v148 + 9) * *&v38[16 * v67 + 32], *v150 + *(v148 + 9) * v106, v66);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v106 < a3)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_22FB0EF2C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_126;
        }

        v107 = &v105[16 * a4];
        *(v107 + 4) = a3;
        *(v107 + 5) = v106;
        v156 = v105;
        sub_22FB0EEA0(v67);
        v38 = v156;
        a3 = *(v156 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v35 = v150[1];
    v37 = v145;
    v24 = v141;
    if (v145 >= v35)
    {
      goto LABEL_111;
    }
  }

  a3 = v118 < a4;
LABEL_102:
  sub_22FAAEF0C(v117);
  sub_22FAAEF0C(v116);
  v20 = v116;
  if ((a3 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v108)
  {
    a4 = v153;
    sub_22FA89EF8(v115, v153);
    swift_arrayInitWithTakeFrontToBack();
    sub_22FA89EF8(a4, v110);
    v110 += v112;
    v115 += v112;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_22FAA9030(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22FCC9704() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22FCC9704() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_22FAA9258(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v61 = &v59 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v59 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_76;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_77;
  }

  v25 = (a2 - a1) / v23;
  v72 = a1;
  v71 = a4;
  v68 = v8;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a2;
    v42 = a4 + v27;
    if (v27 >= 1)
    {
      v43 = -v23;
      v44 = a4 + v27;
      v46 = v61;
      v45 = v62;
      v63 = a4;
      v67 = -v23;
      do
      {
        v60 = v42;
        v47 = v65;
        v64 = v65;
        v65 += v43;
        while (1)
        {
          if (v47 <= a1)
          {
            v72 = v47;
            v70 = v60;
            goto LABEL_74;
          }

          v48 = a3;
          v66 = v42;
          v69 = v44 + v43;
          sub_22FA89E94(v44 + v43, v46);
          sub_22FA89E94(v65, v45);
          v49 = v46;
          v50 = v45;
          v51 = *(sub_22FCC7014() + 16);

          v52 = *(sub_22FCC7014() + 16);

          if (v51 == v52)
          {
            v53 = v8;
            v54 = *(v8 + 20);
            LODWORD(v8) = *(v49 + v54);
            LODWORD(v54) = *(v50 + v54);
            v45 = v50;
            v46 = v49;
            v42 = v66;
            if (v8 == v54)
            {
              v55 = sub_22FCC7034();
              v57 = v56;
              if (v55 == sub_22FCC7034() && v57 == v58)
              {

                LOBYTE(v8) = 0;
              }

              else
              {
                LOBYTE(v8) = sub_22FCC9704();
              }

              v53 = v68;
              v46 = v61;
              v45 = v62;
            }
          }

          else
          {
            v53 = v8;
            LOBYTE(v8) = v52 < v51;
            v45 = v50;
            v46 = v49;
            v42 = v66;
          }

          a3 = v48 + v67;
          sub_22FAAEF0C(v45);
          sub_22FAAEF0C(v46);
          if (v8)
          {
            break;
          }

          v42 = v69;
          if (v48 < v44 || a3 >= v44)
          {
            v8 = v53;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v8 = v53;
            if (v48 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v44 = v42;
          v47 = v64;
          v43 = v67;
          if (v69 <= v63)
          {
            v65 = v64;
            goto LABEL_73;
          }
        }

        if (v48 < v64 || a3 >= v64)
        {
          v8 = v53;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v53;
          if (v48 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v43 = v67;
      }

      while (v44 > v63);
    }

LABEL_73:
    v72 = v65;
    v70 = v42;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = a4 + v26;
    v70 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v66 = a3;
      do
      {
        v29 = v23;
        sub_22FA89E94(a2, v21);
        sub_22FA89E94(a4, v17);
        v30 = *(sub_22FCC7014() + 16);

        v31 = *(sub_22FCC7014() + 16);

        if (v30 == v31)
        {
          v32 = *(v8 + 20);
          v33 = v21[v32];
          if (v33 == v17[v32])
          {
            v34 = a2;
            v35 = sub_22FCC7034();
            v37 = v36;
            if (v35 == sub_22FCC7034() && v37 == v38)
            {

              sub_22FAAEF0C(v17);
              sub_22FAAEF0C(v21);
              a2 = v34;
              goto LABEL_33;
            }

            LOBYTE(v33) = sub_22FCC9704();

            a2 = v34;
          }
        }

        else
        {
          LOBYTE(v33) = v31 < v30;
        }

        sub_22FAAEF0C(v17);
        sub_22FAAEF0C(v21);
        if (v33)
        {
          v23 = v29;
          v39 = a2 + v29;
          if (a1 < a2 || a1 >= v39)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a2 += v29;
            v40 = v66;
          }

          else
          {
            v8 = v68;
            v40 = v66;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v39;
          }

          goto LABEL_40;
        }

LABEL_33:
        v23 = v29;
        v41 = a4 + v29;
        if (a1 < a4 || a1 >= v41)
        {
          v8 = v68;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v66;
        }

        else
        {
          v8 = v68;
          v40 = v66;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v71 = v41;
        a4 = v41;
LABEL_40:
        a1 += v23;
        v72 = a1;
      }

      while (a4 < v69 && a2 < v40);
    }
  }

LABEL_74:
  sub_22FAA98CC(&v72, &v71, &v70);
}

uint64_t sub_22FAA98CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
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

uint64_t sub_22FAA99B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231908300](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22FB04E04(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22FAA9A78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231908300](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22FB050C4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t *sub_22FAA9B1C(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {
    v12 = sub_22FA3A77C(0, a2, a3);
    v13 = sub_22FA89E44(a4, a2, a3);
    result = MEMORY[0x231908300](i, v12, v13);
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
        v16 = MEMORY[0x231908810](a2, a1);
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
  v15 = sub_22FCC92C4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22FAA9C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98, &qword_22FCD6190);
    v3 = sub_22FCC9364();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22FCC9844();

      sub_22FCC8B14();
      result = sub_22FCC9894();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22FCC9704();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22FAA9DDC(uint64_t a1)
{
  v2 = sub_22FCC7984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F68, &qword_22FCD4500);
    v11 = sub_22FCC9364();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22FAAEA80(&qword_27DAD7F70, MEMORY[0x277D3C3D8]);
      v18 = sub_22FCC8A04();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22FAAEA80(&qword_27DAD7F78, MEMORY[0x277D3C3E0]);
          v25 = sub_22FCC8A44();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22FAAA0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_22FCC7974();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_22FCC82A4();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAAA25C, 0, 0);
}

uint64_t sub_22FAAA25C()
{
  if (qword_27DAD6E78 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD7F00;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  v0[17] = sub_22FCC76C4();
  if (qword_27DAD6E80 != -1)
  {
    swift_once();
  }

  v3 = sub_22FCC8684();
  __swift_project_value_buffer(v3, qword_27DAD7F08);

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[3];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_22FA28000, v4, v5, "Generating ungatedMeaningPersonalTraits for %ld assetUUIDs.", v8, 0xCu);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FAA68C0(v0[16]);
  v0[18] = 0;
  v9 = v0[16];
  v11 = v0[5];
  v10 = v0[6];
  v13 = v0[3];
  v12 = v0[4];
  v14 = swift_task_alloc();
  v0[19] = v14;
  v14[2] = v9;
  v14[3] = v11;
  v14[4] = v13;
  v14[5] = v10;

  return MEMORY[0x2822009F8](sub_22FAAA4D4, v12, 0);
}

uint64_t sub_22FAAA4D4()
{
  v1 = v0[18];
  v2 = [*(v0[4] + 112) workingContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F90, &qword_22FCD4528);
  sub_22FCC9114();
  v0[20] = v1;

  if (v1)
  {

    v3 = sub_22FAAA980;
  }

  else
  {
    v0[21] = v0[2];

    v3 = sub_22FAAA5D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FAAA5D4()
{
  v1 = v0[20];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_22FCC7994();
  swift_allocObject();
  sub_22FCC7954();
  sub_22FCC7944();
  if (v1)
  {
    v2 = v0[16];
    v4 = v0[13];
    v3 = v0[14];

    (*(v3 + 8))(v2, v4);
    sub_22FCC76B4();

    v6 = v0[1];

    return v6();
  }

  else
  {

    v5 = sub_22FCC7964();
    sub_22FCC9004();
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = v0[8];
      v24 = v0[7];
      v25 = MEMORY[0x277D84F90];
      sub_22FA871DC(0, v8, 0);
      v10 = v25;
      v23 = sub_22FCC7074();
      v11 = *(v23 - 8);
      v22 = *(v11 + 16);
      v12 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v13 = *(v11 + 72);
      do
      {
        v14 = v0[9];
        v22(v14, v12, v23);
        *(v14 + *(v24 + 20)) = 0;
        v16 = *(v25 + 16);
        v15 = *(v25 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_22FA871DC((v15 > 1), v16 + 1, 1);
        }

        v17 = v0[9];
        *(v25 + 16) = v16 + 1;
        sub_22FA89EF8(v17, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16);
        v12 += v13;
        --v8;
      }

      while (v8);
      (*(v0[11] + 8))(v0[12], v0[10]);
    }

    else
    {
      v18 = v0[11];
      v19 = v0[12];
      v20 = v0[10];

      (*(v18 + 8))(v19, v20);
      v10 = MEMORY[0x277D84F90];
    }

    (*(v0[14] + 8))(v0[16], v0[13]);
    sub_22FCC76B4();

    v21 = v0[1];

    return v21(v10);
  }
}

uint64_t sub_22FAAA980()
{
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FAAAA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[117] = a4;
  v4[111] = a3;
  v4[105] = a2;
  v4[99] = a1;
  v5 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v4[118] = v5;
  v4[119] = *(v5 - 8);
  v4[120] = swift_task_alloc();
  v6 = sub_22FCC7974();
  v4[121] = v6;
  v4[122] = *(v6 - 8);
  v4[123] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[124] = swift_task_alloc();
  v7 = sub_22FCC7E14();
  v4[125] = v7;
  v8 = *(v7 - 8);
  v4[126] = v8;
  v4[127] = *(v8 + 64);
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v9 = sub_22FCC82A4();
  v4[130] = v9;
  v10 = *(v9 - 8);
  v4[131] = v10;
  v4[132] = *(v10 + 64);
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAAACA0, 0, 0);
}

uint64_t sub_22FAAACA0()
{
  if (qword_27DAD6E78 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD7F00;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  *(v0 + 1112) = sub_22FCC76C4();
  if (qword_27DAD6E80 != -1)
  {
    swift_once();
  }

  v3 = sub_22FCC8684();
  __swift_project_value_buffer(v3, qword_27DAD7F08);

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 792);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_22FA28000, v4, v5, "Generating storytellingGatedPersonalTraits for %ld assetUUIDs.", v8, 0xCu);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v9 = [*(v0 + 936) progressReportersForParallelOperationsWithCount_];
  sub_22FA3A77C(0, &qword_27DAD7F88, 0x277D22C80);
  v10 = sub_22FCC8C44();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x231908810](1, v10);
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = *(v10 + 40);
  }

  v17 = v16;
  *(v0 + 1120) = v16;
  sub_22FCC8294();
  v48 = v17;
  v18 = *(v0 + 1104);
  v19 = *(v0 + 1096);
  v40 = *(v0 + 1080);
  v44 = *(v0 + 1064);
  v47 = *(v0 + 1056);
  v20 = *(v0 + 1048);
  v21 = *(v0 + 1040);
  v37 = *(v0 + 1072);
  v38 = *(v0 + 1032);
  v51 = *(v0 + 1024);
  v45 = *(v0 + 1016);
  v22 = *(v0 + 1008);
  v41 = v22;
  v23 = *(v0 + 1000);
  v42 = *(v0 + 992);
  v36 = *(v0 + 888);
  v49 = *(v0 + 840);
  v50 = *(v0 + 792);
  v46 = *(v20 + 32);
  v46(v18, *(v0 + 1088), v21);
  v46(v19, v40, v21);
  v24 = *(v20 + 16);
  v20 += 16;
  *(v0 + 1128) = v24;
  *(v0 + 1136) = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v37, v18, v21);
  v39 = *(v22 + 16);
  v39(v38, v36, v23);
  sub_22FCC8114();
  swift_allocObject();
  v25 = sub_22FCC8104();
  *(v0 + 1144) = v25;
  v26 = sub_22FCC8D14();
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v10;
  v27[5] = v25;
  v27[6] = v50;

  v43 = sub_22FB23558(0, 0, v42, &unk_22FCD4510, v27);
  *(v0 + 1152) = v43;
  v24(v44, v19, v21);
  v39(v51, v36, v23);
  v28 = (*(v20 + 64) + 24) & ~*(v20 + 64);
  v29 = (v47 + *(v41 + 80) + v28) & ~*(v41 + 80);
  v30 = (v45 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v0 + 1160) = v31;
  *(v31 + 16) = v49;
  v46(v31 + v28, v44, v21);
  (*(v41 + 32))(v31 + v29, v51, v23);
  *(v31 + v30) = v50;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;

  v32 = v48;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F90, &qword_22FCD4528);
  *(v0 + 1168) = v33;
  swift_asyncLet_begin();
  v34 = swift_task_alloc();
  *(v0 + 1176) = v34;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  *(v0 + 1184) = v14;
  *v34 = v0;
  v34[1] = sub_22FAAB3A8;
  v15 = MEMORY[0x277D84950];
  v11 = v0 + 744;
  v12 = v43;
  v13 = v33;

  return MEMORY[0x282200430](v11, v12, v13, v14, v15);
}

uint64_t sub_22FAAB3A8()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FAABA28, 0, 0);
  }

  else
  {
    *(v2 + 1200) = *(v2 + 744);

    return MEMORY[0x282200930](v2 + 16, v2 + 696, sub_22FAAB4F0, v2 + 704);
  }
}

uint64_t sub_22FAAB4F0()
{
  *(v1 + 1208) = v0;
  if (v0)
  {
    v2 = sub_22FAABC14;
  }

  else
  {
    v2 = sub_22FAAB524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FAAB524()
{
  v1 = v0[141];
  v2 = v0[138];
  v3 = v0[134];
  v4 = v0[130];
  v27 = v0[151];

  sub_22FA689D8(v5);
  v1(v3, v2, v4);
  sub_22FCC7994();
  swift_allocObject();
  sub_22FCC7954();
  sub_22FCC7944();
  v0[152] = v27;
  if (v27)
  {

    v6 = sub_22FAABE4C;
    v7 = v0 + 2;
    v8 = v0 + 87;
    v9 = v0 + 100;
  }

  else
  {

    v10 = sub_22FCC7964();
    sub_22FCC9004();
    v0[153] = 0;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v0[119];
      v28 = v0[118];
      v29 = MEMORY[0x277D84F90];
      sub_22FA871DC(0, v11, 0);
      v13 = v29;
      v26 = sub_22FCC7074();
      v14 = *(v26 - 8);
      v25 = *(v14 + 16);
      v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v16 = *(v14 + 72);
      do
      {
        v17 = v0[120];
        v25(v17, v15, v26);
        *(v17 + *(v28 + 20)) = 1;
        v19 = *(v29 + 16);
        v18 = *(v29 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22FA871DC((v18 > 1), v19 + 1, 1);
        }

        v20 = v0[120];
        *(v29 + 16) = v19 + 1;
        sub_22FA89EF8(v20, v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19);
        v15 += v16;
        --v11;
      }

      while (v11);
      (*(v0[122] + 8))(v0[123], v0[121]);
    }

    else
    {
      v21 = v0[123];
      v22 = v0[122];
      v23 = v0[121];

      (*(v22 + 8))(v21, v23);
      v13 = MEMORY[0x277D84F90];
    }

    v0[154] = v13;
    v6 = sub_22FAAB868;
    v7 = v0 + 2;
    v8 = v0 + 87;
    v9 = v0 + 112;
  }

  return MEMORY[0x282200920](v7, v8, v6, v9);
}

uint64_t sub_22FAAB884()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[131];
  v5 = v0[130];
  sub_22FCC8D54();

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  sub_22FCC76B4();

  v7 = v0[1];
  v8 = v0[154];

  return v7(v8);
}

uint64_t sub_22FAABA64()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[131];
  v5 = v0[130];
  sub_22FCC8D54();

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  sub_22FCC76B4();

  sub_22FA3A55C(&unk_22FCD4520, v0[145]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FAABC14()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_22FAABC80, v0 + 752);
}

uint64_t sub_22FAABC9C()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[131];
  v5 = v0[130];
  sub_22FCC8D54();

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  sub_22FCC76B4();

  sub_22FA3A55C(&unk_22FCD4520, v0[145]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FAABE68()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[131];
  v5 = v0[130];
  sub_22FCC8D54();

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  sub_22FCC76B4();

  sub_22FA3A55C(&unk_22FCD4520, v0[145]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FAAC034()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[131];
  v5 = v0[130];
  sub_22FCC8D54();

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  sub_22FCC76B4();

  sub_22FA3A55C(&unk_22FCD4520, v0[145]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FAAC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22FCC7974();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22FCC7E14();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_22FCC8494();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = sub_22FCC82A4();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAAC430, 0, 0);
}

uint64_t sub_22FAAC430()
{
  if (qword_27DAD6E78 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD7F00;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  sub_22FCC76C4();
  if (qword_27DAD6E80 != -1)
  {
    swift_once();
  }

  v3 = sub_22FCC8684();
  __swift_project_value_buffer(v3, qword_27DAD7F08);

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_22FA28000, v4, v5, "Generating allScenePersonalTraits for %ld assetUUIDs.", v8, 0xCu);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FAA662C(v0[26]);
  v9 = v0[25];
  v10 = v0[24];
  v11 = v0[22];
  v50 = v0[26];
  v51 = v0[20];
  v12 = v0[18];
  v55 = v0[19];
  v13 = v0[17];
  v48 = v0[23];
  v49 = v0[16];
  v14 = v0[8];
  v15 = v0[9];
  v52 = v0[21];
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  v17 = v11;
  sub_22FCC84B4();
  v18 = *(v10 + 16);
  v18(v9, v50, v48);
  (*(v13 + 16))(v12, v14, v49);
  sub_22FCC8114();
  swift_allocObject();
  sub_22FCC8104();
  sub_22FCC8554();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80, &unk_22FCD8180);
  v0[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  MEMORY[0x231907860]();
  (*(v51 + 32))(v52, v17, v55);
  sub_22FCC80F4();
  v19 = v0[26];
  v20 = v0[23];
  v21 = v18;
  v22 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v21(v22, v19, v20);
  sub_22FCC7994();
  swift_allocObject();
  sub_22FCC7954();
  sub_22FCC7944();

  v23 = sub_22FCC7964();
  sub_22FCC9004();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v0[11];
    v56 = v0[10];
    v57 = MEMORY[0x277D84F90];
    sub_22FA871DC(0, v24, 0);
    v26 = v57;
    v54 = sub_22FCC7074();
    v27 = *(v54 - 8);
    v53 = *(v27 + 16);
    v28 = v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v27 + 72);
    do
    {
      v30 = v0[12];
      v53(v30, v28, v54);
      *(v30 + *(v56 + 20)) = 0;
      v32 = *(v57 + 16);
      v31 = *(v57 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22FA871DC((v31 > 1), v32 + 1, 1);
      }

      v33 = v0[12];
      *(v57 + 16) = v32 + 1;
      sub_22FA89EF8(v33, v57 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v32);
      v28 += v29;
      --v24;
    }

    while (v24);
    v34 = v0[26];
    v35 = v0[23];
    v36 = v0[24];
    v37 = v0[14];
    v38 = v0[15];
    v39 = v0[13];

    (*(v37 + 8))(v38, v39);
    (*(v36 + 8))(v34, v35);
  }

  else
  {
    v40 = v0[26];
    v41 = v0[23];
    v42 = v0[24];
    v44 = v0[14];
    v43 = v0[15];
    v45 = v0[13];

    (*(v44 + 8))(v43, v45);
    (*(v42 + 8))(v40, v41);
    v26 = MEMORY[0x277D84F90];
  }

  sub_22FCC76B4();

  v46 = v0[1];

  return v46(v26);
}

void sub_22FAACBB8(uint64_t a1, char a2, void *a3)
{
  v52 = a3;
  v47 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v45 = &v44 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7FA8, &unk_22FCD4530);
  MEMORY[0x28223BE20](v14, v15);
  v51 = (&v44 - v18);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v16 + 48);
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v48 = *(v17 + 72);
    v49 = v20;
    while (1)
    {
      v26 = v51;
      sub_22FA4FAA4(v21, v51, &qword_27DAD7FA8, &unk_22FCD4530);
      v28 = *v26;
      v27 = v26[1];
      v29 = v13;
      sub_22FA89EF8(v26 + v49, v13);
      v30 = *v52;
      v32 = sub_22FA2DB54(v28, v27);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      if (v30[3] >= v35)
      {
        if ((a2 & 1) == 0)
        {
          sub_22FA712F8();
        }
      }

      else
      {
        sub_22FA6DACC(v35, a2 & 1);
        v37 = sub_22FA2DB54(v28, v27);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_20;
        }

        v32 = v37;
      }

      v39 = *v52;
      if (v36)
      {
        v22 = *(v50 + 72) * v32;
        v23 = v46;
        sub_22FA89E94(v39[7] + v22, v46);
        v13 = v29;
        if (*(v23 + *(v47 + 20)))
        {
          v24 = v23;
        }

        else
        {
          v24 = v29;
        }

        v25 = v45;
        sub_22FA89E94(v24, v45);
        sub_22FAAEF0C(v23);
        sub_22FAAEF0C(v29);

        sub_22FAAEEA8(v25, v39[7] + v22);
      }

      else
      {
        v39[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v39[6] + 16 * v32);
        *v40 = v28;
        v40[1] = v27;
        v13 = v29;
        sub_22FA89EF8(v29, v39[7] + *(v50 + 72) * v32);
        v41 = v39[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_19;
        }

        v39[2] = v43;
      }

      v21 += v48;
      a2 = 1;
      if (!--v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_22FCC9774();
    __break(1u);
  }
}

char *_s13PhotoAnalysis40PersonalTraitsForPromptSuggestionsHelperO07combinecD010traitInfosSayAC0C9TraitInfoVGAH_tFZ_0(uint64_t a1)
{
  v63 = sub_22FCC7054();
  v2 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7FA8, &unk_22FCD4530);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v59 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) - 8;
  MEMORY[0x28223BE20](v12, v13);
  v16 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v55 = v15;
  if (!v17)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_16:
    if (v18[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7608, &qword_22FCD4540);
      v47 = sub_22FCC9524();
    }

    else
    {
      v47 = MEMORY[0x277D84F98];
    }

    v70 = v47;
    sub_22FAACBB8(v18, 1, &v70);

    v48 = v70;
    v49 = *(v70 + 2);
    if (v49)
    {
      v50 = sub_22FA86C98(*(v70 + 2), 0);
      sub_22FA88890(&v70, &v50[(*(v55 + 80) + 32) & ~*(v55 + 80)], v49, v48);
      v52 = v51;
      v53 = v70;

      sub_22FA37D64(v53);
      if (v52 == v49)
      {
LABEL_23:
        v70 = v50;
        sub_22FAA7AC8(&v70);

        return v70;
      }

      __break(1u);
    }

    v50 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v18 = MEMORY[0x277D84F90];
  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v20 = *(v15 + 72);
  v56 = (v2 + 8);
  v57 = v20;
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v68 = v19;
    v69 = v17;
    sub_22FA89E94(v19, v16);
    v21 = sub_22FCC7034();
    v23 = v22;
    v24 = sub_22FCC7014();
    v25 = sub_22FAA99B0(v24);

    v26 = *(v25 + 16);
    if (!v26)
    {
      v27 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    v64 = v21;
    v65 = v23;
    v66 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
    v27 = swift_allocObject();
    v28 = _swift_stdlib_malloc_size(v27);
    v29 = v28 - 32;
    if (v28 < 32)
    {
      v29 = v28 - 17;
    }

    v27[2] = v26;
    v27[3] = 2 * (v29 >> 4);
    v67 = sub_22FA88270(&v70, v27 + 4, v26, v25);
    v30 = v70;

    sub_22FA37D64(v30);
    if (v67 != v26)
    {
      break;
    }

    v23 = v65;
    v18 = v66;
    v21 = v64;
LABEL_9:
    v70 = v27;
    sub_22FA31B18(&v70);
    v16 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    sub_22FAAEDD4();
    v31 = sub_22FCC8A24();
    v33 = v32;

    v70 = v21;
    v71 = v23;

    MEMORY[0x231907FA0](v31, v33);

    v35 = v70;
    v34 = v71;
    v36 = v62;
    sub_22FCC7064();
    v37 = sub_22FCC7044();
    v39 = v38;
    (*v56)(v36, v63);
    v70 = v35;
    v71 = v34;

    MEMORY[0x231907FA0](v37, v39);

    v40 = v71;
    v41 = *(v61 + 48);
    v42 = v59;
    *v59 = v70;
    *(v42 + 8) = v40;
    sub_22FA89EF8(v16, v42 + v41);
    sub_22FAAEE38(v42, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_22FAC28BC(0, v18[2] + 1, 1, v18);
    }

    v44 = v68;
    v43 = v69;
    v46 = v18[2];
    v45 = v18[3];
    if (v46 >= v45 >> 1)
    {
      v18 = sub_22FAC28BC((v45 > 1), v46 + 1, 1, v18);
    }

    v18[2] = v46 + 1;
    sub_22FAAEE38(v11, v18 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46);
    v19 = v44 + v57;
    v17 = v43 - 1;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22FAAD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_22FCC82A4();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAAD5FC, 0, 0);
}

uint64_t sub_22FAAD5FC()
{
  v12 = v0;
  v1 = v0[3];
  v2 = sub_22FCC9034();
  v0[14] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[17] = v5;
  v11 = v1;

  sub_22FA31B18(&v11);
  v6 = v11;
  v0[18] = v11;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_22FAAD728;
  v8 = v0[4];
  v9 = v0[5];

  return sub_22FAAA0D4(v6, v8, v9, v2);
}

uint64_t sub_22FAAD728(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FAADA18, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_22FAAD8A0;
    v5 = v3[15];
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[18];

    return sub_22FAAAA30(v8, v6, v7, v5);
  }
}

uint64_t sub_22FAAD8A0(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FAADBF0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[25] = v4;
    *v4 = v3;
    v4[1] = sub_22FAADAD4;
    v5 = v3[16];
    v6 = v3[5];
    v7 = v3[18];

    return sub_22FAAC1E4(v7, v6, v5);
  }
}

uint64_t sub_22FAADA18()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FAADAD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_22FAADE04;
  }

  else
  {

    v4 = sub_22FAADCB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAADBF0()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FAADCB8()
{
  v1 = *(v0 + 216);
  sub_22FAA68C0(*(v0 + 104));
  *(v0 + 224) = v1;
  if (v1)
  {

    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 104);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    v12[2] = v8;
    v12[3] = v10;
    v12[4] = v11;
    v12[5] = v7;

    return MEMORY[0x2822009F8](sub_22FAADED8, v9, 0);
  }
}

uint64_t sub_22FAADE04()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FAADED8()
{
  v1 = v0[28];
  v2 = [*(v0[4] + 112) workingContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F50, &qword_22FCD44E8);
  sub_22FCC9114();
  v0[30] = v1;
  if (v1)
  {

    v3 = sub_22FAAE33C;
  }

  else
  {

    v0[31] = v0[2];

    v3 = sub_22FAAE000;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FAAE000()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = *(v0[8] + 8);
  v6(v0[13], v0[7]);
  sub_22FA68A04(v4);
  sub_22FA68A04(v3);
  sub_22FA68A04(v1);
  v7 = _s13PhotoAnalysis40PersonalTraitsForPromptSuggestionsHelperO07combinecD010traitInfosSayAC0C9TraitInfoVGAH_tFZ_0(v5);

  v8 = [objc_allocWithZone(MEMORY[0x277D3B4C8]) initWithLatestTaxonomy];
  sub_22FCC8294();
  if (v2)
  {
    v10 = v0[16];
    v9 = v0[17];
    v12 = v0[14];
    v11 = v0[15];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v32 = v6;
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[9];
    v30 = v7;
    v16 = v0[7];
    v17 = *(v0[8] + 32);
    v17(v13, v0[10], v16);
    v17(v14, v15, v16);
    v18 = swift_task_alloc();
    v18[2] = v13;
    v18[3] = v14;
    v18[4] = v8;
    v19 = sub_22FAA5828(sub_22FAAE9F4, v18, v30);
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[14];
    v31 = v0[15];
    v25 = v0[12];
    v28 = v0[11];
    v26 = v0[7];
    v29 = v19;

    v32(v28, v26);
    v32(v25, v26);

    v27 = v0[1];

    return v27(v29);
  }
}

uint64_t sub_22FAAE33C()
{
  (*(*(v0 + 64) + 8))(*(v0 + 104), *(v0 + 56));
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_22FAAE408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_22FB534D0(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_22FA4FE00(v44, v42);
  v14 = *a5;
  result = sub_22FA2DB54(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_22FA6C730(v20, a4 & 1);
    result = sub_22FA2DB54(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22FCC9774();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_22FA7086C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_22FA4FE00(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_22FA4FE00(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_22FB534D0(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_22FA4FE00(v44, v42);
        v32 = *a5;
        result = sub_22FA2DB54(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_22FA6C730(v36, 1);
          result = sub_22FA2DB54(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_22FA4FE00(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_22FA4FE00(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_22FB534D0(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_22FA37D64(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22FAAE71C()
{
  result = qword_27DAD7F28;
  if (!qword_27DAD7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7F28);
  }

  return result;
}

unint64_t sub_22FAAE774()
{
  result = qword_27DAD7F30;
  if (!qword_27DAD7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7F30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalTraitsDictionaryKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalTraitsDictionaryKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FAAE960(uint64_t a1)
{
  result = sub_22FCC7074();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FAAEA18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F58, &qword_22FCD44F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FAAEA80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22FCC7984();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FAAEAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C030;

  return sub_22FAA6118(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FAAEBB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC82A4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_22FCC7E14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + v10);
  v13 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22FA2C21C;

  return sub_22FAA640C(a1, v11, v1 + v6, v1 + v9, v12, v13);
}

unint64_t sub_22FAAED80()
{
  result = qword_27DAD7FA0;
  if (!qword_27DAD7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7FA0);
  }

  return result;
}

unint64_t sub_22FAAEDD4()
{
  result = qword_28147AF28;
  if (!qword_28147AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7448, &qword_22FCD2C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF28);
  }

  return result;
}

uint64_t sub_22FAAEE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7FA8, &unk_22FCD4530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FAAEEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FAAEF0C(uint64_t a1)
{
  v2 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FAAEF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FAAEFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FAAF020()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FCC8F94();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v26 = *(v6 - 8);
  v7 = v26;
  v27 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for SearchDonationActivityTaskSource();
  v17 = sub_22FAAF844(&qword_28147CFA0, v16, type metadata accessor for SearchDonationActivityTaskSource, &unk_22FCD45E0);
  sub_22FCC8904();
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v32[3] = v18;
  v32[4] = &off_2844A92C8;
  v32[0] = v19;
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD000000000000027;
  *(v20 + 32) = 0x800000022FCE1DB0;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  sub_22FA2D328(v32, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v25 = sub_22FA5191C();
  v22 = v27;
  (*(v7 + 16))(v10, v14, v27);
  (*(v3 + 104))(v28, *MEMORY[0x277D85268], v29);
  v31 = MEMORY[0x277D84F90];
  sub_22FAAF844(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v23 = sub_22FCC8FC4();
  (*(v26 + 8))(v14, v22);
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v23;
  return v20;
}

uint64_t sub_22FAAF4C4(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22FAAF4E4, v2, 0);
}

uint64_t sub_22FAAF4E4()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 112);
  [objc_allocWithZone(PHASearchEnrichmentTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v3 = sub_22FC3CDC4();

  v4 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22FAC2350((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for LegacyTask();
  *(v0 + 48) = sub_22FAAF844(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v0 + 16) = v3;
  v4[2] = v6 + 1;
  sub_22FA2D89C((v0 + 16), &v4[5 * v6 + 4]);
  sub_22FA2E6E4(v8, v0 + 16);
  v9 = type metadata accessor for GraphSearchEntityRankingDonationTask();
  v10 = swift_allocObject();

  v11 = sub_22FBD5714(v7, v2, v0 + 16, v10);
  v13 = v4[2];
  v12 = v4[3];
  if (v13 >= v12 >> 1)
  {
    v4 = sub_22FAC2350((v12 > 1), v13 + 1, 1, v4);
  }

  *(v0 + 40) = v9;
  *(v0 + 48) = sub_22FAAF844(&qword_28147C788, 255, type metadata accessor for GraphSearchEntityRankingDonationTask, &unk_22FCDD190);
  *(v0 + 16) = v11;
  v4[2] = v13 + 1;
  sub_22FA2D89C((v0 + 16), &v4[5 * v13 + 4]);
  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_22FAAF7B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SearchDonationActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FAAF7EC(uint64_t a1, uint64_t a2)
{
  result = sub_22FAAF844(&qword_28147CFA0, a2, type metadata accessor for SearchDonationActivityTaskSource, &unk_22FCD45E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FAAF844(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FAAF88C()
{
  v1 = sub_22FCC6DE4();
  v11[3] = v1;
  v11[4] = sub_22FAB1624(qword_28147B080, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A820], v1);
  LOBYTE(v1) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v1)
  {
    v3 = _s13PhotoAnalysis27PromptSuggestionCachingTaskC13isMCAvailable12photoLibrary6logger22libraryProcessingCheckSbSo07PHPhotoJ0C_2os6LoggerVSbtFZ_0(*(v0 + OBJC_IVAR___PHAContextualPromptSuggestionTask_photoLibrary), v0 + OBJC_IVAR___PHAContextualPromptSuggestionTask_logger, 0);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      if (!v6)
      {
        v8 = 1;
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "ContextualPromptSuggestionTask will run", v7, 2u);
      v8 = 1;
      goto LABEL_10;
    }

    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v9 = "ContextualPromptSuggestionTask should not run, MC not available";
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_13;
  }

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_11;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v9 = "PhotosFeatureFlags.MemoryCreationContextualPrompt is false, task will not run";
LABEL_9:
  _os_log_impl(&dword_22FA28000, v4, v5, v9, v7, 2u);
  v8 = 0;
LABEL_10:
  MEMORY[0x23190A000](v7, -1, -1);
LABEL_13:

  return v8;
}

uint64_t sub_22FAAFAA0(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8010, &qword_22FCD4728);
  v3[32] = swift_task_alloc();
  v4 = sub_22FCC84E4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_22FCC8574();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_22FCC8684();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v7 = sub_22FCC8524();
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAAFCB0, 0, 0);
}