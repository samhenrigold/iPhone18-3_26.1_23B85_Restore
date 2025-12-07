uint64_t sub_25E6B2F00()
{
  v0 = sub_25E6B46CC();
  sub_25E6B4628(v0, qword_27FD009F8);
  sub_25E6B3E28(v0, qword_27FD009F8);
  return sub_25E6B46BC();
}

uint64_t PhotosSearchClientWorker.doWork(context:durationThreshold:)(uint64_t a1, double a2)
{
  *(v2 + 64) = a2;
  *(v2 + 56) = a1;
  v3 = sub_25E6B475C();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_25E6B476C();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E6B30B0, 0, 0);
}

uint64_t sub_25E6B30B0()
{
  v39 = v0;
  if (sub_25E6B470C())
  {
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = sub_25E6B46CC();
    sub_25E6B3E28(v2, qword_27FD009F8);
    v3 = v1;
    v4 = sub_25E6B46AC();
    v5 = sub_25E6B471C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38[0] = v7;
      *v6 = 136315394;
      v8 = sub_25E6B468C();
      v10 = sub_25E6B3E60(v8, v9, v38);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = sub_25E6B469C();
      v13 = sub_25E6B3E60(v11, v12, v38);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_25E6B2000, v4, v5, "TaskId: %s, TaskName: %s: asked to stop!", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v7, -1, -1);
      MEMORY[0x25F8BBAD0](v6, -1, -1);
    }

    sub_25E6B46FC();
    sub_25E6B4408(&qword_27FD009E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_25E6B46DC();
    swift_willThrow();

    v14 = *(v0 + 8);
LABEL_13:

    return v14(0);
  }

  *(v0 + 128) = 0;
  v15 = sub_25E6B470C();
  *(v0 + 33) = v15 & 1;
  if (v15)
  {
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 56);
    v17 = sub_25E6B46CC();
    sub_25E6B3E28(v17, qword_27FD009F8);
    v18 = v16;
    v19 = sub_25E6B46AC();
    v20 = sub_25E6B471C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136315650;
      v23 = sub_25E6B468C();
      v25 = sub_25E6B3E60(v23, v24, v38);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_25E6B469C();
      v28 = sub_25E6B3E60(v26, v27, v38);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2048;
      *(v21 + 24) = 0;
      _os_log_impl(&dword_25E6B2000, v19, v20, "TaskId: %s, TaskName: %s: currentDuration: %f", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v22, -1, -1);
      MEMORY[0x25F8BBAD0](v21, -1, -1);
    }

    v14 = *(v0 + 8);
    goto LABEL_13;
  }

  v31 = *(v0 + 80);
  v30 = *(v0 + 88);
  v32 = *(v0 + 72);
  sub_25E6B47AC();
  *(v0 + 40) = xmmword_25E6B49D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v33 = sub_25E6B4408(&qword_27FD009D0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25E6B478C();
  sub_25E6B4408(&qword_27FD009D8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25E6B477C();
  v34 = *(v31 + 8);
  *(v0 + 136) = v34;
  *(v0 + 144) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v30, v32);
  v35 = swift_task_alloc();
  *(v0 + 152) = v35;
  *v35 = v0;
  v35[1] = sub_25E6B3638;
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);

  return MEMORY[0x2822008C8](v37, v0 + 16, v36, v33);
}

uint64_t sub_25E6B3638()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    v3 = sub_25E6B3B54;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 136))(*(v2 + 96), *(v2 + 72));
    (*(v5 + 8))(v4, v6);
    v3 = sub_25E6B3790;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25E6B3790()
{
  v28 = v0;
  v1 = *(v0 + 128) + 0.25;
  if (v1 >= *(v0 + 64))
  {
    v3 = *(v0 + 33) ^ 1;
    goto LABEL_5;
  }

  *(v0 + 128) = v1;
  v2 = sub_25E6B470C();
  *(v0 + 33) = v2 & 1;
  if (v2)
  {
    v3 = 0;
LABEL_5:
    if (qword_27FD009F0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 56);
    v5 = sub_25E6B46CC();
    sub_25E6B3E28(v5, qword_27FD009F8);
    v6 = v4;
    v7 = sub_25E6B46AC();
    v8 = sub_25E6B471C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315650;
      v11 = sub_25E6B468C();
      v13 = sub_25E6B3E60(v11, v12, &v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_25E6B469C();
      v16 = sub_25E6B3E60(v14, v15, &v27);

      *(v9 + 14) = v16;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v1;
      _os_log_impl(&dword_25E6B2000, v7, v8, "TaskId: %s, TaskName: %s: currentDuration: %f", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F8BBAD0](v10, -1, -1);
      MEMORY[0x25F8BBAD0](v9, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17(v3 & 1);
  }

  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 72);
  sub_25E6B47AC();
  *(v0 + 40) = xmmword_25E6B49D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v22 = sub_25E6B4408(&qword_27FD009D0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25E6B478C();
  sub_25E6B4408(&qword_27FD009D8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25E6B477C();
  v23 = *(v20 + 8);
  *(v0 + 136) = v23;
  *(v0 + 144) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v19, v21);
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_25E6B3638;
  v26 = *(v0 + 96);
  v25 = *(v0 + 104);

  return MEMORY[0x2822008C8](v26, v0 + 16, v25, v22);
}

uint64_t sub_25E6B3B54()
{
  v23 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (qword_27FD009F0 != -1)
  {
    swift_once();
  }

  v1 = sub_25E6B46CC();
  sub_25E6B3E28(v1, qword_27FD009F8);
  v2 = sub_25E6B46AC();
  v3 = sub_25E6B472C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25E6B2000, v2, v3, "Task interruped while sleeping.", v6, 2u);
    MEMORY[0x25F8BBAD0](v6, -1, -1);
  }

  MEMORY[0x25F8BBA50](v5);

  v7 = v0[16];
  if (qword_27FD009F0 != -1)
  {
    swift_once();
  }

  v8 = v0[7];
  sub_25E6B3E28(v1, qword_27FD009F8);
  v9 = v8;
  v10 = sub_25E6B46AC();
  v11 = sub_25E6B471C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315650;
    v14 = sub_25E6B468C();
    v16 = sub_25E6B3E60(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_25E6B469C();
    v19 = sub_25E6B3E60(v17, v18, &v22);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v7;
    _os_log_impl(&dword_25E6B2000, v10, v11, "TaskId: %s, TaskName: %s: currentDuration: %f", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8BBAD0](v13, -1, -1);
    MEMORY[0x25F8BBAD0](v12, -1, -1);
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_25E6B3E28(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25E6B3E60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E6B3F2C(v11, 0, 0, 1, a1, a2);
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
    sub_25E6B4580(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_25E6B4534(v11);
  return v7;
}

unint64_t sub_25E6B3F2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E6B4038(a5, a6);
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
    result = sub_25E6B474C();
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

void *sub_25E6B4038(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E6B4084(a1, a2);
  sub_25E6B41B4(&unk_28705D1F8);
  return v3;
}

void *sub_25E6B4084(uint64_t a1, unint64_t a2)
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

  v6 = sub_25E6B42A0(v5, 0);
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

  result = sub_25E6B474C();
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
        v10 = sub_25E6B46EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E6B42A0(v10, 0);
        result = sub_25E6B473C();
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

uint64_t sub_25E6B41B4(uint64_t result)
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

  result = sub_25E6B4314(result, v11, 1, v3);
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

void *sub_25E6B42A0(uint64_t a1, uint64_t a2)
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

  sub_25E6B45DC(&qword_27FD009E8, &unk_25E6B4A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E6B4314(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E6B45DC(&qword_27FD009E8, &unk_25E6B4A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_25E6B4408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PhotosSearchClientWorker(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PhotosSearchClientWorker(_WORD *result, int a2, int a3)
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

uint64_t sub_25E6B4534(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25E6B4580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E6B45DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_25E6B4628(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}