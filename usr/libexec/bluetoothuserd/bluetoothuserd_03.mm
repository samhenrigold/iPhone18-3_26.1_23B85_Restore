uint64_t sub_100048FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100041D50(v1[3], v1[4], v1[5]);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100049028()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v0[4];
  v7 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v8 = *(v7 + *(v5 + 64));

  return sub_100042894(v6, v0 + v3, v7, v8, v1, v2);
}

void sub_100049178()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1000472A8(v2);
}

uint64_t sub_1000491D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 248))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

unint64_t sub_100049248(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000492DC(a1, v2);
}

unint64_t sub_1000492DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

Swift::Int sub_1000493E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A45C(&qword_100093C80, &qword_100074268);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100049688(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

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

uint64_t sub_100049838(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000493E0(v16, a4 & 1);
      v11 = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100049C74();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1000499B8()
{
  result = qword_100093B08;
  if (!qword_100093B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B08);
  }

  return result;
}

unint64_t sub_100049A10()
{
  result = qword_100093B10;
  if (!qword_100093B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B10);
  }

  return result;
}

unint64_t sub_100049A68()
{
  result = qword_100093B18;
  if (!qword_100093B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B18);
  }

  return result;
}

unint64_t sub_100049AC0()
{
  result = qword_100093B20;
  if (!qword_100093B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B20);
  }

  return result;
}

unint64_t sub_100049B18()
{
  result = qword_100093B28;
  if (!qword_100093B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserFileManager.UserFileManagerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UserFileManager.UserFileManagerError(_WORD *result, int a2, int a3)
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

void sub_100049C74()
{
  v1 = v0;
  sub_10000A45C(&qword_100093C80, &qword_100074268);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100049DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100049E1C()
{
  result = qword_100093C88;
  if (!qword_100093C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093C88);
  }

  return result;
}

unint64_t sub_100049E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093CC8, &unk_1000742A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100049248(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100049F7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100049F94(void *a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_100046894(a1, a2 & 1, v9, v2 + v8, v10, v5, v6);
}

unint64_t sub_10004A080()
{
  result = qword_100093CB8;
  if (!qword_100093CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093CB8);
  }

  return result;
}

uint64_t sub_10004A108(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for URL() - 8);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)));

  return sub_100042E00(a1, v1 + v5, v8, v9, v3, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_10004A44C();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() currentRunLoop];
  [v4 run];

  return 0;
}

uint64_t sub_10004A44C()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BluetoothUserDaemon(0);
  sub_100069340(0xD000000000000018, 0x800000010007A7D0);
  sub_10000A8F8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10004A728();
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10004A780();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = *sub_100069BF4(v6);
  (*(v7 + 400))();
  v8 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 136);

  v8(v9);
}

unint64_t sub_10004A728()
{
  result = qword_1000931A0;
  if (!qword_1000931A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931A0);
  }

  return result;
}

unint64_t sub_10004A780()
{
  result = qword_1000931B0;
  if (!qword_1000931B0)
  {
    sub_10000C9B0(&unk_100092CD0, &unk_100072C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931B0);
  }

  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  if (String.count.getter())
  {

    return 0;
  }

  else
  {
    v2 = String.uppercased()();
    v20 = sub_100003C74(v2._countAndFlagsBits, v2._object);

    result = String.count.getter();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v4 = result / 2;
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v4;
        bzero(v5 + 4, v4);
      }

      v6 = String.count.getter();

      if (v6 < 1)
      {
LABEL_29:

        v19 = sub_10004C18C(v5);

        return v19;
      }

      v7 = 0;
      v8 = v20 + 32;
      v9 = *(v20 + 2);
      while (1)
      {
        v10 = __OFADD__(v7, 2) ? 0x7FFFFFFFFFFFFFFFLL : v7 + 2;
        if (v7 >= v9)
        {
          break;
        }

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v11 >= v9)
        {
          goto LABEL_34;
        }

        v12 = v8[v7];
        v13 = v8[v11];
        if (!isxdigit(v12) || (result = isxdigit(v13), !result))
        {

          return 0;
        }

        if (v12 >= 0x41)
        {
          v14 = 55;
        }

        else
        {
          v14 = 48;
        }

        v15 = v12 - v14;
        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_35;
        }

        if (v13 >= 0x41)
        {
          v16 = 55;
        }

        else
        {
          v16 = 48;
        }

        v17 = v13 - v16;
        if ((v17 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v15 > 0xFu)
        {
          goto LABEL_37;
        }

        v18 = 16 * (v15 & 0xF) + v17;
        if ((v18 & 0x100) != 0)
        {
          goto LABEL_38;
        }

        if (v7 >> 1 >= v5[2])
        {
          goto LABEL_39;
        }

        *(v5 + (v7 >> 1) + 32) = v18;
        v7 = v10;
        if (v10 >= v6)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

__int16 Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = "BluetoothUserDaemon";
  if (("BluetoothUserDaemon" & 0x1000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v9 = String.UTF16View._nativeGetOffset(for:)();
  if (v9)
  {
    while (1)
    {
      v10 = v9;
      v11 = sub_10004C110(v9, 0);
      v8 = sub_10004BE3C(v30, (v11 + 4), v10, 0xD000000000000010, v8 | 0x8000000000000000);

      if (v8 == v10)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v9 = String.UTF16View._foreignCount()();
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_16;
    }

LABEL_14:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_32:
      __break(1u);
      return v9;
    }

    v13 = v13;
    goto LABEL_16;
  }

  if (v12 != 2)
  {
    v17 = sub_10004B340(0, 0, 0, _swiftEmptyArrayStorage);
    goto LABEL_19;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = sub_10004B340(0, (2 * v13) & ~((2 * v13) >> 63), 0, _swiftEmptyArrayStorage);
LABEL_19:
  sub_100006218(a1, a2);
  Data.Iterator.init(_:at:)();
  LOWORD(v9) = Data.Iterator.next()();
  if ((v9 & 0x100) == 0)
  {
    v18 = v9;
    v19 = v11 + 4;
    while (1)
    {
      v20 = v18 >> 4;
      if (v20 >= v11[2])
      {
        break;
      }

      v21 = *(v19 + v20);
      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v9 = sub_10004B340((v22 > 1), v23 + 1, 1, v17);
        v17 = v9;
      }

      *(v17 + 2) = v24;
      *&v17[2 * v23 + 32] = v21;
      if ((v18 & 0xF) >= v11[2])
      {
        goto LABEL_30;
      }

      v25 = *(v19 + (v18 & 0xF));
      v26 = *(v17 + 3);
      if ((v23 + 2) > (v26 >> 1))
      {
        v17 = sub_10004B340((v26 > 1), v23 + 2, 1, v17);
      }

      *(v17 + 2) = v23 + 2;
      *&v17[2 * v24 + 32] = v25;
      LOWORD(v9) = Data.Iterator.next()();
      v18 = v9;
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_28:
  (*(v5 + 8))(v7, v4);

  v27 = String.init(utf16CodeUnits:count:)();

  LOWORD(v9) = v27;
  return v9;
}

unint64_t Data.intValue.getter(uint64_t a1, unint64_t a2)
{
  result = Data.hexString.getter(a1, a2);
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_10004B43C(result, v3, 16);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return v8;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          if (result)
          {
            v8 = 0;
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16;
              v18 = v17 - 48;
              if ((v17 - 48) >= 0xA)
              {
                if ((v17 - 65) < 6)
                {
                  v18 = v17 - 55;
                }

                else
                {
                  if ((v17 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v18 = v17 - 87;
                }
              }

              if ((v8 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_87;
              }

              v12 = __OFADD__(16 * v8, v18);
              v8 = 16 * v8 + v18;
              if (v12)
              {
                goto LABEL_87;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_87;
      }

      goto LABEL_97;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        if (result)
        {
          v8 = 0;
          while (1)
          {
            v22 = *result;
            v23 = v22 - 48;
            if ((v22 - 48) >= 0xA)
            {
              if ((v22 - 65) < 6)
              {
                v23 = v22 - 55;
              }

              else
              {
                if ((v22 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v23 = v22 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFADD__(16 * v8, v23);
            v8 = 16 * v8 + v23;
            if (v12)
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_87:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_88:
      v32 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
        return v8;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9;
            v11 = v10 - 48;
            if ((v10 - 48) >= 0xA)
            {
              if ((v10 - 65) < 6)
              {
                v11 = v10 - 55;
              }

              else
              {
                if ((v10 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v11 = v10 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFSUB__(16 * v8, v11);
            v8 = 16 * v8 - v11;
            if (v12)
            {
              goto LABEL_87;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_75:
        v8 = 0;
        LOBYTE(v5) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31[0] = result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v8, v26);
          v8 = 16 * v8 + v26;
          if (v12)
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v8, v15);
          v8 = 16 * v8 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19;
        v21 = v20 - 48;
        if ((v20 - 48) >= 0xA)
        {
          if ((v20 - 65) < 6)
          {
            v21 = v20 - 55;
          }

          else
          {
            if ((v20 - 97) > 5)
            {
              goto LABEL_87;
            }

            v21 = v20 - 87;
          }
        }

        if ((v8 - 0x800000000000000) >> 60 != 15)
        {
          break;
        }

        v12 = __OFADD__(16 * v8, v21);
        v8 = 16 * v8 + v21;
        if (v12)
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t Data.write(to:excludeFromBackup:options:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLResourceValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v22;
  result = Data.write(to:options:)();
  if (!v15)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v17 = v21;
    v18 = v20;
    (*(v21 + 16))(v10, a1, v20);
    URL.setResourceValues(_:)();
    (*(v17 + 8))(v10, v18);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

char *sub_10004B340(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&qword_100093D28, &qword_1000745F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unsigned __int8 *sub_10004B43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10004B9C8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10004B9C8(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10004BA48(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10004BA48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100003BB4(v9, 0), v12 = sub_10004BBA0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004BBA0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004BDC0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004BDC0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10004BDC0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10004BE3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = _StringObject.sharedUTF8.getter();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = Unicode.Scalar.UTF16View.subscript.getter();
    v22 = Unicode.Scalar.UTF16View.subscript.getter();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_10004C110(uint64_t a1, uint64_t a2)
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

  sub_10000A45C(&qword_100093D28, &qword_1000745F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_10004C18C(uint64_t a1)
{
  v9 = sub_10000A45C(&qword_100093D30, &qword_1000745F8);
  v10 = sub_10004C23C();
  v8[0] = a1;
  v2 = sub_1000078C8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10000790C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000036EC(v8);
  return v5;
}

unint64_t sub_10004C23C()
{
  result = qword_100093D38;
  if (!qword_100093D38)
  {
    sub_10000C9B0(&qword_100093D30, &qword_1000745F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093D38);
  }

  return result;
}

uint64_t sub_10004C2A0()
{
  v0 = type metadata accessor for Logger();
  sub_100038620(v0, qword_100098B10);
  sub_1000027FC(v0, qword_100098B10);
  sub_10003906C();

  return Logger.init(subsystem:category:)();
}

uint64_t LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v76 = (v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v79 = (v62 - v20);
  v80 = type metadata accessor for DispatchTime();
  v82 = *(v80 - 8);
  v21 = __chkstk_darwin(v80);
  v75 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v81 = v62 - v23;
  v24 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v67 - 1);
  __chkstk_darwin(v67);
  v65 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v63);
  v64 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v31 = __chkstk_darwin(v30);
  v78 = v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v34 = a4 * 1000.0;
  v35 = 2147483650.0;
  if (v34 < 2147483650.0)
  {
    v35 = v34;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v35 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v35;
  v36 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v36 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v36 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v36 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v36;
  v37 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v37 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v37 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v37 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v68 = v25;
  v69 = v24;
  v70 = v32;
  v71 = v31;
  *(v7 + 32) = v37;
  if (v34 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v74 = v17;
  v17 = v14;
  v14 = v16;
  v16 = a2;
  v25 = a1;
  if (qword_100097BE0 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v38 = type metadata accessor for Logger();
  sub_1000027FC(v38, qword_100098B10);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218752;
    *(v41 + 4) = 0x41DFFFFFFFC00000;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v34;
    *(v41 + 22) = 2048;
    *(v41 + 24) = a5;
    *(v41 + 32) = 2048;
    *(v41 + 34) = a6;
    _os_log_impl(&_mh_execute_header, v39, v40, "LocalDispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v41, 0x2Au);
  }

  a1 = v25;
  a2 = v16;
  v16 = v14;
  v14 = v17;
  v17 = v74;
LABEL_20:
  v74 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v73 = a3;
  v72 = v16;
  if (a1)
  {

    v42 = a1;
  }

  else
  {
    v62[1] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000232C(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10000A45C(&unk_100092CD0, &unk_100072C60);
    sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v66[13])(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v67);
    a1 = 0;
    v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v7 + 64) = v42;
  sub_100004890(0, &qword_100093D40, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000232C(&qword_100093D48, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v67 = a1;
  v66 = v42;
  sub_10000A45C(&qword_100093D50, &qword_100074608);
  sub_1000023BC(&qword_100093D58, &qword_100093D50, &qword_100074608);
  v43 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v68[1](v27, v43);
  *(v7 + 40) = v44;
  v45 = v75;
  static DispatchTime.now()();
  v46 = v79;
  *v79 = *(v7 + 24);
  v47 = enum case for DispatchTimeInterval.milliseconds(_:);
  v48 = v83;
  v49 = *(v83 + 104);
  v49(v46, enum case for DispatchTimeInterval.milliseconds(_:), v17);
  + infix(_:_:)();
  v50 = v17;
  v69 = *(v48 + 8);
  v69(v46, v17);
  v51 = v82 + 8;
  v75 = *(v82 + 8);
  (v75)(v45, v80);
  v52 = *(v7 + 28);
  v82 = v51;
  if (v52 < 1)
  {
    v54 = enum case for DispatchTimeInterval.never(_:);
    v53 = v76;
  }

  else
  {
    v53 = v76;
    *v76 = v52;
    v54 = v47;
  }

  v49(v53, v54, v17);
  swift_getObjectType();
  v55 = v79;
  *v79 = *(v7 + 32);
  v49(v55, v47, v17);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v83 = v48 + 8;
  v56 = v69;
  v69(v55, v17);
  swift_getObjectType();
  v57 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10004CFE8;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B6C0;
  v58 = _Block_copy(aBlock);

  v59 = v78;
  static DispatchQoS.unspecified.getter();
  v60 = v72;
  sub_10004D05C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v58);

  (*(v77 + 8))(v60, v74);
  (*(v70 + 8))(v59, v71);
  v56(v53, v50);
  (v75)(v81, v80);

  return v7;
}

uint64_t sub_10004CFE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);

    v1(v2);
  }

  return result;
}

uint64_t sub_10004D05C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000232C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t LocalDispatchTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LocalDispatchTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 72, 7);
}

unint64_t sub_10004D2C4(int a1)
{
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v30 = 0xD00000000000002FLL;
  v31 = 0x800000010007AC80;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v29._countAndFlagsBits = 0x71696E5520534449;
  v29._object = 0xEF203A4449206575;
  v11 = (*((swift_isaMask & *v1) + 0xF0))(v10);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v11 = 45;
    v13 = 0xE100000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  String.append(_:)(v29);

  v17 = (*((swift_isaMask & *v1) + 0x128))(v16);
  v18 = *(v17 + 16);
  if (a1 >= 20)
  {
    if (v18)
    {
      v24 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v25 = *(v4 + 72);
      do
      {
        sub_100004EFC(v24, v9);
        v29._countAndFlagsBits = sub_100039620(a1);
        v29._object = v26;
        v27._countAndFlagsBits = 10;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        String.append(_:)(v29);

        sub_100007124(v9);
        v24 += v25;
        --v18;
      }

      while (v18);
    }
  }

  else if (v18)
  {
    v19 = &v7[*(v3 + 24)];
    v20 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v21 = *(v4 + 72);
    do
    {
      sub_100004EFC(v20, v7);
      v22 = v19[1];
      v29._countAndFlagsBits = *v19;
      v29._object = v22;

      v23._countAndFlagsBits = 44;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      String.append(_:)(v29);

      sub_100007124(v7);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  return v30;
}

void sub_10004D5D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10004D690()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10004D6E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10004D79C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10004D85C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CloudPairedDeviceRecord(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_100004EFC(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100007124(v10);
      }

      if (v14)
      {
        break;
      }

      sub_100007124(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100007180(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void *sub_10004D9D8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10004DAEC()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10004DB44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10004DBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10004DC2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_10004DCBC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10004DD04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_10004DDA0(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v107 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  v5 = __chkstk_darwin(v3);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = v87 - v7;
  v8 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  __chkstk_darwin(v8 - 8);
  v101 = v87 - v9;
  v98 = type metadata accessor for URL.DirectoryHint();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for URL();
  v97 = *(v99 - 8);
  v11 = __chkstk_darwin(v99);
  v91 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = v87 - v13;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v87[2] = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v92 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v92 - 8);
  __chkstk_darwin(v92);
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v2;
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = 0;
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService) = 0;
  v93 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  v87[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v90 = "etadata\n----------------------\n";
  v89 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v88 = *(v17 + 104);
  v88(v19);
  static DispatchQoS.unspecified.getter();
  v108[0] = _swiftEmptyArrayStorage;
  v87[1] = sub_100002374(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = v106;
  *(v93 + v106) = v20;
  v22 = v21 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID;
  *v22 = 0;
  *(v22 + 1) = 0;
  v90 = v22;
  v23 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
  (v88)(v19, v89, v92);
  static DispatchQoS.unspecified.getter();
  v108[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = v106;
  *(v106 + v23) = v24;
  *&v25[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices] = 0;
  *&v25[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator] = 0;
  v26 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  v27 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v28 = *(v27 - 8);
  v93 = *(v28 + 56);
  v92 = v28 + 56;
  v93(&v25[v26], 1, 1, v27);
  v29 = &v25[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier];
  v30 = v107;
  v31 = v100;
  *v29 = v107;
  v29[1] = v31;
  type metadata accessor for UserFileManager();

  v32 = v91;
  sub_100041768(v91);
  v108[0] = v30;
  v108[1] = v31;
  v33 = v31;
  v34 = v96;
  v35 = v95;
  v36 = v98;
  (*(v96 + 104))(v95, enum case for URL.DirectoryHint.isDirectory(_:), v98);
  sub_100038560();
  v37 = v94;
  URL.appending<A>(path:directoryHint:)();
  v38 = v25;
  (*(v34 + 8))(v35, v36);
  v39 = v97;
  v40 = v99;
  (*(v97 + 8))(v32, v99);
  (*(v39 + 32))(&v38[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL], v37, v40);
  v41 = IDSCopyLocalDeviceUniqueID();
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v90;
  swift_beginAccess();
  v99 = v43;
  *v46 = v43;
  v46[1] = v45;

  v47 = type metadata accessor for CloudPairingManager(0);
  v109.receiver = v38;
  v109.super_class = v47;
  v48 = objc_msgSendSuper2(&v109, "init");
  v49 = sub_100041228();
  v50 = *(**v49 + 232);

  v51 = v107;
  v52 = v50(v107, v33);

  v53 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  *&v48[v53] = v52;

  v54 = *(**v49 + 232);

  v54(v51, v33);

  v108[3] = v47;
  v108[4] = &off_10008B760;
  v108[0] = v48;
  v55 = v101;
  sub_100031164();

  sub_1000036EC(v108);
  v93(v55, 0, 1, v27);
  v56 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  swift_beginAccess();
  sub_100050BE4(v55, &v48[v56]);
  swift_endAccess();
  v57 = sub_1000391A8();
  v59 = v104;
  v58 = v105;
  v60 = v102;
  v106 = *(v105 + 16);
  v107 = v57;
  v106(v102);

  v61 = v48;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v108[0] = v65;
    *v64 = 136315394;
    if (v45)
    {
      v66 = v99;
    }

    else
    {
      v66 = 45;
    }

    if (v45)
    {
      v67 = v45;
    }

    else
    {
      v67 = 0xE100000000000000;
    }

    v68 = sub_1000034B8(v66, v67, v108);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2048;
    v70 = *((*((swift_isaMask & *v61) + 0x128))(v69) + 16);

    *(v64 + 14) = v70;

    _os_log_impl(&_mh_execute_header, v62, v63, "Start Cloud Pairing Manager (IDS ID: %s) with cached records count: %ld", v64, 0x16u);
    sub_1000036EC(v65);
    v59 = v104;
  }

  else
  {
  }

  v71 = *(v58 + 8);
  v71(v60, v59);
  v72 = objc_allocWithZone(IDSService);
  v73 = String._bridgeToObjectiveC()();
  v74 = [v72 initWithService:v73];

  if (v74)
  {
    v75 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
    swift_beginAccess();
    v76 = *&v61[v75];
    *&v61[v75] = v74;
    v77 = v74;

    v78 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
    swift_beginAccess();
    [v77 addDelegate:v61 queue:*&v61[v78]];
    (v106)(v103, v107, v59);
    v79 = v77;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134217984;
      v83 = [v79 devices];
      if (!v83)
      {

        __break(1u);
        return;
      }

      v84 = v83;
      sub_100004890(0, &qword_100093F60, IDSDevice_ptr);
      v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v85 >> 62)
      {
        v86 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v82 + 4) = v86;

      _os_log_impl(&_mh_execute_header, v80, v81, "IDS cloud pairing service devices: %ld", v82, 0xCu);
    }

    else
    {

      v80 = v79;
    }

    v71(v103, v59);
  }
}

id sub_10004EAEC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  __chkstk_darwin(v6 - 8);
  v8 = &v31[-v7];
  v9 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-v11];
  v13 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  swift_beginAccess();
  sub_100050C54(&v1[v13], v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = &qword_100093F48;
    v15 = &qword_100074688;
    v16 = v8;
  }

  else
  {
    sub_100050CC4(v8, v12);
    v17 = *sub_100041228();
    v18 = &v1[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier];
    swift_beginAccess();
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = *(*v17 + 232);

    v21(v20, v19);

    sub_100031420(v12);

    v14 = &qword_100093F40;
    v15 = &qword_1000730E0;
    v16 = v12;
  }

  sub_100006CAC(v16, v14, v15);
  v22 = *sub_100041228();
  v23 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v23], v2);
  v24 = *(*v22 + 216);

  v24(v5);

  (*(v3 + 8))(v5, v2);
  v25 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  v26 = *&v1[v25];
  if (v26)
  {
    v27 = *(*v26 + 776);

    v27(v28);
  }

  v29 = type metadata accessor for CloudPairingManager(0);
  v32.receiver = v1;
  v32.super_class = v29;
  return objc_msgSendSuper2(&v32, "dealloc");
}

uint64_t sub_10004EFC0()
{
  result = (*((swift_isaMask & *v0) + 0x160))();
  if (result)
  {
    (*(*result + 768))(result);
  }

  return result;
}

uint64_t sub_10004F06C()
{
  result = (*((swift_isaMask & *v0) + 0x160))();
  if (result)
  {
    (*(*result + 776))(result);
  }

  return result;
}

uint64_t sub_10004F118()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100052BE0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B930;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10004F3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Logger();
  v76 = *(v73 - 8);
  v7 = __chkstk_darwin(v73);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v67 - v9;
  v10 = sub_10000A45C(&qword_100093F68, &unk_100074690);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for CloudPairedDeviceRecord(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v68 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v67 = &v67 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v67 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v67 - v23;
  v25 = (*((swift_isaMask & *v1) + 0x128))(v22);
  v77 = a1;
  v26 = v75;
  sub_10004D85C(sub_100050D34, v25, v12);
  v75 = v26;

  v27 = *(v14 + 48);
  v74 = v13;
  if (v27(v12, 1, v13) == 1)
  {
    sub_100006CAC(v12, &qword_100093F68, &unk_100074690);
    sub_100004EFC(a1, v24);
  }

  else
  {
    sub_100007180(v12, v21);
    v28 = sub_10003C364();
    if (v28 == sub_10003C364())
    {
      v29 = sub_100004124();
      v30 = v76;
      v31 = v69;
      v32 = v73;
      (*(v76 + 16))(v69, v29, v73);
      v33 = v67;
      sub_100004EFC(v21, v67);
      v34 = v68;
      sub_100004EFC(a1, v68);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v33;
        v38 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v38 = 136315394;
        sub_100002374(&qword_100093F78, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C14);
        LODWORD(v71) = v36;
        v70 = v35;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        sub_100007124(v37);
        v42 = sub_1000034B8(v39, v41, &v78);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_100007124(v34);
        v46 = sub_1000034B8(v43, v45, &v78);

        *(v38 + 14) = v46;
        v47 = v70;
        _os_log_impl(&_mh_execute_header, v70, v71, "Dropping same record update: %s for %s", v38, 0x16u);
        swift_arrayDestroy();

        v48 = (*(v76 + 8))(v69, v73);
      }

      else
      {

        sub_100007124(v34);
        sub_100007124(v33);
        v48 = (*(v30 + 8))(v31, v32);
      }

      (*((swift_isaMask & *v2) + 0x1C0))(v48);
      return sub_100007124(v21);
    }

    sub_100004EFC(v21, v24);
    sub_10003AE98(a1);
    sub_100007124(v21);
  }

  v49 = v76;
  sub_10004F118();
  v50 = *sub_100041228();
  v51 = *((swift_isaMask & *v1) + 0x148);

  v51(v52);
  v53 = *sub_100040F1C();
  v54 = *(*v50 + 208);
  v55 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);
  v56 = v75;
  v54(v24, v6, v53, v74, v55);
  v57 = v70 + 1;
  v58 = v72;
  if (v56)
  {
    (v57->isa)(v6, v71);

    v59 = sub_100004124();
    v60 = v73;
    (*(v49 + 16))(v58, v59, v73);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v65;
      *v64 = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "Unable to store device record with error: %@", v63, 0xCu);
      sub_100006CAC(v64, &qword_100093F70, &qword_1000730D0);
    }

    (*(v49 + 8))(v58, v60);
  }

  else
  {

    (v57->isa)(v6, v71);
  }

  v21 = v24;
  return sub_100007124(v21);
}

uint64_t sub_10004FC54(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004F118();
  v9 = *sub_100041228();
  v10 = *((swift_isaMask & *v2) + 0x148);

  v10(v11);
  v12 = *(*v9 + 160);
  v13 = type metadata accessor for CloudPairedDeviceRecord(0);
  v14 = sub_100002374(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
  v12(a1, v8, a2, v13, v14);

  (*(v6 + 8))(v8, v5);
  return notify_post("com.apple.bluetoothuser.cloudChanged");
}

uint64_t sub_10004FE1C()
{
  v1 = type metadata accessor for CloudPairedDeviceRecord(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((swift_isaMask & *v0) + 0x128))(v3);
  v7 = *(v6 + 16);
  if (!v7)
  {
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_100004EFC(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5);
    sub_10004FF94(v5, v0);
    ++v8;
    sub_100007124(v5);
    if (v7 == v8)
    {
    }
  }

  __break(1u);

  result = sub_100007124(v5);
  __break(1u);
  return result;
}

void sub_10004FF94(uint64_t a1, void *a2)
{
  v77 = a2;
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  __chkstk_darwin(v3);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v10 = __chkstk_darwin(v9 - 8);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v69 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = sub_100002374(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
  v24 = sub_100006DF4(v3, v23);
  v25 = [v24 recordChangeTag];
  v81 = v24;
  if (!v25)
  {
    goto LABEL_11;
  }

  v70 = a1;
  v71 = v3;
  (*(v14 + 16))(v22, a1 + *(v3 + 20), v13);
  v26 = [v24 modificationDate];
  v27 = v24;
  if (v26)
  {
    v28 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v14 + 32);
    v30 = v80;
    v29(v80, v17, v13);
    (*(v14 + 56))(v30, 0, 1, v13);
    v29(v20, v30, v13);
    v31 = v27;
  }

  else
  {
    v32 = *(v14 + 56);
    v33 = v80;
    v32(v80, 1, 1, v13);
    v34 = [v24 creationDate];
    if (v34)
    {
      v35 = v32;
      v36 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v69;
      v38 = v17;
      v39 = *(v14 + 32);
      v39(v69, v38, v13);
      v35(v37, 0, 1, v13);
      v33 = v80;
      v39(v20, v37, v13);
      v40 = *(v14 + 48);
    }

    else
    {
      v41 = v69;
      v32(v69, 1, 1, v13);
      static Date.now.getter();
      v40 = *(v14 + 48);
      if (v40(v41, 1, v13) != 1)
      {
        sub_100006CAC(v41, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v31 = v81;
    if (v40(v33, 1, v13) != 1)
    {
      sub_100006CAC(v33, &unk_1000938B0, &qword_100074AA0);
    }
  }

  v42 = static Date.> infix(_:_:)();
  v43 = *(v14 + 8);
  v43(v20, v13);
  v43(v22, v13);
  a1 = v70;
  v3 = v71;
  if ((v42 & 1) == 0)
  {
  }

  else
  {
LABEL_11:
    v44 = v77;
    sub_10004F118();
    v45 = *sub_100041228();
    v46 = *((swift_isaMask & *v44) + 0x148);

    v48 = v76;
    v46(v47);
    v49 = *sub_100040F1C();
    v50 = *(*v45 + 208);
    v51 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);
    v52 = v82;
    v50(a1, v48, v49, v3, v51);
    if (v52)
    {
      (*(v78 + 8))(v48, v79);

      v53 = sub_100004124();
      v54 = v73;
      v55 = v74;
      v56 = v75;
      (*(v74 + 16))(v73, v53, v75);
      v57 = v72;
      sub_100004EFC(a1, v72);
      swift_errorRetain();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v83 = v62;
        *v60 = 136315394;
        sub_100002374(&qword_100093F78, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C14);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v57;
        v66 = v65;
        sub_100007124(v64);
        v67 = sub_1000034B8(v63, v66, &v83);

        *(v60 + 4) = v67;
        *(v60 + 12) = 2112;
        swift_errorRetain();
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v68;
        *v61 = v68;
        _os_log_impl(&_mh_execute_header, v58, v59, "Error saving cloud record to cloud: %s due to %@", v60, 0x16u);
        sub_100006CAC(v61, &qword_100093F70, &qword_1000730D0);

        sub_1000036EC(v62);

        (*(v74 + 8))(v73, v75);
      }

      else
      {

        sub_100007124(v57);
        (*(v55 + 8))(v54, v56);
      }
    }

    else
    {
      (*(v78 + 8))(v48, v79);
    }
  }
}

uint64_t sub_100050910(uint64_t a1, char a2)
{
  v3 = *v2;
  *(*v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = a2;
  type metadata accessor for Transaction();
  v4 = static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.deleteStaleRecords", 42, 2, sub_100052BC8);
  return (*((swift_isaMask & *v3) + 0x1C0))(v4);
}

uint64_t sub_1000509E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  *(v5 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = 0;
  sub_10004F118();
  v6 = *sub_100041228();
  v7 = *((swift_isaMask & *v5) + 0x148);

  v7(v8);
  (*(*v6 + 216))(v4);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100050B50()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices) = *(v0 + 24);
}

uint64_t type metadata accessor for CloudPairingManager(uint64_t a1)
{
  result = qword_100097D80;
  if (!qword_100097D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100050BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050D34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for CloudPairedDeviceRecord(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (v3 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100050DA4(uint64_t a1, unint64_t a2)
{
  v156 = a2;
  v140 = type metadata accessor for CloudPairedDeviceRecord(0);
  __chkstk_darwin(v140);
  v155 = (&v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for URL();
  v137 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v139 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v151 = (&v134 - v8);
  v9 = __chkstk_darwin(v7);
  v150 = (&v134 - v10);
  __chkstk_darwin(v9);
  v12 = (&v134 - v11);
  v13 = type metadata accessor for Logger();
  v136 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v158 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v152 = &v134 - v17;
  v18 = __chkstk_darwin(v16);
  v142 = &v134 - v19;
  __chkstk_darwin(v18);
  v157 = (&v134 - v20);
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v134 = *(v163 - 8);
  result = __chkstk_darwin(v163);
  v162 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v166 = v4;
  v167 = v13;
  if (v25)
  {
    v26 = (a1 + 32);
    v154 = (v136 + 16);
    v148 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v153 = (v136 + 8);
    *&v147 = &v173;
    v146 = (v135 + 8);
    *&v145 = v134 + 8;
    v144 = (v137 + 8);
    v143 = (v137 + 16);
    *&v23 = 138412290;
    v138 = v23;
    *&v23 = 138412546;
    v141 = v23;
    v149 = v12;
    while (1)
    {
      v38 = *v26;
      v39 = [v38 zoneID];
      v40 = [v39 zoneName];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100039548();
      swift_beginAccess();
      if (*v44 == v41 && v44[1] == v43)
      {
        break;
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
        goto LABEL_14;
      }

      v47 = sub_100004124();
      (*v154)(v142, v47, v13);
      v48 = v38;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = v138;
        *(v51 + 4) = v48;
        *v52 = v48;
        v53 = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring deleted record from unknown zone: %@", v51, 0xCu);
        sub_100006CAC(v52, &qword_100093F70, &qword_1000730D0);
      }

      else
      {
        v53 = v49;
        v49 = v48;
      }

      result = (*v153)(v142, v13);
LABEL_5:
      v26 += 3;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v160 = v26;
    v161 = v25;
    v168 = v38;
    v54 = v169;
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    v175 = sub_100052BE0;
    v176 = v55;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100002410;
    v174 = &unk_10008B8E0;
    v56 = _Block_copy(&aBlock);
    v57 = v54;
    v58 = v162;
    static DispatchQoS.unspecified.getter();
    v177 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v59 = v13;
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v60 = v164;
    v61 = v165;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);
    (*v146)(v60, v61);
    (*v145)(v58, v163);

    v62 = sub_100004124();
    v63 = v157;
    (*v154)(v157, v62, v13);
    v64 = v168;
    v65 = v57;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    v68 = os_log_type_enabled(v66, v67);
    v168 = v64;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v69 = v141;
      *(v69 + 4) = v64;
      *v70 = v64;
      *(v69 + 12) = 2080;
      v72 = *((swift_isaMask & *v65) + 0x148);
      v73 = v64;
      v27 = v149;
      v72(v73);
      sub_100002374(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v29 = v144;
      (*v144)(v27, v166);
      v77 = sub_1000034B8(v74, v76, &aBlock);

      *(v69 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Deleting record: %@ from %s", v69, 0x16u);
      sub_100006CAC(v70, &qword_100093F70, &qword_1000730D0);
      v28 = v166;

      sub_1000036EC(v71);

      (*v153)(v157, v167);
    }

    else
    {

      (*v153)(v63, v59);
      v27 = v149;
      v28 = v166;
      v29 = v144;
    }

    v30 = *sub_100041228();

    v31 = [v168 recordName];
    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = v150;
    (*((swift_isaMask & *v65) + 0x148))();
    v35 = sub_1000395BC();
    swift_beginAccess();
    v36 = v151;
    (*v143)(v151, v35, v28);
    URL.path.getter();
    v37 = *v29;
    (*v29)(v36, v28);
    URL.appendingPathComponent(_:)();

    v37(v34, v28);
    (*(*v30 + 144))(v159, v33, v27);

    result = (v37)(v27, v28);
    v13 = v167;
    v25 = v161;
    v26 = v160;
    goto LABEL_5;
  }

LABEL_18:
  v78 = v156;
  if (v156 >> 62)
  {
    v133 = v156;
    result = _CocoaArrayWrapper.endIndex.getter();
    v78 = v133;
    v79 = result;
  }

  else
  {
    v79 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v152;
  if (!v79)
  {
    return notify_post("com.apple.bluetoothuser.cloudChanged");
  }

  if (v79 >= 1)
  {
    v81 = 0;
    v168 = 0;
    v153 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v161 = v78 & 0xC000000000000001;
    v159 = (v136 + 16);
    v157 = (v136 + 8);
    v151 = &v173;
    v150 = (v135 + 8);
    v149 = (v134 + 8);
    v146 = (v137 + 8);
    *&v23 = 136315394;
    v145 = v23;
    *&v23 = 138412546;
    v147 = v23;
    v154 = v79;
    while (1)
    {
      v86 = v161 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v78 + 8 * v81 + 32);
      v87 = v86;
      v88 = [v86 recordID];
      v89 = [v88 zoneID];

      v90 = [v89 zoneName];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      v94 = sub_100039548();
      swift_beginAccess();
      if (*v94 == v91 && v94[1] == v93)
      {
        break;
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v96)
      {
        goto LABEL_37;
      }

      v97 = sub_100004124();
      (*v159)(v80, v97, v13);
      v98 = v87;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock = v103;
        *v101 = v145;
        v104 = [v98 recordID];
        v105 = [v104 zoneID];

        v106 = [v105 zoneName];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = sub_1000034B8(v107, v109, &aBlock);
        v79 = v154;

        *(v101 + 4) = v110;
        *(v101 + 12) = 2112;
        *(v101 + 14) = v98;
        *v102 = v98;
        v111 = v98;
        _os_log_impl(&_mh_execute_header, v99, v100, "Ignoring updated record from %s zone: %@", v101, 0x16u);
        sub_100006CAC(v102, &qword_100093F70, &qword_1000730D0);
        v13 = v167;

        sub_1000036EC(v103);

        v80 = v152;
      }

      else
      {
      }

      (*v157)(v80, v13);
      v78 = v156;
LABEL_25:
      if (v79 == ++v81)
      {
        return notify_post("com.apple.bluetoothuser.cloudChanged");
      }
    }

LABEL_37:
    v112 = v169;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    v175 = sub_100052BE0;
    v176 = v113;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100002410;
    v174 = &unk_10008B890;
    v114 = _Block_copy(&aBlock);
    v160 = v112;
    v115 = v162;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v116 = v164;
    v117 = v165;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v114);
    (*v150)(v116, v117);
    (*v149)(v115, v163);

    v118 = v87;
    v119 = v155;
    v120 = v168;
    sub_10003B080(v118, v155);
    if (v120)
    {
      v128 = sub_100004124();
      v13 = v167;
      (*v159)(v158, v128, v167);
      v129 = v118;
      swift_errorRetain();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      v132 = os_log_type_enabled(v130, v131);
      v79 = v154;
      v168 = 0;
      if (v132)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = v147;
        *(v82 + 4) = v129;
        *v83 = v129;
        *(v82 + 12) = 2112;
        v84 = v129;
        swift_errorRetain();
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 14) = v85;
        v83[1] = v85;
        _os_log_impl(&_mh_execute_header, v130, v131, "Error saving cloud record to disk: %@ due to %@", v82, 0x16u);
        sub_10000A45C(&qword_100093F70, &qword_1000730D0);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*v157)(v158, v13);
      v78 = v156;
      v80 = v152;
    }

    else
    {
      v148 = v81;
      v121 = *sub_100041228();
      v122 = *((swift_isaMask & *v160) + 0x148);

      v124 = v139;
      v122(v123);
      v125 = *sub_100040F10();
      v126 = *(*v121 + 208);
      v127 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);
      v126(v119, v124, v125, v140, v127);
      v168 = 0;

      (*v146)(v124, v166);
      sub_100007124(v155);
      v78 = v156;
      v13 = v167;
      v80 = v152;
      v79 = v154;
      v81 = v148;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_100052358(unint64_t a1)
{
  v45 = type metadata accessor for URL();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    v37 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v46 = a1 & 0xC000000000000001;
    v36 = v51;
    v35 = (v4 + 8);
    v34 = (v6 + 8);
    v33 = (v2 + 8);
    v38 = a1;
    v10 = v39;
    while (1)
    {
      v11 = v46 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v9 + 32);
      v12 = v11;
      v13 = [v11 zoneName];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100039548();
      swift_beginAccess();
      if (v14 == *v17 && v16 == v17[1])
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_17;
      }

LABEL_6:
      if (v8 == ++v9)
      {
        return;
      }
    }

LABEL_17:
    v20 = v41;
    v47 = *&v41[v37];
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v51[2] = sub_100052BA0;
    v51[3] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v51[0] = sub_100002410;
    v51[1] = &unk_10008B840;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v48 = v12;
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v24 = v8;
    v25 = v42;
    v26 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    v27 = v25;
    v8 = v24;
    (*v35)(v27, v26);
    (*v34)(v10, v40);

    v28 = *sub_100041228();
    v29 = *((swift_isaMask & *v23) + 0x148);

    v31 = v44;
    v29(v30);
    (*(*v28 + 216))(v31);
    a1 = v38;

    (*v33)(v31, v45);
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_100052914()
{
  result = qword_100093F88;
  if (!qword_100093F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093F88);
  }

  return result;
}

void sub_100052970(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100052A74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100052A74(uint64_t a1)
{
  if (!qword_100093FB8)
  {
    sub_10000C9B0(&qword_100093F40, &qword_1000730E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100093FB8);
    }
  }
}

uint64_t sub_100052AE8(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = (v2 + *(type metadata accessor for CloudPairedDeviceRecord(0) + 24));
    if (v5 == *v8 && v7 == v8[1])
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_100052BF4()
{
  v0 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStoreIdentifier:v1 type:2];

  static NSUbiquitousKeyValueStore.bluetoothCloudDefaults = v2;
}

uint64_t *NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor()
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  return &static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;
}

id static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.getter()
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;

  return v0;
}

void static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.setter(uint64_t a1)
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;
  static NSUbiquitousKeyValueStore.bluetoothCloudDefaults = a1;
}

uint64_t (*static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Subscription.init(subscriber:unsubscribeBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Subscription(0, a4, a3, a4);
  UUID.init()();
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v12 = (a5 + *(v10 + 32));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t Subscription.unsubscribe(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A8F8();
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a3);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a3 + 16);
  (*(v10 + 32))(v17 + v16, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v18 = (v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  aBlock[4] = sub_100053350;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B980;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v32 + 8))(v5, v21);
  (*(v30 + 8))(v9, v31);
}

uint64_t sub_100053350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Subscription(0, *(v4 + 16), a3, a4);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  (*(v4 + v7 + *(v5 + 32)))(v4 + v7);
  return v8(0);
}

uint64_t static Subscription.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Subscription(0, a3, a3, a4) + 28);

  return static UUID.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1000534C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      result = sub_100053A54();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100053560(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1000537B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v13;
  v16 = *(*(v10 - 8) + 64) + 7;
  v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = a3 - v14 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v14;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v14 + a2;
      bzero(a1, ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v21)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 == v14)
  {
    v24 = *(v28 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v25 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v26 = *(v11 + 56);

      v26(v25, a2);
    }

    else
    {
      v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = (a2 - 1);
      }
    }
  }
}

unint64_t sub_100053A54()
{
  result = qword_100094020;
  if (!qword_100094020)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100094020);
  }

  return result;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DarwinNotificationHelper.init(notificationHandlers:)(a1);
  return v2;
}

const void *DarwinNotificationHelper.init(notificationHandlers:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v50 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v50)
  {
    v1[2] = a1;

    v10 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 120);

    v10(v1);

    v11 = sub_100039094();
    v12 = *(v5 + 16);
    v47 = v5 + 16;
    v48 = v11;
    v46 = v12;
    (v12)(v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Setup darwin callback handlers", v15, 2u);
    }

    v16 = *(v5 + 8);
    v49 = v5 + 8;
    v45 = v16;
    v16(v9, v4);
    v18 = 0;
    v19 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 64);
    v23 = (v20 + 63) >> 6;
    *&v17 = 136315138;
    v40 = v17;
    v24 = v51;
    v41 = v4;
    v42 = a1;
    while (v22)
    {
LABEL_13:
      v27 = __clz(__rbit64(v22)) | (v18 << 6);
      v28 = *(*(a1 + 48) + 8 * v27);
      v29 = *(*(a1 + 56) + 16 * v27 + 8);
      v46(v24, v48, v4);
      v30 = v28;
      v31 = v29;
      v52 = v30;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v53 = v43;
        *v34 = v40;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v31;
        v37 = v2;
        v38 = sub_1000034B8(v35, v36, &v53);

        *(v34 + 4) = v38;
        v2 = v37;
        a1 = v42;
        _os_log_impl(&_mh_execute_header, v32, v33, "Setting up darwin callback handler for %s", v34, 0xCu);
        sub_1000036EC(v43);

        v4 = v41;
      }

      v24 = v51;
      v45(v51, v4);
      v22 &= v22 - 1;
      v25 = v52;
      CFNotificationCenterAddObserver(v50, v2, sub_100053F80, v52, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    while (1)
    {
      v26 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return v2;
      }

      v22 = *(v19 + 8 * v26);
      ++v18;
      if (v22)
      {
        v18 = v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100053F80(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_10005515C(a2, a3);
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(void *a1)
{
  v1 = 0;
  v4 = a1[8];
  v2 = a1 + 8;
  v3 = v4;
  v5 = 1 << *(v2 - 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v31 = v8;
  v32 = v2;
  while (v7)
  {
    v10 = v1;
LABEL_11:
    v11 = a1[7];
    v12 = swift_allocObject();
    *(v12 + 16) = *(v11 + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    swift_bridgeObjectRetain_n();

    v13 = String._bridgeToObjectiveC()();

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100054A3C;
    *(v14 + 24) = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_100054A64(v13);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      type metadata accessor for CFString();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_100054EC4();
        v16 = v27;
      }
    }

    else
    {
      sub_100054B04(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_100054A64(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    if (v22)
    {
      v9 = (_swiftEmptyDictionarySingleton[7] + 16 * v16);
      *v9 = sub_100018FE4;
      v9[1] = v14;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v16 >> 6) + 8] |= 1 << v16;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v16) = v13;
      v24 = (_swiftEmptyDictionarySingleton[7] + 16 * v16);
      *v24 = sub_100018FE4;
      v24[1] = v14;

      v25 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      _swiftEmptyDictionarySingleton[2] = v26;
    }

    v1 = v10;
    v8 = v31;
    v2 = v32;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = v2[v10];
    ++v1;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v28 = *(v30 + 112);

  return v28(_swiftEmptyDictionarySingleton);
}

void DarwinNotificationHelper.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 128);

  v5(v0);

  v37 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v37)
  {
    v6 = v0[2];
    v7 = v6 + 64;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 64);
    v11 = (v8 + 63) >> 6;
    v33 = (v3 + 8);
    v34 = (v3 + 16);
    v36 = v6;

    v12 = 0;
    *&v13 = 136315138;
    v29 = v13;
    v14 = v32;
    v35 = v11;
    v30 = v2;
    v31 = v1;
    while (v10)
    {
LABEL_11:
      v17 = __clz(__rbit64(v10)) | (v12 << 6);
      v18 = *(*(v36 + 56) + 16 * v17 + 8);
      v19 = *(*(v36 + 48) + 8 * v17);
      v38 = v18;

      v20 = sub_100039094();
      (*v34)(v14, v20, v2);
      v21 = v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v39 = v21;

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v25;
        *v24 = v29;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = sub_1000034B8(v26, v27, &v40);
        v14 = v32;

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Remove darwin callback handler for %s", v24, 0xCu);
        sub_1000036EC(v25);
        v1 = v31;

        v2 = v30;
      }

      (*v33)(v14, v2);
      v10 &= v10 - 1;
      v15 = v39;
      CFNotificationCenterRemoveObserver(v37, v1, v39, 0);

      v11 = v35;
    }

    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= v11)
      {

        goto LABEL_14;
      }

      v10 = *(v7 + 8 * v16);
      ++v12;
      if (v10)
      {
        v12 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{
  DarwinNotificationHelper.deinit();

  return _swift_deallocClassInstance(v0, 24, 7);
}

Swift::Void __swiftcall DarwinNotificationHelper.onNotification(notificationName:)(CFStringRef notificationName)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_100054A64(notificationName);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 16 * v8);

      v11 = sub_100039094();
      (*(v4 + 16))(v6, v11, v3);
      v12 = notificationName;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v22 = v10;
        v16 = v15;
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = sub_1000034B8(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Invoking callback, notification, %s", v16, 0xCu);
        sub_1000036EC(v17);

        v10 = v22;
      }

      v21 = (*(v4 + 8))(v6, v3);
      v10(v21);
    }

    else
    {
    }
  }
}

Swift::Int sub_100054968(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000549D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

unint64_t sub_100054A64(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString();
  sub_100055118(&qword_100094108, &unk_10007494C);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100054DCC(a1, v2);
}

Swift::Int sub_100054B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A45C(&qword_100094100, &unk_100074978);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFString();
      sub_100055118(&qword_100094108, &unk_10007494C);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100054DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_100055118(&qword_100094108, &unk_10007494C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100054EC4()
{
  v1 = v0;
  sub_10000A45C(&qword_100094100, &unk_100074978);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

void type metadata accessor for CFString()
{
  if (!qword_1000940E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000940E8);
    }
  }
}

uint64_t sub_100055118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005515C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  if (a1)
  {
    if (a2)
    {
      v14 = a2;
      v15 = sub_100039094();
      (*(v5 + 16))(v8, v15, v4);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v35 = v4;
        v20 = v19;
        v21 = swift_slowAlloc();
        v36 = v21;
        *v20 = 136315138;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = sub_1000034B8(v22, v23, &v36);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "Got darwin notification, %s", v20, 0xCu);
        sub_1000036EC(v21);

        (*(v5 + 8))(v8, v35);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v33 = *(*a1 + 120);
      v34 = v16;

      v33(v34);
    }

    else
    {
      v29 = sub_100039094();
      (*(v5 + 16))(v11, v29, v4);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "cfNotificationName for darwin callback handler not found", v32, 2u);
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v25 = sub_100039094();
    (*(v5 + 16))(v13, v25, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Observer for darwin callback handler not found", v28, 2u);
    }

    (*(v5 + 8))(v13, v4);
  }
}

Swift::Int DeviceLockState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

double sub_1000555B0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v10 = String._bridgeToObjectiveC()();
  v11 = MGCopyAnswerWithError();

  if (v11)
  {
    if (v23)
    {
      v12 = sub_100039094();
      (*(v7 + 16))(v9, v12, v6);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v15 = 136315394;
        *(v15 + 4) = sub_1000034B8(a1, a2, &v24);
        *(v15 + 12) = 2080;
        swift_beginAccess();
        v22 = v23;
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = sub_1000034B8(v16, v17, &v24);

        *(v15 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v13, v14, "MGCopyAnswerWithError error for key: %s -> %s", v15, 0x16u);
        swift_arrayDestroy();
      }

      (*(v7 + 8))(v9, v6);
    }

    *(a3 + 24) = swift_getObjectType();
    *a3 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t SystemInfo.deviceName.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007AFC0, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t sub_100055974(uint64_t a1, unint64_t a2)
{
  sub_1000555B0(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_10000CA00(v4);
  }

  return 0;
}

uint64_t sub_100055A24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1000555B0(a1, a2, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CA00(v5);
    return 0;
  }
}

uint64_t SystemInfo.underTest.getter(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      sub_1000327AC(0xD00000000000001BLL, 0x800000010007AA40);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SystemInfo.lockState.getter()
{
  v0 = MKBGetDeviceLockState();
  if (v0 > 1)
  {
    if (v0 == 3)
    {
      return 5;
    }

    if (v0 == 2)
    {
      return 4;
    }

    return 0;
  }

  if (!v0)
  {
    return 3;
  }

  if (v0 != 1)
  {
    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t SystemInfo.regionCode.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007AFE0, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t SystemInfo.hardwareModel.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007B000, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t SystemInfo.architecture.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007B020, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t sub_100055DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000555B0(a3, a4, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10000CA00(v6);
  }

  return 0;
}

unint64_t sub_100055E5C()
{
  result = qword_100094110;
  if (!qword_100094110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceLockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceLockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100056010()
{
  sub_10000A45C(&qword_100094118, &qword_100074A48);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_100072BE0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 492;
  v1 = NSFilePosixPermissions;
  v2 = sub_1000567D0(inited);
  swift_setDeallocating();
  result = sub_100006CAC(inited + 32, &unk_100094120, &qword_100074A50);
  qword_100098B40 = v2;
  return result;
}

double sub_1000560C8()
{
  if (qword_100098120 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t sub_100056140(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = [objc_opt_self() defaultManager];
  v45 = 0;
  URL.path.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v45];

  if (v14)
  {
    if ((v45 & 1) == 0)
    {
      v16 = sub_100004124();
      v17 = v43;
      (*(v43 + 16))(v11, v16, v44);
      (*(v3 + 16))(v5, a1, v2);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v41 = v20;
        v42 = swift_slowAlloc();
        v46 = v42;
        *v20 = 136315138;
        sub_100056788(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v3 + 8))(v5, v2);
        v24 = sub_1000034B8(v21, v23, &v46);

        v25 = v41;
        *(v41 + 1) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Expected a directory, but is a file: %s", v25, 0xCu);
        sub_1000036EC(v42);

        (*(v43 + 8))(v11, v44);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
        (*(v17 + 8))(v11, v44);
      }

      return v14 ^ 1;
    }

LABEL_7:

    return v14 ^ 1;
  }

  URL._bridgeToObjectiveC()(v15);
  v27 = v26;
  type metadata accessor for FileAttributeKey(0);
  sub_100056788(&qword_100093CA0, type metadata accessor for FileAttributeKey, &unk_1000745A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v46 = 0;
  v29 = [v12 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:isa error:&v46];

  if (v29)
  {
    v30 = v46;
    goto LABEL_7;
  }

  v31 = v46;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v32 = sub_100004124();
  v34 = v43;
  v33 = v44;
  (*(v43 + 16))(v9, v32, v44);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "createDirectory error: %@", v37, 0xCu);
    sub_100006CAC(v38, &qword_100093F70, &qword_1000730D0);
    v34 = v43;
  }

  else
  {
  }

  (*(v34 + 8))(v9, v33);
  return v14 ^ 1;
}

uint64_t sub_10005670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  return v4;
}

uint64_t sub_100056788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000567D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093CC0, &qword_100074298);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000568D8(v4, &v11);
      v5 = v11;
      result = sub_100049248(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000C848(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000568D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_100094120, &qword_100074A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100056948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener] = a1;
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_dispatchQueue] = a2;
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_xpcConnection] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100056AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100056B40;

  return sub_10005FB48();
}

uint64_t sub_100056B40(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100056DC8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100056EC4;

  return sub_10005FB48();
}

uint64_t sub_100056EC4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100057084()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = *(type metadata accessor for CloudPairedDeviceRecord(0) - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000048D8, 0, 0);
}

uint64_t sub_10005733C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000573E4;

  return sub_100057084();
}

uint64_t sub_1000573E4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100057580(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100057658, 0, 0);
}

uint64_t sub_100057658()
{
  v1 = (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [*(v0 + 16) idsDeviceID];
  if (!v3)
  {
    sub_10005FD70();
    swift_allocError();
    v21 = 3;
LABEL_17:
    *v20 = v21;
    swift_willThrow();
    goto LABEL_18;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v2 + 440))();
  if (!v8)
  {

    sub_10005FD70();
    swift_allocError();
    v21 = 1;
    goto LABEL_17;
  }

  v27 = v8;
  result = (*((swift_isaMask & *v8) + 0x128))();
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_13:

    sub_10005FD70();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();

LABEL_18:

LABEL_19:

    v22 = *(v0 + 8);
LABEL_20:

    return v22();
  }

  v12 = 0;
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  while (v12 < *(v10 + 16))
  {
    v15 = *(v0 + 48);
    sub_100004EFC(v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v15);
    v16 = (v15 + *(v13 + 24));
    v17 = *v16 == v5 && v16[1] == v7;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = *(v0 + 48);

      sub_100007180(v25, v24);
      sub_100007180(v24, v23);
      v26 = sub_100041100();
      (*((swift_isaMask & *v27) + 0x1B8))(v23, v26 & 1);

      sub_100007124(v23);

      v22 = *(v0 + 8);
      goto LABEL_20;
    }

    ++v12;
    result = sub_100007124(*(v0 + 48));
    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100057BA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100057C68;

  return sub_100057580(v6);
}

uint64_t sub_100057C68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100057E04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudPairedDeviceRecord(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100057ED0, 0, 0);
}

uint64_t sub_100057ED0()
{
  v1 = (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
LABEL_41:

    v38 = *(v0 + 8);
    goto LABEL_42;
  }

  v2 = (*(*v1 + 440))();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = *((swift_isaMask & *v2) + 0xF0);
  v5 = v4();
  if (!v6)
  {

LABEL_13:
    sub_10005FD70();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
LABEL_40:

    goto LABEL_41;
  }

  v7 = v6;
  v45 = v5;
  if (![*(v0 + 16) fastLEConnectionInfoVersion] || (v8 = objc_msgSend(*(v0 + 16), "fastLEConnectionInfoData")) == 0)
  {

LABEL_39:
    sub_10005FD70();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    goto LABEL_40;
  }

  v9 = v8;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_38;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_38:

      sub_1000066CC(v10, v12);
      goto LABEL_39;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_38;
  }

  v43 = v7;
  v16 = (*((swift_isaMask & *v3) + 0x128))();
  v17 = *(v16 + 16);
  if (v17)
  {
    v41 = v10;
    v42 = v12;
    v18 = *(v0 + 40);
    v19 = (*(v0 + 56) + *(*(v0 + 32) + 24));
    v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v47 = *(v18 + 72);
    v46 = _swiftEmptyArrayStorage;
    v44 = v4;
    while (1)
    {
      sub_100004EFC(v20, *(v0 + 56));
      v22 = *v19;
      v21 = v19[1];

      v24 = (v4)(v23);
      if (!v25)
      {
        break;
      }

      if (v22 == v24 && v25 == v21)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_100007124(*(v0 + 56));
LABEL_20:
      v20 += v47;
      if (!--v17)
      {

        v10 = v41;
        v12 = v42;
        v36 = v46;
        goto LABEL_46;
      }
    }

LABEL_29:
    v28 = *(v0 + 56);
    v29 = sub_1000073A4();
    v31 = v30;
    sub_100007124(v28);
    if (v31 >> 60 != 15)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v32 = v46;
      }

      else
      {
        v32 = sub_10005F1B8(0, *(v46 + 2) + 1, 1, v46);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_10005F1B8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v46 = v32;
      v35 = &v32[16 * v34];
      *(v35 + 4) = v29;
      *(v35 + 5) = v31;
      v4 = v44;
    }

    goto LABEL_20;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_46:
  v40 = *(v0 + 48);
  sub_10003A270(v45, v43, *(v0 + 16), v36, v40);
  (*((swift_isaMask & *v3) + 0x1B0))(v40);
  sub_100007124(v40);

  sub_1000066CC(v10, v12);

  v38 = *(v0 + 8);
LABEL_42:

  return v38();
}

uint64_t sub_100058594(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000615D4;

  return sub_100057E04(v6);
}

uint64_t sub_100058658(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_10000A45C(&qword_100093F68, &unk_100074690);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10000A45C(&qword_100094160, &qword_100074A98);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for CloudPairedDeviceRecord(0);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100058868, 0, 0);
}

void sub_100058868()
{
  v1 = (*((swift_isaMask & **(*(v0 + 40) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2 = (*(*v1 + 440))(v1);
    if (v2)
    {
      v102 = v2;
      v3 = (*((swift_isaMask & *v2) + 0x128))();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v0 + 144);
        v103 = *(v0 + 136);
        while (v5 < *(v3 + 16))
        {
          v7 = *(v0 + 152);
          v8 = *(v0 + 32);
          sub_100004EFC(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7);
          v9 = (v7 + *(v103 + 24));
          v10 = *v9;
          v11 = v9[1];
          v12 = [v8 idsDeviceID];
          if (v12)
          {
            v13 = v12;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            if (v10 == v14 && v11 == v16)
            {
LABEL_27:

LABEL_28:

              v31 = *(v0 + 160);
              v30 = *(v0 + 168);
              v32 = *(v0 + 136);
              sub_100007180(*(v0 + 152), v31);
              sub_100007180(v31, v30);
              v33 = sub_100006DAC(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
              v34 = sub_100006DF4(v32, v33);
              v35 = [objc_allocWithZone(CBControllerInfo) init];
              [v35 setCloudSyncStatus:1];
              v36 = [v34 recordChangeTag];
              v104 = v34;
              if (v36)
              {
                v37 = *(v0 + 168);
                v38 = *(v0 + 128);
                v39 = *(v0 + 136);
                v41 = *(v0 + 72);
                v40 = *(v0 + 80);

                (*(v40 + 16))(v38, v37 + *(v39 + 20), v41);
                v42 = *(v40 + 56);
                v42(v38, 0, 1, v41);
                v43 = [v34 modificationDate];
                if (v43)
                {
                  v44 = v35;
                  v46 = *(v0 + 112);
                  v45 = *(v0 + 120);
                  v47 = *(v0 + 80);
                  v48 = *(v0 + 88);
                  v49 = *(v0 + 72);
                  v50 = v43;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v51 = *(v47 + 32);
                  v51(v46, v48, v49);
                  v42(v46, 0, 1, v49);
                  v51(v45, v46, v49);
                  v42(v45, 0, 1, v49);
                }

                else
                {
                  v52 = 1;
                  v42(*(v0 + 112), 1, 1, *(v0 + 72));
                  v53 = [v34 creationDate];
                  v44 = v35;
                  if (v53)
                  {
                    v54 = v53;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v52 = 0;
                  }

                  v56 = *(v0 + 112);
                  v55 = *(v0 + 120);
                  v57 = *(v0 + 104);
                  v59 = *(v0 + 72);
                  v58 = *(v0 + 80);
                  v42(v57, v52, 1, v59);
                  sub_10003C78C(v57, v55);
                  if ((*(v58 + 48))(v56, 1, v59) != 1)
                  {
                    sub_100006CAC(*(v0 + 112), &unk_1000938B0, &qword_100074AA0);
                  }
                }

                v60 = *(v0 + 120);
                v62 = *(v0 + 72);
                v61 = *(v0 + 80);
                v63 = *(v0 + 64);
                v64 = *(*(v0 + 56) + 48);
                sub_100006C44(*(v0 + 128), v63, &unk_1000938B0, &qword_100074AA0);
                sub_100006C44(v60, v63 + v64, &unk_1000938B0, &qword_100074AA0);
                v65 = *(v61 + 48);
                v66 = v65(v63, 1, v62);
                v67 = *(v0 + 72);
                if (v66 == 1)
                {
                  v68 = *(v0 + 128);
                  sub_100006CAC(*(v0 + 120), &unk_1000938B0, &qword_100074AA0);
                  sub_100006CAC(v68, &unk_1000938B0, &qword_100074AA0);
                  if (v65(v63 + v64, 1, v67) == 1)
                  {
                    sub_100006CAC(*(v0 + 64), &unk_1000938B0, &qword_100074AA0);
                    v69 = 3;
                    v35 = v44;
                    v70 = &off_100091000;
                    goto LABEL_42;
                  }

LABEL_40:
                  sub_100006CAC(*(v0 + 64), &qword_100094160, &qword_100074A98);
                  v35 = v44;
                  v70 = &off_100091000;
                  goto LABEL_41;
                }

                sub_100006C44(*(v0 + 64), *(v0 + 96), &unk_1000938B0, &qword_100074AA0);
                v71 = v65(v63 + v64, 1, v67);
                v73 = *(v0 + 120);
                v72 = *(v0 + 128);
                v74 = *(v0 + 96);
                if (v71 == 1)
                {
                  v76 = *(v0 + 72);
                  v75 = *(v0 + 80);
                  sub_100006CAC(*(v0 + 120), &unk_1000938B0, &qword_100074AA0);
                  sub_100006CAC(v72, &unk_1000938B0, &qword_100074AA0);
                  (*(v75 + 8))(v74, v76);
                  goto LABEL_40;
                }

                v96 = *(v0 + 80);
                v97 = *(v0 + 88);
                v98 = *(v0 + 72);
                v101 = *(v0 + 64);
                (*(v96 + 32))(v97, v63 + v64, v98);
                sub_100006DAC(&qword_100094168, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v100 = dispatch thunk of static Equatable.== infix(_:_:)();
                v99 = *(v96 + 8);
                v99(v97, v98);
                sub_100006CAC(v73, &unk_1000938B0, &qword_100074AA0);
                sub_100006CAC(v72, &unk_1000938B0, &qword_100074AA0);
                v99(v74, v98);
                sub_100006CAC(v101, &unk_1000938B0, &qword_100074AA0);
                v35 = v44;
                v70 = &off_100091000;
                if (v100)
                {
                  v69 = 3;
                }

                else
                {
LABEL_41:
                  v69 = 2;
                }

LABEL_42:
                v36 = [v35 v70[444]];
              }

              v78 = *(v0 + 136);
              v77 = *(v0 + 144);
              v79 = *(v0 + 48);
              (*((swift_isaMask & *v102) + 0x108))(v36);
              v80 = (*(v77 + 48))(v79, 1, v78);
              v81 = *(v0 + 48);
              if (v80 == 1)
              {
                sub_100006CAC(*(v0 + 48), &qword_100093F68, &unk_100074690);
              }

              else
              {
                v82 = sub_1000073A4();
                v84 = v83;
                sub_100007124(v81);
                if (v84 >> 60 != 15)
                {
                  v85 = *(*(v0 + 168) + *(*(v0 + 136) + 36));
                  *(v0 + 16) = v82;
                  *(v0 + 24) = v84;
                  v86 = swift_task_alloc();
                  *(v86 + 16) = v0 + 16;
                  LOBYTE(v85) = sub_1000079A0(sub_100007A8C, v86, v85);

                  [v35 setFastLEConnectionAllowed:v85 & 1];
                  sub_100006BB4(v82, v84);
                }
              }

              v87 = *(v0 + 168);
              v88 = *(v0 + 136);
              isa = Data._bridgeToObjectiveC()().super.isa;
              [v35 setFastLEConnectionInfoData:isa];

              v90 = *(v87 + *(v88 + 28));
              if ((v90 & 0x8000000000000000) == 0)
              {
                if (v90 <= 0xFF)
                {
                  v91 = *(v0 + 168);
                  v92 = *(v0 + 136);
                  [v35 setFastLEConnectionInfoVersion:v90];
                  v93 = *(v91 + *(v92 + 48));
                  if ((v93 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v93))
                    {
                      v94 = *(v0 + 168);
                      [v35 setSupportedServices:?];

                      sub_100007124(v94);

                      v95 = *(v0 + 8);

                      v95(v35);
                      return;
                    }

LABEL_60:
                    __break(1u);
                    return;
                  }

LABEL_59:
                  __break(1u);
                  goto LABEL_60;
                }

LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_28;
            }
          }

          v19 = [*(v0 + 32) identifier];
          if (v19)
          {
            v20 = v19;
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            if (v10 == v21 && v11 == v23)
            {
              goto LABEL_27;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_28;
            }
          }

          ++v5;
          sub_100007124(*(v0 + 152));
          if (v4 == v5)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_22:

      sub_10005FD70();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
    }

    else
    {
      sub_10005FD70();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10005FD70();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }

  v29 = *(v0 + 8);

  v29();
}

uint64_t sub_100059558(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10005961C;

  return sub_100058658(v6);
}

uint64_t sub_10005961C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000597D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100059894, 0, 0);
}

uint64_t sub_100059894()
{
  v1 = (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = (*(*v2 + 112))() & 1;
  v7 = sub_1000393CC();
  (*(v4 + 16))(v3, v7, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Distributed logging status: %u", v10, 8u);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
LABEL_8:

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_100059C1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100059CC4;

  return sub_1000597D4();
}

uint64_t sub_100059CC4(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100059E54(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100059F18, 0, 0);
}

uint64_t sub_100059F18()
{
  v1 = (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    sub_10005FDC4();
    swift_allocError();
    swift_willThrow();

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  (*(*v2 + 120))(*(v0 + 48) & 1);
  v6 = sub_1000393CC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Distributed logging status changed: %u", v10, 8u);
  }

  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 24);

  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_10005A2F0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10005A3AC;

  return sub_100059E54(a1);
}

uint64_t sub_10005A3AC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10005A530()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005A5F0, 0, 0);
}

uint64_t sub_10005A5F0()
{
  v1 = (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = (*(*v2 + 112))();
  v7 = sub_1000393CC();
  (*(v4 + 16))(v3, v7, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Apple audio accessory limited logging enabled: %{BOOL}d", v10, 8u);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
LABEL_8:

  v14 = v0[1];

  return v14(v6 & 1);
}

uint64_t sub_10005A97C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10005AA24;

  return sub_10005A530();
}

uint64_t sub_10005AA24(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10005ABB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10005AC78, 0, 0);
}

uint64_t sub_10005AC78()
{
  v25 = v0;
  v1 = (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2 = (*(*v1 + 480))();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);
      v6 = *(v0 + 24);
      v7 = sub_1000393CC();
      (*(v5 + 16))(v4, v7, v6);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);
      v13 = *(v0 + 24);
      if (v10)
      {
        v23 = *(v0 + 40);
        v14 = *(v0 + 48);
        v22 = *(v0 + 24);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v15 = 136315138;
        if (v14)
        {
          v17 = 7562585;
        }

        else
        {
          v17 = 28494;
        }

        if (v14)
        {
          v18 = 0xE300000000000000;
        }

        else
        {
          v18 = 0xE200000000000000;
        }

        v19 = sub_1000034B8(v17, v18, &v24);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "Enable Apple audio accessory limited logging: %s", v15, 0xCu);
        sub_1000036EC(v16);

        (*(v12 + 8))(v23, v22);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
      }

      (*(*v3 + 120))(*(v0 + 48));
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10005B088(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000615E4;

  return sub_10005ABB4(a1);
}

uint64_t sub_10005B2FC(uint64_t a1, int a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10005B320, 0, 0);
}

uint64_t sub_10005B320()
{
  sub_10005B4A4(*(v0 + 16), 2 * (*(v0 + 24) != 8));
  sub_10005B944(_swiftEmptyDictionarySingleton);
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10005B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10005F804(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100006CAC(a1, &qword_1000943E0, &qword_100074FC0);
    sub_10005F2C4(a2, a3, v10);

    return sub_100006CAC(v10, &qword_1000943E0, &qword_100074FC0);
  }

  return result;
}

uint64_t sub_10005B4A4(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = sub_10000A45C(&qword_100094180, &qword_100074290);
      sub_100015AAC(v5, v6, a2, v7, &v16);
      if (v16)
      {
        sub_100061558(&qword_1000943D8, &qword_100094180, &qword_100074290, &protocol conformance descriptor for <A> [A]);

        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        goto LABEL_16;
      }

      v8 = sub_10000A45C(&qword_100094390, &qword_100074FA8);
      sub_100015AAC(v5, v6, a2, v8, &v16);
      if (v16)
      {
        sub_1000614F0(&qword_1000943D0, &qword_100094390, &qword_100074FA8, &protocol conformance descriptor for <A> [A]);

        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        goto LABEL_16;
      }

      sub_100015AAC(v5, v6, a2, &type metadata for Bool, &v16);
      if (v16 != 2)
      {
        goto LABEL_15;
      }

      sub_100015AAC(v5, v6, a2, &type metadata for Data, &v16);
      v9 = v17;
      if (v17 >> 60 != 15)
      {
        v11 = v16;

        sub_10000FB4C(v11, v9);
        sub_10006149C();
        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        sub_100006BB4(v11, v9);
        goto LABEL_16;
      }

      v10 = sub_10000A45C(&qword_100094398, &qword_100074FB0);
      sub_100015AAC(v5, v6, a2, v10, &v16);
      if (v16)
      {
        break;
      }

      v12 = sub_10000A45C(&qword_1000943A0, &qword_100074FB8);
      sub_100015AAC(v5, v6, a2, v12, &v16);
      if (v16)
      {
        sub_1000614F0(&qword_1000943B8, &qword_1000943A0, &qword_100074FB8, &protocol conformance descriptor for <> [A : B]);
        goto LABEL_15;
      }

      v13 = sub_100004890(0, &qword_1000943A8, NSNumber_ptr);
      sub_100015AAC(v5, v6, a2, v13, &v16);
      v14 = v16;
      if (v16)
      {
        sub_100061434();

        v15 = v14;
        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
      }

      else
      {
        sub_100015AAC(v5, v6, a2, &type metadata for String, &v16);
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:

      if (!v18)
      {
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }

    sub_100061558(&qword_1000943C0, &qword_100094398, &qword_100074FB0, &protocol conformance descriptor for <> [A : B]);
LABEL_15:

    AnyHashable.init<A>(_:)();
    sub_10005B3CC(&v16, v5, v6);
    goto LABEL_16;
  }

  return result;
}

void sub_10005B944(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A45C(&qword_100093B00, &qword_100074FA0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000CB30(*(a1 + 56) + 40 * v12, v41);
    v39 = v15;
    v40 = v14;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v15;
    v27 = v14;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_10000C848(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_10000C848(v35, v24);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v28;
    *(v10 + 16) = v29;
    *(v10 + 32) = v30;
    sub_10000C848(v24, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10005BDC0(uint64_t a1, int a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 40) = a2;
  *(v4 + 24) = _Block_copy(aBlock);
  *(v4 + 32) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;

  return _swift_task_switch(sub_10005BE58, 0, 0);
}

uint64_t sub_10005BE58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10005B4A4(*(v0 + 32), 2 * (*(v0 + 40) != 8));
  sub_10005B944(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa, 0);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10005C038;

  return sub_100060388(a1, a2, a3, a4);
}

uint64_t sub_10005C038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005C2D0(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v5[6] = a5;
  v5[7] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[8] = v9;
  swift_unknownObjectRetain();
  v11 = a5;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = swift_task_alloc();
  v5[9] = v12;
  *v12 = v5;
  v12[1] = sub_10005C3E4;

  return sub_100060388(v8, v10, (v5 + 2), v7);
}

uint64_t sub_10005C3E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;

  sub_1000036EC((v3 + 16));

  v6 = *(v3 + 56);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v3 + 56));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_10005C58C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005C664, 0, 0);
}

uint64_t sub_10005C664()
{
  if (!(*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))())
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = sub_1000393CC();
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "userNotificationEvent:Error no daemon is initialized", v13, 2u);
    }

    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);

    (*(v15 + 8))(v14, v16);
    sub_10005FD70();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    goto LABEL_21;
  }

  v1 = [*(v0 + 16) event];
  if (v1 == 2)
  {
    v18 = [*(v0 + 16) device];
    if (v18)
    {
      v3 = v18;
      v19 = UserNotificationManager.shared.unsafeMutableAddressor();
      v5 = *v19;
      v6 = ((swift_isaMask & **v19) + 152);
      goto LABEL_11;
    }

    v33 = *(v0 + 56);
    v34 = *(v0 + 32);
    v35 = *(v0 + 40);
    v36 = sub_1000393CC();
    (*(v35 + 16))(v33, v36, v34);
    v29 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v29, v37, "userNotificationEvent:Error hidUsbPairingComplete, device are not valid", v38, 2u);
    }

    v32 = *(v0 + 56);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
    v2 = [*(v0 + 16) device];
    if (v2)
    {
      v3 = v2;
      v4 = UserNotificationManager.shared.unsafeMutableAddressor();
      v5 = *v4;
      v6 = ((swift_isaMask & **v4) + 160);
LABEL_11:
      v20 = *v6;
      v21 = v5;
      v20(v3);

      v22 = *(v0 + 8);
      goto LABEL_22;
    }

    v25 = *(v0 + 64);
    v26 = *(v0 + 32);
    v27 = *(v0 + 40);
    v28 = sub_1000393CC();
    (*(v27 + 16))(v25, v28, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "userNotificationEvent:Error gameControllerConnected, device are not valid", v31, 2u);
    }

    v32 = *(v0 + 64);
LABEL_19:
    v39 = *(v0 + 32);
    v40 = *(v0 + 40);

    (*(v40 + 8))(v32, v39);
    sub_10006049C();
    swift_allocError();
    v24 = 1;
    goto LABEL_20;
  }

  sub_10006049C();
  swift_allocError();
  v24 = 2;
LABEL_20:
  *v23 = v24;
  swift_willThrow();

LABEL_21:

  v22 = *(v0 + 8);
LABEL_22:

  return v22();
}

uint64_t sub_10005CC98(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000615D4;

  return sub_10005C58C(v6);
}

uint64_t sub_10005CD5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_daemon;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10005CE14()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10005CE68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10005CEC0()
{
  if (*(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = _swiftEmptyArrayStorage;
  }

  return v1;
}

id sub_10005CF20()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  }

  else
  {
    v4 = objc_allocWithZone(NSXPCListener);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithMachServiceName:v5];

    v7 = [v6 setDelegate:v0];
    v8 = (*((swift_isaMask & *v0) + 0x88))(v7);
    [v6 _setQueue:v8];

    v9 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void (*sub_10005D040(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10005CF20();
  return sub_10005D088;
}

void sub_10005D088(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener) = v2;
}

id sub_10005D0A0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_daemon] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue] = a1;
  v5 = a1;
  v6 = UserNotificationManager.shared.unsafeMutableAddressor();
  v7 = *((swift_isaMask & **v6) + 0x80);
  v8 = *v6;
  v7();

  v11.receiver = v4;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

uint64_t sub_10005D1B0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000393CC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Activate Bluetooth User Controller XPC Service", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*((swift_isaMask & *a1) + 0xE0))(v10);
}

void sub_10005D344()
{
  v1 = (*((swift_isaMask & *v0) + 0xB8))();
  [v1 resume];
}

uint64_t sub_10005D3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v10 = *(v19[0] - 8);
  v11 = __chkstk_darwin(v19[0]);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((swift_isaMask & *v3) + 0x88))(v11);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100006DAC(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19[0]);
}

uint64_t sub_10005D6A0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000393CC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidate Bluetooth User Controller XPC Service", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*((swift_isaMask & *a1) + 0xF0))(v10);
}

void sub_10005D834()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xA0))();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    (*((swift_isaMask & *v6) + 0x70))();
  }

LABEL_10:

  v9 = (*((swift_isaMask & *v1) + 0xB8))(v8);
  [v9 invalidate];
}

uint64_t sub_10005D9AC(uint64_t a1)
{
  v2 = (*((swift_isaMask & *v1) + 0xA0))();
  v3 = v2;
  v12 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v1 = type metadata accessor for XPCConnection();
      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v12;
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v8 == i)
      {
        v1 = v11;
        v9 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:

  *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = v9;
}

id sub_10005DB98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005DC3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v80 = type metadata accessor for Logger();
  v5 = *(v80 - 8);
  v6 = __chkstk_darwin(v80);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v78 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v78 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v78 - v16;
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  if ((sub_10005E664() & 1) == 0)
  {
    v52 = IsAppleInternalBuild();
    v53 = sub_1000393CC();
    v54 = *(v5 + 16);
    if (v52)
    {
      v55 = v80;
      v54(v11, v53, v80);
      v56 = a2;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v59 = 67109378;
        *(v59 + 4) = [v56 processIdentifier];

        *(v59 + 8) = 2080;
        *(v59 + 10) = sub_1000034B8(0xD00000000000001ALL, 0x800000010007B0B0, aBlock);
        _os_log_impl(&_mh_execute_header, v57, v58, "XPC connection denied, %d, add %s entitlement", v59, 0x12u);
        sub_1000036EC(v60);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v55);
    }

    else
    {
      v67 = v80;
      v54(v8, v53, v80);
      v68 = a2;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 67109120;
        *(v71 + 4) = [v68 processIdentifier];

        _os_log_impl(&_mh_execute_header, v69, v70, "XPC connection denied, %d", v71, 8u);
      }

      else
      {

        v69 = v68;
      }

      (*(v5 + 8))(v8, v67);
    }

    return 0;
  }

  v79 = v19;
  sub_100004890(0, &unk_100094230, NSObject_ptr);
  v20 = (*((swift_isaMask & *v2) + 0xB8))();
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
    v61 = sub_1000393CC();
    v62 = v80;
    (*(v5 + 16))(v14, v61, v80);
    v63 = a2;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = [v63 processIdentifier];

      _os_log_impl(&_mh_execute_header, v64, v65, "XPC connection denied bad listener, %d", v66, 8u);
    }

    else
    {

      v64 = v63;
    }

    (*(v5 + 8))(v14, v62);
    return 0;
  }

  v22 = *((swift_isaMask & *v3) + 0x88);
  v23 = v22();
  v24 = type metadata accessor for XPCConnection();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener] = v3;
  *&v25[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_dispatchQueue] = v23;
  *&v25[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_xpcConnection] = a2;
  v82.receiver = v25;
  v82.super_class = v24;
  v26 = v3;
  v27 = a2;
  v28 = objc_msgSendSuper2(&v82, "init");
  v81 = sub_10005CEC0();
  v29 = v28;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v26 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = v81;

  v30 = CBUserControllerXPCInterface();
  [v27 setExportedInterface:v30];

  v31 = v22();
  [v27 _setQueue:v31];

  [v27 setExportedObject:v29];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v29;
  aBlock[4] = sub_100060524;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008BC40;
  v34 = _Block_copy(aBlock);
  v35 = v29;

  [v27 setInvalidationHandler:v34];
  _Block_release(v34);
  v36 = CBUserControllerXPCInterface();
  [v27 setRemoteObjectInterface:v36];

  [v27 resume];
  [v27 auditToken];
  if (xpc_copy_code_signing_identity_for_token())
  {
    v37 = String.init(cString:)();
    v39 = v38;
    v40 = sub_1000393CC();
    v42 = v79;
    v41 = v80;
    (*(v5 + 16))(v79, v40, v80);
    v43 = v27;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v78 = v35;
      v47 = v46;
      v48 = v42;
      v49 = swift_slowAlloc();
      v83 = v49;
      *v47 = 67109378;
      *(v47 + 4) = [v43 processIdentifier];

      *(v47 + 8) = 2080;
      v50 = sub_1000034B8(v37, v39, &v83);

      *(v47 + 10) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "XPC connection started: %d, %s", v47, 0x12u);
      sub_1000036EC(v49);

      (*(v5 + 8))(v48, v80);
    }

    else
    {

      (*(v5 + 8))(v42, v41);
    }

    return 1;
  }

  else
  {
    v72 = sub_1000393CC();
    v73 = v80;
    (*(v5 + 16))(v17, v72, v80);
    v74 = v27;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 67109120;
      *(v77 + 4) = [v74 processIdentifier];

      _os_log_impl(&_mh_execute_header, v75, v76, "XPC connection started: %d", v77, 8u);

      v74 = v35;
    }

    else
    {

      v75 = v35;
    }

    (*(v5 + 8))(v17, v73);
    return 1;
  }
}

uint64_t sub_10005E664()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v6)
    {
      return 1;
    }
  }

  else
  {
    sub_100006CAC(&v9, &qword_100092CB8, &qword_100072C40);
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100006CAC(&v9, &qword_100092CB8, &qword_100072C40);
  }

  return 0;
}

uint64_t CBDistributedDebugLogging.description.getter(char a1)
{
  if (a1)
  {
    v2._object = 0x800000010007B0F0;
    v2._countAndFlagsBits = 0xD000000000000015;
    String.append(contentsOf:)(v2);
  }

  return 0;
}

uint64_t sub_10005E8DC()
{
  if (*v0)
  {
    v2._object = 0x800000010007B0F0;
    v2._countAndFlagsBits = 0xD000000000000015;
    String.append(contentsOf:)(v2);
  }

  return 0;
}

BOOL sub_10005E980(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10005E9B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10005E9DC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10005EABC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10005FE18(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10005EAFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000615D8;

  return v6();
}

uint64_t sub_10005EBE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10005C038;

  return v7();
}

uint64_t sub_10005ECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100006C44(a3, v23 - v10, &unk_100094380, &qword_100074DF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100006CAC(v11, &unk_100094380, &qword_100074DF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100006CAC(a3, &unk_100094380, &qword_100074DF0);

    return v21;
  }

LABEL_8:
  sub_100006CAC(a3, &unk_100094380, &qword_100074DF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10005EFC8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005F0C0;

  return v6(a1);
}

uint64_t sub_10005F0C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10005F1B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&unk_1000943F0, &unk_100074FD0);
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

double sub_10005F2C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000327AC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005F994();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_10005F648(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_10005F378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A45C(&qword_1000943E8, &qword_100074FC8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_10000CB30(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10005F648(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

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

void sub_10005F804(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005F378(v16, a4 & 1);
      v11 = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10005F994();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_1000613D8(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}