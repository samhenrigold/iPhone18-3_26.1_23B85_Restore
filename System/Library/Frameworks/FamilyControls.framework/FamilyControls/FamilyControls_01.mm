void *sub_10001CA64(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100003720(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003720(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10001CBAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006C038, &qword_100056D50);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10001CCE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003720(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_10001CEBC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003720(&qword_10006BFC8, &qword_100056D08);
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

void sub_10001CF68(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

Swift::Int sub_10001D0B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003720(&qword_10006BFD0, &unk_100056D10);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_10001D378()
{
  v1 = v0;
  sub_100003720(&qword_10006BFD0, &unk_100056D10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_10001D4F0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001D650()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D6AC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D6EC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_10001D720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001D738()
{
  result = qword_10006BF30;
  if (!qword_10006BF30)
  {
    sub_1000075FC(&qword_10006C0E0, &unk_100056C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF30);
  }

  return result;
}

uint64_t sub_10001D7F8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10001D848()
{
  sub_1000032BC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001D888(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001D8AC()
{
  sub_1000032BC((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001D904()
{
  sub_1000032BC((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001D958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10001D9BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001DB14(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446210;
    v14 = v9;
    v26 = v9;
    v15 = v14;
    v16 = [v14 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = a2;
    v18 = v17;
    v25 = v5;
    v20 = v19;

    v9 = v26;
    v21 = sub_100002CB4(v18, v20, &v28);

    *(v12 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling incoming invitation %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    (*(v6 + 8))(v8, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return sub_100014F50(v9, v22, v23);
}

uint64_t sub_10001DD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003720(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DDCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

_OWORD *sub_10001DE0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001DE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a1 + 32); ; i += 5)
  {
    v7 = i[3];
    v8 = i[4];
    sub_100007504(i, v7);
    (*(v8 + 56))(v25, v7, v8);
    v9 = [*sub_100007504(v25 v25[3])];
    sub_1000032BC(v25);
    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = [v9 emailAddress];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a2 && v14 == a3)
      {

        return v5;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_23;
      }
    }

    v17 = [v9 phoneNumber];
    if (v17)
    {
      break;
    }

LABEL_4:
    if (v26 == ++v5)
    {
      return 0;
    }
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 != a2 || v21 != a3)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      return v5;
    }

    goto LABEL_4;
  }

LABEL_23:

  return v5;
}

unint64_t sub_10001E018(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 40 * result;
  sub_100003720(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E0F8(void *a1, void *a2, uint64_t a3)
{
  v214 = 0;
  v227 = type metadata accessor for Logger();
  v211 = *(v227 - 8);
  v5 = __chkstk_darwin(v227);
  v7 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v217 = &v205 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v205 - v11;
  v13 = __chkstk_darwin(v10);
  v210 = &v205 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v205 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v205 - v19;
  v21 = __chkstk_darwin(v18);
  v209 = &v205 - v22;
  __chkstk_darwin(v21);
  v208 = &v205 - v23;
  v24 = a2[3];
  v25 = a2[4];
  sub_100007504(a2, v24);
  v26 = (*(*(v25 + 8) + 8))(v24);
  v27 = [v26 zoneID];

  v28 = [v27 zoneName];
  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v228 = v29;

  v30 = a2[3];
  v31 = a2[4];
  v215 = a2;
  sub_100007504(a2, v30);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = a1[3];
  v34 = a1[4];
  sub_100007504(a1, v33);
  result = (*(v34 + 16))(v33, v34);
  v37 = result;
  v38 = *(result + 16);
  v39 = a1;
  v216 = a1;
  v223 = v7;
  v219 = v38;
  if (!v38)
  {

    v172 = 0;
    v43 = a1;
LABEL_113:
    v173 = *(v32 + 16);
    v174 = v223;
    if (!v173)
    {
LABEL_130:

      return v172 & 1;
    }

    v175 = v32 + 32;
    v230 = (v211 + 8);
    *&v171 = 136446466;
    v229 = v171;
    v226 = v32;
    while (1)
    {
      sub_10001D958(v175, &v239);
      v178 = v240;
      v179 = v241;
      sub_100007504(&v239, v240);
      if ((*(v179 + 32))(v178, v179) != 1)
      {
        v180 = v240;
        v181 = v241;
        sub_100007504(&v239, v240);
        if (((*(v181 + 24))(v180, v181) & 1) == 0)
        {
          v182 = v240;
          v183 = v241;
          sub_100007504(&v239, v240);
          (*(v183 + 56))(&v237, v182, v183);
          v184 = [*sub_100007504(&v237 v238)];
          sub_1000032BC(&v237);
          if (!v184)
          {
            goto LABEL_126;
          }

          v185 = [v184 emailAddress];
          if (!v185)
          {
            v185 = [v184 phoneNumber];
            if (!v185)
            {

LABEL_126:
              static Logger.syncEngine.getter();
              sub_10001D958(&v239, &v237);
              v196 = v228;

              v197 = Logger.logObject.getter();
              v198 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v197, v198))
              {
                v199 = swift_slowAlloc();
                *&v232 = swift_slowAlloc();
                *v199 = v229;
                *(v199 + 4) = sub_100002CB4(v224, v196, &v232);
                *(v199 + 12) = 2082;
                sub_10001D958(&v237, &v234);
                sub_100003720(&qword_10006BF90, &unk_100056CD0);
                v200 = v43;
                v201 = String.init<A>(describing:)();
                v203 = v202;
                sub_1000032BC(&v237);
                v204 = sub_100002CB4(v201, v203, &v232);
                v174 = v223;

                *(v199 + 14) = v204;
                v43 = v200;
                _os_log_impl(&_mh_execute_header, v197, v198, "Failed to share %{public}s with %{public}s", v199, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                sub_1000032BC(&v237);
              }

              (*v230)(v174, v227);
              goto LABEL_117;
            }
          }

          v186 = v185;
          v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v189 = v188;

          v190 = v217;
          static Logger.syncEngine.getter();
          v191 = v228;

          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v237 = swift_slowAlloc();
            *v194 = v229;
            v195 = sub_100002CB4(v187, v189, &v237);

            *(v194 + 4) = v195;
            *(v194 + 12) = 2082;
            *(v194 + 14) = sub_100002CB4(v224, v191, &v237);
            _os_log_impl(&_mh_execute_header, v192, v193, "Adding %{public}s to %{public}s", v194, 0x16u);
            swift_arrayDestroy();

            v43 = v216;

            (*v230)(v217, v227);
          }

          else
          {

            (*v230)(v190, v227);
          }

          v174 = v223;
          v176 = v43[3];
          v177 = v43[4];
          sub_100007504(v43, v176);
          (*(v177 + 40))(&v239, v176, v177);

          v172 = 1;
        }
      }

LABEL_117:
      sub_1000032BC(&v239);
      v175 += 40;
      if (!--v173)
      {
        goto LABEL_130;
      }
    }
  }

  v206 = v20;
  v207 = v17;
  v212 = v12;
  v222 = 0;
  v40 = 0;
  v41 = result + 32;
  v220 = (v211 + 8);
  *&v36 = 136446466;
  v213 = v36;
  *&v36 = 136446210;
  v205 = v36;
  v221 = result;
  v42 = v219;
  v225 = result + 32;
  v43 = v39;
LABEL_6:
  if (v40 >= *(v37 + 16))
  {
    goto LABEL_132;
  }

  sub_10001D958(v41 + 40 * v40, &v239);
  v46 = v240;
  v47 = v241;
  sub_100007504(&v239, v240);
  if ((*(v47 + 32))(v46, v47) == 1)
  {
    goto LABEL_5;
  }

  v48 = v240;
  v49 = v241;
  sub_100007504(&v239, v240);
  if ((*(v49 + 24))(v48, v49))
  {
    goto LABEL_5;
  }

  v50 = v240;
  v51 = v241;
  sub_100007504(&v239, v240);
  (*(v51 + 56))(&v237, v50, v51);
  v52 = [*sub_100007504(&v237 v238)];
  sub_1000032BC(&v237);
  if (!v52)
  {
    goto LABEL_36;
  }

  v53 = [v52 emailAddress];
  if (!v53)
  {
    v53 = [v52 phoneNumber];
    if (!v53)
    {

LABEL_36:
      v89 = v212;
      static Logger.syncEngine.getter();
      sub_10001D958(&v239, &v237);
      v90 = v228;

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *&v232 = v230;
        *v93 = v213;
        sub_10001D958(&v237, &v234);
        sub_100003720(&qword_10006BF90, &unk_100056CD0);
        v94 = v32;
        v95 = String.init<A>(describing:)();
        v96 = v43;
        v98 = v97;
        sub_1000032BC(&v237);
        v99 = sub_100002CB4(v95, v98, &v232);
        v43 = v96;

        *(v93 + 4) = v99;
        v32 = v94;
        v42 = v219;
        *(v93 + 12) = 2082;
        *(v93 + 14) = sub_100002CB4(v224, v90, &v232);
        _os_log_impl(&_mh_execute_header, v91, v92, "Removing %{public}s from %{public}s", v93, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000032BC(&v237);
      }

      (*v220)(v89, v227);
      v41 = v225;
      v44 = v43[3];
      v45 = v43[4];
      sub_100007504(v43, v44);
      (*(v45 + 48))(&v239, v44, v45);
      v222 = 1;
      v37 = v221;
      goto LABEL_5;
    }
  }

  v218 = v52;
  v54 = v32;
  v55 = v53;
  *&v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v230 = v56;

  v57 = v215[3];
  v58 = v215[4];
  sub_100007504(v215, v57);
  result = (*(v58 + 16))(v57, v58);
  v59 = result;
  v60 = *(result + 16);
  if (!v60)
  {
LABEL_31:

    v80 = v210;
    static Logger.syncEngine.getter();
    v81 = v230;

    v82 = v228;

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *v85 = v213;
      v86 = sub_100002CB4(v229, v81, &v237);

      *(v85 + 4) = v86;
      *(v85 + 12) = 2082;
      *(v85 + 14) = sub_100002CB4(v224, v82, &v237);
      _os_log_impl(&_mh_execute_header, v83, v84, "Removing %{public}s from %{public}s", v85, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*v220)(v80, v227);
    v43 = v216;
    v37 = v221;
    v41 = v225;
    v87 = v216[3];
    v88 = v216[4];
    sub_100007504(v216, v87);
    (*(v88 + 48))(&v239, v87, v88);

    v222 = 1;
    v32 = v54;
    goto LABEL_108;
  }

  v61 = 0;
  v62 = result + 32;
  while (v61 < *(v59 + 16))
  {
    sub_10001D958(v62, &v234);
    v63 = v235;
    v64 = v236;
    sub_100007504(&v234, v235);
    (*(v64 + 56))(&v232, v63, v64);
    v65 = [*sub_100007504(&v232 v233)];
    sub_1000032BC(&v232);
    if (!v65)
    {
      goto LABEL_15;
    }

    v66 = [v65 emailAddress];
    if (v66)
    {
      v67 = v66;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      if (v229 == v68 && v230 == v70)
      {
        v100 = v230;

        goto LABEL_42;
      }

      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v72)
      {

LABEL_40:
        v100 = v230;
LABEL_42:
        sub_10001D888(&v234, &v237);

        v101 = v54;
        v102 = v54;
        v103 = v214;
        v104 = sub_10001DE1C(v102, v229, v100);
        v106 = v105;
        v214 = v103;

        v41 = v225;
        if (v106)
        {
          v107 = v101[2];
          v104 = v107;
          goto LABEL_48;
        }

        v107 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_141;
        }

        v109 = v101 + 2;
        v108 = v101[2];
        if (v107 != v108)
        {
          v129 = 40 * v104 + 72;
          while (1)
          {
            if (v107 >= v108)
            {
              goto LABEL_133;
            }

            v130 = v101;
            sub_10001D958(v101 + v129, &v234);
            v131 = v235;
            v132 = v236;
            sub_100007504(&v234, v235);
            (*(v132 + 56))(&v232, v131, v132);
            v133 = [*sub_100007504(&v232 v233)];
            sub_1000032BC(&v232);
            if (!v133)
            {
              goto LABEL_85;
            }

            v134 = [v133 emailAddress];
            if (v134)
            {
              v135 = v134;
              v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v138 = v137;

              if (v229 == v136 && v230 == v138)
              {

LABEL_95:
                result = sub_1000032BC(&v234);
LABEL_96:
                v101 = v130;
                goto LABEL_66;
              }

              v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v140)
              {
                goto LABEL_94;
              }
            }

            v141 = [v133 phoneNumber];
            if (!v141)
            {
              break;
            }

            v142 = v141;
            v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v145 = v144;

            if (v229 == v143 && v230 == v145)
            {

LABEL_94:

              goto LABEL_95;
            }

            v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = sub_1000032BC(&v234);
            if (v147)
            {
              goto LABEL_96;
            }

            if (v107 != v104)
            {
LABEL_86:
              if (v104 < 0)
              {
                goto LABEL_134;
              }

              v148 = *v109;
              if (v104 >= *v109)
              {
                goto LABEL_135;
              }

              v101 = v130;
              result = sub_10001D958(&v130[5 * v104 + 4], &v234);
              if (v107 >= v148)
              {
                goto LABEL_136;
              }

              sub_10001D958(v130 + v129, &v232);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_10001D070(v130);
              }

              v149 = &v101[5 * v104];
              sub_1000032BC(v149 + 4);
              result = sub_10001D888(&v232, (v149 + 4));
              if (v107 >= v101[2])
              {
                goto LABEL_137;
              }

              sub_1000032BC((v101 + v129));
              result = sub_10001D888(&v234, v101 + v129);
              goto LABEL_65;
            }

LABEL_64:
            v101 = v130;
LABEL_65:
            ++v104;
LABEL_66:
            ++v107;
            v109 = v101 + 2;
            v108 = v101[2];
            v129 += 40;
            if (v107 == v108)
            {
              goto LABEL_46;
            }
          }

LABEL_85:
          result = sub_1000032BC(&v234);
          if (v107 != v104)
          {
            goto LABEL_86;
          }

          goto LABEL_64;
        }

LABEL_46:
        if (v107 < v104)
        {
          goto LABEL_138;
        }

        v41 = v225;
        if (v104 < 0)
        {
          goto LABEL_139;
        }

LABEL_48:
        if (__OFADD__(v107, v104 - v107))
        {
          goto LABEL_140;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v242 = v101;
        if (isUniquelyReferenced_nonNull_native && v104 <= v101[3] >> 1)
        {
          v226 = v101;
        }

        else
        {
          if (v107 <= v104)
          {
            v111 = v104;
          }

          else
          {
            v111 = v107;
          }

          v226 = sub_10001CA64(isUniquelyReferenced_nonNull_native, v111, 1, v101, &qword_10006BFC0, &qword_100056D00, &qword_10006BF90, &unk_100056CD0);
          v242 = v226;
        }

        sub_10001E018(v104, v107, 0, &qword_10006BF90, &unk_100056CD0);
        v112 = v240;
        v113 = v241;
        sub_100007504(&v239, v240);
        v114 = (*(v113 + 8))(v112, v113);
        if (v114 < 2)
        {
          v122 = v208;
          static Logger.syncEngine.getter();
          v123 = v230;

          v124 = v228;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v127 = v213;
            v128 = sub_100002CB4(v229, v123, &v234);

            *(v127 + 4) = v128;
            *(v127 + 12) = 2082;
            *(v127 + 14) = sub_100002CB4(v224, v124, &v234);
            _os_log_impl(&_mh_execute_header, v125, v126, "Re-inviting %{public}s to %{public}s", v127, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v122, v227);
          v43 = v216;
          v32 = v226;
          v37 = v221;
          v155 = v216[3];
          v156 = v216[4];
          sub_100007504(v216, v155);
          (*(v156 + 48))(&v239, v155, v156);
LABEL_105:
          v169 = v43[3];
          v170 = v43[4];
          sub_100007504(v43, v169);
          (*(v170 + 40))(&v237, v169, v170);

          sub_1000032BC(&v237);
          v222 = 1;
          goto LABEL_108;
        }

        v115 = v228;
        v116 = v209;
        v117 = v230;
        if (v114 == 2)
        {
          v150 = v206;
          static Logger.syncEngine.getter();

          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v153 = v213;
            v154 = sub_100002CB4(v229, v117, &v234);

            *(v153 + 4) = v154;
            *(v153 + 12) = 2082;
            *(v153 + 14) = sub_100002CB4(v224, v115, &v234);
            _os_log_impl(&_mh_execute_header, v151, v152, "%{public}s is already sharing %{public}s", v153, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v150, v227);
          sub_1000032BC(&v237);
          v43 = v216;
          v32 = v226;
          v37 = v221;
LABEL_108:
          v42 = v219;
          goto LABEL_5;
        }

        if (v114 == 3)
        {
          static Logger.syncEngine.getter();

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *&v234 = swift_slowAlloc();
            *v120 = v213;
            v121 = sub_100002CB4(v229, v117, &v234);

            *(v120 + 4) = v121;
            *(v120 + 12) = 2082;
            *(v120 + 14) = sub_100002CB4(v224, v115, &v234);
            _os_log_impl(&_mh_execute_header, v118, v119, "Adding %{public}s to %{public}s", v120, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v220)(v116, v227);
          v43 = v216;
          v32 = v226;
          v37 = v221;
          goto LABEL_105;
        }

        v157 = v207;
        static Logger.syncEngine.getter();
        sub_10001D958(&v239, &v234);
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *&v232 = v161;
          *v160 = v205;
          v162 = v235;
          v163 = v236;
          sub_100007504(&v234, v235);
          v231 = (*(v163 + 8))(v162, v163);
          type metadata accessor for ParticipantAcceptanceStatus(0);
          v164 = String.init<A>(describing:)();
          v166 = v165;
          sub_1000032BC(&v234);
          v167 = sub_100002CB4(v164, v166, &v232);

          *(v160 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v158, v159, "Unknown acceptance status: %{public}s", v160, 0xCu);
          sub_1000032BC(v161);

          (*v220)(v157, v227);
          v168 = &v237;
        }

        else
        {

          (*v220)(v157, v227);
          sub_1000032BC(&v237);
          v168 = &v234;
        }

        sub_1000032BC(v168);
        v43 = v216;
        v32 = v226;
        v37 = v221;
        v42 = v219;
        v41 = v225;
LABEL_5:
        ++v40;
        result = sub_1000032BC(&v239);
        if (v40 == v42)
        {

          v172 = v222;
          goto LABEL_113;
        }

        goto LABEL_6;
      }
    }

    v73 = [v65 phoneNumber];
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      if (v229 == v75 && v230 == v77)
      {
        v100 = v230;

        goto LABEL_42;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {

        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_15:
    ++v61;
    result = sub_1000032BC(&v234);
    v62 += 40;
    if (v60 == v61)
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

void sub_10001FC44(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[1] = a1;
    v19 = v12;
    *v11 = 136446210;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100002CB4(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to save share: %{public}s", v11, 0xCu);
    sub_1000032BC(v12);
  }

  (*(v6 + 8))(v8, v5);
  v16 = [objc_opt_self() defaultCenter];
  if (qword_10006B7B0 != -1)
  {
    swift_once();
  }

  v17 = qword_10006C988;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  v19 = qword_10006C9B8;
  v20 = 0;
  [v16 postNotificationName:v17 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a2);
}

uint64_t sub_10001FEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001FF40()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001FF94(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001FFAC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10001FFB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FFF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = v8;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100002CB4(v16, v18, &v22);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sender cancelled invitation %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    return (*(v5 + 8))(v7, v21);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000201F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v55 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - v13;
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = [a1 context];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v56 = v4;
    v19 = [v18 schemaIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20 == 0xD00000000000002CLL && 0x8000000100058310 == v22;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      static Logger.syncEngine.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Receiver accepted share invitation", v26, 2u);
      }

      swift_unknownObjectRelease();
      return (*(v5 + 8))(v14, v56);
    }

    else if (v20 == 0xD000000000000033 && 0x8000000100058340 == v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v40 = [objc_msgSend(a1 "destination")];
      swift_unknownObjectRelease();
      v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      static Logger.syncEngine.getter();

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57 = v45;
        *v44 = 136446210;
        v46 = Set.description.getter();
        v48 = sub_100002CB4(v46, v47, &v57);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s accepted verification invitation", v44, 0xCu);
        sub_1000032BC(v45);
      }

      (*(v5 + 8))(v11, v56);
      v49 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B0 != -1)
      {
        swift_once();
      }

      v57 = v41;
      v58 = 1;
      [v49 postNotificationName:qword_10006C988 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.syncEngine.getter();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v52 = 136446210;
        v54 = sub_100002CB4(v20, v22, &v57);

        *(v52 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "Receiver accepted invitation with unknown schema: %{public}s", v52, 0xCu);
        sub_1000032BC(v53);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v5 + 8))(v8, v56);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    static Logger.syncEngine.getter();
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57 = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v56 = v4;
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_100002CB4(v36, v38, &v57);

      *(v31 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to extract context from accepted invitation %{public}s", v31, 0xCu);
      sub_1000032BC(v32);

      return (*(v5 + 8))(v16, v56);
    }

    else
    {

      return (*(v5 + 8))(v16, v4);
    }
  }
}

uint64_t sub_1000208EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    v14 = v8;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100002CB4(v16, v18, &v25);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Receiver declined invitation %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v20 = [objc_opt_self() defaultCenter];
  if (qword_10006B7B0 != -1)
  {
    swift_once();
  }

  v21 = qword_10006C988;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  v25 = qword_10006C9B8;
  v26 = 0;
  [v20 postNotificationName:v21 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

uint64_t sub_100020BC4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100020BD8(uint64_t a1, unsigned int a2)
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

uint64_t sub_100020C20(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020CA0()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v9 = 0xD000000000000010;
  v10 = 0x8000000100058460;
  LODWORD(v12) = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x656C646E7562202CLL;
  v2._object = 0xEB00000000204449;
  String.append(_:)(v2);
  v12 = *(v0 + 8);
  v11 = *(v0 + 8);
  sub_1000215B0(&v12, &v8);
  sub_100003720(&qword_10006C110, &qword_100056EA8);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x44496D616574202CLL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  v11 = *(v0 + 24);
  v8 = *(v0 + 24);
  sub_1000215B0(&v11, &v7);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return v9;
}

uint64_t sub_100020E10(char a1)
{
  v3 = 0xD000000000000023;
  error = 0;
  v4 = "Controls.private-client";
  v5 = String._bridgeToObjectiveC()();

  v6 = SecTaskCopyValueForEntitlement(v1, v5, &error);

  v18 = v6;
  sub_100003720(&qword_10006C050, &qword_100056E08);
  if (swift_dynamicCast())
  {
    v7 = v17;
    v8 = error;
    if (!error)
    {
      return v7;
    }

LABEL_12:

    return v7;
  }

  if (!error)
  {
    return 2;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v11 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = 0xD000000000000027;
        v4 = "per.family-controls";
      }

      else
      {
        v4 = "ent.SharingCoordinator";
      }
    }

    v12 = sub_100002CB4(v3, v4 | 0x8000000000000000, &v18);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2082;
    sub_100003720(&qword_10006C058, &qword_100056E10);
    v13 = String.init<A>(describing:)();
    v15 = sub_100002CB4(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to extract entitlement %s from SecTask: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v8 = error;
  v7 = 2;
  if (error)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_1000210F8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *token.val = a2;
  *&token.val[2] = a3;
  *&token.val[4] = a4;
  *&token.val[6] = a5;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (v16)
  {
    v17 = v16;
    v18 = sub_10000E2C0();
    v31 = v19;
    v32 = v18;
    v33 = sub_100020E10(1);
    *token.val = a2;
    *&token.val[2] = a3;
    *&token.val[4] = a4;
    *&token.val[6] = a5;
    v35 = 0;
    v24 = static TeamIdentifierRetriever.teamIdentifier(from:)();
    v26 = v25;
    v27 = type metadata accessor for Logger();
    (*(*(v27 - 8) + 8))(a7, v27);

    v28 = v33;
    v30 = v31;
    v29 = v32;
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create SecTask from audit token", v22, 2u);
    }

    v23 = type metadata accessor for Logger();
    (*(*(v23 - 8) + 8))(a7, v23);
    v28 = 0;
    v24 = 0;
    v26 = 0;
    v29 = 0;
    v30 = 0;
  }

  *a8 = a1;
  *(a8 + 8) = v29;
  *(a8 + 16) = v30;
  *(a8 + 24) = v24;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28 & 1;
}

__n128 sub_100021454(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000214C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100021534(uint64_t a1)
{
  result = sub_10002155C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002155C()
{
  result = qword_10006C060;
  if (!qword_10006C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C060);
  }

  return result;
}

uint64_t sub_1000215B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C110, &qword_100056EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021620(uint64_t result)
{
  v2 = 0;
  v3 = 0;
  v4 = result & 1;
  do
  {
    v5 = v2;
    v6 = *(&off_100065C28 + v3 + 32);
    if (v6)
    {
      v7 = "ControlsAgent.slotMachine";
    }

    else
    {
      v7 = "v16@?0@<OS_xpc_object>8";
    }

    __chkstk_darwin(result);
    if ((v7 & 0x1000000000000000) != 0)
    {
      _StringGuts._slowWithCString<A>(_:)();
    }

    else
    {
      if ((v7 & 0x2000000000000000) != 0)
      {
        *stream = v8;
        v22 = v7 & 0xFFFFFFFFFFFFF0;
        v13 = swift_allocObject();
        *(v13 + 16) = v4;
        *(v13 + 24) = v1;
        *(v13 + 32) = v6;
        v19 = sub_10002B5A8;
        v20 = v13;
        aBlock = _NSConcreteStackBlock;
        v16 = 1107296256;
        v17 = sub_100022118;
        v18 = &unk_100066DA0;
        v10 = _Block_copy(&aBlock);
        v14 = v1;

        v12 = stream;
      }

      else
      {
        v9 = swift_allocObject();
        *(v9 + 16) = v4;
        *(v9 + 24) = v1;
        *(v9 + 32) = v6;
        v19 = sub_10002B8A0;
        v20 = v9;
        aBlock = _NSConcreteStackBlock;
        v16 = 1107296256;
        v17 = sub_100022118;
        v18 = &unk_100066DF0;
        v10 = _Block_copy(&aBlock);
        v11 = v1;

        v12 = ((v7 & 0xFFFFFFFFFFFFFF0) + 32);
      }

      xpc_set_event_stream_handler(v12, 0, v10);
      _Block_release(v10);
    }

    v2 = 1;
    v3 = &_mh_execute_header.magic + 1;
  }

  while ((v5 & 1) == 0);
  return result;
}

id sub_1000218A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10006B7F0 != -1)
  {
    a1 = swift_once();
  }

  if (sub_100004AE4(a1, a2, a3))
  {
    sub_100047AE4(0, 0);
  }

  v5 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener);
  [*(v4 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener) setDelegate:v4];
  [v5 resume];
  v6 = *(v4 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listenerPrivate);
  [v6 setDelegate:v4];

  return [v6 resume];
}

id sub_1000219DC()
{
  v1 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine;
  v2 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine);
  }

  else
  {
    v4 = [objc_allocWithZone(UISSlotMachine) initWithSlotDrawer:*(v0 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotDrawer) options:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100021A64(const char *a1, char a2, void *a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4 & 1;
  v11[4] = sub_10002B8A0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100022118;
  v11[3] = &unk_100066F30;
  v9 = _Block_copy(v11);
  v10 = a3;

  xpc_set_event_stream_handler(a1, 0, v9);
  _Block_release(v9);
}

void sub_100021B60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - v12;
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v16 = String.init(cString:)();
    v18 = v16;
    v19 = v17;
    if (v4)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v20 == v19)
      {

LABEL_28:

        v45 = v3;
        sub_100038CE4(v45);
        v33 = v45;

        return;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_28;
      }

      static Logger.agent.getter();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v46 = v37;
        *v36 = 136446210;
        v38 = sub_100002CB4(v18, v19, &v46);

        *(v36 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v34, v35, "Dropping unexpecting darwin notification %{public}s", v36, 0xCu);
        sub_1000032BC(v37);
      }

      else
      {
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      v30 = v16 == 0xD00000000000002ELL && 0x80000001000586D0 == v17;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1000285D0(a1, v31, v32);
      }

      else
      {
        v39 = v18 == 0xD000000000000030 && 0x8000000100058700 == v19;
        if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100022178(a1);
        }

        else
        {
          static Logger.agent.getter();

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v46 = v43;
            *v42 = 136446210;
            v44 = sub_100002CB4(v18, v19, &v46);

            *(v42 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v40, v41, "Dropping unexpecting distributed notification %{public}s", v42, 0xCu);
            sub_1000032BC(v43);
          }

          else
          {
          }

          (*(v7 + 8))(v15, v6);
        }
      }
    }
  }

  else
  {
    static Logger.agent.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136446210;
      if (v4)
      {
        v27 = 0xD00000000000001ALL;
      }

      else
      {
        v27 = 0xD00000000000001CLL;
      }

      if (v4)
      {
        v28 = "ControlsAgent.slotMachine";
      }

      else
      {
        v28 = "v16@?0@<OS_xpc_object>8";
      }

      v29 = sub_100002CB4(v27, v28 | 0x8000000000000000, &v46);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get XPC event name for %{public}s", v25, 0xCu);
      sub_1000032BC(v26);
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100022118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

char *sub_100022178(void *a1)
{
  v2 = v1;
  v86 = type metadata accessor for UUID();
  v4 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v88 = &v71 - v12;
  v13 = type metadata accessor for AuthorizationRecord();
  v90 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v91 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  *&v77 = &v71 - v17;
  v18 = __chkstk_darwin(v16);
  v89 = &v71 - v19;
  __chkstk_darwin(v18);
  v84 = &v71 - v20;
  v21 = String.utf8CString.getter();
  v22 = xpc_dictionary_get_dictionary(a1, (v21 + 32));

  if (!v22)
  {
    goto LABEL_5;
  }

  v87 = xpc_dictionary_get_array(v22, "bundleIDs");
  if (!v87)
  {
    swift_unknownObjectRelease();
LABEL_5:
    static Logger.agent.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "User info did not contain any bundle IDs", v26, 2u);
    }

    return (*(v7 + 8))(v10, v6);
  }

  result = sub_10000423C();
  v71 = v4;
  v72 = v7;
  v73 = v22;
  v75 = v2;
  v81 = v6;
  v82 = *(result + 2);
  if (v82)
  {
    v27 = 0;
    v80 = (v90 + 16);
    v79 = v93;
    v74 = (v90 + 32);
    v76 = (v90 + 8);
    v28 = &_swiftEmptyArrayStorage;
    v29 = v88;
    v30 = v84;
    v78 = result;
    while (1)
    {
      if (v27 >= *(result + 2))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v32 = v28;
      v83 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v33 = *(v90 + 72);
      v34 = v13;
      (*(v90 + 16))(v30, &result[v83 + v33 * v27], v13);
      v94 = &_swiftEmptySetSingleton;
      v35 = swift_allocObject();
      *(v35 + 16) = &v94;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_10002B5BC;
      *(v36 + 24) = v35;
      v93[2] = sub_10002B5C4;
      v93[3] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v93[0] = sub_10002414C;
      v93[1] = &unk_100066E68;
      v37 = _Block_copy(aBlock);

      xpc_array_apply(v87, v37);
      _Block_release(v37);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        goto LABEL_40;
      }

      v38 = v94;

      v39 = AuthorizationRecord.bundleIdentifier.getter();
      v41 = v40;
      if (*(v38 + 2))
      {
        v42 = v39;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v43 = Hasher._finalize()();
        v44 = -1 << v38[32];
        v45 = v43 & ~v44;
        if ((*&v38[((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v45))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (*(v38 + 6) + 16 * v45);
            v48 = *v47 == v42 && v47[1] == v41;
            if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*&v38[((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v45) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v49 = *v74;
          v13 = v34;
          (*v74)(v77, v84, v34);
          v28 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100034A7C(0, v32[2] + 1, 1);
            v28 = v95;
          }

          v29 = v88;
          v52 = v28[2];
          v51 = v28[3];
          if (v52 >= v51 >> 1)
          {
            sub_100034A7C((v51 > 1), v52 + 1, 1);
            v28 = v95;
          }

          v28[2] = v52 + 1;
          v49(v28 + v83 + v52 * v33, v77, v34);
          v30 = v84;
          goto LABEL_12;
        }

LABEL_24:

        v30 = v84;
        v13 = v34;
        (*v76)(v84, v34);
        v29 = v88;
      }

      else
      {

        (*v76)(v30, v13);
      }

      v28 = v32;
LABEL_12:
      ++v27;
      v31 = v91;
      result = v78;
      if (v27 == v82)
      {
        goto LABEL_31;
      }
    }
  }

  v28 = &_swiftEmptyArrayStorage;
  v29 = v88;
  v31 = v91;
LABEL_31:

  v84 = v28[2];
  if (v84)
  {
    v54 = 0;
    v83 = v90 + 16;
    v80 = (v72 + 8);
    v79 = (v71 + 8);
    *&v53 = 136446210;
    v77 = v53;
    v82 = (v90 + 8);
    v78 = ((v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    while (v54 < v28[2])
    {
      v58 = v28;
      v59 = v28 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v54;
      v60 = *(v90 + 16);
      v61 = v89;
      v60(v89, v59, v13);
      static Logger.agent.getter();
      v60(v31, v61, v13);
      v62 = Logger.logObject.getter();
      v63 = v13;
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = v77;
        v67 = AuthorizationRecord.bundleIdentifier.getter();
        v69 = v68;
        v55 = *v82;
        (*v82)(v91, v63);
        v70 = sub_100002CB4(v67, v69, aBlock);

        *(v65 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v62, v64, "Authorized Family Controls app %{public}s was removed, revoking authorization", v65, 0xCu);
        sub_1000032BC(v66);
        v29 = v88;

        v31 = v91;
      }

      else
      {

        v55 = *v82;
        (*v82)(v31, v63);
      }

      (*v80)(v29, v81);
      ++v54;
      v56 = v85;
      v57 = v89;
      AuthorizationRecord.recordIdentifier.getter();
      sub_100022D28(v56);
      (*v79)(v56, v86);
      result = (v55)(v57, v63);
      v28 = v58;
      v13 = v63;
      if (v84 == v54)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

LABEL_38:

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

char *sub_100022D28(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v4 = sub_1000070DC(a1);
  result = sub_100004AE4(v4, v5, v6);
  if ((result & 1) == 0)
  {
    if (qword_10006B7F0 != -1)
    {
      result = swift_once();
    }

    return sub_100048C54(result, v8, v9);
  }

  return result;
}

char *sub_100023090(char a1, uint64_t a2, void *a3)
{
  v79 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v74 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UUID();
  v64 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Logger();
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AuthorizationStatus();
  v80 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v78 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  v19 = type metadata accessor for AuthorizationRecord();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  v21 = __chkstk_darwin(v19);
  v67 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = dispatch_group_create();
  v25 = v24;
  if (a1)
  {
LABEL_13:
    sub_100028338();
    (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
    v46 = static OS_dispatch_queue.global(qos:)();
    (*(v8 + 8))(v10, v7);
    v47 = swift_allocObject();
    v48 = v79;
    *(v47 + 16) = v79;
    aBlock[4] = sub_10002B628;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017E50;
    aBlock[3] = &unk_100066EB8;
    v49 = _Block_copy(aBlock);
    v50 = v48;
    v51 = v72;
    static DispatchQoS.unspecified.getter();
    v89 = &_swiftEmptyArrayStorage;
    sub_10002B778(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003720(&qword_10006C0E0, &unk_100056C80);
    sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
    v52 = v74;
    v53 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v49);

    (*(v76 + 8))(v52, v53);
    (*(v73 + 8))(v51, v75);
  }

  v65 = v13;
  v66 = v24;
  v55 = v10;
  v56 = v8;
  v71 = v7;
  v26 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  result = sub_10000423C();
  v85 = *(result + 2);
  if (!v85)
  {

    v7 = v71;
LABEL_12:
    v8 = v56;
    v10 = v55;
    v25 = v66;
    goto LABEL_13;
  }

  v61 = v26;
  v28 = 0;
  v29 = *(v87 + 80);
  v83 = &result[(v29 + 32) & ~v29];
  v86 = v87 + 16;
  v82 = enum case for AuthorizationStatus.approved(_:);
  v81 = (v80 + 13);
  v30 = v80 + 1;
  v80 = (v87 + 8);
  v60 = (v63 + 8);
  v63 = v29;
  v59 = (v29 + 16) & ~v29;
  v58 = (v20 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v87 + 32);
  ++v64;
  v7 = v71;
  v31 = v78;
  v62 = v18;
  v84 = result;
  while (v28 < *(result + 2))
  {
    v39 = *(v87 + 16);
    v39(v23, &v83[*(v87 + 72) * v28], v88);
    AuthorizationRecord.status.getter();
    (*v81)(v31, v82, v14);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v40 = *v30;
    (*v30)(v31, v14);
    v40(v18, v14);
    if (aBlock[0] == v89)
    {
      AuthorizationRecord.type.getter();
      v41 = FamilyControlsMember.rawValue.getter();
      if (v41 == FamilyControlsMember.rawValue.getter())
      {
        v42 = v65;
        static Logger.agent.getter();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Family Controls is not allowed, revoking all child authorizations", v45, 2u);
        }

        (*v60)(v42, v68);
        v32 = v66;
        dispatch_group_enter(v66);
        v33 = v69;
        AuthorizationRecord.recordIdentifier.getter();
        v34 = v67;
        v35 = v88;
        v39(v67, v23, v88);
        v36 = v58;
        v37 = swift_allocObject();
        (*v57)(v37 + v59, v34, v35);
        *(v37 + v36) = v32;
        v38 = v32;
        sub_100005F8C(v33, 0, sub_10002B6CC, v37);

        (*v64)(v33, v70);
        v7 = v71;
        v31 = v78;
        v18 = v62;
      }
    }

    ++v28;
    (*v80)(v23, v88);
    result = v84;
    if (v85 == v28)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_100023B08(uint64_t a1, char a2, uint64_t a3, NSObject *a4)
{
  v40 = a4;
  v7 = type metadata accessor for UUID();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthorizationRecord();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  if (a2)
  {
    static Logger.agent.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = a1;
      v42 = v23;
      *v22 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v24 = String.init<A>(describing:)();
      v26 = sub_100002CB4(v24, v25, &v42);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to revoke authorization: %{public}s", v22, 0xCu);
      sub_1000032BC(v23);
    }

    (*(v38 + 8))(v17, v39);
  }

  else
  {
    static Logger.agent.getter();
    (*(v11 + 16))(v13, a3, v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = v28;
      v30 = v29;
      v35 = swift_slowAlloc();
      v42 = v35;
      *v30 = 136446210;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10002B778(&qword_10006B9D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v37 + 8))(v9, v7);
      (*(v11 + 8))(v13, v10);
      v34 = sub_100002CB4(v31, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v36, "Successfully revoked authorization: %{public}s", v30, 0xCu);
      sub_1000032BC(v35);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v38 + 8))(v19, v39);
  }

  dispatch_group_leave(v40);
}

uint64_t sub_100023FBC(uint64_t a1)
{
  v1 = sub_10000D398(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager, v13);
  v4 = sub_100004AE4(v1, v2, v3);
  if (v4)
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    sub_100047AE4(0, 1);
  }

  else
  {
    if (qword_10006B7F0 != -1)
    {
      v4 = swift_once();
    }

    sub_100048C54(v4, v5, v6);
  }

  v7 = [objc_allocWithZone(MOLocalSettingsStore) init];
  if (sub_100003A18(v7, v8, v9))
  {
    sub_10002B9C4(1, v7, v10);
  }

  else
  {
    v11 = [v7 deviceActivity];
    [v11 setSharingAppleIDs:0];

    v7 = v11;
  }

  return sub_10002B4F8(v13);
}

uint64_t sub_1000240F0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_100034F38(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10002414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

id sub_1000241A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v34);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listener;
  static FamilyControlsService.name.getter();
  v7 = objc_allocWithZone(NSXPCListener);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithMachServiceName:v8];

  *&v1[v6] = v9;
  v10 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_listenerPrivate;
  static FamilyControlsService.namePrivate.getter();
  v11 = objc_allocWithZone(NSXPCListener);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithMachServiceName:v12];

  *&v1[v10] = v13;
  v14 = type metadata accessor for AuthorizationAuthenticator(0);
  v15 = [objc_allocWithZone(v14) init];
  v50[3] = v14;
  v50[4] = &off_1000661B8;
  v50[0] = v15;
  v49[3] = type metadata accessor for Locations();
  v49[4] = &protocol witness table for Locations;
  sub_10001C8A8(v49);
  Locations.init(useExplicitLocations:)();
  v16 = [objc_allocWithZone(MOLocalSettingsStore) init];
  v47 = &type metadata for AuthorizationManagedSettings;
  v48 = &off_100066F80;
  v45 = 0;
  v46[0] = v16;
  *(&v44 + 1) = sub_100004080;
  sub_10001D958(v50, v41);
  sub_10001D958(v49, v42 + 8);
  sub_10001D958(v46, v43);
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  LOBYTE(v13) = [v17 BOOLForKey:v18];

  if ((v13 & 1) == 0)
  {
    if (sub_100003A18(v19, v20, v21))
    {
      v22 = sub_100007504(v46, v47);
      sub_10002B9C4(0, *v22, v23);
    }

    v24 = String._bridgeToObjectiveC()();
    [v17 setBool:1 forKey:v24];

    v17 = v24;
  }

  v25 = &v1[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager];
  sub_1000032BC(v49);
  sub_1000032BC(v50);
  v26 = v44;
  *(v25 + 6) = v43[1];
  *(v25 + 7) = v26;
  *(v25 + 16) = v45;
  v27 = v42[1];
  *(v25 + 2) = v42[0];
  *(v25 + 3) = v27;
  v28 = v43[0];
  *(v25 + 4) = v42[2];
  *(v25 + 5) = v28;
  v29 = v41[1];
  *v25 = v41[0];
  *(v25 + 1) = v29;
  sub_1000032BC(v46);
  v30 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotDrawer;
  *&v1[v30] = [objc_allocWithZone(type metadata accessor for FamilyActivityDrawer()) init];
  *&v1[OBJC_IVAR____TtC19FamilyControlsAgent5Agent____lazy_storage___slotMachine] = 0;
  v31 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue;
  sub_100028338();
  static DispatchQoS.unspecified.getter();
  *&v41[0] = &_swiftEmptyArrayStorage;
  sub_10002B778(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_10002B4A4(&qword_10006BC80, &qword_10006BC78, qword_1000568C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  *&v1[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40.receiver = v1;
  v40.super_class = ObjectType;
  return objc_msgSendSuper2(&v40, "init");
}

id sub_10002470C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100024884(char a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, char *a6, void *a7)
{
  v61 = a6;
  v62 = a7;
  v63 = a4;
  v11 = type metadata accessor for AuthorizationStatus();
  v59 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = type metadata accessor for AuthorizationRecord();
  v60 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v20 - 8);
  v22 = &v55 - v21;
  v58 = a3;
  v23 = FamilyControlsMember.rawValue.getter();
  if (v23 == FamilyControlsMember.rawValue.getter() && (a1 & 1) == 0)
  {
    sub_10001DD64(a2, v22, &qword_10006C0E8, &qword_100056F48);
    v24 = type metadata accessor for FamilyControlsError();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_10000D5C4(v22, &qword_10006C0E8, &qword_100056F48);
      v26 = 0;
    }

    else
    {
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      v26 = swift_allocError();
      (*(v25 + 32))(v34, v22, v24);
    }

    v63(0, v26);
  }

  if (!v62)
  {
    v38 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v36 = swift_allocError();
    (*(*(v38 - 8) + 104))(v39, enum case for FamilyControlsError.invalidArgument(_:), v38);
    swift_willThrow();
    goto LABEL_13;
  }

  v56 = a5;
  v27 = *&v61[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
  v57 = v62;
  v27(v65);
  v28 = sub_100007504(v65, v66);
  v29 = v28[2];
  if (!v29 || (v30 = v28[1], v31 = sub_100007504(v65, v66), (v32 = v31[4]) == 0))
  {
    v35 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, enum case for FamilyControlsError.invalidArgument(_:), v35);
    swift_willThrow();

    sub_1000032BC(v65);
LABEL_13:
    swift_errorRetain();
    v63(0, v36);
  }

  v33 = v31[3];

  sub_10003BCF4(v30, v29, v33, v32, v19);

  sub_1000032BC(v65);
  AuthorizationRecord.status.getter();
  v41 = enum case for AuthorizationStatus.approved(_:);
  v42 = v59;
  v55 = *(v59 + 104);
  v55(v14, enum case for AuthorizationStatus.approved(_:), v11);
  sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v43 = *(v42 + 8);
  v43(v14, v11);
  v43(v16, v11);
  if (v65[0] == v64)
  {
    v55(v16, v41, v11);
    v44 = AuthorizationStatus.rawValue.getter();
    v43(v16, v11);
    v45 = [objc_allocWithZone(NSNumber) initWithInteger:v44];
    v63(v45, 0);

    return (*(v60 + 8))(v19, v17);
  }

  else
  {
    (*(v60 + 8))(v19, v17);
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    v46 = qword_10006C9C8;
    v47 = swift_allocObject();
    v48 = v61;
    v49 = v58;
    v47[2] = v61;
    v47[3] = v49;
    v50 = v63;
    v47[4] = v62;
    v47[5] = v46;
    v51 = v56;
    v47[6] = v50;
    v47[7] = v51;
    v52 = swift_allocObject();
    v52[2] = v46;
    v52[3] = sub_10002B46C;
    v52[4] = v47;
    swift_retain_n();
    v53 = v57;
    v54 = v48;

    sub_100044BE4(1, 0, sub_10002B8A4, v52);
  }
}

uint64_t sub_100025054(void *a1, char *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9)
{
  v65 = a8;
  v62 = a4;
  v63 = a7;
  v60 = a5;
  v13 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v13);
  v15 = (&v55 - v14);
  v16 = type metadata accessor for AuthorizationRecord();
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Logger();
  v18 = *(v64 - 1);
  v19 = __chkstk_darwin(v64);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v55 - v22;
  if ((a3 & 1) == 0)
  {
    v56 = a2;
    v57 = v13;
    v35 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
    swift_retain_n();
    swift_retain_n();
    static Logger.authorization.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Request authorization", v38, 2u);
    }

    (*(v18 + 8))(v23, v64);
    if (a6)
    {
      v64 = a1;
      v39 = (v62 + v35);
      v40 = *(v62 + v35 + 120);
      v41 = a6;
      v40(v66);
      v42 = sub_100007504(v66, v67);
      v43 = v42[2];
      if (v43)
      {
        v44 = v42[1];
        v45 = sub_100007504(v66, v67);
        v46 = v45[4];
        if (v46)
        {
          v47 = v45[3];

          v48 = v61;
          sub_10003BCF4(v44, v43, v47, v46, v61);

          sub_1000032BC(v66);
          v54 = v63;

          sub_100007A48(v60, v48, v64, v56, 0, v39, v54, v65, a9);

          (*(v58 + 8))(v48, v59);
        }
      }

      v49 = type metadata accessor for FamilyControlsError();
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      v50 = swift_allocError();
      (*(*(v49 - 8) + 104))(v51, enum case for FamilyControlsError.invalidArgument(_:), v49);
      swift_willThrow();

      sub_1000032BC(v66);
    }

    else
    {
      v52 = type metadata accessor for FamilyControlsError();
      sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
      v50 = swift_allocError();
      (*(*(v52 - 8) + 104))(v53, enum case for FamilyControlsError.invalidArgument(_:), v52);
      swift_willThrow();
    }

    *v15 = v50;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_1000257AC(v15, v63, v65);

    sub_10000D5C4(v15, &qword_10006BB60, qword_100056698);
  }

  static Logger.authorization.getter();
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  sub_1000289A0(a1, a2, 1);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v66[0] = v27;
    *v26 = 136446210;
    v68 = a1;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v28 = String.init<A>(describing:)();
    v30 = sub_100002CB4(v28, v29, v66);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch or create authorization key: %{public}s", v26, 0xCu);
    sub_1000032BC(v27);
  }

  (*(v18 + 8))(v21, v64);
  v31 = type metadata accessor for FamilyControlsError();
  sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
  v32 = swift_allocError();
  (*(*(v31 - 8) + 104))(v33, enum case for FamilyControlsError.unavailable(_:), v31);
  v65(0, v32);
}

uint64_t sub_1000257AC(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v21 = a2;
  v22 = a3;
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v11);
  v13 = (&v21 - v12);
  sub_10001DD64(a1, &v21 - v12, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    swift_errorRetain();
    v22(0, v14);
  }

  else
  {
    v16 = v22;
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 104))(v8, enum case for AuthorizationStatus.approved(_:), v4);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17 = *(v5 + 8);
    v17(v8, v4);
    if (v24 == v23)
    {
      sub_100047AE4(1, 1);
    }

    v18 = AuthorizationStatus.rawValue.getter();
    v19 = objc_allocWithZone(NSNumber);
    v20 = [v19 initWithInteger:{v18, v21}];
    v16(v20, 0);

    return (v17)(v10, v4);
  }
}

uint64_t sub_100025B60(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v22[1] = a4;
  v6 = type metadata accessor for AuthorizationStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v10);
  v12 = (v22 - v11);
  sub_10001DD64(a1, v22 - v11, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    swift_errorRetain();
    a3(0, v13);
  }

  else
  {
    v15 = (*(v7 + 32))(v9, v12, v6);
    v18 = sub_100004AE4(v15, v16, v17);
    if ((v18 & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        v18 = swift_once();
      }

      sub_100048C54(v18, v19, v20);
    }

    v21 = [objc_allocWithZone(NSNumber) initWithInteger:AuthorizationStatus.rawValue.getter()];
    a3(v21, 0);

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100025E94(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = *&a2[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a8;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = a6;
  *(v17 + 72) = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10002B864;
  *(v18 + 24) = v17;
  v23[4] = sub_10002B878;
  v23[5] = v18;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000219B4;
  v23[3] = &unk_100066CB0;
  v19 = _Block_copy(v23);

  v20 = a2;
  v21 = a5;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_100026044(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id, void))
{
  v13 = type metadata accessor for LabelSlotTag();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType] = a1;
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width] = a3;
  *&v14[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem] = a2;
  v18.receiver = v14;
  v18.super_class = v13;

  v15 = objc_msgSendSuper2(&v18, "init");
  v16 = sub_1000219DC();
  v17 = [v16 remoteContentForLayerContextWithId:a5 style:a6 tag:{v15, v18.receiver, v18.super_class}];

  a7(v17, 0);
}

void sub_100026208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_100026290(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_10002630C(int a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v56 = a6;
  v48 = a2;
  v49 = a1;
  v9 = type metadata accessor for UUID();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v51 = v10;
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for AuthorizationRecord();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  sub_10003C47C(a4, v16);
  v50 = a5;
  v21 = v49;
  v47 = a4;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000D5C4(v16, &unk_10006C0F0, &qword_100056690);
    v22 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, enum case for FamilyControlsError.invalidArgument(_:), v22);
    swift_willThrow();
    v25 = v47;
    swift_errorRetain();
    v26 = v56;
    a5(v23);

LABEL_3:
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    v27 = qword_10006C9C8;
    v28 = v52;
    v29 = v53;
    v30 = v54;
    (*(v53 + 16))(v52, v25, v54);
    v31 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v32 = (v51 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v55;
    *(v33 + 16) = v55;
    (*(v29 + 32))(v33 + v31, v28, v30);
    *(v33 + v32) = v27;
    v35 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v50;
    v35[1] = v26;
    v36 = swift_allocObject();
    v36[2] = v27;
    v36[3] = sub_1000288C8;
    v36[4] = v33;
    swift_retain_n();
    v37 = v34;

    sub_100044BE4(1, 0, sub_100028990, v36);
  }

  v39 = v17;
  (*(v18 + 32))(v20, v16, v17);
  AuthorizationRecord.type.getter();
  v40 = FamilyControlsMember.rawValue.getter();
  v41 = FamilyControlsMember.rawValue.getter();
  v25 = v47;
  if (v40 != v41 || (v21 & 1) != 0)
  {
    (*(v18 + 8))(v20, v17);
    v26 = v56;
    goto LABEL_3;
  }

  sub_10001DD64(v48, v13, &qword_10006C0E8, &qword_100056F48);
  v42 = type metadata accessor for FamilyControlsError();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v13, 1, v42) == 1)
  {
    sub_10000D5C4(v13, &qword_10006C0E8, &qword_100056F48);
    v44 = 0;
  }

  else
  {
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v44 = swift_allocError();
    (*(v43 + 32))(v45, v13, v42);
  }

  a5(v44);

  return (*(v18 + 8))(v20, v39);
}

uint64_t sub_10002692C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v13 = a3;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    v34 = v18;
    static Logger.agent.getter();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000289A0(a1, a2, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = a1;
      v36 = v24;
      *v23 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100002CB4(v25, v26, &v36);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch or create authorization key: %{public}s", v23, 0xCu);
      sub_1000032BC(v24);
    }

    (*(v17 + 8))(v20, v34);
    v28 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for FamilyControlsError.unavailable(_:), v28);
    a7(v29);
  }

  else
  {
    v32 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;

    sub_1000092B8(a5, a1, a2, (a4 + v32), a6, a7, a8);
  }
}

uint64_t sub_100026C48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v18 = a2;
  v19 = a3;
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = sub_100003720(&qword_10006BB60, qword_100056698);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  sub_10001DD64(a1, &v18 - v12, &qword_10006BB60, qword_100056698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    swift_errorRetain();
    v19(v14);
  }

  else
  {
    v16 = v19;
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 104))(v8, enum case for AuthorizationStatus.approved(_:), v4);
    sub_10002B778(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus, &protocol conformance descriptor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17 = *(v5 + 8);
    v17(v8, v4);
    if (v21 == v20)
    {
      sub_100047AE4(1, 1);
    }

    v16(0);
    return (v17)(v10, v4);
  }
}

void sub_1000270F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000272DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    v5 = sub_100004AE4(a1, a2, a3);
    if ((v5 & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        v5 = swift_once();
      }

      sub_100048C54(v5, v6, v7);
    }

    a1 = 0;
  }

  return a4(a1);
}

uint64_t sub_1000273A4(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, char *, char *, uint64_t, uint64_t))
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v20 = a1;
  a8(v16, a6, &a1[v19], v20, a7, v18);

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1000276A8(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  v10 = dispatch_group_create();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (sub_100004AE4(v11, v12, v13))
  {
    dispatch_group_enter(v10);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100028438;
    *(v15 + 24) = v14;

    v16 = v10;

    sub_100044FEC(sub_10002B87C, v15);
  }

  dispatch thunk of FamilyCircle.currentMember.getter();
  if (v36)
  {
    sub_100007504(aBlock, v36);
    v17 = dispatch thunk of FamilyMemberable.isParent.getter();
    sub_1000032BC(aBlock);
    if (v17)
    {
      dispatch_group_enter(v10);
      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      *(v18 + 24) = v10;

      v19 = v10;
      sub_100044BE4(1, 1, sub_1000283EC, v18);
    }
  }

  else
  {
    sub_10000D5C4(aBlock, &qword_10006C0C8, &qword_100056F40);
  }

  sub_100028338();
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  v21 = swift_allocObject();
  v22 = v28;
  v21[2] = v27;
  v21[3] = v22;
  v21[4] = v11;
  v37 = sub_1000283C4;
  v38 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  v36 = &unk_1000668F0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10002B778(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v24 = v30;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v23);

  (*(v32 + 8))(v24, v25);
  (*(v29 + 8))(v5, v31);
}

void sub_100027C24(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

void sub_100027C90(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (v6)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = v8;
      v18 = v17;
      v26 = swift_slowAlloc();
      v28 = a1;
      v29[0] = v26;
      *v18 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v21 = a4;
      v22 = sub_100002CB4(v19, v20, v29);

      *(v18 + 4) = v22;
      a4 = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch all shared zones: %{public}s", v18, 0xCu);
      sub_1000032BC(v26);

      (*(v9 + 8))(v12, v27);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  else
  {
    static Logger.syncEngine.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully fetched all shared zones", v25, 2u);
    }

    (*(v9 + 8))(v14, v8);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_100027F80(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_100028258()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028298()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000282D0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    a1 = 0;
  }

  return (*(v2 + 16))(a1);
}

uint64_t sub_100028300()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100028338()
{
  result = qword_10006C0D0;
  if (!qword_10006C0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C0D0);
  }

  return result;
}

uint64_t sub_100028384()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000283D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000283F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028440()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002851C(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10002630C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_1000285D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String.utf8CString.getter();
  v9 = xpc_dictionary_get_dictionary(a1, (v8 + 32));

  if (!v9)
  {
LABEL_4:
    static Logger.agent.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping activity update until the app installation has completed.", v12, 2u);
    }

    return (*(v5 + 8))(v7, v4);
  }

  if (xpc_dictionary_get_BOOL(v9, "isPlaceholder"))
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  sub_1000445E4(0, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000287D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000288C8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_10002692C(a1, a2, a3 & 1, v11, (v3 + v8), v10, v13, v14);
}

uint64_t sub_1000289A0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100007644(a1, a2);
  }
}

uint64_t sub_1000289AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v75[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v75[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v75[-v17];
  __chkstk_darwin(v16);
  v20 = &v75[-v19];
  v21 = [a1 serviceName];
  if (!v21)
  {
    static Logger.authorization.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received connection with missing service name", v29, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v80 = v12;
  v77 = v15;
  v22 = v21;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = String._bridgeToObjectiveC()();
  v26 = [a1 valueForEntitlement:v25];

  v78 = v18;
  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  v81 = v6;
  if (*(&v84 + 1))
  {
    if (swift_dynamicCast())
    {
      v30 = v82;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000D5C4(&v85, &qword_10006BE28, qword_100056F60);
  }

  v30 = 0;
LABEL_13:
  v31 = String._bridgeToObjectiveC()();
  v32 = [a1 valueForEntitlement:v31];

  if (v32)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v33 = v80;
  v85 = v83;
  v86 = v84;
  if (*(&v84 + 1))
  {
    if (swift_dynamicCast())
    {
      if ((v30 | v82))
      {
        v80 = v3;
        v76 = v30 ^ 1 | v82;
        goto LABEL_23;
      }

LABEL_25:
      static Logger.authorization.getter();

      v46 = a1;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v85 = v50;
        *v49 = 136446466;
        v51 = sub_100002CB4(v79, v24, &v85);

        *(v49 + 4) = v51;
        *(v49 + 12) = 1024;
        *(v49 + 14) = [v46 processIdentifier];

        _os_log_impl(&_mh_execute_header, v47, v48, "Rejecting %{public}s connection from process %d due to missing entitlement", v49, 0x12u);
        sub_1000032BC(v50);
      }

      else
      {
      }

      (*(v81 + 8))(v33, v5);
      return 0;
    }
  }

  else
  {
    sub_10000D5C4(&v85, &qword_10006BE28, qword_100056F60);
  }

  if (!v30)
  {
    goto LABEL_25;
  }

  v80 = v3;
  v76 = 0;
LABEL_23:
  v34 = v81;
  static Logger.authorization.getter();

  v35 = a1;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v5;
    v40 = v34;
    v41 = swift_slowAlloc();
    *&v85 = v41;
    *v38 = 136446466;
    v42 = v79;
    *(v38 + 4) = sub_100002CB4(v79, v24, &v85);
    *(v38 + 12) = 1024;
    *(v38 + 14) = [v35 processIdentifier];

    _os_log_impl(&_mh_execute_header, v36, v37, "Received %{public}s connection from process %d", v38, 0x12u);
    sub_1000032BC(v41);
    v43 = v40;
    v5 = v39;

    v44 = *(v43 + 8);
    v44(v20, v39);
  }

  else
  {

    v44 = *(v34 + 8);
    v44(v20, v5);
    v42 = v79;
  }

  v45 = v80;
  if (static FamilyControlsService.name.getter() == v42 && v52 == v24)
  {

LABEL_32:

    if (qword_10006B7D0 != -1)
    {
      swift_once();
    }

    v54 = static FamilyControlsService.remoteInterface;
    goto LABEL_35;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_32;
  }

  if (static FamilyControlsService.namePrivate.getter() == v42 && v56 == v24)
  {

LABEL_43:
    v54 = static FamilyControlsService.agentInterfacePrivate.getter();
    if (v76)
    {

LABEL_35:
      [v35 setExportedInterface:v54];
      [v35 setExportedObject:v45];
      [v35 activate];

      return 1;
    }

    v58 = v78;
    static Logger.authorization.getter();

    v59 = v35;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v42;
      v63 = swift_slowAlloc();
      v64 = v59;
      v65 = swift_slowAlloc();
      *&v85 = v65;
      *v63 = 136446466;
      v66 = sub_100002CB4(v62, v24, &v85);

      *(v63 + 4) = v66;
      *(v63 + 12) = 1024;
      *(v63 + 14) = [v64 processIdentifier];

      _os_log_impl(&_mh_execute_header, v60, v61, "Rejecting %{public}s connection. Process %d missing required entitlement for this interface.", v63, 0x12u);
      sub_1000032BC(v65);

      v67 = v78;
    }

    else
    {

      v67 = v58;
    }

    goto LABEL_51;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
    goto LABEL_43;
  }

  v68 = v77;
  static Logger.authorization.getter();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = v69;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v85 = v73;
    *v72 = 136446210;
    v74 = sub_100002CB4(v42, v24, &v85);

    *(v72 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v71, v70, "Received connection with unknown service name: %{public}s", v72, 0xCu);
    sub_1000032BC(v73);

    v67 = v77;
  }

  else
  {

    v67 = v68;
  }

LABEL_51:
  v44(v67, v5);
  return 0;
}

uint64_t sub_100029398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AuthorizationRecord();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentConnection];
  v13 = v12;
  if (v12)
  {
    v32 = v5;
    v33 = v9;
    v34 = v8;
    v14 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120);
    v35 = v12;
    v14(v36);
    v15 = sub_100007504(v36, v37);
    v16 = v15[2];
    if (v16)
    {
      v17 = v15[1];
      v18 = sub_100007504(v36, v37);
      v19 = v18[4];
      if (v19)
      {
        v31 = a2;
        v20 = v18[3];

        sub_10003BCF4(v17, v16, v20, v19, v11);

        v26 = v35;

        sub_1000032BC(v36);
        AuthorizationRecord.status.getter();
        v27 = AuthorizationStatus.rawValue.getter();
        (*(v32 + 8))(v7, v4);
        v28 = [objc_allocWithZone(NSNumber) initWithInteger:v27];
        (*(v31 + 16))(v31, v28, 0);

        return (*(v33 + 8))(v11, v34);
      }
    }

    v21 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for FamilyControlsError.invalidArgument(_:), v21);
    swift_willThrow();

    sub_1000032BC(v36);
  }

  else
  {
    v23 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for FamilyControlsError.invalidArgument(_:), v23);
    swift_willThrow();
  }

  swift_errorRetain();
  v25 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v25);
}

void sub_1000297F8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120);
    v7 = v4;
    v6(v24);
    v8 = sub_100007504(v24, v25);
    v9 = v8[2];
    if (v9)
    {
      v10 = v8[1];
      v11 = sub_100007504(v24, v25);
      v12 = v11[4];
      if (v12)
      {
        v13 = v11[3];

        v14._countAndFlagsBits = v10;
        v14._object = v9;
        String.append(_:)(v14);
        v15._countAndFlagsBits = 45;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        v16._countAndFlagsBits = v13;
        v16._object = v12;
        String.append(_:)(v16);
        v17._countAndFlagsBits = 45;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);

        sub_1000032BC(v24);
        v18 = String._bridgeToObjectiveC()();
        (*(a2 + 16))(a2, v18, 0);

        return;
      }
    }

    v19 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for FamilyControlsError.invalidArgument(_:), v19);
    swift_willThrow();

    sub_1000032BC(v24);
  }

  else
  {
    v21 = type metadata accessor for FamilyControlsError();
    sub_10002B778(&qword_10006B9D0, &type metadata accessor for FamilyControlsError, &protocol conformance descriptor for FamilyControlsError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for FamilyControlsError.invalidArgument(_:), v21);
    swift_willThrow();
  }

  swift_errorRetain();
  v23 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v23);
}

uint64_t sub_100029B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  switch(a2)
  {
    case 2:
      return dispatch thunk of TokenDecoder.decode(categoryIdentifierToken:)();
    case 1:
      return dispatch thunk of TokenDecoder.decode(webDomainToken:)();
    case 0:
      return dispatch thunk of TokenDecoder.decode(bundleIdentifierToken:)();
  }

  static Logger.activityItem.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unable to decode activity token", v14, 2u);
  }

  (*(v5 + 8))(v10, v4);
  return 0;
}

void sub_10002A0E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v95 = a4;
  v97 = a1;
  v98 = a2;
  v7 = sub_100003720(&unk_10006C100, &unk_100056F50);
  v93 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v84 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v99 = type metadata accessor for KeyRetriever();
  isa = v99[-1].isa;
  __chkstk_darwin(v99);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  type metadata accessor for FamilyActivityTokenSlotTag();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v91 = v7;
    v21 = objc_opt_self();
    _Block_copy(a5);
    v94 = a3;
    v22 = [v21 currentConnection];
    if (!v22)
    {
LABEL_14:
      sub_100012BB4();
      swift_allocError();
      *v66 = 0;
      v67 = _convertErrorToNSError(_:)();
      (*(a5 + 2))(a5, 0, v67);

      v68 = v94;

      return;
    }

    v23 = v22;
    v86 = a5;
    v90 = v18;
    v85 = FamilyActivityTokenSlotTag.slotType.getter();
    v87 = v20;
    FamilyActivityTokenSlotTag.width.getter();
    v25 = v24;
    v88 = v17;
    KeyRetriever.init()();
    v26 = v23;
    static Logger.activityItem.getter();
    v27 = [v26 processIdentifier];
    v89 = v26;
    [v26 auditToken];
    v28 = aBlock;
    v30 = v101;
    v29 = v102;
    (*(v10 + 16))(v13, v15, v9);
    sub_1000210F8(v27, v28, *(&v28 + 1), v30, v29, v23, v13, v105);
    (*(v10 + 8))(v15, v9);
    if (v107)
    {
      v31 = v99;
      v102 = v99;
      v103 = &protocol witness table for KeyRetriever;
      v32 = sub_10001C8A8(&aBlock);
      v33 = isa;
      v34 = v88;
      (*(isa + 2))(v32, v88, v31);
      type metadata accessor for TokenDecoder();
      swift_allocObject();

      v35 = TokenDecoder.init(teamIdentifier:keyRetriever:)();
      FamilyActivityTokenSlotTag.tokenData.getter();
      v36 = v92;
      Token.init(data:)();
      v37 = FamilyActivityTokenSlotTag.tokenType.getter();
      v38 = sub_100029B1C(v35, v37, v36);
      v40 = v39;
      v42 = v41;
      v108 = v106;
      sub_10000D5C4(&v108, &qword_10006C110, &qword_100056EA8);

      v18 = v90;
      if (v40)
      {

        (*(v93 + 8))(v36, v91);
        (*(v33 + 1))(v34, v99);
        v43 = swift_allocObject();
        v44 = v95;
        v45 = v85;
        v43[2] = v95;
        v43[3] = v45;
        v43[4] = v25;
        v46 = v98;
        v43[5] = v97;
        v43[6] = v46;
        v43[7] = sub_10002B2A4;
        v43[8] = v18;
        v47 = sub_10002B89C;
        v48 = v42;
        if (v42)
        {
          v49 = v38;
          v51 = v97;
          v50 = v98;
          if (v48 != 1)
          {
            goto LABEL_12;
          }

LABEL_25:

          v78 = v50;
          v79 = v44;
          sub_10003F2CC(v49, v40);
          v47();

          goto LABEL_28;
        }

        v75 = v98;
        goto LABEL_27;
      }

      sub_100012BB4();
      swift_allocError();
      *v73 = 2;
      v74 = _convertErrorToNSError(_:)();
      v86[2](v86, 0, v74);

      (*(v93 + 8))(v36, v91);
      (*(v33 + 1))(v34, v99);
    }

    else
    {
      aBlock = v106;
      sub_10000D5C4(&aBlock, &qword_10006C110, &qword_100056EA8);
      sub_100012BB4();
      swift_allocError();
      *v69 = 1;
      v70 = _convertErrorToNSError(_:)();
      v86[2](v86, 0, v70);

      (*(isa + 1))(v88, v99);
    }

LABEL_28:

    return;
  }

  type metadata accessor for FamilyActivityIdentifierSlotTag();
  if (swift_dynamicCastClass())
  {
    v52 = a5;
    _Block_copy(a5);
    v53 = a3;
    v45 = FamilyActivityIdentifierSlotTag.slotType.getter();
    FamilyActivityIdentifierSlotTag.width.getter();
    v25 = v54;
    v38 = FamilyActivityIdentifierSlotTag.identifier.getter();
    v40 = v55;
    v56 = FamilyActivityIdentifierSlotTag.identifierType.getter();
    if (v56)
    {
      v44 = v95;
      v49 = v38;
      if (v56 == 1)
      {

        v57 = swift_allocObject();
        v51 = v97;
        v50 = v98;
        v57[2] = v44;
        v57[3] = v45;
        v57[4] = v25;
        v57[5] = v51;
        v57[6] = v50;
        v57[7] = sub_10002B2A4;
        v57[8] = v18;
LABEL_12:

        v58 = v50;
        v59 = v18;
        v60 = v44;
        v61 = sub_10003FB5C(v49, v40);
        v99 = *&v60[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_slotMachineQueue];
        v62 = swift_allocObject();
        v62[2] = v45;
        v62[3] = v25;
        v62[4] = v61;
        v62[5] = v60;
        v62[6] = v51;
        v62[7] = v58;
        v62[8] = sub_10002B2A4;
        v62[9] = v59;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_10002B2CC;
        *(v63 + 24) = v62;
        v103 = sub_10002B2D0;
        v104 = v63;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v101 = sub_1000219B4;
        v102 = &unk_100066BC0;
        a5 = _Block_copy(&aBlock);

        v64 = v58;
        v65 = v60;

        dispatch_sync(v99, a5);

        _Block_release(a5);
        LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

        if ((v61 & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_14;
      }

      v76 = v97;
      if (v56 != 2)
      {

        _Block_release(v52);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v77 = swift_allocObject();
      v77[2] = v44;
      v77[3] = v45;
      v77[4] = v25;
      v50 = v98;
      v77[5] = v76;
      v77[6] = v50;
      v77[7] = sub_10002B2A4;
      v77[8] = v18;
      v47 = sub_10002B2C4;
      goto LABEL_25;
    }

    v43 = swift_allocObject();
    v44 = v95;
    v43[2] = v95;
    v43[3] = v45;
    v43[4] = v25;
    v75 = v98;
    v43[5] = v97;
    v43[6] = v75;
    v43[7] = sub_10002B2A4;
    v43[8] = v18;
LABEL_27:
    v80 = type metadata accessor for ActivityItem(0);
    type metadata accessor for AppInfoCache();

    v81 = v75;
    v82 = v44;
    static AppInfoCache.shared.getter();
    v83 = swift_allocObject();
    v83[2] = sub_10002B89C;
    v83[3] = v43;
    v83[4] = v80;
    v83[5] = v38;
    v83[6] = v40;

    dispatch thunk of AppInfoCache.fetchAppInfo(bundleIdentifier:completionHandler:)();

    goto LABEL_28;
  }

  sub_100012BB4();
  swift_allocError();
  *v71 = 0;
  _Block_copy(a5);
  v72 = _convertErrorToNSError(_:)();
  (*(a5 + 2))(a5, 0, v72);
}

void sub_10002AD2C(uint64_t a1, uint64_t a2)
{
  v53 = type metadata accessor for UUID();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AuthorizationRecord();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000423C();
  v57 = v11;
  v50 = *(v12 + 2);
  v51 = v8;
  if (v50)
  {
    v14 = 0;
    v46 = (v5 + 8);
    v47 = v9 + 16;
    v44 = v56 + 8;
    v45 = v9 + 8;
    v56 = &_swiftEmptyArrayStorage;
    v15 = v57;
    v48 = v12;
    v49 = a2;
    v42 = v7;
    v43 = v4;
    while (1)
    {
      if (v14 >= *(v12 + 2))
      {
        __break(1u);
      }

      v16 = &v12[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14];
      v17 = *(v9 + 16);
      v18 = v15;
      v19 = v9;
      v20 = v51;
      v17(v18, v16, v51);
      AuthorizationRecord.status.getter();
      v55 = AuthorizationStatus.rawValue.getter();
      (*v46)(v7, v4);
      AuthorizationRecord.type.getter();
      v54 = FamilyControlsMember.rawValue.getter();
      AuthorizationRecord.bundleIdentifier.getter();
      AuthorizationRecord.teamIdentifier.getter();
      v21 = v52;
      AuthorizationRecord.recordIdentifier.getter();
      v22 = v19;
      v23 = *(v19 + 8);
      v15 = v57;
      v23(v57, v20);
      v24 = objc_allocWithZone(FOAuthorizationRecord);
      v25 = String._bridgeToObjectiveC()();

      v26 = String._bridgeToObjectiveC()();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v28 = [v24 initWithBundleIdentifier:v25 teamIdentifier:v26 recordIdentifier:isa status:v55 type:v54];

      (*v44)(v21, v53);
      v29 = objc_opt_self();
      v58[0] = 0;
      v30 = [v29 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:v58];
      v31 = v58[0];
      if (!v30)
      {
        break;
      }

      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_10001CBAC(0, *(v56 + 2) + 1, 1, v56);
      }

      v4 = v43;
      v9 = v22;
      v36 = *(v56 + 2);
      v35 = *(v56 + 3);
      if (v36 >= v35 >> 1)
      {
        v56 = sub_10001CBAC((v35 > 1), v36 + 1, 1, v56);
      }

      ++v14;

      v37 = v56;
      *(v56 + 2) = v36 + 1;
      v38 = &v37[16 * v36];
      *(v38 + 4) = v32;
      *(v38 + 5) = v34;
      a2 = v49;
      v7 = v42;
      v12 = v48;
      if (v50 == v14)
      {
        goto LABEL_12;
      }
    }

    v40 = v31;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v41 = v49;
    swift_errorRetain();
    v13 = _convertErrorToNSError(_:)();
    (*(v41 + 16))(v41, 0, v13);
  }

  else
  {
    v56 = &_swiftEmptyArrayStorage;
LABEL_12:

    v39 = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v39, 0);
  }
}

uint64_t sub_10002B2F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002B348()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002B3A4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002B41C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002B4A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B570()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10002B5F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B630()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10002B6CC(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for AuthorizationRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100023B08(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_10002B778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002B7C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) == 1)
  {
    sub_100021B60(a1, *(v3 + 32), a3);
  }
}

uint64_t sub_10002B8AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_10002B9C4(char a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[5] = &_swiftEmptySetSingleton;
  v9 = &off_10006A000;
  if ((a1 & 1) == 0)
  {
    v10 = [a2 deviceActivity];
    v11 = [v10 sharingAppleIDs];

    if (v11)
    {
      v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002CA28(v12);
    }
  }

  type metadata accessor for FamilyCircle();
  swift_allocObject();
  FamilyCircle.init()();
  v13 = dispatch thunk of FamilyCircle.guardians.getter();

  v15 = *(v13 + 16);
  if (v15)
  {
    v33 = a2;
    v32 = v13;
    v16 = v13 + 32;
    v17 = (v6 + 8);
    *&v14 = 136446210;
    v34 = v14;
    v35 = v8;
    do
    {
      sub_10001D958(v16, v39);
      sub_100007504(v39, v39[3]);
      v18 = dispatch thunk of FamilyMemberable.appleID.getter();
      if (v19)
      {
        sub_100034F38(&v38, v18, v19);
      }

      else
      {
        static Logger.agent.getter();
        sub_10001D958(v39, &v38);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = v17;
          v24 = v5;
          v25 = swift_slowAlloc();
          v37 = v25;
          *v22 = v34;
          sub_10001D958(&v38, v36);
          sub_100003720(&qword_10006BF18, &unk_100056F90);
          v26 = String.init<A>(describing:)();
          v28 = v27;
          sub_1000032BC(&v38);
          v29 = sub_100002CB4(v26, v28, &v37);

          *(v22 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v20, v21, "Guardian does not have an Apple ID: %{public}s", v22, 0xCu);
          sub_1000032BC(v25);
          v5 = v24;
          v17 = v23;
          v8 = v35;
        }

        else
        {

          sub_1000032BC(&v38);
        }

        (*v17)(v8, v5);
      }

      sub_1000032BC(v39);
      v16 += 40;
      --v15;
    }

    while (v15);

    a2 = v33;
    v9 = &off_10006A000;
  }

  else
  {
  }

  v30 = [a2 v9[264]];
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v30 setSharingAppleIDs:isa];
}

uint64_t sub_10002BD9C(int a1, int a2, id a3)
{
  v3 = [a3 allowedClient];
  v4 = [v3 allowedClient];

  v5 = objc_allocWithZone(MOApplication);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBundleIdentifier:v6];

  if (v4)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    v8 = v4;
    v9 = static NSObject.== infix(_:_:)();

    v7 = v8;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void sub_10002BE8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v72 = a4;
  v73 = a5;
  v9 = type metadata accessor for Logger();
  v71 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v15 = FamilyControlsMember.rawValue.getter();
  if (v15 == FamilyControlsMember.rawValue.getter())
  {
    v16 = [a6 allowedClient];
    v17 = [v16 allowedClient];

    if (v17)
    {

      static Logger.agent.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_100002CB4(a2, a3, v74);
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to enable family controls for %{public}s because a child authorization already exists.", v20, 0xCu);
        sub_1000032BC(v21);
      }

      (*(v71 + 8))(v12, v9);
      return;
    }
  }

  v22 = [a6 deviceActivity];
  v23 = [v22 allowedClients];

  if (v23)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
  }

  v74[4] = v24;
  v25 = [a6 managedSettings];
  v26 = [v25 allowedClients];

  if (v26)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v27 = &_swiftEmptySetSingleton;
  }

  v74[3] = v27;
  v28 = objc_allocWithZone(MOApplication);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithBundleIdentifier:v29];

  v31 = sub_10002B8AC(v30, v24);

  if ((v31 & 1) == 0)
  {
    sub_100035510(v74, v30);

    v32 = [a6 deviceActivity];
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v32 setAllowedClients:isa];

    v34 = FamilyControlsMember.rawValue.getter();
    if (v34 == FamilyControlsMember.rawValue.getter())
    {
      sub_10002B9C4(0, a6, v35);
    }
  }

  v36 = sub_10002B8AC(v30, v27);

  if (v36)
  {
    if (v31)
    {

      static Logger.agent.getter();
      v37 = v30;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v74[0] = v73;
        *v40 = 138543618;
        *(v40 + 4) = v37;
        *v41 = v37;
        *(v40 + 12) = 2082;
        v42 = v37;
        v43 = [v42 description];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = sub_100002CB4(v44, v46, v74);

        *(v40 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Ignoring attempt to enable family controls for %{public}@ because %{public}s is already enabled", v40, 0x16u);
        sub_10002DC5C(v41);

        sub_1000032BC(v73);
      }

      else
      {
      }

      (*(v71 + 8))(v14, v9);
      return;
    }
  }

  else
  {
    v48 = v30;
    sub_100035510(v74, v48);

    v49 = [a6 managedSettings];
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v50 = Set._bridgeToObjectiveC()().super.isa;
    [v49 setAllowedClients:v50];

    v51 = FamilyControlsMember.rawValue.getter();
    if (v51 == FamilyControlsMember.rawValue.getter())
    {
      v52 = [a6 allowedClient];
      [v52 setAllowedClient:v48];

      v53 = [a6 account];
      sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
      v54 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      [v53 setDenyiCloudLogout:v54];

      v55 = [a6 allowedClient];
      v56 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      [v55 setDenyMDMEnrollment:v56];

      v57 = [a6 application];
      sub_100003720(&qword_10006C018, &qword_100056D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100056C40;
      *(inited + 32) = v48;
      v59 = v48;
      sub_10002DD18(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v60 = Set._bridgeToObjectiveC()().super.isa;

      [v57 setUnremovableApplications:v60];
    }
  }

  v61 = [a6 managedSettings];
  v63 = v72;
  v62 = v73;
  v64 = Data._bridgeToObjectiveC()().super.isa;
  [v61 setTokenEncodingKey:v64];

  v65 = [a6 managedSettings];
  v66 = [v65 tokenDecodingKeys];

  if (v66)
  {
    sub_10002DCC4();
    v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v67 = &_swiftEmptySetSingleton;
  }

  v74[2] = v67;
  sub_10000DA30(v63, v62);
  sub_100035088(v74, v63, v62);
  sub_100007644(v74[0], v74[1]);
  v68 = [a6 managedSettings];
  sub_10002DCC4();
  v69 = Set._bridgeToObjectiveC()().super.isa;

  [v68 setTokenDecodingKeys:v69];
}

void sub_10002C81C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(MOApplication);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [a4 deviceActivity];
  v9 = [v8 allowedClients];

  if (v9)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v18[1] = v10;
  v17 = v7;
  sub_100035510(v18, v17);

  v11 = [a4 deviceActivity];
  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  sub_10002D2A0();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v11 setAllowedClients:isa];

  v13 = FamilyControlsMember.rawValue.getter();
  if (v13 == FamilyControlsMember.rawValue.getter())
  {
    sub_10002B9C4(0, a4, v14);
    v15 = v17;
  }

  else
  {
    v16 = [a4 deviceActivity];
    [v16 setSharingAppleIDs:0];

    v15 = v16;
  }
}

uint64_t sub_10002CA28(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100034F38(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10002CB2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a3 allowedClient];
  v51 = [v6 allowedClient];

  v7 = objc_allocWithZone(MOApplication);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithBundleIdentifier:v8];

  v10 = [a3 deviceActivity];
  v11 = [v10 allowedClients];

  if (v11)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v13 = [a3 managedSettings];
  v14 = [v13 allowedClients];

  if (v14)
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    sub_10002D2A0();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v16 = v9;
  v17 = sub_10002D978(v12, v16);

  v18 = [a3 deviceActivity];
  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  sub_10002D2A0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v18 setAllowedClients:isa];

  v20 = v16;
  v21 = sub_10002D978(v15, v20);

  v22 = [a3 managedSettings];
  v23 = Set._bridgeToObjectiveC()().super.isa;

  [v22 setAllowedClients:v23];

  if ((v17 & 0xC000000000000001) != 0)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *(v17 + 16);
  }

  if (!v24)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_13;
      }

LABEL_21:
      v46 = [a3 managedSettings];
      [v46 setTokenEncodingKey:0];

      v47 = [a3 managedSettings];
      [v47 setTokenDecodingKeys:0];

      v25 = v51;
      if (v51)
      {
        goto LABEL_14;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v25 = v51;
  if (!v51)
  {
    goto LABEL_22;
  }

LABEL_14:
  v26 = v20;
  v27 = v25;
  v28 = static NSObject.== infix(_:_:)();

  if ((v28 & 1) == 0)
  {
    v33 = v50;
    static Logger.agent.getter();
    v34 = v26;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v37 = 138543618;
      *(v37 + 4) = v34;
      *v38 = v34;
      *(v37 + 12) = 2082;
      v39 = v34;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100002CB4(v41, v43, &v52);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ignoring attempt to disable family controls for %{public}@ because %{public}s is enabled", v37, 0x16u);
      sub_10002DC5C(v38);

      sub_1000032BC(v51);

      return (*(v48 + 8))(v50, v49);
    }

    else
    {

      return (*(v48 + 8))(v33, v49);
    }
  }

  v29 = [a3 allowedClient];
  [v29 setAllowedClient:0];

  v30 = [a3 account];
  [v30 setDenyiCloudLogout:0];

  v31 = [a3 allowedClient];
  [v31 setDenyMDMEnrollment:0];

  v32 = [a3 application];
  [v32 setUnremovableApplications:0];

LABEL_23:
}

uint64_t sub_10002D1E4(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {

      v12 = 0;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v11 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

unint64_t sub_10002D2A0()
{
  result = qword_10006B9C0;
  if (!qword_10006B9C0)
  {
    sub_1000112B4(255, &qword_10006B9B8, MOApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B9C0);
  }

  return result;
}

unint64_t *sub_10002D308(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_10002D3A0(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_10002D3A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = &off_10006A000;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_13:
    v30 = v11 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v30);
    v15 = [v14 v10[268]];
    if (v15)
    {
      v16 = v15;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v32 = 0;
      v18 = 0;
    }

    v19 = v10;
    v20 = [a4 v10[268]];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v10 = v19;
      if (v18)
      {
        if (!v24)
        {
          goto LABEL_26;
        }

        if (v32 == v22 && v18 == v24)
        {

          v8 = v34;
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = v34;
          if ((v25 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v24)
        {
          goto LABEL_26;
        }

LABEL_5:

        v8 = v34;
      }
    }

    else
    {
      if (!v18)
      {
        goto LABEL_5;
      }

LABEL_26:

      v8 = v34;
LABEL_27:
      *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_30:

        sub_1000077C0(a1, v27, v29, a3);
        return;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_30;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Int sub_10002D5FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v45 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v38 = v7;
    v39 = v3;
    v37 = &v37;
    __chkstk_darwin(v9);
    v40 = &v37 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v8);
    v41 = 0;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(v4 + 56);
    v3 = (v11 + 63) >> 6;
    v13 = &off_10006A000;
    v43 = v4;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v17 = v14 | (v7 << 6);
      v18 = *(v4 + 48);
      v42 = v17;
      v19 = *(v18 + 8 * v17);
      v20 = [v19 v13[268]];
      if (v20)
      {
        v21 = v20;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v44 = 0;
        v23 = 0;
      }

      v24 = [v45 v13[268]];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v23)
        {
          v4 = v43;
          if (!v28)
          {
            goto LABEL_27;
          }

          if (v44 == v26 && v23 == v28)
          {

            v13 = &off_10006A000;
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v13 = &off_10006A000;
            if ((v29 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v4 = v43;
          if (v28)
          {
            goto LABEL_27;
          }

LABEL_6:

          v13 = &off_10006A000;
        }
      }

      else
      {
        v4 = v43;
        if (!v23)
        {
          goto LABEL_6;
        }

LABEL_27:

        v13 = &off_10006A000;
LABEL_28:
        *&v40[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_31:
          v31 = sub_1000077C0(v40, v38, v41, v4);

          return v31;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v3)
      {
        goto LABEL_31;
      }

      v16 = *(v10 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();
  v34 = v45;
  v35 = v7;
  v36 = v34;
  v31 = sub_10002D308(v33, v35, v4, v34);

  return v31;
}

Swift::Int sub_10002D978(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10002D5FC(a1, a2);
  }

  v26 = v2;
  v3 = &_swiftEmptySetSingleton;
  v27 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    v3 = &_swiftEmptySetSingleton;
    do
    {
      swift_dynamicCast();
      v4 = [v28 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v9 = [v27 bundleIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (v8)
        {
          if (!v13)
          {
            goto LABEL_20;
          }

          if (v6 == v11 && v8 == v13)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else if (v13)
        {
LABEL_20:

LABEL_21:
          v15 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v15)
          {
            sub_100035B98(v15 + 1);
          }

          v3 = &_swiftEmptySetSingleton;
          result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
          v17 = &_swiftEmptySetSingleton + 56;
          v18 = -1 << *(&_swiftEmptySetSingleton + 32);
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7)) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7))) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *&v17[8 * v20];
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v21) = v28;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }
      }

      else if (v8)
      {
        goto LABEL_20;
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v3;
}

uint64_t sub_10002DC5C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BC50, &qword_1000568A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002DCC4()
{
  result = qword_10006C1E0;
  if (!qword_10006C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C1E0);
  }

  return result;
}

void sub_10002DD18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100003720(&qword_10006B9C8, &qword_100056688);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_10002E018(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = &_swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100034AC0(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100034AC0((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

NSString sub_10002E2E8()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C990 = result;
  return result;
}

NSString sub_10002E320()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C998 = result;
  return result;
}

NSString sub_10002E358()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C9A0 = result;
  return result;
}

uint64_t _s10DataSourceCMa(uint64_t a1)
{
  result = qword_10006C228;
  if (!qword_10006C228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E490(uint64_t a1)
{
  result = type metadata accessor for Locations();
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

uint64_t sub_10002E534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002E654, 0, 0);
}

uint64_t sub_10002E654()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v11 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v5 + 8))(v3, v4);
  CKSyncEngine.state.getter();
  v7 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  sub_10002E018(sub_100034628, v8, v7);

  *(swift_task_alloc() + 16) = v6;
  CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();

  (*(v2 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

Class sub_10002E7D0(void *a1)
{
  v2 = type metadata accessor for UsageItemRecord();
  v66 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  static Logger.syncEngine.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v65 = v6;
  v69 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v68 = v7;
    v62 = v20;
    v71[0] = v20;
    *v19 = 136446210;
    v21 = v15;
    v63 = v2;
    v22 = v8;
    v23 = v21;
    v24 = [v21 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v11;
    v26 = v25;
    v28 = v27;

    v8 = v22;
    v2 = v63;

    v29 = sub_100002CB4(v26, v28, v71);

    *(v19 + 4) = v29;
    v11 = v67;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saving record: %{public}s", v19, 0xCu);
    sub_1000032BC(v62);
    v7 = v68;
  }

  v30 = *(v8 + 8);
  v30(v14, v7);
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v31 = qword_10006C980;
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  v32 = v31;
  v33 = v69;
  v34 = static NSObject.== infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    if (*(v70 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) == 1)
    {
      type metadata accessor for UsageStore();
      static UsageStore.shared.getter();
      v38 = v65;
      UsageStore.subscript.getter(v33, v65);

      v39 = v66;
      if (!(*(v66 + 48))(v38, 1, v2))
      {
        v57 = v64;
        (*(v39 + 16))(v64, v38, v2);
        sub_10000D5C4(v38, &qword_10006BE78, &qword_100056C00);
        v36 = sub_100013370();
        (*(v39 + 8))(v57, v2);
        return v36;
      }

      sub_10000D5C4(v38, &qword_10006BE78, &qword_100056C00);
    }

    else
    {
      static Logger.syncEngine.getter();
      v40 = v33;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v71[0] = v44;
        *v43 = 136446210;
        v45 = v40;
        v67 = v11;
        v46 = v45;
        v47 = [v45 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v7;
        v50 = v49;

        v51 = sub_100002CB4(v48, v50, v71);

        *(v43 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v41, v42, "Not saving record: %{public}s because we haven't started collecting activity", v43, 0xCu);
        sub_1000032BC(v44);

        v52 = v67;
        v53 = v68;
      }

      else
      {

        v52 = v11;
        v53 = v7;
      }

      v30(v52, v53);
    }

    return 0;
  }

  v35 = v70;
  v36 = *(v70 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v54 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations;
    v55 = type metadata accessor for Locations();
    v71[3] = v55;
    v71[4] = &protocol witness table for Locations;
    v56 = sub_10001C8A8(v71);
    (*(*(v55 - 8) + 16))(v56, v35 + v54, v55);
    v58 = sub_1000426F0(v71);
    v60 = v59;
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    v36 = sub_10001471C(v58, v60);
    sub_100007644(v58, v60);
  }

  return v36;
}

uint64_t sub_10002EF9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v3[5] = RecordZoneChanges;
  v3[6] = *(RecordZoneChanges - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3[20] = v9;
  v3[21] = *(v9 - 8);
  v3[22] = swift_task_alloc();
  v10 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v3[23] = v10;
  v3[24] = *(v10 - 8);
  v3[25] = swift_task_alloc();
  v11 = type metadata accessor for UsageItemRecord();
  v3[26] = v11;
  v3[27] = *(v11 - 8);
  v3[28] = swift_task_alloc();
  sub_100003720(&qword_10006BE60, &qword_100056BE8);
  v3[29] = swift_task_alloc();
  v3[30] = sub_100003720(&qword_10006BE68, &qword_100056BF0);
  v3[31] = swift_task_alloc();
  sub_100003720(&qword_10006BE78, &qword_100056C00);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v12 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v3[36] = v12;
  v3[37] = *(v12 - 8);
  v3[38] = swift_task_alloc();
  v13 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v3[39] = v13;
  v3[40] = *(v13 - 8);
  v3[41] = swift_task_alloc();
  v14 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v3[42] = v14;
  v3[43] = *(v14 - 8);
  v3[44] = swift_task_alloc();
  v15 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v3[45] = v15;
  v3[46] = *(v15 - 8);
  v3[47] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v3[48] = v16;
  v3[49] = *(v16 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v17 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v3[56] = v17;
  v3[57] = *(v17 - 8);
  v3[58] = swift_task_alloc();
  v18 = type metadata accessor for CKSyncEngine.Event();
  v3[59] = v18;
  v3[60] = *(v18 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_10002F680, 0, 0);
}

void sub_10002F680()
{
  v307 = v0;
  v1 = v0;
  v2 = v0[62];
  v3 = v0[60];
  v4 = v1[59];
  v5 = *(v3 + 16);
  (v5)(v2, v1[2], v4);
  v6 = (*(v3 + 88))(v2, v4);
  v7 = v1[59];
  if (v6 != enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v289 = v1;
    if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
    {
      v16 = v1[62];
      v18 = v1[15];
      v17 = v1[16];
      v19 = v1[14];
      (*(v1[60] + 96))(v16, v7);
      (*(v18 + 32))(v17, v16, v19);
      v20 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v1[49];
        v23 = v1[12];
        v24 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v25 = objc_opt_self();
        v27 = *(v23 + 16);
        v23 += 16;
        v26 = v27;
        v278 = (v23 - 8);
        v283 = *(v23 + 56);
        v273 = (v22 + 8);
        do
        {
          v28 = v1[13];
          v29 = v1[11];
          v26(v28, v24, v29);
          v30 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
          (*v278)(v28, v29);
          static Logger.syncEngine.getter();
          v31 = v30;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();

          v34 = os_log_type_enabled(v32, v33);
          v35 = v1[51];
          v290 = v1[48];
          v298 = v31;
          if (v34)
          {
            v266 = v1[51];
            v36 = swift_slowAlloc();
            v265 = swift_slowAlloc();
            v306[0] = v265;
            *v36 = 136446210;
            v37 = v31;
            v38 = v26;
            v39 = v25;
            v40 = [v37 description];
            v268 = v21;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v25 = v39;
            v26 = v38;

            v44 = sub_100002CB4(v41, v43, v306);
            v1 = v289;

            *(v36 + 4) = v44;
            v21 = v268;
            _os_log_impl(&_mh_execute_header, v32, v33, "Zone was deleted from server: %{public}s", v36, 0xCu);
            sub_1000032BC(v265);

            (*v273)(v266, v290);
          }

          else
          {

            (*v273)(v35, v290);
          }

          v45 = [v25 defaultCenter];
          if (qword_10006B7B8 != -1)
          {
            swift_once();
          }

          [v45 postNotificationName:qword_10006C990 object:v298];

          v24 += v283;
          --v21;
        }

        while (v21);
      }

      v110 = v1[15];
      v109 = v1[16];
      v111 = v1[14];
      goto LABEL_44;
    }

    if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
    {
      v46 = v1[62];
      v48 = v1[43];
      v47 = v1[44];
      v49 = v1[42];
      (*(v1[60] + 96))(v46, v7);
      (*(v48 + 32))(v47, v46, v49);
      v50 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = v1[40];
        v54 = *(v52 + 16);
        v53 = v52 + 16;
        v55 = v50 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
        v291 = *(v53 + 56);
        v299 = v54;
        do
        {
          v56 = v1[41];
          v57 = v1[39];
          v299(v56, v55, v57);
          v58 = CKDatabase.RecordZoneChange.Modification.record.getter();
          (*(v53 - 8))(v56, v57);
          sub_1000315AC(v58);

          v55 += v291;
          --v51;
        }

        while (v51);
      }

      v59 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
      v292 = *(v59 + 16);
      if (!v292)
      {
LABEL_43:

        v110 = v1[43];
        v109 = v1[44];
        v111 = v1[42];
LABEL_44:
        (*(v110 + 8))(v109, v111);
        goto LABEL_45;
      }

      v60 = v1[49];
      v61 = v1[37];
      v256 = v1[30];
      v257 = v1[31];
      v255 = v1[29];
      v62 = v1[27];
      v63 = v59 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      type metadata accessor for UsageStore();
      v64 = v63;
      v65 = *(v61 + 16);
      v61 += 16;
      v264 = v65;
      v263 = (v61 - 8);
      v261 = (v60 + 8);
      v262 = *(v61 + 56);
      v269 = (v62 + 48);
      v274 = (v62 + 56);
      v253 = (v62 + 16);
      v254 = (v62 + 32);
      v259 = v1 + 34;
      v260 = (v62 + 8);
      v252 = v1 + 28;
      while (1)
      {
        v67 = v1[38];
        v68 = v1[36];
        v284 = v64;
        v264(v67);
        v69 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        CKDatabase.RecordZoneChange.Deletion.recordType.getter();
        (*v263)(v67, v68);
        static Logger.syncEngine.getter();
        v70 = v69;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();

        v73 = os_log_type_enabled(v71, v72);
        v74 = v1[52];
        v75 = v1[48];
        if (v73)
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v306[0] = v77;
          *v76 = 136446210;
          v78 = v70;
          v300 = v75;
          v79 = [v78 description];
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v83 = sub_100002CB4(v80, v82, v306);

          *(v76 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v71, v72, "Record was deleted from server: %{public}s", v76, 0xCu);
          sub_1000032BC(v77);

          v1 = v289;

          (*v261)(v74, v300);
        }

        else
        {

          (*v261)(v74, v75);
        }

        v85 = v1[34];
        v84 = v1[35];
        v86 = v1[26];
        static UsageStore.shared.getter();
        v87 = *v274;
        (*v274)(v84, 1, 1, v86);
        sub_10001DD64(v84, v85, &qword_10006BE78, &qword_100056C00);
        v88 = *v269;
        v89 = (*v269)(v85, 1, v86);
        v90 = v70;
        if (v89 != 1)
        {
          break;
        }

        v91 = v1[29];
        sub_10000D5C4(v1[34], &qword_10006BE78, &qword_100056C00);
        *(swift_task_alloc() + 16) = v90;
        UsageStore.first(where:)();

        v92 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
        if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
        {
          sub_10000D5C4(v1[29], &qword_10006BE60, &qword_100056BE8);
          v93 = 1;
        }

        else
        {
          v258 = v1[33];
          v95 = v1[31];
          v96 = v1[29];
          v97 = v1[26];
          v98 = *(v255 + 8);
          v99 = *(v92 + 48);
          v100 = *(v256 + 48);
          *v95 = *v96;
          *(v257 + 8) = v98;
          v101 = *v254;
          (*v254)(&v95[v100], &v96[v99], v97);

          v101(v258, &v95[*(v256 + 48)], v97);
          v93 = 0;
        }

        v102 = v1[33];
        v103 = v1[26];
        v87(v102, v93, 1, v103);
        if (!v88(v102, 1, v103))
        {
          v104 = v1[33];
          (*v253)(v1[28], v104, v1[26]);
          sub_10000D5C4(v104, &qword_10006BE78, &qword_100056C00);
          v94 = v252;
          goto LABEL_32;
        }

        v66 = v1[35];
        sub_10000D5C4(v1[33], &qword_10006BE78, &qword_100056C00);
        sub_10000D5C4(v66, &qword_10006BE78, &qword_100056C00);

LABEL_21:
        v64 = v284 + v262;
        if (!--v292)
        {
          goto LABEL_43;
        }
      }

      v94 = v259;
LABEL_32:
      v105 = *v94;
      v106 = v1[35];
      v107 = v1[32];
      v108 = v1[26];
      UsageItemRecord.identifier.getter();
      (*v260)(v105, v108);
      sub_10001DD64(v106, v107, &qword_10006BE78, &qword_100056C00);
      UsageStore.subscript.setter();

      sub_10000D5C4(v106, &qword_10006BE78, &qword_100056C00);

      goto LABEL_21;
    }

    if (v6 != enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
    {
      if (v6 != enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
      {
        if (v6 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
        {
          v155 = v1[62];
          v156 = v1[9];
          v157 = v1[10];
          v158 = v1[8];
          (*(v1[60] + 96))(v155, v7);
          (*(v156 + 32))(v157, v155, v158);
          RecordZone = CKSyncEngine.Event.WillFetchRecordZoneChanges.zoneID.getter();
          sub_100037D04(RecordZone, v160, v161);

          (*(v156 + 8))(v157, v158);
        }

        else if (v6 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
        {
          v162 = v1[62];
          v164 = v1[6];
          v163 = v1[7];
          v165 = v1[5];
          (*(v1[60] + 96))(v162, v7);
          (*(v164 + 32))(v163, v162, v165);
          v166 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
          sub_10003319C(v166);

          (*(v164 + 8))(v163, v165);
        }

        else
        {
          v167 = v1[61];
          v168 = v1[2];
          v169 = v1[59];
          static Logger.syncEngine.getter();
          (v5)(v167, v168, v169);
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.debug.getter();
          v172 = os_log_type_enabled(v170, v171);
          v174 = v1[60];
          v173 = v1[61];
          v175 = v1[59];
          v176 = v1[49];
          v177 = v1[50];
          v178 = v1[48];
          if (v172)
          {
            v302 = v1[48];
            v179 = swift_slowAlloc();
            v294 = swift_slowAlloc();
            v306[0] = v294;
            *v179 = 136446210;
            sub_1000380BC(&qword_10006C238, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
            v286 = v177;
            v180 = dispatch thunk of CustomStringConvertible.description.getter();
            v182 = v181;
            v280 = v171;
            v183 = *(v174 + 8);
            v183(v173, v175);
            v184 = sub_100002CB4(v180, v182, v306);
            v1 = v289;

            *(v179 + 4) = v184;
            _os_log_impl(&_mh_execute_header, v170, v280, "Received event: %{public}s", v179, 0xCu);
            sub_1000032BC(v294);

            (*(v176 + 8))(v286, v302);
          }

          else
          {

            v183 = *(v174 + 8);
            v183(v173, v175);
            (*(v176 + 8))(v177, v178);
          }

          v183(v1[62], v1[59]);
        }

        goto LABEL_45;
      }

      v125 = v1[62];
      v127 = v1[57];
      v126 = v1[58];
      v128 = v1[56];
      (*(v1[60] + 96))(v125, v7);
      (*(v127 + 32))(v126, v125, v128);
      v129 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
      v5 = v129;
      if (!(v129 >> 62))
      {
        v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v130)
        {
          goto LABEL_73;
        }

LABEL_51:
        v131 = v130 - 1;
        if (v130 < 1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v132 = 0;
        v133 = v5 & 0xC000000000000001;
        v134 = (v1[49] + 8);
        v270 = v5;
        v275 = v130 - 1;
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_54;
        }

LABEL_53:
        for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v5 + 8 * v132 + 32))
        {
          v136 = i;
          static Logger.syncEngine.getter();
          v137 = v1;
          v138 = v136;
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.debug.getter();

          v141 = os_log_type_enabled(v139, v140);
          v142 = v137[55];
          v143 = v137[48];
          if (v141)
          {
            v301 = v142;
            v144 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            v306[0] = v285;
            *v144 = 136446210;
            v279 = v138;
            v293 = v143;
            v145 = [v279 description];
            v146 = v133;
            v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v148 = v132;
            v149 = v134;
            v151 = v150;

            v152 = v147;
            v133 = v146;
            v153 = sub_100002CB4(v152, v151, v306);
            v134 = v149;
            v132 = v148;

            *(v144 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v139, v140, "Saved record: %{public}s", v144, 0xCu);
            sub_1000032BC(v285);
            v5 = v270;
            v131 = v275;

            (*v134)(v301, v293);
            v154 = v275 == v148;
          }

          else
          {

            (*v134)(v142, v143);
            v154 = v131 == v132;
          }

          v1 = v289;
          if (v154)
          {
            break;
          }

          ++v132;
          if (v133)
          {
            goto LABEL_53;
          }

LABEL_54:
          ;
        }

LABEL_73:

        v185 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
        v186 = *(v185 + 16);
        if (v186)
        {
          v187 = v1[46];
          v189 = *(v187 + 16);
          v188 = v187 + 16;
          v190 = v185 + ((*(v188 + 64) + 32) & ~*(v188 + 64));
          v295 = *(v188 + 56);
          v303 = v189;
          do
          {
            v191 = v1[47];
            v192 = v1[45];
            v303(v191, v190, v192);
            v193 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
            v194 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
            (*(v188 - 8))(v191, v192);
            sub_100030EDC(v193, v194, v195);

            v190 += v295;
            --v186;
          }

          while (v186);
        }

        v196 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
        v197 = v196;
        if (v196 >> 62)
        {
          v198 = _CocoaArrayWrapper.endIndex.getter();
          if (v198)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v198 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v198)
          {
LABEL_78:
            v199 = v198 - 1;
            if (v198 < 1)
            {
LABEL_104:
              __break(1u);
              return;
            }

            v200 = 0;
            v201 = v197 & 0xC000000000000001;
            v202 = (v1[49] + 8);
            v271 = v197;
            v276 = v198 - 1;
            if ((v197 & 0xC000000000000001) == 0)
            {
              goto LABEL_81;
            }

LABEL_80:
            for (j = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; j = *(v197 + 8 * v200 + 32))
            {
              v204 = j;
              static Logger.syncEngine.getter();
              v205 = v1;
              v206 = v204;
              v207 = Logger.logObject.getter();
              v208 = static os_log_type_t.debug.getter();

              v209 = os_log_type_enabled(v207, v208);
              v210 = v205[54];
              v211 = v205[48];
              if (v209)
              {
                v304 = v210;
                v212 = swift_slowAlloc();
                v287 = swift_slowAlloc();
                v306[0] = v287;
                *v212 = 136446210;
                v281 = v206;
                v296 = v211;
                v213 = [v281 description];
                v214 = v201;
                v215 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v216 = v200;
                v217 = v202;
                v219 = v218;

                v220 = v215;
                v201 = v214;
                v221 = sub_100002CB4(v220, v219, v306);
                v202 = v217;
                v200 = v216;

                *(v212 + 4) = v221;
                _os_log_impl(&_mh_execute_header, v207, v208, "Deleting record: %{public}s", v212, 0xCu);
                sub_1000032BC(v287);
                v197 = v271;
                v199 = v276;

                (*v202)(v304, v296);
                v222 = v276 == v216;
              }

              else
              {

                (*v202)(v210, v211);
                v222 = v199 == v200;
              }

              v1 = v289;
              if (v222)
              {
                break;
              }

              ++v200;
              if (v201)
              {
                goto LABEL_80;
              }

LABEL_81:
              ;
            }
          }
        }

        v223 = v1[49];

        v224 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
        v225 = v224;
        v226 = 0;
        v227 = v224 + 64;
        v228 = -1;
        v229 = -1 << *(v224 + 32);
        if (-v229 < 64)
        {
          v228 = ~(-1 << -v229);
        }

        v230 = v228 & *(v224 + 64);
        v231 = (63 - v229) >> 6;
        v232 = (v223 + 8);
        v267 = (v223 + 8);
        while (v230)
        {
          v233 = v226;
LABEL_99:
          v234 = __clz(__rbit64(v230));
          v230 &= v230 - 1;
          v235 = (v233 << 9) | (8 * v234);
          v236 = *(*(v225 + 56) + v235);
          v237 = *(*(v225 + 48) + v235);
          v305 = v236;
          static Logger.syncEngine.getter();
          v238 = v1;
          v239 = v237;
          v240 = Logger.logObject.getter();
          LOBYTE(v237) = static os_log_type_t.debug.getter();

          v297 = v237;
          v241 = os_log_type_enabled(v240, v237);
          v242 = v238[53];
          v243 = v238[48];
          if (v241)
          {
            v288 = v242;
            v272 = swift_slowAlloc();
            v277 = swift_slowAlloc();
            v306[0] = v277;
            *v272 = 136446210;
            v244 = v239;
            v282 = v243;
            v245 = [v244 description];
            v246 = v225;
            v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v249 = v248;

            v250 = v247;
            v225 = v246;
            v251 = sub_100002CB4(v250, v249, v306);
            v232 = v267;

            *(v272 + 4) = v251;
            _os_log_impl(&_mh_execute_header, v240, v297, "Failed to delete record: %{public}s", v272, 0xCu);
            sub_1000032BC(v277);

            (*v267)(v288, v282);
          }

          else
          {

            (*v232)(v242, v243);
          }

          v226 = v233;
          v1 = v289;
        }

        while (1)
        {
          v233 = v226 + 1;
          if (__OFADD__(v226, 1))
          {
            break;
          }

          if (v233 >= v231)
          {
            (*(v1[57] + 8))(v1[58], v1[56]);

            goto LABEL_45;
          }

          v230 = *(v227 + 8 * v233);
          ++v226;
          if (v230)
          {
            goto LABEL_99;
          }
        }

        __break(1u);
        goto LABEL_103;
      }

LABEL_72:
      v130 = _CocoaArrayWrapper.endIndex.getter();
      if (!v130)
      {
        goto LABEL_73;
      }

      goto LABEL_51;
    }

    v112 = v1[62];
    v114 = v1[18];
    v113 = v1[19];
    v115 = v1[17];
    (*(v1[60] + 96))(v112, v7);
    (*(v114 + 32))(v113, v112, v115);
    v116 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
    v117 = v116;
    if (v116 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
      if (v118)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v118)
      {
LABEL_37:
        if (v118 >= 1)
        {
          for (k = 0; k != v118; ++k)
          {
            if ((v117 & 0xC000000000000001) != 0)
            {
              v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v120 = *(v117 + 8 * k + 32);
            }

            v123 = v120;
            sub_100037A68(v120, v121, v122);
          }

          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_72;
      }
    }

LABEL_70:
    v10 = v1[18];
    v9 = v1[19];
    v11 = v1[17];

    goto LABEL_3;
  }

  v8 = v1[62];
  v10 = v1[24];
  v9 = v1[25];
  v12 = v1[22];
  v11 = v1[23];
  v13 = v1[20];
  v14 = v1[21];
  v15 = v1[3];
  (*(v1[60] + 96))(v8, v7);
  (*(v10 + 32))(v9, v8, v11);
  CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
  sub_1000329A8(v12, v15);
  (*(v14 + 8))(v12, v13);
LABEL_3:
  (*(v10 + 8))(v9, v11);
LABEL_45:

  v124 = v1[1];

  v124();
}

void sub_100030EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v62 - v11;
  v66[0] = a2;
  swift_errorRetain();
  v13 = sub_100003720(&qword_10006BF60, &qword_100056CA0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = v67;
  v65 = v3;
  v66[0] = v67;
  sub_1000380BC(&qword_10006B860, type metadata accessor for CKError, &unk_10005618C);
  _BridgedStoredNSError.code.getter();
  if (v67 != 14)
  {

    goto LABEL_7;
  }

  v63 = v13;
  v64 = v7;
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == 0xD000000000000010 && 0x80000001000581B0 == v19)
  {

    goto LABEL_11;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v35 & 1) == 0)
  {

    v7 = v64;
LABEL_7:
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66[0] = v64;
      *v23 = 136446466;
      v24 = v20;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v10;
      v27 = v7;
      v28 = v26;
      v65 = v6;
      v30 = v29;

      v31 = sub_100002CB4(v28, v30, v66);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2082;
      v67 = a2;
      swift_errorRetain();
      v32 = String.init<A>(describing:)();
      v34 = sub_100002CB4(v32, v33, v66);

      *(v23 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to save record: %{public}s : %{public}s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v27 + 8))(v63, v65);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return;
  }

LABEL_11:
  v36 = related decl 'e' for CKErrorCode.serverRecord.getter();
  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = v36;
  v38 = related decl 'e' for CKErrorCode.clientRecord.getter();
  if (!v38)
  {

LABEL_17:
    static Logger.syncEngine.getter();
    v48 = a1;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136446210;
      v53 = v48;
      v54 = [v53 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v6;
      v57 = v56;

      v58 = sub_100002CB4(v55, v57, v66);

      *(v51 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "No server or client record when merging: %{public}s", v51, 0xCu);
      sub_1000032BC(v52);

      (*(v64 + 8))(v12, v65);
    }

    else
    {

      (*(v64 + 8))(v12, v6);
    }

    return;
  }

  v39 = v38;
  v40 = sub_10001463C();
  v42 = v41;
  v43 = [v37 encryptedValues];
  if (v42 >> 60 == 15)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v66[2] = 0;
  }

  else
  {
    v47 = &protocol witness table for Data;
    v46 = &type metadata for Data;
    v44 = v40;
    v45 = v42;
  }

  v66[0] = v44;
  v66[1] = v45;
  v66[3] = v46;
  v66[4] = v47;
  swift_getObjectType();
  sub_100037EFC(v40, v42);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100037F10(v40, v42);
  v59 = *(v65 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord);
  *(v65 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord) = v37;
  v60 = v37;

  v61 = [objc_opt_self() defaultCenter];
  if (qword_10006B7C8 != -1)
  {
    swift_once();
  }

  [v61 postNotificationName:qword_10006C9A0 object:0];
}

void sub_1000315AC(void *a1)
{
  v2 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v3 = __chkstk_darwin(v2 - 8);
  v155 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v158 = &v150 - v5;
  v6 = type metadata accessor for UsageItemRecord();
  v160 = *(v6 - 8);
  v161 = v6;
  __chkstk_darwin(v6);
  v156 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v157 = &v150 - v14;
  v15 = __chkstk_darwin(v13);
  v159 = &v150 - v16;
  v17 = __chkstk_darwin(v15);
  v163 = &v150 - v18;
  v19 = __chkstk_darwin(v17);
  v162 = &v150 - v20;
  v21 = __chkstk_darwin(v19);
  v165 = &v150 - v22;
  __chkstk_darwin(v21);
  v24 = &v150 - v23;
  v25 = [a1 recordID];
  v26 = [v25 recordName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {

    goto LABEL_5;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
LABEL_5:
    static Logger.syncEngine.getter();
    v32 = v25;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v9;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v161 = v8;
      v38 = v37;
      v166[0] = v37;
      *v36 = 136446210;
      v39 = v32;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100002CB4(v41, v43, v166);

      *(v36 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring fetched share: %{public}s", v36, 0xCu);
      sub_1000032BC(v38);

      (*(v35 + 8))(v12, v161);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    return;
  }

  v45 = CKSyncEngine.database.getter();
  v46 = [v45 scope];

  static Logger.syncEngine.getter();
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  v50 = os_log_type_enabled(v48, v49);
  v154 = v9;
  v151 = v46;
  v152 = v47;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v166[0] = v153;
    *v51 = 136446466;
    if (v46 == 3)
    {
      v52 = 0x646572616873;
    }

    else
    {
      v52 = 0x65746176697270;
    }

    if (v46 == 3)
    {
      v53 = 0xE600000000000000;
    }

    else
    {
      v53 = 0xE700000000000000;
    }

    v54 = sub_100002CB4(v52, v53, v166);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    v55 = v47;
    v56 = [v55 description];
    v57 = v25;
    v58 = v8;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = v59;
    v8 = v58;
    v25 = v57;
    v63 = sub_100002CB4(v62, v61, v166);

    *(v51 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v48, v49, "Fetched %{public}s record from server: %{public}s", v51, 0x16u);
    swift_arrayDestroy();

    v64 = v154;
  }

  else
  {

    v64 = v9;
  }

  v153 = *(v64 + 8);
  v153(v24, v8);
  v65 = [v25 zoneID];
  v66 = [v65 zoneName];

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  if (v67 == 0x7A69726F68747541 && v69 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v70 = v152;
    v71 = sub_10001463C();
    if (v72 >> 60 == 15)
    {
      v161 = v8;
      v73 = v163;
      static Logger.syncEngine.getter();
      v74 = v70;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v166[0] = v78;
        *v77 = 136446210;
        v79 = v74;
        v80 = [v79 description];
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        v84 = sub_100002CB4(v81, v83, v166);

        *(v77 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v75, v76, "Missing authorization key data in record: %{public}s", v77, 0xCu);
        sub_1000032BC(v78);
      }

      else
      {
      }

      v91 = v73;
      goto LABEL_30;
    }

    v85 = v71;
    v86 = v72;
    v163 = v25;
    v87 = [objc_allocWithZone(MOLocalSettingsStore) init];
    v88 = [v87 managedSettings];
    v89 = [v88 tokenDecodingKeys];

    if (v89)
    {
      sub_10002DCC4();
      v90 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v90 = &_swiftEmptySetSingleton;
    }

    v166[5] = v90;
    sub_10000DA30(v85, v86);
    sub_100035088(v166, v85, v86);
    sub_100007644(v166[0], v166[1]);
    v93 = [v87 managedSettings];
    sub_10002DCC4();
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v93 setTokenDecodingKeys:isa];

    v95 = [v87 managedSettings];
    v96 = [v95 tokenEncodingKey];

    if (v96)
    {
      v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      if (v99 >> 60 != 15)
      {
        sub_100037EFC(v85, v86);
        sub_100037EFC(v97, v99);
        v100 = sub_1000372D0(v97, v99, v85, v86);
        sub_100037F10(v85, v86);
        sub_100037F10(v97, v99);
        if (v100)
        {

          sub_100037F10(v85, v86);
          sub_100037F10(v97, v99);

          return;
        }

        if (v151 != 3)
        {
          v142 = static Data.none.getter();
          v144 = v143;
          sub_100037EFC(v97, v99);
          if (v144 >> 60 == 15)
          {
            sub_100037F10(v97, v99);
            sub_100037F10(v142, v144);

LABEL_70:
            sub_100037F10(v85, v86);

            sub_100037F10(v97, v99);
            return;
          }

          v161 = v8;
          sub_10000DA30(v142, v144);
          v149 = sub_1000372D0(v97, v99, v142, v144);
          sub_100037F10(v142, v144);
          sub_100007644(v142, v144);
          sub_100037F10(v97, v99);

          if (!v149)
          {

            goto LABEL_70;
          }

          v8 = v161;
          goto LABEL_40;
        }

LABEL_39:

LABEL_40:
        static Logger.syncEngine.getter();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Saving synced authorization key data", v103, 2u);
        }

        v153(v165, v8);
        v104 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations;
        v105 = type metadata accessor for Locations();
        v166[3] = v105;
        v166[4] = &protocol witness table for Locations;
        v106 = sub_10001C8A8(v166);
        (*(*(v105 - 8) + 16))(v106, v164 + v104, v105);
        sub_100042358(v85, v86, v166);
        sub_1000032BC(v166);
        v121 = [v87 managedSettings];

        v122 = Data._bridgeToObjectiveC()().super.isa;
        [v121 setTokenEncodingKey:v122];

        if (v151 == 3)
        {
          v123 = [objc_opt_self() defaultCenter];
          if (qword_10006B7C8 != -1)
          {
            swift_once();
          }

          [v123 postNotificationName:qword_10006C9A0 object:0];

          sub_100037F10(v85, v86);
          sub_100037F10(v97, v99);
        }

        else
        {

          sub_100037F10(v85, v86);
          sub_100037F10(v97, v99);
        }

        return;
      }
    }

    else
    {
      v97 = 0;
      v99 = 0xF000000000000000;
    }

    sub_100037EFC(v85, v86);
    sub_100037EFC(v97, v99);
    sub_100037F10(v97, v99);
    sub_100037F10(v85, v86);
    goto LABEL_39;
  }

  v163 = v25;
  if (v67 == 0x7974697669746341 && v69 == 0xE800000000000000)
  {
  }

  else
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v107 & 1) == 0)
    {
      v128 = v157;
      static Logger.syncEngine.getter();
      v129 = v163;
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v161 = v8;
        v134 = v133;
        v166[0] = v133;
        *v132 = 136446210;
        v135 = v128;
        v136 = [v129 zoneID];
        v137 = [v136 zoneName];

        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = v139;

        v141 = sub_100002CB4(v138, v140, v166);

        *(v132 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v130, v131, "Unexpected zone: %{public}s", v132, 0xCu);
        sub_1000032BC(v134);

        v91 = v135;
LABEL_30:
        v92 = v161;
LABEL_31:
        v153(v91, v92);
        return;
      }

      v91 = v128;
LABEL_66:
      v92 = v8;
      goto LABEL_31;
    }
  }

  if ((*(v164 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) & 1) == 0 && v151 != 3)
  {
    v108 = v159;
    static Logger.syncEngine.getter();
    v109 = v152;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v166[0] = v113;
      *v112 = 136446210;
      v114 = v109;
      v115 = v8;
      v116 = [v114 description];
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = sub_100002CB4(v117, v119, v166);

      *(v112 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "Ignoring record: %{public}s", v112, 0xCu);
      sub_1000032BC(v113);

      v91 = v108;
      v92 = v115;
      goto LABEL_31;
    }

    v91 = v108;
    goto LABEL_66;
  }

  v124 = v152;
  v125 = v158;
  sub_1000136C0(v124, v158);
  v127 = v160;
  v126 = v161;
  if ((*(v160 + 48))(v125, 1, v161) == 1)
  {

    sub_10000D5C4(v125, &qword_10006BE78, &qword_100056C00);
  }

  else
  {
    v145 = v156;
    (*(v127 + 32))(v156, v125, v126);
    type metadata accessor for UsageStore();
    v146 = static UsageStore.shared.getter();
    __chkstk_darwin(v146);
    *(&v150 - 2) = v145;
    v147 = UsageStore.contains(where:)();

    if ((v147 & 1) == 0)
    {
      static UsageStore.shared.getter();
      UsageItemRecord.identifier.getter();
      v148 = v155;
      (*(v127 + 16))(v155, v145, v126);
      (*(v127 + 56))(v148, 0, 1, v126);
      UsageStore.subscript.setter();
    }

    (*(v127 + 8))(v145, v126);
  }
}

uint64_t sub_1000329A8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for URL();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = __chkstk_darwin(v3);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v52 - v6;
  v7 = sub_100003720(&qword_10006C248, &unk_100057A00);
  v8 = __chkstk_darwin(v7 - 8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v52 - v10;
  v11 = type metadata accessor for CKSyncEngine.State.Serialization();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = type metadata accessor for Logger();
  v65 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v63 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v53 = &v52 - v22;
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  static Logger.syncEngine.getter();
  v64 = v12;
  v25 = *(v12 + 16);
  v60 = a1;
  v25(v17, a1, v11);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v61 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v18;
    v31 = v30;
    v66 = v30;
    *v29 = 136446210;
    v25(v15, v17, v11);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    (*(v64 + 8))(v17, v11);
    v35 = sub_100002CB4(v32, v34, &v66);
    v36 = v65;

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Updated sync serialization: %{public}s", v29, 0xCu);
    sub_1000032BC(v31);
    v18 = v52;

    v37 = *(v36 + 8);
    v37(v24, v18);
    v38 = v64;
  }

  else
  {

    v38 = v64;
    (*(v64 + 8))(v17, v11);
    v37 = *(v65 + 8);
    v37(v24, v18);
  }

  v39 = CKSyncEngine.database.getter();
  v40 = [v39 scope];

  if (v40 == 3)
  {
    v41 = v54;
    v61(v54, v60, v11);
    (*(v38 + 56))(v41, 0, 1, v11);
    v42 = v56;
    Locations.familyControlsSharedSyncSerialization.getter();
    goto LABEL_8;
  }

  if (v40 == 2)
  {
    v41 = v55;
    v61(v55, v60, v11);
    (*(v38 + 56))(v41, 0, 1, v11);
    v42 = v57;
    Locations.familyControlsPrivateSyncSerialization.getter();
LABEL_8:
    sub_100037438(v41, v42);
    (*(v58 + 8))(v42, v59);
    return sub_10000D5C4(v41, &qword_10006C248, &unk_100057A00);
  }

  v43 = v53;
  static Logger.syncEngine.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66 = v47;
    *v46 = 136446210;
    v48 = CKDatabaseScope.description.getter();
    v50 = sub_100002CB4(v48, v49, &v66);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "Not saving serialization for engine with scope: %{public}s", v46, 0xCu);
    sub_1000032BC(v47);
  }

  return (v37)(v43, v18);
}

void sub_10003319C(void *a1)
{
  v2 = type metadata accessor for URL();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v40 = &v33 - v9;
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  static Logger.syncEngine.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v37 = v4;
  v39 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v36 = v5;
    v34 = v18;
    v41 = v18;
    *v17 = 136446210;
    v19 = v12;
    v20 = v2;
    v21 = [v19 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v2 = v20;
    v25 = sub_100002CB4(v22, v24, &v41);

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Did fetch changes for %{public}s", v17, 0xCu);
    sub_1000032BC(v34);
    v5 = v36;

    v6 = v35;
  }

  v26 = *(v6 + 8);
  v26(v11, v5);
  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v27 = qword_10006C960;
  v28 = static NSObject.== infix(_:_:)();

  if (v28)
  {
    static Logger.syncEngine.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Did fetch changes for activity zone, saving the local store.", v31, 2u);
    }

    v26(v40, v5);
    type metadata accessor for UsageStore();
    static UsageStore.shared.getter();
    v32 = v37;
    Locations.familyControlsStore.getter();
    dispatch thunk of UsageStore.save(to:)();
    (*(v38 + 8))(v32, v2);
  }
}

uint64_t sub_100033738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v7 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = *(v8 + 56);
  v15 = type metadata accessor for UsageItemRecord();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a3, v15);
  sub_10001DD64(v13, v11, &qword_10006BE70, &qword_100056BF8);

  v17 = *(v8 + 56);
  v18 = UsageItemRecord.identifier.getter();
  v20 = v19;
  (*(v16 + 8))(&v11[v17], v15);
  if (v18 == UsageItemRecord.identifier.getter() && v20 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000D5C4(v13, &qword_10006BE70, &qword_100056BF8);
  return v23 & 1;
}

void sub_100033928(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = type metadata accessor for Logger();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = (&v55 - v14);
  v15 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v16 = String._bridgeToObjectiveC()();

  v61 = v15;
  v17 = [v15 fileExistsAtPath:v16];

  if (v17)
  {
    v18 = v62;
    v19 = Data.init(contentsOf:options:)();
    v62 = v18;
    if (v18)
    {
LABEL_5:

      return;
    }

    v21 = v19;
    v22 = v20;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v23 = PropertyListDecoder.init()();
    sub_100003720(&qword_10006C260, &qword_1000570E0);
    sub_100038000();
    v24 = v62;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v62 = v24;
    if (v24)
    {

      sub_100007644(v21, v22);
      goto LABEL_5;
    }

    v55 = v23;
    v56 = v22;
    v35 = v63;
    if (v63[2])
    {
      v36 = sub_100041270(0xD000000000000014, 0x80000001000589F0);
      if (v37)
      {
        v38 = v36;
        v39 = v35[7];
        v40 = type metadata accessor for CKSyncEngine.State.Serialization();
        v41 = v60;
        v42 = *(v40 - 8);
        (*(v42 + 16))(v60, v39 + *(v42 + 72) * v38, v40);

        sub_100007644(v21, v56);

        (*(v42 + 56))(v41, 0, 1, v40);
        return;
      }
    }

    v43 = v57;
    static Logger.syncEngine.getter();
    v44 = v4;
    v45 = v3;
    (*(v4 + 16))(v9, a1, v3);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63 = v49;
      *v48 = 136446210;
      sub_1000380BC(&qword_10006C280, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v45;
      v53 = v52;
      (*(v44 + 8))(v9, v51);
      v54 = sub_100002CB4(v50, v53, &v63);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "Did not find sync state serialiazation at: %{public}s", v48, 0xCu);
      sub_1000032BC(v49);

      sub_100007644(v21, v56);

      (*(v58 + 8))(v57, v59);
    }

    else
    {

      sub_100007644(v21, v56);

      (*(v44 + 8))(v9, v3);
      (*(v58 + 8))(v43, v59);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    (*(v4 + 16))(v7, a1, v3);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = v3;
    v28 = v4;
    if (os_log_type_enabled(v25, v26))
    {
      v29 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v29 = 136446210;
      sub_1000380BC(&qword_10006C280, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v28 + 8))(v7, v27);
      v33 = sub_100002CB4(v30, v32, &v63);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Did not find sync state serialiazation at: %{public}s", v29, 0xCu);
      sub_1000032BC(v57);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    (*(v58 + 8))(v13, v59);
  }

  v34 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v34 - 8) + 56))(v60, 1, 1, v34);
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003411C;

  return sub_10002EF9C(a1, a2);
}

uint64_t sub_10003411C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100034210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100038104;

  return sub_10002E534(a1, a2, a3);
}

uint64_t sub_1000342C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100038104;

  return CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_100034394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10003445C;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10003445C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100034558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10003445C;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10003467C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000348AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
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
    v10 = sub_100037218(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100007644(a3, a4);
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
  sub_10003467C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100007644(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_100034A3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100034A5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100034A7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034D5C(a1, a2, a3, *v3, &qword_10006C030, &qword_100056D48, &type metadata accessor for AuthorizationRecord);
  *v3 = result;
  return result;
}

void *sub_100034AC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100034D5C(a1, a2, a3, *v3, &qword_10006BFD8, &qword_1000579E0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
  *v3 = result;
  return result;
}

char *sub_100034B04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006C278, &qword_1000570E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034C14(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003720(&qword_10006BFC0, &qword_100056D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100003720(&qword_10006BF90, &unk_100056CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034D5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003720(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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