id CKDeviceCapabilityCheckResult.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped;
  v1[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped] = 2;
  v4 = NSStringFromSelector(sel_isSupported);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x18CFD5010](v5);
    sub_18840370C();
  }

  v6 = [a1 decodeBoolForKey_];

  v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = CKDeviceCapabilityCheckResult;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t CKDeviceCapabilityCheckResult.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18847E0A0(a1, v9, &qword_1EA90DD10, &qword_1886F8770);
  if (!v10)
  {
    sub_18840E840(v9, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_12;
  }

  type metadata accessor for CKDeviceCapabilityCheckResult(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped);
  v4 = v8[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];

  v5 = v4 == 2 && v3 == 2;
  if (v3 != 2 && v4 != 2)
  {
    v5 = v3 ^ v4 ^ 1;
  }

  return v5 & 1;
}

uint64_t CKDeviceCapabilityCheckResult.hash.getter()
{
  sub_18844E6FC(&qword_1EA90D7C0, &qword_1886F8788);
  sub_18847E12C();
  return Optional<A>.hashValue.getter();
}

id sub_18847DEB4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

unsigned __int8 *CKDeviceCapabilityCheckResult.description.getter()
{
  if (*(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped) == 2)
  {
    v7.receiver = v0;
    v7.super_class = CKDeviceCapabilityCheckResult;
    v2 = objc_msgSendSuper2(&v7, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    v8 = v0;
    v9 = v1;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = CKDeviceCapabilityCheckResult;
    v3 = objc_msgSendSuper2(&v6, sel_description);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8B50();

    v8 = v0;
    v9 = v1;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    v4 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v4);
  }

  return v8;
}

unint64_t sub_18847E02C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_18847E04C()
{
  result = qword_1EA90D7A8;
  if (!qword_1EA90D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D7A8);
  }

  return result;
}

uint64_t sub_18847E0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18844E6FC(a3, a4);
  sub_1883F7930();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_18847E12C()
{
  result = qword_1EA90D7C8;
  if (!qword_1EA90D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D7C8);
  }

  return result;
}

unint64_t sub_18847E1A4()
{
  result = qword_1EA90D850;
  if (!qword_1EA90D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D850);
  }

  return result;
}

unint64_t sub_18847E1FC()
{
  result = qword_1EA90C158;
  if (!qword_1EA90C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C158);
  }

  return result;
}

unint64_t sub_18847E254()
{
  result = qword_1EA90C160;
  if (!qword_1EA90C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C160);
  }

  return result;
}

void sub_18847E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_188420F2C(a1, a2);
    if (v3)
    {
    }
  }
}

void *sub_18847E300(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_188486310();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_18847E39C(void *a1, uint64_t a2, uint64_t (*a3)(void *), unint64_t *a4, void *a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v18 = a3(a1);
      if (v19)
      {
        v17 = *(*(a2 + 56) + 8 * v18);
        v20 = v17;
        return v17;
      }
    }

    return 0;
  }

  v8 = a1;
  v9 = __CocoaDictionary.lookup(_:)();

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1883F4C5C(0, a4, a5);
  sub_1883F99D0(v10, v11, v12, v10, v13, v14, v15, v16, v9, v22);
  return v23;
}

double sub_18847E460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_188420F2C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_188405DF8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_18847E4F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1884863DC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1883F8B5C(v3);
  sub_188449260(v5);
  return v2;
}

uint64_t sub_18847E594(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v6 = a3(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = sub_1883F8B5C(v6);
  a4(v8);
  return v4;
}

void *sub_18847E5F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      v5 = type metadata accessor for CloudCoreContainer();
      sub_1883F99D0(v5, v6, v7, v5, v8, v9, v10, v11, v4, v16);
      return v17;
    }
  }

  else if (*(a2 + 16) && (sub_188486518(), (v13 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v12);
    v14 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

void *sub_18847E698(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1884864E0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_18847E6E4@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1884864E0(), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_188405DF8(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18847E748(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1883FD800();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t related decl e for CKErrorCode.init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F7400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for CKError(0);
  sub_18847E984();

  sub_1883F71F8();
  sub_188400BAC(v7, v8);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v10;
}

uint64_t related decl e for CKErrorCode.partialErrorsByItemID.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v3, v4, v5, v6, v7, v8, v9, v10, v21, v24, *v25);

  if (!v26)
  {
    sub_18847EBC8(v25);
    return 0;
  }

  v11 = sub_18844E6FC(&qword_1EA90D858, &qword_1886F8970);
  sub_1883F8794(v11, v12, v13, v11, v14, v15, v16, v17, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_18847EC30(v23);
  v19 = v18;

  return v19;
}

void sub_18847E984()
{
  sub_1883FB520();
  if (v1)
  {
    sub_18844E6FC(&qword_1EA90D888, &unk_1886F89D0);
    sub_1883F9598();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v0 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_188419138(&v22, v24);
    sub_188419138(v24, v25);
    sub_188419138(v25, &v23);
    v13 = sub_188420F2C(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      v17 = (v2[7] + 32 * v14);
      sub_1883FE944(v17);
      sub_188419138(&v23, v17);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v12;
      v18[1] = v11;
      sub_188419138(&v23, (v2[7] + 32 * v13));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_18847EBC8(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90DD10, &qword_1886F8770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18847EC30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1884802A8(*(a1 + 48) + 40 * v10, v26);
    v28 = *(*(a1 + 56) + 8 * v10);
    v23 = v26[0];
    v24 = v26[1];
    v25 = v27;
    v11 = *(v2 + 40);
    v12 = v28;
    v13 = AnyHashable._rawHashValue(seed:)(v11);
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v2 + 48) + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    *(*(v2 + 56) + 8 * v17) = v12;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_18847EE70()
{
  sub_1883FB520();
  if (v1)
  {
    sub_18844E6FC(&qword_1EA90D860, &qword_1886F89A8);
    sub_1883F9598();
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883FF0E0();
  if (v9)
  {
    sub_188404F6C();

    v20 = 0;
    while (v5)
    {
      v21 = v20;
LABEL_24:
      sub_1883FDA08();
      sub_1883F71F8();
      v23 = sub_188400BAC(&qword_1EA90CAB8, v22);
      v24 = sub_18840549C(v23);
      *v25 = v7;
      v3 = v3;
      v26 = v7;
      sub_188486310();
      v35 = v27;
      if (v28)
      {
        v36 = v8[6];
        v37 = *(v36 + 8 * v27);
        *(v36 + 8 * v27) = v3;

        v38 = v8[7];
        v39 = *(v38 + 8 * v35);
        *(v38 + 8 * v35) = v24;

        v20 = v21;
      }

      else
      {
        if (v8[2] >= v8[3])
        {
          goto LABEL_33;
        }

        sub_1883FEC58(v27, v28, v29, v30, v31, v32, v33, v34, v42, v44);
        if (v41)
        {
          goto LABEL_34;
        }

        v8[2] = v40;
        v20 = v21;
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v6)
      {
LABEL_29:

        return;
      }

      v5 = *(v4 + 8 * v21);
      ++v20;
      if (v5)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    sub_1883FF5A4();

    v10 = 0;
    v43 = v0;
    if (v5)
    {
LABEL_9:
      while (1)
      {
        sub_1883FE9F0();
        sub_1883F71F8();
        v13 = sub_188400BAC(&qword_1EA90CAB8, v12);
        v45 = sub_18840549C(v13);
        *v14 = v2;
        v15 = v8[5];
        v16 = v0;
        v17 = v2;
        NSObject._rawHashValue(seed:)(v15);
        sub_1883F9BEC();
        if (v9)
        {
          break;
        }

        sub_1883F9020();
        v0 = v43;
LABEL_17:
        sub_1883FE5B8(v18, v43, v45);
      }

      sub_1883F7AC4();
      v0 = v43;
      while (1)
      {
        sub_1883FDD74();
        if (v9)
        {
          if (v19)
          {
            break;
          }
        }

        sub_1884007EC();
        if (!v9)
        {
          sub_1883F7C04();
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v7)
        {
          goto LABEL_29;
        }

        ++v10;
        if (*(v4 + 8 * v11))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_18847F0E8()
{
  sub_1883FB520();
  if (v1)
  {
    sub_18844E6FC(&qword_1EA90D868, &qword_1886F89B0);
    sub_1883F9598();
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_1883FF0E0();
  if (v9)
  {
    sub_188404F6C();

    v20 = 0;
    while (v5)
    {
      v21 = v20;
LABEL_24:
      sub_1883FDA08();
      sub_1883F71F8();
      v23 = sub_188400BAC(&qword_1EA90CAB8, v22);
      v24 = sub_18840549C(v23);
      *v25 = v7;
      v3 = v3;
      v26 = v7;
      sub_188486398();
      v35 = v27;
      if (v28)
      {
        v36 = v8[6];
        v37 = *(v36 + 8 * v27);
        *(v36 + 8 * v27) = v3;

        v38 = v8[7];
        v39 = *(v38 + 8 * v35);
        *(v38 + 8 * v35) = v24;

        v20 = v21;
      }

      else
      {
        if (v8[2] >= v8[3])
        {
          goto LABEL_33;
        }

        sub_1883FEC58(v27, v28, v29, v30, v31, v32, v33, v34, v42, v44);
        if (v41)
        {
          goto LABEL_34;
        }

        v8[2] = v40;
        v20 = v21;
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v6)
      {
LABEL_29:

        return;
      }

      v5 = *(v4 + 8 * v21);
      ++v20;
      if (v5)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    sub_1883FF5A4();

    v10 = 0;
    v43 = v0;
    if (v5)
    {
LABEL_9:
      while (1)
      {
        sub_1883FE9F0();
        sub_1883F71F8();
        v13 = sub_188400BAC(&qword_1EA90CAB8, v12);
        v45 = sub_18840549C(v13);
        *v14 = v2;
        v15 = v8[5];
        v16 = v0;
        v17 = v2;
        NSObject._rawHashValue(seed:)(v15);
        sub_1883F9BEC();
        if (v9)
        {
          break;
        }

        sub_1883F9020();
        v0 = v43;
LABEL_17:
        sub_1883FE5B8(v18, v43, v45);
      }

      sub_1883F7AC4();
      v0 = v43;
      while (1)
      {
        sub_1883FDD74();
        if (v9)
        {
          if (v19)
          {
            break;
          }
        }

        sub_1884007EC();
        if (!v9)
        {
          sub_1883F7C04();
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v7)
        {
          goto LABEL_29;
        }

        ++v10;
        if (*(v4 + 8 * v11))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_18847F388(uint64_t a1, unint64_t *a2, void *a3)
{
  sub_1883FB520();
  if (v4)
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    sub_1883F9598();
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  sub_18840AF7C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v5 + 64;

  v12 = 0;
  if (!v8)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v8)));
    v15 = *(*(v3 + 48) + v14);
    v16 = *(*(v3 + 56) + v14);
    sub_1883F4C5C(0, a2, a3);
    v17 = v15;
    v18 = v16;
    swift_dynamicCast();
    type metadata accessor for CKError(0);
    sub_1883F71F8();
    v20 = sub_188400BAC(&qword_1EA90CAB8, v19);
    v21 = sub_18840549C(v20);
    *v22 = v18;
    v23 = AnyHashable._rawHashValue(seed:)(*(v5 + 40)) & ~(-1 << *(v5 + 32));
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      sub_1883F7AC4();
      while (1)
      {
        sub_1883FDD74();
        if (v28)
        {
          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        if (*(v11 + 8 * v25) != -1)
        {
          sub_1883F7C04();
          goto LABEL_19;
        }
      }
    }

    sub_1883F9020();
LABEL_19:
    v8 &= v8 - 1;
    *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 40 * v24;
    *v29 = v32;
    *(v29 + 16) = v33;
    *(v29 + 32) = v34;
    *(*(v5 + 56) + 8 * v24) = v21;
    ++*(v5 + 16);
  }

  while (v8);
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

      return;
    }

    v8 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_18847F5F4(void *a1)
{
  if (a1[2])
  {
    sub_18844E6FC(&qword_1EA90D880, &qword_1886F89C8);
    sub_1883F9598();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  sub_18840AF7C();
  v6 = v5 & v4;
  sub_1883FF5A4();

  v7 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    sub_1884802A8(a1[6] + 40 * v9, v25);
    v27 = *(a1[7] + 8 * v9);
    v10 = v27;
    v22 = v25[0];
    v23 = v25[1];
    v24 = v26;
    type metadata accessor for CKError(0);
    sub_1883F71F8();
    v12 = sub_188400BAC(&qword_1EA90CAB8, v11);
    v13 = sub_18840549C(v12);
    *v14 = v10;
    v15 = v3[5];
    v16 = v10;
    AnyHashable._rawHashValue(seed:)(v15);
    sub_1883F9BEC();
    if (v17)
    {
      sub_1883F7AC4();
      while (1)
      {
        sub_1883FDD74();
        if (v17)
        {
          if (v19)
          {
            goto LABEL_21;
          }
        }

        sub_1884007EC();
        if (!v17)
        {
          sub_1883F7C04();
          goto LABEL_17;
        }
      }
    }

    sub_1883F9020();
LABEL_17:
    v6 &= v6 - 1;
    *(v1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v20 = v3[6] + 40 * v18;
    *v20 = v22;
    *(v20 + 16) = v23;
    *(v20 + 32) = v24;
    *(v3[7] + 8 * v18) = v13;
    ++v3[2];
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return;
    }

    v6 = a1[v8 + 8];
    ++v7;
    if (v6)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_18847F84C(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = sub_1883F7948();
  type metadata accessor for CKError(v6);
  sub_1883F71F8();
  sub_188400BAC(v7, v8);
  sub_1883F9770();
  v9 = _BridgedStoredNSError.userInfo.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v10, v11, v9, &v30);

  if (v31)
  {
    v12 = sub_1883F4C5C(0, a3, a4);
    sub_1883F8794(v12, v13, v14, v12, v15, v16, v17, v18, v28);
    v19 = swift_dynamicCast();
    return sub_188414738(v19, v20, v21, v22, v23, v24, v25, v26, v29);
  }

  else
  {
    sub_18847EBC8(&v30);
    return 0;
  }
}

uint64_t related decl e for CKErrorCode.retryAfterSeconds.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v3, v4, v5, v6, v7, v8, v9, v10, v19, v22, *v23);

  if (v24)
  {
    sub_1883F8794(v11, v12, v13, MEMORY[0x1E69E63B0], v14, v15, v16, v17, v20);
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18847EBC8(v23);
    return 0;
  }
}

uint64_t related decl e for CKErrorCode.underlyingError.getter()
{
  v0 = sub_1883F7948();
  type metadata accessor for CKError(v0);
  sub_1883F71F8();
  sub_188400BAC(v1, v2);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v3, v4, v5, v6, v7, v8, v9, v10, v27, v30, *v31);

  if (v32)
  {
    type metadata accessor for CKUnderlyingError(0);
    sub_1883F8794(v11, v12, v13, v11, v14, v15, v16, v17, v28);
    v18 = swift_dynamicCast();
    return sub_188414738(v18, v19, v20, v21, v22, v23, v24, v25, v29);
  }

  else
  {
    sub_18847EBC8(v31);
    return 0;
  }
}

uint64_t sub_18847FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18844E6FC(&qword_1EA90D870, &qword_1886F89B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F8960;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 120) = sub_18844E6FC(&qword_1EA90D878, &qword_1886F89C0);
  *(inited + 96) = a1;
  Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for CKError(0);
  sub_1883F71F8();
  sub_188400BAC(v9, v10);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v12;
}

uint64_t related decl e for CKErrorCode.description.getter(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_18847FD38(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = sub_1883F7948();
  v7(v6);
  sub_188400BAC(a3, a4);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_188403724(v8, v9, v10, v11, v12, v13, v14, v15, v32, v35, *v36);

  if (v37)
  {
    v16 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    sub_1883F8794(v16, v17, v18, v16, v19, v20, v21, v22, v33);
    v23 = swift_dynamicCast();
    return sub_188414738(v23, v24, v25, v26, v27, v28, v29, v30, v34);
  }

  else
  {
    sub_18847EBC8(v36);
    return 0;
  }
}

void related decl e for CKErrorCode.underlyingSessionReadinessError.getter(uint64_t a1)
{
  v2 = sub_1883F7948();
  type metadata accessor for CKError(v2);
  sub_1883F71F8();
  sub_188400BAC(v3, v4);
  v5 = sub_1883F81E8();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v6, v7, v8, v9, v10, v11, v12, v13, v37, v39, v41);

  if (v42)
  {
    v14 = type metadata accessor for CKSessionReadinessErrorBox();
    if (sub_1883F8DFC(v14, v15, v16, v17, v18, v19, v20, v21, v38, v40, v41))
    {
      sub_1883F7EBC();
      CKSessionReadinessErrorBox.sessionReadinessError.getter();

      type metadata accessor for SessionReadinessError();
      v22 = sub_1883F83F4();
      v24 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_18847EBC8(&v41);
  }

  v25 = sub_1883F81E8();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v26, v27, v25, &v41);

  if (v42)
  {
    type metadata accessor for CKUnderlyingError(0);
    if (sub_1883F8DFC(v28, v29, v30, v31, v32, v33, v34, v35, v38, a1, v41))
    {
      sub_1883F7EBC();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter(v36);

      return;
    }
  }

  else
  {
    sub_18847EBC8(&v41);
  }

  type metadata accessor for SessionReadinessError();
  v22 = sub_1883F83F4();
  v24 = 1;
LABEL_10:
  sub_1883F90F4(v22, v24, 1, v23);
}

void related decl e for CKErrorCode.underlyingSessionInvalidationContext.getter(uint64_t a1)
{
  v2 = sub_1883F7948();
  type metadata accessor for CKError(v2);
  sub_1883F71F8();
  sub_188400BAC(v3, v4);
  v5 = sub_1883F81E8();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v6, v7, v8, v9, v10, v11, v12, v13, v37, v39, v41);

  if (v42)
  {
    v14 = type metadata accessor for CKSessionInvalidationContext();
    if (sub_1883F8DFC(v14, v15, v16, v17, v18, v19, v20, v21, v38, v40, v41))
    {
      sub_1883F7EBC();
      CKSessionInvalidationContext.sessionInvalidationContext.getter();

      type metadata accessor for SessionInvalidationContext();
      v22 = sub_1883F83F4();
      v24 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_18847EBC8(&v41);
  }

  v25 = sub_1883F81E8();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_18847E460(v26, v27, v25, &v41);

  if (v42)
  {
    type metadata accessor for CKUnderlyingError(0);
    if (sub_1883F8DFC(v28, v29, v30, v31, v32, v33, v34, v35, v38, a1, v41))
    {
      sub_1883F7EBC();
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter(v36);

      return;
    }
  }

  else
  {
    sub_18847EBC8(&v41);
  }

  type metadata accessor for SessionInvalidationContext();
  v22 = sub_1883F83F4();
  v24 = 1;
LABEL_10:
  sub_1883F90F4(v22, v24, 1, v23);
}

uint64_t sub_188480174@<X0>(uint64_t (*a2)(void)@<X2>, void (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = sub_1883F7948();
  type metadata accessor for CKUnderlyingError(v9);
  sub_188400BAC(&qword_1EA90C588, type metadata accessor for CKUnderlyingError);
  sub_1883F9770();
  _BridgedStoredNSError.userInfo.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FA34C(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, *v32);

  if (!v33)
  {
    sub_18847EBC8(v32);
    goto LABEL_5;
  }

  v18 = a2(0);
  sub_1883F8794(v18, v19, v20, v18, v21, v22, v23, v24, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v25 = 1;
    goto LABEL_6;
  }

  a3();

  v25 = 0;
LABEL_6:
  v26 = a4(0);
  return sub_1883F90F4(a5, v25, 1, v26);
}

uint64_t sub_188480308(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18848072C()
{
  sub_1883F7FF0();
  sub_18840FB10();
  v10 = v10 && v5 == v9;
  if (v10 || (sub_1883FDF08(v4, v5, v6, v7, v8, v9) & 1) != 0)
  {
    if (v3 == v1 && v2 == v0)
    {
      sub_1883FDCC0();
      return;
    }

    sub_188443338();
  }

  else
  {
    sub_1883FEB84();
  }

  sub_1883FDCC0();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

void static CKFeatureProtocol.< infix(_:_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  sub_1883FF718();
  v3 = *(v2 + 16);
  v5 = v3(v4, v2);
  v7 = v6;
  v8 = sub_1883F7E8C();
  if (v5 == (v3)(v8) && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v12 = sub_1883F7E8C();
      v13 = (v3)(v12);
      v15 = v14;
      v16 = sub_1883F7E8C();
      v17 = (v3)(v16);
      goto LABEL_9;
    }
  }

  v19 = *(v1 + 24);
  v20 = sub_1883F7E8C();
  v13 = v19(v20);
  v15 = v21;
  v22 = sub_1883F7E8C();
  v17 = v19(v22);
LABEL_9:
  if (v13 != v17 || v15 != v18)
  {
    sub_1883FD9C4();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883F8178();
}

void CKFeatureProtocol<>.description.getter()
{
  sub_1883F7EEC();
  v1 = v0;
  v3 = v2;
  sub_1883FF4BC();
  swift_getDynamicType();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  MEMORY[0x18CFD5140](2629690, 0xE300000000000000);
  v5 = (*(v1 + 16))(v3, v1);
  MEMORY[0x18CFD5140](v5);

  MEMORY[0x18CFD5140](2112032, 0xE300000000000000);
  v6 = (*(v1 + 24))(v3, v1);
  MEMORY[0x18CFD5140](v6);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  sub_1883FAEB8();
}

void sub_188480B1C()
{
  sub_1883F7FF0();
  sub_188413794();
  v10 = v10 && v9 == v5;
  if (!v10 && (sub_1884057E8(v4, v5, v6, v7, v8, v9) & 1) == 0)
  {
    sub_1883FB610();
    goto LABEL_13;
  }

  if (v2 != v3 || v0 != v1)
  {
    sub_1883F7E8C();
LABEL_13:
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883FDCC0();
}

void sub_188480B94()
{
  sub_1883F7FF0();
  sub_18840FB10();
  v10 = v10 && v5 == v9;
  if (!v10 && (sub_1883FDF08(v4, v5, v6, v7, v8, v9) & 1) == 0)
  {
    sub_1883FEB84();
    goto LABEL_13;
  }

  if (v3 != v1 || v2 != v0)
  {
    sub_188443338();
LABEL_13:
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1883FDCC0();
}

void sub_188480C0C()
{
  sub_1883F7FF0();
  sub_188413794();
  v10 = v10 && v9 == v5;
  if (v10 || (sub_1884057E8(v4, v5, v6, v7, v8, v9) & 1) != 0)
  {
    if (v2 == v3 && v0 == v1)
    {
      sub_1883FDCC0();
      return;
    }

    sub_1883F7E8C();
  }

  else
  {
    sub_1883FB610();
  }

  sub_1883FDCC0();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s8CloudKit13CKZoneFeatureV4nameSSvs_0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  sub_188440388();
  v6 = v5;
  v8 = v7;

  *v2 = v6;
  v2[1] = v8;
  return result;
}

void **sub_188480D6C(void **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    sub_188440388();
    *v3 = v4;
    v3[1] = v5;
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV5valueSSvs_0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_188440388();
  v6 = v5;
  v8 = v7;

  *(v2 + 16) = v6;
  *(v2 + 24) = v8;
  return result;
}

uint64_t *sub_188480E34(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    sub_188440388();
    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV4name5valueACSS_SStcfC_0@<X0>(void *a1@<X8>)
{
  sub_188440388();
  v3 = v2;
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  sub_188440388();
  v7 = v6;
  v9 = v8;

  a1[2] = v7;
  a1[3] = v9;
  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1883F7EE0();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t _s8CloudKit13CKZoneFeatureV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  String.hash(into:)();
  sub_1883F7228();

  return String.hash(into:)();
}

Swift::Int _s8CloudKit13CKZoneFeatureV9hashValueSivg_0()
{
  Hasher.init(_seed:)();
  sub_1883F7FE4();
  String.hash(into:)();
  sub_18840C144();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_188481060(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1883F7FE4();
  String.hash(into:)();
  sub_18840C144();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKFeatureSet.init()@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Array();
  result = Dictionary.init()();
  *a2 = result;
  return result;
}

uint64_t CKFeatureSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1883F7EEC();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  sub_1883FF718();
  v23 = v22;
  CKFeatureSet.init()(&a10);
  *v23 = a10;
  v24 = sub_1883FDBC4();
  type metadata accessor for CKFeatureSet(v24, v25, v21, v26);
  CKFeatureSet.insert<A>(_:)();
  sub_1883FAEB8();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

void CKFeatureSet.insert<A>(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v38 = v2;
  v39 = v4;
  v6 = v5;
  v40 = v7;
  v8 = *(v7 + 16);
  sub_1883F9C28();
  v36 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  sub_1883FDBC4();
  type metadata accessor for Optional();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  sub_1883F9C28();
  v34 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v32 = v17 - v16;
  v33 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1883F9C28();
  v35 = v19;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  v23 = *v1;
  sub_1883FDBC4();
  v24 = type metadata accessor for Array();
  v25 = MEMORY[0x18CFD4F70](v23, MEMORY[0x1E69E6158], v24, MEMORY[0x1E69E6168]);
  v37 = v6;
  if (__OFADD__(v25, dispatch thunk of Collection.count.getter()))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Dictionary();
    v26 = sub_1883FE2BC();
    Dictionary.reserveCapacity(_:)(v26);
    (*(v34 + 16))(v32, v39, v37);
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1883FDCB4();
      dispatch thunk of IteratorProtocol.next()();
      if (sub_1883F971C(v13, 1, v8) == 1)
      {
        break;
      }

      v27 = sub_1883FF6E8();
      v28(v27);
      CKFeatureSet.insert(_:)();
      v29 = sub_188411050();
      v30(v29);
    }

    (*(v35 + 8))(v22, AssociatedTypeWitness);
    sub_1883F8178();
  }
}

uint64_t CKFeatureSet.features.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  v3 = sub_1883FAABC();
  MEMORY[0x18CFD5270](v3);
  v4 = sub_1883FDA5C(&unk_1EFA27C68);
  v5 = *(a1 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  LazySequenceProtocol.flatMap<A>(_:)();
}

uint64_t CKFeatureSet.valuesByName.getter(uint64_t a1)
{
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for LazyMapSequence();
  return Dictionary.mapValues<A>(_:)();
}

uint64_t sub_1884816EC(void *a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18CFD5270](v9, v5, WitnessTable);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();
}

void CKFeatureSet.isEmpty.getter(uint64_t a1)
{
  type metadata accessor for Array();

  JUMPOUT(0x18CFD4F80);
}

void CKFeatureSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16) && (sub_1883F7210(), sub_188419148(v4, v5, v6), (v7 & 1) != 0))
  {
  }

  else
  {

    Array.init()();
  }
}

uint64_t CKFeatureSet.subscript.setter()
{
  sub_18840BDFC();
  sub_1884056BC(v0, v1);
  CKFeatureSet.removeAll(for:)(v2);

  type metadata accessor for Array();
  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();

  sub_1883F87A4();
  swift_getWitnessTable();
  CKFeatureSet.insert<A>(_:)();
}

{
  sub_18840BDFC();
  sub_1884056BC(v4, v5);
  CKFeatureSet.removeAll(for:)(v6);

  v17 = v3;
  v14 = *(v1 + 16);
  v15 = v0;
  v16 = v2;
  v7 = sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  sub_1883FF5C0();
  v9 = sub_188488470(v8, &qword_1EA90D330);
  v11 = sub_188480308(sub_188488CF4, v13, v7, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  v17 = v11;
  type metadata accessor for Array();
  swift_getWitnessTable();
  sub_18840C144();
  CKFeatureSet.insert<A>(_:)();
}

uint64_t CKFeatureSet.removeAll(for:)@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  result = v6;
  if (!v6)
  {
    result = static Array._allocateUninitialized(_:)();
  }

  *a4 = result;
  return result;
}

uint64_t sub_188481A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 16))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void CKFeatureSet.subscript.modify()
{
  sub_1883F7EEC();
  sub_1883FF718();
  v1 = sub_188470D2C(0x28uLL);
  v2 = sub_1883F99F0(v1);
  CKFeatureSet.subscript.getter(v2, v3, v4);
  *v0 = v5;
  sub_1883FAEB8();
}

{
  sub_1883F7EEC();
  sub_1883FF718();
  v1 = sub_188470D2C(0x28uLL);
  sub_1883F99F0(v1);
  CKFeatureSet.subscript.getter();
  *v0 = v2;
  sub_1883FAEB8();
}

void CKFeatureSet.subscript.getter()
{
  sub_1883F7FF0();
  v2 = v1;
  v3 = *v0;
  if (*(v3 + 16) && (sub_1883F7210(), v7 = sub_188419148(v4, v5, v6), (v8 & 1) != 0))
  {
    v9 = *(*(v3 + 56) + 8 * v7);
    v10 = *(v2 + 16);
  }

  else
  {
    v10 = *(v2 + 16);
    v9 = Array.init()();
  }

  v17[9] = v9;
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  v11 = sub_1883FF6E8();
  MEMORY[0x18CFD5270](v11);

  v17[7] = v17[8];
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v2 + 24);
  v17[2] = v10;
  v17[3] = v13;
  v14 = type metadata accessor for LazySequence();
  sub_1883F87A4();
  v17[5] = swift_getWitnessTable();
  sub_1884054BC();
  WitnessTable = swift_getWitnessTable();
  sub_188480308(sub_1884862A0, v17, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  sub_1883FDCC0();
}

void sub_188481CE0()
{
  sub_1883F7EEC();
  v1 = v0;
  v3 = v2;
  type metadata accessor for CKFeatureSet(0, *(v4 + v5 - 16), *(v4 + v5 - 8), v0);
  v6 = sub_1884110D8();
  *v3 = v1(v6);
  sub_1883FAEB8();
}

uint64_t sub_188481D4C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = type metadata accessor for CKFeatureSet(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  return a5(v9, v6, v7, v8);
}

void sub_188481F8C()
{
  sub_1883F7FF0();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = (*v4)[2];
  v7 = **v4;

  v8 = v5[3];
  v9 = v5[1];
  if (v3)
  {

    v1(v10, v9, v6, v8);
  }

  else
  {
    v1(v7, v5[1], v6, v5[3]);
  }

  sub_1883FDCC0();

  free(v11);
}

Swift::Bool __swiftcall CKFeatureSet.contains(name:)(Swift::String name)
{
  v2 = *v1;
  v6 = name;
  v3 = type metadata accessor for Array();

  MEMORY[0x18CFD4FC0](&v7, &v6, v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);

  v4 = v7;
  if (v7)
  {
  }

  return v4 != 0;
}

uint64_t CKFeatureSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v8[0] = (*(*(a2 + 24) + 16))(*(a2 + 16), *(a2 + 24));
  v8[1] = v4;
  sub_1883FDBC4();
  v5 = type metadata accessor for Array();
  MEMORY[0x18CFD4FC0](&v9, v8, v3, MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);

  if (v9)
  {
    v8[0] = v9;
    sub_1883F9C10();
    swift_getWitnessTable();
    v6 = Sequence<>.contains(_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Bool __swiftcall CKFeatureSet.contains(name:value:)(Swift::String name, Swift::String value)
{
  sub_1883F8AF0();
  v3 = *v2;
  v9[0] = v4;
  v9[1] = v5;
  sub_188410C30();
  v6 = type metadata accessor for Array();

  MEMORY[0x18CFD4FC0](&v10, v9, v3, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);

  if (v10)
  {
    v9[0] = v10;
    MEMORY[0x1EEE9AC00](v7);
    sub_1883F9C10();
    swift_getWitnessTable();
    Sequence.contains(where:)();
  }

  sub_1883F8178();
  return result;
}

uint64_t sub_1884822D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 24))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

BOOL static CKFeatureSet.isValid(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1884056BC(a1, a2);
  v4 = v3(v2);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1883F7E8C();
  v10 = v9(v8);
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 != 0;
}

void sub_188482420()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_14;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_14;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F8204();
  sub_1883FE1D0();
  v10 = sub_188512698();

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_1883FDA5C(&unk_1EFA280D8);
  sub_188403884(v11);

  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v12 = sub_1883FD9C4();
  sub_188419148(v12, v13, v14);
  sub_18840AE44();
  if (!__OFADD__(v16, v17))
  {
    v18 = v15;
    sub_18844E6FC(&qword_1EA90DA70, &qword_1886F9128);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v19 = sub_1883FD9C4();
      sub_188419148(v19, v20, v21);
      sub_18840AD34();
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    *v0 = v23;
    if ((v18 & 1) == 0)
    {
      sub_188482C24();
      sub_188403740();
      sub_1884AFB54();
    }

    sub_1884769EC();
    sub_1883F8594();
    sub_188476BF0();

    sub_1883FEA20();
LABEL_14:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1884825C4()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_14;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_14;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F8204();
  sub_1883FE1D0();
  v10 = sub_188512698();

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_1883FDA5C(&unk_1EFA280B0);
  sub_188403884(v11);

  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v12 = sub_1883FD9C4();
  sub_188419148(v12, v13, v14);
  sub_18840AE44();
  if (!__OFADD__(v16, v17))
  {
    v18 = v15;
    sub_18844E6FC(&qword_1EA90DA68, &qword_1886F9120);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v19 = sub_1883FD9C4();
      sub_188419148(v19, v20, v21);
      sub_18840AD34();
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    *v0 = v23;
    if ((v18 & 1) == 0)
    {
      sub_188482C24();
      sub_188403740();
      sub_1884AFB54();
    }

    sub_188476A1C();
    sub_1883F8594();
    sub_188476C20();

    sub_1883FEA20();
LABEL_14:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_188482768()
{
  sub_1883F8AF0();
  sub_1883F9034();
  if (!v1)
  {
    goto LABEL_14;
  }

  sub_1883FDA40();
  if (!v2)
  {
    goto LABEL_14;
  }

  sub_1883F8B78();
  if (v3)
  {
    sub_1883F7210();
    v4 = sub_1883FD9C4();
    v7 = sub_188419148(v4, v5, v6);
    if (v8)
    {
      sub_188442F3C(v7);
    }
  }

  sub_1884056A8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F8204();
  sub_1883FE1D0();
  v10 = sub_188512698();

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = sub_1883FDA5C(&unk_1EFA28088);
  sub_188403884(v11);

  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v0;
  *v0 = 0x8000000000000000;
  sub_1883F7210();
  v12 = sub_1883FD9C4();
  sub_188419148(v12, v13, v14);
  sub_18840AE44();
  if (!__OFADD__(v16, v17))
  {
    v18 = v15;
    sub_18844E6FC(&qword_1EA90DA60, &qword_1886F9118);
    if (sub_18842D494())
    {
      sub_1883F7210();
      v19 = sub_1883FD9C4();
      sub_188419148(v19, v20, v21);
      sub_18840AD34();
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    *v0 = v23;
    if ((v18 & 1) == 0)
    {
      sub_188482C24();
      sub_188403740();
      sub_1884AFB54();
    }

    sub_188476A4C();
    sub_1883F8594();
    sub_188476C50();

    sub_1883FEA20();
LABEL_14:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void CKFeatureSet.insert(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  sub_1883F9C28();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v39 = v10 - v9;
  v12 = *(v11 + 24);
  if (!static CKFeatureSet.isValid(_:)(v13, v5))
  {
    goto LABEL_14;
  }

  v14 = *(v12 + 16);
  v14(v5, v12);
  v16 = v15;
  if (*(*v0 + 16) && (sub_1883F7210(), sub_188419148(v17, v16, v18), (v19 & 1) != 0))
  {
  }

  else
  {
    Array.init()();
  }

  sub_188410C30();
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  v20 = Sequence<>.contains(_:)();

  if (v20)
  {
    goto LABEL_14;
  }

  v21 = (v14)(v5, v12);
  v23 = v22;
  v24 = sub_1883FDA5C(&unk_1EFA27C90);
  *(v24 + 16) = v5;
  *(v24 + 24) = v12;
  (*(v7 + 16))(v39, v3, v5);
  sub_188405D30();
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = v12;
  v25[4] = sub_188486308;
  v25[5] = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v1;
  *v1 = 0x8000000000000000;
  sub_1883F7210();
  v38 = v21;
  v27 = v21;
  v28 = v23;
  sub_188419148(v27, v23, v29);
  sub_18840AE44();
  v33 = v31 + v32;
  if (!__OFADD__(v31, v32))
  {
    v34 = v30;
    type metadata accessor for _NativeDictionary();
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
    {
      sub_1883F7210();
      sub_188419148(v38, v28, v35);
      sub_18840AD34();
      if (!v36)
      {
        goto LABEL_16;
      }
    }

    *v1 = v40;
    if ((v34 & 1) == 0)
    {
      (v25[4])(v37);

      _NativeDictionary._insert(at:key:value:)();
    }

    Array.append(_:)();

LABEL_14:
    sub_1883F8178();
    return;
  }

  __break(1u);
LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall CKFeatureSet.insert(name:value:)(Swift::String name, Swift::String value)
{
  sub_1883F8AF0();
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v2);
  sub_1883F7100();
  v4 = *(*(v3 + 24) + 32);

  v5 = sub_1883FD9C4();
  v4(v5);
  CKFeatureSet.insert(_:)();
  v6 = sub_1883FEB84();
  v7(v6);
  sub_1883F8178();
}

void CKFeatureSet.remove(name:value:)()
{
  sub_1883F8AF0();
  sub_1883F9C28();
  MEMORY[0x1EEE9AC00](v0);
  sub_1883F7100();
  v2 = *(*(v1 + 24) + 32);

  v3 = sub_1883FD9C4();
  v2(v3);
  CKFeatureSet.remove(_:)();
  v4 = sub_1883FDCB4();
  v5(v4);
  sub_1883F8178();
}

void CKFeatureSet.remove(_:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  sub_1883FDBC4();
  v6 = type metadata accessor for Optional();
  sub_1883F9C28();
  v36[3] = v7;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v36[4] = v3;
  sub_1883F90F4(v3, 1, 1, v5);
  v11 = sub_188405290();
  v37 = v12;
  v13 = v12(v11);
  v38 = v1;
  v39 = v13;
  v14 = *v1;
  v40 = v15;
  sub_1883FDBC4();
  v16 = type metadata accessor for Array();
  MEMORY[0x18CFD4FC0](&v43, &v39, v14, MEMORY[0x1E69E6158], v16, MEMORY[0x1E69E6168]);

  if (v43)
  {
    v39 = v43;
    sub_1883F87A4();
    WitnessTable = swift_getWitnessTable();
    Collection<>.firstIndex(of:)();

    if ((v42 & 1) == 0)
    {
      v36[1] = v41;
      v36[2] = WitnessTable;
      v18 = sub_188405290();
      v41 = v37(v18);
      v42 = v19;
      v36[0] = type metadata accessor for Dictionary();
      v20 = v38;
      v22 = Dictionary.subscript.modify();
      if (*v21)
      {
        v20 = v21;
        Array.remove(at:)();
        v22(&v39, 0);

        v23 = sub_1883FA6C4();
        v24(v23);
        v25 = 0;
      }

      else
      {
        v22(&v39, 0);

        v26 = sub_1883FA6C4();
        v27(v26);
        v25 = 1;
      }

      sub_1883F90F4(v10, v25, 1, v5);
      (v20[4])(v22, v10, v6);
      v28 = sub_188405290();
      v29 = v37(v28);
      v31 = v30;
      v32 = *v38;
      v39 = v29;
      v40 = v31;
      MEMORY[0x18CFD4FC0](&v41, &v39, v32, MEMORY[0x1E69E6158], v16, MEMORY[0x1E69E6168]);

      if (v41)
      {
        v39 = v41;
        v33 = Collection.isEmpty.getter();

        if (v33)
        {
          v34 = sub_188405290();
          v39 = v37(v34);
          v40 = v35;
          Dictionary.removeValue(forKey:)();
        }
      }
    }
  }

  sub_1883F8178();
}

void sub_1884831FC()
{
  sub_1883F8AF0();
  v46 = v3;
  v47 = v4;
  if (*(v0 + 16) != *(v1 + 16))
  {
    goto LABEL_22;
  }

  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = v0 + 64;
  sub_1883F8578();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  v42 = v5;
  if (!v11)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v15 = v14;
LABEL_7:
    v16 = __clz(__rbit64(v11)) | (v15 << 6);
    v17 = (*(v7 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v7 + 56) + 8 * v16);

    v43 = v19;
    v48 = v18;
    v21 = v42(v19, v18, v6);
    if (!v21 || (v22 = *(v21 + 16), , v22 != *(v20 + 16)))
    {

LABEL_22:
      sub_1883F8178();
      return;
    }

    v39 = v13;
    v40 = v8;
    v41 = v7;
    v37 = v15;
    v38 = (v11 - 1) & v11;
    v23 = (v20 + 56);
    v44 = v6;
    v45 = -v22;
    v24 = -1;
    while (v45 + v24 != -1)
    {
      ++v24;
      v25 = v44;
      if (v24 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v26 = v20;
      v27 = *(v23 - 3);
      v28 = *(v23 - 2);
      v29 = *(v23 - 1);
      v30 = *v23;
      v31 = *(v44 + 16);

      if (!v31)
      {
        goto LABEL_20;
      }

      sub_1883F7210();
      v33 = sub_188419148(v43, v48, v32);
      if ((v34 & 1) == 0)
      {

LABEL_20:

LABEL_21:

        goto LABEL_22;
      }

      v49 = &v37;
      v23 += 4;
      v35 = *(*(v25 + 56) + 8 * v33);
      v50[0] = v27;
      v50[1] = v28;
      v50[2] = v29;
      v50[3] = v30;
      MEMORY[0x1EEE9AC00](v33);
      *(&v37 - 2) = v50;

      v36 = v47(v46, &v37 - 4, v35);

      v20 = v26;
      if ((v36 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v14 = v37;
    v11 = v38;
    v8 = v40;
    v7 = v41;
    v13 = v39;
    v6 = v44;
    if (v38)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      goto LABEL_22;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      goto LABEL_7;
    }
  }

LABEL_25:
  __break(1u);
}

void static CKFeatureSet.== infix(_:_:)()
{
  sub_1883F8AF0();
  v58 = v0;
  v2 = v1;
  sub_1883F9C28();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v49 - v10;
  v12 = *v11;
  v14 = *v13;
  v15 = type metadata accessor for Array();
  v16 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69E6168];
  v18 = MEMORY[0x18CFD4F70](v12, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);
  v60 = v14;
  if (v18 != MEMORY[0x18CFD4F70](v14, v16, v15, v17))
  {
    goto LABEL_25;
  }

  v50 = v6;
  v19 = v12 + 64;
  sub_1883F8578();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v54 = (v4 + 32);
  v55 = (v4 + 16);
  v56 = v4 + 8;

  v25 = 0;
  v52 = v12 + 64;
  v53 = v12;
  v51 = v24;
  if (!v22)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v26 = v25;
LABEL_7:
    v27 = __clz(__rbit64(v22)) | (v26 << 6);
    v28 = *(v12 + 56);
    v29 = (*(v12 + 48) + 16 * v27);
    v30 = v29[1];
    v31 = *(v28 + 8 * v27);
    v57 = *v29;
    v62 = v57;
    v63 = v30;
    sub_1883FEEC8();

    MEMORY[0x18CFD4FC0](&v64, &v62, v60, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

    v32 = v64;
    if (v64)
    {
      v33 = MEMORY[0x18CFD53A0](v64, v2);
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_1883F7228();
    v35 = MEMORY[0x18CFD53A0](v34);
    if (!v32 || v33 != v35)
    {

LABEL_25:
      sub_1883F8178();
      return;
    }

    v22 &= v22 - 1;

    v36 = Array.startIndex.getter();

    v64 = v36;
    while (1)
    {
      v37 = sub_1883F7228();
      v38 = MEMORY[0x18CFD53E0](v37);
      v39 = v64;
      if (v64 == v38)
      {
        break;
      }

      sub_1883F7228();
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v41 = v59;
        (*(v4 + 16))(v59, v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, v2);
      }

      else
      {
        sub_1883F7FE4();
        v46 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v50 != 8)
        {
          goto LABEL_29;
        }

        v62 = v46;
        v41 = v59;
        (*v55)(v59, &v62, v2);
        swift_unknownObjectRelease();
      }

      sub_1883F7FE4();
      Array.formIndex(after:)(v42);
      (*v54)(v8, v41, v2);
      v62 = v57;
      v63 = v30;

      MEMORY[0x18CFD4FC0](&v61, &v62, v60, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69E6168]);

      if (!v61)
      {
        v47 = sub_1883FF3AC();
        v48(v47);
LABEL_24:

        goto LABEL_25;
      }

      v62 = v61;
      sub_1883F9C10();
      swift_getWitnessTable();
      v43 = Sequence<>.contains(_:)();

      v44 = sub_1883FF3AC();
      v45(v44);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v25 = v26;
    v19 = v52;
    v12 = v53;
    v24 = v51;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      goto LABEL_25;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_188483920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ValueMetadata *a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v34;
  a28 = v35;
  sub_188488D1C(v36, v37);
  sub_1883FA368();
  sub_18848F398(v29, v38, 0);
  a11 = v39;
  sub_1884861F4(&a11, sub_188514368);

  sub_1883F977C();
  while (1)
  {
    if (a10 == v29)
    {

      sub_1883FDD58();
      return;
    }

    if (v29 >= MEMORY[0x10])
    {
      break;
    }

    sub_1883FDEA0();
    a14 = &type metadata for CKFieldFeature;
    a15 = sub_188488AA8();
    sub_188405D30();
    v40 = swift_allocObject();
    a11 = v40;
    v40[2] = v33;
    v40[3] = v30;
    v40[4] = v32;
    v40[5] = v31;
    sub_188402E84(&a11);
    sub_1883FEEC8();
    sub_1883FE828();
    sub_18840F69C();
    String.hash(into:)();
    sub_1883FE944(&a11);

    v28 += 32;
  }

  __break(1u);

  __break(1u);
}

void sub_188483A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ValueMetadata *a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v34;
  a28 = v35;
  sub_188488D1C(v36, v37);
  sub_1883FA368();
  sub_18848F3AC(v29, v38, 0);
  a11 = v39;
  sub_1884861F4(&a11, sub_188514380);

  sub_1883F977C();
  while (1)
  {
    if (a10 == v29)
    {

      sub_1883FDD58();
      return;
    }

    if (v29 >= MEMORY[0x10])
    {
      break;
    }

    sub_1883FDEA0();
    a14 = &type metadata for CKRecordFeature;
    a15 = sub_188488AFC();
    sub_188405D30();
    v40 = swift_allocObject();
    a11 = v40;
    v40[2] = v33;
    v40[3] = v30;
    v40[4] = v32;
    v40[5] = v31;
    sub_188402E84(&a11);
    sub_1883FEEC8();
    sub_1883FE828();
    sub_18840F69C();
    String.hash(into:)();
    sub_1883FE944(&a11);

    v28 += 32;
  }

  __break(1u);

  __break(1u);
}

void sub_188483B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ValueMetadata *a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v34;
  a28 = v35;
  sub_188488D1C(v36, v37);
  sub_1883FA368();
  sub_18848F3C0(v29, v38, 0);
  a11 = v39;
  sub_1884861F4(&a11, sub_188514398);

  sub_1883F977C();
  while (1)
  {
    if (a10 == v29)
    {

      sub_1883FDD58();
      return;
    }

    if (v29 >= MEMORY[0x10])
    {
      break;
    }

    sub_1883FDEA0();
    a14 = &type metadata for CKZoneFeature;
    a15 = sub_188488B50();
    sub_188405D30();
    v40 = swift_allocObject();
    a11 = v40;
    v40[2] = v33;
    v40[3] = v30;
    v40[4] = v32;
    v40[5] = v31;
    sub_188402E84(&a11);
    sub_1883FEEC8();
    sub_1883FE828();
    sub_18840F69C();
    String.hash(into:)();
    sub_1883FE944(&a11);

    v28 += 32;
  }

  __break(1u);

  __break(1u);
}

uint64_t CKFeatureSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  CKFeatureSet.features.getter(a2);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  Sequence<>.sorted()();

  sub_188488D38();
  Sequence.forEach(_:)();
}

uint64_t sub_188483E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_18844E6FC(&qword_1EA90DA78, &qword_1886F9130);
  if (swift_dynamicCast())
  {
    sub_18843E080(v7, v9);
    sub_188400B68(v9, v9[3]);
    dispatch thunk of Hashable.hash(into:)();
    return sub_1883FE944(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    return sub_18840E89C(v7, &unk_1EA90DA80);
  }
}

Swift::Int CKFeatureSet.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  Hasher.init(_seed:)();
  CKFeatureSet.hash(into:)(v4, a1);
  return Hasher._finalize()();
}

Swift::Int sub_18848401C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  CKFeatureSet.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t CKFeatureSet.description.getter(uint64_t a1)
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  CKFeatureSet.features.getter(a1);
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  v3 = sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
  sub_1883F7EC8();
  swift_getWitnessTable();
  sub_1883F8E20();
  swift_getWitnessTable();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8400();
  swift_getWitnessTable();
  sub_1884054BC();
  swift_getWitnessTable();
  v4 = sub_188488D38();
  sub_188480308(v4, v5, v6, v3, v7, v8, v9, v10);

  v11 = sub_1883FF4BC();
  MEMORY[0x18CFD5330](v11);

  v12 = sub_1883F7228();
  MEMORY[0x18CFD5140](v12);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1884842A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = (*(a2 + 16))(a1, a2);
  a3[1] = v6;
  result = (*(a2 + 24))(a1, a2);
  a3[2] = result;
  a3[3] = v8;
  return result;
}

double sub_188484328@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  a2[1] = a1;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  a2[2] = a1 + 64;
  a2[3] = v3;
  a2[4] = 0;
  a2[5] = v6;

  return result;
}

Swift::tuple_String_OpaquePointer_optional __swiftcall CKFeatureSet.Iterator.next()()
{
  v2 = v0[4];
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[4];
LABEL_6:
    v4 = *(*(v0[1] + 56) + 8 * (__clz(__rbit64(v1)) | (v3 << 6)));
    v0[4] = v3;
    v0[5] = (v1 - 1) & v1;

LABEL_7:
    v5 = sub_1883F7228();
    v7 = v4;
  }

  else
  {
    while (1)
    {
      v3 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v3 >= ((v0[3] + 64) >> 6))
      {
        v4 = 0;
        v0[4] = v2;
        v0[5] = 0;
        goto LABEL_7;
      }

      v1 = *(v0[2] + 8 * v3);
      ++v2;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  result.value._1._rawValue = v7;
  result.value._0._object = v6;
  result.value._0._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_18848441C@<X0>(Swift::tuple_String_OpaquePointer_optional *a1@<X8>)
{
  v3 = CKFeatureSet.Iterator.next()();
  *a1 = v3;
  return v3.value._0._countAndFlagsBits;
}

double CKFeatureSet.makeIterator()@<D0>(void *a1@<X8>)
{
  sub_188484328(*v1, a1);

  return result;
}

uint64_t sub_188484484@<X0>(void *a1@<X8>)
{
  CKFeatureSet.makeIterator()(a1);
}

void CKFeatureSet.init(dictionaryLiteral:)()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = CKFeatureSet.init()(&v28);
  v9 = v28;
  v29 = v28;
  v10 = *(v5 + 16);
  if (v10)
  {
    v23 = v5;
    v24 = v7;
    v27 = v1;
    v11 = (v5 + 48);
    do
    {
      v26 = v10;
      v25 = &v23;
      v12 = *(v11 - 1);
      v13 = *v11;
      v11 += 3;
      v28 = v13;
      MEMORY[0x1EEE9AC00](v8);
      v14 = v27;
      *(&v23 - 4) = v3;
      *(&v23 - 3) = v14;
      *(&v23 - 2) = v15;
      *(&v23 - 1) = v12;

      v16 = sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
      v17 = sub_188488470(&qword_1EA90D890, &qword_1EA90D330);
      v19 = sub_188480308(sub_1884874D0, (&v23 - 6), v16, v3, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);

      v28 = v19;
      v20 = sub_188410C30();
      type metadata accessor for CKFeatureSet(v20, v21, v27, v22);
      sub_188410C30();
      type metadata accessor for Array();
      swift_getWitnessTable();
      CKFeatureSet.insert<A>(_:)();

      v10 = v26 - 1;
    }

    while (v26 != 1);

    v9 = v29;
    v7 = v24;
  }

  else
  {
  }

  *v7 = v9;
  sub_1883F8178();
}

uint64_t sub_18848469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 32);

  v6 = sub_188411050();
  return v5(v6);
}

uint64_t CKFeatureSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  CKFeatureSet.init()(&v19);
  v18 = a1;
  v17[2] = a2;
  v17[3] = a3;
  v8 = sub_18844E6FC(&qword_1EA90D898, &qword_1886F89E0);
  sub_1883FF5C0();
  v10 = sub_188488470(v9, &qword_1EA90D898);
  v12 = sub_188480308(sub_1884874F4, v17, v8, a2, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

  v18 = v12;
  v13 = sub_1883FDBC4();
  type metadata accessor for CKFeatureSet(v13, v14, a3, v15);
  sub_1883FDBC4();
  type metadata accessor for Array();
  swift_getWitnessTable();
  CKFeatureSet.insert<A>(_:)();

  *a4 = v19;
  return result;
}

uint64_t sub_18848487C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a3 + 32);

  return v9(v5, v6, v7, v8, a2, a3);
}

uint64_t CKRequiredFeatureSet.zone.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t CKRequiredFeatureSet.record.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t CKRequiredFeatureSet.field.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void CKRequiredFeatureSet.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
  a1[2] = v1;
}

void CKRequiredFeatureSet.insert<A>(_:)()
{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8C0, &qword_1886F89E8);
  sub_1883FC640();

  CKFeatureSet.insert<A>(_:)();
}

{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8C8, &qword_1886F89F0);
  sub_1883FC640();
  CKFeatureSet.insert<A>(_:)();
}

{
  sub_1883FE21C();
  sub_18844E6FC(&qword_1EA90D8D0, &qword_1886F89F8);
  sub_1883FC640();
  CKFeatureSet.insert<A>(_:)();
}

uint64_t static CKRequiredFeatureSet.== infix(_:_:)()
{
  sub_1884831FC();
  if (v0 & 1) != 0 && (sub_1883F7BC0(), sub_1884831FC(), (v1))
  {
    sub_1883F7EE0();
    sub_1884831FC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void CKRequiredFeatureSet.description.getter()
{
  sub_1883F8AF0();
  v1 = *v0;
  v205 = v0[1];
  if (!*(*v0 + 16) && !*(v205 + 16) && !*(v0[2] + 16))
  {
LABEL_93:
    sub_1883F8178();
    return;
  }

  v185 = v0[2];
  v258 = 0;
  v259 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  sub_188487638(v2, sub_188488D0C, 0, v3, v4, v5, v6, v7, v169, v173, v177, v181, v185, v190, v196, v200, v205, v210, v215, v220, v225, v230, v231, v232, v233, v234, 0xD00000000000001DLL, 0x80000001886FFF60);
  v9 = *(v1 + 36);
  v258 = 1 << *(v1 + 32);
  v8 = v258;
  v259 = v9;
  v260 = 0;
  v261 = 0;
  v262 = 1;
  v10 = sub_18848785C(v237, &v258, v1, sub_188488D0C);
  sub_188487EB8(v8, v9, 0);
  sub_18840E89C(v237, &unk_1EA90DAF0);
  if (v10)
  {
    v250[0] = MEMORY[0x1E69E7CC0];
    sub_1884777AC(0, v10 & ~(v10 >> 63), 0);
    v11 = v250[0];
    sub_1883FA368();
    sub_188487638(v1, v12, 0, v13, v14, v15, v16, v17, v170, v174, v178, v182, v186, v191, v197, v201, v206, v211, v216, v221, v226, v230, v231, v232, v233, v234, v235, v236);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v19 = v240;
      v20 = v239;
      v21 = v1 + 64;
      HIDWORD(v182) = v238;
      v23 = v237[5];
      v22 = v237[6];
      v192 = v10;
      v197 = v1 + 64;
      v201 = v1;
      while (1)
      {
        v24 = __OFADD__(v18, 1);
        v25 = v18 + 1;
        if (v24)
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if ((v23 & 0x8000000000000000) != 0 || v23 >= 1 << *(v1 + 32))
        {
          goto LABEL_96;
        }

        v26 = v23 >> 6;
        v27 = 1 << v23;
        if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
        {
          goto LABEL_97;
        }

        if (*(v1 + 36) != v22)
        {
          goto LABEL_98;
        }

        if (v19)
        {
          goto LABEL_128;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        v28 = *(*(v1 + 56) + 8 * v23);
        if (v20 >= *(v28 + 16))
        {
          goto LABEL_100;
        }

        v221 = v22;
        v226 = v23;
        v211 = v25;
        v216 = v20;
        v29 = (v28 + 32 * v20);
        v30 = v29[4];
        v31 = v29[5];
        v32 = v29[6];
        v33 = v29[7];
        v250[0] = v11;
        v35 = *(v11 + 16);
        v34 = *(v11 + 24);

        if (v35 >= v34 >> 1)
        {
          sub_1884777AC((v34 > 1), v35 + 1, 1);
          v11 = v250[0];
        }

        *(v11 + 16) = v35 + 1;
        v36 = (v11 + 32 * v35);
        v36[4] = v30;
        v36[5] = v31;
        v36[6] = v32;
        v36[7] = v33;
        v1 = v201;
        v23 = v226;
        if (v226 >= 1 << *(v201 + 32))
        {
          goto LABEL_101;
        }

        v21 = v197;
        if ((*(v197 + 8 * v26) & v27) == 0)
        {
          goto LABEL_102;
        }

        v22 = v221;
        if (*(v201 + 36) != v221)
        {
          goto LABEL_103;
        }

        v20 = v216 + 1;
        if (v216 + 1 == *(*(*(v201 + 56) + 8 * v226) + 16))
        {
          break;
        }

        v19 = 0;
LABEL_22:
        v37 = v192;
        v18 = v211;
LABEL_23:
        if (v18 == v37)
        {

          sub_1883FDC60();
          sub_188487EB8(v23, v22, v52);
          goto LABEL_34;
        }
      }

      sub_1883FDC60();
      v39 = sub_188488008(v226, v221, v38, v201);
      v41 = v40;
      if (v42)
      {
        goto LABEL_131;
      }

      while (1)
      {
        v22 = *(v201 + 36);
        if (v22 != v41)
        {
          goto LABEL_125;
        }

        if (v39 == 1 << *(v201 + 32))
        {
          sub_1883FDC60();
          sub_188487EB8(v226, v221, v50);
          sub_188404BD4();
          v19 = 1;
          v23 = v39;
          goto LABEL_22;
        }

        v43 = sub_18844E6FC(&qword_1EA90D900, &qword_1886F8A38);
        v170 = sub_1884883C0();
        v44 = sub_188487E40(v254, v39, v41, 0, v201, sub_188488D0C, 0, v43);
        v46 = *v45;

        (v44)(v254, 0);
        v47 = *(v46 + 16);

        if (v47)
        {
          sub_1883FDC60();
          sub_188487EB8(v226, v221, v51);
          sub_188404BD4();
          v19 = 0;
          v22 = v41;
          v23 = v39;
          v37 = v192;
          v18 = v211;
          goto LABEL_23;
        }

        v39 = sub_188488008(v39, v41, 0, v201);
        v41 = v48;
        if (v49)
        {
          goto LABEL_131;
        }
      }
    }

    goto LABEL_122;
  }

LABEL_34:
  sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
  v53 = sub_1883F9598();
  v193 = v54;
  MEMORY[0x18CFD5330](v53);

  v55 = sub_1883FF6E8();
  MEMORY[0x18CFD5140](v55);

  MEMORY[0x18CFD5140](0x64726F636572202CLL, 0xEA0000000000203ALL);
  v56 = v206;

  sub_188487638(v57, sub_188488D0C, 0, v58, v59, v60, v61, v62, v170, v174, v178, v182, v186, v193, v197, v201, v206, v211, v216, v221, v226, v230, v231, v232, v233, v234, v235, v236);
  v64 = *(v56 + 36);
  v254[0] = 1 << *(v56 + 32);
  v63 = v254[0];
  v254[1] = v64;
  v255 = 0;
  v256 = 0;
  v257 = 1;
  v65 = sub_18848785C(v241, v254, v56, sub_188488D0C);
  sub_188487EB8(v63, v64, 0);
  sub_18840E89C(v241, &unk_1EA90D8D8);
  if (v65)
  {
    v246 = MEMORY[0x1E69E7CC0];
    sub_1884777AC(0, v65 & ~(v65 >> 63), 0);
    v66 = v246;
    sub_1883FA368();
    sub_188487638(v56, v67, 0, v68, v69, v70, v71, v72, v171, v175, v179, v183, v187, v194, v198, v202, v207, v212, v217, v222, v227, v230, v231, v232, v233, v234, v235, v236);
    if (v65 < 0)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v73 = v56;
    v74 = 0;
    v75 = v244;
    v76 = v243;
    v77 = v56 + 64;
    HIDWORD(v183) = v242;
    v79 = v241[5];
    v78 = v241[6];
    v198 = v65;
    v202 = v56 + 64;
    while (1)
    {
      v24 = __OFADD__(v74, 1);
      v80 = v74 + 1;
      if (v24)
      {
        break;
      }

      if ((v79 & 0x8000000000000000) != 0 || v79 >= 1 << *(v73 + 32))
      {
        goto LABEL_105;
      }

      v81 = v79 >> 6;
      v82 = 1 << v79;
      if ((*(v77 + 8 * (v79 >> 6)) & (1 << v79)) == 0)
      {
        goto LABEL_106;
      }

      if (*(v73 + 36) != v78)
      {
        goto LABEL_107;
      }

      if (v75)
      {
        goto LABEL_129;
      }

      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }

      v83 = *(*(v73 + 56) + 8 * v79);
      if (v76 >= *(v83 + 16))
      {
        goto LABEL_109;
      }

      v222 = v78;
      v227 = v79;
      v212 = v80;
      v217 = v76;
      v84 = (v83 + 32 * v76);
      v86 = v84[4];
      v85 = v84[5];
      v87 = v84[6];
      v88 = v84[7];
      v246 = v66;
      v90 = *(v66 + 16);
      v89 = *(v66 + 24);

      if (v90 >= v89 >> 1)
      {
        sub_1884777AC((v89 > 1), v90 + 1, 1);
        v66 = v246;
      }

      *(v66 + 16) = v90 + 1;
      v91 = (v66 + 32 * v90);
      v91[4] = v86;
      v91[5] = v85;
      v91[6] = v87;
      v91[7] = v88;
      v73 = v207;
      v79 = v227;
      if (v227 >= 1 << *(v207 + 32))
      {
        goto LABEL_110;
      }

      v77 = v202;
      if ((*(v202 + 8 * v81) & v82) == 0)
      {
        goto LABEL_111;
      }

      v78 = v222;
      if (*(v207 + 36) != v222)
      {
        goto LABEL_112;
      }

      v76 = v217 + 1;
      if (v217 + 1 == *(*(*(v207 + 56) + 8 * v227) + 16))
      {
        sub_1883FDC60();
        v79 = sub_188488008(v227, v222, v93, v207);
        v95 = v94;
        v92 = v198;
        v179 = v66;
        if (v96)
        {
          goto LABEL_132;
        }

        while (1)
        {
          v97 = *(v207 + 36);
          if (v97 != v95)
          {
            goto LABEL_126;
          }

          if (v79 == 1 << *(v207 + 32))
          {
            sub_1883FDC60();
            sub_188487EB8(v227, v222, v106);
            sub_188404BD4();
            v75 = 1;
            v78 = v97;
            goto LABEL_52;
          }

          v98 = sub_18844E6FC(&unk_1EA90DB20, &qword_1886F8A28);
          v171 = sub_188488310();
          v99 = sub_188487DD0(v250, v79, v95, 0, v207, sub_188488D0C, 0, v98);
          v100 = v79;
          v102 = *v101;

          (v99)(v250, 0);
          v103 = *(v102 + 16);

          if (v103)
          {
            sub_1883FDC60();
            sub_188487EB8(v227, v222, v107);
            sub_188404BD4();
            v75 = 0;
            v78 = v95;
            v79 = v100;
            v66 = v179;
            goto LABEL_52;
          }

          v79 = sub_188488008(v100, v95, 0, v207);
          v95 = v104;
          v66 = v179;
          if (v105)
          {
            goto LABEL_132;
          }
        }
      }

      v75 = 0;
      v92 = v198;
LABEL_52:
      v74 = v212;
      if (v212 == v92)
      {

        sub_1883FDC60();
        sub_188487EB8(v79, v78, v108);
        goto LABEL_63;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_63:
  MEMORY[0x18CFD5330](v66, v194);

  v109 = sub_1884110D8();
  MEMORY[0x18CFD5140](v109);

  MEMORY[0x18CFD5140](0x3A646C656966202CLL, 0xE900000000000020);
  v110 = v187;

  sub_188487638(v111, sub_188488D0C, 0, v112, v113, v114, v115, v116, v171, v175, v179, v183, v187, v194, v198, v202, v207, v212, v217, v222, v227, v230, v231, v232, v233, v234, v235, v236);
  v117 = *(v110 + 36);
  v250[0] = 1 << *(v110 + 32);
  v250[1] = v117;
  v251 = 0;
  v252 = 0;
  v253 = 1;
  v118 = sub_18848785C(v245, v250, v110, sub_188488D0C);
  v119 = sub_1883FF6E8();
  sub_188487EB8(v119, v120, 0);
  sub_18840E89C(v245, &unk_1EA90DB40);
  if (!v118)
  {

    v121 = MEMORY[0x1E69E7CC0];
LABEL_92:
    MEMORY[0x18CFD5330](v121, v195);

    v168 = sub_1883F7228();
    MEMORY[0x18CFD5140](v168);

    MEMORY[0x18CFD5140](62, 0xE100000000000000);
    goto LABEL_93;
  }

  v234 = MEMORY[0x1E69E7CC0];
  sub_1884777AC(0, v118 & ~(v118 >> 63), 0);
  v121 = v234;
  sub_1883FA368();
  sub_188487638(v110, v122, 0, v123, v124, v125, v126, v127, v172, v176, v180, v184, v188, v195, v199, v203, v208, v213, v218, v223, v228, v230, v231, v232, v233, v234, v235, v236);
  if ((v118 & 0x8000000000000000) == 0)
  {
    v128 = v110;
    v129 = 0;
    v130 = v249;
    v131 = v248;
    v132 = v110 + 64;
    v134 = v246;
    v133 = v247;
    v204 = v118;
    v209 = v110 + 64;
    while (1)
    {
      v24 = __OFADD__(v129, 1);
      v135 = v129 + 1;
      if (v24)
      {
        break;
      }

      if ((v134 & 0x8000000000000000) != 0 || v134 >= 1 << *(v128 + 32))
      {
        goto LABEL_114;
      }

      v136 = v134 >> 6;
      v137 = 1 << v134;
      if ((*(v132 + 8 * (v134 >> 6)) & (1 << v134)) == 0)
      {
        goto LABEL_115;
      }

      if (*(v128 + 36) != v133)
      {
        goto LABEL_116;
      }

      if (v130)
      {
        goto LABEL_130;
      }

      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      v138 = *(*(v128 + 56) + 8 * v134);
      if (v131 >= *(v138 + 16))
      {
        goto LABEL_118;
      }

      v224 = v133;
      v229 = v134;
      v214 = v135;
      v219 = v131;
      v139 = (v138 + 32 * v131);
      v140 = v139[4];
      v141 = v139[5];
      v142 = v139[6];
      v143 = v139[7];
      v234 = v121;
      v145 = *(v121 + 16);
      v144 = *(v121 + 24);

      if (v145 >= v144 >> 1)
      {
        sub_1884777AC((v144 > 1), v145 + 1, 1);
        v121 = v234;
      }

      *(v121 + 16) = v145 + 1;
      v146 = (v121 + 32 * v145);
      v146[4] = v140;
      v146[5] = v141;
      v146[6] = v142;
      v146[7] = v143;
      v128 = v189;
      v134 = v229;
      if (v229 >= 1 << *(v189 + 32))
      {
        goto LABEL_119;
      }

      v132 = v209;
      if ((*(v209 + 8 * v136) & v137) == 0)
      {
        goto LABEL_120;
      }

      v133 = v224;
      if (*(v189 + 36) != v224)
      {
        goto LABEL_121;
      }

      v131 = v219 + 1;
      if (v219 + 1 == *(*(*(v189 + 56) + 8 * v229) + 16))
      {
        sub_188410B84();
        v147 = sub_1883FDCB4();
        v150 = sub_188488008(v147, v148, v149, v189);
        v152 = v151;
        if (v153)
        {
          goto LABEL_133;
        }

        while (1)
        {
          v154 = *(v189 + 36);
          if (v154 != v152)
          {
            goto LABEL_127;
          }

          if (v150 == 1 << *(v189 + 32))
          {
            sub_188410B84();
            sub_188487EB8(v229, v224, v163);
            v131 = 0;
            v130 = 1;
            v134 = v150;
            v133 = v154;
            goto LABEL_81;
          }

          v155 = v121;
          v156 = sub_18844E6FC(&qword_1EA90D8E0, &qword_1886F8A18);
          sub_188488260();
          v157 = sub_188487DD0(&v230, v150, v152, 0, v189, sub_188488D0C, 0, v156);
          v159 = *v158;

          (v157)(&v230, 0);
          v160 = *(v159 + 16);

          if (v160)
          {
            sub_188410B84();
            sub_188487EB8(v229, v224, v164);
            v131 = 0;
            v130 = 0;
            v134 = v150;
            v133 = v152;
            v121 = v155;
            goto LABEL_81;
          }

          v150 = sub_188488008(v150, v152, 0, v189);
          v152 = v161;
          v121 = v155;
          if (v162)
          {
            goto LABEL_133;
          }
        }
      }

      v130 = 0;
LABEL_81:
      v129 = v214;
      if (v214 == v204)
      {

        sub_188410B84();
        v165 = sub_1883FDCB4();
        sub_188487EB8(v165, v166, v167);
        goto LABEL_92;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
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
    goto LABEL_123;
  }

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
}

void CKRecordZone.requiredFeatures.getter(uint64_t a1@<X8>)
{
  v3 = [v1 requiredFeatures];
  sub_188488E50(&v4);

  if (v4)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }

  else
  {
    __break(1u);
  }
}

double sub_188485E08@<D0>(uint64_t a1@<X8>)
{
  CKRecordZone.requiredFeatures.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void sub_188485E4C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v3 = *a1;
  *(&v3 + 1) = v1;
  v4 = v2;

  CKRecordZone.requiredFeatures.setter(&v3);
}

void CKRecordZone.requiredFeatures.setter(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  type metadata accessor for CKRequiredFeatureSet(0);
  v6 = *a1;
  v7 = v4;
  v5 = sub_188488EA8(&v6);
  [v2 setRequiredFeatures_];
}

void (*CKRecordZone.requiredFeatures.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  CKRecordZone.requiredFeatures.getter(a1);
  return sub_188485F7C;
}

void sub_188485F7C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (a2)
  {
    *&v4 = *a1;
    *(&v4 + 1) = v2;
    v5 = v3;

    CKRecordZone.requiredFeatures.setter(&v4);
  }

  else
  {
    *&v4 = *a1;
    *(&v4 + 1) = v2;
    v5 = v3;
    CKRecordZone.requiredFeatures.setter(&v4);
  }
}

void CKShareMetadata.requiredFeatures.getter(void *a1@<X8>)
{
  v3 = [v1 requiredFeatures];
  if (v3)
  {
    v4 = v3;
    sub_188488E50(a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_1884860A4@<D0>(uint64_t a1@<X8>)
{
  CKShareMetadata.requiredFeatures.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

void sub_1884860E8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = v2;
  sub_188488A18(v3[0], v1, v2);
  sub_188486134(v3);
}

void sub_188486134(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1)
  {
    type metadata accessor for CKRequiredFeatureSet(0);
    v6 = v3;
    v7 = *(a1 + 1);
    v5 = sub_188488EA8(&v6);
    [v2 setRequiredFeatures_];
  }

  else
  {

    [v1 setRequiredFeatures_];
  }
}

Swift::Int sub_1884861F4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  sub_18840C144();
  result = sub_188486890(v5, v6, v7);
  *a1 = v4;
  return result;
}

uint64_t sub_1884862A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1883FEE54();
  result = v3(v2);
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_188486310()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_188486354()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_188486398()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_1884863DC()
{
  sub_188405F00();
  type metadata accessor for URL();
  sub_188488A64(&qword_1EA90D398, MEMORY[0x1E6968FB0]);
  sub_1883F7BC0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1883FE2BC();
  sub_18848671C();
}

void sub_18848649C()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

unint64_t sub_1884864E0()
{
  v0 = sub_1883F95A4();
  AnyHashable._rawHashValue(seed:)(v0);
  v1 = sub_1883F9598();

  return sub_188486658(v1, v2);
}

void sub_188486518()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_18848655C()
{
  v0 = sub_1883F95A4();
  NSObject._rawHashValue(seed:)(v0);
  sub_1883FE2BC();
  sub_1884865A0();
}

void sub_1884865A0()
{
  sub_1883F8AF0();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  sub_1883F7AD8();
  v8 = ~v7;
  for (i = v9 & ~v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_1883F4C5C(0, v4, v2);
    v11 = *(*(v5 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  sub_1883F8178();
}

unint64_t sub_188486658(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1884802A8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x18CFD58F0](v8, a1);
    sub_1884889C4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_18848671C()
{
  sub_1883F8AF0();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  sub_1883F9C28();
  v10 = v9;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v23 = v0 + 64;
  v19 = v0;
  sub_1883F7AD8();
  v15 = ~v14;
  for (i = v5 & ~v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_188488A64(v20, v21);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  sub_1883F8178();
}

Swift::Int sub_188486890(uint64_t *a1, uint64_t a2, void (*a3)(char *, int64_t, char *))
{
  v5 = a1[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1883FEB84();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v12[0] = (v9 + 32);
      v12[1] = v8;
      sub_188486AC8(v12, v13, a1, v7, a3);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v10 = sub_188410C30();
    return sub_18848698C(v10, v11, 1, a1);
  }

  return result;
}

uint64_t sub_18848698C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
    while (2)
    {
      v19 = v4;
      v20 = a3;
      v6 = (v22 + 32 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v18 = v5;
      do
      {
        v11 = v4[2];
        v12 = v4[3];
        v13 = v7 == *v4 && v8 == v4[1];
        if (v13 || (v21 = v4[2], result = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = v21, (result & 1) != 0))
        {
          if (v9 == v11 && v10 == v12)
          {
            break;
          }
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v22)
        {
          __break(1u);
          return result;
        }

        v7 = v4[4];
        v8 = v4[5];
        v9 = v4[6];
        v10 = v4[7];
        v15 = *(v4 + 1);
        *(v4 + 2) = *v4;
        *(v4 + 3) = v15;
        *v4 = v7;
        v4[1] = v8;
        v4[2] = v9;
        v4[3] = v10;
        v4 -= 4;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v20 + 1;
      v4 = v19 + 4;
      v5 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_188486AC8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v101 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v101 = i)
      {
        sub_188404A78();
        if (!v103)
        {
          goto LABEL_156;
        }

        v104 = &v8[16 * i];
        v105 = *v104;
        v106 = &v101[2 * i];
        v107 = *(v106 + 1);
        sub_1884871D8((v103 + 32 * *v104), (v103 + 32 * *v106), (v103 + 32 * v107), v5, a5);
        if (v118)
        {
          break;
        }

        if (v107 < v105)
        {
          goto LABEL_144;
        }

        if (i - 2 >= *v101)
        {
          goto LABEL_145;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        v108 = *v101 - i;
        if (*v101 < i)
        {
          goto LABEL_146;
        }

        v118 = 0;
        i = *v101 - 1;
        sub_18851423C(v106 + 16, v108, v106);
      }

LABEL_128:

      return;
    }

LABEL_153:
    v8 = sub_188514144();
    goto LABEL_120;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    v115 = v8;
    if (v7 + 1 >= v6)
    {
      goto LABEL_41;
    }

    sub_188404A78();
    v12 = (v11 + 32 * v10);
    v14 = v12[2];
    v13 = v12[3];
    v15 = (v11 + 32 * v9);
    v5 = v15[2];
    v16 = v15[3];
    v17 = *v12 == *v15 && v12[1] == v15[1];
    if (v17 || (v123 = v12[3], v18 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = v123, (v18)) && (v14 == v5 ? (v19 = v13 == v16) : (v19 = 0), v19))
    {
      v124 = 0;
    }

    else
    {
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v9 + 2;
    v20 = v15 + 6;
    v121 = v6;
    while (v10 < v6)
    {
      v21 = v20[4];
      v22 = v20[5];
      v23 = *v20;
      v5 = v20[1];
      v24 = v20[2] == *(v20 - 2) && v20[3] == *(v20 - 1);
      if (v24 || (sub_1883FF4BC(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (v21 == v23 && v22 == v5)
        {
          v8 = v115;
          v6 = v121;
          if (v124)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        sub_18840F69C();
      }

      else
      {
        sub_1883FF4BC();
      }

      v6 = v121;
      v8 = v115;
      if ((v124 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        break;
      }

LABEL_32:
      ++v10;
      v20 += 4;
    }

    if ((v124 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (v10 < v9)
    {
      goto LABEL_150;
    }

    if (v9 < v10)
    {
      v26 = 32 * v10 - 16;
      v27 = 32 * v9 + 24;
      v28 = v10;
      v29 = v9;
      do
      {
        if (v29 != --v28)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_157;
          }

          v31 = (v30 + v27);
          v32 = (v30 + v26);
          v33 = *(v31 - 3);
          v34 = *(v31 - 1);
          v35 = *v31;
          v36 = *v32;
          *(v31 - 3) = *(v32 - 1);
          *(v31 - 1) = v36;
          *(v32 - 1) = v33;
          *v32 = v34;
          *(v32 + 1) = v35;
        }

        ++v29;
        v26 -= 32;
        v27 += 32;
      }

      while (v29 < v28);
    }

LABEL_41:
    v37 = a3[1];
    if (v10 >= v37)
    {
      goto LABEL_66;
    }

    if (__OFSUB__(v10, v9))
    {
      goto LABEL_149;
    }

    if (v10 - v9 >= a4)
    {
LABEL_66:
      if (v10 < v9)
      {
        goto LABEL_148;
      }

      v120 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188476DA8();
        v8 = v99;
      }

      v55 = *(v8 + 2);
      v56 = v55 + 1;
      if (v55 >= *(v8 + 3) >> 1)
      {
        sub_188476DA8();
        v8 = v100;
      }

      *(v8 + 2) = v56;
      v57 = v8 + 32;
      v58 = &v8[16 * v55 + 32];
      *v58 = v9;
      *(v58 + 1) = v120;
      v126 = *a1;
      if (!*a1)
      {
        goto LABEL_158;
      }

      if (!v55)
      {
LABEL_115:
        v6 = a3[1];
        v7 = v120;
        if (v120 >= v6)
        {
          goto LABEL_118;
        }

        continue;
      }

      while (1)
      {
        v59 = v56 - 1;
        v60 = &v57[16 * v56 - 16];
        v61 = &v8[16 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v62 = *(v8 + 4);
          v63 = *(v8 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_86:
          if (v65)
          {
            goto LABEL_135;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_138;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_143;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v56 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v56 < 2)
        {
          goto LABEL_137;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_101:
        if (v80)
        {
          goto LABEL_140;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_142;
        }

        if (v87 < v79)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v59 - 1 >= v56)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
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
          goto LABEL_152;
        }

        sub_188404A78();
        if (!v91)
        {
          goto LABEL_155;
        }

        v93 = &v57[16 * v92];
        v94 = *v93;
        v95 = &v57[16 * v59];
        v5 = *(v95 + 1);
        sub_1884871D8((v91 + 32 * *v93), (v91 + 32 * *v95), (v91 + 32 * v5), v126, a5);
        if (v118)
        {
          goto LABEL_128;
        }

        if (v5 < v94)
        {
          goto LABEL_130;
        }

        v96 = v8;
        v97 = *(v8 + 2);
        if (v59 > v97)
        {
          goto LABEL_131;
        }

        *v93 = v94;
        v93[1] = v5;
        if (v59 >= v97)
        {
          goto LABEL_132;
        }

        v118 = 0;
        v56 = v97 - 1;
        sub_18851423C(v95 + 16, v97 - 1 - v59, &v57[16 * v59]);
        *(v96 + 2) = v97 - 1;
        v98 = v97 > 2;
        v8 = v96;
        if (!v98)
        {
          goto LABEL_115;
        }
      }

      v66 = &v57[16 * v56];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_133;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_134;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_136;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_139;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_147;
        }

        if (v64 < v90)
        {
          v59 = v56 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

    break;
  }

  v38 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_151;
  }

  if (v38 >= v37)
  {
    v38 = a3[1];
  }

  if (v38 < v9)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v10 == v38)
  {
    goto LABEL_66;
  }

  sub_188404A78();
  v125 = v39;
  v40 = v39 + 32 * v10 - 32;
  v111 = v9;
  v112 = v41;
  v5 = v9 - v10;
LABEL_50:
  v119 = v10;
  v42 = (v125 + 32 * v10);
  v43 = *v42;
  v44 = v42[1];
  v46 = v42[2];
  v45 = v42[3];
  v113 = v5;
  v114 = v40;
  v47 = v40;
  while (1)
  {
    v48 = v47[2];
    v49 = v47[3];
    v50 = v43 == *v47 && v44 == v47[1];
    if (v50 || (v122 = v47[2], v51 = _stringCompareWithSmolCheck(_:_:expecting:)(), v48 = v122, (v51)) && (v46 == v48 ? (v52 = v45 == v49) : (v52 = 0), v52) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_64:
      v10 = v119 + 1;
      v40 = v114 + 32;
      v5 = (v113 - 1);
      if (v119 + 1 == v112)
      {
        v10 = v112;
        v8 = v115;
        v9 = v111;
        goto LABEL_66;
      }

      goto LABEL_50;
    }

    if (!v125)
    {
      break;
    }

    v43 = v47[4];
    v44 = v47[5];
    v46 = v47[6];
    v45 = v47[7];
    v53 = *(v47 + 1);
    *(v47 + 2) = *v47;
    *(v47 + 3) = v53;
    *v47 = v43;
    v47[1] = v44;
    v47[2] = v46;
    v47[3] = v45;
    v47 -= 4;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

uint64_t sub_1884871D8(char *a1, char *a2, char *a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v45 = a3;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    a5(a1, (a2 - a1) / 32, a4);
    v10 = &v5[32 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v5 >= v10 || v6 >= v45)
      {
        v21 = v7;
        goto LABEL_49;
      }

      v12 = *(v6 + 2);
      v13 = *(v6 + 3);
      v43 = v6;
      v14 = *(v5 + 2);
      v15 = *(v5 + 3);
      v16 = *v6 == *v5 && *(v6 + 1) == *(v5 + 1);
      if (v16 || (sub_1884110D8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        if (v12 == v14 && v13 == v15)
        {
LABEL_21:
          v18 = v5;
          v16 = v7 == v5;
          v5 += 32;
          if (v16)
          {
            goto LABEL_23;
          }

LABEL_22:
          v19 = *(v18 + 1);
          *v7 = *v18;
          *(v7 + 1) = v19;
          goto LABEL_23;
        }

        sub_1883FAABC();
      }

      else
      {
        sub_1884110D8();
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = v6;
      v6 += 32;
      if (v7 != v43)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 32;
    }
  }

  a5(a2, (a3 - a2) / 32, a4);
  v41 = &v5[32 * v9];
  v39 = v5;
  v48 = v7;
LABEL_25:
  v20 = 0;
  v21 = v6;
  v44 = v6 - 32;
  v40 = v6;
  while (1)
  {
    v10 = &v41[v20];
    if (&v41[v20] <= v5 || v21 <= v7)
    {
      break;
    }

    v42 = v20;
    v47 = &v41[v20];
    v24 = *(v10 - 4);
    v23 = *(v10 - 3);
    v25 = v10 - 32;
    v26 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = *(v21 - 2);
    v28 = *(v21 - 1);
    v30 = v24 == *(v21 - 4) && v23 == *(v21 - 3);
    if (v30 || (sub_188411050(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      if (v26 == v29 && v27 == v28)
      {
        goto LABEL_43;
      }

      sub_18840F69C();
    }

    else
    {
      sub_188411050();
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v6 -= 32;
      v34 = &v45[v42];
      v45 = &v45[v42 - 32];
      v41 += v42;
      v5 = v39;
      v7 = v48;
      if (v34 != v40)
      {
        v35 = *(v44 + 1);
        *v45 = *v44;
        *(v45 + 1) = v35;
      }

      goto LABEL_25;
    }

LABEL_43:
    v32 = &v45[v42];
    v7 = v48;
    if (v47 != &v45[v42])
    {
      v33 = *(v25 + 1);
      *(v32 - 2) = *v25;
      *(v32 - 1) = v33;
    }

    v20 = v42 - 32;
    v5 = v39;
    v21 = v6;
  }

LABEL_49:
  v36 = (v10 - v5) / 32;
  if (v21 != v5 || v21 >= &v5[32 * v36])
  {
    memmove(v21, v5, 32 * v36);
  }

  return 1;
}

unint64_t sub_188487514()
{
  result = qword_1EA90D8A8;
  if (!qword_1EA90D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8A8);
  }

  return result;
}

unint64_t sub_188487568()
{
  result = qword_1EA90D8B0;
  if (!qword_1EA90D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8B0);
  }

  return result;
}

unint64_t sub_1884875BC()
{
  result = qword_1EA90D8B8;
  if (!qword_1EA90D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8B8);
  }

  return result;
}

void sub_188487638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v58 = v32;
  v59 = v33;
  v60 = 1 << *(v30 + 32);
  v34 = *(v30 + 36);
  v35 = sub_188487EC4(v30);
  v37 = v36;
  v38 = v31 + 64;
  if (v39)
  {
    __break(1u);
LABEL_21:
    v57 = 1 << *(v31 + 32);
    v37 = *(v31 + 36);
LABEL_23:
    *v58 = v57;
    *(v58 + 8) = v37;
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v35 == v60;
    sub_1883FDD58();
  }

  else
  {
    while (v34 == v37)
    {
      if (v35 == v60)
      {
        goto LABEL_21;
      }

      if (v35 < 0 || v35 >= 1 << *(v31 + 32))
      {
        goto LABEL_25;
      }

      v40 = v35 >> 6;
      if ((*(v38 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_27;
      }

      v41 = (*(v31 + 48) + 16 * v35);
      v42 = v41[1];
      v43 = *(*(v31 + 56) + 8 * v35);
      a13 = *v41;
      a14 = v42;
      a15 = v43;

      v59(&a16, &a13);

      v44 = *(a16 + 16);

      if (v44)
      {
        v57 = v35;
        goto LABEL_23;
      }

      v45 = 1 << *(v31 + 32);
      if (v35 >= v45)
      {
        goto LABEL_28;
      }

      v46 = *(v38 + 8 * v40);
      if ((v46 & (1 << v35)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_30;
      }

      v47 = v46 & (-2 << (v35 & 0x3F));
      if (v47)
      {
        v45 = __clz(__rbit64(v47)) | v35 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v40 << 6;
        v49 = v40 + 1;
        v50 = (v31 + 72 + 8 * v40);
        while (v49 < (v45 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            v53 = sub_1883FF6E8();
            sub_188487EB8(v53, v54, 0);
            v45 = __clz(__rbit64(v51)) + v48;
            goto LABEL_19;
          }
        }

        v55 = sub_1883FF6E8();
        sub_188487EB8(v55, v56, 0);
      }

LABEL_19:
      v37 = *(v31 + 36);
      v35 = v45;
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
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_18848785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a4;
  v125 = a3;
  result = sub_188487D60(a2, a1);
  v7 = result;
  if (result)
  {
    v8 = sub_188487EC4(v125);
    v10 = v9;
    v12 = v11;
    v13 = sub_1883FAABC();
    sub_188487F04(v13, v14, 0, v8, v10, v15, v125);
    sub_188487EB8(v8, v10, v12 & 1);
    v16 = sub_1883FAABC();
    result = sub_188487EB8(v16, v17, 0);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_59;
  }

  v18 = *(a1 + 8);
  v19 = *(a2 + 8);
  v20 = v125;
  if (v18 != v19)
  {
    goto LABEL_54;
  }

  v21 = *a1;
  v22 = *a2;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a2 + 24);
  v26 = *(a2 + 32);
  if (v21 == v22)
  {
    if ((v24 | v26))
    {
      return 0;
    }

    v39 = v23;
    v40 = sub_1884881D0(&v141, v21, v18, 0, v125);
    v48 = sub_188414748(v40, v41, v42, v43, v44, v45, v46, v47, v112, v114, v116, v121, v123, v125, v127, v129, v132, v134, v136, v40);
    v49(v48);

    result = v25 - v39;
    if (!__OFSUB__(v25, v39))
    {
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  HIDWORD(v121) = v24;
  v117 = v23;
  result = &v141;
  if ((v7 & 1) == 0)
  {
LABEL_16:
    v50 = sub_1884881D0(result, v21, v18, 0, v20);
    v58 = sub_188414748(v50, v51, v52, v53, v54, v55, v56, v57, v112, v114, v117, v121, v123, v125, v127, v129, v132, v134, v136, v50);
    v59(v58);

    if ((v122 & 0x100000000) != 0)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v60 = *(v142 + 16);

    if (__OFSUB__(v60, v119))
    {
      goto LABEL_57;
    }

    v137 = v60 - v119;
    v130 = 1;
    v133 = v22;
    v118 = v25;
    HIDWORD(v122) = v26;
    v38 = v19;
    goto LABEL_19;
  }

  v27 = sub_1884881D0(&v141, v22, v19, 0, v125);
  v35 = sub_188414748(v27, v28, v29, v30, v31, v32, v33, v34, v112, v114, v117, v121, v123, v125, v127, v129, v132, v134, v136, v27);
  v36(v35);

  if (v26)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v37 = *(v142 + 16);

  if (__OFSUB__(v25, v37))
  {
    goto LABEL_56;
  }

  v137 = v25 - v37;
  v130 = -1;
  v133 = v21;
  v38 = v18;
LABEL_19:
  sub_1883FF650();
  v64 = sub_188488008(v61, v62, v63, v126);
  v66 = v65;
  v68 = v67;
  sub_1883FF650();
  result = sub_188487EB8(v69, v70, v71);
  if (v68)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v66 != v38)
  {
    goto LABEL_55;
  }

  v115 = v38;
  if (v64 < v133)
  {
    v72 = v126;
    v73 = v126 + 64;
    v128 = v66;
    v124 = v126 + 72;
    v74 = v66;
    while ((v64 & 0x8000000000000000) == 0 && v64 < 1 << *(v72 + 32))
    {
      v75 = v64 >> 6;
      if ((*(v73 + 8 * (v64 >> 6)) & (1 << v64)) == 0)
      {
        goto LABEL_47;
      }

      if (*(v72 + 36) != v74)
      {
        goto LABEL_48;
      }

      v140 = *(*(v72 + 48) + 16 * v64);

      v84 = sub_188414748(v76, v77, v78, v79, v80, v81, v82, v83, v113, v115, v118, v122, v124, v126, v128, v130, v133, v135, v137, v140);
      v85(v84);

      v86 = *(v142 + 16);

      v87 = v138 + v86 * v130;
      if (__OFADD__(v138, v86 * v130))
      {
        goto LABEL_49;
      }

      v88 = 1 << *(v72 + 32);
      if (v64 >= v88)
      {
        goto LABEL_50;
      }

      v89 = *(v73 + 8 * v75);
      if ((v89 & (1 << v64)) == 0)
      {
        goto LABEL_51;
      }

      v137 = v87;
      if (*(v72 + 36) != v74)
      {
        goto LABEL_52;
      }

      v90 = v89 & (-2 << (v64 & 0x3F));
      if (v90)
      {
        v64 = __clz(__rbit64(v90)) | v64 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v91 = v75 << 6;
        v92 = v75 + 1;
        v93 = (v124 + 8 * v75);
        while (v92 < (v88 + 63) >> 6)
        {
          v95 = *v93++;
          v94 = v95;
          v91 += 64;
          ++v92;
          if (v95)
          {
            sub_1883FF650();
            result = sub_188487EB8(v96, v97, v98);
            v72 = v126;
            v64 = __clz(__rbit64(v94)) + v91;
            goto LABEL_38;
          }
        }

        sub_1883FF650();
        result = sub_188487EB8(v99, v100, v101);
        v72 = v126;
        v64 = v88;
      }

LABEL_38:
      if (*(v72 + 36) != v66)
      {
        goto LABEL_53;
      }

      v74 = v128;
      if (v64 >= v133)
      {
        goto LABEL_42;
      }
    }

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
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v72 = v126;
LABEL_42:
  if ((v122 & 0x100000000) != 0)
  {
    return v137;
  }

  v102 = sub_1884881D0(&v141, v133, v115, 0, v72);
  v110 = sub_188414748(v102, v103, v104, v105, v106, v107, v108, v109, v113, v115, v118, v122, v124, v126, v128, v130, v133, v135, v137, v102);
  v111(v110);

  result = v139 + v120 * v131;
  if (__OFADD__(v139, v120 * v131))
  {
    goto LABEL_58;
  }

  return result;
}

BOOL sub_188487D60(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

uint64_t (*sub_188487DD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  sub_1883FE004(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  sub_1883F7954();
  v8();

  return sub_188488CAC;
}

uint64_t (*sub_188487E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  sub_1883FE004(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  sub_1883F7954();
  v8();

  return sub_188487EB0;
}

uint64_t sub_188487EB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

int64_t sub_188487F04(int64_t result, int a2, char a3, int64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_28;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a5 == a2)
  {
    if (result == a4)
    {
      return 0;
    }

    if (*(a7 + 36) != a5)
    {
      goto LABEL_27;
    }

    result = 0;
    v8 = 1 << *(a7 + 32);
    while (!__OFADD__(result++, 1))
    {
      if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
      {
        goto LABEL_23;
      }

      v10 = v7 >> 6;
      v11 = *(a7 + 64 + 8 * (v7 >> 6));
      if (((v11 >> v7) & 1) == 0)
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v7 & 0x3F));
      if (v12)
      {
        v7 = __clz(__rbit64(v12)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a7 + 72 + 8 * v10);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            v7 = __clz(__rbit64(v16)) + v13;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_188488008(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_188488088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1883F7EEC();
  v20 = v19;
  v22 = v21;
  v23 = v18;
  if (v24)
  {
    sub_1883F7BC0();
    if (__CocoaDictionary.Index.age.getter() == *(v20 + 36))
    {
      sub_1883F7BC0();
      __CocoaDictionary.Index.key.getter();
      sub_1883F4C5C(0, &qword_1EA90C180, off_1E70BA0B8);
      swift_dynamicCast();
      sub_188486518();
      v26 = v25;

      if (v26)
      {
        sub_1883F7BC0();
        __CocoaDictionary.Index.dictionary.getter();
        sub_1883F7BC0();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
LABEL_10:
        sub_1883FAEB8();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v18 < 0 || (sub_1883F7AD8(), -v27 <= v23))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(v20 + 64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v20 + 36) == v22)
  {
    _HashTable.occupiedBucket(after:)();
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

void *sub_1884881D0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    *result = *(*(a5 + 56) + 8 * a2);

    return sub_1883F7EE0();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_188488260()
{
  result = qword_1EA90DB50;
  if (!qword_1EA90DB50)
  {
    sub_18844E798(&qword_1EA90D8E0, &qword_1886F8A18);
    sub_188488470(&qword_1EA90D8E8, &unk_1EA90DB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DB50);
  }

  return result;
}

unint64_t sub_188488310()
{
  result = qword_1EA90D8F0;
  if (!qword_1EA90D8F0)
  {
    sub_18844E798(&unk_1EA90DB20, &qword_1886F8A28);
    sub_188488470(&unk_1EA90DB30, &unk_1EA90D8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8F0);
  }

  return result;
}

unint64_t sub_1884883C0()
{
  result = qword_1EA90DB00;
  if (!qword_1EA90DB00)
  {
    sub_18844E798(&qword_1EA90D900, &qword_1886F8A38);
    sub_188488470(&qword_1EA90D908, &unk_1EA90DB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DB00);
  }

  return result;
}

uint64_t sub_188488470(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1884056BC(0, a2);
    sub_18844E798(v4, v5);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1884884B0(uint64_t a1)
{
  result = sub_1884884D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1884884D8()
{
  result = qword_1EA90D910;
  if (!qword_1EA90D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D910);
  }

  return result;
}

unint64_t sub_18848852C()
{
  result = qword_1EA90D918;
  if (!qword_1EA90D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D918);
  }

  return result;
}

unint64_t sub_188488580(uint64_t a1)
{
  result = sub_1884885A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1884885A8()
{
  result = qword_1EA90D920;
  if (!qword_1EA90D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D920);
  }

  return result;
}

unint64_t sub_1884885FC()
{
  result = qword_1EA90D928;
  if (!qword_1EA90D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D928);
  }

  return result;
}

unint64_t sub_188488650(uint64_t a1)
{
  result = sub_188488678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188488678()
{
  result = qword_1EA90D930;
  if (!qword_1EA90D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D930);
  }

  return result;
}

unint64_t sub_1884886CC()
{
  result = qword_1EA90D938;
  if (!qword_1EA90D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D938);
  }

  return result;
}

unint64_t sub_18848875C()
{
  result = qword_1EA90D940[0];
  if (!qword_1EA90D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90D940);
  }

  return result;
}

__n128 sub_1884887EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1884887F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188488838(uint64_t result, int a2, int a3)
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

uint64_t sub_188488878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1884888B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1884888FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188488910(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188488950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_188488A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_188488A64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_188488AA8()
{
  result = qword_1EA90DAE0;
  if (!qword_1EA90DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DAE0);
  }

  return result;
}

unint64_t sub_188488AFC()
{
  result = qword_1EA90DA50;
  if (!qword_1EA90DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DA50);
  }

  return result;
}

unint64_t sub_188488B50()
{
  result = qword_1EA90DA58;
  if (!qword_1EA90DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DA58);
  }

  return result;
}

uint64_t sub_188488BA4()
{

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_188488C14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1883FEE54();
  result = v3(v2);
  *a1 = result;
  a1[1] = v5;
  return result;
}

double sub_188488D1C(uint64_t a1, uint64_t a2)
{

  return result;
}

uint64_t sub_188488D70()
{
  sub_1883FE2C8();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  MEMORY[0x18CFD5140](2629690, 0xE300000000000000);

  MEMORY[0x18CFD5140](v3, v2);

  MEMORY[0x18CFD5140](2112032, 0xE300000000000000);

  MEMORY[0x18CFD5140](v1, v0);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  return 60;
}

double sub_188488E50@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v3 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v4 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;

  return result;
}

char *sub_188488EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR___CKRequiredFeatureSet__wrapped];
  *v4 = *a1;
  *(v4 + 2) = v2;

  return v3;
}

void sub_188488F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1884056BC(a1, a2);
  v9 = MEMORY[0x18CFD5010](v8);
  v10 = MEMORY[0x18CFD5010](1701667182, 0xE400000000000000);
  [a1 encodeObject:v9 forKey:v10];

  v11 = MEMORY[0x18CFD5010](a4, a5);
  v12 = MEMORY[0x18CFD5010](0x65756C6176, 0xE500000000000000);
  [a1 encodeObject:v11 forKey:v12];
}

id sub_1884890A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = MEMORY[0x18CFD5010](v3);

  return v4;
}

uint64_t sub_18848911C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90DD10, &qword_1886F8770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_188489340(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = &v7[*a2];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  v11 = v7;
  sub_188489F58(v9, v10);

  return v11;
}

uint64_t sub_1884893F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return a5(v6, v8, v9, v10);
}

uint64_t sub_1884894CC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v6 = sub_18848911C(a1, v89);
  if (!v90)
  {
    sub_18840E89C(v89, &qword_1EA90DD10);
    goto LABEL_20;
  }

  v7 = a2(v6);
  if ((sub_188404218(v7) & 1) == 0)
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  v8 = *a3;
  v9 = (v3 + *a3);
  v10 = v9[1];
  v12 = v9[2];
  v11 = v9[3];
  v13 = &v88[v8];
  v15 = *v13;
  v14 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  if (!v10)
  {
    sub_1883FF114();
    sub_188489F14(v35, v36, v37, v38);
    v39 = sub_1883F91D0();
    sub_188489F14(v39, v40, v41, v42);

    if (!v14)
    {
      sub_1883FF114();
      sub_188489F58(v43, v44);
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_19;
  }

  if (!v14)
  {
    v45 = sub_1883F9C38();
    sub_188489F14(v45, v46, v47, v48);
    sub_188489F14(v15, 0, v17, v16);
    v49 = sub_1883F9C38();
    sub_188489F14(v49, v50, v51, v52);

LABEL_19:
    v53 = sub_1883F9C38();
    sub_188489F58(v53, v54);
    v55 = sub_1883F91D0();
    sub_188489F58(v55, v56);
    goto LABEL_20;
  }

  v18 = *v9 == v15 && v10 == v14;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v12 == v17 && v11 == v16)
    {
      v58 = sub_1883F9C38();
      sub_188489F14(v58, v59, v60, v61);
      sub_1883FD9C4();
      sub_1883FF114();
      sub_188489F14(v62, v63, v64, v65);
      v66 = sub_1883F9C38();
      sub_188489F14(v66, v67, v68, v69);

      sub_1883FD9C4();
      sub_1883FF114();
      sub_188489F58(v70, v71);
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = sub_1883F9C38();
      sub_188489F14(v21, v22, v23, v24);
      v25 = sub_1883F91D0();
      sub_188489F14(v25, v26, v27, v28);
      v29 = sub_1883F9C38();
      sub_188489F14(v29, v30, v31, v32);

      v33 = sub_1883F91D0();
      sub_188489F58(v33, v34);
    }
  }

  else
  {
    v72 = sub_1883F9C38();
    sub_188489F14(v72, v73, v74, v75);
    v76 = sub_1883F91D0();
    sub_188489F14(v76, v77, v78, v79);
    v80 = sub_1883F9C38();
    sub_188489F14(v80, v81, v82, v83);

    v84 = sub_1883F91D0();
    sub_188489F58(v84, v85);
    v20 = 0;
  }

  v86 = sub_1883F9C38();
  sub_188489F58(v86, v87);
  return v20 & 1;
}

uint64_t sub_1884897B0()
{
  sub_188404F8C();
  if (*(v2 + 8))
  {
    v3 = *v1;
    v19.receiver = v0;
    v19.super_class = v3;

    v4 = objc_msgSendSuper2(&v19, sel_description);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v21 = v5;
    v22 = v7;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    sub_18840AD44();
    v8 = sub_188488D70();
    v10 = v9;
    v11 = sub_18840AD44();
    sub_188489F58(v11, v12);
    MEMORY[0x18CFD5140](v8, v10);
  }

  else
  {
    v13 = *v1;
    v20.receiver = v0;
    v20.super_class = v13;
    v14 = objc_msgSendSuper2(&v20, sel_description);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v21 = v15;
    v22 = v17;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  return v21;
}

void *sub_188489904(void *result, void *a2)
{
  v3 = (v2 + *a2);
  v4 = v3[1];
  if (v4)
  {
    v5 = result;
    v7 = v3[2];
    v6 = v3[3];
    v8 = *v3;

    sub_188488F30(v5, v8, v4, v7, v6);
    return sub_188489F58(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_188489A08(void *a1, void *a2, objc_class **a3)
{
  v5 = v3;
  v7 = &v5[*a2];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = *a3;
  v26.receiver = v5;
  v26.super_class = v8;
  v9 = objc_msgSendSuper2(&v26, sel_init);
  sub_1883F4C5C(0, &qword_1EA90DAB0, 0x1E696AEC0);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    v12 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_188440388();
      v15 = v14;
      v17 = v16;

      sub_188440388();
      v19 = v18;
      v21 = v20;

      goto LABEL_6;
    }
  }

  v17 = 0;
  v15 = 0;
  v19 = 0;
  v21 = 0;
LABEL_6:
  v22 = &v9[*a2];
  v23 = *v22;
  v24 = v22[1];
  *v22 = v15;
  v22[1] = v17;
  v22[2] = v19;
  v22[3] = v21;
  sub_188489F58(v23, v24);
  if (!v22[1])
  {

    return 0;
  }

  return v9;
}

id sub_188489BF4()
{
  sub_188404F8C();
  *v1 = 0u;
  v1[1] = 0u;
  v3 = *v2;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id _sSo13CKZoneFeatureC8CloudKitE4name5valueABSS_SStcfC_0()
{
  sub_1883FE2C8();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x18CFD5010](v3, v2);

  MEMORY[0x18CFD5010](v1, v0);
  sub_1884052A0();
  v6 = [v4 initWithName:v5 value:v1];

  return v6;
}

char *sub_188489D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1883FE028(a1, a2, a3, a4, a5, a6, a7, a8, a1);
  sub_1883FE028(v10, v11, v12, v13, v14, v15, v16, v17, a3);
  sub_188440388();
  v19 = v18;
  v21 = v20;

  sub_188440388();
  v23 = v22;
  v25 = v24;

  swift_getObjectType();
  v28[0] = v19;
  v28[1] = v21;
  v28[2] = v23;
  v28[3] = v25;
  v26 = sub_188489340(v28, a5);
  swift_deallocPartialClassInstance();
  return v26;
}

void sub_188489E50()
{
  sub_188404F8C();
  if (*(v0 + 8))
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_188489EB4()
{
  sub_188404F8C();
  if (*(v0 + 8))
  {
  }

  else
  {
    __break(1u);
  }
}

double sub_188489F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_188489F58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18848A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_188404F8C();
  v7 = sub_1884056BC(v5, v6);
  v9 = sub_18844E6FC(v7, v8);
  a4(v9, v10, v11, v12);
  return Optional<A>.hashValue.getter();
}

id sub_18848A174()
{
  v1 = (v0 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v2 = MEMORY[0x1E69E7CC8];
  *v1 = MEMORY[0x1E69E7CC8];
  v1[1] = v2;
  v1[2] = v2;
  v4.super_class = CKRequiredFeatureSet;
  return objc_msgSendSuper2(&v4, sel_init);
}

void __swiftcall CKRequiredFeatureSet.init(zoneFeatures:recordFeatures:fieldFeatures:)(CKRequiredFeatureSet *__return_ptr retstr, Swift::OpaquePointer zoneFeatures, Swift::OpaquePointer recordFeatures, Swift::OpaquePointer fieldFeatures)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CKZoneFeature(v5);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for CKRecordFeature(v7);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for CKFieldFeature(v9);
  sub_1883FC750();
  sub_1884052A0();
  [v5 initWithZoneFeatures:isa recordFeatures:v8 fieldFeatures:recordFeatures._rawValue];
}

Swift::Void __swiftcall CKRequiredFeatureSet.encode(with:)(NSCoder with)
{
  v3 = [v1 zoneFeatures];
  v4 = NSStringFromSelector(sel_zoneFeatures);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  sub_188405D58();

  v6 = [v1 recordFeatures];
  v7 = NSStringFromSelector(sel_recordFeatures);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x18CFD5010](v8);
  }

  sub_188405D58();

  v9 = [v1 fieldFeatures];
  v10 = NSStringFromSelector(sel_fieldFeatures);
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x18CFD5010](v11);

    v10 = v12;
  }

  v13 = v10;
  [(objc_class *)with.super.isa encodeObject:v9 forKey:?];
}

id _sSo13CKZoneFeatureC8CloudKitE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id CKRequiredFeatureSet.init(coder:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v4 = MEMORY[0x1E69E7CC8];
  *v3 = MEMORY[0x1E69E7CC8];
  v3[1] = v4;
  v3[2] = v4;
  v19.super_class = CKRequiredFeatureSet;
  v5 = objc_msgSendSuper2(&v19, sel_init);
  sub_18844E6FC(&unk_1EA90DB68, &qword_1886F9158);
  v6 = NSStringFromSelector(sel_zoneFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = NSStringFromSelector(sel_recordFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883FD9C4();
  v9 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v9)
  {

LABEL_7:
    return 0;
  }

  v10 = NSStringFromSelector(sel_fieldFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = [v7 features];
  type metadata accessor for CKZoneFeature(v12);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v9 features];
  type metadata accessor for CKRecordFeature(v14);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v11 features];
  type metadata accessor for CKFieldFeature(v16);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F2D94(v13, v15, v17);

  return v5;
}

char *CKRequiredFeatureSet.copy(with:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = type metadata accessor for CKRequiredFeatureSet(a1);
  v5 = v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped;
  v6 = *(v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v7 = *(v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v8 = *(v5 + 16);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;

  result = sub_188488EA8(v10);
  a2[3] = v4;
  *a2 = result;
  return result;
}

uint64_t CKRequiredFeatureSet.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v16);
  if (!v17)
  {
    sub_18840E89C(v16, &qword_1EA90DD10);
    goto LABEL_8;
  }

  v3 = type metadata accessor for CKRequiredFeatureSet(v2);
  if ((sub_188404218(v3) & 1) == 0)
  {
LABEL_8:
    v13 = 0;
    return v13 & 1;
  }

  v4 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v5 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v6 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  v7 = *&v15[OBJC_IVAR___CKRequiredFeatureSet__wrapped];
  v8 = *&v15[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8];
  v9 = *&v15[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16];

  sub_1884831BC(v4, v7);
  if ((v10 & 1) == 0 || (sub_1884831BC(v5, v8), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_1884831BC(v6, v9);
  v13 = v12;

  return v13 & 1;
}

uint64_t sub_18848B338(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_18840E89C(v10, &qword_1EA90DD10);
  return v8 & 1;
}

id sub_18848B494(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t CKRequiredFeatureSet.description.getter()
{
  v8.super_class = CKRequiredFeatureSet;
  v0 = objc_msgSendSuper2(&v8, sel_description);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v9 = v1;
  v10 = v3;
  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  CKRequiredFeatureSet.description.getter();
  MEMORY[0x18CFD5140](v4, v5, v6);

  return v9;
}

uint64_t sub_18848B5EC(void *a1)
{
  v1 = [a1 subscriptionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CKQuery __swiftcall CKQuery.init(recordType:predicate:)(Swift::String recordType, NSPredicate *predicate)
{
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  v7 = [v5 initWithRecordType:v6 predicate:predicate];

  v11 = v7;
  result._recordType = v10;
  result._sortDescriptors = v9;
  result._predicate = v8;
  result.super.isa = v11;
  return result;
}

uint64_t CKQuery.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void __swiftcall CKQuerySubscription.init(recordType:predicate:subscriptionID:options:)(CKQuerySubscription *__return_ptr retstr, Swift::String recordType, NSPredicate *predicate, Swift::String subscriptionID, CKQuerySubscriptionOptions options)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v9 = recordType._object;
  v10 = recordType._countAndFlagsBits;
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = MEMORY[0x18CFD5010](v10, v9);

  v13 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v11 initWithRecordType:v12 predicate:predicate subscriptionID:v13 options:options];
}

uint64_t CKQuerySubscription.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CKRecordKeyValueIterator.next()(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1 + 32;
  while (1)
  {
    v5 = v1[2];
    if (v5 >= v3)
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v2 + 16))
    {
      goto LABEL_11;
    }

    v6 = (v4 + 16 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v1[1];
    swift_bridgeObjectRetain_n();
    v10 = MEMORY[0x18CFD5010](v8, v7);

    v11 = [v9 objectForKey_];

    v1[2] = v5 + 1;
    if (v11)
    {
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      swift_unknownObjectRelease();
      *a1 = v8;
      *(a1 + 8) = v7;
      sub_18843E080(&v13, a1 + 16);
      return;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void CKRecord.makeIterator()(uint64_t *a1@<X8>)
{
  a1[1] = v1;
  v3 = [v1 allKeys];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
  a1[2] = 0;
}

void sub_18848B9E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  CKRecord.makeIterator()(a1);
}

uint64_t sub_18848BAEC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C548 = result;
  unk_1EA90C550 = v1;
  return result;
}

uint64_t sub_18848BB3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C0F0 = result;
  *algn_1EA90C0F8 = v1;
  return result;
}

uint64_t sub_18848BBDC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBD8 = result;
  unk_1EA90DBE0 = v1;
  return result;
}

uint64_t sub_18848BC2C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBE8 = result;
  unk_1EA90DBF0 = v1;
  return result;
}

void __swiftcall CKRecord.init(recordType:zoneID:)(CKRecord *__return_ptr retstr, Swift::String recordType, CKRecordZoneID *zoneID)
{
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v10 = zoneID;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  v18.super.isa = CKRecordID.init(recordName:zoneID:)(v14, v10);
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  CKRecord.init(recordType:recordID:)(v16, v15, v18);
}

void __swiftcall CKRecord.init(recordType:recordID:)(CKRecord *__return_ptr retstr, Swift::String recordType, CKRecordID recordID)
{
  isa = recordID.super.isa;
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v6 initWithRecordType:v7 recordID:isa];
}

uint64_t CKRecord.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CKRecord.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);
  [v3 setObject:a1 forKey:v5];
}

uint64_t sub_18848BF08@<X0>(uint64_t *a1@<X8>)
{
  result = CKRecord.object(forKey:)();
  *a1 = result;
  return result;
}

void sub_18848BF38(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  swift_unknownObjectRetain();

  CKRecord.subscript.setter(v5, v3, v4);
}

void CKRecord.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);

  [v3 setObject:a1 forKey:v5];
  swift_unknownObjectRelease();
}

void (*CKRecord.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = MEMORY[0x18CFD5010](a2, a3);
  v6 = [v3 objectForKey_];

  *a1 = v6;
  return sub_18848C08C;
}

void sub_18848C08C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    swift_unknownObjectRetain();

    CKRecord.subscript.setter(v3, v4, v2);

    swift_unknownObjectRelease();
  }

  else
  {

    CKRecord.subscript.setter(v3, v4, v2);
  }
}

uint64_t sub_18848C124(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_18848C170()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBF8 = result;
  unk_1EA90DC00 = v1;
  return result;
}

uint64_t sub_18848C1C0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DC08 = result;
  unk_1EA90DC10 = v1;
  return result;
}

uint64_t sub_18848C210()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DC18 = result;
  unk_1EA90DC20 = v1;
  return result;
}

uint64_t sub_18848C260(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

unint64_t sub_18848C2B8()
{
  result = qword_1EA90DC28;
  if (!qword_1EA90DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC28);
  }

  return result;
}

_BYTE *sub_18848C32C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

CKRecordID __swiftcall CKRecordID.init(recordName:zoneID:)(Swift::String recordName, CKRecordZoneID *zoneID)
{
  object = recordName._object;
  countAndFlagsBits = recordName._countAndFlagsBits;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  v7 = [v5 initWithRecordName:v6 zoneID:zoneID];

  v10 = v7;
  result._zoneID = v9;
  result._recordName = v8;
  result.super.isa = v10;
  return result;
}

uint64_t sub_18848C460(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&unk_1EFA25960, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18848C4D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18848C460(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848C508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18844A030(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18848C53C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_18848C460(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848C564(uint64_t a1)
{
  v2 = sub_18848C7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18848C5A0(uint64_t a1)
{
  v2 = sub_18848C7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CKRecordID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90DC30, &qword_1886F9278);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_188400B68(a1, a1[3]);
  sub_18848C7E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = [v3 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v7 + 8))(v10, v5);
  }

  else
  {

    v13 = [v3 zoneID];
    v15 = v13;
    v14[15] = 1;
    sub_18848C83C();
    sub_18848CA80(&qword_1EA90C190, &protocol conformance descriptor for CKRecordZoneID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v7 + 8))(v10, v5);
  }
}

unint64_t sub_18848C7E8()
{
  result = qword_1EA90C1D8;
  if (!qword_1EA90C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1D8);
  }

  return result;
}

unint64_t sub_18848C83C()
{
  result = qword_1ED4B5CC8;
  if (!qword_1ED4B5CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4B5CC8);
  }

  return result;
}

void *CKRecordID.init(from:)(void *a1)
{
  sub_18844E6FC(&qword_1EA90DC38, &unk_1886F9280);
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_188400B68(a1, a1[3]);
  sub_18848C7E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v5 = KeyedDecodingContainer.decode(_:forKey:)();
    v7 = v6;
    sub_18848C83C();
    sub_18848CA80(&qword_1EA90C188, &protocol conformance descriptor for CKRecordZoneID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    v4 = CKRecordID.init(recordName:zoneID:)(v9, v12);
    v10 = sub_1883F7254();
    v11(v10);
  }

  sub_1883FE944(a1);
  return v4;
}

uint64_t sub_18848CA80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18848C83C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_18848CAC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CKRecordID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18848CBF4()
{
  result = qword_1EA90DC40;
  if (!qword_1EA90DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC40);
  }

  return result;
}

unint64_t sub_18848CC4C()
{
  result = qword_1EA90C1C8;
  if (!qword_1EA90C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1C8);
  }

  return result;
}

unint64_t sub_18848CCA4()
{
  result = qword_1EA90C1D0;
  if (!qword_1EA90C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1D0);
  }

  return result;
}

uint64_t sub_18848CD04()
{
  sub_18848EEC8();
  v2 = v1;

  return v2;
}

uint64_t sub_18848CD34()
{
  sub_18848F114();
  v2 = v1;

  return v2;
}

uint64_t CKRecordValue.CKToSwiftNativeValue()()
{
  ObjectType = swift_getObjectType();
  if (sub_1884049C0(v2, ObjectType, &protocol descriptor for CKRecordValueConvertible))
  {
    v5 = v4;
    v6 = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v7(v6, v5);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
    return swift_dynamicCast();
  }
}

uint64_t sub_18848CE70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void CKRecordKeyValueSetting.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883F8AF0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for Optional();
  sub_1883F70DC();
  v34 = v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &a9 - v37;
  (*(v34 + 16))(&a9 - v37, v31, v32, v36);
  sub_1884054F4(v38);
  if (v39)
  {
    (*(v34 + 8))(v38, v32);
    v40 = 0;
  }

  else
  {
    v40 = CKRecordValueProtocol.CKToObjCRecordValue()(v25);
    sub_1883F7930();
    (*(v41 + 8))(v38, v25);
  }

  v42 = MEMORY[0x18CFD5010](v29, v27);

  [v23 setObject:v40 forKeyedSubscript:v42];
  swift_unknownObjectRelease();

  (*(v34 + 8))(v31, v32);
  sub_1883F8178();
}

uint64_t (*CKRecordKeyValueSetting.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v13 = sub_188470D2C(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = type metadata accessor for Optional();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = sub_188470D2C(v16);
  v13[9] = sub_188470D2C(v16);
  CKRecordKeyValueSetting.subscript.getter();
  return sub_18848D298;
}

double CKRecordKeyValueSetting.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x18CFD5010]();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    swift_getObjectType();
    CKRecordValue.CKToSwiftNativeValue()();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18848D444(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  sub_18847E0A0(a1, v6, &qword_1EA90DC78, &qword_1886F9470);

  return CKRecordKeyValueSetting.subscript.setter(v6, v4, v3);
}

void (*CKRecordKeyValueSetting.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = sub_188470D2C(0x70uLL);
  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  CKRecordKeyValueSetting.subscript.getter(v9);
  return sub_18848D530;
}

void sub_18848D530(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  if (a2)
  {
    sub_18847E0A0(*a1, v2 + 40, &qword_1EA90DC78, &qword_1886F9470);

    CKRecordKeyValueSetting.subscript.setter(v2 + 40, v4, v3);
    sub_18840E840(v2, &qword_1EA90DC78, &qword_1886F9470);
  }

  else
  {

    CKRecordKeyValueSetting.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

double sub_18848D5F0@<D0>(__int128 *a3@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  if (swift_dynamicCast())
  {
    if (*(&v11 + 1) >> 60 != 15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = xmmword_1886F9430;
  }

  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1ED4B5C70);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    *(v7 + 4) = v9;
    *v8 = v9;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_1883EA000, v5, v6, "Error converting record value %@ to requested type", v7, 0xCu);
    sub_18840E840(v8, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v8, -1, -1);
    MEMORY[0x18CFD7E80](v7, -1, -1);
  }

LABEL_10:
  result = *&v11;
  *a3 = v11;
  return result;
}

void sub_18848D7C8(uint64_t a3@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  v4 = type metadata accessor for Date();
  v5 = swift_dynamicCast();
  sub_1883F90F4(a3, v5 ^ 1u, 1, v4);
  if (sub_1883F971C(a3, 1, v4) == 1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1ED4B5C70);
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClassUnconditional();
      *(v9 + 4) = v11;
      *v10 = v11;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1883EA000, v7, v8, "Error converting record value %@ to requested type", v9, 0xCu);
      sub_18840E840(v10, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v10, -1, -1);
      MEMORY[0x18CFD7E80](v9, -1, -1);
    }
  }
}

uint64_t sub_18848D9AC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  if (swift_dynamicCast())
  {
    if (v10)
    {
      return v9;
    }
  }

  else
  {
    v9 = 0;
  }

  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1883FDE5C(v2, qword_1ED4B5C70);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClassUnconditional();
    *(v5 + 4) = v7;
    *v6 = v7;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_1883EA000, v3, v4, "Error converting record value %@ to requested type", v5, 0xCu);
    sub_18840E840(v6, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v6, -1, -1);
    MEMORY[0x18CFD7E80](v5, -1, -1);
  }

  return v9;
}

void sub_18848DB6C(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  v5 = swift_dynamicCast();
  sub_1883F90F4(a3, v5 ^ 1u, 1, a2);
  if (sub_1883F971C(a3, 1, a2) == 1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1883FDE5C(v6, qword_1ED4B5C70);
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClassUnconditional();
      *(v9 + 4) = v11;
      *v10 = v11;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1883EA000, v7, v8, "Error converting record value %@ to requested type", v9, 0xCu);
      sub_18840E840(v10, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v10, -1, -1);
      MEMORY[0x18CFD7E80](v9, -1, -1);
    }
  }
}

uint64_t sub_18848DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18848D9AC(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_18848DD88(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithBool_];
}

uint64_t sub_18848DDD0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 BOOLValue];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_18848DE28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18848DDD0(a1);
  *a2 = result;
  return result;
}

id sub_18848DE50(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithDouble_];
}

double sub_18848DE98(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    [v1 doubleValue];
  }

  return result;
}

void sub_18848DEFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18848DE98(a1);
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

id sub_18848DF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_integerValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848DF64(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInteger_];
}

id sub_18848DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_unsignedIntegerValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848DFEC(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithChar_];
}

uint64_t sub_18848E034(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    LOBYTE(v1) = [v1 charValue];
  }

  return v1 | ((v2 == 0) << 8);
}

uint64_t sub_18848E0A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18848E034(a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

id sub_18848E0D4(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedChar_];
}

uint64_t sub_18848E11C(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    LODWORD(v1) = [v1 unsignedCharValue];
  }

  return v1 | ((v2 == 0) << 8);
}

uint64_t sub_18848E188@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18848E11C(a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

id sub_18848E1B8(__int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithShort_];
}

uint64_t sub_18848E200(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 shortValue];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 16);
}

uint64_t sub_18848E278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E200(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

id sub_18848E2A8(unsigned __int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedShort_];
}

uint64_t sub_18848E2F0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    LODWORD(v1) = [v1 unsignedShortValue];
  }

  return v1 | ((v2 == 0) << 16);
}

uint64_t sub_18848E35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E2F0(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

id sub_18848E38C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInt_];
}

unint64_t sub_18848E3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E45C(a1, &selRef_intValue);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_18848E414(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInt_];
}

unint64_t sub_18848E45C(uint64_t a1, SEL *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 *a2];
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

unint64_t sub_18848E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E45C(a1, &selRef_unsignedIntValue);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_18848E514(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithLongLong_];
}

id sub_18848E564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_longLongValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848E59C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

id sub_18848E5E4(uint64_t a1, SEL *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result *a2];
  }

  return result;
}

id sub_18848E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_unsignedLongLongValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848E67C(float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = a1;

  return [v2 initWithFloat_];
}

unint64_t sub_18848E6C4(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

unint64_t sub_18848E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E6C4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_18848E7B4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Date();
  a1[4] = &protocol witness table for Date;
  sub_188403664(a1);
  return static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_18848E800@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = v4;
  result = a1(v8);
  a4[3] = a2;
  a4[4] = a3;
  *a4 = result;
  a4[1] = v11;
  return result;
}

id sub_18848E884@<X0>(void *a1@<X8>)
{
  if (CFNumberIsFloatType(v1))
  {
    result = [v1 doubleValue];
    v5 = &protocol witness table for Double;
    v6 = MEMORY[0x1E69E63B0];
  }

  else
  {
    result = [v1 longLongValue];
    v4 = result;
    v5 = &protocol witness table for Int64;
    v6 = MEMORY[0x1E69E7360];
  }

  a1[3] = v6;
  a1[4] = v5;
  *a1 = v4;
  return result;
}

void sub_18848E904()
{
  sub_1883F8AF0();
  v14 = v0;
  v13 = type metadata accessor for NSFastEnumerationIterator();
  sub_1883F70DC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSArray.makeIterator()();
  for (i = MEMORY[0x1E69E7CC0]; ; sub_18843E080(v15, i + 40 * v7 + 32))
  {
    NSFastEnumerationIterator.next()();
    if (!v18)
    {
      break;
    }

    sub_188419138(&v17, v16);
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    swift_dynamicCast();
    swift_getObjectType();
    CKRecordValue.CKToSwiftNativeValue()();
    sub_18848CE70(v16, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_188476CB0();
      i = v8;
    }

    v7 = *(i + 16);
    if (v7 >= *(i + 24) >> 1)
    {
      sub_188476CB0();
      i = v9;
    }

    swift_unknownObjectRelease();
    sub_1883FE944(v16);
    *(i + 16) = v7 + 1;
  }

  (*(v2 + 8))(v5, v13);
  sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = sub_1883F4C5C(0, &qword_1EA90DC98, 0x1E695DEC8);
  v12 = v14;
  v14[3] = v11;
  v12[4] = &protocol witness table for NSArray;
  *v12 = isa;
  sub_1883F8178();
}

uint64_t CKRecordValueStoreIterator.init(_:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = [swift_unknownObjectRetain() allKeys];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = swift_unknownObjectRelease();
  a3[1] = v5;
  a3[2] = 0;
  return result;
}

void CKRecordValueStoreIterator.next()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4 >= *(v3 + 16))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = v1;
      v6 = v3 + 16 * v4;
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *v1;

      v10 = MEMORY[0x18CFD5010](v7, v8);
      v11 = [v9 objectForKey_];

      if (v11)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        CKRecordValue.CKToSwiftNativeValue()();
        swift_unknownObjectRelease_n();
        *(v5 + 16) = v4 + 1;
        *a1 = v7;
        *(a1 + 8) = v8;
        sub_18843E080(&v12, a1 + 16);
        return;
      }
    }

    __break(1u);
  }
}

void CKRecordValueStore.makeIterator()(void *a1@<X8>)
{
  *a1 = v1;
  v3 = [v1 allKeys];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1[1] = v4;
  a1[2] = 0;
}

void sub_18848ED04(void *a1@<X8>)
{
  v2 = *v1;
  CKRecordValueStore.makeIterator()(a1);
}

uint64_t sub_18848EE10(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18848EE64()
{
  result = qword_1EA90DC80;
  if (!qword_1EA90DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC80);
  }

  return result;
}

void sub_18848EEC8()
{
  CKRecordValueStore.makeIterator()(v35);
  v0 = 0;
  v1 = v35[1];
  v2 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i += 56)
  {
    v4 = v36;
    if (v36 >= *(v1 + 16))
    {
      break;
    }

    if (v36 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = (v1 + 32 + 16 * v36);
    v6 = *v5;
    v7 = v5[1];
    v8 = v35[0];

    v9 = MEMORY[0x18CFD5010](v6, v7);
    v10 = [v8 objectForKey_];

    if (!v10)
    {
      goto LABEL_29;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    CKRecordValue.CKToSwiftNativeValue()();
    swift_unknownObjectRelease_n();
    v36 = v4 + 1;
    *&v28 = v6;
    *(&v28 + 1) = v7;
    sub_18843E080(&v27, v29);
    v31 = v28;
    v32 = v29[0];
    v33 = v29[1];
    v34 = v30;
    if (!v0)
    {
      v11 = v2[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_27;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_18844E6FC(&qword_1EA90DC90, &qword_1886F9A08);
      v14 = swift_allocObject();
      v15 = (j__malloc_size(v14) - 32) / 56;
      v14[2] = v13;
      v14[3] = 2 * v15;
      v16 = (v14 + 4);
      v17 = v2[3];
      v18 = v17 >> 1;
      if (v2[2])
      {
        if (v14 != v2 || v16 >= &v2[7 * v18 + 4])
        {
          memmove(v14 + 4, v2 + 4, 56 * v18);
        }

        v2[2] = 0;
      }

      i = v16 + 56 * v18;
      v0 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - (v17 >> 1);

      v2 = v14;
    }

    v20 = __OFSUB__(v0--, 1);
    if (v20)
    {
      goto LABEL_26;
    }

    v21 = v31;
    v22 = v32;
    v23 = v33;
    *(i + 48) = v34;
    *(i + 16) = v22;
    *(i + 32) = v23;
    *i = v21;
  }

  swift_unknownObjectRelease();
  v24 = v2[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v20 = __OFSUB__(v25, v0);
  v26 = v25 - v0;
  if (!v20)
  {
    v2[2] = v26;
    return;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_18848F114()
{
  CKRecord.makeIterator()(v35);
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v0 = v35[0];
  v1 = v35[1];
  v2 = v35[0] + 40;
  v27 = v35[0] + 40;
  v28 = MEMORY[0x1E69E7CC0] + 32;
LABEL_2:
  v3 = *(v0 + 16);
  v4 = v36;
  v5 = (v2 + 16 * v36);
  for (i = v36; i < v3; ++i)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (i >= *(v0 + 16))
    {
      goto LABEL_30;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x18CFD5010](v8, v7);

    v10 = [v1 objectForKey_];

    if (v10)
    {
      v36 = i + 1;
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      swift_unknownObjectRelease();
      *&v31 = v8;
      *(&v31 + 1) = v7;
      v11 = v29;
      if (v29)
      {
        v12 = v30;
        v2 = v27;
        v13 = v28;
      }

      else
      {
        v14 = v30[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        sub_18844E6FC(&qword_1EA90DC90, &qword_1886F9A08);
        v12 = swift_allocObject();
        v17 = (j__malloc_size(v12) - 32) / 56;
        v12[2] = v16;
        v12[3] = 2 * v17;
        v18 = (v12 + 4);
        v19 = v30[3];
        v20 = v19 >> 1;
        if (v30[2])
        {
          if (v12 != v30 || v18 >= &v30[7 * v20 + 4])
          {
            memmove(v12 + 4, v30 + 4, 56 * v20);
          }

          v30[2] = 0;
        }

        v13 = v18 + 56 * v20;
        v11 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v2 = v27;
      }

      v22 = __OFSUB__(v11, 1);
      v23 = v11 - 1;
      if (!v22)
      {
        v29 = v23;
        v30 = v12;
        *(v13 + 48) = v34;
        *(v13 + 16) = v32;
        *(v13 + 32) = v33;
        *v13 = v31;
        v28 = v13 + 56;
        goto LABEL_2;
      }

      goto LABEL_31;
    }

    v5 += 2;
  }

  v24 = v30[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v22 = __OFSUB__(v25, v29);
  v26 = v25 - v29;
  if (!v22)
  {
    v30[2] = v26;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_18848F3D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v12 = 0;
  v42 = 0;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v41 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v11)
    {
      v15 = *(v11 + 16);
      if (v12 == v15)
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_39;
      }

      v22 = (v11 + 32 * v12);
      v35 = v22[6];
      v36 = v22[4];
      v37 = v22[7];
      v38 = v22[5];
      if (v42)
      {

        v23 = v14;
      }

      else
      {
        v24 = v14[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        v43 = v26;
        sub_18844E6FC(a4, a5);
        v23 = swift_allocObject();
        v27 = (j__malloc_size(v23) - 32) / 32;
        v23[2] = v43;
        v23[3] = 2 * v27;
        v28 = v23 + 4;
        v29 = v14[3] >> 1;
        v41 = &v23[4 * v29 + 4];
        v42 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
        if (v14[2])
        {
          if (v23 != v14 || v28 >= &v14[4 * v29 + 4])
          {
            memmove(v28, v14 + 4, 32 * v29);
          }

          v14[2] = 0;
        }

        else
        {
        }
      }

      v31 = __OFSUB__(v42--, 1);
      if (v31)
      {
        goto LABEL_40;
      }

      ++v12;
      *v41 = v36;
      v41[1] = v38;
      v41[2] = v35;
      v41[3] = v37;
      v41 += 4;
      v14 = v23;
    }

    if (!v9)
    {
      break;
    }

    v16 = v13;
LABEL_13:
    v17 = __clz(__rbit64(v9)) | (v16 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = *(*(a1 + 56) + 8 * v17);
    v20 = v18[1];
    v9 &= v9 - 1;
    v46[0] = *v18;
    v46[1] = v20;
    v46[2] = v19;

    (a2)(&v45, v46);

    v21 = v45;

    v12 = 0;
    v11 = v21;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v16);
    ++v13;
    if (v9)
    {
      v13 = v16;
      goto LABEL_13;
    }
  }

  sub_1883F70C4(a1);

  v32 = v14[3];
  if (v32 < 2)
  {
    return;
  }

  v33 = v32 >> 1;
  v31 = __OFSUB__(v33, v42);
  v34 = v33 - v42;
  if (!v31)
  {
    v14[2] = v34;
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id static CKRecordZoneID.default.getter()
{
  if (qword_1EA90C198 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA90C1A0;

  return v1;
}

uint64_t static CKRecordZoneID.defaultZoneName.getter()
{
  if (qword_1EA90C1B0 != -1)
  {
    sub_1883F9C4C(&qword_1EA90C1B0);
  }

  v0 = qword_1EA90C1B8;

  return v0;
}

void __swiftcall CKRecordZoneID.init(zoneName:ownerName:)(CKRecordZoneID *__return_ptr retstr, Swift::String zoneName, Swift::String ownerName)
{
  object = ownerName._object;
  countAndFlagsBits = ownerName._countAndFlagsBits;
  v5 = zoneName._object;
  v6 = zoneName._countAndFlagsBits;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = MEMORY[0x18CFD5010](v6, v5);

  v9 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v7 initWithZoneName:v8 ownerName:v9];
}

void sub_18848F830()
{
  sub_18848C83C();
  if (qword_1EA90C1B0 != -1)
  {
    sub_1883F9C4C(&qword_1EA90C1B0);
  }

  v0 = qword_1EA90C1B8;
  v1 = unk_1EA90C1C0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v0;
  v5._object = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  CKRecordZoneID.init(zoneName:ownerName:)(v7, v5, v6);
  qword_1EA90C1A0 = v8;
}

uint64_t sub_18848F8D0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C1B8 = result;
  unk_1EA90C1C0 = v1;
  return result;
}

uint64_t sub_18848F900()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DCC0 = result;
  *algn_1EA90DCC8 = v1;
  return result;
}

uint64_t CKRecordZoneDefaultName.getter()
{
  if (qword_1EA90CB48 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA90DCC0;

  return v0;
}

unint64_t sub_18848F9BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18844A0D8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_18848F9EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18844A124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18848FA20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_18844A0D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848FA48(uint64_t a1)
{
  v2 = sub_18848FDD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18848FA84(uint64_t a1)
{
  v2 = sub_18848FDD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *CKRecordZoneID.init(from:)(void *a1)
{
  sub_18844E6FC(&qword_1EA90DCD0, &qword_1886F9A28);
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_188400B68(a1, a1[3]);
  sub_18848FDD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1883FE944(a1);
  }

  else
  {
    v5 = sub_188405514();
    v7 = v6;
    LOBYTE(v19) = 1;
    v17 = sub_188405514();
    v18 = v8;
    sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
    v9 = sub_188490154(&qword_1EA90C3A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1883F87FC(v9);
    type metadata accessor for Scope(0);
    v11 = sub_1884901C0(&qword_1EA90C368, &protocol conformance descriptor for CKDatabaseScope);
    sub_1883F87FC(v11);
    v16 = MEMORY[0x18CFD5010](v5, v7);

    v12 = MEMORY[0x18CFD5010](v17, v18);

    if (v20)
    {
      v13 = MEMORY[0x18CFD5010](v19);
    }

    else
    {
      v13 = 0;
    }

    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneName:v16 ownerName:v12 anonymousCKUserID:v13 databaseScope:v19];

    v14 = sub_1883F70CC();
    v15(v14);
    sub_1883FE944(a1);
  }

  return v4;
}

unint64_t sub_18848FDD0()
{
  result = qword_1EA90C390;
  if (!qword_1EA90C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C390);
  }

  return result;
}

uint64_t CKRecordZoneID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90DCD8, qword_1886F9A38);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_188400B68(a1, a1[3]);
  sub_18848FDD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = [v3 zoneName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v19) = 0;
  sub_1883FA0B8();
  if (v2)
  {
    (*(v7 + 8))(v10, v5);
  }

  else
  {

    v12 = [v3 ownerName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v19) = 1;
    sub_1883FA0B8();

    v19 = sub_1884900F0(v3);
    v20 = v13;
    v18 = 2;
    sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
    v14 = sub_188490154(&qword_1EA90C3B0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1883F91E4(v14);

    v19 = [v3 databaseScope];
    v18 = 3;
    type metadata accessor for Scope(0);
    v15 = sub_1884901C0(&qword_1EA90C378, &protocol conformance descriptor for CKDatabaseScope);
    sub_1883F91E4(v15);
    return (*(v7 + 8))(v10, v5);
  }
}

void *sub_1884900A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CKRecordZoneID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1884900F0(void *a1)
{
  v1 = [a1 anonymousCKUserID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188490154(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90E230, &qword_1886F9A30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1884901C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Scope(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1884902E4()
{
  result = qword_1EA90DCE0;
  if (!qword_1EA90DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DCE0);
  }

  return result;
}

unint64_t sub_18849033C()
{
  result = qword_1EA90C380;
  if (!qword_1EA90C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C380);
  }

  return result;
}