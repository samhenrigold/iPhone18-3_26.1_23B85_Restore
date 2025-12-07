id sub_1DA8E37F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeDelegate_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 stopObservingForAuthenticationStateChanges];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for RemoteNotificationsProperties.DeviceObserver();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void *sub_1DA8E3914(uint64_t a1)
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE110EA0);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "Authentication state changed. Refreshing state.", v4, 2u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1DA7BABAC(result + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate, v7);

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1DA7B7B98();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void RemoteNotificationsProperties.captureState()()
{
  v2 = *(v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84A0B4(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DA8E3C18@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 32) = 1701605234;
  *(inited + 16) = xmmword_1DA960970;
  *(inited + 40) = 0xE400000000000000;
  v5 = 0x7265646E6573;
  if (*(a1 + 16))
  {
    v5 = 0x7265766965636572;
  }

  v6 = MEMORY[0x1E69E61C8];
  v7 = 0xE600000000000000;
  if (*(a1 + 16))
  {
    v7 = 0xE800000000000000;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v6;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 88) = 0x6C62617061437369;
  *(inited + 96) = 0xE900000000000065;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties, &protocol conformance descriptor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v8 = *(a1 + 48);
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6398];
  *(v4 + 128) = MEMORY[0x1E69E6370];
  *(v4 + 136) = v10;
  *(v4 + 104) = v8;
  *(v4 + 144) = 0x656C62616E457369;
  *(v4 + 152) = 0xE900000000000064;
  v11 = sub_1DA8E4CB8(1);
  *(v4 + 184) = v9;
  *(v4 + 192) = v10;
  *(v4 + 160) = v11 & 1;
  *(v4 + 200) = 0x6576697463417369;
  *(v4 + 208) = 0xE800000000000000;
  swift_getKeyPath();
  sub_1DA93FB74();

  v12 = *(a1 + 49);
  *(v4 + 240) = v9;
  *(v4 + 248) = v10;
  *(v4 + 216) = v12;
  *(v4 + 256) = 0x73656369766564;
  *(v4 + 264) = 0xE700000000000000;
  v32 = v4;
  swift_getKeyPath();
  sub_1DA93FB74();

  v31 = a1;
  v13 = *(a1 + 56);
  if (v13 >> 62)
  {
    v30 = *(a1 + 56);
    v14 = sub_1DA941264();
    v13 = v30;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_17;
  }

  v34 = MEMORY[0x1E69E7CC0];
  v16 = v13;

  result = sub_1DA82A778(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v15 = v34;
    v19 = v16;
    v35 = v16 & 0xC000000000000001;
    v20 = v16;
    do
    {
      if (v35)
      {
        MEMORY[0x1E1272460](v18, v19);
      }

      else
      {
      }

      v21 = sub_1DA8A68D8();
      v23 = v22;

      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DA82A778((v24 > 1), v25 + 1, 1);
      }

      ++v18;
      *(v34 + 16) = v25 + 1;
      v26 = v34 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v19 = v20;
    }

    while (v14 != v18);

LABEL_17:
    *(v32 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    v27 = sub_1DA7AD11C(&unk_1EE110CA0, &qword_1ECBD6790, &qword_1DA9594C0, MEMORY[0x1E69E6358]);
    *(v32 + 272) = v15;
    *(v32 + 304) = v27;
    *(v32 + 312) = 0x646E65536E6163;
    *(v32 + 320) = 0xE700000000000000;
    swift_beginAccess();
    v28 = [*(v31 + 40) canSend];
    *(v32 + 352) = MEMORY[0x1E69E6370];
    *(v32 + 360) = MEMORY[0x1E69E6398];
    *(v32 + 328) = v28;
    v29 = sub_1DA849274(v32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
    result = swift_arrayDestroy();
    *a2 = v29;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1DA8E4088()
{
  v2 = *(*v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA70(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DA8E4110()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110EA0);
  __swift_project_value_buffer(v0, qword_1EE110EA0);
  return sub_1DA940594();
}

uint64_t sub_1DA8E4190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  result = sub_1DA941334();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DA941764();

    sub_1DA940AB4();
    result = sub_1DA941794();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DA8E43B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationSource(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  result = sub_1DA941334();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v31 = a2;
  v32 = result;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v33 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v34 = *(v9 + 72);
    sub_1DA82A798(v20 + v34 * (v17 | (v15 << 6)), v11);
    sub_1DA941764();
    if (*(v11 + 1))
    {
      sub_1DA941784();
      a2 = v31;
      sub_1DA940AB4();
    }

    else
    {
      sub_1DA941784();
    }

    sub_1DA940AB4();
    sub_1DA941784();
    result = sub_1DA941794();
    v12 = v32;
    v21 = -1 << *(v32 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1DA8B9950(v11, *(v12 + 48) + v24 * v34);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    v14 = v33;
    if (!a3)
    {
LABEL_31:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_31;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v33 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DA8E46C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AA0, &unk_1DA95F370);
  result = sub_1DA941334();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1DA941104();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1DA8E48B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1DA8E4944(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1DA8E4944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1DA8E46C0(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DA8E4AB0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DA8E4BA4;

  return v5(v2 + 32);
}

uint64_t sub_1DA8E4BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DA8E4CB8(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1DA940A04();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1DA941154();
    swift_unknownObjectRelease();
    sub_1DA848FE8(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = a1;
  }

  return v6 & 1;
}

uint64_t sub_1DA8E4DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA8DD574(a1, v4, v5, v6);
}

unint64_t sub_1DA8E4EA8()
{
  result = qword_1ECBD69E8;
  if (!qword_1ECBD69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69E8);
  }

  return result;
}

uint64_t sub_1DA8E4F14(uint64_t a1)
{
  result = sub_1DA93FBB4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DA8E5150(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_1DA940FC4();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33[3] = type metadata accessor for RemoteNotificationsProperties(0);
  v33[4] = &off_1F5637B28;
  v33[0] = a3;
  v27 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_idsService;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_sharingManager;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_queue;
  v11 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v24[0] = "v24@?0@NSSet8@NSError16";
  v24[1] = v11;
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v28);
  *&a4[v25] = sub_1DA941004();
  sub_1DA7BABAC(v33, &a4[OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate]);
  v12 = v29;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v13 = type metadata accessor for RemoteNotificationsProperties.DeviceObserver();
  v32.receiver = a4;
  v32.super_class = v13;
  v14 = objc_msgSendSuper2(&v32, sel_init);
  v15 = *&v14[OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_queue];
  v16 = v14;
  [v12 addDelegate:v16 queue:v15];
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v16;
  if (Strong)
  {
    v19 = Strong;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1DA8E5A50;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_116;
    v21 = _Block_copy(aBlock);

    v22 = [v19 queue];
    [v19 startObservingForAuthenticationStateChanges:v21 queue:v22];

    _Block_release(v21);
    v18 = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v16;
}

void sub_1DA8E55A4(void *a1)
{
  [a1 remoteNotificationsSetting];
  v2 = *(v1 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1DA8E562C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DA940AE4();

    return sub_1DA940B34();
  }

  return result;
}

uint64_t sub_1DA8E56DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA8E5724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA8E2C3C(a1, v4, v5, v7, v6);
}

unint64_t sub_1DA8E5878()
{
  result = qword_1EE110BC8;
  if (!qword_1EE110BC8)
  {
    sub_1DA7AF3EC(255, &qword_1EE110BD8, 0x1E69CDE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110BC8);
  }

  return result;
}

uint64_t objectdestroy_89Tm(void (*a1)(void, __n128))
{
  swift_unknownObjectRelease();

  (a1)(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DA8E5938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7660;

  return sub_1DA8DE474(a1, v4, v5, v7, v6);
}

uint64_t sub_1DA8E59F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684() & 1;
  }
}

void sub_1DA8E5A74()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);

  sub_1DA8E17E4();
}

uint64_t sub_1DA8E5AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7660;

  return sub_1DA81D4C8(a1, v4);
}

uint64_t sub_1DA8E5B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7470;

  return sub_1DA81D4C8(a1, v4);
}

uint64_t sub_1DA8E5C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7660;

  return sub_1DA928D40(a1, v4);
}

uint64_t sub_1DA8E5D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7660;

  return sub_1DA8E4AB0(a1, v4);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA8E5E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA8DDE98(a1, v4, v5, v6);
}

unint64_t sub_1DA8E5F38()
{
  result = qword_1ECBD6B08;
  if (!qword_1ECBD6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B08);
  }

  return result;
}

uint64_t sub_1DA8E6020(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v8 = 0x206465766F6D6572;
    MEMORY[0x1E1271BD0](a1, a2);
  }

  else
  {
    v8 = 0x5B20646E756F66;
    v3 = [a1 description];
    v4 = sub_1DA940A14();
    v6 = v5;

    MEMORY[0x1E1271BD0](v4, v6);
  }

  MEMORY[0x1E1271BD0](93, 0xE100000000000000);
  return v8;
}

uint64_t sub_1DA8E60E4(uint64_t *a1, uint64_t *a2)
{
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_1DA822D04();
      return sub_1DA941114() & 1;
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_1DA941684();
}

id sub_1DA8E6198(void *a1)
{
  v1 = a1;
  v2 = [a1 domainIdentifier];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1DA940A14();
  v6 = v5;

  if (v4 == 0xD000000000000022 && 0x80000001DA950740 == v6)
  {
  }

  else
  {
    v8 = sub_1DA941684();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_43;
    }
  }

  v10 = [v1 uniqueIdentifier];
  if (!v10)
  {
    sub_1DA940A14();
    v10 = sub_1DA940A04();
  }

  v11 = &selRef_imageDataForContentURL_;
  v12 = [v1 attributeSet];
  v13 = [v12 creator];

  if (v13)
  {
    sub_1DA940A14();
    v43 = v14;
  }

  else
  {
    v43 = 0;
  }

  v15 = [v1 attributeSet];
  v16 = [v15 threadIdentifier];

  if (v16)
  {
    v40 = sub_1DA940A14();
    v42 = v17;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v18 = [v1 attributeSet];
  v19 = [v18 providerDataTypeIdentifiers];

  v41 = v1;
  v44 = v10;
  if (v19)
  {
    v20 = sub_1DA940BE4();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v9 = *(v20 + 16);
  v21 = v20 + 40;
  v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v23 = v21 + 16 * v1;
  while (v9 != v1)
  {
    if (v1 >= *(v20 + 16))
    {
      __break(1u);
LABEL_48:
      v9 = sub_1DA7B6928((v23 > 1), v21, 1, v9);
LABEL_35:
      *(v9 + 2) = v21;
      v34 = &v9[16 * v11];
      *(v34 + 4) = 0xD000000000000028;
      *(v34 + 5) = 0x80000001DA955900;
      if (v43)
      {

        goto LABEL_43;
      }

      goto LABEL_38;
    }

    v1 = v1 + 1;
    v11 = v23 + 16;

    v24 = sub_1DA93FE94();
    v26 = v25;

    v23 = v11;
    if (v26)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DA7B6928(0, *(v22 + 2) + 1, 1, v22);
      }

      v11 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v11 >= v27 >> 1)
      {
        v22 = sub_1DA7B6928((v27 > 1), v11 + 1, 1, v22);
      }

      *(v22 + 2) = v11 + 1;
      v28 = &v22[16 * v11];
      *(v28 + 4) = v24;
      *(v28 + 5) = v26;
      goto LABEL_21;
    }
  }

  if (!*(v22 + 2))
  {

    v9 = sub_1DA7B6928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v23 = *(v9 + 3);
    v21 = v11 + 1;
    if (v11 >= v23 >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v43)
  {
    v29 = [v41 attributeSet];
    v30 = [v29 summarizationContentTopLine];

    v31 = sub_1DA940A04();

    v32 = sub_1DA940BD4();

    if (v42)
    {
      v33 = sub_1DA940A04();
    }

    else
    {
      v33 = 0;
    }

    v1 = [objc_allocWithZone(UNCSummary) initWithBundleIdentifier:v31 requestIdentifiers:v32 spotlightIdentifier:v44 groupSummary:1 content:v30 threadIdentifier:v33];

    return v1;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DA7B6928(0, *(v9 + 2) + 1, 1, v9);
  }

  v36 = *(v9 + 2);
  v35 = *(v9 + 3);
  if (v36 >= v35 >> 1)
  {
    v9 = sub_1DA7B6928((v35 > 1), v36 + 1, 1, v9);
  }

  *(v9 + 2) = v36 + 1;
  v37 = &v9[16 * v36];
  *(v37 + 4) = 0xD000000000000014;
  *(v37 + 5) = 0x80000001DA9558E0;
LABEL_43:
  sub_1DA8E670C();
  swift_allocError();
  *v38 = v9;
  swift_willThrow();
  return v1;
}

unint64_t sub_1DA8E670C()
{
  result = qword_1EE111440;
  if (!qword_1EE111440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111440);
  }

  return result;
}

double sub_1DA8E6760@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DA960970;
  if (qword_1EE115568 != -1)
  {
    swift_once();
  }

  v3 = unk_1EE11B030;
  *(v2 + 32) = qword_1EE11B028;
  *(v2 + 40) = v3;
  v4 = qword_1EE115558;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EE11B010;
  *(v2 + 48) = qword_1EE11B008;
  *(v2 + 56) = v5;
  v6 = qword_1EE115570;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EE11B040;
  *(v2 + 64) = qword_1EE11B038;
  *(v2 + 72) = v7;
  v8 = qword_1EE115578;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_1EE11B050;
  *(v2 + 80) = qword_1EE11B048;
  *(v2 + 88) = v9;
  v10 = qword_1EE115548;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EE11B000;
  *(v2 + 96) = qword_1EE11AFF8;
  *(v2 + 104) = v11;
  v12 = qword_1EE115560;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_1EE11B020;
  *(v2 + 112) = qword_1EE11B018;
  *(v2 + 120) = v13;
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = MEMORY[0x1E69E7CC0];

  return result;
}

uint64_t sub_1DA8E699C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DA8E69E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1DA8E6A58()
{
  result = qword_1ECBD6B10;
  if (!qword_1ECBD6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B10);
  }

  return result;
}

void sub_1DA8E6AAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);

  v5 = (v3 + 40);
  v6 = -v4;
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
LABEL_5:

      return;
    }

    if (++v7 >= *(v3 + 16))
    {
      break;
    }

    v8 = v5 + 2;
    v9 = *v5;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    v12 = v11(a1, a2, ObjectType, v9);
    swift_unknownObjectRelease();
    v5 = v8;
    if (v12)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1DA8E6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = *(v3 + 16);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = ( + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);
      swift_unknownObjectRetain();
      v12(a1, a2, a3, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1DA8E6CB0()
{
  sub_1DA941364();

  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
  v3 = MEMORY[0x1E1271CD0](v1, v2);
  v5 = v4;

  MEMORY[0x1E1271BD0](v3, v5);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t sub_1DA8E6DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a1;
  v5 = sub_1DA93FEC4();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1DA9401F4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8E6EF0, 0, 0);
}

uint64_t sub_1DA8E6EF0(uint64_t a1)
{
  v77 = v1;
  v2 = sub_1DA9401C4();
  if (v2)
  {
    v3 = v2;
    if (qword_1ECBD4780 != -1)
    {
      swift_once();
    }

    v5 = *(v1 + 104);
    v4 = *(v1 + 112);
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
    v8 = *(v1 + 40);
    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1ECBD6B18);
    v10 = *(v7 + 16);
    v10(v4, v8, v6);
    v74 = v10;
    v10(v5, v8, v6);

    v11 = v3;
    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 104);
    v16 = *(v1 + 112);
    v17 = v3;
    v19 = *(v1 + 80);
    v18 = *(v1 + 88);
    v75 = v17;
    if (v14)
    {
      v67 = *(v1 + 104);
      v20 = *(v1 + 64);
      v21 = *(v1 + 72);
      v22 = *(v1 + 56);
      v69 = *(v1 + 48);
      v72 = v13;
      v23 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v23 = 136315906;
      log = v12;
      sub_1DA940124();
      sub_1DA889240(&qword_1EE110EE0, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0F8]);
      v24 = sub_1DA941614();
      v68 = v11;
      v26 = v25;
      (*(v20 + 8))(v21, v22);
      v27 = *(v18 + 8);
      v27(v16, v19);
      v28 = sub_1DA7AE6E8(v24, v26, &v76);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = sub_1DA940014();
      v31 = v30;
      v27(v67, v19);
      v32 = sub_1DA7AE6E8(v29, v31, &v76);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2080;
      *(v1 + 16) = *(v69 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v33 = sub_1DA940A74();
      v35 = sub_1DA7AE6E8(v33, v34, &v76);

      *(v23 + 24) = v35;
      *(v23 + 32) = 2112;
      v11 = v68;
      *(v23 + 34) = v68;
      *v71 = v75;
      v36 = v68;
      _os_log_impl(&dword_1DA7A9000, log, v72, "Saving settings from: %s for bundleIdentifier: %s to: %s values: %@", v23, 0x2Au);
      sub_1DA828378(v71);
      MEMORY[0x1E12739F0](v71, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v73, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);
    }

    else
    {

      v54 = *(v18 + 8);
      v54(v15, v19);
      v54(v16, v19);
    }

    v55 = v11;
    v56 = *(v1 + 80);
    v57 = *(v1 + 40);
    v58 = *(v1 + 32);
    v59 = *(*(v1 + 48) + 24);
    ObjectType = swift_getObjectType();
    v61 = v55;
    v62 = sub_1DA940014();
    (*(v59 + 16))(v75, v62, v63, ObjectType, v59);

    v74(v58, v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  else
  {
    if (qword_1ECBD4780 != -1)
    {
      swift_once();
    }

    v38 = *(v1 + 88);
    v37 = *(v1 + 96);
    v39 = *(v1 + 80);
    v40 = *(v1 + 40);
    v41 = sub_1DA9405A4();
    __swift_project_value_buffer(v41, qword_1ECBD6B18);
    (*(v38 + 16))(v37, v40, v39);
    v42 = sub_1DA940584();
    v43 = sub_1DA940F34();
    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v1 + 88);
    v45 = *(v1 + 96);
    v47 = *(v1 + 80);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v49;
      *v48 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A8]);
      v50 = sub_1DA941614();
      v52 = v51;
      (*(v46 + 8))(v45, v47);
      v53 = sub_1DA7AE6E8(v50, v52, &v76);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1DA7A9000, v42, v43, "Notification already has source - skipping fetch: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12739F0](v49, -1, -1);
      MEMORY[0x1E12739F0](v48, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v64 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    *(v64 + 24) = &type metadata for SectionSettingsSaveActor.ActorError;
    *(v64 + 32) = sub_1DA8E773C();
    sub_1DA93FF14();
    sub_1DA93FF34();
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  swift_storeEnumTagMultiPayload();

  v65 = *(v1 + 8);

  return v65();
}

uint64_t sub_1DA8E7610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA8E6DB8(a1, v6, a3);
}

uint64_t sub_1DA8E76BC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B18);
  __swift_project_value_buffer(v0, qword_1ECBD6B18);
  return sub_1DA940594();
}

unint64_t sub_1DA8E773C()
{
  result = qword_1ECBD6B30;
  if (!qword_1ECBD6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B30);
  }

  return result;
}

unint64_t sub_1DA8E77A4()
{
  result = qword_1ECBD6B38;
  if (!qword_1ECBD6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B38);
  }

  return result;
}

unint64_t sub_1DA8E77F8(uint64_t a1)
{
  *(a1 + 8) = sub_1DA8E77A4();
  result = sub_1DA8E7828();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA8E7828()
{
  result = qword_1ECBD6B40;
  if (!qword_1ECBD6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B40);
  }

  return result;
}

uint64_t XPCSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCSettingsProvider.init()();
  return v0;
}

uint64_t XPCSettingsProvider.init()()
{
  v9 = sub_1DA940FC4();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v8[0] = "tionSettingsSaveActor";
  v8[1] = v6;
  sub_1DA940824();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DA7AD038(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t XPCSettingsProvider.deinit()
{
  if (*(v0 + 24))
  {

    sub_1DA940634();
  }

  return v0;
}

uint64_t XPCSettingsProvider.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    sub_1DA940634();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8E7C44()
{
  v1 = *v0;
  v2 = sub_1DA9405E4();
  MEMORY[0x1EEE9AC00](v2);
  if (UNCOneness())
  {
    if (!v0[3])
    {
      sub_1DA940674();
      v3 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1DA9596E0;
      v5 = v3;
      sub_1DA9405D4();
      v24 = v4;
      sub_1DA7AD038(&unk_1EE110D10, MEMORY[0x1E69E8498], MEMORY[0x1E69E84A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
      sub_1DA7AD0C8(&qword_1EE110CD0, &unk_1ECBD5598, &qword_1DA95B230);
      sub_1DA9411D4();
      v11 = sub_1DA9405C4();
      v0[3] = v11;

      sub_1DA9405F4();

      sub_1DA940644();
      if (qword_1ECBD4798 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1ECBD6B68);

      v13 = sub_1DA940584();
      v14 = sub_1DA940F34();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23[0] = v16;
        *v15 = 136446466;
        v24 = v11;

        v17 = sub_1DA940A74();
        v19 = sub_1DA7AE6E8(v17, v18, v23);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v24 = v1;
        swift_getMetatypeMetadata();
        v20 = sub_1DA940A74();
        v22 = sub_1DA7AE6E8(v20, v21, v23);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_1DA7A9000, v13, v14, "Session: %{public}s for %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v16, -1, -1);
        MEMORY[0x1E12739F0](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA9405A4();
    __swift_project_value_buffer(v6, qword_1ECBD6B68);
    v7 = sub_1DA940584();
    v8 = sub_1DA940F34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DA7A9000, v7, v8, "Remote notifications feature is disabled. This interface will not function.", v9, 2u);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    return 0;
  }
}

double sub_1DA8E8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA940744();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4798 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBD6B68);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_1DA940584();
  v11 = sub_1DA940F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    sub_1DA7AD038(&qword_1ECBD5E80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "XPC session cancelled: %{public}@", v13, 0xCu);
    sub_1DA828378(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    v17 = v13;
    a2 = v20;
    MEMORY[0x1E12739F0](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(a2 + 24) = 0;

  return result;
}

id sub_1DA8E85E8(uint64_t a1, uint64_t a2)
{

  if (sub_1DA8E7C44() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B80, &unk_1DA9614C8), sub_1DA8EC7FC(), sub_1DA8EE9E4(&qword_1ECBD6B90, &unk_1ECBD6B98, &unk_1DA961854, MEMORY[0x1E69E7C88]), sub_1DA940664(), , v8))
  {

    v2 = *(v8 + 16);

    return v2;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1ECBD6B68);
    v5 = sub_1DA940584();
    v6 = sub_1DA940F14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "Settings fetch didn't fail but returned nil.", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    return 0;
  }
}

double sub_1DA8E88F8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    type metadata accessor for CodableUNNotificationSettings(0);
    *(swift_allocObject() + 16) = a1;
  }

  v4 = a1;
  if (sub_1DA8E7C44())
  {
    sub_1DA8EC7FC();
    sub_1DA940624();
  }

  else
  {
  }

  return result;
}

void XPCSettingsProvider.notificationSources(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (!sub_1DA8E7C44())
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BA8, &qword_1DA9614D8);
  sub_1DA8EC7FC();
  sub_1DA8EC890();
  sub_1DA940664();
  if (!v2)
  {

    if (v23)
    {
      v24 = v23;
      if (!a1)
      {
        return;
      }

      sub_1DA8ECA18(&v24, a1, a2);
      v17 = v24[2];
      if (v13 > v17)
      {
        __break(1u);
      }

      else if ((v13 & 0x8000000000000000) == 0)
      {
        v18 = v13;
        if (!__OFADD__(v17, v13 - v17))
        {
          v19 = v13;
          v20 = v24;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v18 > v20[3] >> 1)
          {
            if (v17 <= v18)
            {
              v22 = v18;
            }

            else
            {
              v22 = v17;
            }

            v24 = sub_1DA885D48(isUniquelyReferenced_nonNull_native, v22, 1, v20);
          }

          sub_1DA8ECE0C(v19, v17, 0);
          return;
        }

LABEL_29:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v14 = sub_1DA9405A4();
    __swift_project_value_buffer(v14, qword_1ECBD6B68);
    v7 = sub_1DA940584();
    v15 = sub_1DA940F14();
    if (os_log_type_enabled(v7, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DA7A9000, v7, v15, "Source fetch didn't fail but returned nil.", v16, 2u);
      MEMORY[0x1E12739F0](v16, -1, -1);
    }

    goto LABEL_14;
  }

  if (qword_1ECBD4798 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBD6B68);
  v6 = v2;
  v7 = sub_1DA940584();
  v8 = sub_1DA940F14();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "Source fetch failed: %{public}@", v9, 0xCu);
    sub_1DA828378(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);

LABEL_14:
    return;
  }
}

uint64_t XPCSettingsProvider.notificationSource(with:remote:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DA9596E0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = XPCSettingsProvider.notificationSources(with:remote:)(v8, v4);

  if (*(v9 + 16))
  {
    v10 = type metadata accessor for NotificationSource(0);
    v17 = *(v10 - 8);
    sub_1DA82A798(v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), a4);

    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = type metadata accessor for NotificationSource(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t XPCSettingsProvider.notificationSources(with:remote:)(uint64_t a1, char a2)
{

  if (sub_1DA8E7C44() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BA8, &qword_1DA9614D8), sub_1DA8EC7FC(), sub_1DA8EC890(), sub_1DA940664(), , v7))
  {

    return v7;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1ECBD6B68);
    v4 = sub_1DA940584();
    v5 = sub_1DA940F14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "Source fetch didn't fail but returned nil.", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

id XPCSettingsProvider.systemSettings.getter()
{
  v0 = sub_1DA9407A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1DA8E7C44())
  {
    memset(&v10[8], 0, 24);
    v10[32] = 4;
    sub_1DA8EC7FC();
    sub_1DA940654();

    type metadata accessor for CodableUNNotificationSystemSettings(0);
    sub_1DA7AD038(qword_1ECBD6BD8, type metadata accessor for CodableUNNotificationSystemSettings, &unk_1DA961854);
    sub_1DA940794();
    (*(v1 + 8))(v3, v0);
    v8 = *(v11 + 16);

    return v8;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v4 = sub_1DA9405A4();
    __swift_project_value_buffer(v4, qword_1ECBD6B68);
    v5 = sub_1DA940584();
    v6 = sub_1DA940F14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v6, "System settings fetch didn't fail but returned nil.", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x1E69DF288]) init];
  }
}

double XPCSettingsProvider.systemSettings.setter(void *a1, __n128 a2)
{
  type metadata accessor for CodableUNNotificationSystemSettings(0);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  if (sub_1DA8E7C44())
  {
    sub_1DA8EC7FC();
    sub_1DA940624();
  }

  else
  {
  }

  return result;
}

double (*XPCSettingsProvider.systemSettings.modify(id *a1))(void **a1, char a2, __n128 a3)
{
  a1[1] = v1;
  *a1 = XPCSettingsProvider.systemSettings.getter();
  return sub_1DA8E9984;
}

double sub_1DA8E9984(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  if ((a2 & 1) == 0)
  {
    return XPCSettingsProvider.systemSettings.setter(v3, a3);
  }

  v6 = v3;
  XPCSettingsProvider.systemSettings.setter(v6, v4);

  return result;
}

uint64_t sub_1DA8E99EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v59 = a5;
  v57 = a4;
  v58 = a3;
  v60 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D50, &qword_1DA961BD0);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D58, &qword_1DA961BD8);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D60, &qword_1DA961BE0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D68, &qword_1DA961BE8);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D70, &qword_1DA961BF0);
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D78, &qword_1DA961BF8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D80, &unk_1DA961C00);
  v22 = *(v21 - 8);
  v62 = v21;
  v63 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8EF3AC();
  v61 = v24;
  sub_1DA941834();
  if (v59 <= 1u)
  {
    if (v59)
    {
      LOBYTE(v66) = 1;
      sub_1DA8EF550();
      v41 = v61;
      v40 = v62;
      sub_1DA9415A4();
      v66 = v60;
      v65[0] = 0;
      type metadata accessor for CodableUNNotificationSettings(0);
      sub_1DA7AD038(&qword_1ECBD6CF8, type metadata accessor for CodableUNNotificationSettings, &unk_1DA961804);
      v42 = v64;
      sub_1DA9415C4();
      if (!v42)
      {
        LOBYTE(v66) = 1;
        sub_1DA9415D4();
      }

      (*(v50 + 8))(v16, v14);
      return (*(v63 + 8))(v41, v40);
    }

    else
    {
      v30 = v18;
      LOBYTE(v66) = 0;
      sub_1DA8EF5A4();
      v32 = v61;
      v31 = v62;
      sub_1DA9415A4();
      sub_1DA9415D4();
      (*(v30 + 8))(v20, v17);
      return (*(v63 + 8))(v32, v31);
    }
  }

  else
  {
    if (v59 == 2)
    {
      LOBYTE(v66) = 3;
      sub_1DA8EF4A8();
      v25 = v51;
      v27 = v61;
      v26 = v62;
      sub_1DA9415A4();
      v66 = v60;
      type metadata accessor for CodableUNNotificationSystemSettings(0);
      sub_1DA7AD038(&qword_1ECBD6CE8, type metadata accessor for CodableUNNotificationSystemSettings, &unk_1DA961804);
      v28 = v53;
      sub_1DA941604();
      v34 = v52;
      goto LABEL_14;
    }

    if (v59 == 3)
    {
      LOBYTE(v66) = 5;
      sub_1DA8EF400();
      v25 = v54;
      v27 = v61;
      v26 = v62;
      sub_1DA9415A4();
      v66 = v60;
      v65[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
      sub_1DA8EF6F4(&qword_1ECBD6DA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v28 = v56;
      v29 = v64;
      sub_1DA941604();
      if (v29)
      {
        (*(v55 + 8))(v25, v28);
        return (*(v63 + 8))(v27, v26);
      }

      LOBYTE(v66) = 1;
      sub_1DA9415E4();
      v34 = v55;
LABEL_14:
      (*(v34 + 8))(v25, v28);
      return (*(v63 + 8))(v27, v26);
    }

    if (v57 | v58 | v60)
    {
      LOBYTE(v66) = 4;
      sub_1DA8EF454();
      v35 = v47;
      v37 = v61;
      v36 = v62;
      sub_1DA9415A4();
      v39 = v48;
      v38 = v49;
    }

    else
    {
      LOBYTE(v66) = 2;
      sub_1DA8EF4FC();
      v35 = v44;
      v37 = v61;
      v36 = v62;
      sub_1DA9415A4();
      v39 = v45;
      v38 = v46;
    }

    (*(v39 + 8))(v35, v38);
    return (*(v63 + 8))(v37, v36);
  }
}

uint64_t sub_1DA8EA250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6CA0, &unk_1DA9618A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8ED190();
  sub_1DA941834();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = v15;
  sub_1DA8ED1E4();
  sub_1DA941604();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DA8EA400(uint64_t a1)
{
  v2 = sub_1DA8EF454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA43C(uint64_t a1)
{
  v2 = sub_1DA8EF454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA8EA478()
{
  v1 = *v0;
  v2 = 0x73676E6974746573;
  v3 = 0xD000000000000014;
  v4 = 0x6372756F536C6C61;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657461647075;
  if (v1 != 1)
  {
    v5 = 0x65536D6574737973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DA8EA544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA8ED56C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DA8EA56C(uint64_t a1)
{
  v2 = sub_1DA8EF3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA5A8(uint64_t a1)
{
  v2 = sub_1DA8EF3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DA955C40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA8EA694(uint64_t a1)
{
  v2 = sub_1DA8EF5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA6D0(uint64_t a1)
{
  v2 = sub_1DA8EF5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA70C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1DA8EA738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA8EA808(uint64_t a1)
{
  v2 = sub_1DA8EF400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA844(uint64_t a1)
{
  v2 = sub_1DA8EF400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA880(uint64_t a1)
{
  v2 = sub_1DA8EF4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA8BC(uint64_t a1)
{
  v2 = sub_1DA8EF4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA8F8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x73676E6974746573;
  }
}

uint64_t sub_1DA8EA938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DA955C40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA8EAA1C(uint64_t a1)
{
  v2 = sub_1DA8EF550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAA58(uint64_t a1)
{
  v2 = sub_1DA8EF550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EAAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA8EAB20(uint64_t a1)
{
  v2 = sub_1DA8EF4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAB5C(uint64_t a1)
{
  v2 = sub_1DA8EF4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EAB98@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA8ED780(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DA8EABF0(uint64_t a1)
{
  v2 = sub_1DA8ED190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAC2C(uint64_t a1)
{
  v2 = sub_1DA8ED190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA8EAC68@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA8EE358(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DA8EACC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      strcpy(v9, "update(..., ");
      BYTE5(v9[1]) = 0;
      HIWORD(v9[1]) = -5120;
      a1 = a2;
      a2 = a3;
    }

    else
    {
      strcpy(v9, "settings(");
      WORD1(v9[1]) = 0;
      HIDWORD(v9[1]) = -385875968;
    }

    MEMORY[0x1E1271BD0](a1, a2, a3);
    goto LABEL_20;
  }

  if (a4 == 2)
  {
    return 0xD000000000000019;
  }

  if (a4 == 3)
  {
    v4 = a2;
    sub_1DA941364();

    strcpy(v9, "sourcesFor(");
    HIDWORD(v9[1]) = -352321536;
    v5 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v5);

    MEMORY[0x1E1271BD0](0x73656C646E756220, 0xEA0000000000202CLL);
    if (v4)
    {
      v6 = 0x65746F6D6572;
    }

    else
    {
      v6 = 0x6C61636F6CLL;
    }

    if (v4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1E1271BD0](v6, v7);

LABEL_20:
    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    return v9[0];
  }

  if (a2 | a1 | a3)
  {
    return 0x6372756F536C6C61;
  }

  else
  {
    return 0x65536D6574737973;
  }
}

uint64_t sub_1DA8EAF18(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = a3;
  v10 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417F4();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1DA83E640();
  sub_1DA941694();
  sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  sub_1DA7AF3EC(0, a2, v17);
  result = sub_1DA940F44();
  if (result)
  {
    v13 = result;
    sub_1DA828324(v14, v15);
    *(v10 + 16) = v13;
    __swift_destroy_boxed_opaque_existential_1(v16);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *sub_1DA8EB0A0(void *a1)
{
  v3 = v1;
  v5 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417F4();
  if (v2)
  {
    type metadata accessor for CodableNSSecureCoding(0, *(v5 + 80), v6, v7);
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1DA83E640();
  sub_1DA941694();
  sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  result = sub_1DA940F44();
  if (result)
  {
    v9 = result;
    sub_1DA828324(v10, v11);
    v3[2] = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8EB22C(void *a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA941824();
  v2 = objc_opt_self();
  v3 = *(v1 + 16);
  v11 = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = sub_1DA93F9A4();
    v8 = v7;

    v11 = v6;
    v12 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1DA83E88C();
    sub_1DA9416A4();
    sub_1DA828324(v11, v12);
  }

  else
  {
    v9 = v5;
    sub_1DA93F8C4();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DA8EB378@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA8EB448(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  swift_allocObject();
  sub_1DA7BABAC(a1, v12);
  v10 = sub_1DA8EAF18(v12, a2, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1DA8EB4F0()
{
  if (*(v0 + 32))
  {

    sub_1DA940704();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

double sub_1DA8EB578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = *v3;
  v6 = sub_1DA9407A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8EE750();
  v50 = a1;
  sub_1DA940794();
  v47 = v7;
  v48 = v6;
  v10 = v52[0];
  v11 = v52[1];
  v12 = v52[2];
  v13 = v53;
  if (qword_1ECBD4790 != -1)
  {
    swift_once();
  }

  v49 = v5;
  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1ECBD6B50);
  sub_1DA8EE7A4(v10, v11, v12, v13);
  v15 = sub_1DA940584();
  v16 = v12;
  v17 = sub_1DA940EF4();
  v18 = os_log_type_enabled(v15, v17);
  v45 = v10;
  v46 = v16;
  v44 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v42 = v19;
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v19 = 136315138;
    v20 = sub_1DA8EACC0(v10, v11, v16, v13);
    v21 = v10;
    v22 = v11;
    v24 = v23;
    sub_1DA8EE83C(v21, v22, v16, v13);
    v25 = sub_1DA7AE6E8(v20, v24, v52);

    v26 = v42;
    *(v42 + 1) = v25;
    v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v17;
    v28 = v26;
    _os_log_impl(&dword_1DA7A9000, v15, v27, "Handling message: %s", v26, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

  else
  {

    sub_1DA8EE83C(v10, v11, v16, v13);
    v22 = v11;
  }

  v43 = v3[3];
  v30 = v47;
  v31 = v48;
  (*(v47 + 16))(v9, v50, v48);
  v32 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v45;
  *(v34 + 16) = v45;
  *(v34 + 24) = v22;
  v36 = v9;
  v37 = v46;
  *(v34 + 32) = v46;
  v38 = v22;
  v39 = v44;
  *(v34 + 40) = v44;
  *(v34 + 48) = v3;
  (*(v30 + 32))(v34 + v32, v36, v31);
  *(v34 + v33) = v49;
  sub_1DA8EE7A4(v35, v38, v37, v39);

  sub_1DA940774();
  sub_1DA8EE83C(v35, v38, v37, v39);

  return result;
}

void sub_1DA8EBA68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void *a5)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      sub_1DA7BABAC((a5 + 5), &v36);
      v19 = v37;
      v20 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v21 = *(v20 + 16);
      sub_1DA8EE7A4(a1, a2, a3, 3u);
      v22 = v21(a1, a2 & 1, v19, v20);
      sub_1DA8EE968(a1, a2, a3, 3u);
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v36 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
      sub_1DA8EC94C(&qword_1ECBD6CC8, &unk_1ECBD6CD0, &protocol conformance descriptor for NotificationSource, MEMORY[0x1E69E6300]);
      sub_1DA940784();
    }

    else
    {
      if (a4 != 4)
      {
        __break(1u);
        return;
      }

      if (!(a3 | a2 | a1))
      {
        swift_beginAccess();
        sub_1DA7BABAC((a5 + 12), &v36);
        v31 = v37;
        v32 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, v37);
        v33 = (*(v32 + 8))(v31, v32);
        __swift_destroy_boxed_opaque_existential_1(&v36);
        type metadata accessor for CodableUNNotificationSystemSettings(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        v36 = v34;
        sub_1DA7AD038(&qword_1ECBD6CE8, type metadata accessor for CodableUNNotificationSystemSettings, &unk_1DA961804);
        sub_1DA940784();
LABEL_22:

        return;
      }

      sub_1DA7BABAC((a5 + 5), &v36);
      v10 = v37;
      v11 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v12 = (*(v11 + 8))(0, 0, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v36 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
      sub_1DA8EC94C(&qword_1ECBD6CC8, &unk_1ECBD6CD0, &protocol conformance descriptor for NotificationSource, MEMORY[0x1E69E6300]);
      sub_1DA940784();
    }

    return;
  }

  if (!a4)
  {
    v13 = a5[11];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    sub_1DA8EE9D0(a1, a2, a3, 0);
    v16 = v15(a1, a2, ObjectType, v13);
    swift_unknownObjectRelease();
    sub_1DA8EE968(a1, a2, a3, 0);
    if (!v16)
    {
      if (qword_1ECBD4788 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECBE3D90;
      v17 = qword_1ECBE3D90;
    }

    type metadata accessor for CodableUNNotificationSettings(0);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B80, &unk_1DA9614C8);
    sub_1DA8EE9E4(&qword_1ECBD6CF0, &qword_1ECBD6CF8, &unk_1DA961804, MEMORY[0x1E69E7C70]);
    sub_1DA940784();
    goto LABEL_22;
  }

  if (a4 == 1)
  {
    v8 = a5[11];
    if (a1)
    {
      v35 = *(a1 + 16);
      v9 = v35;
    }

    else
    {
      v35 = 0;
    }

    v28 = swift_getObjectType();
    v29 = *(v8 + 16);
    sub_1DA8EE9D0(a1, a2, a3, 1u);
    swift_unknownObjectRetain();
    v29(v35, a2, a3, v28, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = *(a1 + 16);
    swift_beginAccess();
    v25 = a5[15];
    v26 = a5[16];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 12), v25);
    v27 = *(v26 + 16);
    sub_1DA8EE9D0(a1, a2, a3, 2u);
    v27(v23, v25, v26);
    swift_endAccess();
    sub_1DA8EE968(a1, a2, a3, 2u);
  }
}

id sub_1DA8EC074()
{
  LOBYTE(v1) = 0;
  result = [objc_opt_self() settingsWithAuthorizationStatus:2 soundSetting:0 badgeSetting:0 alertSetting:0 notificationCenterSetting:0 lockScreenSetting:0 carPlaySetting:0 remoteNotificationsSetting:2 announcementSetting:0 criticalAlertSetting:0 timeSensitiveSetting:0 scheduledDeliverySetting:0 directMessagesSetting:0 alertStyle:0 showPreviewsSetting:2 groupingSetting:0 providesAppNotificationSettings:v1];
  qword_1ECBE3D90 = result;
  return result;
}

uint64_t sub_1DA8EC0EC(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DD0, &qword_1DA961C10);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DD8, &qword_1DA961C18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DE0, &qword_1DA961C20);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8EF5F8();
  v14 = v21;
  sub_1DA941834();
  if (v14)
  {
    v22 = 0;
    sub_1DA8EF6A0();
    sub_1DA9415A4();
    sub_1DA9415D4();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v23 = 1;
    sub_1DA8EF64C();
    v16 = v17;
    sub_1DA9415A4();
    (*(v18 + 8))(v16, v19);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1DA8EC40C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x69796C7265646E75;
  }
}

uint64_t sub_1DA8EC458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA955C60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA8EC544(uint64_t a1)
{
  v2 = sub_1DA8EF5F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC580(uint64_t a1)
{
  v2 = sub_1DA8EF5F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EC5BC(uint64_t a1)
{
  v2 = sub_1DA8EF64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC5F8(uint64_t a1)
{
  v2 = sub_1DA8EF64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EC634(uint64_t a1)
{
  v2 = sub_1DA8EF6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC670(uint64_t a1)
{
  v2 = sub_1DA8EF6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA8EC6AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DA8EEADC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1DA8EC6F4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B50);
  __swift_project_value_buffer(v0, qword_1ECBD6B50);
  return sub_1DA940594();
}

uint64_t sub_1DA8EC778()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B68);
  __swift_project_value_buffer(v0, qword_1ECBD6B68);
  return sub_1DA940594();
}

unint64_t sub_1DA8EC7FC()
{
  result = qword_1ECBD6B88;
  if (!qword_1ECBD6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B88);
  }

  return result;
}

void *sub_1DA8EC870(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_1DA8EC890()
{
  result = qword_1ECBD6BB0;
  if (!qword_1ECBD6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6BA8, &qword_1DA9614D8);
    sub_1DA8EC94C(&qword_1ECBD6BB8, &unk_1ECBD6BC8, &protocol conformance descriptor for NotificationSource, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6BB0);
  }

  return result;
}

uint64_t sub_1DA8EC94C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
    sub_1DA7AD038(a2, type metadata accessor for NotificationSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA8EC9E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1DA8ECA18(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for NotificationSource(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *a1;
  v18 = sub_1DA8ECD20(*a1, a2);
  if (v3)
  {
    goto LABEL_2;
  }

  v41 = a2;
  if (v19)
  {
    goto LABEL_2;
  }

  v39 = v16;
  v36 = v14;
  v37 = v11;
  v35 = a1;
  v42 = v18;
  v20 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    v22 = v17 + 2;
    v21 = v17[2];
    if (v20 == v21)
    {
LABEL_2:

      return;
    }

    v38 = v8;
    while (v20 < v21)
    {
      v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v43 = v17;
      v40 = v23;
      v24 = v17 + v23;
      v25 = *(v8 + 72);
      v26 = v25 * v20;
      v27 = v39;
      sub_1DA82A798(&v24[v25 * v20], v39);
      v28 = v4;
      v29 = v41(v27);
      sub_1DA82A7FC(v27);
      v44 = v28;
      if (v28)
      {
        goto LABEL_2;
      }

      if (v29)
      {
        v30 = v42;
        if (v20 == v42)
        {
          v4 = v44;
          v8 = v38;
          v17 = v43;
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v31 = *v22;
          if (v42 >= *v22)
          {
            goto LABEL_26;
          }

          v32 = v25 * v42;
          sub_1DA82A798(&v24[v25 * v42], v36);
          if (v20 >= v31)
          {
            goto LABEL_27;
          }

          sub_1DA82A798(&v24[v26], v37);
          v17 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1DA884B0C(v17);
          }

          v33 = v17 + v40;
          sub_1DA8C06C4(v37, v17 + v40 + v32);
          v4 = v44;
          if (v20 >= v17[2])
          {
            goto LABEL_28;
          }

          sub_1DA8C06C4(v36, &v33[v26]);
          *v35 = v17;
          v8 = v38;
          v30 = v42;
        }

        v42 = v30 + 1;
      }

      else
      {
        v4 = v44;
        v8 = v38;
        v17 = v43;
      }

      ++v20;
      v22 = v17 + 2;
      v21 = v17[2];
      if (v20 == v21)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DA8ECD20(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(type metadata accessor for NotificationSource(0) - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = a2(v8);
    if (v2 || (v10 & 1) == 0)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1DA8ECE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NotificationSource(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore26SettingsProviderXPCMessage33_8C7211D83F29B51BFC461C89FB2FE50ELLV0deF6ActionO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

unint64_t sub_1DA8ED190()
{
  result = qword_1ECBD6CA8;
  if (!qword_1ECBD6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CA8);
  }

  return result;
}

unint64_t sub_1DA8ED1E4()
{
  result = qword_1ECBD6CB0;
  if (!qword_1ECBD6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CB0);
  }

  return result;
}

unint64_t sub_1DA8ED238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1DA8ED38C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA8ED480(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8ED56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536D6574737973 && a2 == 0xEE0073676E697474 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DA955C00 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6372756F536C6C61 && a2 == 0xEA00000000007365 || (sub_1DA941684() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DA955C20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DA941684();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DA8ED780(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E00, &qword_1DA961C28);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E08, &qword_1DA961C30);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E10, &qword_1DA961C38);
  v51 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v56 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E18, &qword_1DA961C40);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v42 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E20, &qword_1DA961C48);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E28, &qword_1DA961C50);
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E30, &unk_1DA961C58);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DA8EF3AC();
  v18 = v58;
  sub_1DA941804();
  v19 = v18;
  if (!v18)
  {
    v20 = v12;
    v42 = v10;
    v22 = v56;
    v21 = v57;
    v58 = v14;
    v23 = sub_1DA941594();
    v24 = (2 * *(v23 + 16)) | 1;
    v61 = v23;
    v62 = v23 + 32;
    v63 = 0;
    v64 = v24;
    v25 = sub_1DA865350();
    if (v25 == 6 || v63 != v64 >> 1)
    {
      v28 = sub_1DA9413B4();
      swift_allocError();
      v30 = v29;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v30 = &type metadata for SettingsProviderXPCMessage.SettingsProviderXPCMessageAction;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v58 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }

    else if (v25 > 2u)
    {
      if (v25 == 3)
      {
        LOBYTE(v65) = 3;
        sub_1DA8EF4A8();
        sub_1DA941504();
        type metadata accessor for CodableUNNotificationSystemSettings(0);
        sub_1DA7AD038(qword_1ECBD6BD8, type metadata accessor for CodableUNNotificationSystemSettings, &unk_1DA961854);
        v36 = v46;
        sub_1DA941584();
        v37 = v58;
        (*(v51 + 8))(v22, v36);
        (*(v37 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v19 = v65;
      }

      else if (v25 == 4)
      {
        LOBYTE(v65) = 4;
        sub_1DA8EF454();
        v32 = v54;
        sub_1DA941504();
        (*(v47 + 8))(v32, v48);
        (*(v58 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v19 = 1;
      }

      else
      {
        LOBYTE(v65) = 5;
        sub_1DA8EF400();
        v39 = v21;
        sub_1DA941504();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        v60 = 0;
        sub_1DA8EF6F4(&qword_1EE110CC0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        v40 = v49;
        sub_1DA941584();
        v41 = v58;
        v19 = v65;
        v60 = 1;
        sub_1DA941564();
        (*(v52 + 8))(v39, v40);
        (*(v41 + 8))(v16, v13);
        swift_unknownObjectRelease();
      }
    }

    else if (v25)
    {
      v26 = v13;
      v27 = v58;
      if (v25 == 1)
      {
        LOBYTE(v65) = 1;
        sub_1DA8EF550();
        sub_1DA941504();
        type metadata accessor for CodableUNNotificationSettings(0);
        v60 = 0;
        sub_1DA7AD038(&unk_1ECBD6B98, type metadata accessor for CodableUNNotificationSettings, &unk_1DA961854);
        sub_1DA941544();
        v19 = v65;
        v60 = 1;
        sub_1DA941554();
        (*(v50 + 8))(v9, v53);
        (*(v27 + 8))(v16, v26);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v65) = 2;
        sub_1DA8EF4FC();
        v38 = v55;
        sub_1DA941504();
        (*(v44 + 8))(v38, v45);
        (*(v27 + 8))(v16, v26);
        swift_unknownObjectRelease();
        v19 = 0;
      }
    }

    else
    {
      LOBYTE(v65) = 0;
      sub_1DA8EF5A4();
      v33 = v20;
      sub_1DA941504();
      v34 = v58;
      v35 = v42;
      v19 = sub_1DA941554();
      (*(v43 + 8))(v33, v35);
      (*(v34 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v19;
}

void *sub_1DA8EE358(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D00, &qword_1DA9618B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8ED190();
  sub_1DA941804();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1DA8EEA80();
    sub_1DA941584();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void sub_1DA8EE4DC(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4790 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1ECBD6B50);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = sub_1DA940584();
  v9 = sub_1DA940F14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    sub_1DA7AD038(&qword_1ECBD5E80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "XPC connection cancelled: %{public}@", v10, 0xCu);
    sub_1DA828378(v11);
    MEMORY[0x1E12739F0](v11, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1DA8EE750()
{
  result = qword_1ECBD6CC0;
  if (!qword_1ECBD6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CC0);
  }

  return result;
}

void sub_1DA8EE7A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
    }

    else if (a4 == 3)
    {

      goto LABEL_6;
    }
  }

  else
  {
    if (!a4)
    {

      goto LABEL_6;
    }

    if (a4 == 1)
    {

LABEL_6:
    }
  }
}

double sub_1DA8EE83C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_9:

    return result;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_10:

  return result;
}

void sub_1DA8EE8CC()
{
  sub_1DA9407A4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);

  sub_1DA8EBA68(v1, v2, v3, v5, v4);
}

double sub_1DA8EE968(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DA8EE83C(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1DA8EE97C()
{
  result = qword_1ECBD6CE0;
  if (!qword_1ECBD6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CE0);
  }

  return result;
}

void sub_1DA8EE9D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1DA8EE7A4(a1, a2, a3, a4);
  }
}

uint64_t sub_1DA8EE9E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6B80, &unk_1DA9614C8);
    sub_1DA7AD038(a2, type metadata accessor for CodableUNNotificationSettings, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA8EEA80()
{
  result = qword_1ECBD6D08;
  if (!qword_1ECBD6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D08);
  }

  return result;
}

void *sub_1DA8EEADC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E38, &qword_1DA961C68);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E40, &qword_1DA961C70);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E48, &qword_1DA961C78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DA8EF5F8();
  v15 = v30;
  sub_1DA941804();
  if (!v15)
  {
    v30 = v10;
    v16 = sub_1DA941594();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1DA8675E4();
    v19 = v9;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1DA9413B4();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20);
      *v23 = &type metadata for XPCSettingsProviderServer.RequestError;
      v14 = v12;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1DA8EF64C();
      sub_1DA941504();
      v20 = v30;
      (*(v28 + 8))(v5, v27);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }

    else
    {
      v36 = 0;
      sub_1DA8EF6A0();
      sub_1DA941504();
      v25 = v30;
      v14 = sub_1DA941554();
      (*(v29 + 8))(v8, v6);
      (*(v25 + 8))(v12, v19);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v14;
}

uint64_t sub_1DA8EEFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DA941264();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DA941264();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8EF0EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DA8EF13C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA8EF190(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DA8EF1A8(void *result, int a2)
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

uint64_t sub_1DA8EF1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8EF230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DA8EF278(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DA8EF2A8()
{
  result = qword_1ECBD6D38;
  if (!qword_1ECBD6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D38);
  }

  return result;
}

unint64_t sub_1DA8EF300()
{
  result = qword_1ECBD6D40;
  if (!qword_1ECBD6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D40);
  }

  return result;
}

unint64_t sub_1DA8EF358()
{
  result = qword_1ECBD6D48;
  if (!qword_1ECBD6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D48);
  }

  return result;
}

unint64_t sub_1DA8EF3AC()
{
  result = qword_1ECBD6D88;
  if (!qword_1ECBD6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D88);
  }

  return result;
}

unint64_t sub_1DA8EF400()
{
  result = qword_1ECBD6D90;
  if (!qword_1ECBD6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D90);
  }

  return result;
}

unint64_t sub_1DA8EF454()
{
  result = qword_1ECBD6DA8;
  if (!qword_1ECBD6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DA8);
  }

  return result;
}

unint64_t sub_1DA8EF4A8()
{
  result = qword_1ECBD6DB0;
  if (!qword_1ECBD6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DB0);
  }

  return result;
}

unint64_t sub_1DA8EF4FC()
{
  result = qword_1ECBD6DB8;
  if (!qword_1ECBD6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DB8);
  }

  return result;
}

unint64_t sub_1DA8EF550()
{
  result = qword_1ECBD6DC0;
  if (!qword_1ECBD6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DC0);
  }

  return result;
}

unint64_t sub_1DA8EF5A4()
{
  result = qword_1ECBD6DC8;
  if (!qword_1ECBD6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DC8);
  }

  return result;
}

unint64_t sub_1DA8EF5F8()
{
  result = qword_1ECBD6DE8;
  if (!qword_1ECBD6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DE8);
  }

  return result;
}

unint64_t sub_1DA8EF64C()
{
  result = qword_1ECBD6DF0;
  if (!qword_1ECBD6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DF0);
  }

  return result;
}

unint64_t sub_1DA8EF6A0()
{
  result = qword_1ECBD6DF8;
  if (!qword_1ECBD6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DF8);
  }

  return result;
}

uint64_t sub_1DA8EF6F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA8EF804()
{
  result = qword_1ECBD6E50;
  if (!qword_1ECBD6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E50);
  }

  return result;
}

unint64_t sub_1DA8EF85C()
{
  result = qword_1ECBD6E58;
  if (!qword_1ECBD6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E58);
  }

  return result;
}

unint64_t sub_1DA8EF8B4()
{
  result = qword_1ECBD6E60;
  if (!qword_1ECBD6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E60);
  }

  return result;
}

unint64_t sub_1DA8EF90C()
{
  result = qword_1ECBD6E68;
  if (!qword_1ECBD6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E68);
  }

  return result;
}

unint64_t sub_1DA8EF964()
{
  result = qword_1ECBD6E70;
  if (!qword_1ECBD6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E70);
  }

  return result;
}

unint64_t sub_1DA8EF9BC()
{
  result = qword_1ECBD6E78;
  if (!qword_1ECBD6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E78);
  }

  return result;
}

unint64_t sub_1DA8EFA14()
{
  result = qword_1ECBD6E80;
  if (!qword_1ECBD6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E80);
  }

  return result;
}

unint64_t sub_1DA8EFA6C()
{
  result = qword_1ECBD6E88;
  if (!qword_1ECBD6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E88);
  }

  return result;
}

unint64_t sub_1DA8EFAC4()
{
  result = qword_1ECBD6E90;
  if (!qword_1ECBD6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E90);
  }

  return result;
}

unint64_t sub_1DA8EFB1C()
{
  result = qword_1ECBD6E98;
  if (!qword_1ECBD6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E98);
  }

  return result;
}

unint64_t sub_1DA8EFB74()
{
  result = qword_1ECBD6EA0;
  if (!qword_1ECBD6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EA0);
  }

  return result;
}

unint64_t sub_1DA8EFBCC()
{
  result = qword_1ECBD6EA8;
  if (!qword_1ECBD6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EA8);
  }

  return result;
}

unint64_t sub_1DA8EFC24()
{
  result = qword_1ECBD6EB0;
  if (!qword_1ECBD6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EB0);
  }

  return result;
}

unint64_t sub_1DA8EFC7C()
{
  result = qword_1ECBD6EB8;
  if (!qword_1ECBD6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EB8);
  }

  return result;
}

unint64_t sub_1DA8EFCD4()
{
  result = qword_1ECBD6EC0;
  if (!qword_1ECBD6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EC0);
  }

  return result;
}

unint64_t sub_1DA8EFD2C()
{
  result = qword_1ECBD6EC8;
  if (!qword_1ECBD6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EC8);
  }

  return result;
}

unint64_t sub_1DA8EFD84()
{
  result = qword_1ECBD6ED0;
  if (!qword_1ECBD6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6ED0);
  }

  return result;
}

unint64_t sub_1DA8EFDDC()
{
  result = qword_1ECBD6ED8;
  if (!qword_1ECBD6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6ED8);
  }

  return result;
}

unint64_t sub_1DA8EFE34()
{
  result = qword_1ECBD6EE0;
  if (!qword_1ECBD6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EE0);
  }

  return result;
}

unint64_t sub_1DA8EFE8C()
{
  result = qword_1ECBD6EE8;
  if (!qword_1ECBD6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EE8);
  }

  return result;
}

unint64_t sub_1DA8EFEE4()
{
  result = qword_1ECBD6EF0;
  if (!qword_1ECBD6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EF0);
  }

  return result;
}

unint64_t sub_1DA8EFF3C()
{
  result = qword_1ECBD6EF8;
  if (!qword_1ECBD6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EF8);
  }

  return result;
}

unint64_t sub_1DA8EFF94()
{
  result = qword_1ECBD6F00;
  if (!qword_1ECBD6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F00);
  }

  return result;
}

unint64_t sub_1DA8EFFEC()
{
  result = qword_1ECBD6F08;
  if (!qword_1ECBD6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F08);
  }

  return result;
}

unint64_t sub_1DA8F0044()
{
  result = qword_1ECBD6F10;
  if (!qword_1ECBD6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F10);
  }

  return result;
}

unint64_t sub_1DA8F009C()
{
  result = qword_1ECBD6F18;
  if (!qword_1ECBD6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F18);
  }

  return result;
}

unint64_t sub_1DA8F00F4()
{
  result = qword_1ECBD6F20;
  if (!qword_1ECBD6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F20);
  }

  return result;
}

uint64_t sub_1DA8F01B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_1DA85A4B4(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        a5();
        v18 = v20;
      }

      result = sub_1DA8F5124(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_1DA8F02B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DA93F964();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1DA7BA120(a1, &qword_1ECBD6310, &unk_1DA95F3B0);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0], sub_1DA860200, v9);

    return sub_1DA7BA120(v9, &qword_1ECBD6310, &unk_1DA95F3B0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DA90ACC0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DA8F04CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FF0, &unk_1DA95B220);
    sub_1DA8F4390(a2, &unk_1ECBD5960, &qword_1DA95B160, sub_1DA860228, v7);
    v12 = sub_1DA93FB24();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1DA7BA120(v7, &unk_1ECBD6FF0, &unk_1DA95B220);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1DA90AD14(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1DA93FB24();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1DA8F0724(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1DA7BA120(a1, &qword_1ECBD5580, &qword_1DA95B218);
    sub_1DA8F4390(a2, &unk_1ECBD5410, &qword_1DA95AFD0, sub_1DA86024C, v7);
    v12 = sub_1DA93FB24();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1DA7BA120(v7, &qword_1ECBD5580, &qword_1DA95B218);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1DA90AD50(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1DA93FB24();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1DA8F09A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6530, &unk_1DA958820);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E6969530], MEMORY[0x1E6969530], sub_1DA860774, v9);

    return sub_1DA7BA120(v9, &unk_1ECBD6530, &unk_1DA958820);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DA90B134(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DA8F0BBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA93FBD4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(a1, 1, v5);
  if (v7 == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD7000, &qword_1DA95BF48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
    MEMORY[0x1EEE9AC00](v8 - 8);
    v10 = &v15 - v9;
    sub_1DA8F46F0(a2, &v15 - v9);

    return sub_1DA7BA120(v10, &unk_1ECBD7000, &qword_1DA95BF48);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 32))(v13, a1, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1DA90B340(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  return result;
}

uint64_t sub_1DA8F0D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DA90B514(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DA85A4B4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DA860D54();
        v14 = v16;
      }

      result = sub_1DA8F5124(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1DA8F0E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1DA90B540(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_1DA85A5A0(a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1DA860D68();
        v13 = v15;
      }

      sub_1DA8F5850(v11, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_1DA8F0F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FE0, qword_1DA962790);
    sub_1DA8F4A4C(a2, a3, v10);

    return sub_1DA7BA120(v10, &unk_1ECBD6FE0, qword_1DA962790);
  }

  else
  {
    v7 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v7;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1DA90BC14(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_1DA8F1020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DA90C414(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1DA93FB24();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1DA85A5DC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1DA86226C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1DA93FB24();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1DA8F5EA8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1DA93FB24();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1DA8F11E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DA9408B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FA8, &unk_1DA962760);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E69E8008], MEMORY[0x1E69E8008], sub_1DA8626A0, v9);

    return sub_1DA7BA120(v9, &unk_1ECBD6FA8, &unk_1DA962760);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DA90C770(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DA8F13F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FB8, &unk_1DA962770);
    sub_1DA8F4C5C(a2, a3, type metadata accessor for AlertCoordinationMessage, type metadata accessor for AlertCoordinationMessage, type metadata accessor for AlertCoordinationMessage, sub_1DA862950, v9);

    return sub_1DA7BA120(v9, &unk_1ECBD6FB8, &unk_1DA962770);
  }

  else
  {
    sub_1DA8F7088(a1, v12, type metadata accessor for AlertCoordinationMessage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DA90C7C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DA8F1618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DA90C928(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DA85A4B4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DA86298C();
        v14 = v16;
      }

      result = sub_1DA8F5124(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v90 = a1;
  v5 = sub_1DA9401F4();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v87 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v86 = v9;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1DA940014();
  v21 = v20;
  v22 = *(v3 + 32);
  v23 = *(v3 + 64);
  v89 = v3;
  v81 = v18;
  v91 = a2;
  sub_1DA940074();
  v92[0] = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(v90, v22, v19, v21, v92);

  sub_1DA81AACC(v9, v18, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v24 = v92[0];
  ObjectType = swift_getObjectType();
  v26 = *(v23 + 8);

  v27 = v26(v19, v21, ObjectType, v23);
  v28 = v90;
  v29 = v81;
  v30 = v27;
  sub_1DA866354(v86, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v31 = (v29 + v10[5]);
  *v31 = v19;
  v31[1] = v21;
  *(v29 + v10[6]) = v24;
  v32 = v10[7];

  *(v29 + v32) = v28;
  v86 = v10;
  *(v29 + v10[8]) = v30;
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  v34 = __swift_project_value_buffer(v33, qword_1EE114E20);
  v36 = v82;
  v35 = v83;
  v37 = v84;
  (*(v83 + 16))(v82, v91, v84);
  v38 = v88;
  sub_1DA81AACC(v29, v88, type metadata accessor for UserNotificationsVendorTransaction);

  v91 = v34;
  v39 = sub_1DA940584();
  v40 = sub_1DA940F34();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v36;
    v42 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v92[0] = v80;
    *v42 = 136315650;
    v43 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v44 = MEMORY[0x1E1271CD0](v28, v43);
    v45 = v35;
    v47 = sub_1DA7AE6E8(v44, v46, v92);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = sub_1DA940014();
    v50 = v49;
    (*(v45 + 8))(v41, v37);
    v51 = sub_1DA7AE6E8(v48, v50, v92);

    *(v42 + 14) = v51;
    *(v42 + 22) = 2080;
    v52 = v88;
    sub_1DA81AACC(v88, v85, type metadata accessor for UserNotificationsVendorTransaction);
    v53 = sub_1DA940A74();
    v55 = v54;
    sub_1DA866354(v52, type metadata accessor for UserNotificationsVendorTransaction);
    v56 = sub_1DA7AE6E8(v53, v55, v92);

    *(v42 + 24) = v56;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "notificationRepositoryDidPerformUpdates: %s forBundleIdentifier: %s transaction: %s", v42, 0x20u);
    v57 = v80;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v57, -1, -1);
    MEMORY[0x1E12739F0](v42, -1, -1);
  }

  else
  {

    sub_1DA866354(v38, type metadata accessor for UserNotificationsVendorTransaction);
    (*(v35 + 8))(v36, v37);
  }

  v58 = v89;

  v59 = sub_1DA940584();
  v60 = sub_1DA940F34();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v93[0] = v62;
    *v61 = 136315138;
    swift_beginAccess();
    sub_1DA93FB24();
    type metadata accessor for VendorSession(0);
    sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    v63 = sub_1DA940984();
    v65 = v64;

    v66 = v63;
    v58 = v89;
    v67 = sub_1DA7AE6E8(v66, v65, v93);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_1DA7A9000, v59, v60, "notificationRepositoryDidPerformUpdates: sessions: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1E12739F0](v62, -1, -1);
    MEMORY[0x1E12739F0](v61, -1, -1);
  }

  v68 = v87;
  v69 = *(*(v58 + 96) + 16);
  os_unfair_lock_lock(v69);
  sub_1DA8F3490(v58, v29, "notificationRepositoryDidPerformUpdates: sending to: %s transaction: %s", "notificationRepositoryDidPerformUpdates: ERROR sending to: %s transaction: %s error: %@");
  os_unfair_lock_unlock(v69);
  sub_1DA81AACC(v29, v68, type metadata accessor for UserNotificationsVendorTransaction);
  v70 = sub_1DA940584();
  v71 = sub_1DA940F34();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v93[0] = v73;
    *v72 = 136315138;
    sub_1DA81AACC(v68, v85, type metadata accessor for UserNotificationsVendorTransaction);
    v74 = sub_1DA940A74();
    v76 = v75;
    sub_1DA866354(v68, type metadata accessor for UserNotificationsVendorTransaction);
    v77 = sub_1DA7AE6E8(v74, v76, v93);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1DA7A9000, v70, v71, "notificationRepositoryDidPerformUpdates: completed transaction: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x1E12739F0](v73, -1, -1);
    MEMORY[0x1E12739F0](v72, -1, -1);
  }

  else
  {

    sub_1DA866354(v68, type metadata accessor for UserNotificationsVendorTransaction);
  }

  return sub_1DA866354(v29, type metadata accessor for UserNotificationsVendorTransaction);
}

uint64_t sub_1DA8F2010(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DA940A94();
  v8 = xpc_copy_entitlement_for_token();

  if (v8)
  {
    v9 = MEMORY[0x1E1273B90](v8);
    if (v9 == sub_1DA9405B4())
    {
      value = xpc_BOOL_get_value(v8);
      swift_unknownObjectRelease();
      v10 = value ^ a3 ^ 1;
      return v10 & 1;
    }

    swift_unknownObjectRelease();
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1DA8F211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  return a10(a1, a2, a3, a5, a7, a8, a9, v21, ObjectType, v18, a4, a6);
}

uint64_t sub_1DA8F21C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      MEMORY[0x1EEE9AC00](Strong);
      sub_1DA9406E4();
      sub_1DA9406A4();

      return swift_unknownObjectRelease();
    }
  }

  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE114E20);
  v5 = sub_1DA940584();
  v6 = sub_1DA940F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Received request while deallocating", v7, 2u);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  return sub_1DA9406D4();
}

uint64_t sub_1DA8F239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1DA8F2010(0xD00000000000002ALL, 0x80000001DA9525D0, 1, a1, a2, a3, a4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for VendorSession(0);
    sub_1DA8F71B4(&unk_1EE113808, type metadata accessor for VendorSession, &unk_1DA963240);
    return sub_1DA9406C4();
  }

  else
  {
    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE114E20);

    v11 = sub_1DA940584();
    v12 = sub_1DA940F14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v13 = 136315394;
      sub_1DA9406F4();

      v14 = sub_1DA940A74();
      v16 = sub_1DA7AE6E8(v14, v15, &v18);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA9525D0, &v18);
      _os_log_impl(&dword_1DA7A9000, v11, v12, "UserNotificationsVendorServer request: %s rejected for missing entitlement: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v17, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    return sub_1DA9406D4();
  }
}

uint64_t sub_1DA8F2678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v34[1] = a1;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v4 + 96);
  os_unfair_lock_lock(*(v37 + 16));
  sub_1DA93FB14();
  v11 = *(v4 + 24);
  v10 = *(v4 + 32);
  v12 = sub_1DA940674();
  v43[3] = v12;
  v43[4] = &off_1F5639018;
  v43[0] = a1;
  type metadata accessor for VendorSession(0);
  v13 = swift_allocObject();
  v39 = *(v4 + 56);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v43, v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v41 = v12;
  v42 = &off_1F5639018;
  *&v40 = v18;
  (*(v7 + 56))(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID, 1, 1, v6);
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = 0;
  v19 = v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate;
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = *(v7 + 32);
  v38 = v6;
  v20(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v9, v6);
  sub_1DA7B9FAC(&v40, v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session);
  *(v19 + 8) = &off_1F5638970;
  swift_unknownObjectWeakAssign();
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository) = v11;
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_categoryRepositoryAggregator) = v10;
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_settingsProvider) = v39;
  *(v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder + 8) = v35;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_1(v43);
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v21 = sub_1DA9405A4();
  __swift_project_value_buffer(v21, qword_1EE114E20);

  v22 = sub_1DA940584();
  v23 = sub_1DA940F34();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43[0] = v25;
    *v24 = 136315138;

    v27 = sub_1DA8F6E64(v26);
    v29 = v28;

    v30 = sub_1DA7AE6E8(v27, v29, v43);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1DA7A9000, v22, v23, "Accepted incomingConnection: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12739F0](v25, -1, -1);
    MEMORY[0x1E12739F0](v24, -1, -1);
  }

  v31 = v38;
  (*(v7 + 16))(v9, v13 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v38);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v40 = *(v4 + 104);
  *(v4 + 104) = 0x8000000000000000;
  sub_1DA90C414(v13, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v31);
  *(v4 + 104) = v40;
  swift_endAccess();
  os_unfair_lock_unlock(*(v37 + 16));
  return v13;
}

uint64_t UserNotificationsVendorServer.deinit()
{
  swift_unknownObjectRelease();

  sub_1DA7C5714(v0 + 40);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t UserNotificationsVendorServer.__deallocating_deinit()
{
  UserNotificationsVendorServer.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UserNotificationsVendorServer.perform(action:)(UserNotificationsCore::NotificationActionSelector *action)
{
  v3 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v71 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v69 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = v65 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = v65 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - v13;
  notificationIdentifier = action->notificationIdentifier;
  bundleIdentifier = action->bundleIdentifier;
  v76 = notificationIdentifier;
  userText = action->userText;
  actionIdentifier = action->actionIdentifier;
  v16 = actionIdentifier;
  v78 = userText;
  *v5 = bundleIdentifier;
  v5[1] = notificationIdentifier;
  v5[2] = v16;
  v5[3] = userText.value;
  swift_storeEnumTagMultiPayload();
  v18 = bundleIdentifier;
  v19 = v1[4];
  v65[1] = v1[7];
  v70 = v1;
  countAndFlagsBits = v1[8];
  v20 = *(v6 + 36);
  v21 = sub_1DA93FE74();
  v22 = *(*(v21 - 8) + 56);
  v65[0] = v14;
  v22(&v14[v20], 1, 1, v21);
  sub_1DA848A24(&bundleIdentifier, v74);

  v23 = MEMORY[0x1E69E7CC0];
  *&v74[0] = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(v23, v19, v18._countAndFlagsBits, v18._object, v74);

  sub_1DA81AACC(v5, v14, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v24 = *&v74[0];
  ObjectType = swift_getObjectType();
  v26 = countAndFlagsBits;
  v27 = *(countAndFlagsBits + 8);

  v28 = v27(v18._countAndFlagsBits, v18._object, ObjectType, v26);
  v29 = v65[0];
  v30 = v28;
  sub_1DA866354(v5, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);

  v31 = v71;
  v32 = (v29 + v71[5]);
  countAndFlagsBits = v18._countAndFlagsBits;
  *v32 = v18;
  *(v29 + v31[6]) = v24;
  *(v29 + v31[7]) = MEMORY[0x1E69E7CC0];
  *(v29 + v31[8]) = v30;
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  __swift_project_value_buffer(v33, qword_1EE114E20);
  v34 = v67;
  sub_1DA81AACC(v29, v67, type metadata accessor for UserNotificationsVendorTransaction);
  sub_1DA848A24(&bundleIdentifier, v74);
  v35 = sub_1DA940584();
  v36 = sub_1DA940F34();
  sub_1DA84A040(&bundleIdentifier);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v73[0] = v38;
    *v37 = 136315650;
    v74[0] = bundleIdentifier;
    v74[1] = v76;
    v74[2] = actionIdentifier;
    v74[3] = v78;
    sub_1DA848A24(&bundleIdentifier, v72);
    v39 = sub_1DA940A74();
    v41 = sub_1DA7AE6E8(v39, v40, v73);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1DA7AE6E8(countAndFlagsBits, v18._object, v73);
    *(v37 + 22) = 2080;
    sub_1DA81AACC(v18._countAndFlagsBits, v68, type metadata accessor for UserNotificationsVendorTransaction);
    v42 = sub_1DA940A74();
    v44 = v43;
    sub_1DA866354(v18._countAndFlagsBits, type metadata accessor for UserNotificationsVendorTransaction);
    v45 = sub_1DA7AE6E8(v42, v44, v73);

    *(v37 + 24) = v45;
    _os_log_impl(&dword_1DA7A9000, v35, v36, "perform(action): %s forBundleIdentifier: %s transaction: %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v38, -1, -1);
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  else
  {

    sub_1DA866354(v34, type metadata accessor for UserNotificationsVendorTransaction);
  }

  v46 = v70;

  v47 = sub_1DA940584();
  v48 = sub_1DA940F34();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v72[0] = v50;
    *v49 = 136315138;
    swift_beginAccess();
    sub_1DA93FB24();
    type metadata accessor for VendorSession(0);
    sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    v51 = sub_1DA940984();
    v53 = v52;

    v54 = sub_1DA7AE6E8(v51, v53, v72);

    *(v49 + 4) = v54;
    v46 = v70;
    _os_log_impl(&dword_1DA7A9000, v47, v48, "perform(action): sessions: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12739F0](v50, -1, -1);
    MEMORY[0x1E12739F0](v49, -1, -1);
  }

  v55 = v69;
  v56 = *(*(v46 + 96) + 16);
  os_unfair_lock_lock(v56);
  sub_1DA8F3490(v46, v29, "notificationRepositoryDidPerformUpdates: sending to client: %s transaction: %s", "notificationRepositoryDidPerformUpdates: ERROR sending to client: %s transaction: %s error: %@");
  os_unfair_lock_unlock(v56);
  sub_1DA81AACC(v29, v55, type metadata accessor for UserNotificationsVendorTransaction);
  v57 = sub_1DA940584();
  v58 = sub_1DA940F34();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v72[0] = v60;
    *v59 = 136315138;
    sub_1DA81AACC(v55, v68, type metadata accessor for UserNotificationsVendorTransaction);
    v61 = sub_1DA940A74();
    v63 = v62;
    sub_1DA866354(v55, type metadata accessor for UserNotificationsVendorTransaction);
    v64 = sub_1DA7AE6E8(v61, v63, v72);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1DA7A9000, v57, v58, "perform(action): completed transaction: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1E12739F0](v60, -1, -1);
    MEMORY[0x1E12739F0](v59, -1, -1);
  }

  else
  {

    sub_1DA866354(v55, type metadata accessor for UserNotificationsVendorTransaction);
  }

  sub_1DA866354(v29, type metadata accessor for UserNotificationsVendorTransaction);
}

void sub_1DA8F3490(uint64_t a1, uint64_t a2, const char *a3, const char *a4, ...)
{
  v83 = a4;
  v89 = a3;
  v107 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v82 - v5;
  v6 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v90 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v82 - v12;
  v105 = sub_1DA93FB24();
  v13 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v93 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6FC8, &qword_1DA962780);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v100 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v82 - v18;
  swift_beginAccess();
  v20 = *(a1 + 104);
  v21 = *(v20 + 64);
  v99 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v84 = (v22 + 63) >> 6;
  v92 = v13 + 16;
  v91 = v13 + 32;
  v86 = 0x80000001DA955D20;
  v94 = v13;
  v97 = (v13 + 8);
  v95 = v20;

  v25 = 0;
  *&v26 = 136315394;
  v85 = v26;
  *&v26 = 136315650;
  v82 = v26;
  v103 = v19;
  v104 = v6;
  v101 = v9;
  while (v24)
  {
    v106 = 0;
    v27 = v25;
LABEL_16:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = v31 | (v27 << 6);
    v33 = v95;
    v34 = v94;
    v35 = v93;
    v36 = v105;
    (*(v94 + 16))(v93, *(v95 + 48) + *(v94 + 72) * v32, v105);
    v37 = *(*(v33 + 56) + 8 * v32);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
    v39 = *(v38 + 48);
    v40 = *(v34 + 32);
    v30 = v100;
    v40(v100, v35, v36);
    *(v30 + v39) = v37;
    (*(*(v38 - 8) + 56))(v30, 0, 1, v38);

    v19 = v103;
LABEL_17:
    sub_1DA8F70F0(v30, v19);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
    if ((*(*(v41 - 8) + 48))(v19, 1, v41) == 1)
    {

      return;
    }

    v42 = *&v19[*(v41 + 48)];
    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v43 = sub_1DA9405A4();
    v44 = __swift_project_value_buffer(v43, qword_1EE114E20);
    v45 = v98;
    sub_1DA81AACC(v107, v98, type metadata accessor for UserNotificationsVendorTransaction);

    v46 = sub_1DA940584();
    v47 = sub_1DA940F34();

    v48 = v47;
    v49 = os_log_type_enabled(v46, v47);
    v102 = v44;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v96 = v51;
      *v50 = v85;
      v108 = 0;
      v109 = 0xE000000000000000;
      v110 = v51;

      sub_1DA941364();

      v108 = 0xD000000000000010;
      v109 = v86;
      sub_1DA8F71B4(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v52 = sub_1DA941614();
      MEMORY[0x1E1271BD0](v52);

      MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
      v53 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
      swift_beginAccess();
      sub_1DA8F7018(v42 + v53, v87);
      v54 = sub_1DA940A74();
      MEMORY[0x1E1271BD0](v54);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);

      v55 = sub_1DA7AE6E8(v108, v109, &v110);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      sub_1DA81AACC(v45, v90, type metadata accessor for UserNotificationsVendorTransaction);
      v56 = sub_1DA940A74();
      v58 = v57;
      sub_1DA866354(v45, type metadata accessor for UserNotificationsVendorTransaction);
      v59 = sub_1DA7AE6E8(v56, v58, &v110);
      v19 = v103;

      *(v50 + 14) = v59;
      _os_log_impl(&dword_1DA7A9000, v46, v48, v89, v50, 0x16u);
      v60 = v96;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v60, -1, -1);
      MEMORY[0x1E12739F0](v50, -1, -1);
    }

    else
    {

      sub_1DA866354(v45, type metadata accessor for UserNotificationsVendorTransaction);
    }

    v61 = v106;
    __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session), *(v42 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session + 24));
    sub_1DA8F71B4(qword_1EE1141E0, type metadata accessor for UserNotificationsVendorTransaction, &protocol conformance descriptor for UserNotificationsVendorTransaction);
    sub_1DA940624();
    v62 = v61;
    if (v61)
    {
      sub_1DA81AACC(v107, v101, type metadata accessor for UserNotificationsVendorTransaction);

      v63 = v61;
      v64 = sub_1DA940584();
      v65 = sub_1DA940F34();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v108 = v102;
        *v66 = v82;

        v69 = sub_1DA8F6E64(v68);
        v106 = v62;
        v71 = v70;

        v72 = sub_1DA7AE6E8(v69, v71, &v108);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        sub_1DA81AACC(v101, v90, type metadata accessor for UserNotificationsVendorTransaction);
        v73 = sub_1DA940A74();
        v75 = v74;
        sub_1DA866354(v101, type metadata accessor for UserNotificationsVendorTransaction);
        v76 = sub_1DA7AE6E8(v73, v75, &v108);
        v19 = v103;

        *(v66 + 14) = v76;
        *(v66 + 22) = 2112;
        v77 = v106;
        v78 = v106;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 24) = v79;
        *v67 = v79;
        _os_log_impl(&dword_1DA7A9000, v64, v65, v83, v66, 0x20u);
        sub_1DA7BA120(v67, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v67, -1, -1);
        v80 = v102;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v80, -1, -1);
        MEMORY[0x1E12739F0](v66, -1, -1);
      }

      else
      {

        sub_1DA866354(v101, type metadata accessor for UserNotificationsVendorTransaction);
      }
    }

    else
    {
    }

    (*v97)(v19, v105);
  }

  if (v84 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v84;
  }

  v29 = v28 - 1;
  v30 = v100;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v84)
    {
      v106 = 0;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FD0, &qword_1DA962788);
      (*(*(v81 - 8) + 56))(v30, 1, 1, v81);
      v24 = 0;
      v25 = v29;
      goto LABEL_17;
    }

    v24 = *(v99 + 8 * v27);
    ++v25;
    if (v24)
    {
      v106 = 0;
      v25 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1DA8F400C(uint64_t a1)
{
  v3 = sub_1DA93FB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  os_unfair_lock_lock(*(v7 + 16));
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1EE114E20);

  v9 = sub_1DA940584();
  v10 = sub_1DA940F34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v7;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v3;
    v14 = v13;
    v25[0] = v13;
    *v12 = 136315138;

    v16 = sub_1DA8F6E64(v15);
    v18 = v17;

    v19 = sub_1DA7AE6E8(v16, v18, v25);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "handleCancellation: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v20 = v14;
    v3 = v23;
    MEMORY[0x1E12739F0](v20, -1, -1);
    v21 = v12;
    v7 = v24;
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v3);
  swift_beginAccess();
  sub_1DA8F1020(0, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_1DA8F427C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE114E20);
  __swift_project_value_buffer(v0, qword_1EE114E20);
  return sub_1DA940594();
}

uint64_t sub_1DA8F42F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  result = sub_1DA85A4B4(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v11 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA860068();
      v10 = v11;
    }

    *a3 = *(*(v10 + 56) + 8 * v8);
    result = sub_1DA8F5124(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 5;
  }

  return result;
}

uint64_t sub_1DA8F4390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1DA85A5DC(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_1DA93FB24();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_1DA8F52D4(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1DA8F455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1DA85A4B4(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_1DA8F61C8(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_1DA8F46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DA7BFAD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA86079C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1DA93FBD4();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1DA8F5618(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1DA93FBD4();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1DA8F4874(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DA85A5A0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DA8611E0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1DA8F59C0(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1DA8F48FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1DA85A4B4(a1, a2);
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
    sub_1DA86133C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1DA8F5124(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1DA8F49AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = sub_1DA85A4B4(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_1DA8F5124(v8, v10);
  *v5 = v10;
  return v11;
}

double sub_1DA8F4A4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DA85A4B4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DA861364();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_1DA8F5B30(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_1DA95D870;
  }

  return result;
}

uint64_t sub_1DA8F4B20(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DA85A7CC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DA86168C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1DA8F5CEC(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1DA8F4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1DA85A4B4(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1DA8F7088(v19 + *(v27 + 72) * v16, a7, a4);
    sub_1DA8F61C8(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

unint64_t sub_1DA8F4DE0(int64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FEC4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1DA9411F4();
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
      sub_1DA8F71B4(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
      v22 = sub_1DA9409A4();
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
          v27 = *(*(sub_1DA93FAF4() - 8) + 72);
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

uint64_t sub_1DA8F5124(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      sub_1DA941764();

      sub_1DA940AB4();
      v9 = sub_1DA941794();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DA8F52D4(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1DA9411F4();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1DA9409A4();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

unint64_t sub_1DA8F5618(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    v26 = v2;
    while (1)
    {
      v9 = *(*(v2 + 48) + 8 * v6);
      sub_1DA941764();
      MEMORY[0x1E1272850](*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v4;

        v12 = v9 + 40;
        do
        {

          sub_1DA940AB4();

          v12 += 16;
          --v10;
        }

        while (v10);

        v4 = v11;
        v2 = v26;
      }

      result = sub_1DA941794();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_14;
      }

LABEL_15:
      v14 = *(v2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(v2 + 56);
      v18 = *(*(sub_1DA93FBD4() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(v2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v25;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_1DA8F5850(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1DA941754();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
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

uint64_t sub_1DA8F59C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1DA941754();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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

uint64_t sub_1DA8F5B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      sub_1DA941764();

      sub_1DA940AB4();
      v11 = sub_1DA941794();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DA8F5CEC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DA9411F4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1DA941104();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1DA8F5EA8(int64_t a1, uint64_t a2)
{
  v40 = sub_1DA93FB24();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1DA9411F4();
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
      sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1DA9409A4();
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
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
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

unint64_t sub_1DA8F61C8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DA9411F4() + 1) & ~v6;
    while (1)
    {
      sub_1DA941764();

      sub_1DA940AB4();
      v11 = sub_1DA941794();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DA8F63BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();

  return sub_1DA8F646C(a1, a2, a3, a4, a5, a6, a7, v18, a9, a10, a11, a12);
}

void *sub_1DA8F646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a3;
  v52 = a1;
  v49 = a12;
  v50 = a4;
  v44 = a2;
  v45 = a11;
  v42[1] = *a8;
  v13 = sub_1DA940694();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v42[2] = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DA940FC4();
  v15 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940834();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1DA8F71B4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8098], v43);
  v20 = v52;
  v21 = v44;
  a8[2] = sub_1DA941004();
  a8[6] = 0;
  swift_unknownObjectWeakInit();
  a8[9] = 0;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  a8[12] = v22;
  a8[13] = v24;
  v25 = v47;
  a8[10] = v46;
  a8[11] = v25;
  a8[3] = v20;
  a8[4] = v21;
  a8[6] = v45;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v26 = v49;
  a8[7] = v50;
  a8[8] = v26;
  if (v51)
  {
    v27 = a8[2];

    v28 = v27;
    sub_1DA940684();
    swift_allocObject();
    swift_weakInit();
    sub_1DA940734();
    swift_allocObject();
    a8[9] = sub_1DA940714();

    if (a8[9])
    {

      sub_1DA940724();
    }

    v29 = sub_1DA940A94();
    notify_post((v29 + 32));

    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1DA9405A4();
    __swift_project_value_buffer(v30, qword_1EE114E20);

    v31 = sub_1DA940584();
    v32 = sub_1DA940EF4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v54 = v34;
      *v33 = 136315650;
      v53 = a8;

      v35 = sub_1DA940A74();
      v37 = sub_1DA7AE6E8(v35, v36, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = a8[10];
      v39 = a8[11];

      v40 = sub_1DA7AE6E8(v38, v39, &v54);

      *(v33 + 14) = v40;
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, &v54);
      _os_log_impl(&dword_1DA7A9000, v31, v32, "%s serviceName: %s posted Darwin notification: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v34, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    a8[9] = 0;
  }

  return a8;
}

void sub_1DA8F6BEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_18:
    v6 = sub_1DA941264();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v31 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = v5 & 0xC000000000000001;
      v27 = v5;
      do
      {
        if (v8)
        {
          v9 = MEMORY[0x1E1272460](v7, v5);
        }

        else
        {
          if (v7 >= *(v31 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v12 = [v9 notificationRecord];
        v13 = [v12 categoryIdentifier];

        if (v13)
        {
          v14 = sub_1DA940A14();
          v16 = v15;

          sub_1DA921EF4(v14, v16, a3, a4);
          if (v17)
          {
            v18 = v17;
            v19 = v6;
            v20 = [v10 notificationRecord];
            v21 = [v20 identifier];

            if (!v21)
            {
              __break(1u);
              return;
            }

            v22 = sub_1DA940A14();
            v24 = v23;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = *a5;
            *a5 = 0x8000000000000000;
            sub_1DA90B4BC(v18, v22, v24, isUniquelyReferenced_nonNull_native);

            *a5 = v32;

            v6 = v19;
            v8 = v26;
            v5 = v27;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v7;
      }

      while (v11 != v6);
    }
  }
}

unint64_t sub_1DA8F6E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v9 - v3;
  v9[1] = 0;
  v9[2] = 0xE000000000000000;
  sub_1DA941364();

  v10 = 0xD000000000000010;
  v11 = 0x80000001DA955D20;
  sub_1DA93FB24();
  sub_1DA8F71B4(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_1DA941614();
  MEMORY[0x1E1271BD0](v5);

  MEMORY[0x1E1271BD0](0x55746E65696C6320, 0xED0000203A444955);
  v6 = OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID;
  swift_beginAccess();
  sub_1DA8F7018(a1 + v6, v4);
  v7 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v7);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_1DA8F7018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6F98, &unk_1DA963280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8F7088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8F70F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6FC8, &qword_1DA962780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8F7180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA8F2678(a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_1DA8F71B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA8F7248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return a3();
}

uint64_t sub_1DA8F7340(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return a2();
}

uint64_t sub_1DA8F73C8(uint64_t (*a1)(void))
{
  if (qword_1ECBD4748 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

double sub_1DA8F7610()
{
  v0 = sub_1DA941844();
  sub_1DA941844();
  result = (v1 / 1.0e18 + v0) * 0.5;
  *&qword_1ECBE3D98 = result;
  return result;
}

uint64_t UserNotificationsCloudPushHandler.__allocating_init(target:communicationContextContentURLDataProvider:)(__int128 *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1DA8FA4C8(a1, v9, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t UserNotificationsCloudPushHandler.init(target:communicationContextContentURLDataProvider:)(__int128 *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1DA8FA4C8(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

void sub_1DA8F7884(SEL *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v189 = a4;
  v191 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = MEMORY[0x1EEE9AC00](v191);
  v11 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v186 = &v185 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v188 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v185 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v190 = &v185 - v19;
  v202 = sub_1DA93F964();
  v193 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v207 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = [(SEL *)a1 notificationRecord];
  if (qword_1EE110E68 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v21 = sub_1DA9405A4();
    v22 = __swift_project_value_buffer(v21, qword_1EE11ADC0);
    v23 = a1;

    v215 = v22;
    v24 = sub_1DA940584();
    LODWORD(v22) = sub_1DA940F34();

    LODWORD(v214) = v22;
    v25 = os_log_type_enabled(v24, v22);
    v26 = MEMORY[0x1E69E7CA0];
    v192 = v17;
    v203 = a3;
    v204 = v5;
    v210 = v23;
    v211 = a2;
    v187 = v11;
    if (v25)
    {
      v17 = swift_slowAlloc();
      v11 = v26;
      v27 = swift_slowAlloc();
      v217[0] = v27;
      *v17 = 136315650;
      v28 = v23;
      v29 = [(SEL *)v28 description];
      v30 = sub_1DA940A14();
      v32 = v31;

      v33 = v30;
      a2 = v211;
      v34 = sub_1DA7AE6E8(v33, v32, v217);

      *(v17 + 4) = v34;
      *(v17 + 6) = 2080;
      *(v17 + 14) = sub_1DA7AE6E8(a2, a3, v217);
      *(v17 + 11) = 2080;
      sub_1DA7BABAC((v204 + 2), &v218);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v35 = sub_1DA940A74();
      v37 = sub_1DA7AE6E8(v35, v36, v217);

      *(v17 + 3) = v37;
      _os_log_impl(&dword_1DA7A9000, v24, v214, "UserNotificationsCloudPushHandler add: %s bundleIdentifier: %s target:%s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v27, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    v38 = [v216 attachments];
    if (!v38)
    {
      goto LABEL_68;
    }

    v39 = v38;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v40 = sub_1DA940BE4();

    v42 = v210;
    if (v40 >> 62)
    {
      break;
    }

    v5 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_7:
    a3 = 0;
    v213 = v40 & 0xC000000000000001;
    v205 = v40 & 0xFFFFFFFFFFFFFF8;
    v200 = 0x80000001DA955E50;
    v201 = 0x80000001DA950340;
    v199 = 0x80000001DA955E70;
    v197 = (v193 + 8);
    a1 = &selRef_bulletinGroupingSetting;
    *&v41 = 136315394;
    v195 = v41;
    *&v41 = 136315650;
    v196 = v41;
    v198 = xmmword_1DA95C300;
    v208 = v40;
    v212 = v5;
    while (1)
    {
      if (v213)
      {
        v44 = MEMORY[0x1E1272460](a3, v40);
      }

      else
      {
        if (a3 >= *(v205 + 16))
        {
          goto LABEL_36;
        }

        v44 = *(v40 + 8 * a3 + 32);
      }

      v17 = v44;
      v43 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v45 = [v216 a1[285]];
      if (v45)
      {
        v11 = a1;
        v46 = v45;
        v214 = sub_1DA940A14();
        v48 = v47;

        v49 = [v17 v11 + 1656];
        if (v49)
        {
          v50 = v49;
          v51 = sub_1DA940A14();
          v53 = v52;

          v54 = [v17 URL];
          if (v54)
          {
            v209 = a3 + 1;
            v55 = v54;
            sub_1DA93F914();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7010, qword_1DA9628C0);
            inited = swift_initStackObject();
            *(inited + 16) = v198;
            v218 = 0xD000000000000010;
            v219 = v201;
            v206 = v48;
            v57 = v53;
            v58 = v51;
            v59 = MEMORY[0x1E69E6158];
            sub_1DA9412F4();
            *(inited + 96) = v59;
            v60 = v203;
            *(inited + 72) = a2;
            *(inited + 80) = v60;
            v218 = 0xD000000000000015;
            v219 = v200;

            sub_1DA9412F4();
            *(inited + 168) = v59;
            *(inited + 144) = v58;
            *(inited + 152) = v57;
            v218 = 0xD00000000000001DLL;
            v219 = v199;
            sub_1DA9412F4();
            *(inited + 240) = v59;
            v61 = v206;
            *(inited + 216) = v214;
            *(inited + 224) = v61;
            v62 = sub_1DA848EAC(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5448, &qword_1DA95B0D0);
            swift_arrayDestroy();
            v11 = v216;
            v17 = v17;

            v63 = sub_1DA940584();
            v64 = sub_1DA940F34();
            if (os_log_type_enabled(v63, v64))
            {
              LODWORD(v206) = v64;
              v214 = v63;
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v218 = v67;
              *v65 = v196;
              v68 = [v11 identifier];

              if (!v68)
              {
                goto LABEL_67;
              }

              v69 = sub_1DA940A14();
              v71 = v70;

              v72 = sub_1DA7AE6E8(v69, v71, &v218);

              *(v65 + 4) = v72;
              *(v65 + 12) = 2112;
              *(v65 + 14) = v17;
              *v66 = v17;
              *(v65 + 22) = 2080;
              v73 = v17;
              v11 = MEMORY[0x1E69E7CA0];
              v74 = sub_1DA940984();
              v76 = sub_1DA7AE6E8(v74, v75, &v218);

              *(v65 + 24) = v76;
              v63 = v214;
              _os_log_impl(&dword_1DA7A9000, v214, v206, "UserNotificationsCloudPushHandler add: %s attachment: %@ metadata: %s", v65, 0x20u);
              sub_1DA7BA120(v66, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v66, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v67, -1, -1);
              MEMORY[0x1E12739F0](v65, -1, -1);
            }

            else
            {
            }

            a2 = v211;
            v100 = v204[5];
            v101 = v204[6];
            __swift_project_boxed_opaque_existential_1(v204 + 2, v100);
            v102 = v207;
            (*(v101 + 32))(v207, v62, v100, v101);

            (*v197)(v102, v202);
            v43 = v209;
            v42 = v210;
          }

          else
          {
            v90 = v17;

            v91 = sub_1DA940584();
            v11 = sub_1DA940F34();

            if (os_log_type_enabled(v91, v11))
            {
              v17 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v194 = v91;
              v93 = v92;
              v206 = swift_slowAlloc();
              v218 = v206;
              *v17 = v196;
              v94 = sub_1DA7AE6E8(v214, v48, &v218);
              v209 = a3 + 1;
              v95 = v94;

              *(v17 + 4) = v95;
              *(v17 + 6) = 2112;
              *(v17 + 14) = v90;
              *v93 = v90;
              *(v17 + 11) = 2080;
              v96 = v90;
              v97 = sub_1DA7AE6E8(v51, v53, &v218);

              *(v17 + 3) = v97;
              v98 = v194;
              _os_log_impl(&dword_1DA7A9000, v194, v11, "UserNotificationsCloudPushHandler add: %s attachment: %@ FAILED attachmentIdentifier: %s attachment.url is nil)", v17, 0x20u);
              sub_1DA7BA120(v93, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v93, -1, -1);
              v99 = v206;
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v99, -1, -1);
              MEMORY[0x1E12739F0](v17, -1, -1);

              v43 = v209;
            }

            else
            {
            }

            v42 = v210;
            a2 = v211;
          }

          v40 = v208;
        }

        else
        {
          v17 = v17;

          v81 = sub_1DA940584();
          v82 = sub_1DA940F34();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v218 = v11;
            *v83 = v195;
            v85 = sub_1DA7AE6E8(v214, v48, &v218);
            v214 = v81;
            v86 = v85;

            *(v83 + 4) = v86;
            v43 = a3 + 1;
            *(v83 + 12) = 2112;
            *(v83 + 14) = v17;
            *v84 = v17;
            v17 = v17;
            v87 = v214;
            _os_log_impl(&dword_1DA7A9000, v214, v82, "UserNotificationsCloudPushHandler add: %s attachment: %@ FAILED attachment.identifier is ni", v83, 0x16u);
            sub_1DA7BA120(v84, &unk_1ECBD5430, &unk_1DA959190);
            v88 = v84;
            v40 = v208;
            MEMORY[0x1E12739F0](v88, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v11);
            MEMORY[0x1E12739F0](v11, -1, -1);
            v89 = v83;
            v42 = v210;
            MEMORY[0x1E12739F0](v89, -1, -1);
          }

          else
          {
          }

          a2 = v211;
        }

        v5 = v212;
        a1 = &selRef_bulletinGroupingSetting;
      }

      else
      {
        v11 = (a3 + 1);
        v77 = sub_1DA940584();
        v78 = sub_1DA940F34();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_1DA7A9000, v77, v78, "UserNotificationsCloudPushHandler add: notificationRecord.identifier) is nil", v79, 2u);
          v80 = v79;
          v5 = v212;
          MEMORY[0x1E12739F0](v80, -1, -1);
        }

        a1 = &selRef_bulletinGroupingSetting;
        v43 = a3 + 1;
      }

      ++a3;
      if (v43 == v5)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v5 = sub_1DA941264();
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_39:

  v103 = [v216 communicationContextContentURL];
  if (v103)
  {
    v104 = v190;
    v105 = v103;
    sub_1DA93F914();

    (*(v193 + 56))(v104, 0, 1, v202);
    sub_1DA7BA120(v104, &qword_1ECBD6310, &unk_1DA95F3B0);
    v106 = v216;
    v107 = sub_1DA940584();
    v108 = sub_1DA940F34();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v218 = v110;
      *v109 = 136315138;
      v111 = [v106 identifier];

      if (v111)
      {
        v112 = sub_1DA940A14();
        v114 = v113;

        v115 = sub_1DA7AE6E8(v112, v114, &v218);

        *(v109 + 4) = v115;
        v116 = "UserNotificationsCloudPushHandler add: %s communicationImage not fetched and delivered as nil ";
        goto LABEL_46;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

LABEL_47:

    v123 = v203;
  }

  else
  {
    v117 = v190;
    (*(v193 + 56))(v190, 1, 1, v202);
    sub_1DA7BA120(v117, &qword_1ECBD6310, &unk_1DA95F3B0);
    v106 = v216;
    v107 = sub_1DA940584();
    v108 = sub_1DA940F34();
    if (!os_log_type_enabled(v107, v108))
    {
      goto LABEL_47;
    }

    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v218 = v110;
    *v109 = 136315138;
    v118 = [v106 identifier];

    if (!v118)
    {
      goto LABEL_70;
    }

    v119 = sub_1DA940A14();
    v121 = v120;

    v122 = sub_1DA7AE6E8(v119, v121, &v218);

    *(v109 + 4) = v122;
    v116 = "UserNotificationsCloudPushHandler add: %s communicationContextContentURL is nil";
LABEL_46:
    _os_log_impl(&dword_1DA7A9000, v107, v108, v116, v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1E12739F0](v110, -1, -1);
    MEMORY[0x1E12739F0](v109, -1, -1);

    v123 = v203;
    v42 = v210;
    a2 = v211;
  }

  v124 = v191;
  v125 = v192;
  v126 = v192 + *(v191 + 20);
  v127 = v189;
  *v126 = v42;
  *(v126 + 1) = v127;
  *(v126 + 1) = xmmword_1DA960160;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v125 = a2;
  v125[1] = v123;
  v220 = v124;
  v221 = sub_1DA8D3354();
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v218);
  sub_1DA8D33AC(v125, boxed_opaque_existential_2);
  v129 = v127;
  v130 = v42;

  sub_1DA841298(&v218, 0, 1);
  v131 = v204;
  v133 = v132;
  v135 = v134;
  __swift_destroy_boxed_opaque_existential_1(&v218);
  v136 = v135 >> 62;
  if ((v135 >> 62) > 1)
  {
    v137 = v186;
    v138 = "UNNotificationPresentationOptions";
    if (v136 != 2)
    {
      goto LABEL_61;
    }

    v140 = *(v133 + 16);
    v139 = *(v133 + 24);
    v141 = __OFSUB__(v139, v140);
    v142 = v139 - v140;
    if (!v141)
    {
      if (v142)
      {
        goto LABEL_55;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v137 = v186;
  v138 = "UNNotificationPresentationOptions";
  if (!v136)
  {
    if (!BYTE6(v135))
    {
      goto LABEL_61;
    }

LABEL_55:
    v143 = v130;

    sub_1DA841874(v133, v135);
    v144 = sub_1DA940584();
    v145 = sub_1DA940F34();

    sub_1DA828324(v133, v135);
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v217[0] = v214;
      *v146 = *(v138 + 349);
      v147 = v143;
      v148 = [(SEL *)v147 description];
      v149 = sub_1DA940A14();
      v215 = v143;
      v150 = v149;
      v152 = v151;

      v153 = sub_1DA7AE6E8(v150, v152, v217);

      *(v146 + 4) = v153;
      *(v146 + 12) = 2080;
      sub_1DA7BABAC((v204 + 2), &v218);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v154 = sub_1DA940A74();
      v156 = sub_1DA7AE6E8(v154, v155, v217);

      *(v146 + 14) = v156;
      *(v146 + 22) = 2080;
      sub_1DA841874(v133, v135);
      v157 = sub_1DA93F984();
      v159 = v158;
      sub_1DA828324(v133, v135);
      v160 = sub_1DA7AE6E8(v157, v159, v217);
      v143 = v215;

      *(v146 + 24) = v160;
      _os_log_impl(&dword_1DA7A9000, v144, v145, "UserNotificationsCloudPushHandler add: %s target:%s notificationData: %s", v146, 0x20u);
      v161 = v214;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v161, -1, -1);
      v162 = v146;
      v131 = v204;
      MEMORY[0x1E12739F0](v162, -1, -1);
    }

    sub_1DA7BABAC((v131 + 2), &v218);
    v163 = v220;
    v164 = v221;
    __swift_project_boxed_opaque_existential_1(&v218, v220);
    v165 = [(SEL *)v143 notificationRecord];
    v166 = [v165 identifier];

    if (v166)
    {
      v167 = sub_1DA940A14();
      v169 = v168;

      v170 = v192;
      (*(v164 + 24))(v133, v135, v167, v169, v211, v203, v192, v163, v164);

      sub_1DA828324(v133, v135);
      sub_1DA8D3410(v170);
      __swift_destroy_boxed_opaque_existential_1(&v218);
      return;
    }

    goto LABEL_71;
  }

  if (__OFSUB__(HIDWORD(v133), v133))
  {
    goto LABEL_66;
  }

  if (HIDWORD(v133) != v133)
  {
    goto LABEL_55;
  }

LABEL_61:
  sub_1DA8D33AC(v125, v137);

  v171 = sub_1DA940584();
  v172 = sub_1DA940F14();

  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v217[0] = v215;
    *v173 = 136315394;
    v174 = v187;
    sub_1DA8D33AC(v137, v187);
    v218 = 0;
    v219 = 0xE000000000000000;
    v175 = *v174;
    v176 = *(v174 + 1);
    LODWORD(v214) = v172;
    MEMORY[0x1E1271BD0](v175, v176);
    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    sub_1DA8D346C(&v174[*(v191 + 20)]);
    v177 = v218;
    v178 = v219;
    sub_1DA8D3410(v137);
    sub_1DA8D3410(v174);
    v179 = sub_1DA7AE6E8(v177, v178, v217);

    *(v173 + 4) = v179;
    *(v173 + 12) = 2080;
    sub_1DA7BABAC((v131 + 2), &v218);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v180 = sub_1DA940A74();
    v182 = sub_1DA7AE6E8(v180, v181, v217);

    *(v173 + 14) = v182;
    _os_log_impl(&dword_1DA7A9000, v171, v214, "UserNotificationsCloudPushHandler add: %s target:%s data.count == 0", v173, 0x16u);
    v183 = v215;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v183, -1, -1);
    MEMORY[0x1E12739F0](v173, -1, -1);

    sub_1DA828324(v133, v135);
    v184 = v192;
  }

  else
  {

    sub_1DA828324(v133, v135);
    sub_1DA8D3410(v137);
    v184 = v125;
  }

  sub_1DA8D3410(v184);
}

void sub_1DA8F8FC0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v99 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v105 = &v99 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v99 - v15);
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  v18 = __swift_project_value_buffer(v17, qword_1EE11ADC0);
  v19 = a1;

  v107 = v18;
  v20 = sub_1DA940584();
  v21 = sub_1DA940F34();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v106 = a3;
    v23 = v22;
    v102 = swift_slowAlloc();
    v108[0] = v102;
    *v23 = 136315650;
    v24 = v19;
    v101 = v21;
    v25 = v4;
    v26 = v24;
    v27 = [v24 description];
    v28 = sub_1DA940A14();
    v100 = v20;
    v29 = v28;
    v30 = v8;
    v31 = a2;
    v32 = v16;
    v34 = v33;

    v4 = v25;
    v35 = sub_1DA7AE6E8(v29, v34, v108);
    v16 = v32;
    a2 = v31;
    v8 = v30;

    *(v23 + 4) = v35;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DA7AE6E8(a2, v106, v108);
    *(v23 + 22) = 2080;
    sub_1DA7BABAC(v25 + 16, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v36 = sub_1DA940A74();
    v38 = sub_1DA7AE6E8(v36, v37, v108);

    *(v23 + 24) = v38;
    v39 = v100;
    _os_log_impl(&dword_1DA7A9000, v100, v101, "UserNotificationsCloudPushHandler remove: %s bundleIdentifier: %s target:%s", v23, 0x20u);
    v40 = v102;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v40, -1, -1);
    v41 = v23;
    a3 = v106;
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  else
  {
  }

  *(v16 + *(v8 + 20)) = v19;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v16 = a2;
  v16[1] = a3;
  v111 = v8;
  v112 = sub_1DA8D3354();
  v42 = __swift_allocate_boxed_opaque_existential_2(&v109);
  sub_1DA8D33AC(v16, v42);
  v43 = a2;
  v44 = v19;

  sub_1DA841298(&v109, 0, 1);
  v46 = v45;
  v48 = v47;
  v105 = v43;
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v49 = v48 >> 62;
  if ((v48 >> 62) <= 1)
  {
    if (!v49)
    {
      if (!BYTE6(v48))
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (!__OFSUB__(HIDWORD(v46), v46))
    {
      if (HIDWORD(v46) == v46)
      {
        goto LABEL_19;
      }

LABEL_13:
      v54 = v44;

      sub_1DA841874(v46, v48);
      v55 = sub_1DA940584();
      v56 = sub_1DA940F34();

      sub_1DA828324(v46, v48);
      v57 = os_log_type_enabled(v55, v56);
      v107 = v46;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v106 = a3;
        v59 = v58;
        v103 = swift_slowAlloc();
        v104 = v16;
        v108[0] = v103;
        *v59 = 136315650;
        v60 = v54;
        v61 = [v60 description];
        v62 = sub_1DA940A14();
        v63 = v4;
        v65 = v64;

        v66 = sub_1DA7AE6E8(v62, v65, v108);
        v4 = v63;

        *(v59 + 4) = v66;
        *(v59 + 12) = 2080;
        sub_1DA7BABAC(v63 + 16, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v67 = sub_1DA940A74();
        v69 = sub_1DA7AE6E8(v67, v68, v108);

        *(v59 + 14) = v69;
        *(v59 + 22) = 2080;
        v70 = v107;
        sub_1DA841874(v107, v48);
        v71 = sub_1DA93F984();
        v73 = v72;
        sub_1DA828324(v70, v48);
        v74 = sub_1DA7AE6E8(v71, v73, v108);

        *(v59 + 24) = v74;
        _os_log_impl(&dword_1DA7A9000, v55, v56, "UserNotificationsCloudPushHandler remove: %s target:%s notificationData: %s", v59, 0x20u);
        v75 = v103;
        swift_arrayDestroy();
        v16 = v104;
        MEMORY[0x1E12739F0](v75, -1, -1);
        v76 = v59;
        a3 = v106;
        MEMORY[0x1E12739F0](v76, -1, -1);
      }

      sub_1DA7BABAC(v4 + 16, &v109);
      v77 = v111;
      v78 = v112;
      __swift_project_boxed_opaque_existential_1(&v109, v111);
      v79 = [v54 notificationRecord];
      v80 = [v79 identifier];

      if (v80)
      {
        v81 = sub_1DA940A14();
        v83 = v82;

        v84 = v107;
        (*(v78 + 24))(v107, v48, v81, v83, v105, a3, v16, v77, v78);

        sub_1DA828324(v84, v48);
        sub_1DA8D3410(v16);
        __swift_destroy_boxed_opaque_existential_1(&v109);
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if (v49 == 2)
  {
    v51 = *(v46 + 16);
    v50 = *(v46 + 24);
    v52 = __OFSUB__(v50, v51);
    v53 = v50 - v51;
    if (v52)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v53)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  v85 = v8;
  v86 = v103;
  sub_1DA8D33AC(v16, v103);

  v87 = sub_1DA940584();
  v88 = sub_1DA940F14();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v107 = v46;
    v90 = v89;
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v90 = 136315394;
    v91 = v104;
    sub_1DA8D33AC(v86, v104);
    v109 = 0;
    v110 = 0xE000000000000000;
    MEMORY[0x1E1271BD0](*v91, v91[1]);
    MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
    sub_1DA8D346C(v91 + *(v85 + 20));
    v92 = v109;
    v93 = v110;
    sub_1DA8D3410(v86);
    sub_1DA8D3410(v91);
    v94 = sub_1DA7AE6E8(v92, v93, v108);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    sub_1DA7BABAC(v4 + 16, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v95 = sub_1DA940A74();
    v97 = sub_1DA7AE6E8(v95, v96, v108);

    *(v90 + 14) = v97;
    _os_log_impl(&dword_1DA7A9000, v87, v88, "UserNotificationsCloudPushHandler remove: %s target:%s data.count == 0", v90, 0x16u);
    v98 = v106;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v98, -1, -1);
    MEMORY[0x1E12739F0](v90, -1, -1);

    sub_1DA828324(v107, v48);
  }

  else
  {

    sub_1DA828324(v46, v48);
    sub_1DA8D3410(v86);
  }

  sub_1DA8D3410(v16);
}

uint64_t sub_1DA8F9A30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationsCloudRecord(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v88 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v88 - v16;
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v18 = sub_1DA9405A4();
  v19 = __swift_project_value_buffer(v18, qword_1EE11ADC0);

  v93 = v19;
  v20 = sub_1DA940584();
  v21 = sub_1DA940F34();

  v22 = os_log_type_enabled(v20, v21);
  v94 = v4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v92 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v89 = v8;
    v26 = v25;
    v95[0] = v25;
    *v24 = 136315650;
    v27 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
    v28 = MEMORY[0x1E1271CD0](a1, v27);
    v30 = sub_1DA7AE6E8(v28, v29, v95);
    v88 = a1;
    v31 = v11;
    v32 = v30;

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DA7AE6E8(v92, a3, v95);
    *(v24 + 22) = 2080;
    sub_1DA7BABAC((v4 + 2), &v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v33 = sub_1DA940A74();
    v35 = sub_1DA7AE6E8(v33, v34, v95);

    *(v24 + 24) = v35;
    v11 = v31;
    a1 = v88;
    _os_log_impl(&dword_1DA7A9000, v20, v21, "UserNotificationsCloudPushHandler categories: %s bundleIdentifier: %s target:%s", v24, 0x20u);
    swift_arrayDestroy();
    v36 = v26;
    v8 = v89;
    MEMORY[0x1E12739F0](v36, -1, -1);
    v37 = v24;
    a2 = v92;
    MEMORY[0x1E12739F0](v37, -1, -1);
  }

  *&v17[*(v8 + 20)] = a1;
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v17 = a2;
  *(v17 + 1) = a3;
  v98 = v8;
  v99 = sub_1DA8D3354();
  v38 = __swift_allocate_boxed_opaque_existential_2(&v96);
  sub_1DA8D33AC(v17, v38);

  sub_1DA841298(&v96, 0, 1);
  v40 = v39;
  v41 = a1;
  v43 = v42;
  result = __swift_destroy_boxed_opaque_existential_1(&v96);
  v45 = v43 >> 62;
  v46 = v94;
  if ((v43 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_17;
    }

    v48 = *(v40 + 16);
    v47 = *(v40 + 24);
    v49 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (!v49)
    {
      if (v50)
      {
        goto LABEL_12;
      }

LABEL_17:
      v92 = v40;
      v74 = v90;
      sub_1DA8D33AC(v17, v90);

      v75 = sub_1DA940584();
      v76 = sub_1DA940F14();

      if (!os_log_type_enabled(v75, v76))
      {

        sub_1DA828324(v92, v43);
        sub_1DA8D3410(v74);
        return sub_1DA8D3410(v17);
      }

      v77 = swift_slowAlloc();
      v78 = v11;
      v79 = swift_slowAlloc();
      v95[0] = v79;
      *v77 = 136315394;
      sub_1DA8D33AC(v74, v78);
      v96 = 0;
      v97 = 0xE000000000000000;
      v80 = *v78;
      v81 = v78[1];
      LODWORD(v93) = v76;
      MEMORY[0x1E1271BD0](v80, v81);
      MEMORY[0x1E1271BD0](8250, 0xE200000000000000);
      sub_1DA8D346C(v78 + *(v8 + 20));
      v82 = v96;
      v83 = v97;
      sub_1DA8D3410(v74);
      sub_1DA8D3410(v78);
      v84 = sub_1DA7AE6E8(v82, v83, v95);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2080;
      sub_1DA7BABAC((v46 + 2), &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
      v85 = sub_1DA940A74();
      v87 = sub_1DA7AE6E8(v85, v86, v95);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_1DA7A9000, v75, v93, "UserNotificationsCloudPushHandler category: %s target:%s data.count == 0", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v79, -1, -1);
      MEMORY[0x1E12739F0](v77, -1, -1);

      v73 = v92;
LABEL_19:
      sub_1DA828324(v73, v43);
      return sub_1DA8D3410(v17);
    }

    __break(1u);
  }

  else
  {
    if (!v45)
    {
      if (!BYTE6(v43))
      {
        goto LABEL_17;
      }

LABEL_12:
      v51 = v41;

      sub_1DA841874(v40, v43);
      v52 = sub_1DA940584();
      v53 = sub_1DA940F34();

      sub_1DA828324(v40, v43);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v92 = a2;
        v55 = v54;
        v56 = swift_slowAlloc();
        v95[0] = v56;
        *v55 = 136315650;
        v57 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
        v58 = MEMORY[0x1E1271CD0](v51, v57);
        v60 = sub_1DA7AE6E8(v58, v59, v95);
        v93 = a3;
        v91 = v17;
        v61 = v46;
        v62 = v60;

        *(v55 + 4) = v62;
        *(v55 + 12) = 2080;
        sub_1DA7BABAC((v61 + 2), &v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
        v63 = sub_1DA940A74();
        v65 = sub_1DA7AE6E8(v63, v64, v95);

        *(v55 + 14) = v65;
        *(v55 + 22) = 2080;
        sub_1DA841874(v40, v43);
        v66 = sub_1DA93F984();
        v68 = v67;
        sub_1DA828324(v40, v43);
        v69 = sub_1DA7AE6E8(v66, v68, v95);
        v46 = v61;
        v17 = v91;
        a3 = v93;

        *(v55 + 24) = v69;
        _os_log_impl(&dword_1DA7A9000, v52, v53, "UserNotificationsCloudPushHandler category: %s target:%s notificationData: %s", v55, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v56, -1, -1);
        v70 = v55;
        a2 = v92;
        MEMORY[0x1E12739F0](v70, -1, -1);
      }

      v71 = v46[5];
      v72 = v46[6];
      __swift_project_boxed_opaque_existential_1(v46 + 2, v71);
      (*(v72 + 24))(v40, v43, 0x69726F6765746163, 0xEA00000000007365, a2, a3, v17, v71, v72);
      v73 = v40;
      goto LABEL_19;
    }

    if (!__OFSUB__(HIDWORD(v40), v40))
    {
      if (HIDWORD(v40) != v40)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserNotificationsCloudPushHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t UserNotificationsCloudPushHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8FA4C8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v23);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a2, a4);
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11ADC0);
  sub_1DA7BABAC(a1, v22);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    sub_1DA7BABAC(v22, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v15 = sub_1DA940A74();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = sub_1DA7AE6E8(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "UserNotificationsCloudPushHandler init with target: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1DA7B9FAC(a1, a3 + 16);
  sub_1DA7B9FAC(&v23, a3 + 56);
  return a3;
}

uint64_t sub_1DA8FA788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v26);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_2, a1, a4);
  v24 = type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v25 = &protocol witness table for _UNImageProviderCommuncationContextDataProvider;
  *&v23 = a2;
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11ADC0);
  sub_1DA7BABAC(&v26, v22);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    sub_1DA7BABAC(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v15 = sub_1DA940A74();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = sub_1DA7AE6E8(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "UserNotificationsCloudPushHandler init with target: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    MEMORY[0x1E12739F0](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1DA7B9FAC(&v26, a3 + 16);
  sub_1DA7B9FAC(&v23, a3 + 56);
  return a3;
}

uint64_t sub_1DA8FAA08()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AD90);
  __swift_project_value_buffer(v0, qword_1EE11AD90);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAAD0()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AFB8);
  __swift_project_value_buffer(v0, qword_1EE11AFB8);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAB50()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE11AD78);
  __swift_project_value_buffer(v0, qword_1EE11AD78);
  return sub_1DA940594();
}

uint64_t sub_1DA8FAC7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DA940594();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  v3 = __swift_project_value_buffer(v2, qword_1EE114E48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AlertCoordinatorClient.__allocating_init()()
{
  v0 = swift_allocObject();
  AlertCoordinatorClient.init()();
  return v0;
}

uint64_t AlertCoordinatorClient.init()()
{
  v9 = sub_1DA940FC4();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DA7AC344();
  v8[0] = "NotificationsPipelineSignpost";
  v8[1] = v6;
  sub_1DA940824();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DA7AD080(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 24) = 0;
  return v0;
}

double sub_1DA8FB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA940744();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD47D8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DA9405A4();
  __swift_project_value_buffer(v8, qword_1ECBD7018);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = sub_1DA940584();
  v11 = sub_1DA940F14();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_1DA7AD080(&qword_1ECBD5E80, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1DA7A9000, v10, v11, "XPC session cancelled: %@", v13, 0xCu);
    sub_1DA828378(v14);
    MEMORY[0x1E12739F0](v14, -1, -1);
    v17 = v13;
    a2 = v20;
    MEMORY[0x1E12739F0](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(a2 + 24) = 0;

  return result;
}

void sub_1DA8FB2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  if (!sub_1DA8FC1BC())
  {
    goto LABEL_4;
  }

  sub_1DA93FA84();
  if (fabs(round(v17)) > sub_1DA941844())
  {

LABEL_4:
    if (qword_1ECBD47D8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBD7018);
    (*(v6 + 16))(v8, a4, v5);
    v19 = sub_1DA940584();
    v20 = sub_1DA940F04();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 67109378;
      *(v21 + 4) = v42 & 1;
      *(v21 + 8) = 2080;
      sub_1DA7AD080(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v23 = sub_1DA941614();
      v25 = v24;
      (*(v6 + 8))(v8, v5);
      v26 = sub_1DA7AE6E8(v23, v25, &v43);

      *(v21 + 10) = v26;
      _os_log_impl(&dword_1DA7A9000, v19, v20, "Ignoring didAlert(%{BOOL}d) for notification from %s", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return;
  }

  v27 = v42 & 1;
  (*(v6 + 16))(&v16[*(v41 + 24)], a4, v5);
  *v16 = v27;
  v28 = v40;
  *(v16 + 1) = v39;
  *(v16 + 2) = v28;
  v29 = qword_1ECBD47D8;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_1DA9405A4();
  __swift_project_value_buffer(v30, qword_1ECBD7018);
  sub_1DA8FC808(v16, v14);
  v31 = sub_1DA940584();
  v32 = sub_1DA940F34();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136315138;
    sub_1DA8FC808(v14, v11);
    v35 = sub_1DA940A74();
    v37 = v36;
    sub_1DA8FC86C(v14);
    v38 = sub_1DA7AE6E8(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DA7A9000, v31, v32, "Sending message: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12739F0](v34, -1, -1);
    MEMORY[0x1E12739F0](v33, -1, -1);
  }

  else
  {

    sub_1DA8FC86C(v14);
  }

  sub_1DA7AD080(&qword_1ECBD7030, type metadata accessor for AlertCoordinatorXPCMessage, &unk_1DA9644DC);
  sub_1DA940624();
  sub_1DA8FC86C(v16);
}

uint64_t sub_1DA8FB818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a1;
  v5 = sub_1DA93FAF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlertCoordinatorXPCMessage(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = v55 - v16;
  v17 = sub_1DA8FC1BC();
  if (!v17)
  {
    goto LABEL_4;
  }

  v56 = v9;
  v18 = v17;

  sub_1DA93FA84();
  if (fabs(round(v19)) <= sub_1DA941844())
  {
    v55[1] = v18;
    v30 = v58;
    (*(v6 + 16))(&v58[*(v56 + 24)], a3, v5);
    *v30 = 2;
    *(v30 + 8) = v57;
    *(v30 + 16) = a2;
    v31 = qword_1ECBD47D8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_1DA9405A4();
    __swift_project_value_buffer(v32, qword_1ECBD7018);
    sub_1DA8FC808(v30, v15);
    v33 = sub_1DA940584();
    v34 = sub_1DA940F34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61[0] = v36;
      *v35 = 136315138;
      sub_1DA8FC808(v15, v12);
      v37 = sub_1DA940A74();
      v39 = v38;
      sub_1DA8FC86C(v15);
      v40 = sub_1DA7AE6E8(v37, v39, v61);

      *(v35 + 4) = v40;
      v30 = v58;
      _os_log_impl(&dword_1DA7A9000, v33, v34, "Sending message: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E12739F0](v36, -1, -1);
      MEMORY[0x1E12739F0](v35, -1, -1);
    }

    else
    {

      sub_1DA8FC86C(v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD7038, &qword_1DA962928);
    sub_1DA7AD080(&qword_1ECBD7030, type metadata accessor for AlertCoordinatorXPCMessage, &unk_1DA9644DC);
    sub_1DA8FC8C8();
    v41 = v59;
    sub_1DA940664();
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      if (v62 == 255)
      {
        goto LABEL_23;
      }

      v29 = v61[0];
      if ((v62 & 1) == 0)
      {
        sub_1DA8FC86C(v30);

        return v29 & 1;
      }

      v52 = v61[1];
      sub_1DA8FCA94();
      swift_willThrowTypedImpl();
      v42 = swift_allocError();
      *v53 = v29;
      v53[1] = v52;
    }

    v43 = v42;
    v44 = sub_1DA940584();
    v45 = sub_1DA940F14();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60 = v42;
      v61[0] = v47;
      *v46 = 136315138;
      v48 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
      v49 = sub_1DA940A74();
      v51 = sub_1DA7AE6E8(v49, v50, v61);

      *(v46 + 4) = v51;
      v30 = v58;
      _os_log_impl(&dword_1DA7A9000, v44, v45, "Error querying coordinator: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1E12739F0](v47, -1, -1);
      MEMORY[0x1E12739F0](v46, -1, -1);

LABEL_24:
      sub_1DA8FC86C(v30);
      LOBYTE(v29) = 1;
      return v29 & 1;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_4:
  if (qword_1ECBD47D8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DA9405A4();
  __swift_project_value_buffer(v20, qword_1ECBD7018);
  (*(v6 + 16))(v8, a3, v5);
  v21 = sub_1DA940584();
  v22 = sub_1DA940F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61[0] = v24;
    *v23 = 136315138;
    sub_1DA7AD080(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v25 = sub_1DA941614();
    v27 = v26;
    (*(v6 + 8))(v8, v5);
    v28 = sub_1DA7AE6E8(v25, v27, v61);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1DA7A9000, v21, v22, "Skipping coordination for notification from %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12739F0](v24, -1, -1);
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v29) = 1;
  return v29 & 1;
}