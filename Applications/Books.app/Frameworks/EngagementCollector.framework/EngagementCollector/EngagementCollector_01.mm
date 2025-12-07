void *sub_18BE0()
{
  v1 = v0;
  sub_2294(&qword_42680, &qword_33018);
  v2 = *v0;
  v3 = sub_317E0();
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

  return result;
}

void *sub_18D48()
{
  v1 = v0;
  sub_2294(&qword_42678, &qword_33010);
  v2 = *v0;
  v3 = sub_317E0();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_1B968(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B9C4(v19, *(v4 + 56) + v17);
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

void sub_18EC4()
{
  sub_2294(&qword_42730, &qword_33138);
  v26 = v0;
  v1 = *v0;
  v27 = sub_317E0();
  v28 = v1;
  if (*(v1 + 16))
  {
    v2 = (v27 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v1 || v2 >= v1 + 64 + 8 * v4)
    {
      memmove(v2, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v27 + 16) = *(v28 + 16);
    v7 = 1 << *(v28 + 32);
    v8 = *(v28 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = *(*(v28 + 48) + 8 * v15);
        v17 = *(v28 + 56) + 48 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        *(*(v27 + 48) + 8 * v15) = v16;
        v24 = *(v27 + 56) + 48 * v15;
        *v24 = v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        v25 = v16;
        sub_1BBC8(v18, v19, v20, v21, v22, v23);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v27;
  }
}

void *sub_190B0(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2294(a1, a2);
  v5 = *v3;
  v6 = sub_317E0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_B61C(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_19250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_192D0(a1, a2, a3, *v3, &qword_426C0, &qword_330A8, &qword_426B8, &qword_330A0);
  *v3 = result;
  return result;
}

void *sub_19290(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_192D0(a1, a2, a3, *v3, &qword_426D0, &qword_330B8, &qword_426B0, &qword_334C0);
  *v3 = result;
  return result;
}

void *sub_192D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2294(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2294(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1941C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_317C0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_317C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B678(&qword_42748, &qword_42740, &qword_33148, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_2294(&qword_42740, &qword_33148);
            v9 = sub_195CC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2294(&qword_42738, &qword_33140);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_195CC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_31700();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1964C;
  }

  __break(1u);
  return result;
}

void sub_19654(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v6 = sub_311B0();
  sub_8BFC(v6, qword_434B0);
  v7 = a1;

  v8 = sub_31190();
  v9 = sub_314C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v7 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = sub_28BCC(v12, v14, &v31);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_2294(&unk_42700, &qword_32CD0);
    v16 = sub_313F0();
    sub_1C65C(500, v16, v17, v18);
    v30 = v9;
    v19 = a3;

    v20 = sub_31360();
    v22 = v21;

    v23 = sub_28BCC(v20, v22, &v31);

    *(v10 + 14) = v23;
    a3 = v19;
    _os_log_impl(&dword_0, v8, v30, "-- Storing Values for %s: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v24 = *(a3 + OBJC_IVAR___BMInternalManager_localStorage);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v7;
  v26[4] = sub_1C634;
  v26[5] = v25;
  v26[6] = a2;
  v27 = *(v24 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v26);
  v28 = v7;

  os_unfair_lock_lock(v27 + 4);
  sub_1CB04(&v31);
  os_unfair_lock_unlock(v27 + 4);
  v29 = v31;
  sub_2C458(v31, sub_1C644, v26);
}

void sub_199D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v6 = sub_311B0();
  sub_8BFC(v6, qword_434B0);
  swift_unknownObjectRetain();

  v7 = sub_31190();
  v8 = sub_314C0();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [a1 eventName];
    v11 = sub_31320();
    v13 = v12;

    v14 = sub_28BCC(v11, v13, &v29);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_2294(&unk_42700, &qword_32CD0);
    v15 = sub_313F0();
    sub_1C65C(500, v15, v16, v17);
    v28 = v8;
    v18 = a3;

    v19 = sub_31360();
    v21 = v20;

    v22 = sub_28BCC(v19, v21, &v29);

    *(v9 + 14) = v22;
    a3 = v18;
    _os_log_impl(&dword_0, v7, v28, "-- Storing Values for %s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v23 = *(a3 + OBJC_IVAR___BMInternalManager_localStorage);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = a1;
  v25[4] = sub_1CACC;
  v25[5] = v24;
  v25[6] = a2;
  v26 = *(v23 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v25);
  swift_unknownObjectRetain_n();

  os_unfair_lock_lock(v26 + 4);
  sub_1CB04(&v29);
  os_unfair_lock_unlock(v26 + 4);
  v27 = v29;
  sub_2C458(v29, sub_1CABC, v25);
}

uint64_t sub_19D50(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_19E44;

  return v5(v2 + 16);
}

uint64_t sub_19E44()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void sub_19F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 recordType] == &dword_0 + 1)
  {
    v10 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v11 = [a1 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = v10;
    v16[5] = sub_1CB1C;
    v16[6] = v15;
    v17 = *(v10 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v17 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v17 + 4);
    v18 = v34;
    v19 = sub_1BBB0;
  }

  else if ([a1 recordType])
  {
    if ([a1 recordType] != &dword_0 + 2)
    {
      return;
    }

    v20 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v21 = [a1 eventName];
    v22 = sub_31320();
    v24 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v22;
    v16[3] = v24;
    v16[4] = a2;
    *(v16 + 40) = 0;
    v16[6] = 0;
    v16[7] = v20;
    v16[8] = sub_1BB70;
    v16[9] = v25;
    v26 = *(v20 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v26 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v26 + 4);
    v18 = v34;
    v19 = sub_1BB78;
  }

  else
  {
    v27 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v28 = [a1 eventName];
    v29 = sub_31320();
    v31 = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v29;
    v16[3] = v31;
    v16[4] = v27;
    v16[5] = sub_1BB7C;
    v16[6] = v32;
    v33 = *(v27 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v33 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v33 + 4);
    v18 = v34;
    v19 = sub_1BB98;
  }

  sub_2C458(v18, v19, v16);
}

void sub_1A388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 recordType] == &dword_0 + 1)
  {
    v10 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v11 = [a1 eventName];
    v12 = sub_31320();
    v14 = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = v10;
    v16[5] = sub_1CB1C;
    v16[6] = v15;
    v17 = *(v10 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v17 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v17 + 4);
    v18 = v34;
    v19 = sub_1CA9C;
  }

  else if ([a1 recordType])
  {
    if ([a1 recordType] != &dword_0 + 2)
    {
      return;
    }

    v20 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v21 = [a1 eventName];
    v22 = sub_31320();
    v24 = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v22;
    v16[3] = v24;
    v16[4] = a2;
    *(v16 + 40) = 0;
    v16[6] = 0;
    v16[7] = v20;
    v16[8] = sub_1CB00;
    v16[9] = v25;
    v26 = *(v20 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v26 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v26 + 4);
    v18 = v34;
    v19 = sub_1CAA8;
  }

  else
  {
    v27 = *(a5 + OBJC_IVAR___BMInternalManager_localStorage);
    v28 = [a1 eventName];
    v29 = sub_31320();
    v31 = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v16 = swift_allocObject();
    v16[2] = v29;
    v16[3] = v31;
    v16[4] = v27;
    v16[5] = sub_1CB1C;
    v16[6] = v32;
    v33 = *(v27 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v16);

    os_unfair_lock_lock(v33 + 4);
    sub_1CB04(&v34);
    os_unfair_lock_unlock(v33 + 4);
    v18 = v34;
    v19 = sub_1CA90;
  }

  sub_2C458(v18, v19, v16);
}

_BYTE *sub_1A79C(void *a1)
{
  v30 = a1;
  v2 = sub_310D0();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_31580();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_31530();
  __chkstk_darwin(v7);
  v8 = sub_31240();
  __chkstk_darwin(v8 - 8);
  v1[OBJC_IVAR___BMInternalManager_shouldScheduleUpdates] = 0;
  v28 = OBJC_IVAR___BMInternalManager_managerQueue;
  v9 = sub_1B8B4();
  v27[1] = "tor.ManagerConfiguration";
  v27[2] = v9;
  sub_31230();
  v35 = _swiftEmptyArrayStorage;
  sub_1C938(&qword_42750, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2294(&qword_42940, &unk_33150);
  sub_B678(&unk_42760, &qword_42940, &unk_33150, &protocol conformance descriptor for [A]);
  sub_31690();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v10 = v30;
  *&v1[v28] = sub_315A0();
  *&v1[OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem] = 0;
  type metadata accessor for Collector();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000010;
  v11[3] = 0x8000000000034CE0;
  v11[4] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___BMInternalManager_collector] = v11;
  *&v1[OBJC_IVAR___BMInternalManager_configuration] = v10;
  v12 = v31;
  (*(v32 + 16))(v31, v10 + OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory, v33);
  type metadata accessor for LocalStorage(0);
  swift_allocObject();
  v13 = v10;
  *&v1[OBJC_IVAR___BMInternalManager_localStorage] = sub_2B744(v12);
  v14 = type metadata accessor for Manager();
  v34.receiver = v1;
  v34.super_class = v14;
  v15 = objc_msgSendSuper2(&v34, "init");
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 defaultCenter];
  [v18 addObserver:v17 selector:"onDidReceiveAppDidBackground:" name:UIApplicationWillResignActiveNotification object:0];

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v19 = sub_311B0();
  sub_8BFC(v19, qword_434B0);
  v20 = v13;
  v21 = sub_31190();
  v22 = sub_314B0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v10;
    v25 = v20;
    _os_log_impl(&dword_0, v21, v22, "Manager initiated with configuration %@", v23, 0xCu);
    sub_B5AC(v24, &qword_42790, &unk_334A0);
  }

  if (*(v20 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule) == 1)
  {
    v17[OBJC_IVAR___BMInternalManager_shouldScheduleUpdates] = 1;
    sub_11DD0();
  }

  return v17;
}

uint64_t sub_1AD3C(uint64_t a1)
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
  v11[1] = sub_1CAC8;

  return sub_27764(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AE50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AE88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1AEE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AF20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF90(uint64_t a1)
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
  v11[1] = sub_1B06C;

  return sub_27764(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B06C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B18C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1CAC8;

  return sub_134B0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1B294(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_31850() & 1;
  }
}

uint64_t sub_1B348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3B8()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_31180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_1B558()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);

  sub_2DBA0(v8, v0 + v4, v0 + v5, v10, v11, v12, v13);
}

uint64_t sub_1B638(uint64_t a1)
{
  result = sub_310D0();
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

unint64_t sub_1B8B4()
{
  result = qword_42930;
  if (!qword_42930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_42930);
  }

  return result;
}

uint64_t sub_1B900()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA20(void *a1)
{
  v3 = *(sub_2294(&unk_42690, &unk_33028) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_15A9C(a1, v4);
}

uint64_t sub_1BA9C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BAF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1BB58(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1BB64(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1BC3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1BC8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CAC8;

  return sub_14C64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BD6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CAC8;

  return sub_19D50(a1, v4);
}

uint64_t sub_1BE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_1470C(a1, v4, v5, v7, v6);
}

uint64_t sub_1BEE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B06C;

  return sub_19D50(a1, v4);
}

uint64_t sub_1BFA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_143C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0C0()
{
  v1 = sub_2294(&qword_426C8, &qword_330B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C16C(uint64_t *a1)
{
  v3 = *(sub_2294(&qword_426C8, &qword_330B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_14B68(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C230(uint64_t a1, char a2)
{
  sub_2294(&qword_426C8, &qword_330B0);

  return sub_15158(a1, a2 & 1);
}

uint64_t sub_1C2BC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1C3C8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1C430()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1C48C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_2294(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C55C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C59C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1C5A8()
{
  result = qword_429B0;
  if (!qword_429B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_429B0);
  }

  return result;
}

uint64_t sub_1C5FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C65C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_31380();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1C6F8(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_1C704(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1C710()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CAC8;

  return sub_106AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1C818()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1C880(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CAC8;

  return sub_16E64(a1, v4);
}

uint64_t sub_1C938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C994()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C9D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1CB2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dataType];
  v4 = sub_31320();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1CB84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rawHistoryToken];
  if (v3)
  {
    v4 = v3;
    v5 = sub_310F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1CBEC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_310E0().super.isa;
  }

  v4 = isa;
  [v2 setRawHistoryToken:?];
}

id sub_1CD10()
{
  result = [v0 rawHistoryToken];
  if (result)
  {
    v2 = result;
    v3 = sub_310F0();
    v5 = v4;

    sub_B304(0, &qword_42770, NSKeyedUnarchiver_ptr);
    sub_B304(0, &qword_42778, NSPersistentHistoryToken_ptr);
    result = sub_314F0();
    if (result)
    {
      v6 = result;
      sub_B558(v3, v5);
      return v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CFB8(void *a1)
{
  v2 = v1;
  if (!a1)
  {
LABEL_9:
    v11.super.isa = 0;
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_10;
  }

  v4 = objc_opt_self();
  v23 = 0;
  v5 = a1;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
  v7 = v23;
  if (!v6)
  {
    v12 = v7;
    v13 = sub_31070();

    swift_willThrow();
    v23 = v13;
    sub_2294(&unk_42780, &qword_32CC0);
    sub_B304(0, &qword_424A8, NSError_ptr);
    swift_dynamicCast();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v14 = sub_311B0();
    sub_8BFC(v14, qword_434B0);
    v15 = v22;
    v16 = sub_31190();
    v17 = sub_314D0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_0, v16, v17, "Failed to create rawHistoryToken from data error: %@", v18, 0xCu);
      sub_1E8C0(v19);

      v15 = v16;
      v16 = v20;
    }

    goto LABEL_9;
  }

  v8 = sub_310F0();
  v10 = v9;

  v11.super.isa = sub_310E0().super.isa;
LABEL_10:
  [v2 setRawHistoryToken:v11.super.isa];

  return sub_B544(v8, v10);
}

void (*sub_1D264(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1CD10();
  return sub_1D2AC;
}

void sub_1D2AC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1CFB8(v2);
  }

  else
  {
    sub_1CFB8(*a1);
  }
}

id CDCloudSyncVersions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CDCloudSyncVersions();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

uint64_t sub_1D3E8()
{
  v1 = [*v0 dataType];
  v2 = sub_31320();

  return v2;
}

uint64_t sub_1D4A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D510()
{
  v1 = (v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D568(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1D628(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D688()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D6D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D78C()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D880()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D8C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D974()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D9B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DA68()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DBC8()
{
  v1 = v0;
  sub_316D0(103);
  v9._countAndFlagsBits = 0x6570795461746164;
  v9._object = 0xEA0000000000203ALL;
  sub_31390(v9);
  v2 = (v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  v10._countAndFlagsBits = v3;
  v10._object = v4;
  sub_31390(v10);

  v11._object = 0x8000000000034D30;
  v11._countAndFlagsBits = 0xD000000000000010;
  sub_31390(v11);
  swift_beginAccess();
  v12._countAndFlagsBits = sub_31820();
  sub_31390(v12);

  v13._object = 0x8000000000034D50;
  v13._countAndFlagsBits = 0xD000000000000010;
  sub_31390(v13);
  swift_beginAccess();
  v14._countAndFlagsBits = sub_31820();
  sub_31390(v14);

  v15._countAndFlagsBits = 0x6556636E7973202CLL;
  v15._object = 0xEF203A6E6F697372;
  sub_31390(v15);
  swift_beginAccess();
  v16._countAndFlagsBits = sub_31820();
  sub_31390(v16);

  v17._countAndFlagsBits = 0x79726F7473696820;
  v17._object = 0xEE003A6E656B6F54;
  sub_31390(v17);
  v5 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_2294(&qword_427C8, &qword_33170);
  v18._countAndFlagsBits = sub_31340();
  sub_31390(v18);

  v19._countAndFlagsBits = 0xD000000000000014;
  v19._object = 0x8000000000034D70;
  sub_31390(v19);
  swift_beginAccess();
  v20._countAndFlagsBits = sub_31820();
  sub_31390(v20);

  v7 = sub_31330();

  return v7;
}

void sub_1DEE0(void *a1)
{
  swift_beginAccess();

  v3 = sub_31300();

  v4 = sub_31300();
  [a1 encodeObject:v3 forKey:v4];

  v5 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = sub_31300();
  [a1 encodeInt64:v6 forKey:v7];

  v8 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_31300();
  [a1 encodeInt64:v9 forKey:v10];

  v11 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = sub_31300();
  [a1 encodeInt64:v12 forKey:v13];

  v14 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = sub_31300();
  [a1 encodeObject:v15 forKey:v16];

  v17 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = sub_31300();
  [a1 encodeInt64:v18 forKey:v19];
}

id CDMutableCloudSyncVersions.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken) = 0;
  sub_B304(0, &qword_427D0, NSString_ptr);
  v5 = sub_31650();
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v6 = v5;
    sub_31310();
  }

  type metadata accessor for CDMutableCloudSyncVersions();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1E534(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1E5BC()
{
  v1 = (*v0 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void *sub_1E618()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E668()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E6B0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E6F8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1E740()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion;
  swift_beginAccess();
  return *(v1 + v2);
}

id sub_1E788(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken] = 0;
  v5 = [a1 dataType];
  v6 = sub_31320();
  v8 = v7;

  v9 = &a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType];
  *v9 = v6;
  *(v9 + 1) = v8;
  v10 = [a1 cloudVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_cloudVersion] = v10;
  v11 = [a1 localVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_localVersion] = v11;
  v12 = [a1 syncVersion];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_syncVersion] = v12;
  v13 = sub_1CD10();
  swift_beginAccess();
  v14 = *&a2[v4];
  *&a2[v4] = v13;

  v15 = [a1 historyTokenOffset];
  *&a2[OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyTokenOffset] = v15;
  v17.receiver = a2;
  v17.super_class = type metadata accessor for CDMutableCloudSyncVersions();
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1E8C0(uint64_t a1)
{
  v2 = sub_2294(&qword_42790, &unk_334A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E95C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_31300();
  [v2 setDataType:v3];
}

id sub_1E9E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historyTokenOffset];
  *a2 = result;
  return result;
}

id sub_1EA34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cloudVersion];
  *a2 = result;
  return result;
}

id sub_1EA88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 localVersion];
  *a2 = result;
  return result;
}

id sub_1EADC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 syncVersion];
  *a2 = result;
  return result;
}

id sub_1EB24@<X0>(void *a1@<X8>)
{
  result = sub_1CD10();
  *a1 = result;
  return result;
}

uint64_t sub_1EB50(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1CFB8(v1);
}

uint64_t sub_1EB80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_dataType);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1EBDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19EngagementCollector26CDMutableCloudSyncVersions_historyToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1EC9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1ECFC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

Swift::Void __swiftcall LocalStorage.purgeAllIfNeeded()()
{
  v1 = sub_31180();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  sub_20650(&v14 - v6);
  sub_31140();
  v8 = sub_31130();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = sub_208E8;
    v11[4] = v10;
    v12 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(v11);
    *(&v14 - 2) = sub_1AE18;
    *(&v14 - 1) = v0;
    swift_retain_n();

    os_unfair_lock_lock(v12 + 4);
    sub_209F0(&v15);
    os_unfair_lock_unlock(v12 + 4);
    v13 = v15;
    sub_2C458(v15, sub_1B16C, v11);
  }
}

Swift::Void __swiftcall LocalStorage.forcePurgeAll()()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  v2[2] = v0;
  v2[3] = sub_1B160;
  v2[4] = v1;
  v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_retain_n();

  os_unfair_lock_lock(v3 + 4);
  sub_21F5C(&v5);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v5;
  sub_2C458(v5, sub_1CB28, v2);
}

void sub_1F5F0(unint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v11 = sub_317C0();
  }

  else
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  swift_beginAccess();
  if (!v11)
  {
LABEL_18:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_21DAC();
    }

    return;
  }

  v12 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_31700();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      swift_getObjectType();
      sub_2137C(v13, v16);
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v14 == v11)
    {
      goto LABEL_18;
    }
  }

  if (v12 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(a1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_3:
  v4 = sub_311B0();
  sub_8BFC(v4, qword_434B0);
  swift_errorRetain();
  oslog = sub_31190();
  v5 = sub_314D0();
  sub_21DA0(a1, 1);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_318A0();
    v10 = sub_28BCC(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, oslog, v5, "Something wrong happened while fetching all configuration: %s", v6, 0xCu);
    sub_9170(v7);
  }

  else
  {
  }
}

void sub_1F8B8(unint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v11 = sub_317C0();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      return;
    }
  }

  v12 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_31700();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_12:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1FB40(v13);
    }

    swift_unknownObjectRelease();
    ++v12;
    if (v14 == v11)
    {
      return;
    }
  }

  if (v12 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(a1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_3:
  v4 = sub_311B0();
  sub_8BFC(v4, qword_434B0);
  swift_errorRetain();
  oslog = sub_31190();
  v5 = sub_314D0();
  sub_21DA0(a1, 1);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_318A0();
    v10 = sub_28BCC(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, oslog, v5, "Something wrong happened while fetching all configuration: %s", v6, 0xCu);
    sub_9170(v7);
  }

  else
  {
LABEL_17:
  }
}

void sub_1FB40(void *a1)
{
  v2 = a1;
  v3 = [a1 eventName];
  v4 = sub_31320();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v7 + 4);
  sub_21F5C(&v39);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v39;
  v9 = sub_AA04(v4, v6);

  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    for (i = v2; v11; i = v2)
    {
      v12 = 0;
      v38 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v38)
        {
          v13 = sub_31700();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_13;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        __chkstk_darwin(v13);
        v2 = v11;
        v16 = v9;
        v17 = v10;
        os_unfair_lock_lock(v7 + 4);
        sub_21F5C(&v39);
        os_unfair_lock_unlock(v7 + 4);
        v18 = v39;
        [v39 deleteObject:v14];

        v10 = v17;
        v9 = v16;
        v11 = v2;
        ++v12;
        if (v15 == v2)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v11 = sub_317C0();
    }

LABEL_15:

    __chkstk_darwin(v19);
    os_unfair_lock_lock(v7 + 4);
    sub_21F5C(&v39);
    os_unfair_lock_unlock(v7 + 4);
    v20 = v39;
    v39 = 0;
    v21 = [v20 save:&v39];

    v22 = v39;
    if (v21)
    {

      v23 = v22;
    }

    else
    {
      v24 = v39;
      sub_31070();

      swift_willThrow();
      if (qword_42220 != -1)
      {
        swift_once();
      }

      v25 = sub_311B0();
      sub_8BFC(v25, qword_434B0);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v26 = sub_31190();
      v27 = sub_314D0();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = [i eventName];
        v30 = sub_31320();
        v32 = v31;

        v33 = sub_28BCC(v30, v32, &v39);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        swift_getErrorValue();
        v34 = sub_318A0();
        v36 = sub_28BCC(v34, v35, &v39);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_0, v26, v27, "Something wrong happened while deleting properties from the local storage %s: %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall LocalStorage.purge(propertyName:)(Swift::String propertyName)
{
  object = propertyName._object;
  countAndFlagsBits = propertyName._countAndFlagsBits;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  v6[2] = countAndFlagsBits;
  v6[3] = object;
  v6[4] = v1;
  v6[5] = sub_20A70;
  v6[6] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_bridgeObjectRetain_n();

  os_unfair_lock_lock(v7 + 4);
  sub_21F5C(&v9);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v9;
  sub_2C458(v9, sub_20AC8, v6);
}

void sub_20188(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v8 = sub_311B0();
    sub_8BFC(v8, qword_434B0);
    sub_1BB58(a1, 1);

    oslog = sub_31190();
    v9 = sub_314D0();

    sub_1BB64(a1, 1);
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_28BCC(a4, a5, v16);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, v16);

      *(v10 + 14) = v13;
      _os_log_impl(&dword_0, oslog, v9, "No configuration found to purge %s: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_20AD8(a1, Strong);
      sub_1BB64(a1, 0);
    }
  }
}

uint64_t sub_203CC(id *a1, uint64_t a2)
{
  v3 = sub_31180();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = [*a1 createdAt];
  if (v10)
  {
    v11 = v10;
    sub_31160();

    (*(v4 + 32))(v9, v7, v3);
    sub_21D48();
    v12 = sub_312F0();
    (*(v4 + 8))(v9, v3);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_2053C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_317C0();
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_31700();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_20650@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2294(&qword_42490, &qword_32CB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_31300();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    sub_31680();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    v8 = sub_31180();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v4, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v4, v8);
    }
  }

  else
  {
    sub_B5AC(v15, &qword_42260, &qword_32880);
    v12 = sub_31180();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  }

  sub_B5AC(v4, &qword_42490, &qword_32CB0);
  return sub_31150();
}

uint64_t sub_208B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2090C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_317C0();
LABEL_9:
  result = sub_31710();
  *v2 = result;
  return result;
}

void *sub_209AC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_20A20(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_20A80()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_20AD8(void *a1, char *a2)
{
  v77 = a2;
  p_type = sub_31180();
  v75 = *(p_type - 8);
  __chkstk_darwin(p_type);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 ageToExpire];
  v76 = a1;
  v7 = [a1 countLimit];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v9 = v7;
  v10 = [v76 eventName];
  v11 = sub_31320();
  v13 = v12;

  v14 = *&v77[OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock];
  __chkstk_darwin(v15);
  *(&v72 - 2) = sub_1CAE4;
  *(&v72 - 1) = v16;
  os_unfair_lock_lock(v14 + 4);
  sub_21F5C(&v79);
  os_unfair_lock_unlock(v14 + 4);
  v17 = v79;
  v18 = sub_AA04(v11, v13);

  if (!v18)
  {
    return;
  }

  v79 = _swiftEmptyArrayStorage;
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    goto LABEL_63;
  }

  v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
  if (v9 < v20)
  {
LABEL_8:
    v21 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v9;
      if (!__OFADD__(v21, 1))
      {
        v74 = v20;
        if (v19)
        {
          if (sub_317C0() < 0)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          v23 = sub_317C0();
          v20 = v74;
        }

        else
        {
          v23 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        }

        if (v23 >= v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v73 = v19;
              type metadata accessor for CDProperty();

              v24 = 0;
              do
              {
                v25 = v24 + 1;
                sub_316F0(v24);
                v24 = v25;
              }

              while (v9 != v25);
              v19 = v73;
              v20 = v74;
              if (v73)
              {

                v29 = sub_317D0();
LABEL_24:
                sub_21C44(v29, v26, v27, v28);
                swift_unknownObjectRelease();
                goto LABEL_25;
              }
            }

            else
            {
            }

            v27 = 0;
            v29 = v18 & 0xFFFFFFFFFFFFFF8;
            v26 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
            v28 = (2 * v22) | 1;
            goto LABEL_24;
          }

          goto LABEL_72;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
LABEL_58:
        v59 = sub_311B0();
        sub_8BFC(v59, qword_434B0);
        v60 = v76;
        swift_errorRetain();
        v61 = sub_31190();
        v62 = sub_314D0();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v63 = 136315394;
          v64 = [v60 eventName];
          v65 = sub_31320();
          v67 = v66;

          v68 = sub_28BCC(v65, v67, &v79);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          swift_getErrorValue();
          v69 = sub_318A0();
          v71 = sub_28BCC(v69, v70, &v79);

          *(v63 + 14) = v71;
          _os_log_impl(&dword_0, v61, v62, "Something wrong happened while deleting properties from the local storage %s: %s", v63, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
LABEL_25:
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_48;
    }

    if (__OFSUB__(0, v6))
    {
      goto LABEL_70;
    }

    v31 = sub_31140();
    __chkstk_darwin(v31);
    *(&v72 - 2) = v5;
    sub_2053C(sub_21C24, (&v72 - 4), v18);
    if (v33)
    {
      v34 = v20;
    }

    else
    {
      v34 = v32;
    }

    if (v34 > 0 && v20 >= v34)
    {
      if (v19)
      {
        if (sub_317C0() < 0)
        {
          goto LABEL_76;
        }

        v35 = sub_317C0();
      }

      else
      {
        v35 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      }

      if (v35 < v34)
      {
        goto LABEL_75;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        type metadata accessor for CDProperty();

        v36 = 0;
        do
        {
          v37 = v36 + 1;
          sub_316F0(v36);
          v36 = v37;
        }

        while (v34 != v37);
        if (v19)
        {

          v38 = sub_317D0();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v45 = v44;
          v46 = v40;
          v47 = v42;
LABEL_46:
          sub_21C44(v38, v46, v47, v45);
          swift_unknownObjectRelease();
          goto LABEL_47;
        }
      }

      else
      {
      }

      v47 = 0;
      v38 = v18 & 0xFFFFFFFFFFFFFF8;
      v46 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      v45 = (2 * v34) | 1;
      goto LABEL_46;
    }

LABEL_47:
    v30 = (*(v75 + 8))(v5, p_type);
LABEL_48:
    v48 = v79;
    if (!(v79 >> 62))
    {
      v5 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
      v75 = v79;
      if (!v5)
      {
        break;
      }

      goto LABEL_50;
    }

    v30 = sub_317C0();
    v5 = v30;
    v75 = v48;
    if (!v30)
    {
      break;
    }

LABEL_50:
    v6 = 0;
    v19 = v48 & 0xFFFFFFFFFFFFFF8;
    v9 = v48 + 32;
    p_type = &stru_40FF0.type;
    while (v6 < *(v19 + 16))
    {
      __chkstk_darwin(v30);
      v49 = v77;
      *(&v72 - 2) = sub_1CAE4;
      *(&v72 - 1) = v49;
      v18 = v50;
      os_unfair_lock_lock(v14 + 4);
      sub_21F5C(v78);
      ++v6;
      os_unfair_lock_unlock(v14 + 4);
      v51 = v78[0];
      [v78[0] deleteObject:v18];

      if (v5 == v6)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_63:
    v20 = sub_317C0();
    if (v9 < v20)
    {
      goto LABEL_8;
    }
  }

LABEL_53:

  __chkstk_darwin(v52);
  v53 = v77;
  *(&v72 - 2) = sub_1CAE4;
  *(&v72 - 1) = v53;
  os_unfair_lock_lock(v14 + 4);
  sub_21F5C(v78);
  os_unfair_lock_unlock(v14 + 4);
  v54 = v78[0];
  v78[0] = 0;
  v55 = [v54 save:v78];

  v56 = v78[0];
  if ((v55 & 1) == 0)
  {
    v77 = v78[0];
    v58 = v78[0];
    sub_31070();

    swift_willThrow();
    if (qword_42220 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  v57 = v56;
}

void sub_2137C(void *a1, char *a2)
{
  v77 = a2;
  p_type = sub_31180();
  v76 = *(p_type - 8);
  __chkstk_darwin(p_type);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 ageToExpire];
  v7 = [a1 countLimit];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v9 = v7;
  v75 = a1;
  v10 = [a1 eventName];
  v11 = sub_31320();
  v13 = v12;

  v14 = *&v77[OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock];
  __chkstk_darwin(v15);
  *(&v72 - 2) = sub_1CAE4;
  *(&v72 - 1) = v16;
  os_unfair_lock_lock(v14 + 4);
  sub_21F5C(&v79);
  os_unfair_lock_unlock(v14 + 4);
  v17 = v79;
  v18 = sub_AA04(v11, v13);

  if (!v18)
  {
    return;
  }

  v79 = _swiftEmptyArrayStorage;
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    goto LABEL_63;
  }

  v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
  if (v9 < v20)
  {
LABEL_8:
    v21 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v9;
      if (!__OFADD__(v21, 1))
      {
        v74 = v20;
        if (v19)
        {
          if (sub_317C0() < 0)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
          }

          v23 = sub_317C0();
          v20 = v74;
        }

        else
        {
          v23 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        }

        if (v23 >= v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v73 = v19;
              type metadata accessor for CDProperty();

              v24 = 0;
              do
              {
                v25 = v24 + 1;
                sub_316F0(v24);
                v24 = v25;
              }

              while (v9 != v25);
              v19 = v73;
              v20 = v74;
              if (v73)
              {

                v29 = sub_317D0();
LABEL_24:
                sub_21C44(v29, v26, v27, v28);
                swift_unknownObjectRelease();
                goto LABEL_25;
              }
            }

            else
            {
            }

            v27 = 0;
            v29 = v18 & 0xFFFFFFFFFFFFFF8;
            v26 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
            v28 = (2 * v22) | 1;
            goto LABEL_24;
          }

          goto LABEL_72;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
LABEL_58:
        v59 = sub_311B0();
        sub_8BFC(v59, qword_434B0);
        v60 = v75;
        swift_unknownObjectRetain();
        swift_errorRetain();
        v61 = sub_31190();
        v62 = sub_314D0();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v63 = 136315394;
          v64 = [v60 eventName];
          v65 = sub_31320();
          v67 = v66;

          v68 = sub_28BCC(v65, v67, &v79);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          swift_getErrorValue();
          v69 = sub_318A0();
          v71 = sub_28BCC(v69, v70, &v79);

          *(v63 + 14) = v71;
          _os_log_impl(&dword_0, v61, v62, "Something wrong happened while deleting properties from the local storage %s: %s", v63, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
LABEL_25:
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {

      goto LABEL_48;
    }

    if (__OFSUB__(0, v6))
    {
      goto LABEL_70;
    }

    v31 = sub_31140();
    __chkstk_darwin(v31);
    *(&v72 - 2) = v5;
    sub_2053C(sub_21F78, (&v72 - 4), v18);
    if (v33)
    {
      v34 = v20;
    }

    else
    {
      v34 = v32;
    }

    if (v34 > 0 && v20 >= v34)
    {
      if (v19)
      {
        if (sub_317C0() < 0)
        {
          goto LABEL_76;
        }

        v35 = sub_317C0();
      }

      else
      {
        v35 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      }

      if (v35 < v34)
      {
        goto LABEL_75;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        type metadata accessor for CDProperty();

        v36 = 0;
        do
        {
          v37 = v36 + 1;
          sub_316F0(v36);
          v36 = v37;
        }

        while (v34 != v37);
        if (v19)
        {

          v38 = sub_317D0();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v45 = v44;
          v46 = v40;
          v47 = v42;
LABEL_46:
          sub_21C44(v38, v46, v47, v45);
          swift_unknownObjectRelease();
          goto LABEL_47;
        }
      }

      else
      {
      }

      v47 = 0;
      v38 = v18 & 0xFFFFFFFFFFFFFF8;
      v46 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      v45 = (2 * v34) | 1;
      goto LABEL_46;
    }

LABEL_47:
    v30 = (*(v76 + 8))(v5, p_type);
LABEL_48:
    v48 = v79;
    if (!(v79 >> 62))
    {
      v5 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
      v76 = v79;
      if (!v5)
      {
        break;
      }

      goto LABEL_50;
    }

    v30 = sub_317C0();
    v5 = v30;
    v76 = v48;
    if (!v30)
    {
      break;
    }

LABEL_50:
    v6 = 0;
    v19 = v48 & 0xFFFFFFFFFFFFFF8;
    v9 = v48 + 32;
    p_type = &stru_40FF0.type;
    while (v6 < *(v19 + 16))
    {
      __chkstk_darwin(v30);
      v49 = v77;
      *(&v72 - 2) = sub_1CAE4;
      *(&v72 - 1) = v49;
      v18 = v50;
      os_unfair_lock_lock(v14 + 4);
      sub_21F5C(v78);
      ++v6;
      os_unfair_lock_unlock(v14 + 4);
      v51 = v78[0];
      [v78[0] deleteObject:v18];

      if (v5 == v6)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_63:
    v20 = sub_317C0();
    if (v9 < v20)
    {
      goto LABEL_8;
    }
  }

LABEL_53:

  __chkstk_darwin(v52);
  v53 = v77;
  *(&v72 - 2) = sub_1CAE4;
  *(&v72 - 1) = v53;
  os_unfair_lock_lock(v14 + 4);
  sub_21F5C(v78);
  os_unfair_lock_unlock(v14 + 4);
  v54 = v78[0];
  v78[0] = 0;
  v55 = [v54 save:v78];

  v56 = v78[0];
  if (!v55)
  {
    v77 = v78[0];
    v58 = v78[0];
    sub_31070();

    swift_willThrow();
    if (qword_42220 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  v57 = v56;
}

uint64_t sub_21C44(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_317C0();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_2090C(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1) - *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for CDProperty();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_21D48()
{
  result = qword_428F0;
  if (!qword_428F0)
  {
    sub_31180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_428F0);
  }

  return result;
}

uint64_t sub_21DA0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21DAC()
{
  v0 = sub_31180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  sub_31170();
  isa = sub_31120().super.isa;
  (*(v1 + 8))(v3, v0);
  v7 = sub_31300();
  [v5 setObject:isa forKey:v7];

  v8 = [v4 standardUserDefaults];
  [v8 synchronize];
}

void *sub_21F18@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_21F94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a2;
  v10[6] = a1;
  v11 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  swift_unknownObjectRetain();

  os_unfair_lock_lock(v11 + 4);
  sub_1CB04(&v20);
  os_unfair_lock_unlock(v11 + 4);
  v12 = v20;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = sub_23A34;
  v13[4] = v10;

  v14 = [a2 eventName];
  v15 = sub_31320();
  v17 = v16;

  swift_unknownObjectRetain();
  v18 = v12;

  sub_C390(v15, v17, v18, v18, a2, sub_23A88);

  swift_unknownObjectRelease();
}

void sub_2214C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void (*)(uint64_t, uint64_t), uint64_t, char **, void *, uint64_t), uint64_t a4, char **a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    a3(a1, 1, a3, a4, a5, a6, a7);
  }

  else
  {
    v11 = *(a7 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(a1);
    v13 = v12;
    os_unfair_lock_lock(v11 + 4);
    sub_1CB04(&v15);
    os_unfair_lock_unlock(v11 + 4);
    v14 = v15;

    sub_9D94(a5, a6, v14, v13, a3, a4);
  }
}

uint64_t sub_22254(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v6 = sub_311B0();
    sub_8BFC(v6, qword_434B0);
    swift_errorRetain();
    v7 = sub_31190();
    v8 = sub_314D0();
    sub_1C704(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Error while inserting property objects to Core Data: %s", v9, 0xCu);
      sub_9170(v10);
    }

    v14 = a1;
    v15 = 1;
  }

  else
  {
    sub_2294(&qword_42900, qword_33228);
    sub_23A98();
    sub_311D0();
    v14 = 0;
    v15 = 0;
  }

  return a4(v14, v15);
}

void sub_22430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1CB04(&v11);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v11;
  sub_7B3C(a1, a2, v11, a4, a5);
}

void sub_224DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1CB04(&v11);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v11;
  sub_612C(a1, a2, v11, a4, a5);
}

uint64_t sub_22588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v14 = *(a6 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v14 + 4);
  sub_1CB04(&v21);
  os_unfair_lock_unlock(v14 + 4);
  v15 = v21;
  sub_2294(&qword_42440, &unk_32AB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_32A60;
  *(v16 + 32) = 7955819;
  *(v16 + 40) = 0xE300000000000000;
  *(v16 + 88) = &type metadata for String;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;
  swift_retain_n();

  v17 = sub_31300();
  isa = sub_313D0().super.isa;

  v19 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

  sub_6144(v19, 0, 0, a3, a4, a5, v15, a7);
}

void sub_22740(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v13 = *(a5 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v15);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v15;
  _s19EngagementCollector10CDPropertyC21fetchCollectionValues22propertyConfigurations8assetIDs15sortByCreatedAt5limit7context10completionySayAA21PropertyConfiguration_pG_ShySSGSgSbSiSo22NSManagedObjectContextCys6ResultOySayAaK_p_AA0R5ValueOtGs5Error_pGctFZ_0(a1, a2, a3, a4, v15, a6, a7);
}

void sub_22804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2294(&qword_428F8, &qword_33220);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-v8];
  (*(v7 + 16))(&v14[-v8], a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v15 = sub_1AE18;
  v16 = a2;

  os_unfair_lock_lock(v12 + 4);
  sub_1AE34(&v17);
  os_unfair_lock_unlock(v12 + 4);
  v13 = v17;
  sub_2C458(v17, sub_23974, v11);
}

uint64_t sub_229B4(unint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = _swiftEmptyDictionarySingleton;
LABEL_16:
    v26 = v4;
    sub_2294(&qword_428F8, &qword_33220);
    return sub_31440();
  }

  v24 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v3 = (a1 + 40);
  v4 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *(a2 + v24);
    __chkstk_darwin(a1);

    os_unfair_lock_lock(v8 + 4);
    sub_1CB04(&v26);
    os_unfair_lock_unlock(v8 + 4);
    v9 = v26;
    v10 = sub_AEE8(v7, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v4;
    a1 = sub_17054(v7, v6);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_17E2C(v16, isUniquelyReferenced_nonNull_native);
      a1 = sub_17054(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = a1;
    sub_18BE0();
    a1 = v22;
    if (v17)
    {
LABEL_3:
      v5 = a1;

      v4 = v26;
      *(v26[7] + 8 * v5) = v10;
      goto LABEL_4;
    }

LABEL_11:
    v4 = v26;
    v26[(a1 >> 6) + 8] |= 1 << a1;
    v19 = (v4[6] + 16 * a1);
    *v19 = v7;
    v19[1] = v6;
    *(v4[7] + 8 * a1) = v10;
    v20 = v4[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_18;
    }

    v4[2] = v21;
LABEL_4:
    v3 += 2;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_31890();
  __break(1u);
  return result;
}

uint64_t sub_22BF8(unint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, char *), uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v115 = a7;
  v113 = a5;
  v121 = a4;
  v125 = a3;
  v117 = sub_31180();
  v12 = *(v117 - 8);
  v13 = __chkstk_darwin(v117);
  v118 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v116 = &v106 - v16;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_67:
      swift_once();
    }

    v17 = sub_311B0();
    sub_8BFC(v17, qword_434B0);
    swift_errorRetain();
    v18 = sub_31190();
    v19 = sub_314D0();
    sub_21DA0(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v127[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_318A0();
      v24 = sub_28BCC(v22, v23, v127);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "Error while querying properties from Core Data: %s", v20, 0xCu);
      sub_9170(v21);
    }

    return v115();
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v114 = a6;
  if (a1 >> 62)
  {
    v26 = sub_317C0();
    if (v26)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v26)
    {
LABEL_8:
      v27 = 0;
      v124 = a1 & 0xC000000000000001;
      v109 = (v12 + 16);
      v110 = (v12 + 8);
      *&v15 = 138412290;
      v119 = v15;
      *&v15 = 136315138;
      v106 = v15;
      v111 = a8;
      v123 = a1;
      v120 = a1 & 0xFFFFFFFFFFFFFF8;
      v122 = v26;
      do
      {
        if (v124)
        {
          v28 = sub_31700();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_66;
          }

          v28 = *(a1 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v126 = 0;
        v31 = [v125 existingObjectWithID:v28 error:&v126];
        v32 = v126;
        if (!v31)
        {
          v100 = v126;
          sub_31070();

          swift_willThrow();
          if (qword_42220 != -1)
          {
            swift_once();
          }

          v101 = sub_311B0();
          sub_8BFC(v101, qword_434B0);
          v102 = sub_31190();
          v103 = sub_314D0();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_0, v102, v103, "Error while querying properties from Core Data", v104, 2u);
          }

          return v115();
        }

        v33 = v31;
        type metadata accessor for CDProperty();
        v34 = swift_dynamicCastClass();
        v35 = v32;
        if (!v34)
        {
          goto LABEL_28;
        }

        v36 = [v34 key];
        if (v36)
        {
          v37 = v36;
          v38 = sub_31320();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0xE000000000000000;
        }

        if (!*(v121 + 16))
        {

          v25 = v120;
LABEL_28:

          if (qword_42220 != -1)
          {
            swift_once();
          }

          v56 = sub_311B0();
          sub_8BFC(v56, qword_434B0);
          v57 = v29;
          v58 = sub_31190();
          v59 = sub_314D0();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v60 = v119;
            *(v60 + 4) = v57;
            *v61 = v57;
            v62 = v57;
            _os_log_impl(&dword_0, v58, v59, "Cast failed or bad data querying property with objectID %@", v60, 0xCu);
            sub_1E8C0(v61);
          }

          else
          {
          }

          a1 = v123;
          goto LABEL_34;
        }

        v41 = sub_17054(v38, v40);
        v43 = v42;

        v25 = v120;
        if ((v43 & 1) == 0)
        {
          goto LABEL_28;
        }

        v44 = *(*(v121 + 56) + 8 * v41);
        swift_unknownObjectRetain();
        v45 = [v34 createdAt];
        if (!v45)
        {
          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        v46 = v116;
        v47 = v45;
        sub_31160();

        v48 = [v44 recordType];
        (*v109)(v118, v46, v117);
        v112 = v29;
        if (v48 == &dword_0 + 2)
        {
          swift_unknownObjectRetain();

          v63 = sub_53D8();
          if (!v63)
          {
LABEL_41:
            v107 = v44;
            if (qword_42220 != -1)
            {
              swift_once();
            }

            v75 = sub_311B0();
            sub_8BFC(v75, qword_434B0);
            v76 = sub_31190();
            v77 = sub_314D0();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *v78 = v119;
              sub_8C34();
              swift_allocError();
              *v80 = 1;
              v81 = _swift_stdlib_bridgeErrorToNSError();
              *(v78 + 4) = v81;
              *v79 = v81;
              _os_log_impl(&dword_0, v76, v77, "Could not fetch. %@", v78, 0xCu);
              sub_1E8C0(v79);
            }

            sub_8C34();
            swift_allocError();
            *v82 = 1;
            swift_errorRetain();
            v83 = sub_31190();
            v84 = sub_314D0();

            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v126 = v86;
              *v85 = v106;
              swift_getErrorValue();
              v87 = sub_318A0();
              v89 = sub_28BCC(v87, v88, &v126);

              *(v85 + 4) = v89;
              _os_log_impl(&dword_0, v83, v84, "Error while querying properties from Core Data: %s", v85, 0xCu);
              sub_9170(v86);

              v25 = v120;

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            a1 = v123;
            v90 = v118;
            goto LABEL_57;
          }

          v64 = v63;
          v65 = v44;
          v66 = [v34 identifier];
          if (v66)
          {
            v67 = v66;
            v68 = sub_31320();
            v48 = v69;
          }

          else
          {
            v68 = 0;
            v48 = 0;
          }

          v91 = [v34 assetID];
          v108 = v27 + 1;
          if (v91)
          {
            v92 = v91;
            v70 = sub_31320();
            v107 = v93;
          }

          else
          {
            v70 = 0;
            v107 = 0;
          }

          v54 = v68;
          v73 = sub_56D8(v64);

          v74 = 2;
          v72 = v65;
          v71 = v107;
        }

        else if (v48 == &dword_0 + 1)
        {
          swift_unknownObjectRetain();

          v49 = sub_53D8();
          if (!v49)
          {
            goto LABEL_41;
          }

          v50 = v49;
          v51 = v44;
          v52 = [v34 identifier];
          v108 = v27 + 1;
          if (v52)
          {
            v53 = v52;
            v54 = sub_31320();
            v48 = v55;
          }

          else
          {
            v54 = 0;
            v48 = 0;
          }

          v70 = sub_56D8(v50);

          v71 = 0;
          v73 = 0;
          v74 = 1;
          v72 = v51;
        }

        else
        {
          v108 = v27 + 1;
          if (v48)
          {
            (*v110)(v118, v117);
            v126 = v48;
            result = sub_31880();
            __break(1u);
            return result;
          }

          swift_unknownObjectRetain();

          v54 = [v34 count];
          v70 = 0;
          v71 = 0;
          v72 = v44;
          v73 = 0;
          v74 = 0;
        }

        v107 = v73;
        v127[0] = v54;
        v127[1] = v48;
        v127[2] = v70;
        v127[3] = v71;
        v127[4] = v73;
        v128 = v74;
        v94 = v70;
        v95 = v48;
        v96 = v54;
        v90 = v118;
        v97 = v74;
        v113(v72, v127, v118);
        sub_8C88(v96, v95, v94, v71, v107, v97);
        swift_unknownObjectRelease();

        a1 = v123;
        v25 = v120;
        v30 = v108;
LABEL_57:
        v98 = *v110;
        v99 = v117;
        (*v110)(v90, v117);

        swift_unknownObjectRelease();
        v98(v116, v99);
LABEL_34:
        ++v27;
      }

      while (v30 != v122);
    }
  }

  return v115();
}

uint64_t sub_2389C()
{
  v1 = sub_2294(&qword_428F8, &qword_33220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23974()
{
  sub_2294(&qword_428F8, &qword_33220);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_229B4(v1, v2);
}

uint64_t sub_239E4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_23A48()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_23A98()
{
  result = qword_42908;
  if (!qword_42908)
  {
    sub_B440(&qword_42900, qword_33228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42908);
  }

  return result;
}

uint64_t sub_23AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_259F0(a1);
    v5 = sub_17138(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_18D48();
        v10 = v13;
      }

      sub_1B9C4(*(v10 + 56) + 8 * v8, &v15);
      sub_2ED7C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_259F0(&v15);
  }

  else
  {
    sub_1B9C4(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_25A58(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_23BEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23CAC()
{
  v1 = (v0 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23D70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23DD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23FDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id BaseDonor.init(type:)(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v3 = sub_31530();
  __chkstk_darwin(v3);
  v4 = sub_31580();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_31240();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations] = _swiftEmptyDictionarySingleton;
  v16 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue;
  v15[1] = sub_1B8B4();
  sub_31220();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  v20 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42750, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_2294(&qword_42940, &unk_33150);
  sub_24AD8(&unk_42760, &qword_42940, &unk_33150);
  sub_31690();
  v9 = sub_315A0();
  v10 = v17;
  *&v2[v16] = v9;
  v11 = &v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type];
  v12 = v18;
  *v11 = v10;
  v11[1] = v12;
  *&v2[OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations] = _swiftEmptyArrayStorage;
  v13 = type metadata accessor for BaseDonor();
  v19.receiver = v2;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_24508(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_31200();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_31240();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24A6C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DD78;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v15 = a2;
  sub_31230();
  v20 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v14);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_24818()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations;
    v7 = result;
    swift_beginAccess();
    v21 = v7;
    v8 = *(v7 + v6);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = (v14 << 9) | (8 * v17);
      v19 = *(*(v8 + 48) + v18);
      sub_1B968(*(v8 + 56) + v18, v22);
      v23 = v19;
      sub_1B9C4(v22, &v24);
      v16 = v14;
LABEL_16:
      sub_25C1C(&v23, &v25);
      if (!v25)
      {
      }

      sub_1B9C4(&v26, &v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong propertyDidChange:a2 propertyConfiguration:{a3, v21}];
        swift_unknownObjectRelease();
      }

      result = sub_25C8C(&v23);
      v13 = v16;
    }

    if (v12 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v12;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v23 = 0;
        v24 = 0;
        goto LABEL_16;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A24()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_24A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B440(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id BaseDonor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDonor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BaseDonor.add(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31200();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_31240();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a1;
  aBlock[4] = sub_250A0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DDC8;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_31230();
  v17 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_24FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectWeakInit();
    v6[8] = 0;
    swift_beginAccess();
    sub_23AFC(v6, a2);
    swift_endAccess();
  }
}

uint64_t sub_25060()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t BaseDonor.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31200();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_31240();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_accessQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_25490;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3DE18;
  v12 = _Block_copy(aBlock);

  sub_31230();
  v17 = _swiftEmptyArrayStorage;
  sub_24A90(&qword_42660, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_24AD8(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_253C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_25498(a2, v5);
    sub_259F0(v5);
    swift_endAccess();
  }
}

uint64_t sub_25458()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_25498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_17138(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18D48();
      v10 = v11;
    }

    sub_1B9C4(*(v10 + 56) + 8 * v8, a2);
    result = sub_2ED7C(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

void sub_25558(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t BaseDonor.isObserved(by:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_observations;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    if (*(*(v6 + 48) + ((v11 << 9) | (8 * v12))) == a1)
    {
      return 1;
    }
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
      return 0;
    }

    v9 = *(v6 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_256B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_259B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_259F0(uint64_t a1)
{
  v2 = sub_2294(&qword_42970, &qword_332A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_17138(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_18D48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_180CC(v14, a3 & 1);
    v9 = sub_17138(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_31890();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_25BE4(a1, v20);
  }

  else
  {

    return sub_25B78(v9, a2, a1, v19);
  }
}

uint64_t sub_25B78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B9C4(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_25C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42978, &qword_332A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25CCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_25CEC, 0, 0);
}

uint64_t sub_25CEC()
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v1 = sub_311B0();
  sub_8BFC(v1, qword_434B0);
  v2 = sub_31190();
  v3 = sub_314B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  v8 = v0[1];

  v5 = swift_task_alloc();
  v0[2].i64[0] = v5;
  v5[1] = vextq_s8(v8, v8, 8uLL);
  v6 = swift_task_alloc();
  v0[2].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_25EA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000020, 0x80000000000350C0, sub_26E1C, v5, &type metadata for () + 8);
}

uint64_t sub_25EA0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25FE0;
  }

  else
  {

    v2 = sub_25FBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_25FE0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 48) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void LocalStorage.fetchAllConfigurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v6 + 4);
  sub_1AE34(&v8);
  os_unfair_lock_unlock(v6 + 4);
  v7 = v8;
  sub_2C458(v8, sub_1B16C, v5);
}

void LocalStorage.fetchConfiguration(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v9[5] = a3;
  v9[6] = a4;
  v10 = *(v4 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v10 + 4);
  sub_1CB04(&v12);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v12;
  sub_2C458(v12, sub_20AC8, v9);
}

void sub_26220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2294(&unk_42980, &qword_332B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-v8];
  (*(v7 + 16))(&v14[-v8], a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v15 = sub_1CAE4;
  v16 = a2;

  os_unfair_lock_lock(v12 + 4);
  sub_1CB04(&v17);
  os_unfair_lock_unlock(v12 + 4);
  v13 = v17;
  sub_2C458(v17, sub_26EFC, v11);
}

uint64_t sub_263D0(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v3 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v18;
  v5 = sub_D7BC(a1, v18);

  if (v5)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v7 = sub_311B0();
    sub_8BFC(v7, qword_434B0);
    swift_errorRetain();
    v8 = sub_31190();
    v9 = sub_314D0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_318A0();
      v14 = sub_28BCC(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "Error while batch-updating configurations in Core data: %s", v10, 0xCu);
      sub_9170(v11);
    }

    v18 = v5;
    sub_2294(&unk_42980, &qword_332B8);
    return sub_31430();
  }

  else
  {
    __chkstk_darwin(v6);
    os_unfair_lock_lock(v3 + 4);
    sub_1CB04(&v18);
    os_unfair_lock_unlock(v3 + 4);
    v16 = v18;
    v17 = [v18 hasChanges];

    if (v17)
    {
      sub_2294(&qword_42900, qword_33228);
      sub_23A98();
      sub_311D0();
    }

    sub_2294(&unk_42980, &qword_332B8);
    return sub_31440();
  }
}

uint64_t sub_26698(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v6 = sub_311B0();
    sub_8BFC(v6, qword_434B0);
    swift_errorRetain();
    v7 = sub_31190();
    v8 = sub_314D0();
    sub_1BB64(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_318A0();
      v13 = sub_28BCC(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Error while inserting configuration object to Core Data: %s", v9, 0xCu);
      sub_9170(v10);
    }

    v14 = a1;
    v15 = 1;
  }

  else
  {
    sub_2294(&qword_42900, qword_33228);
    sub_23A98();
    sub_311D0();
    v14 = 0;
    v15 = 0;
  }

  return a4(v14, v15);
}

uint64_t sub_26874(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1CB04(&v8);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v8;

  sub_D050(v6, a2, a3);
}

uint64_t sub_26918(unint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_30:
      swift_once();
    }

    v5 = sub_311B0();
    sub_8BFC(v5, qword_434B0);
    swift_errorRetain();
    v6 = sub_31190();
    v7 = sub_314D0();
    sub_21DA0(v4, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_318A0();
      v12 = sub_28BCC(v10, v11, &v25);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "Error while fetching all configurations from Core data: %s", v8, 0xCu);
      sub_9170(v9);
    }

    return a3(v4, 1);
  }

  else
  {
    if (a1 >> 62)
    {
      v14 = sub_317C0();
    }

    else
    {
      v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v15 = _swiftEmptyArrayStorage;
    if (v14)
    {
      v25 = _swiftEmptyArrayStorage;
      result = sub_31760();
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_31700();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        sub_C098();

        sub_31740();
        sub_31770();
        sub_31780();
        sub_31750();
      }

      while (v14 != v16);
      v4 = v25;
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v19 = 0;
    v25 = _swiftEmptyArrayStorage;
    v20 = *(v4 + 16);
    while (v20 != v19)
    {
      if (v19 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v21 = *(v4 + 8 * v19++ + 32);
      if (v21)
      {
        v22 = v21;
        sub_313C0();
        if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_31400();
        }

        sub_31410();
        v15 = v25;
      }
    }

    if (v15 >> 62)
    {
      sub_2294(&qword_426E0, &qword_330C8);
      v24 = sub_317B0();
      swift_bridgeObjectRelease_n();
      v23 = v24;
    }

    else
    {
      sub_31860();

      v23 = v15;
    }

    a3(v23, 0);
  }
}

uint64_t sub_26CD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v8 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v8 + 4);
  sub_1CB04(&v11);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v11;

  sub_CA08(a1, a2, v9, a4);
}

uint64_t sub_26D94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_26DD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_26E24()
{
  v1 = sub_2294(&unk_42980, &qword_332B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EFC()
{
  sub_2294(&unk_42980, &qword_332B8);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_263D0(v1, v2);
}

Swift::Int CollectorError.hashValue.getter()
{
  sub_31900();
  sub_31910(0);
  return sub_31920();
}

Swift::Int sub_26FD8(uint64_t a1)
{
  sub_31900();
  sub_31910(0);
  return sub_31920();
}

uint64_t sub_27018()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement();
  }

  else
  {
    swift_beginAccess();
    v3 = *(v0 + 16);

    return v3;
  }
}

uint64_t sub_270AC(uint64_t a1, uint64_t a2)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(a1, a2);
  }

  else
  {
    swift_beginAccess();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t (*sub_27158(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_27018();
  a1[1] = v3;
  return sub_271A0;
}

uint64_t sub_271A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_270AC(*a1, v2);
  }

  sub_270AC(v3, v2);
}

uint64_t sub_27214(void *a1)
{
  v2 = v1;
  if (qword_42220 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = sub_311B0();
  sub_8BFC(v4, qword_434B0);
  swift_unknownObjectRetain();
  v5 = sub_31190();
  v6 = sub_314C0();
  swift_unknownObjectRelease();
  p_type = &stru_40FF0.type;
  v29 = v2;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315138;
    v10 = [a1 type];
    v11 = sub_31320();
    v13 = v12;

    v14 = sub_28BCC(v11, v13, v33);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "Collector registering new donor: %s", v8, 0xCu);
    sub_9170(v9);

    v2 = v29;
  }

  swift_beginAccess();
  v15 = *(v2 + 32);
  v31 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v34 = sub_317C0();
  }

  else
  {
    v34 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  v32 = v15 & 0xC000000000000001;

  v16 = 0;
  v30 = v15;
  while (v34 != v16)
  {
    if (v32)
    {
      v18 = sub_31700();
      if (__OFADD__(v16, 1))
      {
LABEL_17:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v16 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v18 = *(v15 + 8 * v16 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v16, 1))
      {
        goto LABEL_17;
      }
    }

    v19 = [v18 p_type[137]];
    v20 = sub_31320();
    v22 = v21;

    v23 = p_type;
    v24 = a1;
    v25 = [a1 p_type[137]];
    v2 = sub_31320();
    v27 = v26;

    if (v20 == v2 && v22 == v27)
    {

      swift_unknownObjectRelease();

LABEL_21:

      sub_1C5A8();
      swift_allocError();
      return swift_willThrow();
    }

    v17 = sub_31850();
    swift_unknownObjectRelease();

    ++v16;
    a1 = v24;
    p_type = v23;
    v15 = v30;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_313C0();
  if (*(&dword_10 + (*(v29 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v29 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_31400();
  }

  sub_31410();
  return swift_endAccess();
}

uint64_t sub_27604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  swift_beginAccess();

  v12 = sub_E3E0(v11);
  v13 = sub_31480();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_10C5C(0, 0, v10, &unk_32EE0, v14);
}

uint64_t sub_27764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_2778C, 0, 0);
}

uint64_t sub_2778C()
{
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v1 = sub_311B0();
  sub_8BFC(v1, qword_434B0);
  v2 = sub_31190();
  v3 = sub_314C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Start collecting data", v4, 2u);
  }

  v5 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = *(v0 + 40);

  v6 = sub_2294(&qword_42AB8, &qword_333F0);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v10;
  *(v7 + 32) = v5;
  *(v7 + 40) = v11;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_2795C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v6, &type metadata for () + 8, 0, 0, &unk_33400, v7, v6);
}

uint64_t sub_2795C()
{

  return _swift_task_switch(sub_27A74, 0, 0);
}

uint64_t sub_27A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  sub_2294(&qword_42590, &unk_32ED0);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v8 = sub_2294(&qword_42AC0, &qword_33408);
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_27BA0, 0, 0);
}

uint64_t sub_27BA0()
{
  v54 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_317C0())
  {
    v3 = 0;
    v44 = v0 + 9;
    v42 = v1 & 0xC000000000000001;
    v39 = v0[18] + 32;
    v40 = v1 & 0xFFFFFFFFFFFFFF8;
    v41 = i;
    while (v42)
    {
      v4 = sub_31700();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_34;
      }

LABEL_11:
      v1 = [v4 eventConfigurations];
      type metadata accessor for BasePropertyConfiguration();
      v7 = sub_313E0();

      v43 = v6;
      if (v7 >> 62)
      {
        v8 = sub_317C0();
        if (!v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (!v8)
        {
          goto LABEL_4;
        }
      }

      if (v8 < 1)
      {
        goto LABEL_35;
      }

      v9 = 0;
      v45 = v7 & 0xC000000000000001;
      v46 = *v0[17];
      v47 = v8;
      v48 = v7;
      do
      {
        if (v45)
        {
          v11 = sub_31700();
        }

        else
        {
          v11 = *(v7 + 8 * v9 + 32);
        }

        v50 = v11;
        if (qword_42220 != -1)
        {
          swift_once();
        }

        v12 = sub_311B0();
        sub_8BFC(v12, qword_434B0);
        swift_unknownObjectRetain();
        v13 = sub_31190();
        v14 = sub_314C0();
        swift_unknownObjectRelease();
        v51 = v9;
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v53 = v16;
          *v15 = 136315138;
          v17 = [v4 type];
          v18 = sub_31320();
          v19 = v4;
          v21 = v20;

          v22 = sub_28BCC(v18, v21, &v53);

          *(v15 + 4) = v22;
          _os_log_impl(&dword_0, v13, v14, "Getting data from donor: %s", v15, 0xCu);
          sub_9170(v16);
        }

        else
        {

          v19 = v4;
        }

        v24 = v52[23];
        v23 = v52[24];
        v25 = v52[19];
        v49 = v52[20];
        v26 = sub_31480();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v23, 1, 1, v26);
        v28 = swift_allocObject();
        *(v28 + 16) = 0u;
        *(v28 + 32) = v19;
        v4 = v19;
        *(v28 + 40) = v50;
        *(v28 + 48) = v25;
        *(v28 + 56) = v49;
        sub_29830(v23, v24);
        LODWORD(v24) = (*(v27 + 48))(v24, 1, v26);
        swift_unknownObjectRetain();
        v29 = v50;

        v30 = v52[23];
        if (v24 == 1)
        {
          sub_298A0(v52[23]);
        }

        else
        {
          sub_31470();
          (*(v27 + 8))(v30, v26);
        }

        v0 = v52;
        if (*(v28 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v31 = sub_31420();
          v33 = v32;
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0;
          v33 = 0;
        }

        v34 = swift_allocObject();
        *(v34 + 16) = &unk_33420;
        *(v34 + 24) = v28;

        sub_2294(&qword_42AB8, &qword_333F0);
        v35 = (v33 | v31);
        if (v33 | v31)
        {
          v35 = v44;
          *v44 = 0;
          v44[1] = 0;
          v52[11] = v31;
          v52[12] = v33;
        }

        v9 = v51 + 1;
        v10 = v52[24];
        v52[13] = 1;
        v52[14] = v35;
        v52[15] = v46;
        v1 = swift_task_create();

        sub_298A0(v10);
        v7 = v48;
      }

      while (v47 != v51 + 1);
LABEL_4:

      swift_unknownObjectRelease();
      v3 = v43;
      if (v43 == v41)
      {
        goto LABEL_38;
      }
    }

    if (v3 >= *(v40 + 16))
    {
      goto LABEL_36;
    }

    v4 = *(v39 + 8 * v3);
    swift_unknownObjectRetain();
    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:
  sub_2294(&qword_42AB8, &qword_333F0);
  sub_31450();
  v0[28] = _swiftEmptyDictionarySingleton;
  v36 = swift_task_alloc();
  v0[29] = v36;
  *v36 = v0;
  v36[1] = sub_281E0;
  v37 = v0[25];

  return TaskGroup.Iterator.next(isolation:)(v0 + 2, 0, 0, v37);
}

uint64_t sub_281E0()
{

  return _swift_task_switch(sub_282DC, 0, 0);
}

uint64_t sub_282DC()
{
  v38 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    if (v3 == 255)
    {

      goto LABEL_21;
    }

    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 40);
    v34 = *(v0 + 48);
    v35 = *(v0 + 56);
    v7 = *(v0 + 224);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 128) = v7;
    v9 = sub_1717C(v2);
    v13 = *(v7 + 16);
    v14 = (v10 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(*(v0 + 224) + 24) < v16)
      {
        sub_1834C(v16, isUniquelyReferenced_nonNull_native);
        v9 = sub_1717C(v2);
        if ((v1 & 1) != (v10 & 1))
        {
          type metadata accessor for BasePropertyConfiguration();

          return sub_31890();
        }

LABEL_14:
        v21 = *(v0 + 128);
        if (v1)
        {
LABEL_15:
          v22 = v21[7] + 48 * v9;
          v23 = *v22;
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
          v27 = *(v22 + 32);
          *v22 = v5;
          *(v22 + 8) = v4;
          *(v22 + 16) = v6;
          *(v22 + 24) = v34;
          *(v22 + 32) = v35;
          v28 = *(v22 + 40);
          *(v22 + 40) = v3;
          sub_8C88(v23, v24, v25, v26, v27, v28);

LABEL_20:
          *(v0 + 224) = v21;
LABEL_21:
          v33 = swift_task_alloc();
          *(v0 + 232) = v33;
          *v33 = v0;
          v33[1] = sub_281E0;
          v12 = *(v0 + 200);
          v9 = v0 + 16;
          v10 = 0;
          v11 = 0;

          return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
        }

LABEL_18:
        v21[(v9 >> 6) + 8] |= 1 << v9;
        *(v21[6] + 8 * v9) = v2;
        v30 = v21[7] + 48 * v9;
        *v30 = v5;
        *(v30 + 8) = v4;
        *(v30 + 16) = v6;
        *(v30 + 24) = v34;
        *(v30 + 32) = v35;
        *(v30 + 40) = v3;
        v31 = v21[2];
        v15 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v15)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v9, v10, v11, v12);
        }

        v21[2] = v32;
        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v29 = v9;
    sub_18EC4();
    v9 = v29;
    v21 = *(v0 + 128);
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 168);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v36 = v18;
  v37 = 0;
  v19(&v36);
  sub_1C59C(v36, v37);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_285D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  return _swift_task_switch(sub_28600, 0, 0);
}

uint64_t sub_28600()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = sub_2294(&qword_42AC8, &qword_33430);
  *v4 = v0;
  v4[1] = sub_28710;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x8000000000035130, sub_299F8, v3, v5);
}

uint64_t sub_28710()
{

  return _swift_task_switch(sub_28828, 0, 0);
}

uint64_t sub_28828()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *v2 = v1;
  *(v2 + 8) = v5;
  *(v2 + 24) = v6;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v9 = *(v0 + 8);
  v7 = v1;

  return v9();
}

void sub_288B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSString a5)
{
  v9 = sub_2294(&unk_42AD0, &qword_33438);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - v11;
  if (a5)
  {
    a5 = sub_31300();
  }

  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_29A98;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11248;
  aBlock[3] = &unk_3E098;
  v15 = _Block_copy(aBlock);

  [a2 donateWithConfiguration:a3 context:a5 donationCompleteBlock:v15];
  _Block_release(v15);
}

uint64_t sub_28A98(uint64_t a1)
{
  if (a1)
  {
    sub_1BBC8(*(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 8), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 16), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 24), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 32), *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue + 40));
  }

  sub_2294(&unk_42AD0, &qword_33438);
  return sub_31440();
}

uint64_t Collector.deinit()
{

  return v0;
}

uint64_t Collector.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_28BCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_28C98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_B61C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_9170(v11);
  return v7;
}

unint64_t sub_28C98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_28DA4(a5, a6);
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
    result = sub_31720();
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

void *sub_28DA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_28DF0(a1, a2);
  sub_28F20(&off_3CD70);
  return v3;
}

void *sub_28DF0(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_2900C(v5, 0);
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

  result = sub_31720();
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
        v10 = sub_313A0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2900C(v10, 0);
        result = sub_316C0();
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

uint64_t sub_28F20(uint64_t result)
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

  result = sub_29080(result, v11, 1, v3);
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

void *sub_2900C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_2294(&qword_42AB0, &qword_333E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29080(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_42AB0, &qword_333E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_29174()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_291C8()
{
  result = qword_429C0;
  if (!qword_429C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_429C0);
  }

  return result;
}

uint64_t sub_2921C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_293E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1CAC8;

  return sub_27A88(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_294BC(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_295B0;

  return v5(v2 + 16);
}

uint64_t sub_295B0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v6;
  *(v2 + 24) = v7;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_2970C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2975C(uint64_t a1)
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
  v10[1] = sub_1CAC8;

  return sub_285D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29830(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_298A0(uint64_t a1)
{
  v2 = sub_2294(&qword_42590, &unk_32ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29908()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29940(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B06C;

  return sub_294BC(a1, v4);
}

uint64_t sub_29A04()
{
  v1 = sub_2294(&unk_42AD0, &qword_33438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_29A98(uint64_t a1)
{
  sub_2294(&unk_42AD0, &qword_33438);

  return sub_28A98(a1);
}

uint64_t sub_29B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29B2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1AE34(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

id sub_29B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29C08();
  *a1 = result;
  return result;
}

id sub_29BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29C08();
  *a1 = result;
  return result;
}

id sub_29C08()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context);
  }

  else
  {
    v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    v5 = sub_29D90();
    v6 = [v5 persistentStoreCoordinator];

    [v4 setPersistentStoreCoordinator:v6];
    [v4 setMergePolicy:NSErrorMergePolicy];
    [v4 setAutomaticallyMergesChangesFromParent:1];
    v7 = sub_31300();
    [v4 setName:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_29D30()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model);
  }

  else
  {
    v4 = sub_2F9BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D90()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer;
  v2 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  }

  else
  {
    v4 = sub_2FC68();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v24 = a3;
  v11 = sub_310D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 container];
  if (v15)
  {
    v23 = v15;
    v16 = a6;
    v17 = [v15 newBackgroundContext];
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v11);
    v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v19 = swift_allocObject();
    v20 = v24;
    *(v19 + 2) = v17;
    *(v19 + 3) = v20;
    v21 = v25;
    *(v19 + 4) = a4;
    *(v19 + 5) = v21;
    *(v19 + 6) = v16;
    (*(v12 + 32))(&v19[v18], v14, v11);
    v22 = v17;

    sub_2AAD0(v22, sub_30978, v19);
  }
}

void sub_29FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a6;
  v85 = a2;
  v77 = sub_310D0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_31300();
  v14 = [v12 initWithEntityName:v13];

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v15 = sub_314A0();
  [v14 setPredicate:v15];

  sub_B304(0, &qword_42CD8, NSManagedObject_ptr);
  v79 = v14;
  v78 = a1;
  v16 = sub_31620();
  if (v6)
  {
LABEL_2:
    a3 = v77;
    v17 = v76;
    v14 = v75;
    if (qword_42220 == -1)
    {
LABEL_3:
      v18 = sub_311B0();
      sub_8BFC(v18, qword_434B0);
      (*(v17 + 16))(v14, v74, a3);
      swift_errorRetain();
      v19 = sub_31190();
      v20 = v14;
      v21 = sub_314D0();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v90 = v85;
        *v22 = 136446466;
        v23 = sub_310C0();
        v84 = v7;
        v24 = v23;
        v26 = v25;
        (*(v17 + 8))(v20, a3);
        v27 = sub_28BCC(v24, v26, &v90);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2080;
        swift_getErrorValue();
        v28 = sub_318A0();
        v30 = sub_28BCC(v28, v29, &v90);

        *(v22 + 14) = v30;
        _os_log_impl(&dword_0, v19, v21, "Error migrating %{public}s: %s", v22, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v17 + 8))(v20, a3);
      }

      v59 = v78;
      goto LABEL_56;
    }

LABEL_44:
    swift_once();
    goto LABEL_3;
  }

  v31 = v16;
  v73 = 0;
  v71 = v16 >> 62;
  if (v16 >> 62)
  {
    v32 = sub_317C0();
    if (v32)
    {
LABEL_7:
      v17 = 0;
      v72 = 0;
      v83 = v32;
      v84 = v31 & 0xC000000000000001;
      v82 = v31 & 0xFFFFFFFFFFFFFF8;
      v80 = v31;
      v70 = a4;
      v81 = a3;
      while (1)
      {
        if (v84)
        {
          v33 = sub_31700();
        }

        else
        {
          if (v17 >= *(v82 + 16))
          {
            goto LABEL_43;
          }

          v33 = *(v31 + 8 * v17 + 32);
        }

        v14 = v33;
        v7 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v34 = sub_31300();
        v35 = [v14 valueForKey:v34];

        if (v35)
        {
          sub_31680();
          swift_unknownObjectRelease();
        }

        else
        {
          v88 = 0u;
          v89 = 0u;
        }

        v90 = v88;
        v91 = v89;
        if (*(&v89 + 1))
        {
          if (swift_dynamicCast())
          {
            v36 = v86;
            v37 = v87;
            v38 = objc_opt_self();
            isa = sub_310E0().super.isa;
            *&v90 = 0;
            v40 = [v38 JSONObjectWithData:isa options:0 error:&v90];

            if (!v40)
            {
              v60 = v90;

              v7 = sub_31070();

              swift_willThrow();
              sub_B558(v36, v37);

              goto LABEL_2;
            }

            v41 = v90;
            sub_31680();
            swift_unknownObjectRelease();
            sub_2294(&qword_424E8, &qword_32CF0);
            if (swift_dynamicCast())
            {
              v42 = v88;
              if (*(v88 + 16) && (v43 = sub_17054(0x44497465737361, 0xE700000000000000), (v44 & 1) != 0) && (sub_B61C(*(v42 + 56) + 32 * v43, &v90), (swift_dynamicCast() & 1) != 0))
              {
                v69 = sub_31300();

                v68 = sub_31300();
                v45 = v69;
                [v14 setValue:v69 forKey:v68];

                v46 = sub_17054(0x44497465737361, 0xE700000000000000);
                if (v47)
                {
                  v48 = v46;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v88 = v42;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_19088();
                    v42 = v88;
                  }

                  sub_B6C8((*(v42 + 56) + 32 * v48), &v90);
                  sub_2EF0C(v48, v42);
                }

                else
                {
                  v90 = 0u;
                  v91 = 0u;
                }

                sub_B5AC(&v90, &qword_42260, &qword_32880);
                v50 = sub_312C0().super.isa;

                *&v90 = 0;
                v51 = [v38 dataWithJSONObject:v50 options:1 error:&v90];

                v52 = v90;
                if (v51)
                {
                  v69 = sub_310F0();
                  v54 = v53;

                  v55 = sub_310E0().super.isa;
                  v56 = sub_31300();
                  [v14 setValue:v55 forKey:v56];
                  sub_B558(v36, v37);
                  sub_B558(v69, v54);

                  if (__OFADD__(v72++, 1))
                  {
                    __break(1u);
                  }
                }

                else
                {
                  v58 = v52;
                  sub_31070();

                  swift_willThrow();
                  sub_B558(v36, v37);

                  v73 = 0;
                }
              }

              else
              {

                sub_B558(v36, v37);
              }
            }

            else
            {
              sub_B558(v36, v37);
            }

            v31 = v80;
            a3 = v81;
          }

          else
          {
          }
        }

        else
        {

          sub_B5AC(&v90, &qword_42260, &qword_32880);
        }

        ++v17;
        if (v7 == v83)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {
    v32 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v32)
    {
      goto LABEL_7;
    }
  }

  v72 = 0;
LABEL_47:
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v61 = sub_311B0();
  sub_8BFC(v61, qword_434B0);

  v62 = sub_31190();
  v63 = sub_314D0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134218240;
    *(v64 + 4) = v72;
    *(v64 + 12) = 2048;
    if (v71)
    {
      v65 = sub_317C0();
    }

    else
    {
      v65 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    }

    *(v64 + 14) = v65;

    _os_log_impl(&dword_0, v62, v63, "Completed migrating assetID of %ld of %ld records", v64, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v59 = v78;
LABEL_56:
  if ([v59 hasChanges])
  {
    *&v90 = 0;
    if ([v59 save:&v90])
    {
      v66 = v90;
    }

    else
    {
      v67 = v90;
      sub_31070();

      swift_willThrow();
    }
  }
}

id sub_2AAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2E528();
  v6 = v5;
  result = sub_31600();
  if (v3)
  {
    if (v6)
    {
      return result;
    }

    result = [objc_opt_self() backgroundTaskDelegate];
    if (!result)
    {
      return result;
    }

LABEL_7:
    [result ec_endBackgroundTask:v4];
    return swift_unknownObjectRelease();
  }

  if ((v6 & 1) == 0)
  {
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

Swift::Int sub_2ABD8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, void *a5, void *a6)
{
  v65 = a5;
  v10 = sub_31520();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_310D0();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v62 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v22 = v53 - v21;
  if (!a2)
  {
    return sub_315D0();
  }

  v56 = v11;
  v57 = v10;
  v59 = v20;
  v60 = v19;
  v61 = a6;
  swift_errorRetain();
  if (qword_42220 != -1)
  {
    swift_once();
  }

  v23 = sub_311B0();
  v24 = sub_8BFC(v23, qword_434B0);
  v25 = *(v15 + 16);
  v67 = a3;
  v58 = v15 + 16;
  v66 = v25;
  v25(v22, a3, v14);
  swift_errorRetain();
  v55 = v24;
  v26 = sub_31190();
  v27 = sub_314D0();

  v28 = os_log_type_enabled(v26, v27);
  v63 = v15;
  v64 = a4;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v53[1] = a2;
    aBlock[0] = v30;
    *v29 = 136446466;
    v31 = sub_310C0();
    v33 = v32;
    v54 = *(v15 + 8);
    v54(v22, v14);
    v34 = sub_28BCC(v31, v33, aBlock);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    swift_getErrorValue();
    v35 = sub_318A0();
    v37 = sub_28BCC(v35, v36, aBlock);
    a4 = v64;

    *(v29 + 14) = v37;
    _os_log_impl(&dword_0, v26, v27, "Error adding LocalStorage persistent store at %{public}s: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v54 = *(v15 + 8);
    v54(v22, v14);
  }

  v39 = [a4 persistentStoreCoordinator];
  v40 = v65;
  v41 = [v65 type];
  sub_31320();

  sub_31510();
  v42 = [v40 options];
  sub_B304(0, &qword_42488, NSObject_ptr);
  v43 = sub_312D0();

  sub_5C60(v43);

  v44 = v67;
  sub_31640();
  (*(v56 + 8))(v13, v57);

  v45 = v63;
  v46 = v60;
  v66(v60, v44, v14);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v48 = (v59 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v45 + 32))(v49 + v47, v46, v14);
  v50 = v61;
  *(v49 + v48) = v61;
  aBlock[4] = sub_307F8;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B6B8;
  aBlock[3] = &unk_3E188;
  v51 = _Block_copy(aBlock);
  v52 = v50;

  [v64 loadPersistentStoresWithCompletionHandler:v51];
  _Block_release(v51);
}

Swift::Int sub_2B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_310D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v11 = sub_311B0();
    sub_8BFC(v11, qword_434B0);
    (*(v8 + 16))(v10, a3, v7);
    swift_errorRetain();
    v12 = sub_31190();
    v13 = sub_314D0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = a4;
      v15 = v14;
      v25 = swift_slowAlloc();
      *v15 = 136446466;
      v16 = sub_310C0();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_28BCC(v16, v18, &v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_318A0();
      v22 = sub_28BCC(v20, v21, &v25);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_0, v12, v13, "Still unable to load LocalStorage persistent store at %{public}s: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return sub_315D0();
}

void sub_2B6B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_2B744(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_2294(&qword_42CF0, &qword_334D0);
  __chkstk_darwin(v3 - 8);
  v35 = v28 - v4;
  v5 = sub_31570();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v32 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2294(&qword_42CF8, &qword_334D8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  __chkstk_darwin(v7);
  v34 = v28 - v9;
  v10 = sub_31580();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_31530();
  __chkstk_darwin(v12);
  v13 = sub_31240();
  __chkstk_darwin(v13 - 8);
  v14 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  sub_2294(&qword_42D00, &qword_334E0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v2 + v14) = v15;
  v16 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher;
  v33 = sub_2294(&qword_42900, qword_33228);
  swift_allocObject();
  *(v2 + v16) = sub_311C0();
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription) = 0;
  v28[0] = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveQueue;
  v28[1] = sub_B304(0, &qword_42930, OS_dispatch_queue_ptr);
  sub_31230();
  v42 = _swiftEmptyArrayStorage;
  sub_30F08();
  sub_2294(&qword_42940, &unk_33150);
  sub_B678(&unk_42760, &qword_42940, &unk_33150, &protocol conformance descriptor for [A]);
  sub_31690();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(v2 + v28[0]) = sub_315A0();
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_context) = 0;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_model) = 0;
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer) = 0;
  v17 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL;
  v31 = sub_310D0();
  v18 = *(v31 - 8);
  (*(v18 + 16))(v2 + v17, v40, v31);
  sub_2C5D0();
  v42 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSignalPublisher);

  v19 = v32;
  sub_31560();
  v41 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveQueue);
  v20 = v41;
  v21 = sub_31550();
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  sub_B678(&qword_42D08, &qword_42900, qword_33228, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_30F60();
  v23 = v20;
  v24 = v34;
  sub_311E0();
  sub_B5AC(v22, &qword_42CF0, &qword_334D0);

  (*(v36 + 8))(v19, v37);

  swift_allocObject();
  swift_weakInit();
  sub_B678(&qword_42D18, &qword_42CF8, &qword_334D8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v25 = v38;
  v26 = sub_311F0();

  (*(v18 + 8))(v40, v31);
  (*(v39 + 8))(v24, v25);
  *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_saveSubscription) = v26;

  return v2;
}

void sub_2BDE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
    __chkstk_darwin(Strong);
    os_unfair_lock_lock(v3 + 4);
    sub_1CB04(&v11);
    os_unfair_lock_unlock(v3 + 4);
    v4 = v11;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_2C458(v6, sub_31008, v5);
  }

  else
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v7 = sub_311B0();
    sub_8BFC(v7, qword_434B0);
    v8 = sub_31190();
    v9 = sub_314B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "No context available", v10, 2u);
    }
  }
}

void sub_2BFB8(void *a1)
{
  v26 = 0;
  if ([a1 save:&v26])
  {

    _objc_retain_x1();
  }

  else
  {
    v1 = v26;
    v2 = sub_31070();

    swift_willThrow();
    v26 = v2;
    swift_errorRetain();
    sub_2294(&unk_42780, &qword_32CC0);
    sub_B304(0, &qword_424A8, NSError_ptr);
    if (swift_dynamicCast())
    {

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v3 = sub_311B0();
      sub_8BFC(v3, qword_434B0);
      v4 = v24;
      v5 = sub_31190();
      v6 = sub_314D0();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v25 = v9;
        *v7 = 138412546;
        *(v7 + 4) = v4;
        *v8 = v4;
        *(v7 + 12) = 2080;
        v23 = v4;
        v10 = [v23 userInfo];
        sub_312D0();

        v11 = sub_312E0();
        v13 = v12;

        v14 = sub_28BCC(v11, v13, &v25);

        *(v7 + 14) = v14;
        _os_log_impl(&dword_0, v5, v6, "Could not save. %@, %s", v7, 0x16u);
        sub_B5AC(v8, &qword_42790, &unk_334A0);

        sub_9170(v9);
      }

      else
      {
      }
    }

    else
    {

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v15 = sub_311B0();
      sub_8BFC(v15, qword_434B0);
      swift_errorRetain();
      v16 = sub_31190();
      v17 = sub_314D0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_318A0();
        v22 = sub_28BCC(v20, v21, &v26);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_0, v16, v17, "Could not save. %s", v18, 0xCu);
        sub_9170(v19);

        return;
      }
    }
  }
}

uint64_t sub_2C458(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = sub_2E528();
  v13 = v6 & 1;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = &v12;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_30ED4;
  *(v8 + 24) = v7;
  v11[4] = sub_30EE0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_2E888;
  v11[3] = &unk_3E368;
  v9 = _Block_copy(v11);

  [a1 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_2C5D0()
{
  v0 = [objc_opt_self() defaultManager];
  sub_31080(OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL);
  v2 = v1;
  v13 = 0;
  v3 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v13];

  v4 = v13;
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v13;
    sub_31070();

    swift_willThrow();
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v7 = sub_311B0();
    sub_8BFC(v7, qword_434B0);
    swift_errorRetain();
    v8 = sub_31190();
    v9 = sub_314B0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Failed to create directory error: %@", v10, 0xCu);
      sub_B5AC(v11, &qword_42790, &unk_334A0);
    }

    else
    {
    }
  }
}

void sub_2C838(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v5 + 4);
  sub_1CB04(&v7);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v7;
  sub_2C458(v7, a1, a2);
}

void sub_2C8CC(uint64_t a1, void (*a2)(void), uint64_t a3, os_unfair_lock_s *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_8C34();
    swift_allocError();
    *v29 = 1;
    a2();
LABEL_14:

    return;
  }

  v9 = Strong;
  v36 = type metadata accessor for CDCloudSyncVersions();
  sub_2294(&qword_42CE8, &qword_334C8);
  sub_31340();
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_31300();
  v12 = [v10 initWithEntityName:v11];

  [v12 setReturnsObjectsAsFaults:0];
  [v12 setFetchLimit:1];
  sub_2294(&qword_42440, &unk_32AB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_32E20;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;

  v14 = sub_31300();
  isa = sub_313D0().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v12 setPredicate:v16];
  v35 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v17 = *(v9 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 4);
  sub_1CB04(&v36);
  os_unfair_lock_unlock(v17 + 4);
  v19 = v36;
  v30 = sub_31620();

  v31 = v30;
  if (v30 >> 62)
  {
    v31 = v30;
    if (sub_317C0())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:

    v20 = sub_31300();

    v22 = *(v9 + v35);
    __chkstk_darwin(v21);
    os_unfair_lock_lock(v22 + 4);
    sub_1CB04(&v36);
    v23 = objc_opt_self();
    os_unfair_lock_unlock(v22 + 4);
    v24 = v36;
    v25 = [v23 insertNewObjectForEntityForName:v20 inManagedObjectContext:v36];

    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = sub_31300();
      [v27 setDataType:v28];

LABEL_12:
      v33 = v27;
      (a2)(v27, 0);

      return;
    }

    sub_8C34();
    swift_allocError();
    *v34 = 1;
    a2();

    goto LABEL_14;
  }

LABEL_8:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = sub_31700();
    goto LABEL_11;
  }

  if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
  {
    v32 = *(v31 + 32);
LABEL_11:
    v27 = v32;

    goto LABEL_12;
  }

  __break(1u);
  os_unfair_lock_unlock(a4 + 4);
  __break(1u);
}

uint64_t sub_2CF28()
{
  v1 = *(v0 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1CB04(aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = aBlock[0];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();

  *(v4 + 16) = sub_2E528();
  *(v4 + 24) = v5 & 1;
  v6 = swift_allocObject();
  v6[2] = sub_30CE0;
  v6[3] = v3;
  v6[4] = v4;
  aBlock[4] = sub_30D28;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3E2A0;
  v7 = _Block_copy(aBlock);

  [v2 performBlock:v7];
  _Block_release(v7);
}

void sub_2D0D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v47 = type metadata accessor for CDCloudSyncVersions();
  sub_2294(&qword_42CE8, &qword_334C8);
  sub_31340();
  v4 = v3;
  v5 = objc_allocWithZone(NSFetchRequest);
  v42[1] = v4;
  v6 = sub_31300();
  v7 = [v5 initWithEntityName:v6];

  v8 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock;
  v9 = *(v2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v10);
  os_unfair_lock_lock(v9 + 4);
  v11 = 0;
  sub_1CB04(&v47);
  os_unfair_lock_unlock(v9 + 4);
  v12 = v47;
  v20 = sub_31620();

  if (v20 >> 62)
  {
    v21 = sub_317C0();
  }

  else
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v44 = v8;
  v45 = v2;
  v42[0] = v7;
  if (v21)
  {
    v22 = 0;
    v43 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v43)
      {
        v23 = sub_31700();
      }

      else
      {
        if (v22 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v7 = v42;
      v26 = *(v45 + v44);
      __chkstk_darwin(v23);
      v27 = v21;
      os_unfair_lock_lock(v26 + 4);
      sub_1CB04(&v47);
      os_unfair_lock_unlock(v26 + 4);
      v28 = v47;
      [v47 deleteObject:v24];

      v21 = v27;
      ++v22;
      if (v25 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:

  v30 = v44;
  v31 = v45;
  v32 = *(v45 + v44);
  __chkstk_darwin(v29);
  os_unfair_lock_lock(v32 + 4);
  sub_1CB04(&v47);
  os_unfair_lock_unlock(v32 + 4);
  v33 = v47;
  v34 = [v47 hasChanges];

  if (!v34)
  {
LABEL_20:

    return;
  }

  v36 = *(v31 + v30);
  __chkstk_darwin(v35);
  os_unfair_lock_lock(v36 + 4);
  sub_1CB04(&v47);
  os_unfair_lock_unlock(v36 + 4);
  v37 = v47;
  v47 = 0;
  v38 = [v37 save:&v47];

  if (v38)
  {
    v39 = v47;
    goto LABEL_20;
  }

  v40 = v47;
  v41 = sub_31070();

  swift_willThrow();
  v7 = v42[0];
  v47 = v41;
  sub_2294(&unk_42780, &qword_32CC0);
  sub_B304(0, &qword_424A8, NSError_ptr);
  swift_dynamicCast();

  v11 = v46;
  if (qword_42220 != -1)
  {
LABEL_27:
    swift_once();
  }

  v13 = sub_311B0();
  sub_8BFC(v13, qword_434B0);
  v14 = v11;
  v15 = sub_31190();
  v16 = sub_314D0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_0, v15, v16, "Failed to delete cloudSyncVersions error: %@", v17, 0xCu);
    sub_B5AC(v18, &qword_42790, &unk_334A0);

    v15 = v19;
  }

  else
  {
  }
}

uint64_t sub_2D674(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_30D34(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v11 = v10;
  sub_30D78(a1, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_30E1C(v19, v12 + 32);
  v13 = *(v3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v13 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v18;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_30E34;
  v16[4] = v12;
  v16[5] = v9;
  v16[6] = v11;

  sub_2C458(v14, sub_30E8C, v16);
}

void sub_2D824(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    (a3)(a1, 1, a3, a4, a5);
  }

  else
  {
    v7 = a5[3];
    v8 = a5[4];
    sub_30D34(a5, v7);
    v10 = *(v8 + 32);
    v11 = a1;
    [v11 setCloudVersion:{v10(v7, v8)}];
    v12 = a5[3];
    v13 = a5[4];
    sub_30D34(a5, v12);
    v14 = (*(v13 + 16))(v12, v13);
    sub_1CFB8(v14);
    v15 = a5[3];
    v16 = a5[4];
    sub_30D34(a5, v15);
    [v11 setHistoryTokenOffset:{(*(v16 + 24))(v15, v16)}];
    a3(a1, 0);

    sub_1BB64(a1, 0);
  }
}

void sub_2D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a3;
  v30 = a5;
  v12 = sub_2294(&qword_42490, &qword_32CB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v29 - v17;
  sub_2F0BC(a1, &v29 - v17);
  sub_2F0BC(a2, v16);
  v19 = *(v13 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v14 + v19 + v20) & ~v19;
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  sub_1B348(v18, v23 + v20);
  sub_1B348(v16, v23 + v21);
  v24 = (v23 + v22);
  v25 = v30;
  *v24 = v29;
  v24[1] = a4;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v25;
  v26[1] = a6;
  v27 = *(v7 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v31 = sub_31020;
  v32 = v7;

  os_unfair_lock_lock(v27 + 4);
  sub_1CB04(&v33);
  os_unfair_lock_unlock(v27 + 4);
  v28 = v33;
  sub_2C458(v33, sub_1B558, v23);
}

void sub_2DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v10 = sub_2294(&qword_42490, &qword_32CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v32 = sub_31020;
  v33 = a1;
  os_unfair_lock_lock(v17 + 4);
  sub_1CB04(&v34);
  os_unfair_lock_unlock(v17 + 4);
  v18 = v34;
  sub_2F0BC(a2, v16);
  sub_2F0BC(a3, v14);
  v19 = *(v11 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v12 + v19 + v20) & ~v19;
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  sub_1B348(v16, v23 + v20);
  sub_1B348(v14, v23 + v21);
  v24 = (v23 + v22);
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v31;
  *v26 = v30;
  v26[1] = v27;

  sub_D3A8(v18, sub_30BC8);
}

uint64_t sub_2DDAC(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t *, char *), uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  isUniquelyReferenced_nonNull_native = a1;
  v11 = a9;
  if (a2)
  {
    if (qword_42220 != -1)
    {
LABEL_56:
      swift_once();
    }

    v12 = sub_311B0();
    sub_8BFC(v12, qword_434B0);
    swift_errorRetain();
    v13 = sub_31190();
    v14 = sub_314D0();
    sub_21DA0(isUniquelyReferenced_nonNull_native, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_0, v13, v14, "Failed to fetch configurations error: %@", v15, 0xCu);
      sub_B5AC(v16, &qword_42790, &unk_334A0);
    }

    return a8();
  }

  v23 = *(a3 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(a1);
  os_unfair_lock_lock(v23 + 4);
  v67 = isUniquelyReferenced_nonNull_native;
  sub_1CB04(&v70);
  os_unfair_lock_unlock(v23 + 4);
  v60 = v70;
  v66 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    v24 = sub_317C0();
  }

  else
  {
    v24 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
  }

  v68 = v24;
  v64 = a7;
  v65 = a8;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  if (v24)
  {
    if (v24 < 1)
    {
      __break(1u);
LABEL_59:
      result = sub_31890();
      __break(1u);
      return result;
    }

    v25 = 0;
    v69 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v26 = _swiftEmptyDictionarySingleton;
    p_type = (&stru_40FF0 + 16);
    while (1)
    {
      if (v69)
      {
        v28 = sub_31700();
      }

      else
      {
        v28 = *(isUniquelyReferenced_nonNull_native + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = [v28 p_type[50]];
      if (!v30)
      {

        goto LABEL_13;
      }

      v31 = v30;
      v32 = sub_31320();
      v34 = v33;

      v35 = sub_C098();
      if (v35)
      {
        v36 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v26;
        v38 = sub_17054(v32, v34);
        v39 = v26[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        a8 = v37;
        if (v26[3] >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v67;
            if ((v37 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_18610();
            isUniquelyReferenced_nonNull_native = v67;
            if ((a8 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_173A8(v41, isUniquelyReferenced_nonNull_native);
          v42 = sub_17054(v32, v34);
          if ((a8 & 1) != (v43 & 1))
          {
            goto LABEL_59;
          }

          v38 = v42;
          isUniquelyReferenced_nonNull_native = v67;
          if ((a8 & 1) == 0)
          {
LABEL_29:
            v26 = v70;
            v70[(v38 >> 6) + 8] |= 1 << v38;
            v44 = (v26[6] + 16 * v38);
            *v44 = v32;
            v44[1] = v34;
            *(v26[7] + 8 * v38) = v36;

            v45 = v26[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (v46)
            {
              goto LABEL_55;
            }

            v26[2] = v47;
            goto LABEL_12;
          }
        }

        v26 = v70;
        *(v70[7] + 8 * v38) = v36;

        swift_unknownObjectRelease();
      }

      else
      {
      }

LABEL_12:
      v24 = v68;
      p_type = &stru_40FF0.type;
LABEL_13:
      if (v24 == ++v25)
      {
        v11 = a9;
        if (!v24)
        {
          goto LABEL_50;
        }

        v48 = 0;
        v49 = _swiftEmptyArrayStorage;
        do
        {
          v50 = v48;
          while (1)
          {
            if (v69)
            {
              v51 = sub_31700();
              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v50 >= *(v66 + 16))
              {
                goto LABEL_53;
              }

              v51 = *(isUniquelyReferenced_nonNull_native + 8 * v50 + 32);
              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }
            }

            a8 = v51;
            v52 = [a8 p_type[50]];
            if (v52)
            {
              break;
            }

            ++v50;
            if (v48 == v24)
            {
              goto LABEL_51;
            }
          }

          v53 = v52;
          v54 = sub_31320();
          v56 = v55;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_2E9F0(0, *(v49 + 2) + 1, 1, v49);
          }

          a8 = *(v49 + 2);
          v57 = *(v49 + 3);
          if (a8 >= v57 >> 1)
          {
            v49 = sub_2E9F0((v57 > 1), a8 + 1, 1, v49);
          }

          *(v49 + 2) = a8 + 1;
          v58 = &v49[16 * a8];
          *(v58 + 4) = v54;
          *(v58 + 5) = v56;
          isUniquelyReferenced_nonNull_native = v67;
          v24 = v68;
        }

        while (v48 != v68);
        goto LABEL_51;
      }
    }
  }

  v26 = _swiftEmptyDictionarySingleton;
LABEL_50:
  v49 = _swiftEmptyArrayStorage;
LABEL_51:
  v59 = v60;

  sub_91BC(v61, v62, v49, v59, v59, v26, v63, v64, v65, v11);

  swift_bridgeObjectRelease_n();
}

void sub_2E3B8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer);
  *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage____lazy_storage___l_persistentContainer) = a1;
  v2 = a1;
}

uint64_t LocalStorage.deinit()
{
  v1 = OBJC_IVAR____TtC19EngagementCollector12LocalStorage_persistentDirectoryURL;
  v2 = sub_310D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocalStorage.__deallocating_deinit()
{
  LocalStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_2E528()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = [objc_opt_self() backgroundTaskDelegate];
  if (v1)
  {
    v2 = sub_31300();
    v6[4] = sub_30A20;
    v6[5] = v0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_23BEC;
    v6[3] = &unk_3E200;
    v3 = _Block_copy(v6);

    v4 = [v1 ec_beginBackgroundTaskWithName:v2 expirationHandler:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v0 + 16) = v4;
  *(v0 + 24) = v1 == 0;

  return v4;
}

id sub_2E6B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      [result ec_endBackgroundTask:v3];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2E740(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  if ((*(a3 + 24) & 1) == 0)
  {
    v4 = *(a3 + 16);
    v5 = [objc_opt_self() backgroundTaskDelegate];
    if (v5)
    {
      [v5 ec_endBackgroundTask:v4];
      swift_unknownObjectRelease();
    }
  }

  result = swift_beginAccess();
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

id sub_2E7FC(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3)
{
  result = a1();
  if ((a3[1] & 1) == 0)
  {
    v5 = *a3;
    result = [objc_opt_self() backgroundTaskDelegate];
    if (result)
    {
      [result ec_endBackgroundTask:v5];
      result = swift_unknownObjectRelease();
    }
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

char *sub_2E8B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_426A0, &qword_33038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E9F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2294(&qword_42CE0, &unk_334B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_2EB20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2294(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2294(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_2EC6C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_2294(&qword_42CE0, &unk_334B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_2ECF0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_2294(&qword_42498, &qword_32CB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2ED7C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_316A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_318F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

uint64_t sub_2EF0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_316A0() + 1) & ~v5;
    do
    {
      sub_31900();

      sub_31370();
      v10 = sub_31920();

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

uint64_t sub_2F0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LocalStorage(uint64_t a1)
{
  result = qword_42B48;
  if (!qword_42B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F184(uint64_t a1)
{
  result = sub_310D0();
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

void sub_2F300()
{
  v0 = sub_31520();
  v35 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_310D0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v36 = 0;
  v10 = [objc_opt_self() defaultManager];
  sub_310B0(0);
  v11 = sub_31300();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:&v36];

  if (v12)
  {
    v13 = sub_31300();
    v14 = [objc_opt_self() bundleWithIdentifier:v13];

    if (v14)
    {
      v34 = v4;
      v15 = sub_31300();
      v16 = sub_31300();
      v17 = [v14 URLForResource:v15 withExtension:v16];

      if (v17)
      {
        sub_310A0();

        v18 = objc_allocWithZone(NSManagedObjectModel);
        sub_31080(v19);
        v21 = v20;
        v22 = [v18 initWithContentsOfURL:v20];

        if (v22)
        {
          v33 = v14;
          v23 = objc_allocWithZone(NSPersistentContainer);
          v24 = v22;
          v25 = sub_31300();
          v26 = [v23 initWithName:v25 managedObjectModel:v24];

          v27 = [v26 persistentStoreCoordinator];
          sub_31090();
          sub_31500();
          sub_31640();

          (*(v35 + 8))(v2, v0);
          v32 = *(v34 + 8);
          v32(v7, v3);
          v32(v9, v3);
          return;
        }

        (*(v34 + 8))(v9, v3);
      }
    }

    if (qword_42220 != -1)
    {
      swift_once();
    }

    v28 = sub_311B0();
    sub_8BFC(v28, qword_434B0);
    v29 = sub_31190();
    v30 = sub_314D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Failed to destroy persistent store", v31, 2u);
    }
  }
}

id sub_2F9BC()
{
  v0 = sub_310D0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = sub_31300();
  v8 = [objc_opt_self() bundleWithIdentifier:v7];

  if (v8)
  {
    v9 = sub_31300();
    v10 = sub_31300();
    v11 = [v8 URLForResource:v9 withExtension:v10];

    if (v11)
    {
      sub_310A0();

      (*(v1 + 32))(v6, v4, v0);
      v12 = objc_allocWithZone(NSManagedObjectModel);
      sub_31080(v13);
      v15 = v14;
      v16 = [v12 initWithContentsOfURL:v14];

      if (v16)
      {
        (*(v1 + 8))(v6, v0);

        return v16;
      }
    }

    else
    {
    }
  }

  result = sub_317A0();
  __break(1u);
  return result;
}

id sub_2FC68()
{
  v0 = sub_31270();
  v70 = *(v0 - 8);
  v71 = v0;
  __chkstk_darwin(v0);
  v69 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_310D0();
  v74 = *(v2 - 8);
  v75 = v2;
  v72 = *(v74 + 64);
  v3 = __chkstk_darwin(v2);
  v67 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v57 - v5;
  v7 = sub_29D30();
  v73 = v6;
  sub_31090();
  v8 = objc_allocWithZone(NSPersistentContainer);
  v9 = v7;
  v68 = v9;
  v10 = sub_31300();
  v11 = [v8 initWithName:v10 managedObjectModel:v9];
  v66 = v11;

  v12 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_31080(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14];

  [v16 setShouldMigrateStoreAutomatically:1];
  [v16 setShouldInferMappingModelAutomatically:1];
  [v16 setReadOnly:0];
  v64 = sub_2294(&qword_42498, &qword_32CB8);
  v17 = swift_allocObject();
  v63 = xmmword_32A70;
  *(v17 + 16) = xmmword_32A70;
  *(v17 + 32) = v16;
  sub_B304(0, &qword_42CC0, NSPersistentStoreDescription_ptr);
  v65 = v16;
  isa = sub_313D0().super.isa;

  [v11 setPersistentStoreDescriptions:isa];

  v19 = sub_31300();
  v20 = [objc_opt_self() bundleWithIdentifier:v19];

  v21 = objc_allocWithZone(NSManagedObjectModelReference);
  v22 = v20;
  v23 = sub_31300();
  v24 = sub_31300();
  v25 = [v21 initWithName:v23 inBundle:v22 versionChecksum:v24];

  v26 = objc_allocWithZone(NSManagedObjectModelReference);
  v27 = v22;
  v62 = v27;
  v28 = sub_31300();
  v29 = sub_31300();
  v30 = [v26 initWithName:v28 inBundle:v27 versionChecksum:v29];

  sub_B304(0, &qword_42CC8, NSCustomMigrationStage_ptr);
  v31 = v25;
  v60 = v31;
  v32.super.isa = v30;
  v61 = v32.super.isa;
  v33.super.isa = v31;
  v34 = sub_315E0(v33, v32).super.super.isa;
  v35 = sub_31300();
  [(objc_class *)v34 setLabel:v35];

  v36 = v74;
  v59 = *(v74 + 16);
  v37 = v67;
  v38 = v73;
  v39 = v75;
  v59(v67, v73, v75);
  v40 = *(v36 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 1635017060;
  *(v41 + 3) = 0xE400000000000000;
  *(v41 + 4) = 0x44497465737361;
  *(v41 + 5) = 0xE700000000000000;
  v58 = *(v36 + 32);
  v58(&v41[(v40 + 48) & ~v40], v37, v39);
  sub_315F0();
  v42 = swift_allocObject();
  *(v42 + 16) = v63;
  *(v42 + 32) = v34;
  sub_B304(0, &qword_42CD0, NSStagedMigrationManager_ptr);
  v64 = v34;
  v43._rawValue = v42;
  *&v63 = sub_31630(v43);
  v44 = v65;
  [v65 setOption:v63 forKey:NSPersistentStoreStagedMigrationManagerOptionKey];
  v57 = dispatch_semaphore_create(0);
  v59(v37, v38, v39);
  v45 = (v40 + 16) & ~v40;
  v46 = (v72 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v58((v48 + v45), v37, v39);
  v49 = v66;
  *(v48 + v46) = v66;
  *(v48 + v47) = v44;
  v50 = v57;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  aBlock[4] = sub_30680;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B6B8;
  aBlock[3] = &unk_3E138;
  v51 = _Block_copy(aBlock);
  v52 = v44;
  v53 = v49;
  v54 = v50;

  [v53 loadPersistentStoresWithCompletionHandler:v51];
  _Block_release(v51);
  v55 = v69;
  sub_31250();
  sub_315C0();

  (*(v70 + 8))(v55, v71);
  (*(v74 + 8))(v73, v75);
  return v53;
}

uint64_t sub_3046C()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_305BC()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

Swift::Int sub_30680(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_310D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2ABD8(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t sub_30744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3075C()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

Swift::Int sub_307F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_310D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2B3F0(a1, a2, v2 + v6, v7);
}

uint64_t sub_308A4()
{
  v1 = sub_310D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_30A28()
{
  v1 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_31180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_30BC8(unint64_t a1, char a2)
{
  v5 = *(sub_2294(&qword_42490, &qword_32CB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2DDAC(a1, a2 & 1, *(v2 + 16), v2 + v7, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_30CA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_30CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_30D34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_30D78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_30DDC()
{

  sub_9170((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_30E1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_30E44()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_30E9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_30F08()
{
  result = qword_42750;
  if (!qword_42750)
  {
    sub_31530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42750);
  }

  return result;
}

unint64_t sub_30F60()
{
  result = qword_42D10;
  if (!qword_42D10)
  {
    sub_B304(255, &qword_42930, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42D10);
  }

  return result;
}

uint64_t sub_30FD0()
{

  return _swift_deallocObject(v0, 24, 7);
}