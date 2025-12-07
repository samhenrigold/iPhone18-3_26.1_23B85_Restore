id LogCategory_AdvertisementCache(uint64_t a1)
{
  if (LogCategory_AdvertisementCache_onceToken != -1)
  {
    LogCategory_AdvertisementCache_cold_1();
  }

  v2 = LogCategory_AdvertisementCache_log;

  return v2;
}

uint64_t sub_2643C0A0C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2643C0A50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t finderStateChangedHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = LogCategory_Unspecified(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_2643BF000, v10, OS_LOG_TYPE_DEFAULT, "SPFinderStateManager Received SPFinderStateChangedNotification distributed notification.", &v14, 2u);
  }

  v12 = LogCategory_Unspecified(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138413058;
    v15 = a1;
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 2112;
    v21 = a5;
    _os_log_debug_impl(&dword_2643BF000, v12, OS_LOG_TYPE_DEBUG, "Finder State FWK: %@, %@, %@, %@", &v14, 0x2Au);
  }

  return [a2 updateStateBlock];
}

id LogCategory_Unspecified(uint64_t a1)
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v2 = LogCategory_Unspecified_log;

  return v2;
}

uint64_t sub_2643C6E78()
{
  swift_beginAccess();

  v2 = sub_2643C7B24(v1);

  if (v2)
  {
    sub_2643C933C();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x266736DF0](0x20747865746E6F43, 0xE90000000000005BLL);
    sub_2643C934C();
    MEMORY[0x266736DF0](0xD000000000000011, 0x80000002643CB040);
    return sub_2643C935C();
  }

  else
  {
    swift_beginAccess();
    sub_2643C7410();
    swift_endAccess();
    if (qword_27FF6B690 != -1)
    {
      swift_once();
    }

    v4 = sub_2643C928C();
    __swift_project_value_buffer(v4, qword_27FF6B8D0);
    v5 = sub_2643C926C();
    v6 = sub_2643C930C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2643BF000, v5, v6, "Booted SPOwner locationd Swift context", v7, 2u);
      MEMORY[0x266737420](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2643C70B0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for SwiftBootstrapManager.Context(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SwiftBootstrapManager.Context(_WORD *result, int a2, int a3)
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

uint64_t sub_2643C7210()
{
  sub_2643C938C();
  sub_2643C92BC();
  return sub_2643C939C();
}

uint64_t sub_2643C7284(uint64_t a1)
{
  sub_2643C938C();
  sub_2643C92BC();
  return sub_2643C939C();
}

uint64_t sub_2643C72D8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2643C936C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2643C7350()
{
  result = qword_27FF6B6A0;
  if (!qword_27FF6B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6B6A0);
  }

  return result;
}

uint64_t sub_2643C73A4()
{
  v0 = sub_2643C928C();
  __swift_allocate_value_buffer(v0, qword_27FF6B8D0);
  __swift_project_value_buffer(v0, qword_27FF6B8D0);
  return sub_2643C927C();
}

BOOL sub_2643C7410()
{
  v1 = *v0;
  sub_2643C938C();
  sub_2643C92BC();
  v2 = sub_2643C939C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_2643C7704(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_2643C74D8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6B6A8, &qword_2643CB280);
  result = sub_2643C932C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_2643C938C();
      sub_2643C92BC();
      result = sub_2643C939C();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2643C7704(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_2643C74D8(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_2643C7934(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_2643C938C();
      sub_2643C92BC();
      result = sub_2643C939C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_2643C7828();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_2643C937C();
  __break(1u);
  return result;
}

void *sub_2643C7828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6B6A8, &qword_2643CB280);
  v2 = *v0;
  v3 = sub_2643C931C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2643C7934(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6B6A8, &qword_2643CB280);
  result = sub_2643C932C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_2643C938C();
      sub_2643C92BC();
      result = sub_2643C939C();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2643C7B24(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_2643C938C();
  sub_2643C92BC();
  v2 = sub_2643C939C() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2643C7CA4()
{
  type metadata accessor for SwiftBootstrapManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  qword_27FF6B8E8 = v0;
  return result;
}

uint64_t static ObjCSwiftBridge.bootstrap(context:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2643C7DA4;

  return sub_2643C89D0(a1, a2);
}

uint64_t sub_2643C7DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2643C801C(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_2643C929C();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_2643C80EC;

  return sub_2643C89D0(v3, v5);
}

uint64_t sub_2643C80EC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_2643C925C();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

id ObjCSwiftBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCSwiftBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCSwiftBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ObjCSwiftBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ObjCSwiftBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2643C8354(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2643C9154;

  return v6();
}

uint64_t sub_2643C843C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2643C7DA4;

  return v7();
}

uint64_t sub_2643C8524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6B6B0, &qword_2643CB2C8);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_2643C8F0C(a3, v22 - v9);
  v11 = sub_2643C92FC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2643C8F7C(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2643C92EC();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_2643C92DC();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_2643C92AC() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_2643C8F7C(a3);

    return v20;
  }

LABEL_8:
  sub_2643C8F7C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2643C87E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2643C88D8;

  return v6(a1);
}

uint64_t sub_2643C88D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2643C89D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2643C89F0, 0, 0);
}

uint64_t sub_2643C89F0()
{
  if (sub_2643C936C())
  {
    v3 = v0 + 16;
    v2 = *(v0 + 16);
    v1 = *(v3 + 8);
    sub_2643C933C();

    MEMORY[0x266736DF0](v2, v1);
    MEMORY[0x266736DF0](93, 0xE100000000000000);
    return sub_2643C935C();
  }

  else
  {
    if (qword_27FF6B698 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2643C8B74;

    return sub_2643C6E58();
  }
}

uint64_t sub_2643C8B74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2643C8C8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2643C7DA4;

  return sub_2643C801C(v2, v3);
}

uint64_t sub_2643C8D40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2643C9154;

  return sub_2643C8354(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2643C8E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2643C9154;

  return sub_2643C843C(a1, v4, v5, v6);
}

uint64_t sub_2643C8F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6B6B0, &qword_2643CB2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2643C8F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6B6B0, &qword_2643CB2C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2643C8FE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2643C9154;

  return sub_2643C87E0(a1, v4);
}

uint64_t sub_2643C909C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2643C7DA4;

  return sub_2643C87E0(a1, v4);
}