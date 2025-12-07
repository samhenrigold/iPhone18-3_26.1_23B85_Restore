uint64_t sub_22CE40978(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_22CE40A60(a4, a2, a3, MEMORY[0x277CBCE20]);
  return sub_22CE85CE4();
}

uint64_t sub_22CE40A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22CE40B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22CE85FE4();
  return v6;
}

uint64_t sub_22CE40B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF078, &qword_22CE88D30);
  sub_22CE85FE4();
  result = v14;
  v1 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v2 = *(v14 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v14 + 96);
    v12 = *(v14 + 16);
    v13 = v14;
    while (v3 < *(result + 16))
    {
      v5 = *v4 | (*(v4 + 2) << 16);
      if ((~v5 & 0x810000) == 0)
      {
        v7 = *(v4 - 2);
        v6 = *(v4 - 1);
        v9 = *(v4 - 4);
        v8 = *(v4 - 3);
        v11 = *(v4 - 6);
        v10 = *(v4 - 5);

        sub_22CE449A4(v11, v10, v9, v8, v7, v6, v5);

        sub_22CE82A9C(&v14, v11, v10);

        sub_22CE62988(v11, v10, v9, v8, v7, v6, v5);
        v2 = v12;
        result = v13;
      }

      ++v3;
      v4 += 36;
      if (v2 == v3)
      {
        v1 = v15;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return v1;
  }

  return result;
}

uint64_t sub_22CE40D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22CE40D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = (*(v4 + 40))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_22CE40EB0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22CE40F80(*(v1 + 16), 0);
  v4 = sub_22CE41080(&v7, v3 + 32, v2, v1);
  v5 = v7;

  sub_22CE412C8(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_22CE40F80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_22CE41080(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 16);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x44uLL);
      if (v14 == v10)
      {
        sub_22CE41214(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_22CE41214(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22CE412F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE41348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
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

uint64_t sub_22CE413CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = (*(v4 + 8))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *sub_22CE414B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22CE415BC(*(v1 + 16), 0);
  v4 = *(type metadata accessor for PushToken(0) - 8);
  v5 = sub_22CE416B8(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v8;

  sub_22CE412C8(v6);
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_22CE415BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECE8, &qword_22CE86D48);
  v4 = *(type metadata accessor for PushToken(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE416B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PushToken(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_22CE41958(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for PushToken);
      v24 = v23;
      v25 = v31;
      sub_22CE419C0(v24, v31, type metadata accessor for PushToken);
      sub_22CE419C0(v25, a2, type metadata accessor for PushToken);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PushToken(uint64_t a1)
{
  result = qword_281445658;
  if (!qword_281445658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE41958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE419C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE41A3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CE41B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t PushToken.token.getter()
{
  v1 = *v0;
  sub_22CE41BF0(*v0, *(v0 + 8));
  return v1;
}

void sub_22CE41BF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_22CE41C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_22CE41CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      v5 = [*(result + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
      if (!v5)
      {
LABEL_10:
        sub_22CE41DF8(v5);
      }

      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v6 = sub_22CE85C84();
      __swift_project_value_buffer(v6, qword_281445368);
      v7 = sub_22CE85C74();
      v8 = sub_22CE85FA4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22CE3F000, v7, v8, "Device activity state is inactive but there is an active CarPlay session, should handle activity changes.", v9, 2u);
        MEMORY[0x2318C20D0](v9, -1, -1);
      }
    }

    LOBYTE(v5) = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_22CE41DF8(char a1)
{
  v2 = v1;
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22CE85D54();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_281445360 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_22CE85C84();
  __swift_project_value_buffer(v14, qword_281445368);
  v15 = sub_22CE85C74();
  v16 = sub_22CE85FA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67240192;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&dword_22CE3F000, v15, v16, "Device activity state may have changed to %{BOOL,public}d", v17, 8u);
    MEMORY[0x2318C20D0](v17, -1, -1);
  }

  swift_beginAccess();
  sub_22CE422C0(v2 + 88, &v27);
  if (*(&v28 + 1))
  {
    sub_22CE40D28(&v27, v26);
    sub_22CE42330(&v27, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_22CE42330(&v27, &unk_27D9EEF30, &unk_22CE87948);
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v27, v2 + 88);
  result = swift_endAccess();
  if (a1)
  {
    sub_22CE85954();
    v19 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v19, v7, v4);
    result = swift_endAccess();
    if ((*(v2 + 80) & 1) == 0)
    {
      v20 = sub_22CE85C74();
      v21 = sub_22CE85FA4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22CE3F000, v20, v21, "Device is active; publishing budget level change event", v22, 2u);
        MEMORY[0x2318C20D0](v22, -1, -1);
      }

      *(v2 + 80) = 1;
      LOBYTE(v27) = 1;
      return sub_22CE85CB4();
    }
  }

  else if (*(v2 + 80) == 1)
  {
    v23 = sub_22CE85C74();
    v24 = sub_22CE85FA4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22CE3F000, v23, v24, "Device is inactive; scheduling check after grace period", v25, 2u);
      MEMORY[0x2318C20D0](v25, -1, -1);
    }

    *(v2 + 80) = 0;
    return sub_22CE44A24();
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

uint64_t sub_22CE422C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF30, &unk_22CE87948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE42330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22CE423C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF30, &unk_22CE87948);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE42438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210, MEMORY[0x277CBCE18]);
    sub_22CE85CD4();
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22CE42584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE425CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE42614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE4265C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE426A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CE426EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210, MEMORY[0x277CBCE18]);
  return sub_22CE85CD4();
}

uint64_t sub_22CE42788(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v2 = sub_22CE85C84();
    __swift_project_value_buffer(v2, qword_281445368);
    v3 = sub_22CE85C74();
    v4 = sub_22CE85FA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CE3F000, v3, v4, "Budget level resolver published a change", v5, 2u);
      MEMORY[0x2318C20D0](v5, -1, -1);
    }

    sub_22CE42F54();
  }

  return result;
}

void sub_22CE428B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v28 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v26 = MEMORY[0x277D84F90];
  v27 = v2;
LABEL_4:
  v8 = v7;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v7 = v8;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v28 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(v28 + 56) + 72 * v10;
    v30[0] = *v14;
    v15 = *(v14 + 16);
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v31 = *(v14 + 64);
    v30[2] = v16;
    v30[3] = v17;
    v30[1] = v15;
    v32[0] = v13;
    v32[1] = v12;
    v37 = v31;
    v35 = v16;
    v36 = v17;
    v33 = v30[0];
    v34 = v15;
    v19 = *(&v15 + 1);
    v18 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v31 | (SBYTE2(v31) << 16);
    if ((v22 & 0x80000000) == 0)
    {

      sub_22CE41214(v30, v29);
      sub_22CE449A4(v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
      sub_22CE42330(v32, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22CE604E4(0, *(v26 + 2) + 1, 1, v26);
      }

      v24 = *(v26 + 2);
      v23 = *(v26 + 3);
      if (v24 >= v23 >> 1)
      {
        v26 = sub_22CE604E4((v23 > 1), v24 + 1, 1, v26);
      }

      *(v26 + 2) = v24 + 1;
      v25 = &v26[16 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
      v2 = v27;
      goto LABEL_4;
    }

    sub_22CE41214(v30, v29);
    sub_22CE449A4(v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
    sub_22CE42330(v32, &qword_27D9EEE70, &unk_22CE87C20);
    if (v22 != 2)
    {
      if (v22)
      {
        sub_22CE62924(v20, *(&v20 + 1), v21, *(&v21 + 1), 1);
        sub_22CE62988(v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
      }

      else
      {
        sub_22CE62924(v20, *(&v20 + 1), v21, *(&v21 + 1), 0);
        sub_22CE62988(v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
      }

      v19 = *(&v20 + 1);
      v18 = v20;
      goto LABEL_18;
    }

    sub_22CE62988(v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
    v8 = v7;
    v2 = v27;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_22CE4478C(v26);

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22CE42C24(uint64_t a1)
{
  v1 = sub_22CE85D14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 40);
    aBlock[4] = sub_22CE42768;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE42F10;
    aBlock[3] = &block_descriptor_20;
    v13 = result;
    v10 = _Block_copy(aBlock);

    sub_22CE85D24();
    v15 = MEMORY[0x277D84F90];
    sub_22CE42584(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    v12 = v5;
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v8, v4, v10);
    _Block_release(v10);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  return result;
}

uint64_t sub_22CE42F10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_22CE42F54()
{
  v1 = v0;
  v112 = sub_22CE85D14();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v3 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22CE85D34();
  v110 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v109 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22CE85974();
  v128 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Budget(0);
  v130 = *(v132 - 8);
  v7 = MEMORY[0x28223BE20](v132);
  v105 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v100 - v10;
  MEMORY[0x28223BE20](v9);
  v129 = &v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v133 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  v18 = sub_22CE85D44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v0[6];
  *v21 = v22;
  v23 = *(v19 + 104);
  v119 = *MEMORY[0x277D85200];
  v118 = v19 + 104;
  v117 = v23;
  v23(v21);
  v124 = v22;
  v24 = sub_22CE85D54();
  v25 = *(v19 + 8);
  v120 = v21;
  v122 = v18;
  v121 = v19 + 8;
  v116 = v25;
  v25(v21, v18);
  if ((v24 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v107 = v3;
  v108 = v4;
  v26 = v1[36];
  v27 = v1[37];
  v125 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 33, v26);
  v28 = (*(v27 + 8))(v26, v27);
  LODWORD(v123) = 0;
  v29 = 0;
  v30 = *(v28 + 64);
  v126 = v28 + 64;
  v131 = v28;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;
  v104 = (v128 + 40);
  v127 = v17;
  v128 = v11;
  while (2)
  {
    v35 = v29;
    v36 = v132;
    v37 = v133;
    if (!v33)
    {
LABEL_7:
      if (v34 <= v35 + 1)
      {
        v39 = v35 + 1;
      }

      else
      {
        v39 = v34;
      }

      v29 = v39 - 1;
      while (1)
      {
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v38 >= v34)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
          (*(*(v50 - 8) + 56))(v37, 1, 1, v50);
          v33 = 0;
          goto LABEL_15;
        }

        v33 = *(v126 + 8 * v38);
        ++v35;
        if (v33)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    while (1)
    {
      v38 = v35;
LABEL_14:
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v41 = v40 | (v38 << 6);
      v42 = (*(v131 + 48) + 16 * v41);
      v44 = *v42;
      v43 = v42[1];
      v45 = v129;
      sub_22CE5E660(*(v131 + 56) + *(v130 + 72) * v41, v129, type metadata accessor for Budget);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      v47 = *(v46 + 48);
      v37 = v133;
      *v133 = v44;
      *(v37 + 8) = v43;
      sub_22CE5E5F8(v45, v37 + v47, type metadata accessor for Budget);
      (*(*(v46 - 8) + 56))(v37, 0, 1, v46);

      v29 = v38;
      v36 = v132;
      v17 = v127;
      v11 = v128;
LABEL_15:
      sub_22CE44874(v37, v17, &qword_27D9EEE60, &qword_22CE87B40);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      if ((*(*(v48 - 8) + 48))(v17, 1, v48) == 1)
      {

        if (v123)
        {
          v139 = sub_22CE5E868;
          v140 = v125;
          aBlock = MEMORY[0x277D85DD0];
          v136 = 1107296256;
          v137 = sub_22CE42F10;
          v138 = &block_descriptor_97;
          v96 = _Block_copy(&aBlock);

          v97 = v109;
          sub_22CE85D24();
          v134 = MEMORY[0x277D84F90];
          sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
          sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
          v98 = v107;
          v99 = v112;
          sub_22CE86034();
          MEMORY[0x2318C1890](0, v97, v98, v96);
          _Block_release(v96);
          (*(v111 + 8))(v98, v99);
          (*(v110 + 8))(v97, v108);
        }

        return;
      }

      sub_22CE5E5F8(&v17[*(v48 + 48)], v11, type metadata accessor for Budget);
      v49 = *(v36 + 36);
      if (v11[v49])
      {
        break;
      }

      sub_22CE5E6C8(v11, type metadata accessor for Budget);
      v35 = v29;
      v37 = v133;
      if (!v33)
      {
        goto LABEL_7;
      }
    }

    v103 = &v11[*(v36 + 28)];
    v51 = *v103;
    v113 = *(v103 + 1);
    v52 = v120;
    *v120 = v124;
    v53 = v122;
    v117(v52, v119, v122);
    v54 = v124;
    LODWORD(v114) = sub_22CE85D54();
    v116(v52, v53);
    if ((v114 & 1) == 0)
    {
      goto LABEL_49;
    }

    v55 = v125;
    v57 = v125[11];
    v56 = v125[12];
    __swift_project_boxed_opaque_existential_1(v125 + 8, v57);
    aBlock = v51;
    v136 = v113;
    (*(v56 + 16))(&v134, &aBlock, v57, v56);
    LODWORD(v51) = v134;
    v58 = v11;
    if (v134 == v11[*(v132 + 32)])
    {
      goto LABEL_43;
    }

    v59 = v55[24];
    if (v59)
    {
      if (*(v59 + 16))
      {
        v60 = sub_22CE4DE0C();
        if (v61)
        {
          v123 = *(*(v59 + 56) + 8 * v60);
          v62 = v132;
          goto LABEL_31;
        }
      }
    }

    LODWORD(v114) = v51;
    v62 = v132;
    if (qword_281444EA0 != -1)
    {
      swift_once();
    }

    v63 = off_281444EA8;
    v51 = *(*(off_281444EA8 + 5) + 16);
    os_unfair_lock_lock(v51);
    v64 = v63[4];
    if (!*(v64 + 16))
    {
      goto LABEL_52;
    }

    v65 = sub_22CE4DE0C();
    if ((v66 & 1) == 0)
    {
      goto LABEL_53;
    }

    v123 = *(*(v64 + 56) + 8 * v65);
    os_unfair_lock_unlock(v51);
    LOBYTE(v51) = v114;
LABEL_31:
    v67 = *&v11[v62[11]];
    v68 = *&v11[v62[5]];
    v69 = __OFSUB__(v67, v68);
    v70 = v67 - v68;
    v71 = v125;
    if (v69)
    {
      goto LABEL_50;
    }

    v69 = __OFSUB__(v123, v70);
    v72 = v123 - v70;
    if (!v69)
    {
      v114 = v72;
      v73 = *(v103 + 1);
      v113 = *v103;
      v74 = &v11[v62[6]];
      v75 = *(v74 + 1);
      v102 = *v74;
      v76 = v11[v49];
      v101 = v75;

      v103 = v73;

      sub_22CE85954();
      v77 = v71[23];
      if (v77)
      {
        if (*(v77 + 16))
        {
          v78 = sub_22CE4DE0C();
          if (v79)
          {
            v80 = v76;
            v81 = *(*(v77 + 56) + 8 * v78);
            goto LABEL_42;
          }
        }
      }

      if (qword_281444EA0 != -1)
      {
        swift_once();
      }

      v82 = off_281444EA8;
      v83 = *(*(off_281444EA8 + 5) + 16);
      os_unfair_lock_lock(v83);
      v84 = v82[3];
      if (*(v84 + 16))
      {
        v85 = sub_22CE4DE0C();
        if ((v86 & 1) == 0)
        {
          goto LABEL_55;
        }

        v87 = v83;
        v80 = v76;
        v81 = *(*(v84 + 56) + 8 * v85);
        os_unfair_lock_unlock(v87);
LABEL_42:
        v88 = v105;
        sub_22CE858C4();
        v89 = v62[5];
        v90 = &v88[v62[7]];
        v91 = v103;
        *v90 = v113;
        v90[1] = v91;
        v92 = &v88[v62[6]];
        v93 = v101;
        *v92 = v102;
        *(v92 + 1) = v93;
        v88[v62[9]] = v80;
        (*v104)(v88, v115, v106);
        *&v88[v89] = v114;
        *&v88[v62[10]] = v81;
        *&v88[v62[11]] = v123;
        v88[v62[8]] = v51;
        v94 = v125[36];
        v95 = v125[37];
        __swift_project_boxed_opaque_existential_1(v125 + 33, v94);
        (*(v95 + 24))(v88, v94, v95);
        sub_22CE5E6C8(v11, type metadata accessor for Budget);
        LODWORD(v123) = 1;
        v58 = v88;
LABEL_43:
        sub_22CE5E6C8(v58, type metadata accessor for Budget);
        continue;
      }

      goto LABEL_54;
    }

    break;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t type metadata accessor for Budget(uint64_t a1)
{
  result = qword_2814453E8;
  if (!qword_2814453E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE43CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v1;
}

uint64_t sub_22CE43D8C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t sub_22CE43DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v4 = sub_22CE85C84();
    __swift_project_value_buffer(v4, qword_281445368);
    sub_22CE40D28(a1, v15);
    v5 = sub_22CE85C74();
    v6 = sub_22CE85FA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      sub_22CE40D28(v15, &v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE68, qword_22CE87B48);
      v9 = sub_22CE85E24();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v15);
      v12 = sub_22CE44280(v9, v11, &v14);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22CE3F000, v5, v6, "Budget enforcement policy changed: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2318C20D0](v8, -1, -1);
      MEMORY[0x2318C20D0](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210, MEMORY[0x277CBCE18]);
    sub_22CE85CD4();
  }

  return result;
}

uint64_t sub_22CE4402C()
{
  v1 = *v0;
  v2 = sub_22CE44074();

  return MEMORY[0x2821FB7B8](v1, &type metadata for Priority, &type metadata for Priority, v2);
}

unint64_t sub_22CE44074()
{
  result = qword_281445388[0];
  if (!qword_281445388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281445388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelSubscriptionFailure.Reason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22CE44168()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t storeEnumTagSinglePayload for ChannelSubscriptionFailure.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22CE44280(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22CE4434C(v11, 0, 0, 1, a1, a2);
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
    sub_22CE44458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22CE4434C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CE826CC(a5, a6);
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
    result = sub_22CE86114();
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

uint64_t sub_22CE44458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22CE444BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v4 = sub_22CE85C84();
    __swift_project_value_buffer(v4, qword_281445368);
    v5 = sub_22CE85C74();
    v6 = sub_22CE85FA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22CE3F000, v5, v6, "Budget server says priority has changed; updating enabled topics", v7, 2u);
      MEMORY[0x2318C20D0](v7, -1, -1);
    }

    sub_22CE445D0();
  }
}

uint64_t sub_22CE445D0()
{
  sub_22CE40D28(v0 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v17);
  v1 = v18;
  v2 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v3 = (*(v2 + 32))(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v5 = 0;
  v6 = *(v3 + 56);
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_8:
      v12 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_22CE783C8(v14, v13, 0);
      v9 &= v9 - 1;
      sub_22CE78AE0(v14, v13, v15, v16);

      result = swift_unknownObjectRelease();
      v5 = v11;
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v9 = *(v3 + 56 + 8 * v11);
    ++v5;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4478C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318C1800](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22CE82A9C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22CE44824@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 64);
}

uint64_t sub_22CE44874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22CE448FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PushSubscription.subscriptionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 66);
  v9 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  sub_22CE449A4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));
}

void sub_22CE449A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0x800000) != 0)
  {
    v8 = a7;

    sub_22CE62924(a3, a4, a5, a6, v8);
  }

  else
  {
  }
}

uint64_t sub_22CE44A24()
{
  v1 = v0;
  v64 = *v0;
  v60 = sub_22CE85C04();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v50[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_22CE85C14();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22CE85974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v50[-v15];
  v17 = sub_22CE85D44();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v1[4];
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_22CE85D54();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  sub_22CE422C0((v1 + 11), &v66);
  if (*(&v67 + 1))
  {
    sub_22CE40D28(&v66, v65);
    sub_22CE42330(&v66, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    sub_22CE42330(&v66, &unk_27D9EEF30, &unk_22CE87948);
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v66, (v1 + 11));
  result = swift_endAccess();
  if ((v1[10] & 1) == 0)
  {
    sub_22CE6A4A0();
    v20 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
    swift_beginAccess();
    v56 = *(v6 + 16);
    v56(v14, &v20[v1], v5);
    sub_22CE85964();
    v24 = *(v6 + 8);
    v24(v14, v5);
    sub_22CE85954();
    v25 = sub_22CE858F4();
    v24(v14, v5);
    if (v25)
    {
      v54 = v24;
      if (qword_281445360 == -1)
      {
LABEL_8:
        v26 = sub_22CE85C84();
        __swift_project_value_buffer(v26, qword_281445368);
        v55 = v16;
        v56(v11, v16, v5);
        v27 = sub_22CE85C74();
        v28 = sub_22CE85FA4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v52 = v29;
          v53 = swift_slowAlloc();
          *&v66 = v53;
          *v29 = 136446210;
          sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v51 = v28;
          v30 = sub_22CE86174();
          v32 = v31;
          v33 = v11;
          v34 = v54;
          v54(v33, v5);
          v35 = sub_22CE44280(v30, v32, &v66);

          v36 = v52;
          *(v52 + 1) = v35;
          v37 = v36;
          _os_log_impl(&dword_22CE3F000, v27, v51, "Device is inactive; scheduling activity check at %{public}s", v36, 0xCu);
          v38 = v53;
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x2318C20D0](v38, -1, -1);
          MEMORY[0x2318C20D0](v37, -1, -1);

          v39 = v34;
        }

        else
        {

          v39 = v54;
          v54(v11, v5);
        }

        v45 = v57;
        v56(v57, &v20[v1], v5);
        sub_22CE85964();
        v39(v45, v5);
        (*(v58 + 104))(v59, *MEMORY[0x277D4D518], v60);
        v46 = v61;
        sub_22CE85BF4();
        __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
        v47 = swift_allocObject();
        swift_weakInit();
        v48 = swift_allocObject();
        v49 = v64;
        *(v48 + 16) = v47;
        *(v48 + 24) = v49;

        sub_22CE85C24();

        (*(v62 + 8))(v46, v63);
        v39(v55, v5);

        swift_beginAccess();
        sub_22CE423C0(&v66, (v1 + 11));
        return swift_endAccess();
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    }

    v40 = v16;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v41 = sub_22CE85C84();
    __swift_project_value_buffer(v41, qword_281445368);
    v42 = sub_22CE85C74();
    v43 = sub_22CE85FA4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22CE3F000, v42, v43, "Device is inactive and grace period has already expired.  Publishing budget level change event.", v44, 2u);
      MEMORY[0x2318C20D0](v44, -1, -1);
    }

    LOBYTE(v66) = 0;
    sub_22CE85CB4();
    return (v24)(v40, v5);
  }

  return result;
}

uint64_t sub_22CE45348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45380()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE453C0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PushEvent.EventType(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_22CE85AF4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22CE45580(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PushEvent.EventType(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_22CE85AF4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22CE45740()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CE45790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE4F750();
  *a1 = result;
  return result;
}

uint64_t sub_22CE457BC(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45800()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45838()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22CE4592C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CE459DC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for IncomingMessage.EventType(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_22CE45B54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for IncomingMessage.EventType(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CE45CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE52070();
  *a1 = result;
  return result;
}

uint64_t sub_22CE45D40(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45D84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45DBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE4F750();
  *a1 = result;
  return result;
}

uint64_t sub_22CE45DE8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45E2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45E64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45E9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45ED4()
{
  v1 = type metadata accessor for PushEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_22CE85974();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v0 + v3 + v1[8];
  type metadata accessor for PushEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_22CE4E0DC(*(v8 + 16), *(v8 + 24));
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = sub_22CE85B14();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  v11 = v1[9];
  v12 = sub_22CE85AF4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = sub_22CE85AB4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22CE46128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE4F750();
  *a1 = result;
  return result;
}

uint64_t sub_22CE46154(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE46198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE54830();
  *a1 = result;
  return result;
}

uint64_t sub_22CE461C4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_22CE46220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22CE52070();
  *a1 = result;
  return result;
}

uint64_t sub_22CE4624C(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE46294()
{
  v1 = *(type metadata accessor for Budget(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_22CE85974();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE463A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE46434()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_22CE4E0DC(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE46488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22CE85974();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22CE46548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22CE85974();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CE46604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_22CE46654()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE466A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE466FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE4673C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE4677C()
{

  sub_22CE62988(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80) | (*(v0 + 82) << 16));

  return MEMORY[0x2821FE8E8](v0, 84, 7);
}

uint64_t sub_22CE467D0()
{
  v1 = type metadata accessor for PushEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_22CE85974();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v0 + v3 + v1[8];
  type metadata accessor for PushEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_22CE4E0DC(*(v8 + 16), *(v8 + 24));
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = sub_22CE85B14();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  v11 = v1[9];
  v12 = sub_22CE85AF4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = sub_22CE85AB4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE46A08()
{
  MEMORY[0x2318C2140](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE46A40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_22CE46AAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22CE415BC(*(a1 + 16), 0);
  v4 = *(type metadata accessor for PushToken(0) - 8);
  v5 = sub_22CE416B8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_22CE412C8(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_22CE46B74(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22CE40F80(a1[2], 0);
  v4 = sub_22CE41080(&v6, v3 + 32, v2, a1);
  sub_22CE412C8(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t PushTokenStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PushTokenStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_22CE46C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_22CE41958(a1, &v9 - v3, type metadata accessor for PushToken);
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v4, v5, v6);
  return swift_endAccess();
}

uint64_t sub_22CE46D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PushToken(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22CE42330(a1, &qword_27D9EEB28, &qword_22CE86BF0);
    sub_22CE49D08(a2, a3, type metadata accessor for PushToken, type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, v9);

    return sub_22CE42330(v9, &qword_27D9EEB28, &qword_22CE86BF0);
  }

  else
  {
    sub_22CE419C0(a1, v12, type metadata accessor for PushToken);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22CE61818(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22CE46F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Budget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22CE42330(a1, &qword_27D9EEBA0, &qword_22CE86D20);
    sub_22CE49D08(a2, a3, type metadata accessor for Budget, type metadata accessor for Budget, &qword_27D9EEBA8, &qword_22CE86D28, v9);

    return sub_22CE42330(v9, &qword_27D9EEBA0, &qword_22CE86D20);
  }

  else
  {
    sub_22CE419C0(a1, v12, type metadata accessor for Budget);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22CE61B84(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22CE47160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_22CE61F00(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_22CE498B0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_22CE4AA0C();
        v16 = v18;
      }

      swift_unknownObjectRelease();
      result = sub_22CE4A254(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_22CE47264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v4, v6, v5);
  return swift_endAccess();
}

uint64_t sub_22CE4735C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  swift_beginAccess();

  v9 = sub_22CE4D240(v8, v6, v7, a1, a2, sub_22CE4C5E4, sub_22CE4C5E4);

  *(v3 + 16) = v9;
}

uint64_t sub_22CE47424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v6, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22CE4751C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v24 = type metadata accessor for PushToken(0);
  result = MEMORY[0x28223BE20](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = (v8 + 56);
    v14 = *(v8 + 72);
    do
    {
      sub_22CE41958(v12, v10, type metadata accessor for PushToken);
      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      swift_beginAccess();
      v18 = sub_22CE498B0(v17, v16);
      if (v19)
      {
        v20 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + 16);
        v25 = v22;
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v22 = v25;
        }

        sub_22CE419C0(*(v22 + 56) + v20 * v14, v6, type metadata accessor for PushToken);
        sub_22CE4A060(v20, v22, type metadata accessor for PushToken);
        *(v2 + 16) = v22;

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*v13)(v6, v15, 1, v24);
      sub_22CE42330(v6, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      result = sub_22CE4CA2C(v10);
      v12 += v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_22CE477A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v6 = sub_22CE4D880(v5, a1, a2, sub_22CE4CA88, sub_22CE4CA88);

  *(v2 + 16) = v6;
}

uint64_t sub_22CE47848()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_22CE4788C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v102 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v9 = MEMORY[0x28223BE20](v120);
  v119 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v118 = (&v102 - v12);
  MEMORY[0x28223BE20](v11);
  v117 = &v102 - v13;
  v110 = type metadata accessor for PushToken(0);
  v122 = *(v110 - 8);
  v14 = MEMORY[0x28223BE20](v110);
  v105 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v102 - v18;
  v20 = *a3;
  v21 = a3[1];
  swift_beginAccess();
  v106 = v3;

  v23 = sub_22CE4D240(v22, v20, v21, a1, a2, sub_22CE4CDFC, sub_22CE4CDFC);

  v103 = v23;
  v24 = sub_22CE4ACE8(v23, sub_22CE4B39C, sub_22CE4B39C);
  v102 = 0;
  v25 = *(v24 + 2);
  if (v25)
  {
    v124 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v25, 0);
    v121 = v124;
    v26 = v24 + 64;
    result = sub_22CE86044();
    v28 = result;
    v29 = 0;
    v104 = v24 + 72;
    v30 = v122;
    v107 = v25;
    v108 = v24 + 64;
    v109 = v24;
    v31 = v118;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << v24[32])
    {
      v34 = v28 >> 6;
      if ((*&v26[8 * (v28 >> 6)] & (1 << v28)) == 0)
      {
        goto LABEL_54;
      }

      v113 = v29;
      v114 = *(v24 + 9);
      v115 = 1 << v28;
      v35 = v120;
      v36 = *(v120 + 48);
      v37 = *(v24 + 7);
      v38 = (*(v24 + 6) + 16 * v28);
      v40 = *v38;
      v39 = v38[1];
      v116 = *(v30 + 72);
      v41 = v117;
      sub_22CE41958(v37 + v116 * v28, &v117[v36], type metadata accessor for PushToken);
      *v31 = v40;
      v31[1] = v39;
      sub_22CE419C0(&v41[v36], v31 + *(v35 + 48), type metadata accessor for PushToken);
      v42 = v119;
      sub_22CE4D49C(v31, v119);

      sub_22CE419C0(v42 + *(v35 + 48), v19, type metadata accessor for PushToken);
      v43 = v121;
      v124 = v121;
      v45 = *(v121 + 16);
      v44 = *(v121 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22CE4BB20((v44 > 1), v45 + 1, 1);
        v43 = v124;
      }

      *(v43 + 16) = v45 + 1;
      v30 = v122;
      v46 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v121 = v43;
      result = sub_22CE419C0(v19, v43 + v46 + v45 * v116, type metadata accessor for PushToken);
      v24 = v109;
      v32 = 1 << v109[32];
      if (v28 >= v32)
      {
        goto LABEL_55;
      }

      v26 = v108;
      v47 = *&v108[8 * v34];
      if ((v47 & v115) == 0)
      {
        goto LABEL_56;
      }

      if (v114 != *(v109 + 9))
      {
        goto LABEL_57;
      }

      v48 = v47 & (-2 << (v28 & 0x3F));
      if (v48)
      {
        v32 = __clz(__rbit64(v48)) | v28 & 0x7FFFFFFFFFFFFFC0;
        v33 = v107;
      }

      else
      {
        v49 = v34 << 6;
        v50 = v34 + 1;
        v51 = &v104[8 * v34];
        v33 = v107;
        while (v50 < (v32 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            result = sub_22CE4D50C(v28, v114, 0);
            v32 = __clz(__rbit64(v52)) + v49;
            goto LABEL_19;
          }
        }

        result = sub_22CE4D50C(v28, v114, 0);
LABEL_19:
        v30 = v122;
      }

      v29 = v113 + 1;
      v28 = v32;
      if (v113 + 1 == v33)
      {

        v54 = v112;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v121 = MEMORY[0x277D84F90];
  v54 = v112;
  v30 = v122;
LABEL_22:
  v55 = sub_22CE4ACE8(v103, sub_22CE4AE58, sub_22CE4AE58);

  v56 = *(v55 + 2);
  if (v56)
  {
    v124 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v56, 0);
    v57 = v124;
    v58 = v55 + 64;
    result = sub_22CE86044();
    v59 = result;
    v60 = 0;
    v104 = v55 + 72;
    v107 = v56;
    v108 = v55 + 64;
    v109 = v55;
    while ((v59 & 0x8000000000000000) == 0 && v59 < 1 << v55[32])
    {
      v63 = v59 >> 6;
      if ((*&v58[8 * (v59 >> 6)] & (1 << v59)) == 0)
      {
        goto LABEL_59;
      }

      v113 = v60;
      v114 = *(v55 + 9);
      v115 = 1 << v59;
      v64 = v30;
      v65 = v120;
      v66 = *(v120 + 48);
      v67 = *(v55 + 7);
      v68 = (*(v55 + 6) + 16 * v59);
      v70 = *v68;
      v69 = v68[1];
      v116 = *(v64 + 72);
      v71 = v57;
      v72 = v117;
      sub_22CE41958(v67 + v116 * v59, &v117[v66], type metadata accessor for PushToken);
      v73 = v118;
      *v118 = v70;
      *(v73 + 8) = v69;
      v74 = &v72[v66];
      v57 = v71;
      sub_22CE419C0(v74, v73 + *(v65 + 48), type metadata accessor for PushToken);
      v75 = v119;
      sub_22CE4D49C(v73, v119);

      v76 = v75 + *(v65 + 48);
      v77 = v105;
      sub_22CE419C0(v76, v105, type metadata accessor for PushToken);
      v124 = v71;
      v79 = *(v71 + 16);
      v78 = *(v71 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_22CE4BB20((v78 > 1), v79 + 1, 1);
        v57 = v124;
      }

      *(v57 + 16) = v79 + 1;
      v80 = v122;
      result = sub_22CE419C0(v77, v57 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v79 * v116, type metadata accessor for PushToken);
      v55 = v109;
      v61 = 1 << v109[32];
      if (v59 >= v61)
      {
        goto LABEL_60;
      }

      v58 = v108;
      v81 = *&v108[8 * v63];
      if ((v81 & v115) == 0)
      {
        goto LABEL_61;
      }

      if (v114 != *(v109 + 9))
      {
        goto LABEL_62;
      }

      v30 = v80;
      v82 = v81 & (-2 << (v59 & 0x3F));
      if (v82)
      {
        v61 = __clz(__rbit64(v82)) | v59 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v83 = v63 << 6;
        v84 = v63 + 1;
        v85 = &v104[8 * v63];
        while (v84 < (v61 + 63) >> 6)
        {
          v87 = *v85++;
          v86 = v87;
          v83 += 64;
          ++v84;
          if (v87)
          {
            result = sub_22CE4D50C(v59, v114, 0);
            v61 = __clz(__rbit64(v86)) + v83;
            goto LABEL_25;
          }
        }

        result = sub_22CE4D50C(v59, v114, 0);
      }

LABEL_25:
      v60 = v113 + 1;
      v59 = v61;
      v62 = v106;
      if (v113 + 1 == v107)
      {

        v54 = v112;
        goto LABEL_42;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v62 = v106;
LABEL_42:
  v88 = *(v121 + 16);
  if (v88)
  {
    v120 = v57;
    v89 = v121 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v90 = v30;
    v91 = (v30 + 56);
    v92 = *(v90 + 72);
    do
    {
      sub_22CE41958(v89, v54, type metadata accessor for PushToken);
      v96 = *(v54 + 16);
      v95 = *(v54 + 24);
      swift_beginAccess();
      v97 = sub_22CE498B0(v96, v95);
      if (v98)
      {
        v99 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v62 + 16);
        v123 = v101;
        *(v62 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v101 = v123;
        }

        v94 = v111;
        sub_22CE419C0(*(v101 + 56) + v99 * v92, v111, type metadata accessor for PushToken);
        sub_22CE4A060(v99, v101, type metadata accessor for PushToken);
        *(v62 + 16) = v101;

        v93 = 0;
      }

      else
      {
        v93 = 1;
        v94 = v111;
      }

      (*v91)(v94, v93, 1, v110);
      sub_22CE42330(v94, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      v54 = v112;
      sub_22CE4CA2C(v112);
      v89 += v92;
      --v88;
    }

    while (v88);

    return v120;
  }

  else
  {
  }

  return v57;
}

uint64_t sub_22CE48348(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v98 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v7 = MEMORY[0x28223BE20](v116);
  v115 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v114 = (&v98 - v10);
  MEMORY[0x28223BE20](v9);
  v113 = &v98 - v11;
  v106 = type metadata accessor for PushToken(0);
  v118 = *(v106 - 8);
  v12 = MEMORY[0x28223BE20](v106);
  v101 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v98 - v16;
  swift_beginAccess();
  v102 = v2;

  v19 = sub_22CE4D880(v18, a1, a2, sub_22CE4D518, sub_22CE4D518);

  v99 = v19;
  v20 = sub_22CE4ACE8(v19, sub_22CE4B39C, sub_22CE4B39C);
  v98 = 0;
  v21 = *(v20 + 2);
  if (v21)
  {
    v120 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v21, 0);
    v117 = v120;
    v22 = v20 + 64;
    result = sub_22CE86044();
    v24 = result;
    v25 = 0;
    v100 = v20 + 72;
    v26 = v118;
    v103 = v21;
    v104 = v20 + 64;
    v105 = v20;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << v20[32])
    {
      v29 = v24 >> 6;
      if ((*&v22[8 * (v24 >> 6)] & (1 << v24)) == 0)
      {
        goto LABEL_54;
      }

      v109 = v25;
      v110 = *(v20 + 9);
      v111 = 1 << v24;
      v30 = v116;
      v31 = *(v116 + 48);
      v32 = *(v20 + 7);
      v33 = (*(v20 + 6) + 16 * v24);
      v35 = *v33;
      v34 = v33[1];
      v112 = *(v26 + 72);
      v36 = v113;
      sub_22CE41958(v32 + v112 * v24, &v113[v31], type metadata accessor for PushToken);
      v37 = v114;
      *v114 = v35;
      *(v37 + 8) = v34;
      sub_22CE419C0(&v36[v31], v37 + *(v30 + 48), type metadata accessor for PushToken);
      v38 = v115;
      sub_22CE4D49C(v37, v115);

      sub_22CE419C0(v38 + *(v30 + 48), v17, type metadata accessor for PushToken);
      v39 = v117;
      v120 = v117;
      v41 = *(v117 + 16);
      v40 = *(v117 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_22CE4BB20((v40 > 1), v41 + 1, 1);
        v39 = v120;
      }

      *(v39 + 16) = v41 + 1;
      v26 = v118;
      v42 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v117 = v39;
      result = sub_22CE419C0(v17, v39 + v42 + v41 * v112, type metadata accessor for PushToken);
      v20 = v105;
      v27 = 1 << v105[32];
      if (v24 >= v27)
      {
        goto LABEL_55;
      }

      v22 = v104;
      v43 = *&v104[8 * v29];
      if ((v43 & v111) == 0)
      {
        goto LABEL_56;
      }

      if (v110 != *(v105 + 9))
      {
        goto LABEL_57;
      }

      v44 = v43 & (-2 << (v24 & 0x3F));
      if (v44)
      {
        v27 = __clz(__rbit64(v44)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v28 = v103;
      }

      else
      {
        v45 = v29 << 6;
        v46 = v29 + 1;
        v47 = &v100[8 * v29];
        v28 = v103;
        while (v46 < (v27 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_22CE4D50C(v24, v110, 0);
            v27 = __clz(__rbit64(v48)) + v45;
            goto LABEL_19;
          }
        }

        result = sub_22CE4D50C(v24, v110, 0);
LABEL_19:
        v26 = v118;
      }

      v25 = v109 + 1;
      v24 = v27;
      if (v109 + 1 == v28)
      {

        v50 = v108;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v117 = MEMORY[0x277D84F90];
  v50 = v108;
  v26 = v118;
LABEL_22:
  v51 = sub_22CE4ACE8(v99, sub_22CE4AE58, sub_22CE4AE58);

  v52 = *(v51 + 2);
  if (v52)
  {
    v120 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v52, 0);
    v53 = v120;
    v54 = v51 + 64;
    result = sub_22CE86044();
    v55 = result;
    v56 = 0;
    v100 = v51 + 72;
    v103 = v52;
    v104 = v51 + 64;
    v105 = v51;
    while ((v55 & 0x8000000000000000) == 0 && v55 < 1 << v51[32])
    {
      v59 = v55 >> 6;
      if ((*&v54[8 * (v55 >> 6)] & (1 << v55)) == 0)
      {
        goto LABEL_59;
      }

      v109 = v56;
      v110 = *(v51 + 9);
      v111 = 1 << v55;
      v60 = v26;
      v61 = v116;
      v62 = *(v116 + 48);
      v63 = *(v51 + 7);
      v64 = (*(v51 + 6) + 16 * v55);
      v66 = *v64;
      v65 = v64[1];
      v112 = *(v60 + 72);
      v67 = v53;
      v68 = v113;
      sub_22CE41958(v63 + v112 * v55, &v113[v62], type metadata accessor for PushToken);
      v69 = v114;
      *v114 = v66;
      *(v69 + 8) = v65;
      v70 = &v68[v62];
      v53 = v67;
      sub_22CE419C0(v70, v69 + *(v61 + 48), type metadata accessor for PushToken);
      v71 = v115;
      sub_22CE4D49C(v69, v115);

      v72 = v71 + *(v61 + 48);
      v73 = v101;
      sub_22CE419C0(v72, v101, type metadata accessor for PushToken);
      v120 = v67;
      v75 = *(v67 + 16);
      v74 = *(v67 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_22CE4BB20((v74 > 1), v75 + 1, 1);
        v53 = v120;
      }

      *(v53 + 16) = v75 + 1;
      v76 = v118;
      result = sub_22CE419C0(v73, v53 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + v75 * v112, type metadata accessor for PushToken);
      v51 = v105;
      v57 = 1 << v105[32];
      if (v55 >= v57)
      {
        goto LABEL_60;
      }

      v54 = v104;
      v77 = *&v104[8 * v59];
      if ((v77 & v111) == 0)
      {
        goto LABEL_61;
      }

      if (v110 != *(v105 + 9))
      {
        goto LABEL_62;
      }

      v26 = v76;
      v78 = v77 & (-2 << (v55 & 0x3F));
      if (v78)
      {
        v57 = __clz(__rbit64(v78)) | v55 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v79 = v59 << 6;
        v80 = v59 + 1;
        v81 = &v100[8 * v59];
        while (v80 < (v57 + 63) >> 6)
        {
          v83 = *v81++;
          v82 = v83;
          v79 += 64;
          ++v80;
          if (v83)
          {
            result = sub_22CE4D50C(v55, v110, 0);
            v57 = __clz(__rbit64(v82)) + v79;
            goto LABEL_25;
          }
        }

        result = sub_22CE4D50C(v55, v110, 0);
      }

LABEL_25:
      v56 = v109 + 1;
      v55 = v57;
      v58 = v102;
      if (v109 + 1 == v103)
      {

        v50 = v108;
        goto LABEL_42;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v53 = MEMORY[0x277D84F90];
  v58 = v102;
LABEL_42:
  v84 = *(v117 + 16);
  if (v84)
  {
    v116 = v53;
    v85 = v117 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v86 = v26;
    v87 = (v26 + 56);
    v88 = *(v86 + 72);
    do
    {
      sub_22CE41958(v85, v50, type metadata accessor for PushToken);
      v92 = *(v50 + 16);
      v91 = *(v50 + 24);
      swift_beginAccess();
      v93 = sub_22CE498B0(v92, v91);
      if (v94)
      {
        v95 = v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v58 + 16);
        v119 = v97;
        *(v58 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v97 = v119;
        }

        v90 = v107;
        sub_22CE419C0(*(v97 + 56) + v95 * v88, v107, type metadata accessor for PushToken);
        sub_22CE4A060(v95, v97, type metadata accessor for PushToken);
        *(v58 + 16) = v97;

        v89 = 0;
      }

      else
      {
        v89 = 1;
        v90 = v107;
      }

      (*v87)(v90, v89, 1, v106);
      sub_22CE42330(v90, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      v50 = v108;
      sub_22CE4CA2C(v108);
      v85 += v88;
      --v84;
    }

    while (v84);

    return v116;
  }

  else
  {
  }

  return v53;
}

uint64_t sub_22CE48DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_22CE85974();
  v37 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for PushToken(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  swift_beginAccess();
  v23 = *(v3 + 16);
  if (!*(v23 + 16))
  {
    return (*(v17 + 56))(v40, 1, 1, v16);
  }

  v35 = v4;

  v24 = sub_22CE498B0(v38, v39);
  if ((v25 & 1) == 0)
  {

    return (*(v17 + 56))(v40, 1, 1, v16);
  }

  sub_22CE41958(*(v23 + 56) + *(v17 + 72) * v24, v20, type metadata accessor for PushToken);

  sub_22CE419C0(v20, v22, type metadata accessor for PushToken);
  sub_22CE4DD94(&v22[*(v16 + 32)], v9, &qword_27D9EEF40, &qword_22CE86C00);
  v26 = v37;
  if ((*(v37 + 48))(v9, 1, v10) == 1)
  {
    sub_22CE42330(v9, &qword_27D9EEF40, &qword_22CE86C00);
  }

  else
  {
    (*(v26 + 32))(v15, v9, v10);
    sub_22CE85954();
    v28 = sub_22CE85904();
    v29 = *(v26 + 8);
    v29(v13, v10);
    v29(v15, v10);
    if (v28)
    {
      v30 = *(v22 + 2);
      v31 = *(v22 + 3);
      v32 = *(v17 + 56);
      v33 = v36;
      v32(v36, 1, 1, v16);
      swift_beginAccess();

      sub_22CE46D68(v33, v30, v31);
      swift_endAccess();
      sub_22CE4CA2C(v22);
      return (v32)(v40, 1, 1, v16);
    }
  }

  v34 = v40;
  sub_22CE419C0(v22, v40, type metadata accessor for PushToken);
  return (*(v17 + 56))(v34, 0, 1, v16);
}

uint64_t PushTokenStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *sub_22CE4928C()
{
  swift_beginAccess();

  return sub_22CE46AAC(v0);
}

uint64_t sub_22CE492D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_22CE41958(a1, &v9 - v3, type metadata accessor for PushToken);
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v4, v5, v6);
  return swift_endAccess();
}

uint64_t sub_22CE493F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v4, v6, v5);
  return swift_endAccess();
}

uint64_t sub_22CE494F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *v3;
  v7 = *a3;
  v8 = a3[1];
  swift_beginAccess();

  v10 = sub_22CE4D240(v9, v7, v8, a1, a2, sub_22CE4C5E4, sub_22CE4C5E4);

  *(v6 + 16) = v10;
}

uint64_t sub_22CE495C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for PushToken(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();

  sub_22CE46D68(v6, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22CE496E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();

  v7 = sub_22CE4D880(v6, a1, a2, sub_22CE4CA88, sub_22CE4CA88);

  *(v5 + 16) = v7;
}

uint64_t sub_22CE49788()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F98];
}

unint64_t sub_22CE498B0(uint64_t a1, uint64_t a2)
{
  sub_22CE86204();
  sub_22CE85E54();
  v4 = sub_22CE86244();

  return sub_22CE499D4(a1, a2, v4);
}

unint64_t sub_22CE49928(uint64_t a1)
{
  v1 = a1;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  v2 = sub_22CE86244();
  return sub_22CE49A8C(v1, v2);
}

unint64_t sub_22CE49990(uint64_t a1)
{
  v2 = sub_22CE86064();

  return sub_22CE49AFC(a1, v2);
}

unint64_t sub_22CE499D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22CE86194())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22CE49A8C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22CE49AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22CE4DCE4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318C1910](v9, a1);
      sub_22CE4DD40(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_22CE49BC4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB78, &qword_22CE86CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

double sub_22CE49C48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CE498B0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CE4A430();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_22CE49E98(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22CE49D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_22CE498B0(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CE4A620(a4, a5, a6, a4);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_22CE419C0(v19 + *(v27 + 72) * v16, a7, a4);
    sub_22CE4A060(v16, v18, a4);
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

char *sub_22CE49E98(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22CE86054() + 1) & ~v5;
    do
    {
      sub_22CE86204();

      sub_22CE85E54();
      v9 = sub_22CE86244();

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
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v15 + 72 || v3 != v6)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CE4A060(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22CE86054() + 1) & ~v6;
    while (1)
    {
      sub_22CE86204();

      sub_22CE85E54();
      v11 = sub_22CE86244();

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

uint64_t sub_22CE4A254(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22CE86054() + 1) & ~v5;
    do
    {
      sub_22CE86204();

      sub_22CE85E54();
      v9 = sub_22CE86244();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

void *sub_22CE4A430()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_22CE41214(&v32, v31);
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

void *sub_22CE4A620(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_22CE86144();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_22CE41958(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_22CE419C0(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void sub_22CE4A874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB80, &qword_22CE86D00);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;

        sub_22CE41BF0(v25, v26);
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

void *sub_22CE4AA0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_22CE4AB8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB60, &qword_22CE86CE0);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22CE4ACE8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_22CE4B9E4(v12, v7, v5, a3);
  result = MEMORY[0x2318C20D0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_22CE4AE58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v45 - v5;
  v62 = sub_22CE85974();
  v6 = *(v62 - 8);
  v7 = MEMORY[0x28223BE20](v62);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v45 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for PushToken(0);
  v58 = *(v14 - 8);
  v59 = v14;
  result = MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v64 = a3;
  v19 = *(a3 + 64);
  v48 = 0;
  v49 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v56 = (v6 + 48);
  v57 = v23;
  v52 = (v6 + 8);
  v53 = (v6 + 32);
  v51 = v17;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v67 = (v22 - 1) & v22;
LABEL_11:
    v27 = v24 | (v18 << 6);
    v28 = v64[7];
    v29 = (v64[6] + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v58 + 72);
    v50 = v27;
    sub_22CE41958(v28 + v32 * v27, v17, type metadata accessor for PushToken);
    *v13 = v31;
    v13[1] = v30;
    v33 = v61;
    sub_22CE41958(v17, v13 + *(v61 + 48), type metadata accessor for PushToken);
    v34 = v13;
    v35 = v13;
    v36 = v60;
    sub_22CE4DD94(v34, v60, &unk_27D9EEB30, &qword_22CE86BF8);
    swift_bridgeObjectRetain_n();

    v37 = v36 + *(v33 + 48);
    v38 = v63;
    sub_22CE4DD94(v37 + *(v59 + 32), v63, &qword_27D9EEF40, &qword_22CE86C00);
    v39 = v62;
    if ((*v56)(v38, 1, v62) == 1)
    {
      sub_22CE42330(v35, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE42330(v38, &qword_27D9EEF40, &qword_22CE86C00);
      sub_22CE4CA2C(v37);
      sub_22CE4CA2C(v17);

      v13 = v35;
      v23 = v57;
      v22 = v67;
LABEL_15:
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_22CE62310(v47, v46, v48, v64);
      }
    }

    else
    {
      v40 = v54;
      (*v53)(v54, v38, v39);
      v41 = v55;
      sub_22CE85954();
      v66 = sub_22CE85904();
      v65 = v30;
      v42 = *v52;
      (*v52)(v41, v39);
      v43 = v40;
      v17 = v51;
      v42(v43, v39);
      sub_22CE42330(v35, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v37);
      sub_22CE4CA2C(v17);

      v13 = v35;
      v23 = v57;
      v22 = v67;
      if ((v66 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return sub_22CE62310(v47, v46, v48, v64);
    }

    v26 = *(v49 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v67 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4B39C(unint64_t *a1, uint64_t a2, void *a3)
{
  v48[0] = a2;
  v49 = a1;
  v4 = &qword_22CE86C00;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = v48 - v6;
  v7 = sub_22CE85974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = v48 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v12 = MEMORY[0x28223BE20](v64);
  v63 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (v48 - v14);
  v16 = type metadata accessor for PushToken(0);
  v61 = *(v16 - 8);
  v62 = v16;
  result = MEMORY[0x28223BE20](v16);
  v67 = a3;
  v68 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v19 = 0;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v59 = (v8 + 48);
  v60 = v26;
  v52 = (v8 + 8);
  v53 = (v8 + 32);
  v65 = v7;
  v51 = v21;
  v58 = v15;
  while (v25)
  {
    v28 = v4;
    v70 = (v25 - 1) & v25;
    v29 = __clz(__rbit64(v25)) | (v19 << 6);
    v30 = v68;
LABEL_12:
    v33 = v67[7];
    v34 = (v67[6] + 16 * v29);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v61 + 72);
    v57 = v29;
    sub_22CE41958(v33 + v37 * v29, v30, type metadata accessor for PushToken);
    *v15 = v35;
    v15[1] = v36;
    v38 = v64;
    sub_22CE41958(v30, v15 + *(v64 + 48), type metadata accessor for PushToken);
    v39 = v15;
    v40 = v63;
    sub_22CE4DD94(v39, v63, &unk_27D9EEB30, &qword_22CE86BF8);
    v69 = v36;
    swift_bridgeObjectRetain_n();

    v41 = v40 + *(v38 + 48);
    v42 = v66;
    sub_22CE4DD94(v41 + *(v62 + 32), v66, &qword_27D9EEF40, v28);
    v43 = v65;
    if ((*v59)(v42, 1, v65) == 1)
    {
      v27 = v58;
      sub_22CE42330(v58, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE42330(v42, &qword_27D9EEF40, v28);
      sub_22CE4CA2C(v41);
      sub_22CE4CA2C(v30);

      v4 = v28;
      v15 = v27;
      v26 = v60;
      v25 = v70;
    }

    else
    {
      v44 = v54;
      (*v53)(v54, v42, v43);
      v45 = v55;
      sub_22CE85954();
      v56 = sub_22CE85904();
      v46 = *v52;
      (*v52)(v45, v43);
      v46(v44, v43);
      v21 = v51;
      v15 = v58;
      sub_22CE42330(v58, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v41);
      sub_22CE4CA2C(v30);

      v4 = v28;
      v26 = v60;
      v25 = v70;
      if (v56)
      {
        *(v49 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
          return sub_22CE62310(v49, v48[0], v50, v67);
        }
      }
    }
  }

  v31 = v19;
  v30 = v68;
  while (1)
  {
    v19 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v19 >= v26)
    {
      return sub_22CE62310(v49, v48[0], v50, v67);
    }

    v32 = v21[v19];
    ++v31;
    if (v32)
    {
      v28 = v4;
      v70 = (v32 - 1) & v32;
      v29 = __clz(__rbit64(v32)) | (v19 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4B904(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v16 = a8(v15, a2, a3, a4, a5, a6, a7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v16;
  }

  return result;
}

void *sub_22CE4B9E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_22CE4BA6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void *sub_22CE4BB20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EECE8, &qword_22CE86D48, type metadata accessor for PushToken);
  *v3 = result;
  return result;
}

char *sub_22CE4BB64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4BC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CE4BB84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EECE0, &qword_22CE86D40, type metadata accessor for Budget);
  *v3 = result;
  return result;
}

char *sub_22CE4BBC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4BD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CE4BBE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4BEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22CE4BC08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4C004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22CE4BC28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4C120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CE4BC48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EEB70, &qword_22CE86CF0, MEMORY[0x277CB9340]);
  *v3 = result;
  return result;
}

char *sub_22CE4BC8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE4BD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CE4BEBC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB88, &qword_22CE86D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB90, &qword_22CE86D10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE4C004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB98, &qword_22CE86D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE4C120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB68, &qword_22CE86CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CE4C22C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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

void *sub_22CE4C450(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + ((v10 << 11) | (32 * v15)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      if (v12 == v24)
      {

        sub_22CE41BF0(v19, v20);
        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 4;

      sub_22CE41BF0(v19, v20);
      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22CE4C5E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v57 = a5;
  v58 = a7;
  v60 = a6;
  v56 = a4;
  v49 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v8 = MEMORY[0x28223BE20](v61);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - v12);
  v14 = type metadata accessor for PushToken(0);
  v54 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v18 = 0;
  v59 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v53 = v17;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_12:
    v30 = v27 | (v18 << 6);
    v31 = v59[7];
    v32 = (v59[6] + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(v54 + 72);
    v51 = v30;
    sub_22CE41958(v31 + v35 * v30, v17, type metadata accessor for PushToken);
    *v13 = v34;
    v13[1] = v33;
    v36 = v61;
    sub_22CE41958(v17, v13 + *(v61 + 48), type metadata accessor for PushToken);
    v37 = v55;
    sub_22CE4DD94(v13, v55, &unk_27D9EEB30, &qword_22CE86BF8);
    swift_bridgeObjectRetain_n();

    v38 = v37 + *(v36 + 48);
    v39 = *(v38 + 48);
    v40 = *(v38 + 56);

    sub_22CE4CA2C(v38);
    if (v39 == v56 && v40 == v57)
    {
    }

    else
    {
      v42 = sub_22CE86194();

      if ((v42 & 1) == 0)
      {
        sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
        v17 = v53;
        sub_22CE4CA2C(v53);

        goto LABEL_18;
      }
    }

    v44 = v52;
    sub_22CE4DD94(v13, v52, &unk_27D9EEB30, &qword_22CE86BF8);

    v45 = v44 + *(v61 + 48);
    v46 = *(v45 + 32);
    v47 = *(v45 + 40);

    sub_22CE4CA2C(v45);
    v17 = v53;
    if (v46 == v60 && v47 == v58)
    {

      sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v17);
    }

    else
    {
      v26 = sub_22CE86194();

      sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v17);

      if ((v26 & 1) == 0)
      {
LABEL_18:
        *(v49 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        if (__OFADD__(v50++, 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v28 = v18;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_22CE62310(v49, v48, v50, v59);
    }

    v29 = v20[v18];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22CE4CA2C(uint64_t a1)
{
  v2 = type metadata accessor for PushToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CE4CA88(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v47 = a4;
  v48 = a5;
  v41 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v6 = MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v40 - v8);
  v10 = type metadata accessor for PushToken(0);
  v44 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v51 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v13 = 0;
  v49 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v50 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v51;
LABEL_12:
    v25 = v49[7];
    v26 = (v49[6] + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v44 + 72);
    v43 = v21;
    sub_22CE41958(v25 + v29 * v21, v22, type metadata accessor for PushToken);
    *v9 = v27;
    v9[1] = v28;
    v30 = v46;
    sub_22CE41958(v22, v9 + *(v46 + 48), type metadata accessor for PushToken);
    v31 = v9;
    v32 = v9;
    v33 = v45;
    sub_22CE4DD94(v31, v45, &unk_27D9EEB30, &qword_22CE86BF8);
    swift_bridgeObjectRetain_n();

    v34 = v33 + *(v30 + 48);
    v35 = *(v34 + 32);
    v36 = *(v34 + 40);

    sub_22CE4CA2C(v34);
    if (v35 == v47 && v36 == v48)
    {

      sub_22CE42330(v32, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v51);

      v9 = v32;
      v19 = v50;
    }

    else
    {
      v38 = sub_22CE86194();

      sub_22CE42330(v32, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v51);

      v9 = v32;
      v19 = v50;
      if ((v38 & 1) == 0)
      {
        *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return sub_22CE62310(v41, v40, v42, v49);
        }
      }
    }
  }

  v23 = v13;
  v22 = v51;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_22CE62310(v41, v40, v42, v49);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v50 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4CDFC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v57 = a5;
  v58 = a7;
  v60 = a6;
  v56 = a4;
  v49 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v8 = MEMORY[0x28223BE20](v61);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - v12);
  v14 = type metadata accessor for PushToken(0);
  v54 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v18 = 0;
  v59 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v53 = v17;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_12:
    v30 = v27 | (v18 << 6);
    v31 = v59[7];
    v32 = (v59[6] + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(v54 + 72);
    v52 = v30;
    sub_22CE41958(v31 + v35 * v30, v17, type metadata accessor for PushToken);
    *v13 = v34;
    v13[1] = v33;
    v36 = v61;
    sub_22CE41958(v17, v13 + *(v61 + 48), type metadata accessor for PushToken);
    v37 = v55;
    sub_22CE4DD94(v13, v55, &unk_27D9EEB30, &qword_22CE86BF8);
    swift_bridgeObjectRetain_n();

    v38 = v37 + *(v36 + 48);
    v40 = *(v38 + 48);
    v39 = *(v38 + 56);

    sub_22CE4CA2C(v38);
    if (v40 == v56 && v39 == v57)
    {

      goto LABEL_19;
    }

    v42 = sub_22CE86194();

    if (v42)
    {
LABEL_19:
      v43 = v51;
      sub_22CE4DD94(v13, v51, &unk_27D9EEB30, &qword_22CE86BF8);

      v44 = v43 + *(v61 + 48);
      v46 = *(v44 + 32);
      v45 = *(v44 + 40);

      sub_22CE4CA2C(v44);
      v17 = v53;
      if (v46 == v60 && v45 == v58)
      {

        sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
        sub_22CE4CA2C(v17);

        goto LABEL_22;
      }

      v26 = sub_22CE86194();

      sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v17);

      if (v26)
      {
LABEL_22:
        *(v49 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
          return sub_22CE62310(v49, v48, v50, v59);
        }
      }
    }

    else
    {
      sub_22CE42330(v13, &unk_27D9EEB30, &qword_22CE86BF8);
      v17 = v53;
      sub_22CE4CA2C(v53);
    }
  }

  v28 = v18;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_22CE62310(v49, v48, v50, v59);
    }

    v29 = v20[v18];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v24 = a6;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = 8 * v15;
  swift_bridgeObjectRetain_n();
  v17 = swift_bridgeObjectRetain_n();
  if (v14 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v20 = a4;
      v21 = swift_slowAlloc();

      v18 = sub_22CE4B904(v21, v15, a1, a2, a3, v20, a5, v23);
      MEMORY[0x2318C20D0](v21, -1, -1);

      goto LABEL_6;
    }
  }

  v23 = &v22;
  MEMORY[0x28223BE20](v17);
  bzero(&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);

  v18 = v24(&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v15, a1, a2, a3, a4, a5);

  if (v7)
  {
    swift_willThrow();
  }

LABEL_6:

  return v18;
}

uint64_t sub_22CE4D49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE4D50C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22CE4D518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v46 = a4;
  v47 = a5;
  v38 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v6 = MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - v8);
  v10 = type metadata accessor for PushToken(0);
  v43 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v48 = a3;
  v15 = *(a3 + 64);
  v41 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v39 = 0;
  v40 = (v16 + 63) >> 6;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v48[7];
    v24 = (v48[6] + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v43 + 72);
    v42 = v22;
    sub_22CE41958(v23 + v27 * v22, v13, type metadata accessor for PushToken);
    *v9 = v25;
    v9[1] = v26;
    v28 = v45;
    sub_22CE41958(v13, v9 + *(v45 + 48), type metadata accessor for PushToken);
    v29 = v44;
    sub_22CE4DD94(v9, v44, &unk_27D9EEB30, &qword_22CE86BF8);
    swift_bridgeObjectRetain_n();

    v30 = v29 + *(v28 + 48);
    v31 = *(v30 + 32);
    v32 = *(v30 + 40);

    sub_22CE4CA2C(v30);
    if (v31 == v46 && v32 == v47)
    {

      sub_22CE42330(v9, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v13);

      v18 = v49;
LABEL_18:
      *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        return sub_22CE62310(v38, v37, v39, v48);
      }
    }

    else
    {
      v34 = sub_22CE86194();

      sub_22CE42330(v9, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v13);

      v18 = v49;
      if (v34)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v40)
    {
      return sub_22CE62310(v38, v37, v39, v48);
    }

    v21 = *(v41 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4D880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v16 = sub_22CE4BA6C(v18, v13, a1, a2, a3, a5);
      MEMORY[0x2318C20D0](v18, -1, -1);
      swift_bridgeObjectRelease_n();
      return v16;
    }
  }

  MEMORY[0x28223BE20](v15);
  bzero(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = a4(v19 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v16;
}

uint64_t sub_22CE4DC28(uint64_t a1, int a2)
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

uint64_t sub_22CE4DC48(uint64_t result, int a2, int a3)
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

void sub_22CE4DC98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22CE4DD94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PushEvent.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE4DF2C()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE4DFA0(uint64_t a1)
{
  v2 = *v1;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v2);
  return sub_22CE86244();
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesData.getter()
{
  v1 = *(v0 + 16);
  sub_22CE41BF0(v1, *(v0 + 24));
  return v1;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22CE4E0DC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_22CE4E0DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t PushEvent.EventType.ActivityStartParameters.contentSourceRequests.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PushEvent.EventType.ActivityStartParameters.init(attributesType:attributesData:contentSourceRequests:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t PushEvent.subscriptionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushEvent.activityIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PushEvent.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t PushEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PushEvent(0) + 28);
  v4 = sub_22CE85974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PushEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushEvent(0) + 32);

  return sub_22CE4E2E0(v3, a1);
}

uint64_t sub_22CE4E2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushEvent.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushEvent.contentSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PushEvent(0) + 36);
  v4 = sub_22CE85AF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PushEvent.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushEvent(0) + 40);

  return sub_22CE4E404(v3, a1);
}

uint64_t sub_22CE4E404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushEvent.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PushEvent(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t PushEvent.description.getter()
{
  sub_22CE860F4();
  MEMORY[0x2318C1750](0x6D617473656D6974, 0xEB00000000203A70);
  type metadata accessor for PushEvent(0);
  sub_22CE85974();
  sub_22CE4E5E0();
  v1 = sub_22CE86174();
  MEMORY[0x2318C1750](v1);

  MEMORY[0x2318C1750](0xD000000000000016, 0x800000022CE89D30);
  MEMORY[0x2318C1750](*(v0 + 16), *(v0 + 24));
  MEMORY[0x2318C1750](0x54746E657665203BLL, 0xED0000203A657079);
  type metadata accessor for PushEvent.EventType(0);
  sub_22CE86124();
  return 0;
}

unint64_t sub_22CE4E5E0()
{
  result = qword_2814452A0;
  if (!qword_2814452A0)
  {
    sub_22CE85974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814452A0);
  }

  return result;
}

uint64_t PushEvent.init(subscriptionIdentifier:activityIdentifier:topic:timestamp:eventType:contentSource:payload:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char *a11)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *a11;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = v15;
  *(a9 + 5) = v16;
  v18 = type metadata accessor for PushEvent(0);
  v19 = v18[7];
  v20 = sub_22CE85974();
  (*(*(v20 - 8) + 32))(&a9[v19], a6, v20);
  sub_22CE4E748(a7, &a9[v18[8]]);
  v21 = v18[9];
  v22 = sub_22CE85AF4();
  (*(*(v22 - 8) + 32))(&a9[v21], a8, v22);
  result = sub_22CE4E7AC(a10, &a9[v18[10]]);
  a9[v18[11]] = v17;
  return result;
}

uint64_t sub_22CE4E748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushEvent.EventType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE4E7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CE4E820()
{
  result = qword_27D9EED68;
  if (!qword_27D9EED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EED68);
  }

  return result;
}

void sub_22CE4E8A0(uint64_t a1)
{
  sub_22CE85974();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PushEvent.EventType(319);
    if (v2 <= 0x3F)
    {
      sub_22CE85AF4();
      if (v3 <= 0x3F)
      {
        sub_22CE4E97C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22CE4E97C(uint64_t a1)
{
  if (!qword_281445298)
  {
    sub_22CE85AB4();
    v1 = sub_22CE86014();
    if (!v2)
    {
      atomic_store(v1, &qword_281445298);
    }
  }
}

uint64_t getEnumTagSinglePayload for PushEvent.Priority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushEvent.Priority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22CE4EB88(uint64_t a1)
{
  result = sub_22CE85B14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CE4EC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22CE4EC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Topic.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t Topic.unsuffixed.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Topic.suffixed.getter()
{
  v2 = *v0;

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  return v2;
}

SessionPushNotifications::Topic __swiftcall Topic.init(suffixed:)(Swift::String suffixed)
{
  object = suffixed._object;
  countAndFlagsBits = suffixed._countAndFlagsBits;
  v4 = v1;
  v5 = sub_22CE85EF4();
  if (v5)
  {
    v7 = sub_22CE85E64();
    v8 = sub_22CE4EF5C(v7, countAndFlagsBits, object);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x2318C16D0](v8, v10, v12, v14);
    v17 = v16;

    *v4 = v15;
    v4[1] = v17;
  }

  else
  {
    __break(1u);
  }

  result.unsuffixed._object = v6;
  result.unsuffixed._countAndFlagsBits = v5;
  return result;
}

uint64_t Topic.hashValue.getter()
{
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EE90(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t sub_22CE4EEC0()
{
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EF14(uint64_t a1)
{
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EF5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22CE85E94();

    return sub_22CE85F14();
  }

  return result;
}

unint64_t sub_22CE4EFFC()
{
  result = qword_2814453F8;
  if (!qword_2814453F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814453F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22CE4F05C(uint64_t a1, int a2)
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

uint64_t sub_22CE4F0A4(uint64_t result, int a2, int a3)
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

uint64_t sub_22CE4F0F4(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_22CE4BB64(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_22CE85804();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_22CE85824();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_22CE85804();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_22CE85824();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED70, &unk_22CE87DE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22CE87100;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_22CE85E14();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_22CE4BB64((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t PublicToken.environmentName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PublicToken.token.getter()
{
  v1 = *(v0 + 16);
  sub_22CE41BF0(v1, *(v0 + 24));
  return v1;
}

uint64_t PublicToken.init(environmentName:token:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t PublicToken.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22CE4F0F4(v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
  sub_22CE4F5FC();
  v3 = sub_22CE85DC4();
  v5 = v4;

  sub_22CE860F4();

  MEMORY[0x2318C1750](v1, v2);
  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x2318C1750](v3, v5);

  return 0xD000000000000011;
}

unint64_t sub_22CE4F5FC()
{
  result = qword_2814447F0;
  if (!qword_2814447F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9EEF90, &qword_22CE87110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814447F0);
  }

  return result;
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22CE4F6B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22CE4F700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE4F750()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_2814447F8, &qword_27D9EED78, &unk_22CE87210, MEMORY[0x277CBCE20]);
    v1 = sub_22CE85CE4();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_22CE4F824(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE4F750();
  return sub_22CE4F86C;
}

uint64_t BudgetLevelResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  BudgetLevelResolver.init()();
  return v0;
}

void *BudgetLevelResolver.init()()
{
  v14 = sub_22CE85FD4();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22CE85D34();
  MEMORY[0x28223BE20](v5 - 8);
  v13 = v0;
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  swift_allocObject();
  v0[3] = sub_22CE85CC4();
  v12[0] = sub_22CE4FC1C();
  v12[4] = "environmentName: ";
  sub_22CE85D24();
  v15 = MEMORY[0x277D84F90];
  v12[3] = sub_22CE42584(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  v6 = *MEMORY[0x277D85260];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v12[1] = v7;
  v8(v3, v6, v14);
  v9 = sub_22CE86004();
  v10 = v13;
  v13[4] = v9;
  sub_22CE85D24();
  v15 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v8(v3, v6, v14);
  v10[5] = sub_22CE86004();
  v10[6] = MEMORY[0x277D84F90];
  v10[7] = MEMORY[0x277D84FA0];
  return v10;
}

unint64_t sub_22CE4FC1C()
{
  result = qword_281445310;
  if (!qword_281445310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281445310);
  }

  return result;
}

uint64_t sub_22CE4FC68(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  sub_22CE40D28(a1, v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_22CE501DC(v9, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22CE501F4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22CE42390;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE4FDD0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  sub_22CE40D28(a2, v26);
  swift_beginAccess();
  v10 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_22CE6039C(0, v10[2] + 1, 1, v10);
    *(a1 + 48) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_22CE6039C((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  sub_22CE501DC(v26, &v10[5 * v13 + 4]);
  *(a1 + 48) = v10;
  swift_endAccess();
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  *&v26[0] = (*(*(v15 + 8) + 8))(v14);
  v25 = *(a1 + 32);
  v16 = v25;
  v17 = sub_22CE85FC4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  sub_22CE4FC1C();
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00, MEMORY[0x277CBCD90]);
  sub_22CE42584(&qword_281445318, sub_22CE4FC1C, MEMORY[0x277D85228]);
  sub_22CE85CF4();
  sub_22CE505E4(v6);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22CE42504;
  *(v20 + 24) = v19;
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0, MEMORY[0x277CBCD60]);
  v21 = v24;
  sub_22CE85D04();

  (*(v7 + 8))(v9, v21);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();
}

uint64_t sub_22CE501DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t BudgetLevelResolver.deinit()
{

  return v0;
}

uint64_t BudgetLevelResolver.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_22CE50360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = a4;
    v11 = v9 + 32;

    v12 = 2;
    do
    {
      sub_22CE40D28(v11, v18);
      v13 = v19;
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v17[0] = a2;
      v17[1] = a3;
      (*(v14 + 16))(&v21, v17, v13, v14);
      v15 = v12;
      if (v21 < v12)
      {
        v15 = v21;
      }

      if (v21 != 3)
      {
        v12 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v11 += 40;
      --v10;
    }

    while (v10);

    a4 = v16;
  }

  else
  {
    v12 = 2;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_22CE505E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ChannelSubscriptionFailure.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t AppTokenInfo.init(topic:identifier:expirationDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a1[1];
  *a5 = *a1;
  a5[1] = v6;
  a5[2] = a2;
  a5[3] = a3;
  v7 = a5 + *(type metadata accessor for AppTokenInfo(0) + 24);

  return sub_22CE50774(a4, v7);
}

uint64_t sub_22CE50774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IncomingMessage.EventType.StartParameters.init(attributesType:attributesData:inputs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static IncomingMessage.EventType.StartParameters.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22CE86194() & 1) == 0 || !sub_22CE51390(v2, v4, v5, v6))
  {
    return 0;
  }

  return sub_22CE508A8(v3, v7);
}

uint64_t sub_22CE508A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v12 = *(v3 - 2);
    v11 = *(v3 - 1);
    v13 = *v3;
    if (*i)
    {
      break;
    }

    if (*v3)
    {
      sub_22CE52040(*(v3 - 2), *(v3 - 1), *v3);
      v21 = v9;
      v22 = v8;
      v23 = 0;
      goto LABEL_32;
    }

    if (v9 == v12 && v8 == v11)
    {
      sub_22CE52040(*(i - 2), *(i - 1), 0);
      sub_22CE52040(v9, v8, 0);
      sub_22CE52058(v9, v8, 0);
      v5 = v9;
      v6 = v8;
      v7 = 0;
LABEL_6:
      sub_22CE52058(v5, v6, v7);
      goto LABEL_7;
    }

    v15 = sub_22CE86194();
    sub_22CE52040(v12, v11, 0);
    sub_22CE52040(v9, v8, 0);
    sub_22CE52058(v9, v8, 0);
    v16 = v12;
    v17 = v11;
    v18 = 0;
LABEL_27:
    sub_22CE52058(v16, v17, v18);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v10 != 1)
  {
    if (v13 != 2 || (v11 | v12) != 0)
    {
      v21 = *(v3 - 2);
      v22 = *(v3 - 1);
      v23 = *v3;
      goto LABEL_32;
    }

    sub_22CE52058(*(i - 2), *(i - 1), 2u);
    v5 = 0;
    v6 = 0;
    v7 = 2;
    goto LABEL_6;
  }

  if (v13 == 1)
  {
    if (v9 == v12 && v8 == v11)
    {
      sub_22CE52040(*(i - 2), *(i - 1), 1u);
      sub_22CE52040(v9, v8, 1u);
      sub_22CE52058(v9, v8, 1u);
      v5 = v9;
      v6 = v8;
      v7 = 1;
      goto LABEL_6;
    }

    v15 = sub_22CE86194();
    sub_22CE52040(v12, v11, 1u);
    sub_22CE52040(v9, v8, 1u);
    sub_22CE52058(v9, v8, 1u);
    v16 = v12;
    v17 = v11;
    v18 = 1;
    goto LABEL_27;
  }

  sub_22CE52040(*(v3 - 2), *(v3 - 1), *v3);
  v21 = v9;
  v22 = v8;
  v23 = 1;
LABEL_32:
  sub_22CE52040(v21, v22, v23);
  sub_22CE52058(v9, v8, v10);
  sub_22CE52058(v12, v11, v13);
  return 0;
}

uint64_t sub_22CE50B4C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22CE86194() & 1) == 0 || !sub_22CE51390(v2, v4, v5, v6))
  {
    return 0;
  }

  return sub_22CE508A8(v3, v7);
}

uint64_t IncomingMessage.token.getter()
{
  v1 = *v0;
  sub_22CE51710(*v0, *(v0 + 8));
  return v1;
}

uint64_t IncomingMessage.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t IncomingMessage.channelID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IncomingMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IncomingMessage(0) + 32);
  v4 = sub_22CE85974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IncomingMessage.payload.getter()
{
  v1 = v0 + *(type metadata accessor for IncomingMessage(0) + 36);
  v2 = *v1;
  sub_22CE41BF0(*v1, *(v1 + 8));
  return v2;
}

uint64_t IncomingMessage.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IncomingMessage(0) + 40);

  return sub_22CE51744(v3, a1);
}

uint64_t IncomingMessage.alertConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IncomingMessage(0) + 44));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_22CE4DD94(v11, &v10, &unk_27D9EEF80, &qword_22CE872D8);
}

uint64_t IncomingMessage.init(token:topic:channelID:priority:eventType:timestamp:payload:alertConfiguration:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *a3;
  v19 = a3[1];
  v20 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v18;
  *(a9 + 24) = v19;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = v20;
  v21 = type metadata accessor for IncomingMessage(0);
  sub_22CE517C8(a7, a9 + v21[10]);
  v22 = v21[8];
  v23 = sub_22CE85974();
  (*(*(v23 - 8) + 32))(a9 + v22, a8, v23);
  v24 = (a9 + v21[9]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + v21[11]);
  v26 = a12[3];
  v25[2] = a12[2];
  v25[3] = v26;
  v27 = a12[5];
  v25[4] = a12[4];
  v25[5] = v27;
  v28 = a12[1];
  *v25 = *a12;
  v25[1] = v28;
  result = sub_22CE50774(a13, a9 + v21[12]);
  v30 = a9 + v21[13];
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  return result;
}

uint64_t IncomingMessage.description.getter()
{
  sub_22CE860F4();
  MEMORY[0x2318C1750](0x203A6369706F74, 0xE700000000000000);
  sub_22CE86124();
  MEMORY[0x2318C1750](0x656E6E616863203BLL, 0xED0000203A44496CLL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED98, &qword_22CE872E0);
  v1 = sub_22CE85E24();
  MEMORY[0x2318C1750](v1);

  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  sub_22CE51710(*v0, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEDA0, &qword_22CE872E8);
  v2 = sub_22CE85E24();
  MEMORY[0x2318C1750](v2);

  MEMORY[0x2318C1750](0x54746E657665203BLL, 0xED0000203A657079);
  type metadata accessor for IncomingMessage(0);
  type metadata accessor for IncomingMessage.EventType(0);
  sub_22CE86124();
  return 0;
}

uint64_t sub_22CE51148(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22CE512D8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22CE4E0DC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_22CE8228C(v13, a3, a4, &v12);
  v10 = v4;
  sub_22CE4E0DC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_22CE512D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22CE85804();
  v11 = result;
  if (result)
  {
    result = sub_22CE85824();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22CE85814();
  sub_22CE8228C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_22CE51390(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22CE41BF0(a3, a4);
          return sub_22CE51148(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s24SessionPushNotifications15IncomingMessageV9EventTypeO15StartParametersV05InputG0O2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_22CE86194();
        sub_22CE52040(v6, v5, 0);
        sub_22CE52040(v3, v2, 0);
        sub_22CE52058(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_22CE52040(v14, v2, 0);
      sub_22CE52040(v3, v2, 0);
      sub_22CE52058(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_22CE86194();
        sub_22CE52040(v6, v5, 1u);
        sub_22CE52040(v3, v2, 1u);
        sub_22CE52058(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_22CE52058(v11, v12, v13);
        return v10 & 1;
      }

      sub_22CE52040(v8, v2, 1u);
      sub_22CE52040(v3, v2, 1u);
      sub_22CE52058(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_22CE52040(*a2, a2[1], v7);
    sub_22CE52040(v3, v2, v4);
    sub_22CE52058(v3, v2, v4);
    sub_22CE52058(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_22CE52058(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_22CE52058(v18, v19, v20);
  return 1;
}

void sub_22CE51710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_22CE41BF0(a1, a2);
  }
}

uint64_t sub_22CE51744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingMessage.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE517C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingMessage.EventType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CE51830()
{
  result = qword_27D9EEDA8;
  if (!qword_27D9EEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEDA8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CE51898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22CE518E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22CE51974(uint64_t a1)
{
  sub_22CE519F8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22CE519F8(uint64_t a1)
{
  if (!qword_281445988)
  {
    sub_22CE85974();
    v1 = sub_22CE86014();
    if (!v2)
    {
      atomic_store(v1, &qword_281445988);
    }
  }
}

void sub_22CE51A78(uint64_t a1)
{
  sub_22CE51BC8(319, &qword_27D9EEDC0, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_22CE51BC8(319, &qword_27D9EEDC8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22CE85974();
      if (v3 <= 0x3F)
      {
        type metadata accessor for IncomingMessage.EventType(319);
        if (v4 <= 0x3F)
        {
          sub_22CE51BC8(319, &qword_27D9EEDD0, &type metadata for IncomingMessage.AlertConfiguration);
          if (v5 <= 0x3F)
          {
            sub_22CE519F8(319);
            if (v6 <= 0x3F)
            {
              sub_22CE51BC8(319, &qword_27D9EEDD8, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22CE51BC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22CE86014();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22CE51C14(uint64_t a1)
{
  sub_22CE51C7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22CE51C7C()
{
  if (!qword_27D9EEDF0)
  {
    sub_22CE519F8(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D9EEDF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications15IncomingMessageV9EventTypeO15StartParametersV05InputG0O(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22CE51D04(uint64_t a1, unsigned int a2)
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

uint64_t sub_22CE51D4C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22CE51D90(uint64_t result, unsigned int a2)
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

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications15IncomingMessageV17LocalizableStringVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22CE51DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22CE51E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
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

uint64_t sub_22CE51ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22CE51F20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22CE52040(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_22CE52058(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_22CE52070()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
    sub_22CE40A60(&qword_281444808, &unk_27D9EEF00, &unk_22CE87740, MEMORY[0x277CBCE20]);
    v1 = sub_22CE85CE4();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_22CE52134(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE52070();
  return sub_22CE4F86C;
}

uint64_t WatchActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  WatchActivityMonitor.init()();
  return v0;
}

uint64_t *WatchActivityMonitor.init()()
{
  v1 = v0;
  v16 = *v0;
  v2 = sub_22CE85FD4();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22CE85D34();
  MEMORY[0x28223BE20](v6 - 8);
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
  swift_allocObject();
  v0[3] = sub_22CE85CC4();
  v13 = sub_22CE5395C(0, &qword_281445310, 0x277D85C78);
  sub_22CE85D24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CE52580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  v7 = sub_22CE86004();
  v0[4] = v7;
  v0[5] = -1;
  *(v0 + 48) = 0;
  v8 = swift_allocObject();
  v9 = v16;
  *(v8 + 16) = v1;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CE525D8;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_22CE52580()
{
  result = qword_281445320;
  if (!qword_281445320)
  {
    sub_22CE85FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445320);
  }

  return result;
}

void sub_22CE525D8()
{
  v1 = *(v0 + 16);
  *(v1 + 48) = sub_22CE5260C() & 1;
  sub_22CE5276C();
}

uint64_t sub_22CE5260C()
{
  v0 = swift_slowAlloc();
  v1 = IOPSCopyPowerSourcesByTypePrecise();
  if (*v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    sub_22CE52ABC(v0, &v10);
    v7 = v10;
    v8 = v10;
    if (!*v0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v3 = sub_22CE85C84();
  __swift_project_value_buffer(v3, qword_281445368);
  v4 = sub_22CE85C74();
  v5 = sub_22CE85F94();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22CE3F000, v4, v5, "Could not get connected device list", v6, 2u);
    MEMORY[0x2318C20D0](v6, -1, -1);
  }

  v7 = 0;
  v8 = 0;
  if (*v0)
  {
LABEL_10:
    swift_unknownObjectRelease();
    v8 = v7;
  }

LABEL_11:
  MEMORY[0x2318C20D0](v0, -1, -1);
  return v8;
}

void sub_22CE5276C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  swift_weakInit();
  v21 = sub_22CE539C4;
  v22 = v3;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22CE5343C;
  v20 = &block_descriptor_20_0;
  v4 = _Block_copy(&v17);

  swift_beginAccess();
  v5 = notify_register_dispatch("com.apple.system.accpowersources.source", (v1 + 40), v2, v4);
  swift_endAccess();
  _Block_release(v4);
  if (v5)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v6 = sub_22CE85C84();
    __swift_project_value_buffer(v6, qword_281445368);
    v7 = sub_22CE85C74();
    v8 = sub_22CE85F94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CE3F000, v7, v8, "Could not register for power source notifications", v9, 2u);
      MEMORY[0x2318C20D0](v9, -1, -1);
    }
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v21 = sub_22CE5369C;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22CE5343C;
  v20 = &block_descriptor_24;
  v11 = _Block_copy(&v17);

  swift_beginAccess();
  v12 = notify_register_dispatch("com.apple.system.accpowersources.attach", (v1 + 44), v2, v11);
  swift_endAccess();
  _Block_release(v11);
  if (v12)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v13 = sub_22CE85C84();
    __swift_project_value_buffer(v13, qword_281445368);
    v14 = sub_22CE85C74();
    v15 = sub_22CE85F94();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22CE3F000, v14, v15, "Could not register for attachment notifications", v16, 2u);
      MEMORY[0x2318C20D0](v16, -1, -1);
    }
  }
}

void sub_22CE52ABC(CFTypeRef *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = a1;
  v4 = IOPSCopyPowerSourcesList(*a1);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v42 = a2;
  v6 = sub_22CE85F34();

  if (v6 >> 62)
  {
    v7 = sub_22CE86134();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_57:

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v37 = sub_22CE85C84();
    __swift_project_value_buffer(v37, qword_281445368);
    v38 = sub_22CE85C74();
    v39 = sub_22CE85FA4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22CE3F000, v38, v39, "Could not find a connected watch", v40, 2u);
      MEMORY[0x2318C20D0](v40, -1, -1);
    }

    v36 = 0;
    goto LABEL_62;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_57;
  }

LABEL_4:
  v8 = 0;
  v9 = (v6 & 0xC000000000000001);
  v46 = v6 & 0xFFFFFFFFFFFFFF8;
  while (v9)
  {
    v10 = MEMORY[0x2318C19A0](v8, v6);
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_49;
    }

LABEL_11:
    v12 = IOPSGetPowerSourceDescription(*v2, v10);
    if (!v12)
    {
      __break(1u);
      goto LABEL_64;
    }

    v13 = v12;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

LABEL_22:
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v19 = sub_22CE85C84();
      __swift_project_value_buffer(v19, qword_281445368);
      v20 = sub_22CE85C74();
      v21 = sub_22CE85F94();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22CE3F000, v20, v21, "Could not get power source description", v22, 2u);
        v23 = v22;
        v9 = (v6 & 0xC000000000000001);
        MEMORY[0x2318C20D0](v23, -1, -1);
      }

      goto LABEL_6;
    }

    v45[0] = 0;
    sub_22CE85D64();

    v14 = v45[0];
    if (!v45[0])
    {
      goto LABEL_22;
    }

    v15 = v2;
    v16 = sub_22CE536B8(v45[0]);
    if (v16 < 2u)
    {
      goto LABEL_15;
    }

    if (!*(v14 + 16) || (v24 = v16, v25 = sub_22CE498B0(0x4920726F646E6556, 0xE900000000000044), (v26 & 1) == 0) || (sub_22CE44458(*(v14 + 56) + 32 * v25, v45), sub_22CE5395C(0, &qword_27D9EEDF8, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
    {
      swift_unknownObjectRelease();

      goto LABEL_46;
    }

    v41 = [v43 integerValue];

    if (v24 == 2)
    {
      v9 = (v6 & 0xC000000000000001);
      if (v41 == 1452)
      {
        goto LABEL_15;
      }

LABEL_45:

      swift_unknownObjectRelease();
LABEL_46:
      v2 = v15;
      goto LABEL_7;
    }

    v9 = (v6 & 0xC000000000000001);
    if (v24 == 3)
    {
      v27 = v41;
      if (v41 == 76)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v24 != 4)
      {
        goto LABEL_45;
      }

      v27 = v41;
    }

    if (v27 != 1452)
    {
      goto LABEL_45;
    }

LABEL_15:
    if (!*(v14 + 16))
    {
      goto LABEL_45;
    }

    v17 = sub_22CE498B0(0xD000000000000012, 0x800000022CE8A070);
    v2 = v15;
    if (v18 & 1) != 0 && (sub_22CE44458(*(v14 + 56) + 32 * v17, v45), (swift_dynamicCast()))
    {
      if (v43 == 0x6863746157 && v44 == 0xE500000000000000)
      {
      }

      else
      {
        v28 = sub_22CE86194();

        if ((v28 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (!*(v14 + 16) || (v29 = sub_22CE498B0(0x6772616843207349, 0xEB00000000676E69), (v30 & 1) == 0))
      {
LABEL_40:

        swift_unknownObjectRelease();
        v9 = (v6 & 0xC000000000000001);
        goto LABEL_7;
      }

      sub_22CE44458(*(v14 + 56) + 32 * v29, v45);

      sub_22CE5395C(0, &qword_27D9EEDF8, 0x277CCABB0);
      v9 = (v6 & 0xC000000000000001);
      if (swift_dynamicCast())
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

LABEL_6:
    swift_unknownObjectRelease();
LABEL_7:
    ++v8;
    if (v11 == v7)
    {
      goto LABEL_57;
    }
  }

  if (v8 >= *(v46 + 16))
  {
    goto LABEL_50;
  }

  v10 = *(v6 + 8 * v8 + 32);
  swift_unknownObjectRetain();
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_11;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  v9 = v43;
  if (qword_281445360 == -1)
  {
    goto LABEL_52;
  }

LABEL_64:
  swift_once();
LABEL_52:
  v31 = sub_22CE85C84();
  __swift_project_value_buffer(v31, qword_281445368);
  v32 = v9;
  v33 = sub_22CE85C74();
  v34 = sub_22CE85FA4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67240192;
    *(v35 + 4) = [v32 BOOLValue];

    _os_log_impl(&dword_22CE3F000, v33, v34, "Found watch with charging state %{BOOL,public}d", v35, 8u);
    MEMORY[0x2318C20D0](v35, -1, -1);
  }

  else
  {

    v33 = v32;
  }

  v36 = [v32 BOOLValue];
  swift_unknownObjectRelease();
LABEL_62:
  *v42 = v36;
}

uint64_t WatchActivityMonitor.deinit()
{

  return v0;
}

uint64_t WatchActivityMonitor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_22CE53208()
{
  v1 = v0;
  v2 = sub_22CE85D44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_22CE85D54();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  result = sub_22CE5260C();
  if ((result & 1) == *(v0 + 48))
  {
    return result;
  }

  LOBYTE(v2) = result;
  if (qword_281445360 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = sub_22CE85C84();
  __swift_project_value_buffer(v9, qword_281445368);
  v10 = sub_22CE85C74();
  v11 = sub_22CE85FA4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v2 & 1;
    _os_log_impl(&dword_22CE3F000, v10, v11, "Watch charging state has changed to %{BOOL,public}d", v12, 8u);
    MEMORY[0x2318C20D0](v12, -1, -1);
  }

  *(v1 + 48) = v2 & 1;
  v13[15] = (v2 & 1) == 0;
  return sub_22CE85CB4();
}

uint64_t sub_22CE5343C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22CE53490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CE53208();
  }

  return result;
}

uint64_t sub_22CE536B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_22CE498B0(0x726F70736E617254, 0xEE00657079542074);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22CE44458(*(a1 + 56) + 32 * v2, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 0x6C616E7265746E49 && v7 == 0xE800000000000000 || (sub_22CE86194() & 1) != 0)
  {

    return 1;
  }

  else if (v6 == 0x6C6169726553 && v7 == 0xE600000000000000 || (sub_22CE86194() & 1) != 0 || v6 == 4346709 && v7 == 0xE300000000000000 || (sub_22CE86194() & 1) != 0 || v6 == 4475201 && v7 == 0xE300000000000000 || (sub_22CE86194() & 1) != 0)
  {

    return 2;
  }

  else if (v6 == 0x746F6F7465756C42 && v7 == 0xE900000000000068 || (sub_22CE86194() & 1) != 0 || v6 == 0x746F6F7465756C42 && v7 == 0xEC000000454C2068 || (sub_22CE86194() & 1) != 0)
  {

    return 3;
  }

  else if (v6 == 0xD000000000000011 && 0x800000022CE8A090 == v7)
  {

    return 4;
  }

  else
  {
    v5 = sub_22CE86194();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}