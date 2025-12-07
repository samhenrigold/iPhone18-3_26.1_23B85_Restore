uint64_t sub_22DF54314()
{
  v28 = v0;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA4DD48);

  v2 = sub_22DF63714();
  v3 = sub_22DF63CF4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22DEF0354(v5, v4, &v27);
    _os_log_impl(&dword_22DEEA000, v2, v3, "eviction timer fired: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  v8 = (*(**(v0 + 80) + 152))();
  if (*(v8 + 16) && (v9 = sub_22DEF08FC(*(v0 + 88), *(v0 + 96)), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11)
    {
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = (*(**(v0 + 80) + 192))(v0 + 48);
      sub_22DF568C0(v13, v12);

      v14(v0 + 48, 0);
      v15 = *(v0 + 8);

      return v15();
    }
  }

  else
  {
  }

  v17 = sub_22DF63714();
  v18 = sub_22DF63CF4();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_22DEF0354(v20, v19, &v27);
    _os_log_impl(&dword_22DEEA000, v17, v18, "requesting eviction for %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x2318DDBE0](v22, -1, -1);
    MEMORY[0x2318DDBE0](v21, -1, -1);
  }

  v26 = (*(**(*(v0 + 80) + 112) + 152) + **(**(*(v0 + 80) + 112) + 152));
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_22DF54734;
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);

  return v26(v25, v24);
}

uint64_t sub_22DF54734()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22DF54844, v1, 0);
}

uint64_t sub_22DF54844()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 48);
  sub_22DF568C0(v2, v1);

  v3(v0 + 48, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22DF54914()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 16);
  sub_22DF568C0(v2, v1);

  v3(v0 + 16, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22DF549E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DF54A08, a6, 0);
}

uint64_t sub_22DF54A08()
{
  v14 = v0;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA4DD48);

  v2 = sub_22DF63714();
  v3 = sub_22DF63CF4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_22DEF0354(v5, v4, &v13);
    _os_log_impl(&dword_22DEEA000, v2, v3, "requesting immediate eviction for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  v12 = (*(**(v0[4] + 112) + 152) + **(**(v0[4] + 112) + 152));
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_22DF54C54;
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9);
}

uint64_t sub_22DF54C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DF54D68()
{
  v1 = (*(**(v0 + 48) + 128))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22DF54F1C;

    return sub_22DF037E8();
  }

  else
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v4 = sub_22DF63734();
    __swift_project_value_buffer(v4, qword_27DA4DD48);
    v5 = sub_22DF63714();
    v6 = sub_22DF63D14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting : diskCache nil", v7, 2u);
      MEMORY[0x2318DDBE0](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22DF54F1C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 72) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_22DF5597C;
  }

  else
  {
    v6 = sub_22DF55054;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF55054()
{
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v2 = sub_22DF63734();
    __swift_project_value_buffer(v2, qword_27DA4DD48);
    v3 = sub_22DF63714();
    v4 = sub_22DF63D24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22DEEA000, v3, v4, "resetting clientIDs due to missing lastDNU setting", v5, 2u);
      MEMORY[0x2318DDBE0](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v7 = sub_22DF55620;
LABEL_13:
    v6[1] = v7;

    return sub_22DF035BC();
  }

  if ((sub_22DF2EB24() & 1) != (v1 & 1))
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v8 = sub_22DF63734();
    __swift_project_value_buffer(v8, qword_27DA4DD48);
    v9 = sub_22DF63714();
    v10 = sub_22DF63D24();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 144);
      v12 = swift_slowAlloc();
      *v12 = 67240448;
      *(v12 + 4) = v11 & 1;
      *(v12 + 8) = 1026;
      *(v12 + 10) = sub_22DF2EB24() & 1;
      _os_log_impl(&dword_22DEEA000, v9, v10, "DNU status changed (%{BOOL,public}d -> %{BOOL,public}d), resetting clientIDs", v12, 0xEu);
      MEMORY[0x2318DDBE0](v12, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v7 = sub_22DF55324;
    goto LABEL_13;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22DF55324()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF55B40;
  }

  else
  {
    v4 = sub_22DF55450;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF55450()
{
  v1 = sub_22DF2EB24();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22DF554F4;

  return sub_22DF03A9C(v1 & 1);
}

uint64_t sub_22DF554F4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF55D04;
  }

  else
  {
    v4 = sub_22DF5704C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF55620()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF55EC8;
  }

  else
  {
    v4 = sub_22DF5574C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF5574C()
{
  v1 = sub_22DF2EB24();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_22DF557F0;

  return sub_22DF03A9C(v1 & 1);
}

uint64_t sub_22DF557F0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF5608C;
  }

  else
  {
    v4 = sub_22DF5591C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF5591C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF5597C()
{
  v14 = v0;
  v1 = *(v0 + 72);

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF55B40()
{
  v14 = v0;
  v1 = *(v0 + 88);

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF55D04()
{
  v14 = v0;
  v1 = *(v0 + 104);

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF55EC8()
{
  v14 = v0;
  v1 = *(v0 + 120);

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF5608C()
{
  v14 = v0;
  v1 = *(v0 + 136);

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to check last DNU setting: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF56250()
{

  swift_weakDestroy();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF562A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
  v34 = v4;
  result = sub_22DF64034();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_22DF56548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

uint64_t sub_22DF566B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22DEF08FC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22DF56548();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_22DF3BD14(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_22DF5675C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22DF562A8(v16, a4 & 1);
      v11 = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22DF64234();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22DF56548();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_22DF568C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22DF642A4();
  sub_22DF63A54();
  v6 = sub_22DF642D4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22DF64184() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22DF115D8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22DF569FC(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_22DF569FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22DF63E64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22DF642A4();

        sub_22DF63A54();
        v10 = sub_22DF642D4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22DF56BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
    v3 = sub_22DF64044();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_22DF56CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CE0, qword_22DF69A48);
    v3 = sub_22DF64044();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_22DF56DE4()
{
  result = qword_27DA47CD0;
  if (!qword_27DA47CD0)
  {
    type metadata accessor for SessionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47CD0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF56E58()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF549E4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_22DF56F00()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF54144(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_22DF56FB8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF1598;

  return sub_22DF52A7C(v3, v4, v5, v2);
}

uint64_t variable initialization expression of StorebagCoordinator.pathMonitorQueue()
{
  v12 = sub_22DF63824();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22DF63D54();
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v10 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22DF63D44();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22DF63854();
  MEMORY[0x28223BE20](v6 - 8);
  v9[0] = sub_22DF3D47C();
  v9[1] = "session_coordinator";
  sub_22DF63834();
  v13 = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47B40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DEF7E88(&qword_27DA47B48, &unk_27DA47B80, &qword_22DF69400);
  sub_22DF63E54();
  (*(v3 + 104))(v10, *MEMORY[0x277D85268], v11);
  v7 = v12;
  (*(v0 + 104))(v2, *MEMORY[0x277D851A8], v12);
  sub_22DF63D84();
  (*(v0 + 8))(v2, v7);
  return sub_22DF63D74();
}

uint64_t sub_22DF57458(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63814();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF63854();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v19[1] = *(a2 + 120);
  (*(v11 + 16))(v19 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_22DF59764;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DEF6464;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  sub_22DF63844();
  v23 = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47448, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47450, &unk_22DF65B98);
  sub_22DEF7E88(&qword_27DA47458, &qword_27DA47450, &unk_22DF65B98);
  sub_22DF63E54();
  MEMORY[0x2318DCCF0](0, v9, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_22DF577F4()
{
  v0 = sub_22DF637E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-v5];
  v7 = sub_22DF63804();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (static StorebagCoordinator.mockAvailability == 4)
  {
    sub_22DF63774();
    sub_22DF637F4();
    (*(v1 + 104))(v4, *MEMORY[0x277CD8F68], v0);
    v11 = sub_22DF637D4();
    v12 = *(v1 + 8);
    v12(v4, v0);
    v12(v6, v0);
    if (v11 & 1) != 0 || (sub_22DF637C4())
    {
      v16 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
      sub_22DF63C04();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      if (sub_22DF637B4())
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
      sub_22DF63C04();
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v16 = static StorebagCoordinator.mockAvailability;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
    return sub_22DF63C04();
  }
}

uint64_t sub_22DF57AD0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_22DF57AF0, v1, 0);
}

uint64_t sub_22DF57AF0()
{
  v1 = v0[9];
  v2 = *(v0[10] + 128);
  v0[11] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[3];
  v0[12] = v0[2];
  v0[13] = v5;

  sub_22DEF0FA8((v0 + 2));
  v6 = (*v2 + 224) & 0xFFFFFFFFFFFFLL | 0xE7F4000000000000;
  v0[14] = *(*v2 + 224);
  v0[15] = v6;

  return MEMORY[0x2822009F8](sub_22DF57BC4, v2, 0);
}

uint64_t sub_22DF57BC4()
{
  v1 = (*(v0 + 112))(*(v0 + 96), *(v0 + 104));

  if (v1)
  {
    v2 = *(v0 + 8);

    return v2(3);
  }

  else
  {
    v4 = *(v0 + 80);

    return MEMORY[0x2822009F8](sub_22DF57C7C, v4, 0);
  }
}

uint64_t sub_22DF57C7C()
{
  v1 = *(v0 + 80);
  v2 = sub_22DF59814(&qword_27DA47CF0, type metadata accessor for StorebagCoordinator, &protocol conformance descriptor for StorebagCoordinator);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22DF57D98;
  v4 = *(v0 + 80);

  return MEMORY[0x2822007B8](v0 + 136, v1, v2, 0xD000000000000013, 0x800000022DF6F980, sub_22DF57F0C, v4, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_22DF57D98()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22DF57EA8, v1, 0);
}

uint64_t type metadata accessor for StorebagCoordinator(uint64_t a1)
{
  result = qword_28150A860;
  if (!qword_28150A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF57F14(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return MEMORY[0x2822009F8](sub_22DF57F38, v2, 0);
}

uint64_t sub_22DF57F38()
{
  v1 = v0[24];
  v2 = *(v0[25] + 128);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[26] = v6;

  sub_22DEF0FA8((v0 + 2));
  v9 = (*(*v2 + 232) + **(*v2 + 232));
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_22DF580BC;

  return v9(v0 + 14, v5, v6);
}

uint64_t sub_22DF580BC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_22DF582B0;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_22DF581E0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF581E0()
{
  v1 = *(v0 + 184);
  sub_22DF0D334(*(v0 + 192), (v0 + 72));
  *(v0 + 168) = *(v0 + 112);
  sub_22DEF1364(v0 + 168, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 152) = *(v0 + 128);
  sub_22DF13A04(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  sub_22DEF1364(v0 + 176, &qword_27DA47C00, &qword_22DF670A0);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 104);
  *v1 = v3;
  *(v1 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22DF582B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF58314(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22DF58334, v1, 0);
}

uint64_t sub_22DF58334()
{
  v1 = v0[18];
  v2 = *(v0[19] + 128);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v6;

  sub_22DEF0FA8((v0 + 2));
  v9 = (*(*v2 + 232) + **(*v2 + 232));
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_22DF584B8;

  return v9(v0 + 9, v5, v6);
}

uint64_t sub_22DF584B8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_22DF5869C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_22DF585DC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF585DC()
{
  v1 = sub_22DF0C880(*(v0 + 144));
  *(v0 + 128) = *(v0 + 72);
  sub_22DEF1364(v0 + 128, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 112) = *(v0 + 88);
  sub_22DF13A04(v0 + 112);
  *(v0 + 136) = *(v0 + 104);
  sub_22DEF1364(v0 + 136, &qword_27DA47C00, &qword_22DF670A0);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22DF5869C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF58700(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF58724, v2, 0);
}

uint64_t sub_22DF58724()
{
  v1 = *(v0[4] + 128);
  v0[5] = v1;
  v2 = *v1 + 256;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xA38A000000000000;
  return MEMORY[0x2822009F8](sub_22DF5876C, v1, 0);
}

uint64_t sub_22DF5876C()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF587D4(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF4014;

  return sub_22DF5887C(a1);
}

uint64_t sub_22DF5887C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22DF63444();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_22DF63824();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_22DF63D54();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = sub_22DF63D44();
  v2[15] = swift_task_alloc();
  sub_22DF63854();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF58A50, 0, 0);
}

uint64_t sub_22DF58A50()
{
  v1 = v0[12];
  v2 = v0[10];
  v17 = v0[13];
  v18 = v0[11];
  v3 = v0[9];
  v19 = v0[8];
  v22 = v0[7];
  v23 = v0[5];
  v24 = v0[4];
  v20 = v0[6];
  v21 = v0[3];
  swift_defaultActor_initialize();
  sub_22DF3D47C();
  sub_22DF63834();
  v0[2] = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47B40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DEF7E88(&qword_27DA47B48, &unk_27DA47B80, &qword_22DF69400);
  sub_22DF63E54();
  (*(v1 + 104))(v17, *MEMORY[0x277D85268], v18);
  (*(v3 + 104))(v2, *MEMORY[0x277D851A8], v19);
  sub_22DF63D84();
  (*(v3 + 8))(v2, v19);
  *(v24 + 120) = sub_22DF63D74();
  type metadata accessor for StorebagCache(0);
  v4 = *(v20 + 16);
  v4(v22, v21, v23);
  v5 = sub_22DF4C9BC();
  v6 = sub_22DF4C9C8(v5, 0, 0, v22);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  *(v7 + 128) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CF8, &qword_22DF69A88);
  v10 = sub_22DF63764();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22DF65900;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CD8CC0], v10);
  sub_22DF637A4();
  swift_allocObject();
  *(v7 + 112) = sub_22DF63784();
  v14 = *(v24 + 120);

  v15 = v14;
  sub_22DF63794();

  v4(v7 + OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL, v9, v8);

  return MEMORY[0x2822009F8](sub_22DF58EEC, v7, 0);
}

uint64_t sub_22DF58EEC()
{
  (*(v0[6] + 8))(v0[3], v0[5]);

  v1 = v0[1];
  v2 = v0[4];

  return v1(v2);
}

uint64_t StorebagCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t StorebagCoordinator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF590C8(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DF591E8;

  return v6(a1);
}

uint64_t sub_22DF591E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22DF592E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  v7 = (*(*v2 + 136) + **(*v2 + 136));
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v3;
  v5[1] = sub_22DF59410;

  return v7(v3 + 16, a2);
}

uint64_t sub_22DF59410()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_22DF59524(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22DEEFBD4;

  return v8(a1, a2);
}

uint64_t sub_22DF5964C(uint64_t a1)
{
  result = sub_22DF59814(&qword_27DA47CF0, type metadata accessor for StorebagCoordinator, &protocol conformance descriptor for StorebagCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22DF596AC(uint64_t a1)
{
  result = sub_22DF63444();
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

uint64_t sub_22DF59764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);

  return sub_22DF577F4();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF59814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DF5985C()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E6E0);
  __swift_project_value_buffer(v0, qword_27DA4E6E0);
  return sub_22DF63724();
}

uint64_t sub_22DF598D8()
{
  v1[6] = v0;
  v2 = sub_22DF63594();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF599A4, v0, 0);
}

uint64_t sub_22DF599A4()
{
  v1 = *(v0[6] + 112);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[8];

    sub_22DF63554();
    sub_22DF63504();
    v5 = *(v4 + 8);
    v0[12] = v5;
    v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_22DF59BB0;
    v7 = v0[10];

    return sub_22DF02B6C(v7);
  }

  else
  {
    if (qword_27DA4DEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_22DF63734();
    __swift_project_value_buffer(v9, qword_27DA4E6E0);
    v10 = sub_22DF63714();
    v11 = sub_22DF63D24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22DEEA000, v10, v11, "cleanup cache activity skipped due to bad initialization", v12, 2u);
      MEMORY[0x2318DDBE0](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22DF59BB0()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_22DF59ED8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_22DF59D20;

    return sub_22DF03C94();
  }
}

uint64_t sub_22DF59D20()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF5A0D0;
  }

  else
  {
    v4 = sub_22DF59E4C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF59E4C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF59ED8()
{
  v14 = v0;
  v1 = *(v0 + 120);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_27DA4DEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4E6E0);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to delete outdated sessions: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF5A0D0()
{
  v14 = v0;
  v1 = *(v0 + 136);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_27DA4DEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4E6E0);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to delete outdated sessions: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22DF5A2C8()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22DEEFBD4;

  return v4();
}

double sub_22DF5A3D8()
{
  CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF5A41C()
{
  v0 = *CacheCleanupActivityConfig.identifier.unsafeMutableAddressor();

  return v0;
}

unint64_t sub_22DF5A450(uint64_t a1)
{
  result = sub_22DF5A478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22DF5A478()
{
  result = qword_27DA47D08;
  if (!qword_27DA47D08)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47D08);
  }

  return result;
}

void sub_22DF5A4F8()
{
  type metadata accessor for RequestOptions();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_beginAccess();
  *(v0 + 16) = 0;
  static RequestOptions.globalRequestOptions = v0;
}

uint64_t RequestOptions.__allocating_init(networkingDelegate:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t *RequestOptions.globalRequestOptions.unsafeMutableAddressor()
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  return &static RequestOptions.globalRequestOptions;
}

uint64_t static RequestOptions.globalRequestOptions.getter()
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RequestOptions.globalRequestOptions.setter(uint64_t a1)
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RequestOptions.globalRequestOptions = a1;
}

uint64_t (*static RequestOptions.globalRequestOptions.modify(uint64_t a1))(void)
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t RequestOptions.init(networkingDelegate:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

id sub_22DF5A7E4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = (a1 >> 8) & 1;
  v6 = [objc_allocWithZone(MEMORY[0x277CF36E0]) init];
  [v6 set:5.0 timeoutIntervalForRequest:?];
  [v6 setAllowsCellularAccess_];
  [v6 set:v5 allowsExpensiveAccess:?];
  v7 = sub_22DF63984();
  [v6 set:v7 sourceApplicationBundleIdentifier:?];

  swift_beginAccess();
  if (*(v3 + 16))
  {
    [v6 setNetworkingDelegate_];
  }

  return v6;
}

uint64_t RequestOptions.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22DF5AA30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF69C00;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  *v11 = sub_22DF63AA4();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = *MEMORY[0x277D86230];
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = *MEMORY[0x277D86330];
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = *MEMORY[0x277D86358];
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86398])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = *MEMORY[0x277D86398];
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86390])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = *MEMORY[0x277D86390];
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86320])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = *MEMORY[0x277D86320];
  *(v24 + v25) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = *MEMORY[0x277D86268];
  *(v26 + v27) = *MEMORY[0x277D862C0];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = *MEMORY[0x277D86280];
  *v29 = 0xD000000000000025;
  v29[1] = 0x800000022DF6FAB0;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86278])
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = *MEMORY[0x277D86278];
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    v32 = sub_22DF5B164(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static SubmitEventsActivityConfig.activityFlags = v32;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  return &static SubmitEventsActivityConfig.activityFlags;
}

double static SubmitEventsActivityConfig.activityFlags.getter()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static SubmitEventsActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SubmitEventsActivityConfig.activityFlags = a1;
}

uint64_t (*static SubmitEventsActivityConfig.activityFlags.modify(uint64_t a1))(void)
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_22DF5B018()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

unint64_t sub_22DF5B0B4(uint64_t a1)
{
  v2 = sub_22DF64294();

  return sub_22DF5B0F8(a1, v2);
}

unint64_t sub_22DF5B0F8(uint64_t a1, uint64_t a2)
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

unint64_t sub_22DF5B164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D80, &unk_22DF69C90);
    v7 = sub_22DF64044();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_22DF5B314(v9, v5);
      v11 = *v5;
      result = sub_22DF5B0B4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for XPCObject(0);
      result = sub_22DF3FF98(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

uint64_t sub_22DF5B314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22DF63604();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCObject(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v36 - v13);
  MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  if (a1)
  {
    v37 = v15;
    v18 = swift_unknownObjectRetain();
    v19 = MEMORY[0x2318DE010](v18);
    if (XPCTypeNull.getter() == v19)
    {
      swift_unknownObjectRelease_n();
    }

    else if (XPCTypeConnection.getter() == v19 || XPCTypeEndpoint.getter() == v19)
    {
      swift_unknownObjectRelease();
      *v17 = a1;
    }

    else if (XPCTypeBool.getter() == v19)
    {
      value = xpc_BOOL_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = value;
    }

    else if (XPCTypeInt64.getter() == v19)
    {
      v23 = xpc_int64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v23;
    }

    else if (XPCTypeUInt64.getter() == v19)
    {
      v24 = xpc_uint64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v24;
    }

    else if (XPCTypeDouble.getter() == v19)
    {
      v25 = xpc_double_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v25;
    }

    else
    {
      if (XPCTypeDate.getter() != v19)
      {
        if (XPCTypeData.getter() == v19)
        {
          result = xpc_data_get_bytes_ptr(a1);
          if (result)
          {
            v27 = result;
            length = xpc_data_get_length(a1);
            v29 = sub_22DF5C7EC(v27, length);
            v31 = v30;
            swift_unknownObjectRelease_n();
            *v14 = v29;
            v14[1] = v31;
            swift_storeEnumTagMultiPayload();
            v32 = v14;
LABEL_34:
            sub_22DF3FF98(v32, v17);
            goto LABEL_29;
          }

          __break(1u);
        }

        else
        {
          if (XPCTypeString.getter() != v19)
          {
            if (XPCTypeUUID.getter() != v19)
            {
              swift_unknownObjectRelease();
              if (XPCTypeShmem.getter() == v19)
              {
                *v17 = a1;
              }

              else if (XPCTypeArray.getter() == v19)
              {
                *v17 = a1;
              }

              else
              {
                if (XPCTypeDictionary.getter() != v19)
                {
                  swift_unknownObjectRelease();
                  v15 = v37;
                  goto LABEL_17;
                }

                *v17 = a1;
              }

              goto LABEL_28;
            }

            result = xpc_uuid_get_bytes(a1);
            if (result)
            {
              sub_22DF635D4();
              swift_unknownObjectRelease_n();
              (*(v5 + 32))(v17, v7, v4);
              goto LABEL_28;
            }

LABEL_42:
            __break(1u);
            return result;
          }

          result = xpc_string_get_string_ptr(a1);
          if (result)
          {
            v33 = sub_22DF63AA4();
            v35 = v34;
            swift_unknownObjectRelease_n();
            *v11 = v33;
            v11[1] = v35;
            swift_storeEnumTagMultiPayload();
            v32 = v11;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v26 = xpc_date_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v26;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_22DF3FF98(v17, a2);
    return (*(v37 + 56))(a2, 0, 1, v8);
  }

LABEL_17:
  v20 = *(v15 + 56);

  return v20(a2, 1, 1, v8);
}

uint64_t type metadata accessor for XPCObject(uint64_t a1)
{
  result = qword_27DA4E100;
  if (!qword_27DA4E100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v2 = sub_22DF63604();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &uuid[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for XPCObject(0);
  MEMORY[0x28223BE20](v6);
  v8 = &uuid[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22DF3FFFC(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      return xpc_BOOL_create(*v8);
    case 3u:
      return xpc_int64_create(*v8);
    case 4u:
      return xpc_uint64_create(*v8);
    case 5u:
      return xpc_double_create(*v8);
    case 6u:
      return xpc_date_create(*v8);
    case 7u:
      v19 = *v8;
      v18 = *(v8 + 1);
      v20 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v20 != 2)
        {
          memset(uuid, 0, 14);
          v22 = uuid;
          v21 = 0;
          goto LABEL_34;
        }

        v25 = *(v19 + 16);
        v26 = *(v19 + 24);
        v27 = sub_22DF63204();
        if (v27)
        {
          v28 = sub_22DF63234();
          if (__OFSUB__(v25, v28))
          {
            goto LABEL_36;
          }

          v27 += v25 - v28;
        }

        v29 = __OFSUB__(v26, v25);
        v30 = v26 - v25;
        if (!v29)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_22:
        v30 = (v19 >> 32) - v19;
        if (v19 >> 32 >= v19)
        {
          v27 = sub_22DF63204();
          if (!v27)
          {
LABEL_26:
            v32 = sub_22DF63224();
            if (v32 >= v30)
            {
              v33 = v30;
            }

            else
            {
              v33 = v32;
            }

            if (v27)
            {
              v21 = v33;
            }

            else
            {
              v21 = 0;
            }

            v22 = v27;
            goto LABEL_34;
          }

          v31 = sub_22DF63234();
          if (!__OFSUB__(v19, v31))
          {
            v27 += v19 - v31;
            goto LABEL_26;
          }

LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v20)
      {
        goto LABEL_22;
      }

      *uuid = *v8;
      *&uuid[8] = v18;
      uuid[10] = BYTE2(v18);
      uuid[11] = BYTE3(v18);
      uuid[12] = BYTE4(v18);
      v21 = BYTE6(v18);
      uuid[13] = BYTE5(v18);
      v22 = uuid;
LABEL_34:
      v34 = xpc_data_create(v22, v21);
      sub_22DEF7A34(v19, v18);
      return v34;
    case 8u:
      v23 = sub_22DF63A34();

      v24 = xpc_string_create((v23 + 32));

      return v24;
    case 9u:
      (*(v3 + 32))(v5, v8, v2);
      *uuid = sub_22DF635E4();
      *&uuid[8] = v10;
      uuid[10] = v11;
      uuid[11] = v12;
      uuid[12] = v13;
      uuid[13] = v14;
      uuid[14] = v15;
      uuid[15] = v16;
      v17 = xpc_uuid_create(uuid);
      (*(v3 + 8))(v5, v2);
      return v17;
    case 0xDu:
      return xpc_null_create();
    default:
      return *v8;
  }
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

BOOL sub_22DF5BD98()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t XPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v1 = sub_22DF5C89C(a1);

  return v1;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *v3;
  sub_22DEF12FC(a1, &v13 - v6, &unk_27DA47600, &unk_22DF660C0);
  v9 = type metadata accessor for XPCObject(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_22DEF1364(v7, &unk_27DA47600, &unk_22DF660C0);
    v10 = 0;
  }

  else
  {
    v10 = XPCObject.obj.getter();
    sub_22DF40060(v7);
  }

  v11 = sub_22DF63A34();

  xpc_dictionary_set_value(v8, (v11 + 32), v10);
  swift_unknownObjectRelease();
  sub_22DEF1364(a1, &unk_27DA47600, &unk_22DF660C0);
}

char *XPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_22DF03FB0(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22DF5CC84;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22DEFF554;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DEFBBE8;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

unsigned __int8 *XPCDictionary.subscript.getter@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_22DF63A34();
  v7 = xpc_dictionary_get_value(a3, (v6 + 32));

  return XPCObject.init(_:)(v7, a4);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0) - 8) + 64);
  if (v7)
  {
    v9[2] = swift_coroFrameAlloc();
    v9[3] = swift_coroFrameAlloc();
    v9[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[2] = malloc(v10);
    v9[3] = malloc(v10);
    v9[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[5] = v11;
  v13 = *v3;
  v9[6] = v13;
  v14 = sub_22DF63A34();
  v15 = xpc_dictionary_get_value(v13, (v14 + 32));

  XPCObject.init(_:)(v15, v12);
  return sub_22DF5C31C;
}

void sub_22DF5C31C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    sub_22DEF12FC(v3, v4, &unk_27DA47600, &unk_22DF660C0);
    sub_22DEF12FC(v4, v5, &unk_27DA47600, &unk_22DF660C0);
    v6 = type metadata accessor for XPCObject(0);
    LODWORD(v5) = (*(*(v6 - 8) + 48))(v5, 1, v6);

    v7 = v2[2];
    if (v5 == 1)
    {
      sub_22DEF1364(v2[2], &unk_27DA47600, &unk_22DF660C0);
      v8 = 0;
    }

    else
    {
      v8 = XPCObject.obj.getter();
      sub_22DF40060(v7);
    }

    v14 = v2[5];
    v15 = v2[6];
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[2];
    v19 = sub_22DF63A34();

    xpc_dictionary_set_value(v15, (v19 + 32), v8);
    swift_unknownObjectRelease();
    sub_22DEF1364(v17, &unk_27DA47600, &unk_22DF660C0);

    sub_22DEF1364(v14, &unk_27DA47600, &unk_22DF660C0);
  }

  else
  {
    v9 = v2[4];
    sub_22DEF12FC(v3, v9, &unk_27DA47600, &unk_22DF660C0);
    v10 = type metadata accessor for XPCObject(0);
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);

    v12 = v2[4];
    if (v11 == 1)
    {
      sub_22DEF1364(v2[4], &unk_27DA47600, &unk_22DF660C0);
      v13 = 0;
    }

    else
    {
      v13 = XPCObject.obj.getter();
      sub_22DF40060(v12);
    }

    v14 = v2[5];
    v20 = v2[6];
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[2];
    v21 = sub_22DF63A34();

    xpc_dictionary_set_value(v20, (v21 + 32), v13);
    swift_unknownObjectRelease();
    sub_22DEF1364(v14, &unk_27DA47600, &unk_22DF660C0);
  }

  free(v14);
  free(v16);
  free(v17);
  free(v18);

  free(v2);
}

Swift::Bool __swiftcall XPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_22DF63A34();
  v7 = xpc_dictionary_get_value(v2, (v6 + 32));

  XPCObject.init(_:)(v7, v5);
  v8 = type metadata accessor for XPCObject(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_22DEF1364(v5, &unk_27DA47600, &unk_22DF660C0);
  return v7;
}

uint64_t sub_22DF5C6F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22DF5C89C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22DF5C734(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_22DF5C7EC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22DF5C734(a1, &a1[a2]);
  }

  sub_22DF63244();
  swift_allocObject();
  sub_22DF631F4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22DF63484();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t sub_22DF5C89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47D90, &qword_22DF69D58);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v35 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v35 - v15);
  MEMORY[0x28223BE20](v14);
  v38 = (&v35 - v17);
  empty = xpc_dictionary_create_empty();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v7 + 48);
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v35 = *(v8 + 72);
    v36 = v19;
    v37 = v13;
    do
    {
      v24 = v38;
      sub_22DEF12FC(v20, v38, &unk_27DA47D90, &qword_22DF69D58);
      v25 = v24[1];
      v26 = *(v7 + 48);
      *v16 = *v24;
      v16[1] = v25;
      sub_22DF3FF98(v24 + v36, v16 + v26);
      sub_22DEF12FC(v16, v13, &unk_27DA47D90, &qword_22DF69D58);
      v42 = *v13;
      v27 = v39;
      sub_22DEF12FC(v16, v39, &unk_27DA47D90, &qword_22DF69D58);

      v28 = v7;
      sub_22DF3FF98(v27 + *(v7 + 48), v6);
      v29 = type metadata accessor for XPCObject(0);
      v30 = *(v29 - 8);
      (*(v30 + 56))(v6, 0, 1, v29);
      v31 = v6;
      v32 = v6;
      v33 = v40;
      sub_22DEF12FC(v32, v40, &unk_27DA47600, &unk_22DF660C0);
      if ((*(v30 + 48))(v33, 1, v29) == 1)
      {
        sub_22DEF1364(v33, &unk_27DA47600, &unk_22DF660C0);
        v21 = 0;
      }

      else
      {
        v21 = XPCObject.obj.getter();
        sub_22DF40060(v33);
      }

      v7 = v28;
      v22 = *(v28 + 48);
      v23 = sub_22DF63A34();

      xpc_dictionary_set_value(empty, (v23 + 32), v21);
      swift_unknownObjectRelease();
      v6 = v31;
      sub_22DEF1364(v31, &unk_27DA47600, &unk_22DF660C0);
      sub_22DEF1364(v16, &unk_27DA47D90, &qword_22DF69D58);

      v13 = v37;
      sub_22DF40060(v37 + v22);
      v20 += v35;
      --v18;
    }

    while (v18);
  }

  return empty;
}

uint64_t sub_22DF5CC84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_22DF63AA4();
  v5 = v4;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_22DF03FB0(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_22DF03FB0((v8 > 1), v9 + 1, 1, v6);
    *v2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  return 1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF5CD54(uint64_t a1)
{
  result = sub_22DF5CE18();
  if (v2 <= 0x3F)
  {
    result = sub_22DF63604();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22DF5CE18()
{
  result = qword_27DA47D88;
  if (!qword_27DA47D88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA47D88);
  }

  return result;
}

uint64_t sub_22DF5CE90(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22DF5CEC4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22DF5CEFC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E118);
  __swift_project_value_buffer(v0, qword_27DA4E118);
  return sub_22DF63724();
}

uint64_t sub_22DF5CFB4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t static XPCActivity.makeHandler.getter()
{
  swift_beginAccess();
  v0 = static XPCActivity.makeHandler;
  sub_22DF5D12C(static XPCActivity.makeHandler, qword_27DA4E710);
  return v0;
}

uint64_t sub_22DF5D12C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t static XPCActivity.makeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static XPCActivity.makeHandler;
  v5 = qword_27DA4E710;
  static XPCActivity.makeHandler = a1;
  qword_27DA4E710 = a2;
  return sub_22DEEB93C(v4, v5);
}

Swift::Void __swiftcall XPCActivity.register(disabled:)(Swift::Bool_optional disabled)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_22DF639B4();
    v8 = v7;

    if (disabled.value != 2)
    {
      (*(*v2 + 144))(disabled.value);
    }

    sub_22DF63F24();

    aBlock = 0x6C655464756F6C43;
    v28 = 0xEF2E797274656D65;
    MEMORY[0x2318DCA20](v6, v8);

    MEMORY[0x2318DCA20](46, 0xE100000000000000);
    v9 = (*(v2[15] + 32))();
    MEMORY[0x2318DCA20](v9);

    v10 = *MEMORY[0x277D86238];
    v31 = sub_22DF5EE74;
    v32 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_22DF5D694;
    v30 = &block_descriptor_6;
    v11 = _Block_copy(&aBlock);

    v12 = sub_22DF63A34();
    xpc_activity_register((v12 + 32), v10, v11);

    _Block_release(v11);
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v13 = sub_22DF63734();
    __swift_project_value_buffer(v13, qword_27DA4E118);

    v14 = sub_22DF63714();
    v15 = sub_22DF63CF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = v17;
      *v16 = 136315138;
      v18 = sub_22DEF0354(0x6C655464756F6C43, 0xEF2E797274656D65, &aBlock);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_22DEEA000, v14, v15, "registered: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x2318DDBE0](v17, -1, -1);
      MEMORY[0x2318DDBE0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v19 = sub_22DF63734();
    __swift_project_value_buffer(v19, qword_27DA4E118);

    oslog = sub_22DF63714();
    v20 = sub_22DF63CF4();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      v23 = (*(v2[15] + 32))();
      v25 = sub_22DEF0354(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22DEEA000, oslog, v20, "unable to register: %s, nil bundleIdentifier", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2318DDBE0](v22, -1, -1);
      MEMORY[0x2318DDBE0](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22DF5D694(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_22DF5D6F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v43 - v2;
  v46 = type metadata accessor for XPCObject(0);
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E10, &qword_22DF69E68);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v13 + 24);
  v15 = *(v14(v12, v13) + 16);

  if (!v15)
  {
    return 0;
  }

  v48 = v11;
  v49 = v9;
  v50 = XPCDictionary.init()();
  result = v14(v12, v13);
  v17 = 0;
  v19 = (result + 8);
  v18 = result[8];
  v43 = v3;
  v44 = result;
  v20 = 1 << *(result + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v45 = (v3 + 56);
  v24 = &unk_27DA47E18;
  while (v22)
  {
    v25 = v17;
    v27 = v48;
    v26 = v49;
LABEL_14:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v25 << 6);
    v32 = *(*(v44 + 48) + 8 * v31);
    sub_22DF3FFFC(*(v44 + 56) + *(v43 + 72) * v31, v5);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_22DF69E70);
    v34 = *(v33 + 48);
    *v26 = v32;
    sub_22DF3FF98(v5, v26 + v34);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
    v29 = v25;
LABEL_15:
    sub_22DF5F298(v26, v27);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_22DF69E70);
    if ((*(*(v35 - 8) + 48))(v27, 1, v35) == 1)
    {

      return v50;
    }

    sub_22DF3FF98(v27 + *(v35 + 48), v5);
    v36 = sub_22DF63AA4();
    v38 = v37;
    v39 = v24;
    v40 = v47;
    sub_22DF3FFFC(v5, v47);
    (*v45)(v40, 0, 1, v46);
    v41 = v40;
    v24 = v39;
    XPCDictionary.subscript.setter(v41, v36, v38);
    result = sub_22DF40060(v5);
    v17 = v29;
  }

  if (v23 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28 - 1;
  v27 = v48;
  v26 = v49;
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_22DF69E70);
      (*(*(v42 - 8) + 56))(v26, 1, 1, v42);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *&v19[8 * v25];
    ++v17;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF5DB2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  type metadata accessor for XPCActivityHandle();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v8);
  if (state == 2)
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v20 = sub_22DF63734();
    __swift_project_value_buffer(v20, qword_27DA4E118);

    v21 = sub_22DF63714();
    v22 = sub_22DF63D24();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = (*(*(v2 + 120) + 32))();
      v27 = sub_22DEF0354(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22DEEA000, v21, v22, "run: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2318DDBE0](v24, -1, -1);
      MEMORY[0x2318DDBE0](v23, -1, -1);
    }

    should_defer = xpc_activity_should_defer(*(v7 + 16));
    v29 = *(v7 + 16);
    if (!should_defer)
    {
      xpc_activity_set_state(v29, 4);
      v40 = sub_22DF63C34();
      (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v2;
      v41[5] = v7;

      sub_22DEEFE64(0, 0, v6, &unk_22DF69E58, v41);
    }

    xpc_activity_set_state(v29, 3);
LABEL_16:
  }

  if (!state)
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v10 = sub_22DF63734();
    __swift_project_value_buffer(v10, qword_27DA4E118);

    v11 = sub_22DF63714();
    v12 = sub_22DF63CF4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      v15 = (*(*(v2 + 120) + 32))();
      v17 = sub_22DEF0354(v15, v16, &v43);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_22DEEA000, v11, v12, "checkin: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2318DDBE0](v14, -1, -1);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }

    v18 = sub_22DF5D6F4();
    if (v18)
    {
      v19 = v18;
      if (xpc_activity_copy_criteria(*(v7 + 16)))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        xpc_activity_set_criteria(*(v7 + 16), v19);
      }

      return swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (qword_27DA4E110 != -1)
  {
    swift_once();
  }

  v31 = sub_22DF63734();
  __swift_project_value_buffer(v31, qword_27DA4E118);
  swift_retain_n();

  v32 = sub_22DF63714();
  v33 = sub_22DF63D04();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315394;
    v36 = (*(*(v2 + 120) + 32))();
    v38 = sub_22DEF0354(v36, v37, &v43);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2048;
    v39 = xpc_activity_get_state(*(v7 + 16));

    *(v34 + 14) = v39;

    _os_log_impl(&dword_22DEEA000, v32, v33, "activity: %s, encountered unrecognized XPC activity state: %ld", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x2318DDBE0](v35, -1, -1);
    MEMORY[0x2318DDBE0](v34, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22DF5E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22DF5E150, a4, 0);
}

uint64_t sub_22DF5E150()
{
  sub_22DF5E1B0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_22DF5E1B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  if ((*(v4 + 136))(v6))
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v9 = sub_22DF63734();
    __swift_project_value_buffer(v9, qword_27DA4E118);

    v24 = sub_22DF63714();
    v10 = sub_22DF63D04();

    if (os_log_type_enabled(v24, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      v13 = (*(v1[15] + 32))();
      v15 = sub_22DEF0354(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_22DEEA000, v24, v10, "disabled: skipping %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2318DDBE0](v12, -1, -1);
      MEMORY[0x2318DDBE0](v11, -1, -1);
    }

    else
    {
      v22 = v24;
    }
  }

  else
  {
    aBlock[4] = sub_22DF5EED8;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF5D694;
    aBlock[3] = &block_descriptor_8;
    v16 = _Block_copy(aBlock);

    v17 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v16);
    v18 = sub_22DF63C34();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = sub_22DF5EEE0();
    v20 = swift_allocObject();
    v20[2] = v2;
    v20[3] = v19;
    v20[4] = v17;
    v20[5] = a1;
    v20[6] = v2;
    v20[7] = v4;
    swift_retain_n();

    v21 = sub_22DEF61B8(0, 0, v8, &unk_22DF69E38, v20);
    (*(*v2 + 120))(v21);
  }
}

uint64_t sub_22DF5E558(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v8 = sub_22DF63C34();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;

    sub_22DEEFE64(0, 0, v6, &unk_22DF69E48, v9);
  }

  return result;
}

uint64_t sub_22DF5E694()
{
  if ((*(**(v0 + 16) + 112))())
  {
    v1 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    sub_22DF63C54();
    (*(*v1 + 120))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF5E784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_22DF5E7A8, a6, 0);
}

void sub_22DF5E7A8()
{
  swift_beginAccess();
  v1 = static XPCActivity.makeHandler;
  v0[11] = static XPCActivity.makeHandler;
  if (v1)
  {
    v2 = v0[10];
    v0[12] = qword_27DA4E710;
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);

    v7 = (v1 + *v1);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_22DF5E8F0;
    v6 = v0[10];

    v7(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22DF5E8F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v4[14] = a1;

  sub_22DEEB93C(v6, v5);

  return MEMORY[0x2822009F8](sub_22DF5EA4C, v7, 0);
}

uint64_t sub_22DF5EA4C()
{
  sub_22DF63C84();
  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_22DF5EBDC;

  return v5(ObjectType, v1);
}

uint64_t sub_22DF5EBDC()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22DF5ECEC, v1, 0);
}

uint64_t sub_22DF5ECEC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_unknownObjectRelease();
  sub_22DF5EFDC(v3, v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t XPCActivity.__allocating_init(handlerType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 120) = a2;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 112) = a1;
  return v4;
}

uint64_t XPCActivity.init(handlerType:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t XPCActivity.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22DF5EEE0()
{
  result = qword_27DA47E08;
  if (!qword_27DA47E08)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E08);
  }

  return result;
}

uint64_t sub_22DF5EF34()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF5E784(v5, v6, v7, v2, v3, v4);
}

void sub_22DF5EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_27DA4E110 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4E118);

  oslog = sub_22DF63714();
  v6 = sub_22DF63D24();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = (*(*(a3 + 120) + 32))();
    v11 = sub_22DEF0354(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22DEEA000, oslog, v6, "done: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }
}

uint64_t sub_22DF5F16C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF1598;

  return sub_22DF5E674(v3, v4, v5, v2);
}

uint64_t sub_22DF5F200()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return sub_22DF5E130(v4, v5, v6, v2, v3);
}

uint64_t sub_22DF5F298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E10, &qword_22DF69E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t XPCError.description.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t sub_22DF5F590()
{
  if (xpc_dictionary_get_string(*v0, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a4@<X8>)
{
  sub_22DF63A34();
  v5 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v5, a4);
}

void *XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_22DF609AC(a4, v8, a2, a3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t XPCConnection.conn.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_22DF5F9A8;
}

void sub_22DF5F9A8(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

  free(v4);
}

uint64_t sub_22DF5FA34()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E1B8);
  __swift_project_value_buffer(v0, qword_27DA4E1B8);
  return sub_22DF63724();
}

void *XPCConnection.__allocating_init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_22DF60BC8(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22DF60BC8(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _xpc_connection_s *a6)
{
  v8 = a4;
  swift_allocObject();
  v12 = sub_22DF60DFC(a1, a2, a3, v8, a5, a6);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = sub_22DF60DFC(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t XPCConnection.__allocating_init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = swift_allocObject();
  XPCConnection.init(serviceName:targetQ:listen:delegate:)(a1, a2, a3, v8, a5, a6);
  return v12;
}

void XPCConnection.init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v7[2] = 0;
  v11 = (v7 + 2);
  v7[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {

    swift_beginAccess();
    v7[4] = a6;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v7[2] = 0;
    swift_unknownObjectRelease();
    v7[5] = a3;
    return;
  }

  v12 = sub_22DF63A34();
  v13 = a3;
  v14 = xpc_connection_create((v12 + 32), v13);

  swift_beginAccess();
  v7[4] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v7[2] = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7[5] = v13;
  v15 = qword_27DA4E1B0;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_22DF63734();
  __swift_project_value_buffer(v17, qword_27DA4E1B8);
  v18 = sub_22DF63714();
  v19 = sub_22DF63D24();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22DEEA000, v18, v19, "C.", v20, 2u);
    MEMORY[0x2318DDBE0](v20, -1, -1);
  }

  if (!*v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v21, v16);
  swift_unknownObjectRelease();

  v22 = *v11;
  if (!*v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v25[5] = v7;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22DF5D694;
  v25[3] = &block_descriptor_7;
  v23 = _Block_copy(v25);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v22, v23);
  _Block_release(v23);
  swift_unknownObjectRelease();
  v24 = v7[2];
  if (v24)
  {
    swift_unknownObjectRetain();

    xpc_connection_activate(v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_22DF60040(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t), void (*a6)(uint64_t))
{
  swift_allocObject();
  v12 = a5(a1, a2, a3, a4);
  a6(a1);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_22DF60104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v9 = a5();
  a6(a1);

  swift_unknownObjectRelease();
  return v9;
}

_xpc_connection_s *XPCConnection.endpoint()()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

void XPCConnection.send(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = j__swift_unknownObjectRetain(a1);
    xpc_connection_send_message(v3, v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](sub_22DF60254, 0, 0);
}

uint64_t sub_22DF60254()
{
  v1 = *(v0 + 56);
  v2 = swift_beginAccess();
  v10 = *(v1 + 16);
  *(v0 + 64) = v10;
  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 56) + 40);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_22DF60398;
    v9 = &type metadata for XPCDictionary;
    v7 = sub_22DF612E4;
    v2 = v0 + 40;
    v6 = 0x800000022DF6FBB0;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000011;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22DF60398()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22DF6051C;
  }

  else
  {

    v2 = sub_22DF604B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DF604B4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22DF6051C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF60588(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, NSObject *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = j__swift_unknownObjectRetain(a3);
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_22DF61390;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DF5D694;
  aBlock[3] = &block_descriptor_8_0;
  v15 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, v12, a4, v15);
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.auditToken.getter()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    __break(1u);
  }

  xpc_connection_get_audit_token();
  return 0;
}

_xpc_connection_s *XPCConnection.remoteUID.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_connection_get_euid(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.deinit()
{
  v1 = v0;
  if (qword_27DA4E1B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4E1B8);
  v3 = sub_22DF63714();
  v4 = sub_22DF63D04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22DEEA000, v3, v4, "connection released", v5, 2u);
    MEMORY[0x2318DDBE0](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
  }

  swift_unknownObjectRelease();
  sub_22DF612F0(v1 + 24);

  return v1;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();

  return swift_deallocClassInstance();
}

void *sub_22DF609AC(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v5[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[4] = a4;
  swift_unknownObjectWeakAssign();
  v5[5] = a2;
  v9 = qword_27DA4E1B0;
  v10 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_22DF63734();
  __swift_project_value_buffer(v11, qword_27DA4E1B8);
  v12 = sub_22DF63714();
  v13 = sub_22DF63D24();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22DEEA000, v12, v13, "D.", v14, 2u);
    MEMORY[0x2318DDBE0](v14, -1, -1);
  }

  xpc_connection_set_target_queue(a1, v10);
  v17[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v17[5] = v5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22DF5D694;
  v17[3] = &block_descriptor_20;
  v15 = _Block_copy(v17);

  xpc_connection_set_event_handler(a1, v15);
  _Block_release(v15);
  xpc_connection_activate(a1);
  return v5;
}

void *sub_22DF60BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v9 = qword_27DA4E1B0;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_22DF63734();
  __swift_project_value_buffer(v11, qword_27DA4E1B8);
  v12 = sub_22DF63714();
  v13 = sub_22DF63D24();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22DEEA000, v12, v13, "A.", v14, 2u);
    MEMORY[0x2318DDBE0](v14, -1, -1);
  }

  xpc_connection_set_target_queue(v8, v10);
  v17[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v17[5] = v4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22DF5D694;
  v17[3] = &block_descriptor_17;
  v15 = _Block_copy(v17);

  xpc_connection_set_event_handler(v8, v15);
  _Block_release(v15);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_22DF60DFC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_22DF63A34();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v16 = qword_27DA4E1B0;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_22DF63734();
  __swift_project_value_buffer(v18, qword_27DA4E1B8);
  v19 = sub_22DF63714();
  v20 = sub_22DF63D24();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22DEEA000, v19, v20, "B.", v21, 2u);
    MEMORY[0x2318DDBE0](v21, -1, -1);
  }

  xpc_connection_set_target_queue(mach_service, v17);
  v24[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v24[5] = v7;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_22DF5D694;
  v24[3] = &block_descriptor_14;
  v22 = _Block_copy(v24);

  xpc_connection_set_event_handler(mach_service, v22);
  _Block_release(v22);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_xpc_connection_s *sub_22DF61088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v12 = qword_27DA4E1B0;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_22DF63734();
    __swift_project_value_buffer(v14, qword_27DA4E1B8);
    v15 = sub_22DF63714();
    v16 = sub_22DF63D24();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22DEEA000, v15, v16, "E.", v17, 2u);
      MEMORY[0x2318DDBE0](v17, -1, -1);
    }

    xpc_connection_set_target_queue(v11, v13);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF5D694;
    aBlock[3] = &block_descriptor_11;
    v18 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v18);
    _Block_release(v18);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF6131C()
{
  result = qword_27DA47E20;
  if (!qword_27DA47E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E20);
  }

  return result;
}

uint64_t sub_22DF61390(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
  v2 = MEMORY[0x2318DE010](a1);
  if (v2 == XPCTypeError.getter())
  {
    sub_22DF6131C();
    swift_allocError();
    *v4 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
    return sub_22DF63BF4();
  }

  else
  {
    swift_unknownObjectRetain();
    XPCDictionary.init(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
    return sub_22DF63C04();
  }
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x2318DE010](a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void getTimeIntervalSince1970(Date:)(uint64_t a1)
{
  sub_22DF63544();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if (((v4 | v3) & 1) == 0)
  {
    if (v1 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v1 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_22DF61678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF689A0;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = *MEMORY[0x277D86340];
  *v5 = sub_22DF63AA4();
  v5[1] = v6;
  type metadata accessor for XPCObject(0);
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86330])
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = *MEMORY[0x277D86330];
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (*MEMORY[0x277D86328])
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = *MEMORY[0x277D86328];
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      v12 = sub_22DF5B164(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

double static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify(uint64_t a1))(void)
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_22DF61A0C()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t sub_22DF61ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF6A180;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  *v11 = sub_22DF63AA4();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = *MEMORY[0x277D86230];
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = *MEMORY[0x277D86330];
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = *MEMORY[0x277D86358];
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = *MEMORY[0x277D86268];
  *(v20 + v21) = *MEMORY[0x277D862A8];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = *MEMORY[0x277D86280];
  *v23 = 0xD000000000000025;
  v23[1] = 0x800000022DF6FAB0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86278])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = *MEMORY[0x277D86278];
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86258])
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = *MEMORY[0x277D86258];
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    v28 = sub_22DF5B164(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v28;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

double static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify(uint64_t a1))(void)
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_22DF6204C()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t sub_22DF620FC()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD250](v1);
  return sub_22DF642D4();
}

uint64_t sub_22DF62170(uint64_t a1)
{
  v2 = *v1;
  sub_22DF642A4();
  MEMORY[0x2318DD250](v2);
  return sub_22DF642D4();
}

unint64_t sub_22DF621B4@<X0>(Swift::Int64 *a1@<X0>, CloudTelemetryShared::XPCMessage::MessageType_optional *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t XPCMessage.init(ty:payload:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v10 = a2;
  swift_unknownObjectRetain();
  v7 = xpc_int64_create(a1);
  XPCObject.init(_:)(v7, v6);
  XPCDictionary.subscript.setter(v6, 1701869940, 0xE400000000000000);
  swift_unknownObjectRelease();
  return v10;
}

void XPCMessage.init(fromXPC:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v1 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_22DF6232C(uint64_t a1)
{
  if (a1 != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  swift_unknownObjectRetain();
  XPCDictionary.init(_:)();
  v3 = v2;
  XPCDictionary.subscript.getter(v2, v1);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for XPCObject(0);
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    swift_unknownObjectRelease();
    sub_22DF62D58(v1);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_22DF40060(v1);
    return 0;
  }

  result = v3;
  if (*v1 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v41 = type metadata accessor for XPCObject(0);
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v43 = 0;
  v44 = 0xE000000000000000;
  LOBYTE(v42) = a2;
  sub_22DF63FF4();
  MEMORY[0x2318DCA20](2683, 0xE200000000000000);
  v40 = a1;
  v10 = XPCDictionary.keys.getter(a1);
  v39 = *(v10 + 2);
  if (!v39)
  {
LABEL_17:

    v33 = sub_22DF638F4();
    v35 = v34;

    MEMORY[0x2318DCA20](v33, v35);

    MEMORY[0x2318DCA20](125, 0xE100000000000000);
    return v43;
  }

  v11 = 0;
  v38 = (v4 + 48);
  v12 = (v10 + 40);
  v13 = MEMORY[0x277D84F98];
  v37 = v10;
  while (v11 < *(v10 + 2))
  {
    v17 = *(v12 - 1);
    v16 = *v12;

    XPCDictionary.subscript.getter(v40, v9);
    if ((*v38)(v9, 1, v41) == 1)
    {
      goto LABEL_21;
    }

    v18 = v9;
    v19 = v6;
    sub_22DF3FF98(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v13;
    v21 = sub_22DEF08FC(v17, v16);
    v23 = v13[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v13[3] < v26)
    {
      sub_22DF627DC(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_22DEF08FC(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v32 = v21;
    sub_22DF62B18();
    v21 = v32;
    if (v27)
    {
LABEL_3:
      v14 = v21;

      v13 = v42;
      v15 = v42[7] + *(v4 + 72) * v14;
      v6 = v19;
      sub_22DF62DC0(v19, v15);
      goto LABEL_4;
    }

LABEL_13:
    v13 = v42;
    v42[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v13[6] + 16 * v21);
    *v29 = v17;
    v29[1] = v16;
    v6 = v19;
    sub_22DF3FF98(v19, v13[7] + *(v4 + 72) * v21);
    v30 = v13[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v13[2] = v31;
LABEL_4:
    ++v11;
    v12 += 2;
    v10 = v37;
    v9 = v18;
    if (v39 == v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF627DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCObject(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E38, &qword_22DF6A300);
  v40 = v4;
  result = sub_22DF64034();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22DF3FF98(v28, v41);
      }

      else
      {
        sub_22DF3FFFC(v28, v41);
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22DF3FF98(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_22DF62B18()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E38, &qword_22DF6A300);
  v4 = *v0;
  v5 = sub_22DF64024();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22DF3FFFC(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22DF3FF98(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_22DF62D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF62DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF62E28()
{
  result = qword_27DA47E30;
  if (!qword_27DA47E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E30);
  }

  return result;
}

uint64_t sub_22DF62E7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22DF62EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}