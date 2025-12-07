uint64_t sub_100054080(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1000540DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result + 1 > *(*v3 + 24) >> 1)
  {
    sub_100054698();
    *v3 = v4;
  }
}

void sub_100054124(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_10005431C(v2 > 1, result + 1, 1, *v1, &qword_10009B780, &qword_100078780, &type metadata accessor for TunnelPacket, &type metadata accessor for TunnelPacket);
    *v1 = v3;
  }
}

void sub_10005419C()
{
  sub_100054FF8();
  if (v4)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  sub_100054FB0();
  if (v3)
  {
    sub_100013414(&unk_10009A950, qword_100077DA0);
    v7 = swift_allocObject();
    sub_10000EB24(v7);
    v3[2] = v2;
    v3[3] = (2 * (v8 / 40));
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 40 * v2 <= (v3 + 4))
    {
      v10 = sub_100055020();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100013414(&qword_10009B7E0, &qword_1000787D8);
    sub_100055020();
    swift_arrayInitWithCopy();
  }
}

void sub_10005431C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_10000CC94();
    if (v13 != v14)
    {
      sub_10000D994();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_100054934(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_100054A50(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100054418()
{
  sub_100054FF8();
  if (v3)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100013414(&qword_10009B7C0, &qword_1000787B8);
    v9 = sub_10005502C();
    v10 = j__malloc_size(v9);
    v9[2] = v7;
    v9[3] = (2 * ((v10 - 32) / 8));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_1000544F8()
{
  sub_100054FF8();
  if (v4)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  sub_100054FB0();
  if (v3)
  {
    sub_100013414(&qword_10009B7F0, &qword_1000787E8);
    v7 = sub_10005502C();
    sub_10000EB24(v7);
    sub_100055010(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = (v3 + 4);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000545C8()
{
  sub_100054FF8();
  if (v4)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  sub_100054FB0();
  if (v3)
  {
    sub_100013414(&qword_10009B7F8, qword_1000787F0);
    v7 = sub_10005502C();
    sub_10000EB24(v7);
    sub_100055010(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = (v3 + 4);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100054698()
{
  sub_100054FF8();
  if (v4)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  sub_100054FB0();
  if (v3)
  {
    sub_100013414(v7, v8);
    v9 = sub_10005502C();
    sub_10000EB24(v9);
    sub_100055010(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 16 * v2 <= (v3 + 4))
    {
      v12 = sub_100055020();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100013414(&unk_100099DC0, &unk_100077860);
    sub_100055020();
    swift_arrayInitWithCopy();
  }
}

void sub_100054780()
{
  sub_100054FF8();
  if (v4)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  sub_100054FB0();
  if (v3)
  {
    sub_100013414(&qword_10009B7B0, &qword_1000787A8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = (2 * v8 - 64);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = (v7 + 4);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_100054854()
{
  sub_100054FF8();
  if (v3)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100013414(&qword_10009B7B8, &qword_1000787B0);
    v9 = sub_10005502C();
    v10 = j__malloc_size(v9);
    v9[2] = v7;
    v9[3] = (2 * ((v10 - 32) / 4));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v7] <= v11)
    {
      memmove(v11, v12, 4 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v7);
  }
}

id *sub_100054934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100013414(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100054A30(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_10000D30C(a3, result);
  }

  return result;
}

void sub_100054A50(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_10000CC04(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_100055044();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_100055044();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

uint64_t sub_100054B10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100054B40(void *__src, uint64_t a2, void *__dst)
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

_BYTE **sub_100054B64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100054B9C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000C600(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

id *sub_100054BF8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013414(&unk_10009B740, &unk_100078770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100054D1C(void (*a1)(void))
{
  a1(*(v1 + 16));

  sub_10000D090();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100054D68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_100054DEC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100054E60@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100054F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013414(a3, a4);
  sub_10000CC04();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10005502C()
{

  return swift_allocObject();
}

uint64_t sub_1000550A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
  v12 = type metadata accessor for Date();
  sub_1000223E8(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted) = 2;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken) = -1;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue) = a1;
  v13 = (v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lockStateChangeNotificationName);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc);
  *v14 = a4;
  v14[1] = a5;
  return v5;
}

uint64_t sub_100055170()
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v4;
  v5 = sub_100036508();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = sub_1000581C0();
  result = v9(v8, v2);
  if (v4)
  {
    sub_10005581C();
    result = sub_1000557BC();
    if (result)
    {
      return sub_100055D2C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000552F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000582A4(a1, a2, a3, a4);
  if (sub_1000557BC())
  {
    sub_100044C50();
    sub_100045C80();
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(qword_10009CED0, v6))
    {
      v7 = sub_10000D030();
      v19 = sub_10000D464();
      *v7 = 136446210;
      v8 = sub_1000229A0();
      *(v7 + 4) = sub_10000C600(v8, v9, v10);
      sub_1000583A0(&_mh_execute_header, v11, v12, "Deferring task %{public}s until after first unlock");
      sub_10000CADC(v19);
      sub_10000D8D4(v19);
      sub_10000D8D4(v7);
    }

    sub_10000D090();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100058128;
    *(v13 + 24) = v4;
    v14 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers, v15);

    sub_100053EA0();
    sub_10000D640();
    sub_100058318();
    *(v16 + 32) = sub_1000581BC;
    *(v16 + 40) = v13;
    *(v5 + v14) = v17;
    swift_endAccess();
  }
}

uint64_t sub_100055448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000582A4(a1, a2, a3, a4);
  if (sub_1000557BC())
  {
    sub_100039310();
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(qword_10009CED0, v6))
    {
      v7 = sub_10000D030();
      v19 = sub_10000D464();
      *v7 = 136446210;
      v8 = sub_1000229A0();
      *(v7 + 4) = sub_10000C600(v8, v9, v10);
      sub_1000583A0(&_mh_execute_header, v11, v12, "Deferring task %{public}s until after first unlock");
      sub_10000CADC(v19);
      sub_10000D8D4(v19);
      sub_10000D8D4(v7);
    }

    sub_10000D090();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100058130;
    *(v13 + 24) = v4;
    v14 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers, v15);

    sub_100053EA0();
    sub_10000D640();
    sub_100058318();
    *(v16 + 32) = sub_1000581BC;
    *(v16 + 40) = v13;
    *(v5 + v14) = v17;
    swift_endAccess();
  }
}

uint64_t sub_100055628(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{

  if (sub_1000557BC())
  {
    a5();
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v15))
    {
      v27 = a8;
      v17 = sub_10000D030();
      v18 = sub_10000D464();
      v28[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000C600(a1, a2, v28);
      _os_log_impl(&_mh_execute_header, v16, v15, "Deferring task %{public}s until after first unlock", v17, 0xCu);
      sub_10000CADC(v18);
      sub_10000D8D4(v18);
      v19 = v17;
      a8 = v27;
      sub_10000D8D4(v19);
    }

    sub_10000D090();
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    *(v20 + 24) = a4;
    v21 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4(a3 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers, v22);

    sub_100053EA0();
    v23 = *(*(a3 + v21) + 16);
    sub_10005403C(v23);
    v24 = *(a3 + v21);
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = a8;
    *(v25 + 40) = v20;
    *(a3 + v21) = v24;
    swift_endAccess();
  }
}

uint64_t sub_1000557BC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted;
  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted);
  if (v2 == 2)
  {
    LOBYTE(v2) = (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc))();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_10005581C()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100058120;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005014C;
  aBlock[3] = &unk_100091130;
  v13 = _Block_copy(aBlock);

  v14 = String.utf8CString.getter();
  v15 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken;
  swift_beginAccess();
  v16 = notify_register_dispatch((v14 + 32), (v0 + v15), v9, v13);
  swift_endAccess();

  _Block_release(v13);
  if (v16)
  {
    v17 = static os_log_type_t.fault.getter();
    result = sub_10000CD2C(v17);
    if (!result)
    {
      return result;
    }

    v18 = swift_slowAlloc();
    v19 = sub_10000D464();
    aBlock[0] = v19;
    *v18 = 136446466;
    sub_100058280();
    v22 = sub_100058300(v20, v21, aBlock);
    sub_10000CD44(v22);
    sub_100058340(&_mh_execute_header, v23, v24, "Failed to register for %{public}s darwin notification. Received error code %u from notify_register_dispatch");
    sub_10000CADC(v19);
    sub_10000D8D4(v19);
    v25 = v18;
  }

  else
  {
    v26 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(qword_10009CED0, v26);
    if (!result)
    {
      return result;
    }

    v27 = sub_10000D030();
    v28 = sub_10000D464();
    aBlock[0] = v28;
    *v27 = 136446210;
    sub_100058280();
    *(v27 + 4) = sub_100058300(v29, v30, aBlock);
    sub_100058380(&_mh_execute_header, v31, v32, "Registered for %{public}s notification");
    sub_10000CADC(v28);
    sub_100049A00();
    v25 = v27;
  }

  return sub_10000D8D4(v25);
}

uint64_t sub_100055B24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100055B7C();
  }

  return result;
}

uint64_t sub_100055B7C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v5 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v5;
  v6 = sub_100036508();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_1000581C0();
  result = v10(v9, v3);
  if (v5)
  {
    if (sub_1000557BC())
    {
      return sub_100055D2C();
    }

    else if ((*(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc))())
    {
      sub_100055D2C();
      return sub_1000560B0();
    }

    else
    {
      v12 = static os_log_type_t.debug.getter();
      result = os_log_type_enabled(qword_10009CED0, v12);
      if (result)
      {
        v13 = sub_10000D030();
        v14 = sub_10000D464();
        v19 = v14;
        *v13 = 136446210;
        sub_100058280();
        *(v13 + 4) = sub_100058300(v15, v16, &v19);
        sub_100058380(&_mh_execute_header, v17, v18, "Ignoring %{public}s notification since device has not yet passed first unlock");
        sub_10000CADC(v14);
        sub_100049A00();
        return sub_10000D8D4(v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100055D2C()
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v4;
  v5 = sub_100036508();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = sub_1000581C0();
  result = v9(v8, v2);
  if (v4)
  {
    v11 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken;
    swift_beginAccess();
    result = *(v0 + v11);
    if (result != -1)
    {
      if (notify_cancel(result))
      {
        v12 = static os_log_type_t.fault.getter();
        result = sub_10000CD2C(v12);
        if (result)
        {
          v13 = swift_slowAlloc();
          v14 = sub_10000D464();
          v26 = v14;
          *v13 = 136446466;
          sub_100058280();
          v17 = sub_100058300(v15, v16, &v26);
          sub_10000CD44(v17);
          sub_100058340(&_mh_execute_header, v18, v19, "Failed to cancel %{public}s notification. Received error code %u from notify_cancel");
          sub_10000CADC(v14);
          sub_10000D8D4(v14);
          return sub_100049A00();
        }
      }

      else
      {
        v20 = static os_log_type_t.default.getter();
        v21 = qword_10009CED0;
        result = os_log_type_enabled(qword_10009CED0, v20);
        if (result)
        {
          v22 = sub_10000D030();
          v23 = sub_10000D464();
          v26 = v23;
          *v22 = 136446210;
          sub_100058280();
          *(v22 + 4) = sub_100058300(v24, v25, &v26);
          _os_log_impl(&_mh_execute_header, v21, v20, "Unregistered for %{public}s notification", v22, 0xCu);
          sub_10000CADC(v23);
          sub_10000D8D4(v23);
          result = sub_100049A00();
        }

        *(v0 + v11) = -1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100055F64()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v5 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v5;
  v6 = sub_100036508();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_1000581C0();
  result = v10(v9, v3);
  if (v5)
  {
    result = sub_1000557BC();
    if ((result & 1) == 0)
    {
      if ((*(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc))())
      {
        return sub_1000560B0();
      }

      else
      {
        v12 = static os_log_type_t.fault.getter();
        return os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "Received first lock notification but device has not actually been unlocked since boot", 85, 2, _swiftEmptyArrayStorage);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000560B0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v5 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v5;
  v6 = sub_100036508();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_1000581C0();
  result = v10(v9, v3);
  if (v5)
  {
    *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted) = 1;
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "First unlock completed. Executing deferred work", 47, 2, _swiftEmptyArrayStorage);
    v13 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);
    if (v15)
    {

      v16 = v14 + 40;
      do
      {
        v17 = *(v16 - 8);

        v17(v18);

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    *(v2 + v13) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005625C(void **a1)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v9 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *(v8 - v7) = v9;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = sub_10000EB40();
  result = v12(v11);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v14 = type metadata accessor for Date();
  sub_10000CBBC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100058218();
  v99 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v18 = *(v99[-1].isa + 8);
  __chkstk_darwin(v99);
  v20 = &v95[-v19];
  v21 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
  swift_beginAccess();
  sub_10005775C(v2 + v21, v20);
  if (sub_100022484(v20, 1, v14) == 1)
  {
    v98 = v16;
    sub_1000577CC(v20);
    goto LABEL_8;
  }

  v22 = sub_10005832C();
  v23(v22);
  if (!sub_100056C30(v100))
  {
    v98 = v16;
    v42 = sub_100058264();
    v43(v42);
LABEL_8:
    v44 = MKBGetDeviceLockState();
    if (v44 <= 3 && v44 != 1)
    {
      return 1;
    }

    if (&_BiomeLibrary)
    {
      v46 = [BiomeLibrary() Device];
      swift_unknownObjectRelease();
      v47 = [v46 KeybagLocked];
      swift_unknownObjectRelease();
      v48 = [objc_opt_self() reversed];
      v49 = [v47 publisherWithOptions:v48];

      v105 = sub_100056FD4;
      v106 = 0;
      aBlock = _NSConcreteStackBlock;
      v102 = 1107296256;
      v103 = sub_10000C200;
      v104 = &unk_1000910B8;
      v50 = _Block_copy(&aBlock);
      v105 = sub_100057834;
      v106 = v2;
      aBlock = _NSConcreteStackBlock;
      v102 = 1107296256;
      v103 = sub_1000573C0;
      v104 = &unk_1000910E0;
      v51 = _Block_copy(&aBlock);

      v52 = [v49 sinkWithCompletion:v50 shouldContinue:v51];
      _Block_release(v51);
      _Block_release(v50);

      __chkstk_darwin(v53);
      sub_100058218();
      __chkstk_darwin(v54);
      sub_10005775C(v2 + v21, &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      if (sub_100022484(&v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)], 1, v14) == 1)
      {
        sub_1000577CC(&v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v55 = static os_log_type_t.error.getter();
        v56 = qword_10009CED0;
        result = sub_10000CD2C(v55);
        if (!result)
        {
          return result;
        }

        v57 = sub_10000D030();
        *v57 = 134217984;
        *(v57 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v56, v55, "Could not find last unlock event. Unable to confirm whether device was unlocked within requested %ld hours. Will return false", v57, 0xCu);
        sub_100049A00();
        return 0;
      }

      v62 = v98;
      v63 = sub_10005832C();
      v64(v63);
      if (sub_100056C30(v100))
      {
        v99 = v95;
        v65 = static os_log_type_t.info.getter();
        v66 = v65;
        v67 = qword_10009CED0;
        __chkstk_darwin(v65);
        sub_100058218();
        v68 = sub_10000D0AC();
        v69(v68);
        v70 = v62;
        if (os_log_type_enabled(v67, v66))
        {
          v71 = swift_slowAlloc();
          v72 = sub_10000D464();
          v97 = v95;
          v73 = v72;
          aBlock = v72;
          *v71 = 136446466;
          sub_1000581D0();
          sub_10005815C(v74, v75, &protocol conformance descriptor for Date);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v96 = v66;
          v79 = *(v70 + 8);
          v80 = sub_10000EB40();
          v79(v80);
          v81 = sub_10000C600(v76, v78, &aBlock);

          *(v71 + 4) = v81;
          *(v71 + 12) = 2048;
          *(v71 + 14) = v100;
          _os_log_impl(&_mh_execute_header, v67, v96, "Last unlock date %{public}s is within %ld", v71, 0x16u);
          sub_10000CADC(v73);
          sub_10000D8D4(v73);
          sub_10000D8D4(v71);
          v82 = sub_100058264();
          v79(v82);
        }

        else
        {
          v92 = *(v62 + 8);
          v93 = sub_10000EB40();
          v92(v93);
          v94 = sub_100058264();
          v92(v94);
        }

        return 1;
      }

      v98 = v62;
      v83 = static os_log_type_t.default.getter();
      v84 = qword_10009CED0;
      if (sub_10000CD2C(v83))
      {
        v85 = swift_slowAlloc();
        v86 = sub_10000D464();
        v97 = v95;
        aBlock = v86;
        *v85 = 136315394;
        __chkstk_darwin(v86);
        sub_10005775C(v2 + v21, &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v87 = String.init<A>(describing:)();
        v89 = sub_10000C600(v87, v88, &aBlock);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2048;
        *(v85 + 14) = v100;
        _os_log_impl(&_mh_execute_header, v84, v83, "Last unlock was at date %s, which is not within %ld", v85, 0x16u);
        sub_10000CADC(v86);
        sub_10000D8D4(v86);
        sub_10000D8D4(v85);
      }

      v90 = sub_100058264();
      v91(v90);
    }

    else
    {
      v61 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, qword_10009CED0, "BiomeLibrary not available at runtime. Unable to determine last unlock date", 75, 2, _swiftEmptyArrayStorage);
    }

    return 0;
  }

  v24 = static os_log_type_t.debug.getter();
  v25 = v24;
  v26 = qword_10009CED0;
  __chkstk_darwin(v24);
  sub_100058218();
  v27 = sub_10000D0AC();
  v28(v27);
  v29 = v16;
  if (os_log_type_enabled(v26, v25))
  {
    v30 = sub_10000D030();
    v100 = sub_10000D464();
    aBlock = v100;
    *v30 = 136446210;
    sub_1000581D0();
    sub_10005815C(v31, v32, &protocol conformance descriptor for Date);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v98) = v25;
    v34 = v33;
    v99 = v26;
    v36 = v35;
    v37 = *(v29 + 8);
    v38 = sub_10000EB40();
    v37(v38);
    v39 = sub_10000C600(v34, v36, &aBlock);

    *(v30 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v99, v98, "Previously fetched last unlock date %{public}s is still recent", v30, 0xCu);
    v40 = v100;
    sub_10000CADC(v100);
    sub_10000D8D4(v40);
    sub_10000D8D4(v30);
    v41 = sub_100058264();
    v37(v41);
  }

  else
  {
    v58 = *(v16 + 8);
    v59 = sub_10000EB40();
    v58(v59);
    v60 = sub_100058264();
    v58(v60);
  }

  return 1;
}

BOOL sub_100056C30(uint64_t a1)
{
  v38 = type metadata accessor for Date();
  sub_10000CBBC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v6 = v5 - v4;
  v39 = type metadata accessor for DateComponents();
  sub_10000CBBC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for Calendar.Identifier();
  sub_10000CBBC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v19 = v18 - v17;
  v37 = type metadata accessor for Calendar();
  sub_10000CBBC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_10000CBDC();
  v25 = v24 - v23;
  (*(v15 + 104))(v19, enum case for Calendar.Identifier.gregorian(_:), v13);
  Calendar.init(identifier:)();
  (*(v15 + 8))(v19, v13);
  sub_100013414(&qword_10009B9B8, &qword_1000788A0);
  v26 = type metadata accessor for Calendar.Component();
  sub_10000CBBC();
  v28 = v27;
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100077360;
  (*(v28 + 104))(v30 + v29, enum case for Calendar.Component.hour(_:), v26);
  sub_100057D6C(v30);
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v2 + 8))(v6, v38);
  v31 = DateComponents.hour.getter();
  if (v32)
  {
    v33 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10009CED0, "Unable to read hour component of date comparison", 48, 2, _swiftEmptyArrayStorage);
    v34 = 0;
  }

  else
  {
    v34 = v31 < a1;
  }

  (*(v8 + 8))(v12, v39);
  (*(v21 + 8))(v25, v37);
  return v34;
}

void sub_100056FD4(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v10 = v1;
    v2 = static os_log_type_t.error.getter();
    v3 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      v6 = v10;
      sub_100013414(&unk_10009A930, &unk_100077080);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000C600(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v2, "Failed to subscribe for keybag events from Biome due to error: %s", v4, 0xCu);
      sub_10000CADC(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100057148(void *a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = [a1 eventBody];
  if (v14)
  {
    v15 = v14;
    if ([v14 starting])
    {
    }

    else
    {
      [a1 timestamp];
      Date.init(timeIntervalSinceReferenceDate:)();
      static Date.now.getter();
      sub_10005815C(&qword_10009B9D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();

      v17 = *(v8 + 8);
      v17(v11, v7);
      if ((v16 & 1) == 0)
      {
        (*(v8 + 32))(v6, v13, v7);
        sub_1000223E8(v6, 0, 1, v7);
        v19 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
        swift_beginAccess();
        sub_1000580B0(v6, a2 + v19);
        swift_endAccess();
        return 0;
      }

      v17(v13, v7);
    }
  }

  return 1;
}

uint64_t sub_1000573C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100057418()
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_10000CBBC();
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v4;
  v5 = sub_100036508();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = sub_1000581C0();
  result = v9(v8, v2);
  if (v4)
  {
    return sub_1000557BC() & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100057504()
{
  sub_1000577CC(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate);

  return v0;
}

uint64_t sub_100057574()
{
  sub_100057504();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LockStateManager(uint64_t a1)
{
  result = qword_10009B850;
  if (!qword_10009B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100057620(uint64_t a1)
{
  sub_1000576FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000576FC(uint64_t a1)
{
  if (!qword_10009B860)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10009B860);
    }
  }
}

uint64_t sub_10005775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000577CC(uint64_t a1)
{
  v2 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10005783C(unint64_t a1)
{
  v2 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009BE20, &qword_100078B50);
    v3 = sub_1000582C8();
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v19 = sub_10004997C();
  if (v19)
  {
    sub_100058228();
    while (1)
    {
      v4 = sub_100058270();
      sub_100058138(v4, v5, v2);
      if (v18)
      {
        sub_1000229A0();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v6 = __OFADD__(v1++, 1);
      if (v6)
      {
        break;
      }

      type metadata accessor for ControlChannelConnection();
      sub_100058200();
      sub_10005815C(&unk_10009BE10, v7, &protocol conformance descriptor for ControlChannelConnection);
      sub_100058360();
      sub_10000D4DC();
      while (1)
      {
        sub_10005828C();
        if (v9)
        {
          break;
        }

        sub_100058200();
        v11 = sub_10005815C(&qword_10009B9E0, v10, &protocol conformance descriptor for ControlChannelConnection);
        if (sub_10000D3D0(v11, v12, v13, v14, v15))
        {

          goto LABEL_17;
        }
      }

      sub_100058248(v8);
      if (v6)
      {
        goto LABEL_20;
      }

      v3[2] = v16;
LABEL_17:
      v2 = v17;
      if (v1 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1000579D4(unint64_t a1)
{
  v2 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009BE80, &unk_1000788B0);
    v3 = sub_1000582C8();
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v19 = sub_10004997C();
  if (v19)
  {
    sub_100058228();
    while (1)
    {
      v4 = sub_100058270();
      sub_100058138(v4, v5, v2);
      if (v18)
      {
        sub_1000229A0();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v6 = __OFADD__(v1++, 1);
      if (v6)
      {
        break;
      }

      type metadata accessor for SystemXPCPeerConnection();
      sub_10000D9A0();
      sub_10005815C(&unk_10009A0E0, v7, &protocol conformance descriptor for XPCConnection);
      sub_100058360();
      sub_10000D4DC();
      while (1)
      {
        sub_10005828C();
        if (v9)
        {
          break;
        }

        sub_10000D9A0();
        v11 = sub_10005815C(&qword_10009B9E8, v10, &protocol conformance descriptor for XPCConnection);
        if (sub_10000D3D0(v11, v12, v13, v14, v15))
        {

          goto LABEL_17;
        }
      }

      sub_100058248(v8);
      if (v6)
      {
        goto LABEL_20;
      }

      v3[2] = v16;
LABEL_17:
      v2 = v17;
      if (v1 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_100057B6C(unint64_t a1)
{
  v1 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009B9F0, &qword_100078BD0);
    v2 = sub_1000582C8();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v22 = sub_10004997C();
  if (v22)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 + 32;
    while (1)
    {
      v5 = sub_100058270();
      sub_100058138(v5, v6, v1);
      if (v21)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v19 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      Hasher.init(_seed:)();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_10005815C(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
      HashableByObjectIdentity.hash(into:)();
      Hasher._finalize()();
      sub_10000D4DC();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *&v4[8 * v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = static HashableByObjectIdentity.== infix(_:_:)();

        if (v16)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      *&v4[8 * v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v7;
      v17 = v2[2];
      v8 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      v2[2] = v18;
LABEL_17:
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

_BYTE *sub_100057D6C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v32 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100013414(&qword_10009B9C0, &qword_1000788A8);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_10005815C(&qword_10009B9C8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = ~(-1 << v8[32]);
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *&v35[8 * v17];
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 6) + v16 * v12, v2);
      sub_10005815C(&qword_10009B9D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *&v35[8 * v17] = v19 | v18;
    result = (*v28)(*(v8 + 6) + v16 * v12, v23, v2);
    v24 = *(v8 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 2) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000580B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100058138(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005815C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000582A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

uint64_t sub_1000582C8()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t sub_1000582E4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

unint64_t sub_100058300(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_10000C600(0xD000000000000024, a2, a3);
}

void sub_100058340(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_100058360()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void sub_100058380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1000583A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000583C0(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  v4 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v3);
  if (result)
  {

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v2 + 16);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v4, v3, "Network pairing peers updated. Total count: %ld", v6, 0xCu);
  }

  return result;
}

void sub_1000584FC()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v10 = v0 + 24;
  v9 = *(v0 + 24);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (*(v10 + 24))
  {
    if (v12 == 1)
    {

      NWListener.cancel()();

      v9 = *(v1 + 24);
      v11 = *(v1 + 40);
      LOBYTE(v12) = *(v1 + 48);
    }

    else
    {
      if (v9 | *(v1 + 32) | v11)
      {
        v9 = 1;
      }

      LOBYTE(v12) = 2;
    }
  }

  v13 = *(v1 + 32);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v1 + 48) = 2;
  sub_10005AC9C(v9, v13, v11, v12);
  v27 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
  v14 = (v4 + 104);
  for (i = (v4 + 8); ; (*i)(v8, v2))
  {
    swift_beginAccess();
    v16 = *(v1 + 16);
    v17 = v16 & 0xC000000000000001;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_16;
      }

      v18 = __CocoaSet.startIndex.getter();
      v20 = v19;
    }

    else
    {
      if (!*(v16 + 16))
      {
LABEL_16:
        v24 = 0;
        goto LABEL_20;
      }

      v21 = 0;
      v22 = (v16 + 56);
      v18 = 1 << *(v16 + 32);
      v23 = (v18 + 63) >> 6;
      if (v23)
      {
        while (!*v22)
        {
          v21 -= 64;
          --v23;
          ++v22;
          if (!v23)
          {
            goto LABEL_18;
          }
        }

        v18 = __clz(__rbit64(*v22)) - v21;
      }

LABEL_18:
      v20 = *(v16 + 36);
    }

    v25 = v17 != 0;
    v24 = sub_10005AD04(v18, v20, v17 != 0);
    sub_100024E0C(v18, v20, v25);
LABEL_20:
    v26 = swift_endAccess();
    sub_1000583C0(v26);
    if (!v24)
    {
      break;
    }

    (*v14)(v8, v27, v2);
    dispatch thunk of ControlChannelConnection.invalidate(for:)();
  }

  sub_1000135A0();
}

void sub_10005875C()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for UUID();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = v14 - v13;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10009CED0, "Starting listening for network pairing", 38, 2, _swiftEmptyArrayStorage);
  if (*(v1 + 48) < 2u || *(v1 + 32) | *(v1 + 40) | *(v1 + 24))
  {
    static os_log_type_t.default.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)(v17, v18, v19, v20);
  }

  else
  {
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v11 + 8))(v15, v9);
    static String.Encoding.utf8.getter();
    v25 = String.data(using:allowLossyConversion:)();
    v27 = v26;
    (*(v4 + 8))(v8, v2);
    if (v27 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v1 + 24);
      v29 = *(v1 + 32);
      v30 = *(v1 + 40);
      *(v1 + 24) = v22;
      *(v1 + 32) = v24;
      *(v1 + 40) = 0;
      v31 = *(v1 + 48);
      *(v1 + 48) = 0;
      sub_10005AC9C(v28, v29, v30, v31);
      sub_10000CCD8();
      v32 = swift_allocObject();
      v32[2] = v1;
      v32[3] = v25;
      v32[4] = v27;
      v33 = sub_10000CC14();
      sub_10000EC4C(v33, v34);
      v35 = sub_10000CC14();
      sub_10000EC4C(v35, v36);
      v37 = swift_allocObject();
      v37[2] = v25;
      v37[3] = v27;
      v37[4] = sub_10005ACF4;
      v37[5] = v32;
      v38 = sub_10000CC14();
      sub_10000EC4C(v38, v39);

      v40 = sub_10000CC14();
      sub_10000EC4C(v40, v41);

      v42 = sub_10000CC14();
      sub_10000EC4C(v42, v43);

      sub_1000215B4();
      v52 = sub_10001C2A4();
      sub_10000CC14();
      v53 = CUPairingIdentity.authTag(for:type:)();
      v55 = v54;
      sub_10000CC14();
      sub_100058DA0();
      sub_10000ED08(v53, v55, 0);

      v44 = sub_10000CC14();
      sub_10000ECF4(v44, v45);

      v46 = sub_10000CC14();
      sub_10000ECF4(v46, v47);

      v48 = sub_10000CC14();
      sub_10000ECF4(v48, v49);
      v50 = sub_10000CC14();
      sub_10000ECF4(v50, v51);
      sub_1000135A0();
    }
  }
}

uint64_t sub_100058CF0()
{
  if (*(v0 + 48) == 1)
  {
    v0 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for RemotePairingError();
    sub_10000D1B8(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    swift_allocError();
    static RemotePairingError.invalidOperation.getter();
    swift_willThrow();
  }

  return v0;
}

void sub_100058DA0()
{
  sub_10000D060();
  LODWORD(v125) = v1;
  v126 = v2;
  v122 = v4;
  v123 = v3;
  v124 = v5;
  type metadata accessor for BonjourService();
  sub_10000CBBC();
  v119 = v7;
  v120 = v6;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = sub_100013414(&qword_10009BB28, &qword_1000789C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v112 - v12;
  v14 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v14 - 8);
  sub_10000CBDC();
  v17 = v16 - v15;
  v18 = type metadata accessor for NWTXTRecord();
  sub_10000CBBC();
  v121 = v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v112 - v24;
  v26 = type metadata accessor for String.Encoding();
  sub_10000CBBC();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000CBDC();
  v32 = v31 - v30;
  if (*(v0 + 48))
  {
    v33 = static os_log_type_t.default.getter();
    v34 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v33))
    {
      v35 = swift_slowAlloc();
      v36 = sub_10000D464();
      v129 = v36;
      *v35 = 136446210;
      v127[0] = sub_10005AFFC();
      v127[1] = v37;
      v127[2] = v38;
      v128 = v39;
      sub_10005AC3C(v127[0], v37, v38, v39);
      v40 = String.init<A>(describing:)();
      v42 = sub_10000C600(v40, v41, &v129);

      *(v35 + 4) = v42;
      v43 = "NetworkPairingService finished auth tag generation, but current state (%{public}s) is not valid to use the data";
      v44 = v33;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v34, v44, v43, v35, 0xCu);
      sub_10000CADC(v36);
      sub_10000D8D4(v36);
      sub_10000D8D4(v35);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v112 = v17;
  v113 = v23;
  v114 = v10;
  v115 = v13;
  v116 = v0;
  v117 = v18;
  v46 = *(v0 + 24);
  v45 = *(v0 + 32);
  v118 = *(v0 + 40);

  static String.Encoding.utf8.getter();
  v47 = v46;
  v48 = v45;
  v49 = String.data(using:allowLossyConversion:)();
  v51 = v50;
  (*(v28 + 8))(v32, v26);
  if (v51 >> 60 != 15)
  {
    v52 = static Data.== infix(_:_:)();
    sub_10000ECF4(v49, v51);
    if ((v52 & 1) == 0)
    {
      sub_10005AFEC();
      sub_10005AC9C(v64, v65, v66, v67);
      v68 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, qword_10009CED0, "NetworkPairingService finished auth tag generation, but we now are awaiting auth tag generation for a different pairing session", 127, 2, _swiftEmptyArrayStorage);
      goto LABEL_19;
    }

    v53 = v47;
    if ((v125 & 1) == 0)
    {
      v69 = v25;
      sub_10005AB0C(_swiftEmptyArrayStorage);
      NWTXTRecord.init(_:)();
      static NetworkPairingKeys.identifier.getter();

      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.authTag.getter();
      Data.base64EncodedString(options:)(0);
      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.model.getter();
      v70 = String._bridgeToObjectiveC()();
      v71 = MGCopyAnswer();

      if (v71)
      {
        v129 = v71;
        sub_10005B00C(v72, v73, v74, &type metadata for String);
      }

      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.name.getter();
      v75 = String._bridgeToObjectiveC()();
      v76 = MGCopyAnswer();

      if (v76)
      {
        v129 = v76;
        sub_10005B00C(v77, v78, v79, &type metadata for String);
      }

      NWTXTRecord.subscript.setter();
      type metadata accessor for ControlChannelConnectionWireProtocolVersion();
      v80 = static ControlChannelConnectionWireProtocolVersion.current.getter();
      v81 = [v80 description];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static NetworkPairingKeys.wireProtocolVersion.getter();
      NWTXTRecord.subscript.setter();
      v82 = static ControlChannelConnectionWireProtocolVersion.minimumSupportedForWirelessPairing.getter();
      v83 = [v82 description];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static NetworkPairingKeys.minimumSupportedWireProtocolVersion.getter();
      NWTXTRecord.subscript.setter();
      type metadata accessor for NWParameters();
      static NWParameters.tcp.getter();
      static NWEndpoint.Port.any.getter();
      v124 = type metadata accessor for NWListener();
      swift_allocObject();
      v84 = NWListener.init(using:on:)();
      v85 = v116;
      v86 = v116[3];
      v87 = v116[4];
      v88 = v116[5];
      v116[3] = v84;
      v85[4] = v53;
      v85[5] = v48;
      LOBYTE(v81) = *(v85 + 48);
      *(v85 + 48) = 1;
      sub_10005AFEC();
      sub_10005AC3C(v89, v90, v91, v92);

      sub_10005AC9C(v86, v87, v88, v81);
      v94 = v119;
      v93 = v120;
      v95 = v114;
      (*(v119 + 104))(v114, enum case for BonjourService.pairSetup(_:), v120);
      BonjourService.rawValue.getter();
      (*(v94 + 8))(v95, v93);
      v125 = v53;
      v126 = v48;
      v96 = v121;
      (*(v121 + 16))(v113, v69, v117);
      v97 = v115;
      NWListener.Service.init(name:type:domain:txtRecord:)();
      v98 = type metadata accessor for NWListener.Service();
      sub_1000223E8(v97, 0, 1, v98);
      NWListener.service.setter();
      sub_100010E30(sub_100059800, 0);
      NWListener.stateUpdateHandler.setter();
      sub_10000CBD0();
      v99 = swift_allocObject();
      swift_weakInit();
      sub_10000CBD0();
      v100 = swift_allocObject();
      swift_weakInit();
      sub_10000D090();
      v101 = swift_allocObject();
      *(v101 + 16) = v99;
      *(v101 + 24) = v100;

      sub_100010E30(sub_10005ACEC, v101);
      NWListener.newConnectionHandler.setter();

      NWListener.start(queue:)();
      v102 = static os_log_type_t.default.getter();
      v103 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v102))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v127[0] = v105;
        *v104 = 136315394;
        v129 = v84;

        v106 = String.init<A>(describing:)();
        v108 = sub_10000C600(v106, v107, v127);

        *(v104 + 4) = v108;
        *(v104 + 12) = 2080;
        v110 = v125;
        v109 = v126;
        v111 = sub_10000C600(v125, v126, v127);
        sub_10005AC9C(v110, v109, v118, 0);
        *(v104 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v103, v102, "Started listening for network pairing with listener %s, session ID: %s", v104, 0x16u);
        swift_arrayDestroy();
        sub_10000D8D4(v105);
        sub_10000D8D4(v104);
      }

      else
      {
        sub_10005AC9C(v125, v126, v118, 0);
      }

      (*(v96 + 8))(v69, v117);
      goto LABEL_19;
    }

    sub_10005AFEC();
    sub_10005AC9C(v54, v55, v56, v57);
    v58 = static os_log_type_t.error.getter();
    v34 = qword_10009CED0;
    v59 = os_log_type_enabled(qword_10009CED0, v58);
    v60 = v122;
    if (v59)
    {
      v35 = swift_slowAlloc();
      v36 = sub_10000D464();
      v127[0] = v36;
      *v35 = 136446210;
      v129 = v60;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v61 = String.init<A>(describing:)();
      v63 = sub_10000C600(v61, v62, v127);

      *(v35 + 4) = v63;
      v43 = "Unable to start network pairing service. Failed to generate auth tag with error: %{public}s";
      v44 = v58;
      goto LABEL_4;
    }

LABEL_19:
    sub_1000135A0();
    return;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_100059800(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static os_log_type_t.default.getter();
  v7 = qword_10009CED0;
  sub_100013414(&qword_1000999F0, &unk_100077530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100077360;
  (*(v3 + 16))(v5, a1, v2);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100022420();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Manual pairing bonjour listener state changed: %{public}s", 57, 2, v8);
}

uint64_t sub_10005996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v6 = Strong;
    if (*(v4 + 48) == 1)
    {
      v7 = *(v4 + 24);

      if (v6 == v7)
      {
        sub_100059DD0();
      }
    }

    v8 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10009CED0, "Received connection from listener that has since been replaced", 62, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

void sub_100059A7C()
{
  sub_10000D060();
  v1 = v0;
  v35 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v34 = v6 - v5;
  v7 = *(v0 + 24);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (*(v1 + 48))
  {
    if (v9 == 1)
    {

      NWListener.cancel()();

      v7 = *(v1 + 24);
      v8 = *(v1 + 40);
      LOBYTE(v9) = *(v1 + 48);
    }

    else
    {
      if (v7 == 1 && *(v1 + 32) == 0)
      {
        static os_log_type_t.error.getter();
        sub_1000135A0();

        os_log(_:dso:log:_:_:)(v28, v29, v30, v31);
        return;
      }

      LOBYTE(v9) = 2;
    }
  }

  v11 = *(v1 + 32);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 1;
  *(v1 + 48) = 2;
  sub_10005AC9C(v7, v11, v8, v9);
  sub_10000D488(v1 + 16, v37);
  v12 = *(v1 + 16);
  if ((v12 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10005AFD4();
    sub_10000D1B8(v13, v14, &protocol conformance descriptor for ControlChannelConnection);
    Set.Iterator.init(_cocoa:)();
    v12 = v37[3];
    v15 = v37[4];
    v16 = v37[5];
    v17 = v37[6];
    v18 = v37[7];
  }

  else
  {
    v15 = v12 + 56;
    v16 = ~(-1 << *(v12 + 32));
    sub_10000D89C();
    v18 = v19 & v20;

    v17 = 0;
  }

  v21 = (v16 + 64) >> 6;
  v33 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
  v22 = (v3 + 104);
  v23 = (v3 + 8);
  if (v12 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v17;
    v25 = v18;
    v26 = v17;
    if (!v18)
    {
      break;
    }

LABEL_17:
    v27 = (v25 - 1) & v25;
    sub_10000D3B0();
    if (!v16)
    {
LABEL_23:
      sub_1000134CC(v12);
      sub_1000135A0();
      return;
    }

    while (1)
    {
      (*v22)(v34, v33, v35);
      dispatch thunk of ControlChannelConnection.invalidate(for:)();

      (*v23)(v34, v35);
      v17 = v26;
      v18 = v27;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v16 = v36;
        v26 = v17;
        v27 = v18;
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      goto LABEL_23;
    }

    v25 = *(v15 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_100059DD0()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = sub_100013414(&qword_100099B50, &qword_1000779B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  type metadata accessor for ControlChannelConnection.Options.Device();
  sub_10000CBBC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v18 = v17 - v16;
  if (*(v0 + 48) == 1)
  {
    v19 = v15;
    v43 = v18;
    v44 = v13;
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    v20 = type metadata accessor for DiscoveredBonjourAdvert();
    sub_1000223E8(v11, 1, 1, v20);
    v21 = type metadata accessor for NWConnectionControlChannelTransport();
    swift_allocObject();

    v22 = NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)();
    v46[3] = v21;
    v46[4] = &protocol witness table for NWConnectionControlChannelTransport;
    v46[0] = v22;
    v23 = *(v0 + 56);
    v24 = *(v13 + 16);
    v25 = v43;
    v24(v8, v43, v19);
    (*(v4 + 104))(v8, enum case for ControlChannelConnection.Options.device(_:), v2);
    v26 = *(v0 + 104);
    v45[3] = type metadata accessor for SystemKeychainPairingManager();
    v45[4] = sub_10000D1B8(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
    v45[0] = v26;
    type metadata accessor for ControlChannelConnection();

    v27 = v23;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    swift_allocObject();
    v28 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    sub_100022260(v1 + 64, v46);
    dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
    swift_beginAccess();

    sub_10006463C(v45, v28, v29, v30, v31, v32, v33, v34, v43, v44, v45[0]);
    swift_endAccess();

    sub_1000583C0(v35);
    sub_10000CBD0();
    v36 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v37 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v39 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v40 = swift_allocObject();
    swift_weakInit();

    sub_10000D090();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.start()();

    (*(v44 + 8))(v25, v19);
  }

  else
  {
    v42 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, qword_10009CED0, "Rejecting TCP control pairing channel connection as service is no longer enabled", 80, 2, _swiftEmptyArrayStorage);
    NWConnection.cancel()();
  }

  sub_1000135A0();
}

uint64_t sub_10005A2B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_beginAccess();
      sub_10000CE94(v4);
      swift_endAccess();

      sub_1000583C0(v5);
    }
  }

  return result;
}

uint64_t sub_10005A37C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v7)
      {
        v8 = v7;
        sub_100062620();
        if ((v9 & 1) == 0)
        {
          (*(v3 + 104))(v5, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v2);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v3 + 8))(v5, v2);
        }
      }
    }
  }

  return result;
}

void *sub_10005A514(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {
    v4 = a1;
    swift_retain_n();
    v5 = swift_slowAlloc();
    v6 = sub_10000D464();
    v45[0] = v6;
    *v5 = 136446466;
    v46 = sub_10005AFFC();
    v47 = v7;
    v48 = v8;
    LOBYTE(v49) = v9;
    sub_10005AC3C(v46, v7, v8, v9);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000C600(v10, v11, v45);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2048;
    sub_10000D488(v1 + 16, v42);
    v13 = *(v1 + 16);
    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *(v13 + 16);
    }

    *(v5 + 14) = v14;

    a1 = v4;
    _os_log_impl(&_mh_execute_header, v4, v3, "State dump: NetworkPairingService state = %{public}s, connection count = %ld", v5, 0x16u);
    sub_10000CADC(v6);
    sub_10000D8D4(v6);
    sub_10000D8D4(v5);
  }

  sub_10000D488(v1 + 16, v45);
  v15 = *(v1 + 16);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v1 = __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10005AFD4();
    sub_10000D1B8(v16, v17, &protocol conformance descriptor for ControlChannelConnection);
    result = Set.Iterator.init(_cocoa:)();
    v15 = v46;
    v19 = v47;
    v20 = v48;
    v21 = v49;
    v22 = v50;
  }

  else
  {
    v19 = v15 + 56;
    v20 = ~(-1 << *(v15 + 32));
    sub_10000D89C();
    v22 = v23 & v24;

    v21 = 0;
  }

  v25 = (v20 + 64) >> 6;
  while (v15 < 0)
  {
    v30 = __CocoaSet.Iterator.next()();
    if (!v30)
    {
      return sub_1000134CC(v15);
    }

    v43 = v30;
    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v1 = v44;
    v28 = v21;
    v29 = v22;
    if (!v44)
    {
      return sub_1000134CC(v15);
    }

LABEL_19:
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v31))
    {
      v32 = swift_slowAlloc();
      v41 = sub_10000D464();
      v43 = v1;
      v44 = v41;
      *v32 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v33 = String.init<A>(describing:)();
      v40 = v29;
      v35 = v25;
      v36 = v19;
      v37 = v15;
      v38 = a1;
      v39 = sub_10000C600(v33, v34, &v44);

      *(v32 + 4) = v39;
      a1 = v38;
      v15 = v37;
      v19 = v36;
      v25 = v35;
      _os_log_impl(&_mh_execute_header, a1, v31, "State dump: NetworkPairingService control channel connection: %{public}s", v32, 0xCu);
      sub_10000CADC(v41);
      sub_10000D8D4(v41);
      sub_10000D8D4(v32);

      v21 = v28;
      v22 = v40;
    }

    else
    {

      v21 = v28;
      v22 = v29;
    }
  }

  v26 = v21;
  v27 = v22;
  v28 = v21;
  if (v22)
  {
LABEL_15:
    v29 = (v27 - 1) & v27;
    sub_10000D3B0();
    if (!v1)
    {
      return sub_1000134CC(v15);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      return sub_1000134CC(v15);
    }

    v27 = *(v19 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A924()
{

  v1 = sub_10005AFFC();
  sub_10005AC9C(v1, v2, v3, v4);

  sub_10000CADC((v0 + 64));

  return v0;
}

uint64_t sub_10005A964()
{
  sub_10005A924();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_10005A9BC(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10005A9D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005A9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10005AA74(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_10005AB0C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v2;
  }

  sub_100013414(&qword_10009BB30, &qword_1000789C8);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;

    result = sub_10004FEF0(v5, v6);
    if (v10)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v2[6] + 16 * result);
    *v11 = v5;
    v11[1] = v6;
    v12 = (v2[7] + 16 * result);
    *v12 = v8;
    v12[1] = v7;
    v13 = v2[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_12;
    }

    v2[2] = v15;
    if (!--v3)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10005AC3C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return v5;
    }
  }
}

uint64_t sub_10005AC9C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return v5;
    }
  }
}

uint64_t sub_10005AD04(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v7 = result;
  v8 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    if (a3)
    {
      type metadata accessor for ControlChannelConnection();
      if (__CocoaSet.Index.age.getter() == *(v19 + 36))
      {
        __CocoaSet.Index.element.getter();
        swift_dynamicCast();
        sub_10000D1B8(&unk_10009BE10, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
        v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v21 = ~(-1 << *(v19 + 32));
        while (1)
        {
          v7 = v20 & v21;
          if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_10000D1B8(&qword_10009B9E0, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            goto LABEL_18;
          }

          v20 = v7 + 1;
        }
      }

      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0 && 1 << *(v19 + 32) > v7)
    {
      if ((*(v19 + 8 * (v7 >> 6) + 56) >> v7))
      {
        if (*(v19 + 36) != v6)
        {
          __break(1u);
LABEL_18:
        }

        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000669E4();
        }

        v17 = *(*(v19 + 48) + 8 * v7);
        sub_1000681B4(v7);
        *v4 = v19;
        return v17;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:

    __break(1u);
    goto LABEL_27;
  }

  if (a3)
  {
    if (v8 < 0)
    {
      v9 = *v4;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v24 = __CocoaSet.member(for:)();
    type metadata accessor for ControlChannelConnection();

    swift_dynamicCast();
    sub_100067A0C(v9, v25, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
    v17 = v16;

    return v17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_10005B02C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10005B0A4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v16 = v14;

      v15 = a1(&v16);
      if (v3)
      {

        return v14;
      }

      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return 0;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&qword_10009A4B0, &qword_100077B90);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  result = sub_100024DCC(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_1000223E8(a2, 1, 1, v4);
  }

  else
  {
    v11 = sub_100061420(v7, result, v9, 0, a1);
    v13 = v12;
    type metadata accessor for UUID();
    sub_10000CC04();
    (*(v14 + 32))(a2, v7);
    v15 = (a2 + *(v4 + 48));
    *v15 = v11;
    v15[1] = v13;
    return sub_1000223E8(a2, 0, 1, v4);
  }
}

uint64_t sub_10005B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  result = sub_100024DCC(a1);
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_1000223E8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_1000614F4(v6, result, v8, 0, a1);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    *(a2 + *(v4 + 48)) = v10;
    return sub_1000223E8(a2, 0, 1, v4);
  }
}

BOOL sub_10005B4B8(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10005B4E4@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v34 = a4;
  v35 = a1;
  v6 = sub_100013414(&qword_100099488, &unk_100077650) - 8;
  sub_10000D8B0();
  __chkstk_darwin(v7);
  sub_100061F84();
  v8 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000EDF0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  sub_100061E48(a2, v4, &qword_100099488, &unk_100077650);
  v18 = *v4;
  (*(v10 + 32))(v17, &v4[*(v6 + 56)], v8);
  v19 = static os_log_type_t.default.getter();
  v20 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10009CED0, "Handling copy remote unlock key request", 39, 2, _swiftEmptyArrayStorage, v34);
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  v21 = v37;
  sub_1000602A8(v35);
  v22 = (v10 + 8);
  if (v21)
  {
    v37 = v18;
    v23 = *v22;
    (*v22)(v14, v8);
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v25;
      sub_10000CCCC();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v25 = 136315138;
      v38 = v21;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000C600(v26, v27, &v39);

      v29 = v35;
      *(v35 + 1) = v28;
      _os_log_impl(&_mh_execute_header, v20, v24, "Pairing deletion failed with error: %s", v29, 0xCu);
      sub_10000CADC(v36);
      sub_100015FBC();

      sub_100015FBC();
    }

    swift_willThrow();

    v30 = sub_10000D288();
    return (v23)(v30);
  }

  else
  {

    v32 = *v22;
    (*v22)(v14, v8);
    v33 = sub_10000D288();
    return v32(v33);
  }
}

void sub_10005B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000D060();
  v24 = v23;
  v154 = v25;
  v149 = v26;
  v147 = v27;
  v141 = v28;
  v142 = v29;
  v140 = v30;
  v139 = v31;
  v136 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v32);
  sub_100061F84();
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v33);
  sub_10000CBDC();
  v144 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v34);
  v36 = (&v132 - v35);
  v150 = type metadata accessor for UUID();
  sub_10000CBBC();
  v153 = v37;
  v39 = *(v38 + 64);
  v41 = __chkstk_darwin(v40);
  v138 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  sub_100061F58();
  v137 = v42;
  __chkstk_darwin(v43);
  sub_100061F58();
  v146 = v44;
  v46 = __chkstk_darwin(v45);
  v48 = &v132 - v47;
  __chkstk_darwin(v46);
  sub_100061F58();
  v152 = v49;
  v50 = swift_allocObject();
  *(v50 + 2) = v24;
  *(v50 + 3) = a21;
  v145 = a21;
  v151 = v50;
  *(v50 + 4) = a22;
  v51 = v24;
  v148 = a22;

  if (remotePairingIsEnabled())
  {
    is_darwinos = os_variant_is_darwinos();
    v53 = v154;
    if (is_darwinos)
    {
      goto LABEL_3;
    }

    v69 = *sub_10001355C(v154 + 5, v154[8]);
    if ((sub_100057418() & 1) == 0)
    {
      v77 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, qword_10009CED0, "Rejecting tunnel connection as device hasn't unlocked since boot", 64, 2, _swiftEmptyArrayStorage);
      static RemotePairingError.unlockRequired.getter();
      v72 = v51;
      sub_10000EEB4();
      v79 = sub_100061C00(v78, v69, &protocol conformance descriptor for RemotePairingError);
      sub_10000D5AC(v79);
      sub_100061F64();
      sub_10000D294();
      sub_100061C00(v80, v69, v81);
      goto LABEL_12;
    }

    v70 = *sub_10001355C(v53 + 5, v53[8]);
    if (sub_10005625C(0x18))
    {
LABEL_3:
      v54 = v149;
      v143 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v143)
      {
        v55 = v152;
        UUID.init()();
        v56 = static os_log_type_t.default.getter();
        v57 = qword_10009CED0;
        v58 = *(v153 + 16);
        v145 = v153 + 16;
        v134 = v58;
        v58(v48, v55, v150);
        LODWORD(v133) = v56;
        if (os_log_type_enabled(v57, v56))
        {
          v132 = v57;
          v59 = swift_slowAlloc();
          v155[0] = swift_slowAlloc();
          *v59 = 136446978;
          v60 = UUID.uuidString.getter();
          v62 = v61;
          v63 = sub_100061F70();
          v64(v63);
          v65 = sub_10000C600(v60, v62, v155);

          *(v59 + 4) = v65;
          *(v59 + 12) = 2080;
          v66 = [v143 identifier];
          if (v66)
          {
            v67 = v66;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v68 = 0;
          }

          else
          {
            v68 = 1;
          }

          sub_1000223E8(v22, v68, 1, v150);
          v88 = String.init<A>(describing:)();
          v90 = sub_10000C600(v88, v89, v155);

          *(v59 + 14) = v90;
          *(v59 + 22) = 2080;
          v91 = sub_10003DDB0(v143);
          if (v92)
          {
            v93 = v92;
          }

          else
          {
            v91 = 0x6E776F6E6B6E553CLL;
            v93 = 0xE90000000000003ELL;
          }

          v94 = sub_10000C600(v91, v93, v155);

          *(v59 + 24) = v94;
          *(v59 + 32) = 2080;
          type metadata accessor for PeerConnectionInfo();

          v95 = Array.description.getter();
          v97 = v96;

          v98 = sub_10000C600(v95, v97, v155);

          *(v59 + 34) = v98;
          _os_log_impl(&_mh_execute_header, v132, v133, "Creating tunnel %{public}s for host %s (%s) with peer info: %s", v59, 0x2Au);
          swift_arrayDestroy();
          sub_100015FBC();

          sub_100015FBC();

          v53 = v154;
        }

        else
        {
          v86 = sub_100061F70();
          v87(v86);
        }

        v99 = static os_log_type_t.default.getter();
        v100 = powerLog.getter();
        v101 = os_log_type_enabled(v100, v99);
        v135 = v51;
        if (v101)
        {
          v102 = swift_slowAlloc();
          sub_10000CCCC();
          v103 = swift_slowAlloc();
          v155[0] = v103;
          *v102 = 136315138;
          type metadata accessor for PeerConnectionInfo();

          v104 = Array.description.getter();
          v106 = v105;

          v107 = sub_10000C600(v104, v106, v155);

          *(v102 + 4) = v107;
          _os_log_impl(&_mh_execute_header, v100, v99, "Will create a tunnel with peer info: %s", v102, 0xCu);
          sub_10000CADC(v103);
          v53 = v154;
          sub_100015FBC();

          sub_100015FBC();
        }

        v108 = v152;
        v109 = v150;
        v110 = v134;
        v134(v146, v152, v150);
        v136 = v53[4];
        v111 = swift_allocObject();
        swift_weakInit();
        v112 = v137;
        v113 = v108;
        v114 = v109;
        v110(v137, v113, v109);
        v115 = v153;
        v116 = (*(v153 + 80) + 24) & ~*(v153 + 80);
        v133 = v116 + v39;
        v117 = swift_allocObject();
        *(v117 + 16) = v111;
        v118 = v115 + 32;
        v119 = *(v115 + 32);
        v153 = v118;
        v119(v117 + v116, v112, v114);
        v120 = (v117 + ((v116 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
        v121 = v151;
        *v120 = sub_100061D98;
        v120[1] = v121;
        v122 = swift_allocObject();
        swift_weakInit();
        v123 = v138;
        v110(v138, v152, v114);
        v124 = swift_allocObject();
        *(v124 + 16) = v122;
        v119(v124 + v116, v123, v114);
        type metadata accessor for Tunnel(0);
        swift_allocObject();
        v125 = v143;
        v126 = v136;

        sub_10006B578();
        v128 = v127;
        v129 = v154;
        sub_100061F98((v154 + 3), v155);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v129[3];
        v131 = v152;
        sub_10006931C(v128, v152, isUniquelyReferenced_nonNull_native);
        v129[3] = v156;
        swift_endAccess();
        OS_dispatch_queue.assertOnQueueHierarchy()();
        ControlChannelConnection.transport.getter();
        sub_10001355C(v155, v155[3]);
        dispatch thunk of ControlChannelTransport.physicallyConnected.getter();
        sub_10006BFF4();

        v144(v131, v150);
        sub_10000CADC(v155);

        goto LABEL_22;
      }

      static RemotePairingError.tunnelError.getter();
      v72 = v51;
      sub_10000EEB4();
      v83 = sub_100061C00(v82, v54, &protocol conformance descriptor for RemotePairingError);
      sub_10000D5AC(v83);
      sub_100061F64();
      sub_10000D294();
      sub_100061C00(v84, v54, v85);
    }

    else
    {
      v71 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, qword_10009CED0, "Rejecting tunnel connection as device hasn't unlocked recently", 62, 2, _swiftEmptyArrayStorage);
      static RemotePairingError.unlockRequired.getter();
      v72 = v51;
      sub_10000EEB4();
      v74 = sub_100061C00(v73, v70, &protocol conformance descriptor for RemotePairingError);
      sub_10000D5AC(v74);
      sub_100061F64();
      sub_10000D294();
      sub_100061C00(v75, v70, v76);
    }

LABEL_12:
    Error<>.init(_:_:)();
    *v36 = v39;
    swift_storeEnumTagMultiPayload();
    sub_10003AC04();
    sub_100022560(v36, &qword_10009A908, &qword_100078DC0);

LABEL_22:

    sub_1000135A0();
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  __chkstk_darwin(v7);
  v9 = &v11[-v8];
  sub_100061E48(a1, &v11[-v8], &qword_10009A908, &qword_100078DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100022560(v9, &qword_10009A908, &qword_100078DC0);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_100068404(a3);
      swift_endAccess();

      OS_dispatch_queue.assertOnQueueHierarchy()();
    }
  }

  else
  {
    sub_100022560(v9, &qword_10009A908, &qword_100078DC0);
  }

  return a4(a1);
}

void sub_10005C570()
{
  v1 = v0;
  v9 = sub_10002F6B0();
  v10 = v2;
  v15 = 0xD000000000000028;
  v16 = 0x8000000100081580;
  sub_10002F90C();
  v3 = StringProtocol.contains<A>(_:)();

  if (v3)
  {
    IsEnabled = remotePairingIsEnabled();
  }

  else
  {
    IsEnabled = 0;
  }

  static RemoteServiceNames.deviceComputeService.getter();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = IsEnabled;
  v13 = sub_1000615C4;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100062D54;
  v12 = &unk_100091498;
  v7 = _Block_copy(&v9);

  String.utf8CString.getter();

  remote_service_listen_with_device();

  _Block_release(v7);
  if (sub_10006ACDC())
  {
    static RemoteServiceNames.deviceComputeService.getter();
    v13 = sub_1000615D0;
    v14 = v1;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_10005B02C;
    v12 = &unk_1000914C0;
    v8 = _Block_copy(&v9);

    String.utf8CString.getter();

    lockdown_checkin_xpc();

    _Block_release(v8);
  }
}

uint64_t sub_10005C7D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_100013414(&qword_10009BCB8, &unk_100078AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077390;
  *(inited + 32) = static remote_device_type_t.ncmHost.getter();
  *(inited + 36) = static remote_device_type_t.ncmDevice.getter();
  type = remote_device_get_type();
  v8 = sub_10005B4B8(type, inited);
  swift_setDeallocating();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a4 & v8)
    {
      sub_10005CAB4(result, a2);
    }

    else
    {
      v10 = static os_log_type_t.error.getter();
      v11 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v10))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109376;
        *(v12 + 4) = a4 & 1;
        *(v12 + 8) = 1024;
        *(v12 + 10) = v8;
        _os_log_impl(&_mh_execute_header, v11, v10, "RSD tunnel listener not accepting connection, enabled: %{BOOL}d, NCM: %{BOOL}d", v12, 0xEu);
      }

      close(a2);
    }
  }

  return result;
}

uint64_t (*sub_10005C950(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v4 = a4;
  type metadata accessor for SocketTunnelConnection();
  swift_allocObject();
  v7 = a2;
  v8 = SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  *(swift_allocObject() + 16) = v4;
  *a1 = v8;
  return sub_100061EE0;
}

uint64_t sub_10005C9FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return sub_10005CC24(a3, result);
  }

  return result;
}

uint64_t (*sub_10005CA10(uint64_t *a1, void *a2, char a3, uint64_t a4))()
{
  type metadata accessor for LockdownTunnelConnection(0);
  swift_allocObject();
  v8 = sub_1000160A0(a4, a2, a3);
  *(swift_allocObject() + 16) = a4;
  *a1 = v8;
  return sub_100061ED4;
}

uint64_t sub_10005CAB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = *(a1 + 32);
  type metadata accessor for SocketTunnelConnection();
  swift_allocObject();
  v6 = v5;
  v7 = SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = sub_100061CA8;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = sub_100061CA0;
  v9[7] = v4;

  dispatch thunk of TunnelConnection.receiveControlMessage(completion:)();
}

uint64_t sub_10005CC24(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 32);
  type metadata accessor for LockdownTunnelConnection(0);
  swift_allocObject();
  v6 = sub_1000160A0(a2, v5, 0);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = sub_100013504;
  v8[4] = v7;
  v8[5] = a1;
  v8[6] = sub_1000615D8;
  v8[7] = v4;
  sub_100061C00(&qword_10009BC80, type metadata accessor for LockdownTunnelConnection, &unk_1000772C8);

  StreamBasedTunnelConnection.receiveControlMessage(completion:)();
}

uint64_t sub_10005CDBC(char *a1, NSObject *a2, uint64_t a3, char *a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v154 = a7;
  v155 = a6;
  v157 = a5;
  v162 = a4;
  v163 = a3;
  v164 = a1;
  v8 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v159 = *(v8 - 8);
  v160 = v8;
  __chkstk_darwin(v8);
  v158 = &v138 - v9;
  v152 = type metadata accessor for UUID();
  v151 = *(v152 - 8);
  v10 = __chkstk_darwin(v152);
  v149 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v150 = &v138 - v13;
  v148 = v14;
  __chkstk_darwin(v12);
  v156 = (&v138 - v15);
  v147 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v147);
  v146 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v145 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v141 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v19 = __chkstk_darwin(v141);
  v140 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v142 = &v138 - v22;
  __chkstk_darwin(v21);
  v153 = &v138 - v23;
  v24 = sub_100013414(&qword_10009BC90, &unk_100078A70);
  __chkstk_darwin(v24);
  v26 = (&v138 - v25);
  v27 = type metadata accessor for TunnelMessage();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v138 - v32;
  v161 = a2;
  v168[1] = a2;
  sub_100061E48(v164, v26, &qword_10009BC90, &unk_100078A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v26;
    v167[0] = *v26;
    sub_100013414(&unk_10009A930, &unk_100077080);
    swift_willThrowTypedImpl();
    v35 = static os_log_type_t.error.getter();
    v36 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v35))
    {
      v37 = v161;

      v38 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v167[0] = v164;
      *v38 = 136446466;
      v168[0] = v37;
      type metadata accessor for SocketTunnelConnection();
      v39 = v158;
      dispatch thunk of TunnelConnection.identifier.getter();
      v40 = v160;
      v41 = Identifier.description.getter();
      v43 = v42;

      (*(v159 + 8))(v39, v40);
      v44 = sub_10000C600(v41, v43, v167);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      v168[0] = v34;
      swift_errorRetain();
      v45 = String.init<A>(describing:)();
      v47 = sub_10000C600(v45, v46, v167);

      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v35, "Received error reading initial message from device compute tunnel connection %{public}s: %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SocketTunnelConnection();
    v48 = dispatch thunk of TunnelConnection.cancel()();
    (v163)(v48);
  }

  else
  {
    (*(v28 + 32))(v33, v26, v27);
    v139 = *(v28 + 16);
    v139(v31, v33, v27);
    v50 = (*(v28 + 88))(v31, v27);
    v51 = v31;
    v164 = v33;
    if (v50 == enum case for TunnelMessage.additionalConnectionHello(_:))
    {
      (*(v28 + 96))(v31, v27);
      v52 = sub_100013414(&qword_10009BCA0, &unk_100078A98);
      v53 = v153;
      sub_100061B64(&v31[*(v52 + 48)], v153, &qword_10009BC88, &qword_100078A68);
      v54 = v157;
      v55 = swift_beginAccess();
      v56 = *(v54 + 24);
      __chkstk_darwin(v55);
      *(&v138 - 2) = v53;

      v57 = sub_10005B0A4(sub_100061EAC, (&v138 - 4), v56);

      if (v57)
      {
        v163 = v28;
        v58 = *(v57 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
        (v155)(v168, v58, 1);

        v59 = static os_log_type_t.default.getter();
        v60 = qword_10009CED0;
        v61 = v168[0];
        if (os_log_type_enabled(qword_10009CED0, v59))
        {

          v62 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v166 = v156;
          *v62 = 136315394;
          v165 = v61;
          type metadata accessor for SocketTunnelConnection();
          v142 = v27;
          v155 = v60;
          v157 = v61;
          v63 = v158;
          dispatch thunk of TunnelConnection.identifier.getter();
          LODWORD(v154) = v59;
          v64 = v160;
          v65 = Identifier.description.getter();
          v67 = v66;
          v162 = v51;
          v68 = *(v159 + 8);
          v68(v63, v64);
          v69 = sub_10000C600(v65, v67, &v166);

          *(v62 + 4) = v69;
          *(v62 + 12) = 2080;
          v165 = v161;
          dispatch thunk of TunnelConnection.identifier.getter();
          v70 = Identifier.description.getter();
          v72 = v71;

          v68(v63, v64);
          v51 = v162;
          v73 = sub_10000C600(v70, v72, &v166);
          v27 = v142;

          *(v62 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v155, v154, "Created new tunnel connection %s for active tunnel from initial connection %s", v62, 0x16u);
          swift_arrayDestroy();

          v53 = v153;
        }

        type metadata accessor for SocketTunnelConnection();
        dispatch thunk of TunnelConnection.cancel()();
        sub_100013414(&qword_10009BC98, &qword_100078A90);
        v74 = v163;
        v75 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_100077360;
        v77 = v76 + v75;
        v78 = v164;
        v139(v77, v164, v27);
        sub_1000615E8();

        (*(v74 + 8))(v78, v27);
      }

      else
      {
        v118 = static os_log_type_t.error.getter();
        v119 = qword_10009CED0;
        v120 = v142;
        sub_100061E48(v53, v142, &qword_10009BC88, &qword_100078A68);
        if (os_log_type_enabled(v119, v118))
        {
          v121 = v161;

          v122 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v168[0] = v157;
          *v122 = 136315394;
          LODWORD(v155) = v118;
          v156 = v119;
          sub_100061E48(v120, v140, &qword_10009BC88, &qword_100078A68);
          v123 = v28;
          v124 = String.init<A>(describing:)();
          v125 = v27;
          v127 = v126;
          sub_100022560(v120, &qword_10009BC88, &qword_100078A68);
          v128 = v124;
          v28 = v123;
          v129 = sub_10000C600(v128, v127, v168);
          v27 = v125;

          *(v122 + 4) = v129;
          *(v122 + 12) = 2080;
          v166 = v121;
          type metadata accessor for SocketTunnelConnection();
          v130 = v158;
          dispatch thunk of TunnelConnection.identifier.getter();
          v131 = v160;
          v132 = Identifier.description.getter();
          v134 = v133;

          (*(v159 + 8))(v130, v131);
          v135 = sub_10000C600(v132, v134, v168);

          *(v122 + 14) = v135;
          _os_log_impl(&_mh_execute_header, v156, v155, "Received additional connection hello for tunnel with address %s from connection %s but could not find an active tunnel with that address. Discarding connection", v122, 0x16u);
          swift_arrayDestroy();

          v53 = v153;
        }

        else
        {
          sub_100022560(v120, &qword_10009BC88, &qword_100078A68);
        }

        type metadata accessor for SocketTunnelConnection();
        v136 = dispatch thunk of TunnelConnection.cancel()();
        (v163)(v136);
        (*(v28 + 8))(v164, v27);
      }

      sub_100022560(v53, &qword_10009BC88, &qword_100078A68);
      v137 = type metadata accessor for TunnelConnectionPriority();
      return (*(*(v137 - 8) + 8))(v51, v137);
    }

    else
    {
      v153 = v28 + 16;
      v163 = v28;
      v142 = v27;
      v162 = v31;
      sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
      static DispatchQoS.userInteractive.getter();
      (*(v143 + 104))(v145, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v144);
      v167[0] = _swiftEmptyArrayStorage;
      sub_100061C00(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_100013414(&qword_10009A960, &unk_100077B40);
      sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v79 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      UUID.init()();
      v147 = v79;
      (v155)(v168, v79, 1);

      v80 = static os_log_type_t.default.getter();
      v81 = qword_10009CED0;
      v155 = v168[0];
      if (os_log_type_enabled(qword_10009CED0, v80))
      {
        v82 = v161;

        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v154 = v84;
        *v83 = 136315394;
        v166 = v155;
        v167[0] = v84;
        type metadata accessor for SocketTunnelConnection();
        v85 = v158;
        dispatch thunk of TunnelConnection.identifier.getter();
        v86 = v160;
        v87 = Identifier.description.getter();
        v89 = v88;
        LODWORD(v146) = v80;
        v90 = *(v159 + 8);
        v90(v85, v86);
        v91 = sub_10000C600(v87, v89, v167);

        *(v83 + 4) = v91;
        *(v83 + 12) = 2080;
        v166 = v82;
        dispatch thunk of TunnelConnection.identifier.getter();
        v92 = Identifier.description.getter();
        v94 = v93;

        v90(v85, v86);
        v95 = sub_10000C600(v92, v94, v167);

        *(v83 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v81, v146, "Created new tunnel connection %s for active tunnel from initial connection %s", v83, 0x16u);
        swift_arrayDestroy();
      }

      type metadata accessor for SocketTunnelConnection();
      dispatch thunk of TunnelConnection.cancel()();
      v96 = v151;
      v97 = *(v151 + 16);
      v98 = v156;
      v99 = v152;
      v97(v150, v156, v152);
      v100 = v157;
      v101 = *(v157 + 32);
      v102 = swift_allocObject();
      swift_weakInit();
      v103 = v149;
      v97(v149, v98, v99);
      v104 = (*(v96 + 80) + 24) & ~*(v96 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = v102;
      (*(v96 + 32))(v105 + v104, v103, v99);
      type metadata accessor for Tunnel(0);
      swift_allocObject();
      v106 = v147;
      v107 = v101;
      sub_10006B578();
      v109 = v108;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v100 + 24);
      sub_10006931C(v109, v98, isUniquelyReferenced_nonNull_native);
      *(v100 + 24) = v166;
      swift_endAccess();
      OS_dispatch_queue.assertOnQueueHierarchy()();
      sub_100013414(&qword_10009BC98, &qword_100078A90);
      v111 = v163;
      v112 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_100077360;
      v114 = v113 + v112;
      v115 = v164;
      v116 = v142;
      v139(v114, v164, v142);
      sub_1000615E8();

      (*(v96 + 8))(v98, v99);
      v117 = *(v111 + 8);
      v117(v115, v116);

      return (v117)(v162, v116);
    }
  }
}

uint64_t sub_10005E148(void (*a1)(char *, char *, uint64_t), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, id, uint64_t), uint64_t a7)
{
  v126 = a7;
  v127 = a6;
  v130 = a5;
  v131 = a4;
  v132 = a3;
  v133 = a1;
  v134 = a2;
  v7 = type metadata accessor for UUID();
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  v9 = __chkstk_darwin(v7);
  v122 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v123 = &v114 - v11;
  __chkstk_darwin(v10);
  v129 = &v114 - v12;
  v121 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v121);
  v120 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v119 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v115 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v16 = __chkstk_darwin(v115);
  v114 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v116 = &v114 - v19;
  __chkstk_darwin(v18);
  v128 = &v114 - v20;
  v21 = sub_100013414(&qword_10009BC90, &unk_100078A70);
  __chkstk_darwin(v21);
  v23 = (&v114 - v22);
  v24 = type metadata accessor for TunnelMessage();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v114 - v29;
  sub_100061E48(v133, v23, &qword_10009BC90, &unk_100078A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v23;
    v136[0] = *v23;
    sub_100013414(&unk_10009A930, &unk_100077080);
    swift_willThrowTypedImpl();
    v32 = static os_log_type_t.error.getter();
    v33 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v32))
    {
      v34 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_100013414(&qword_10009B730, &unk_100078A80);
      v35 = Identifier.description.getter();
      v37 = sub_10000C600(v35, v36, v136);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v137[0] = v31;
      swift_errorRetain();
      v38 = String.init<A>(describing:)();
      v40 = sub_10000C600(v38, v39, v136);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v33, v32, "Received error reading initial message from device compute tunnel connection %{public}s: %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    sub_100019290();
    v132();
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    v133 = *(v25 + 16);
    v133(v28, v30, v24);
    v42 = v24;
    if ((*(v25 + 88))(v28, v24) == enum case for TunnelMessage.additionalConnectionHello(_:))
    {
      (*(v25 + 96))(v28, v24);
      v43 = sub_100013414(&qword_10009BCA0, &unk_100078A98);
      v44 = v128;
      sub_100061B64(&v28[*(v43 + 48)], v128, &qword_10009BC88, &qword_100078A68);
      v45 = v130;
      v46 = swift_beginAccess();
      v47 = *(v45 + 24);
      __chkstk_darwin(v46);
      *(&v114 - 2) = v44;

      v48 = sub_10005B0A4(sub_100061BB4, (&v114 - 4), v47);

      if (v48)
      {
        v131 = v25 + 16;
        v132 = v30;
        v49 = *(v48 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
        v127(v137, v49, 1);

        v50 = static os_log_type_t.default.getter();
        v51 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v50))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v116 = v42;
          v135 = v53;
          *v52 = 136315394;
          sub_100013414(&qword_10009B730, &unk_100078A80);
          v115 = v25;
          v54 = Identifier.description.getter();
          v56 = sub_10000C600(v54, v55, &v135);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2080;
          v57 = Identifier.description.getter();
          v59 = sub_10000C600(v57, v58, &v135);

          *(v52 + 14) = v59;
          v25 = v115;
          _os_log_impl(&_mh_execute_header, v51, v50, "Created new tunnel connection %s for active tunnel from initial connection %s", v52, 0x16u);
          swift_arrayDestroy();
          v42 = v116;
        }

        sub_100019290();
        sub_100013414(&qword_10009BC98, &qword_100078A90);
        v60 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_100077360;
        v62 = (v61 + v60);
        v63 = v132;
        v133(v62, v132, v42);
        sub_10006187C();

        (*(v25 + 8))(v63, v42);

        v64 = v128;
      }

      else
      {
        v97 = static os_log_type_t.error.getter();
        v98 = qword_10009CED0;
        v99 = v116;
        sub_100061E48(v44, v116, &qword_10009BC88, &qword_100078A68);
        if (os_log_type_enabled(v98, v97))
        {
          v100 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v137[0] = v133;
          *v100 = 136315394;
          LODWORD(v130) = v97;
          sub_100061E48(v99, v114, &qword_10009BC88, &qword_100078A68);
          v101 = v42;
          v102 = String.init<A>(describing:)();
          v103 = v99;
          v104 = v30;
          v105 = v25;
          v107 = v106;
          sub_100022560(v103, &qword_10009BC88, &qword_100078A68);
          v108 = v102;
          v42 = v101;
          v44 = v128;
          v109 = sub_10000C600(v108, v107, v137);
          v25 = v105;
          v30 = v104;

          *(v100 + 4) = v109;
          *(v100 + 12) = 2080;
          sub_100013414(&qword_10009B730, &unk_100078A80);
          v110 = Identifier.description.getter();
          v112 = sub_10000C600(v110, v111, v137);

          *(v100 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v98, v130, "Received additional connection hello for tunnel with address %s from connection %s but could not find an active tunnel with that address. Discarding connection", v100, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100022560(v99, &qword_10009BC88, &qword_100078A68);
        }

        sub_100019290();
        v132();
        (*(v25 + 8))(v30, v42);
        v64 = v44;
      }

      sub_100022560(v64, &qword_10009BC88, &qword_100078A68);
      v113 = type metadata accessor for TunnelConnectionPriority();
      return (*(*(v113 - 8) + 8))(v28, v113);
    }

    else
    {
      v131 = v25 + 16;
      v132 = v30;
      v115 = v25;
      v116 = v24;
      v128 = v28;
      sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
      static DispatchQoS.userInteractive.getter();
      (*(v117 + 104))(v119, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v118);
      v136[0] = _swiftEmptyArrayStorage;
      sub_100061C00(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_100013414(&qword_10009A960, &unk_100077B40);
      sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      UUID.init()();
      v121 = v65;
      v127(v137, v65, 1);

      v66 = static os_log_type_t.default.getter();
      v67 = qword_10009CED0;
      v68 = v137[0];
      if (os_log_type_enabled(qword_10009CED0, v66))
      {
        v69 = swift_slowAlloc();
        v136[0] = swift_slowAlloc();
        *v69 = 136315394;
        sub_100013414(&qword_10009B730, &unk_100078A80);
        v70 = Identifier.description.getter();
        v72 = sub_10000C600(v70, v71, v136);

        *(v69 + 4) = v72;
        *(v69 + 12) = 2080;
        v73 = Identifier.description.getter();
        v75 = sub_10000C600(v73, v74, v136);

        *(v69 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v67, v66, "Created new tunnel connection %s for active tunnel from initial connection %s", v69, 0x16u);
        swift_arrayDestroy();
      }

      sub_100019290();
      v77 = v124;
      v76 = v125;
      v78 = *(v124 + 16);
      v134 = v68;
      v79 = v129;
      v78(v123, v129, v125);
      v80 = v130;
      v127 = *(v130 + 32);
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = v122;
      v78(v122, v79, v76);
      v83 = (*(v77 + 80) + 24) & ~*(v77 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = v81;
      (*(v77 + 32))(v84 + v83, v82, v76);
      type metadata accessor for Tunnel(0);
      swift_allocObject();
      v85 = v121;
      v86 = v127;
      sub_10006B578();
      v88 = v87;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v135 = *(v80 + 24);
      sub_10006931C(v88, v79, isUniquelyReferenced_nonNull_native);
      *(v80 + 24) = v135;
      swift_endAccess();
      OS_dispatch_queue.assertOnQueueHierarchy()();
      sub_100013414(&qword_10009BC98, &qword_100078A90);
      v90 = v115;
      v91 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100077360;
      v93 = (v92 + v91);
      v94 = v132;
      v95 = v116;
      v133(v93, v132, v116);
      sub_10006187C();

      (*(v77 + 8))(v79, v76);
      v96 = *(v90 + 8);
      v96(v94, v95);

      return (v96)(v128, v95);
    }
  }
}

uint64_t sub_10005F228(void *a1, uint64_t a2)
{
  v22 = a2;
  v2 = type metadata accessor for IPv6Address();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100013414(&qword_10009BCA8, &qword_100078AA8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = *(v5 + 56);
  sub_100061E48(v13, v7, &qword_10009BC88, &qword_100078A68);
  sub_100061E48(v22, &v7[v14], &qword_10009BC88, &qword_100078A68);
  if (sub_100022484(v7, 1, v2) != 1)
  {
    sub_100061E48(v7, v11, &qword_10009BC88, &qword_100078A68);
    if (sub_100022484(&v7[v14], 1, v2) != 1)
    {
      v17 = v20;
      v16 = v21;
      (*(v21 + 32))(v20, &v7[v14], v2);
      sub_100061C00(&qword_10009BCB0, &type metadata accessor for IPv6Address, &protocol conformance descriptor for IPv6Address);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v16 + 8);
      v18(v17, v2);
      sub_100022560(v13, &qword_10009BC88, &qword_100078A68);
      v18(v11, v2);
      sub_100022560(v7, &qword_10009BC88, &qword_100078A68);
      return v15 & 1;
    }

    sub_100022560(v13, &qword_10009BC88, &qword_100078A68);
    (*(v21 + 8))(v11, v2);
    goto LABEL_6;
  }

  sub_100022560(v13, &qword_10009BC88, &qword_100078A68);
  if (sub_100022484(&v7[v14], 1, v2) != 1)
  {
LABEL_6:
    sub_100022560(v7, &qword_10009BCA8, &qword_100078AA8);
    v15 = 0;
    return v15 & 1;
  }

  sub_100022560(v7, &qword_10009BC88, &qword_100078A68);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_10005F5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000EB00();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100061F98(result + 24, &v5);
    sub_100068404(a3);
    swift_endAccess();

    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  return result;
}

uint64_t sub_10005F680(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.default.getter();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Cancelling all control channel initiated tunnels", 48, 2, _swiftEmptyArrayStorage);

  sub_10000EB00();
  swift_beginAccess();
  v5 = *(v2 + 24);
  sub_10004C218();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  while (v8)
  {
LABEL_7:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(*(v5 + 56) + ((v12 << 9) | (8 * v14))) + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator))
    {

      sub_10006C704();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_10005F7D4()
{
  sub_10000D060();
  v1 = v0;
  v2 = sub_100013414(&qword_10009BC60, &qword_100078A48);
  sub_10000D368(v2);
  sub_10000D8B0();
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = static os_log_type_t.default.getter();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Cancelling all tunnels", 22, 2, _swiftEmptyArrayStorage);

  while (1)
  {
    sub_100061F98(v1 + 24, &v19);
    v12 = *(v1 + 24);
    if (*(v12 + 16))
    {
      v13 = 0;
      v14 = (v12 + 64);
      for (i = ((1 << *(v12 + 32)) + 63) >> 6; i; ++v14)
      {
        if (*v14)
        {
          break;
        }

        v13 -= 64;
        --i;
      }

      sub_100013414(&qword_10009BC78, &qword_100078A60);
      Dictionary._Variant.remove(at:)();
      v16 = v5;
      v17 = 0;
    }

    else
    {
      v16 = v5;
      v17 = 1;
    }

    sub_1000223E8(v16, v17, 1, v6);
    swift_endAccess();
    OS_dispatch_queue.assertOnQueueHierarchy()();
    if (sub_100022484(v5, 1, v6) == 1)
    {
      break;
    }

    sub_100061B64(v5, v9, &qword_10009BC68, &qword_100078A50);
    sub_10006C704();
    sub_100022560(v9, &qword_10009BC68, &qword_100078A50);
  }

  sub_100022560(v5, &qword_10009BC60, &qword_100078A48);
  sub_1000135A0();
}

void sub_10005FA30()
{
  sub_10000D060();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000EDF0();
  v77 = v7 - v8;
  __chkstk_darwin(v9);
  sub_100061F58();
  v75 = v10;
  v83 = sub_100013414(&qword_10009A8F8, &unk_100077D70);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v11);
  v84 = &v71[-v12];
  v13 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v14 = sub_10000D368(v13);
  __chkstk_darwin(v14);
  sub_10000EDF0();
  v80 = v15 - v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v71[-v19];
  __chkstk_darwin(v18);
  sub_100061F58();
  v87 = v21;
  sub_10000EB00();
  swift_beginAccess();
  v22 = *(v0 + 24) + 64;
  sub_10004C218();
  v25 = v24 & v23;
  v78 = v0;
  v79 = (v26 + 63) >> 6;
  v85 = (v5 + 16);
  v74 = (v5 + 32);
  v81 = (v5 + 8);
  v90 = v27;

  v28 = 0;
  *&v29 = 136315138;
  v73 = v29;
  v86 = v2;
  while (v25)
  {
LABEL_7:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = *(*(v90 + 56) + ((v28 << 9) | (8 * v31)));
    v33 = *(v32 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
    if (v33)
    {

      v88 = v33;
      v34 = [v88 identifier];
      v89 = v32;
      if (v34)
      {
        v35 = v34;
        v36 = v87;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v36 = v87;
      }

      sub_1000223E8(v36, v37, 1, v3);
      v82 = *v85;
      (v82)(v20, v2, v3);
      sub_1000223E8(v20, 0, 1, v3);
      v38 = v84;
      v39 = *(v83 + 48);
      sub_100061E48(v36, v84, &qword_1000999E8, &unk_100077D60);
      sub_100061E48(v20, &v38[v39], &qword_1000999E8, &unk_100077D60);
      sub_100061FB0(v38);
      if (v41)
      {
        sub_100022560(v20, &qword_1000999E8, &unk_100077D60);
        sub_100022560(v36, &qword_1000999E8, &unk_100077D60);
        sub_100061FB0(&v38[v39]);
        if (!v41)
        {
          goto LABEL_19;
        }

        sub_100022560(v38, &qword_1000999E8, &unk_100077D60);
        v2 = v86;
LABEL_21:
        v76 = v20;
        v57 = static os_log_type_t.default.getter();
        v58 = v77;
        (v82)(v77, v2, v3);
        sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
        v59 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v59, v57))
        {
          v60 = swift_slowAlloc();
          sub_10000CCCC();
          v82 = swift_slowAlloc();
          v91[0] = v82;
          *v60 = v73;
          sub_100061F20();
          sub_100061C00(&qword_10009B0E0, v61, &protocol conformance descriptor for UUID);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v3;
          v65 = v64;
          v66 = v58;
          v67 = v57;
          v68 = v63;
          (*v81)(v66, v63);
          v69 = sub_10000C600(v62, v65, v91);

          *(v60 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v59, v67, "Cancelling tunnel associated with host %s", v60, 0xCu);
          sub_10000CADC(v82);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {

          v68 = v3;
          (*v81)(v58, v3);
        }

        v70 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
        sub_100061F98(v78 + 24, v91);
        sub_100068404(v89 + v70);
        swift_endAccess();

        OS_dispatch_queue.assertOnQueueHierarchy()();
        sub_10006C704();
        v2 = v86;
        v3 = v68;
        v20 = v76;
        goto LABEL_25;
      }

      v40 = v80;
      sub_100061E48(v38, v80, &qword_1000999E8, &unk_100077D60);
      sub_100061FB0(&v38[v39]);
      if (v41)
      {
        sub_10000D4EC();
        sub_100022560(v42, v43, v44);
        sub_10000D4EC();
        sub_100022560(v45, v46, v47);
        (*v81)(v40, v3);
LABEL_19:
        sub_100022560(v38, &qword_10009A8F8, &unk_100077D70);
        v2 = v86;
        goto LABEL_25;
      }

      v48 = v75;
      (*v74)(v75, &v38[v39], v3);
      sub_100061F20();
      sub_100061C00(&qword_10009A900, v49, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *v81;
      (*v81)(v48, v3);
      sub_10000D4EC();
      sub_100022560(v51, v52, v53);
      sub_10000D4EC();
      sub_100022560(v54, v55, v56);
      v50(v80, v3);
      v2 = v86;
      sub_100022560(v84, &qword_1000999E8, &unk_100077D60);
      if (v72)
      {
        goto LABEL_21;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v79)
    {

      sub_1000135A0();
      return;
    }

    v25 = *(v22 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100060154()
{
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v0);
  sub_10001ACC4();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    sub_100061C00(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    static Error<>.permissionDenied.getter();
    v2 = sub_100061C00(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    sub_100061F38(v2);
    Error<>.init(_:_:)();
    return swift_willThrow();
  }

  return result;
}

void sub_1000602A8(uint64_t a1)
{
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v4);
  sub_10001ACC4();
  v5 = sub_100013414(&qword_10009BC60, &qword_100078A48);
  sub_10000D368(v5);
  sub_10000D8B0();
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  sub_100060154();
  if (!v2)
  {
    sub_10000EB00();
    v9 = swift_beginAccess();
    v10 = *(v1 + 24);
    __chkstk_darwin(v9);
    *(&v32 - 2) = a1;

    v11 = sub_100060BEC(sub_100060BCC, &v32 - 4, v10);

    sub_10005B350(v11, v8);

    v12 = sub_100013414(&qword_10009BC68, &qword_100078A50);
    if (sub_100022484(v8, 1, v12) == 1)
    {
      sub_100022560(v8, &qword_10009BC60, &qword_100078A48);
      static RemotePairingError.deviceNotFound.getter();
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v33 = 0xD00000000000001ALL;
      v34 = 0x8000000100081420;
      v13._countAndFlagsBits = RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter();
      String.append(_:)(v13);

      v14 = sub_100061C00(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      sub_100061F38(v14);
      sub_10000D294();
      sub_100061C00(v15, &type metadata accessor for RemotePairingError, v16);
      Error<>.init(_:_:)();
      swift_willThrow();
    }

    else
    {
      v17 = *&v8[*(v12 + 48)];
      type metadata accessor for UUID();
      sub_10000CC04();
      (*(v18 + 8))(v8);
      v19 = *(v17 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
      if (v19)
      {
        v20 = v19;
        CUPairedPeer.remoteUnlockKey.getter();
        if (v21 >> 60 == 15)
        {
          static RemotePairingError.pairingRecordMissingInfo.getter();
          sub_10000EEB4();
          v23 = sub_100061C00(v22, v20, &protocol conformance descriptor for RemotePairingError);
          sub_100061F38(v23);
          sub_100061F64();
          sub_10000D294();
          v26 = sub_100061C00(v24, v20, v25);
          sub_10000D0C0(v26, 0xD000000000000023, 0x8000000100081470);
          swift_willThrow();
        }

        else
        {
          RemoteUnlockDeviceKeyForTunnelResponse.init(deviceKey:)();
        }
      }

      else
      {
        static RemotePairingError.invalidOperation.getter();
        sub_10000EEB4();
        v28 = sub_100061C00(v27, v12, &protocol conformance descriptor for RemotePairingError);
        sub_100061F38(v28);
        sub_100061F64();
        sub_10000D294();
        v31 = sub_100061C00(v29, v12, v30);
        sub_10000D0C0(v31, 0xD00000000000002CLL, 0x8000000100081440);
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1000606C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  *&v10[*(v5 + 56)] = v11;
  sub_100061E48(v10, v8, &qword_10009BC68, &qword_100078A50);

  v14 = sub_10006B244();
  v16 = v15;

  v17 = RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter();
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100022560(v10, &qword_10009BC68, &qword_100078A50);
  }

  else
  {
    sub_100022560(v10, &qword_10009BC68, &qword_100078A50);

    v20 = 0;
  }

  (*(v13 + 8))(v8, v12);
  return v20 & 1;
}

void sub_1000608D8(NSObject *a1)
{
  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 64;
  sub_10004C218();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v27 = v3;
  log = a1;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v11 = v10;
LABEL_6:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * v12)));

    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v14))
    {
      sub_10000CCCC();
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v15 = 136446722;
      v16 = UUID.uuidString.getter();
      v18 = sub_10000C600(v16, v17, &v29);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = *(v13 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
      v20 = String.init<A>(describing:)();
      v22 = sub_10000C600(v20, v21, &v29);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2082;
      v23 = sub_10006B244();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v23 = 0x296C6C756E28;
        v25 = 0xE600000000000000;
      }

      v26 = sub_10000C600(v23, v25, &v29);
      v3 = v27;

      *(v15 + 24) = v26;
      a1 = log;
      _os_log_impl(&_mh_execute_header, log, v14, "State dump: %{public}s initiated by %{public}s, RSD name %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    v10 = v11;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_100060B3C()
{

  sub_10000CADC((v0 + 40));
  return v0;
}

uint64_t sub_100060B74()
{
  sub_100060B3C();

  return _swift_deallocClassInstance(v0, 81, 7);
}

unint64_t *sub_100060BEC(uint64_t (*a1)(char *, uint64_t *), unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_100060FF8(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_100066980(0, v8, v9);
  v10 = sub_100060D70(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_100060D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v31 = a4;
  v24 = a2;
  v25 = a1;
  v5 = type metadata accessor for UUID();
  result = __chkstk_darwin(v5);
  v32 = a3;
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a3 + 64);
  v26 = 0;
  v27 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v29 = v7 + 16;
  v30 = v7;
  v28 = (v7 + 8);
  while (v13)
  {
    v34 = (v13 - 1) & v13;
    v15 = __clz(__rbit64(v13)) | (v9 << 6);
    v16 = v33;
LABEL_11:
    v19 = v32;
    (*(v30 + 16))(v16, v32[6] + *(v30 + 72) * v15, v5);
    v36 = *(v19[7] + 8 * v15);

    v20 = v35;
    v21 = v31(v16, &v36);
    v35 = v20;
    if (v20)
    {

      return (*v28)(v16, v5);
    }

    v22 = v21;

    result = (*v28)(v16, v5);
    v13 = v34;
    if (v22)
    {
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_100061088(v25, v24, v26, v32);
      }
    }
  }

  v17 = v9;
  v16 = v33;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_100061088(v25, v24, v26, v32);
    }

    v18 = *(v27 + 8 * v9);
    ++v17;
    if (v18)
    {
      v34 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100060FF8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100060D70(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100061088(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100013414(&qword_10009BC70, &qword_100078A58);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_100061C00(&unk_10009BE40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100061420(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = *(*(a5 + 56) + 16 * a2);

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000614F4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

void sub_1000615E8()
{
  sub_10000D060();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  __chkstk_darwin(v9);
  sub_10001ACC4();
  v24 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = v14 - v13;
  v27[3] = type metadata accessor for SocketTunnelConnection();
  v27[4] = &protocol witness table for SocketTunnelConnection;
  v27[0] = v8;
  sub_100022260(v27, v26);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_100010E18(v26, v16 + 24);
  *(v16 + 64) = v6;
  v25[4] = v2;
  v25[5] = v16;
  sub_10000D9B8();
  sub_100061EF0(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = v23;
  v18 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  sub_100061F08();
  sub_100061C00(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D4EC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v21 = sub_10000D288();
  v22(v21);
  (*(v11 + 8))(v15, v24);

  sub_10000CADC(v27);
  sub_1000135A0();
}

void sub_10006187C()
{
  sub_10000D060();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  __chkstk_darwin(v9);
  sub_10001ACC4();
  v24 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = v14 - v13;
  v27[3] = type metadata accessor for LockdownTunnelConnection(0);
  v27[4] = sub_100061C00(&unk_100099820, type metadata accessor for LockdownTunnelConnection, &unk_100077260);
  v27[0] = v8;
  sub_100022260(v27, v26);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_100010E18(v26, v16 + 24);
  *(v16 + 64) = v6;
  v25[4] = v2;
  v25[5] = v16;
  sub_10000D9B8();
  sub_100061EF0(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = v23;
  v18 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  sub_100061F08();
  sub_100061C00(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D4EC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v21 = sub_10000D288();
  v22(v21);
  (*(v11 + 8))(v15, v24);

  sub_10000CADC(v27);
  sub_1000135A0();
}

uint64_t sub_100061B64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100040170(a1, a2, a3, a4);
  sub_10000CC04();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_100061C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100061C48()
{

  sub_10000CADC((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100061CB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100061D34(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_10000D368(v3);
  return sub_10005F5F0(a1, *(v1 + 16), v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

uint64_t sub_100061DA4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10005C3F8(a1, v5, v1 + v4, v6);
}

uint64_t sub_100061E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100040170(a1, a2, a3, a4);
  sub_10000CC04();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100061F38(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100061F70()
{
  result = v1;
  *(v2 - 224) = *(v0 + 8);
  return result;
}

uint64_t sub_100061F98(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100061FD0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_100061FF0()
{
  sub_10000D060();
  v2 = v1;
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v3);
  sub_10006A274();
  sub_10001CE74();
  v5 = sub_10006A2E0(v4);
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [v2 *(v0 + 2424)];
  if (!v7)
  {
    sub_10006A1BC();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v8 = v7;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v12 & v11)
  {
    sub_10006A1B0();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = sub_10000D5CC();
    sub_10000ECF4(v9, v10);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v12 & v11))
  {
    v13 = sub_10000D5CC();
    sub_10000EC4C(v13, v14);
    v15 = sub_100040164();
    sub_10000EC4C(v15, v16);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v2);

    goto LABEL_22;
  }

LABEL_15:
  v17 = sub_10000D5CC();
  sub_10000ECF4(v17, v18);
  v19 = sub_100040164();
  sub_10000ECF4(v19, v20);
LABEL_16:
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v21))
  {
    v22 = sub_10000D030();
    v23 = sub_10000D464();
    v36 = v23;
    *v22 = 136315138;
    v24 = [v2 identifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 0;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 1;
    }

    v30 = sub_10006A230(v26, v29, v27, v28);
    v32 = sub_10000C600(v30, v31, &v36);

    *(v22 + 4) = v32;
    sub_10006A190(&_mh_execute_header, v33, v34, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v23);
    sub_10000D8D4(v23);
    sub_10000D8D4(v22);
  }

LABEL_22:
  sub_1000135A0();
}

void sub_100062308()
{
  sub_10000D060();
  v2 = v1;
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v3);
  sub_10006A274();
  sub_10001CE74();
  v5 = sub_10006A2E0(v4);
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [v2 *(v0 + 2424)];
  if (!v7)
  {
    sub_10006A1BC();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v8 = v7;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v12 & v11)
  {
    sub_10006A1B0();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = sub_10000D5CC();
    sub_10000ECF4(v9, v10);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v12 & v11))
  {
    v13 = sub_10000D5CC();
    sub_10000EC4C(v13, v14);
    v15 = sub_100040164();
    sub_10000EC4C(v15, v16);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v2);

    goto LABEL_22;
  }

LABEL_15:
  v17 = sub_10000D5CC();
  sub_10000ECF4(v17, v18);
  v19 = sub_100040164();
  sub_10000ECF4(v19, v20);
LABEL_16:
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v21))
  {
    v22 = sub_10000D030();
    v23 = sub_10000D464();
    v36 = v23;
    *v22 = 136315138;
    v24 = [v2 identifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 0;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 1;
    }

    v30 = sub_10006A230(v26, v29, v27, v28);
    v32 = sub_10000C600(v30, v31, &v36);

    *(v22 + 4) = v32;
    sub_10006A190(&_mh_execute_header, v33, v34, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v23);
    sub_10000D8D4(v23);
    sub_10000D8D4(v22);
  }

LABEL_22:
  sub_1000135A0();
}

void sub_100062620()
{
  sub_10000D060();
  v2 = v1;
  sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v3);
  sub_10006A274();
  sub_10001CE74();
  v5 = sub_10006A2E0(v4);
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = [v2 *(v0 + 2424)];
  if (!v7)
  {
    sub_10006A1BC();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v8 = v7;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v12 & v11)
  {
    sub_10006A1B0();
    if (!(!v12 & v11))
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = sub_10000D5CC();
    sub_10000ECF4(v9, v10);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v12 & v11))
  {
    v13 = sub_10000D5CC();
    sub_10000EC4C(v13, v14);
    v15 = sub_100040164();
    sub_10000EC4C(v15, v16);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v2);

    goto LABEL_22;
  }

LABEL_15:
  v17 = sub_10000D5CC();
  sub_10000ECF4(v17, v18);
  v19 = sub_100040164();
  sub_10000ECF4(v19, v20);
LABEL_16:
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v21))
  {
    v22 = sub_10000D030();
    v23 = sub_10000D464();
    v36 = v23;
    *v22 = 136315138;
    v24 = [v2 identifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 0;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v28 = v26;
      v29 = 1;
    }

    v30 = sub_10006A230(v26, v29, v27, v28);
    v32 = sub_10000C600(v30, v31, &v36);

    *(v22 + 4) = v32;
    sub_10006A190(&_mh_execute_header, v33, v34, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v23);
    sub_10000D8D4(v23);
    sub_10000D8D4(v22);
  }

LABEL_22:
  sub_1000135A0();
}

uint64_t sub_100062938(void *a1)
{
  v2 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  __chkstk_darwin(v2);
  v4 = &v29 - v3;
  sub_10001CE74();
  v29 = v5;
  v6 = [v5 publicKey];
  if (v6)
  {
    v7 = v6;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = [a1 publicKey];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v10 >> 60 == 15)
    {
      if (v15 >> 60 != 15)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v15 >> 60 != 15)
    {
      sub_10000EC4C(v8, v10);
      sub_10000EC4C(v13, v15);
      v16 = static Data.== infix(_:_:)();
      sub_10000ECF4(v13, v15);
      sub_10000ECF4(v13, v15);
      sub_10000ECF4(v8, v10);
      sub_10000ECF4(v8, v10);
      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_100021370(a1);

      return 1;
    }
  }

  else
  {
    if (v10 >> 60 == 15)
    {
LABEL_9:
      sub_10000ECF4(v8, v10);
      goto LABEL_10;
    }

    v13 = 0;
    v15 = 0xF000000000000000;
  }

LABEL_15:
  sub_10000ECF4(v8, v10);
  sub_10000ECF4(v13, v15);
LABEL_16:
  v17 = static os_log_type_t.default.getter();
  v18 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = [a1 identifier];
    if (v21)
    {
      v22 = v21;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = type metadata accessor for UUID();
      v24 = 0;
    }

    else
    {
      v23 = type metadata accessor for UUID();
      v24 = 1;
    }

    sub_1000223E8(v4, v24, 1, v23);
    v26 = String.init<A>(describing:)();
    v28 = sub_10000C600(v26, v27, &v30);

    *(v19 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v17, "Newly configured connection's resolved peer %s no longer exists in the keychain", v19, 0xCu);
    sub_10000CADC(v20);
  }

  return 0;
}

void sub_100062D54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100062DC8()
{
  sub_10000D060();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v10 = v9 - v8;
  type metadata accessor for ControlChannelConnection.Options.Device();
  sub_10000CBBC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v17 = v16 - v15;
  if (*(v1 + 176))
  {
    v18 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10009CED0, "Rejecting remote XPC control pairing channel connection as service is shutting down", 83, 2, _swiftEmptyArrayStorage);
LABEL_6:
    dispatch thunk of XPCConnection.cancel()();
    goto LABEL_7;
  }

  v52 = v14;
  sub_10000D488(v1 + 24, &v58);

  v20 = sub_100061FD0(v19);

  if (v20 > 49)
  {
    v48 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, qword_10009CED0, "Rejecting remote XPC control channel as we already have max number of concurrent RSD control channels", 101, 2, _swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  swift_beginAccess();
  v21 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = *(v1 + 32);
  sub_10006983C(v21, v21, isUniquelyReferenced_nonNull_native);
  *(v1 + 32) = v57[0];
  swift_endAccess();
  ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
  v23 = type metadata accessor for RemoteXPCControlChannelTransport();
  swift_allocObject();

  v54 = v23;
  v55 = &protocol witness table for RemoteXPCControlChannelTransport;
  v53[0] = RemoteXPCControlChannelTransport.init(xpcConnection:to:)();
  v24 = *(v1 + 40);
  (*(v12 + 16))(v10, v17, v52);
  (*(v6 + 104))(v10, enum case for ControlChannelConnection.Options.device(_:), v4);
  v25 = *(v1 + 184);
  v57[3] = type metadata accessor for SystemKeychainPairingManager();
  v57[4] = sub_10000D200(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
  v57[0] = v25;
  type metadata accessor for ControlChannelConnection();
  v50 = v53[0];

  v26 = v24;

  static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
  swift_allocObject();
  v27 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
  type metadata accessor for MetadataService(0);
  sub_10000D200(&qword_10009B090, type metadata accessor for MetadataService, &unk_1000782C8);

  dispatch thunk of ControlChannelConnection.customDeviceMetadataProvider.setter();
  sub_10000CBD0();
  v28 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v29 = swift_allocObject();
  swift_weakInit();
  sub_10000CCD8();
  v30 = swift_allocObject();
  v30[2] = v21;
  v30[3] = v28;
  v30[4] = v29;
  v55 = sub_10000C268;
  v56 = v30;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 1107296256;
  v53[2] = sub_10000C200;
  v54 = &unk_100091900;
  v31 = _Block_copy(v53);
  v32 = v21;

  remote_device_set_disconnected_callback();
  _Block_release(v31);
  sub_100022260(v1 + 48, v53);
  dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
  sub_100022260(v1 + 88, v53);
  dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
  swift_beginAccess();

  sub_10006463C(v57, v27, v33, v34, v35, v36, v37, v38, v49, v50, v17);
  swift_endAccess();

  sub_10000D9E8();
  sub_10000CBD0();
  v39 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v40 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000CCD8();
  v42 = swift_allocObject();
  v42[2] = v39;
  v42[3] = v40;
  v42[4] = v41;

  dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

  sub_10000CBD0();
  v43 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v44 = swift_allocObject();
  swift_weakInit();

  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v43;

  dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

  v46 = *sub_10001355C((v1 + 128), *(v1 + 152));

  sub_1000555E0(0xD00000000000002ALL, 0x8000000100081900, v46, v27, v47);

  (*(v12 + 8))(v51, v52);
LABEL_7:
  sub_1000135A0();
}

uint64_t sub_1000634C0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v7)
      {
        v8 = v7;
        if ((sub_100062938(v7) & 1) == 0)
        {
          (*(v3 + 104))(v5, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v2);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v3 + 8))(v5, v2);
        }
      }
    }
  }

  return result;
}

void sub_100063658()
{
  static RemoteServiceNames.tunnelService.getter();
  sub_10000CBD0();
  v0 = swift_allocObject();
  swift_weakInit();
  v2[4] = sub_100064634;
  v2[5] = v0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_100062D54;
  v2[3] = &unk_100091888;
  v1 = _Block_copy(v2);

  sub_10001AD28();
  String.utf8CString.getter();

  remote_service_listen_with_device();

  _Block_release(v1);
}

uint64_t sub_10006375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    xpc_remote_connection_version_flags = remote_device_get_xpc_remote_connection_version_flags();
    if (xpc_remote_connection_version_flags)
    {
      if ((xpc_remote_connection_version_flags & 0x8000000000000000) == 0)
      {
LABEL_6:
        v5 = xpc_remote_connection_create_with_connected_fd();
        xpc_remote_connection_set_local_service_version();
        type metadata accessor for RemoteXPCPeerConnection();
        static RemoteXPCConnection.unsafePeer(from:)();
        swift_dynamicCastClassUnconditional();

        sub_100062DC8();
      }

      __break(1u);
    }

    result = _remotepairing_xpc_remote_connection_get_failsafe_version_flags();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_10006386C()
{
  sub_10000D060();
  v34 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v33 = v5 - v4;
  if (*(v0 + 176))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + 176) = 1;
    sub_10000D488(v0 + 24, v36);
    v11 = *(v0 + 24);
    if ((v11 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D31C();
      sub_10000D200(v12, v13, &protocol conformance descriptor for ControlChannelConnection);
      sub_10000D048();
      Set.Iterator.init(_cocoa:)();
      v11 = v36[3];
      v14 = v36[4];
      v16 = v36[5];
      v15 = v36[6];
      v17 = v36[7];
    }

    else
    {
      sub_10006A00C();
      v14 = v11 + 56;
      v16 = ~v18;
      sub_10000D89C();
      v17 = v19 & v20;

      v15 = 0;
    }

    v21 = (v16 + 64) >> 6;
    v32 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v22 = (v2 + 104);
    v23 = (v2 + 8);
    if (v11 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v24 = v15;
      v25 = v15;
      if (!v17)
      {
        break;
      }

LABEL_13:
      sub_100040048();
      v28 = v27 & v26;
      v30 = *(*(v11 + 48) + ((v25 << 9) | (8 * v29)));

      if (!v30)
      {
LABEL_19:
        v31 = sub_10000CC14();
        sub_1000134CC(v31);
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v22)(v33, v32, v34);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v23)(v33, v34);
        v15 = v25;
        v17 = v28;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v25 = v15;
          v28 = v17;
          if (v35)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v21)
      {
        goto LABEL_19;
      }

      ++v24;
      if (*(v14 + 8 * v25))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100063B54(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {

    v4 = sub_10000D030();
    *v4 = 134217984;
    sub_10000D488(v1 + 24, v32);
    v5 = *(v1 + 24);
    if ((v5 & 0xC000000000000001) != 0)
    {

      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v5 + 16);
    }

    *(v4 + 4) = v6;

    _os_log_impl(&_mh_execute_header, a1, v3, "State dump: NetworkPairingService connection count = %ld", v4, 0xCu);
    sub_10000D8D4(v4);
  }

  sub_10000D488(v1 + 24, v35);
  v7 = *(v1 + 24);
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_10006A374();
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D31C();
    sub_10000D200(v8, v9, &protocol conformance descriptor for ControlChannelConnection);
    Set.Iterator.init(_cocoa:)();
    v7 = v36;
    v10 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
  }

  else
  {
    sub_10006A00C();
    v10 = v7 + 56;
    v11 = ~v14;
    sub_10000D89C();
    v13 = v15 & v16;

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  while (v7 < 0)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v33 = v25, type metadata accessor for ControlChannelConnection(), swift_dynamicCast(), v24 = v34, v19 = v12, v22 = v13, !v34))
    {
LABEL_23:
      v30 = sub_10001AD28();
      sub_1000134CC(v30);
      return;
    }

LABEL_19:
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v26))
    {
      v27 = sub_10000D030();
      v31 = sub_10000D464();
      v33 = v24;
      v34 = v31;
      *v27 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v28 = String.init<A>(describing:)();
      sub_10000C600(v28, v29, &v34);
      sub_10006A394();
      *(v27 + 4) = a1;
      _os_log_impl(&_mh_execute_header, a1, v26, "State dump: RSDService control channel connection: %{public}s", v27, 0xCu);
      sub_10000CADC(v31);
      sub_10000D8D4(v31);
      sub_10000D8D4(v27);
    }

    v12 = v19;
    v13 = v22;
  }

  v18 = v12;
  v19 = v12;
  if (v13)
  {
LABEL_15:
    sub_100040048();
    v22 = v21 & v20;
    v24 = *(*(v7 + 48) + ((v19 << 9) | (8 * v23)));

    if (!v24)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_23;
    }

    ++v18;
    if (*(v10 + 8 * v19))
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100063EBC()
{

  sub_10000CADC((v0 + 48));
  sub_10000CADC((v0 + 88));
  sub_10000CADC((v0 + 128));

  return v0;
}

uint64_t sub_100063F14()
{
  sub_100063EBC();

  return _swift_deallocClassInstance(v0, 192, 7);
}

unint64_t sub_100063FD8()
{
  sub_10000D890();
  v2 = AnyHashable._rawHashValue(seed:)(*(v0 + 40));

  return sub_1000642A4(v1, v2);
}

void sub_100064018()
{
  sub_10000D890();
  type metadata accessor for UUID();
  sub_10000D200(&unk_10009BE40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10001AD28();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000644C0();
}

unint64_t sub_1000640E4(uint64_t a1)
{
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100064368(a1, v2);
}

unint64_t sub_100064190(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100064460(v1, v2);
}

void sub_1000641D8()
{
  sub_10000D890();
  type metadata accessor for XPCEventPublisher.Token();
  sub_10000D200(&qword_10009BE50, &type metadata accessor for XPCEventPublisher.Token, &protocol conformance descriptor for XPCEventPublisher.Token);
  sub_10001AD28();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000644C0();
}

unint64_t sub_1000642A4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100069E34(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10002269C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100064368(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100064460(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1000644C0()
{
  sub_10000D060();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  sub_10000CBBC();
  v10 = v9;
  sub_10000D8B0();
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v23 = v0 + 64;
  v19 = v0;
  sub_10006A00C();
  v15 = ~v14;
  for (i = v5 & ~v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_10000D200(v20, v21, v22);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  sub_1000135A0();
}

uint64_t sub_10006480C(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    sub_10000CD58();

    sub_10006A2BC();
    __CocoaSet.member(for:)();
    sub_10006A3CC();
    if (v3)
    {

      type metadata accessor for PairableHostsBrowseRegistration();
      v8 = swift_dynamicCast();
      return sub_10006A0B8(v8, v9, v10, v11, v12, v13, v14, v15, v30, v31, v33);
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_100064FE4(v2, result + 1);
        sub_100069F80();
        if (!(!v26 & v25))
        {
          v27 = sub_10006A368(v24);
          sub_1000658BC(v27);
          v2 = v33;
        }

        sub_100066070(v28, v2);

        *v4 = v2;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D3F4();
    sub_10000D200(v17, v18, &unk_100078090);
    HashableByObjectIdentity.hash(into:)();
    Hasher._finalize()();
    sub_10006A00C();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v7 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_10006A03C();
        sub_1000663FC(v29, v22, v7);
        *v4 = v33;
        *a1 = a2;
        return 1;
      }

      v23 = static HashableByObjectIdentity.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v19 = v22 + 1;
    }

    *a1 = *(*(v7 + 48) + 8 * v22);

    return 0;
  }

  return result;
}

uint64_t sub_100064DD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009BE20, &qword_100078B50);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for ControlChannelConnection();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10006562C(v3 + 1);
      }

      v2 = v15;
      sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100064FE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009B9F0, &qword_100078BD0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for PairableHostsBrowseRegistration();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1000658BC(v3 + 1);
      }

      v2 = v15;
      Hasher.init(_seed:)();
      sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
      HashableByObjectIdentity.hash(into:)();
      result = Hasher._finalize()();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100065204(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&unk_10009BF20, &unk_100078BC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for BluetoothLEConnectionControlChannelTransport();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100065B50(v3 + 1);
      }

      v2 = v15;
      sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100065418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009BE80, &unk_1000788B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for SystemXPCPeerConnection();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100065DE0(v3 + 1);
      }

      v2 = v15;
      sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10006562C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009BE20, &qword_100078B50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100066980(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    type metadata accessor for ControlChannelConnection();
    sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000658BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009B9F0, &qword_100078BD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100066980(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
    HashableByObjectIdentity.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100065B50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&unk_10009BF20, &unk_100078BC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100066980(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    type metadata accessor for BluetoothLEConnectionControlChannelTransport();
    sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100065DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009BE80, &unk_1000788B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100066980(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100066070(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
  HashableByObjectIdentity.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10006615C(uint64_t a1, uint64_t a2)
{
  sub_10006A318();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(0);
  v9 = sub_10006A2BC();
  sub_10000D200(v9, v10, v3);
  sub_10006A030();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10006A00C();
  v11 = _HashTable.nextHole(atOrAfter:)();
  *(v5 + 56 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
  *(*(v5 + 48) + 8 * v11) = v7;
  ++*(v5 + 16);
  sub_10006A330();
}

void sub_10006621C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10006562C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100066B28(v6 + 1);
LABEL_10:
      v12 = *v3;
      type metadata accessor for ControlChannelConnection();
      sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_10000D200(&qword_10009B9E0, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1000669F8(&qword_10009BE20, &qword_100078B50);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1000663FC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000658BC(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_100066D9C(v7 + 1);
LABEL_10:
      v13 = *v3;
      Hasher.init(_seed:)();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);
      HashableByObjectIdentity.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = static HashableByObjectIdentity.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1000669F8(&qword_10009B9F0, &qword_100078BD0);
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = result;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }
}

void sub_1000665C0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100065B50(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100067010(v6 + 1);
LABEL_10:
      v12 = *v3;
      type metadata accessor for BluetoothLEConnectionControlChannelTransport();
      sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_10000D200(&qword_10009BF18, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1000669F8(&unk_10009BF20, &unk_100078BC0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1000667A0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100065DE0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100067284(v6 + 1);
LABEL_10:
      v12 = *v3;
      type metadata accessor for SystemXPCPeerConnection();
      sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1000669F8(&qword_10009BE80, &unk_1000788B0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_100066980(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100078AC0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1000669F8(uint64_t a1, uint64_t a2)
{
  sub_10006A3E4();
  v3 = v2;
  sub_100013414(v4, v5);
  v6 = *v2;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        *(*(v8 + 48) + 8 * (v18 | (v12 << 6))) = *(*(v6 + 48) + 8 * (v18 | (v12 << 6)));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      ++v19;
      if (*(v6 + 56 + 8 * v12))
      {
        sub_100040048();
        v16 = v21 & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v8;
    sub_10006A348();
  }
}

uint64_t sub_100066B28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009BE20, &qword_100078B50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for ControlChannelConnection();
        sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100066D9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009B9F0, &qword_100078BD0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        type metadata accessor for PairableHostsBrowseRegistration();
        sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);

        HashableByObjectIdentity.hash(into:)();
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100067010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&unk_10009BF20, &unk_100078BC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for BluetoothLEConnectionControlChannelTransport();
        sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100067284(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100013414(&qword_10009BE80, &unk_1000788B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for SystemXPCPeerConnection();
        sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000674F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D3F4();
    sub_10000D200(v8, v9, &unk_100078090);
    HashableByObjectIdentity.hash(into:)();
    Hasher._finalize()();
    sub_10006A00C();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v3 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        break;
      }

      v14 = static HashableByObjectIdentity.== infix(_:_:)();

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000669F8(&qword_10009B9F0, &qword_100078BD0);
          v16 = v18;
        }

        v7 = *(*(v16 + 48) + 8 * v13);
        sub_1000681FC(v13);
        *v2 = v18;
        return v7;
      }

      v10 = v13 + 1;
    }

    return 0;
  }

  sub_10006A374();

  v4 = __CocoaSet.contains(_:)();

  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = sub_10000D048();
  v7 = sub_100067BD4(v5, v6);

  return v7;
}

void sub_100067A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10006A294();
  sub_10000D890();

  v25 = __CocoaSet.count.getter();
  v26 = swift_unknownObjectRetain();
  v27 = sub_100064DD0(v26, v25);
  type metadata accessor for ControlChannelConnection();
  sub_10000D31C();
  sub_10000D200(v28, v29, &protocol conformance descriptor for ControlChannelConnection);

  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10006A00C();
  v32 = ~v31;
  while (1)
  {
    v33 = v30 & v32;
    if (((*(v27 + 56 + (((v30 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v32)) & 1) == 0)
    {
      break;
    }

    sub_10000D31C();
    sub_10000D200(&qword_10009B9E0, v34, &protocol conformance descriptor for ControlChannelConnection);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      sub_100069EC4();
      sub_10000D6B4(v33, v35, v36, &type metadata accessor for ControlChannelConnection, &protocol conformance descriptor for ControlChannelConnection);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v24 = v27;
        sub_100022960();
        return;
      }

      __break(1u);
      break;
    }

    v30 = v33 + 1;
  }

  __break(1u);
}

uint64_t sub_100067BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100064FE4(v5, v4);
  v13 = v6;
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);

  HashableByObjectIdentity.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    v10 = static HashableByObjectIdentity.== infix(_:_:)();

    if (v10)
    {

      v11 = *(*(v6 + 48) + 8 * v9);
      sub_1000681FC(v9);
      if (static HashableByObjectIdentity.== infix(_:_:)())
      {
        *v3 = v13;
        return v11;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100067D84(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100065204(v4, v3);
  v11 = v5;
  type metadata accessor for BluetoothLEConnectionControlChannelTransport();
  sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_10000D200(&qword_10009BF18, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v9 = *(*(v5 + 48) + 8 * v8);
      sub_10000D6B4(v8, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport, &protocol conformance descriptor for BluetoothLEConnectionControlChannelTransport);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v2 = v11;
        return v9;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100067F9C(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100065418(v4, v3);
  v11 = v5;
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {

      v9 = *(*(v5 + 48) + 8 * v8);
      sub_10000D6B4(v8, &type metadata accessor for SystemXPCPeerConnection, &unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        *v2 = v11;
        return v9;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000681FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        type metadata accessor for PairableHostsBrowseRegistration();
        sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078090);

        HashableByObjectIdentity.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10006889C(uint64_t a1, uint64_t a2)
{
  sub_10006A40C();
  v4 = v3;
  v7 = sub_10004FEF0(v5, v6);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    v11 = *(*v2 + 24);
    sub_100013414(&qword_10009BE60, &qword_100078B68);
    sub_10006A030();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);

    v12 = *(v21 + 56);
    v13 = type metadata accessor for XPCEventPublisher.Token();
    sub_10000CC04();
    (*(v14 + 32))(v4, v12 + *(v14 + 72) * v9, v13);
    _NativeDictionary._delete(at:)();
    *v2 = v21;
  }

  else
  {
    type metadata accessor for XPCEventPublisher.Token();
  }

  sub_10006A3F8();

  return sub_1000223E8(v15, v16, v17, v18);
}

void sub_100068B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A3E4();
  sub_10006A1C8(v7, v8, v9);
  sub_10000CCA4();
  if (v12)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  sub_100013414(&qword_10009B0C0, &unk_100077550);
  v15 = sub_10006A0A8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    sub_10004FEF0(v6, v5);
    sub_100069FCC();
    if (!v18)
    {
      goto LABEL_14;
    }

    v13 = v17;
  }

  if (v14)
  {
    sub_10006A3AC();
    sub_10006A348();

    sub_10000E8A4(v19, v20);
  }

  else
  {
    sub_100069968(v13, v6, v5, v3, *v4);
    sub_10006A348();
  }
}

_OWORD *sub_100068C84(_OWORD *a1, uint64_t a2)
{
  sub_10006A1F4(a1, a2);
  sub_100063FD8();
  sub_10000CCA4();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_100013414(&qword_10009BE88, &unk_100078B90);
  v10 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100063FD8();
    sub_100069FCC();
    if (!v13)
    {
      goto LABEL_12;
    }

    v8 = v12;
  }

  v14 = *v2;
  if (v9)
  {
    v15 = sub_10006A3AC();

    return sub_10000E8A4(v15, v16);
  }

  else
  {
    sub_100069E34(a2, v18);
    return sub_1000699C4(v8, v18, a1, v14);
  }
}

void sub_100068D98()
{
  sub_10000D060();
  sub_100069F2C(v0, v1);
  type metadata accessor for UUID();
  sub_10000CBBC();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  sub_10006A080();
  sub_100064018();
  sub_10000CCA4();
  if (v4)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v5 = v3;
  sub_100013414(&qword_10009BE78, &unk_100078B80);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_100064018();
    sub_10006A220();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v8 = sub_10006A06C();
    v9(v8);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069A40(v10, v11, v12, v13, v14);
    sub_1000135A0();
  }
}

void sub_100068ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A3E4();
  v5 = v4;
  v7 = v6;
  v8 = sub_10006A1F4(v6, v4);
  sub_1000640E4(v8);
  sub_10000CCA4();
  if (v11)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for SystemXPCPeerConnection();
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_100013414(&unk_10009BF40, &qword_100078BD8);
  v14 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    sub_1000640E4(v5);
    sub_100069FCC();
    if (!v17)
    {
      goto LABEL_12;
    }

    v12 = v16;
  }

  v18 = *v3;
  if (v13)
  {
    *(v18[7] + v12) = v7 & 1;
    sub_10006A348();
  }

  else
  {
    sub_100069B00(v12, v5, v7 & 1, v18);
    sub_10006A348();
  }
}

uint64_t sub_100068FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A3E4();
  v5 = v4;
  v7 = v6;
  v8 = sub_10006A1F4(v6, v4);
  sub_1000640E4(v8);
  sub_10000CCA4();
  if (v11)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for SystemXPCPeerConnection();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100013414(&unk_10009BF00, &unk_100078BB0);
  v14 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    sub_1000640E4(v5);
    sub_100069FCC();
    if (!v17)
    {
      goto LABEL_14;
    }

    v12 = v16;
  }

  v18 = *v3;
  if (v13)
  {
    *(v18[7] + 8 * v12) = v7;
    sub_10006A348();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100069B44(v12, v5, v7, v18);
    sub_10006A348();
  }
}

void sub_1000690D0()
{
  sub_10000D060();
  sub_100069F2C(v0, v1);
  type metadata accessor for UUID();
  sub_10000CBBC();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  sub_10006A080();
  sub_100064018();
  sub_10000CCA4();
  if (v4)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v5 = v3;
  sub_100013414(&qword_10009BE98, &unk_100078BA0);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_100064018();
    sub_10006A220();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v8 = sub_10006A06C();
    v9(v8);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069D40(v10, v11, v12, v13, v14);
    sub_1000135A0();
  }
}

_OWORD *sub_100069218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A3E4();
  v4 = v3;
  sub_100064190(v3);
  sub_10000CCA4();
  if (v6)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  sub_100013414(&qword_10009BE90, &qword_100078468);
  v8 = sub_10000D660();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    sub_100064190(v4);
    if ((v7 & 1) != (v10 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v7)
  {
    sub_10006A3AC();
    sub_10006A348();

    return sub_10000E8A4(v11, v12);
  }

  else
  {
    sub_10006A348();

    return sub_100069B88(v15, v16, v17, v18);
  }
}

void sub_100069330()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26 = v7;
  v25 = type metadata accessor for UUID();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v13 = v12 - v11;
  sub_100064018();
  sub_10000CCA4();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  sub_100013414(v4, v2);
  v19 = sub_10006A0A8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20))
  {
    goto LABEL_5;
  }

  sub_100064018();
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v21;
LABEL_5:
  v23 = *v0;
  if (v18)
  {
    *(*(v23 + 56) + 8 * v17) = v26;
    sub_1000135A0();
  }

  else
  {
    (*(v9 + 16))(v13, v6, v25);
    sub_100069BF0(v17, v13, v26, v23);
    sub_1000135A0();
  }
}

void sub_1000694B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10006A3E4();
  sub_10006A1C8(v14, v15, v16);
  sub_10000CCA4();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_100013414(&qword_10009BE60, &qword_100078B68);
  v22 = sub_10006A0A8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v23))
  {
    goto LABEL_5;
  }

  v24 = sub_10006A35C();
  v25 = sub_10004FEF0(v24, v12);
  if ((v21 & 1) != (v26 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v25;
LABEL_5:
  if (v21)
  {
    type metadata accessor for XPCEventPublisher.Token();
    sub_10000CC04();
    sub_10006A348();

    v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    sub_100069C90(v20, v13, v12, v10, *v11);
    sub_10006A348();
  }
}