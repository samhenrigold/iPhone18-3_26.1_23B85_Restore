uint64_t sub_10007E564(uint64_t result)
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

  result = sub_100025008(result, v11, 1, v3);
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

uint64_t sub_10007E668(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10007EAFC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10007E760(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100025A4C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100001AB4(&qword_100175440, &unk_100125510);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL Clock.isEndpointClock.getter()
{
  type metadata accessor for EndpointClock(0);
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for MultiClock();
  return swift_dynamicCastClass() != 0;
}

uint64_t ClockRateRange.samplingRate.getter(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    return 0;
  }

  return result;
}

void ClockRateRange.hash(into:)(int a1, Swift::UInt a2, Swift::UInt a3, Swift::UInt a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int ClockRateRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10007E9AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10007EA18()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10007EA60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10007EAFC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10007EB9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F48, &qword_100174F40, &qword_100120B88);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F40, &qword_100120B88);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
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

unint64_t sub_10007ED40()
{
  result = qword_100176D98;
  if (!qword_100176D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D98);
  }

  return result;
}

uint64_t sub_10007EDA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DD8, &qword_100176DD0, &unk_1001224D0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DD0, &unk_1001224D0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AUAStream(0);
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

uint64_t sub_10007EF34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DC8, &qword_100176DC0, &qword_1001224C8);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DC0, &qword_1001224C8);
            v9 = sub_10001D974(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AUAStreamFormat();
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

uint64_t sub_10007F0C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F98, &qword_100174F90, &unk_100124B00);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F90, &unk_100124B00);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
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

uint64_t sub_10007F264(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F88, &qword_100174F80, &unk_100120BA0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F80, &unk_100120BA0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F78, ASDCustomProperty_ptr);
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

uint64_t sub_10007F404(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DA8, &qword_100176DA0, &qword_1001224B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DA0, &qword_1001224B8);
            v9 = sub_10001D86C(v13, i, a3);
            v11 = *v10;

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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActiveStreamingInterface();
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

uint64_t sub_10007F594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DB8, &qword_100176DB0, &qword_1001224C0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DB0, &qword_1001224C0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for USBDevice(0);
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

uint64_t sub_10007F724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007F780(unsigned int a1)
{
  v1 = (a1 >> 8);
  if (v1 > 0x428)
  {
    if (v1 == 1065)
    {
      return 0xD00000000000001CLL;
    }

    if (v1 != 1112)
    {
      if (v1 == 1113)
      {
        return 0xD000000000000012;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0xD000000000000012;
  }

  else
  {
    if (!(a1 >> 8))
    {
      return 0x5F444D435F503242;
    }

    if (v1 != 1)
    {
      if (v1 == 1064)
      {
        return 0xD00000000000001CLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x5F5053525F503242;
  }
}

AUASDCore::B2PInterface::MemOffset_optional __swiftcall B2PInterface.MemOffset.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 53832)
  {
    v1.value = AUASDCore_B2PInterface_MemOffset_d2h;
  }

  else
  {
    v1.value = AUASDCore_B2PInterface_MemOffset_unknownDefault;
  }

  if (rawValue == 45648)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Class sub_10007F884()
{
  sub_10000AC68(_swiftEmptyArrayStorage);
  sub_100001AB4(&qword_100176FF8, &unk_100122630);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001215B0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 56) = &type metadata for UInt8;
  *(v1 + 32) = v2;
  *(v1 + 88) = &type metadata for UInt8;
  *(v1 + 64) = v3;
  *(v1 + 120) = &type metadata for UInt8;
  *(v1 + 96) = v4;
  *(v1 + 152) = &type metadata for UInt8;
  *(v1 + 128) = v5;
  *(v1 + 184) = &type metadata for UInt8;
  *(v1 + 160) = v6;
  *(v1 + 216) = &type metadata for UInt8;
  *(v1 + 192) = v7;
  v8 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray:isa];

  v11 = sub_10001EBA8(0, &qword_100177000, NSArray_ptr);
  v39 = v11;
  *&v38 = v10;
  sub_10000CE28(&v38, v37);
  v36 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x726464615F7462, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v13 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[6]];
  v14 = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  v39 = v14;
  *&v38 = v13;
  sub_10000CE28(&v38, v37);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x656372756F73, 0xE600000000000000, v15);
  v16 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[7]];
  v39 = v14;
  *&v38 = v16;
  sub_10000CE28(&v38, v37);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x6574617473, 0xE500000000000000, v17);
  v18 = [objc_allocWithZone(NSNumber) initWithUnsignedShort:*(v0 + 4)];
  v39 = v14;
  *&v38 = v18;
  sub_10000CE28(&v38, v37);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x6469705F7462, 0xE600000000000000, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100120A30;
  v21 = *(v0 + 10);
  v22 = *(v0 + 14);
  v23 = *(v0 + 18);
  v24 = *(v0 + 22);
  *(v20 + 56) = &type metadata for UInt32;
  *(v20 + 32) = v21;
  *(v20 + 88) = &type metadata for UInt32;
  *(v20 + 64) = v22;
  *(v20 + 120) = &type metadata for UInt32;
  *(v20 + 96) = v23;
  *(v20 + 152) = &type metadata for UInt32;
  *(v20 + 128) = v24;
  v25 = objc_allocWithZone(NSArray);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = [v25 initWithArray:v26];

  v39 = v11;
  *&v38 = v27;
  sub_10000CE28(&v38, v37);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x737265765F7766, 0xE700000000000000, v29);
  v30 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v0 + 26)];
  v39 = v14;
  *&v38 = v30;
  sub_10000CE28(&v38, v37);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x5F65727574616566, 0xEF6B73616D746962, v31);
  v32 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[30]];
  v39 = v14;
  *&v38 = v32;
  sub_10000CE28(&v38, v37);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x726F6C6F63, 0xE500000000000000, v33);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  return v34;
}

uint64_t B2PInterface.MemOffset.rawValue.getter(char a1)
{
  if (a1)
  {
    return 4294955592;
  }

  else
  {
    return 4294947408;
  }
}

Swift::Int sub_10007FD60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = -11704;
  }

  else
  {
    v2 = -19888;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10007FDB4()
{
  if (*v0)
  {
    v1 = -11704;
  }

  else
  {
    v1 = -19888;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10007FDF0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = -11704;
  }

  else
  {
    v3 = -19888;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unsigned __int16 *sub_10007FE40@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 53832)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 45648)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_10007FE68(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = -11704;
  }

  else
  {
    v2 = -19888;
  }

  *a1 = v2;
}

void sub_10007FE84()
{
  v1 = type metadata accessor for AUACustomBooleanProperty();
  v2 = objc_allocWithZone(v1);
  v2[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
  v3 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967272528 scope:1735159650 element:0];
  v34.receiver = v2;
  v34.super_class = v1;
  v4 = objc_msgSendSuper2(&v34, "initWithAddress:propertyDataType:qualifierDataType:", v3, 1886155636, 0);

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 setSettable:0];
  v5 = v0[4];
  v0[4] = v4;

  v6 = [objc_allocWithZone(NSDictionary) init];
  v7 = v0[8];
  v8 = type metadata accessor for B2PCustomDictionaryProperty();
  v9 = objc_allocWithZone(v8);
  swift_weakInit();
  *&v9[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v6;
  swift_weakAssign();
  *&v9[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue] = v7;
  v10 = objc_allocWithZone(ASDPropertyAddress);
  v11 = v7;
  v12 = v6;
  v13 = [v10 initWithSelector:1967669844 scope:1735159650 element:0];
  v33.receiver = v9;
  v33.super_class = v8;
  v14 = objc_msgSendSuper2(&v33, "initWithAddress:propertyDataType:qualifierDataType:", v13, 1886155636, 0);

  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  [v15 setSettable:1];

  v16 = v0[6];
  v0[6] = v14;

  v17 = [objc_allocWithZone(NSDictionary) init];
  v18 = objc_allocWithZone(v8);
  swift_weakInit();
  *&v18[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v17;
  swift_weakAssign();
  *&v18[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue] = v7;
  v19 = objc_allocWithZone(ASDPropertyAddress);
  v20 = v11;
  v21 = v17;
  v22 = [v19 initWithSelector:1967407700 scope:1735159650 element:0];
  v32.receiver = v18;
  v32.super_class = v8;
  v23 = objc_msgSendSuper2(&v32, "initWithAddress:propertyDataType:qualifierDataType:", v22, 1886155636, 0);

  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v23;
  [v24 setSettable:0];

  v25 = v0[5];
  v0[5] = v23;

  v26 = objc_allocWithZone(type metadata accessor for B2PSetPairingProperty());
  swift_weakInit();
  swift_weakAssign();
  v26[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 0;
  v27 = objc_allocWithZone(ASDPropertyAddress);

  v28 = [v27 initWithSelector:1967281251 scope:1735159650 element:0];
  v31.receiver = v26;
  v31.super_class = v1;
  v29 = objc_msgSendSuper2(&v31, "initWithAddress:propertyDataType:qualifierDataType:", v28, 1886155636, 0);

  if (v29)
  {
    [v29 setSettable:1];

    v30 = v0[7];
    v0[7] = v29;

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10008028C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = 0xD00000000000001DLL;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v74[0]) = 1;
  *(v74 + 1) = 1064;
  *(v74 + 3) = 0;
  *(v74 + 7) = 256;
  aBlock = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v12._countAndFlagsBits = 0xD00000000000002ELL;
  v12._object = 0x800000010012E020;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x800000010012E0F0;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 544175136;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v15);
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v20._countAndFlagsBits = active;
  v20._object = v19;
  String.append(_:)(v20);

  v21 = aBlock;
  v22 = v76;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v23, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v24, qword_100179508);
  sub_100039AA0(5, v11, v21, v22);

  sub_10000C9D0(v11);
  v25 = [objc_allocWithZone(NSMutableData) initWithBytes:v74 length:9];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  v26 = *(a1 + 24);
  v27 = swift_getObjectType();
  sub_100052AFC(0xB250, v25, v27, v26);
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_12:

    type metadata accessor for B2POverMEM_SetPairing_Rsp(0);
    v29 = v28;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_16;
    }

    v30 = *(a1 + 24);
    v31 = swift_getObjectType();
    sub_1000522EC(0xB250, v31, v29, v30, &aBlock);
    if (v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
    if ((v76 & 0x100) == 0)
    {
      LODWORD(v65) = v76;
      v53 = aBlock;
      aBlock = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v54._countAndFlagsBits = 0xD00000000000002FLL;
      v54._object = 0x800000010012E080;
      String.append(_:)(v54);
      v66 = v53;
      v55._countAndFlagsBits = sub_10007F780(v53);
      String.append(_:)(v55);

      v56._countAndFlagsBits = 0x206D6F726620;
      v56._object = 0xE600000000000000;
      String.append(_:)(v56);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v57 = *(a1 + 24);
        v58 = swift_getObjectType();
        v59 = ActiveFunction.deviceName.getter(v58, v57);
        v61 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0x800000010012E000;
        v59 = 0xD00000000000001DLL;
      }

      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      v63 = aBlock;
      v64 = v76;
      sub_10000A2A4(v23, v11);
      sub_100039AA0(5, v11, v63, v64);

      result = sub_10000C9D0(v11);
      if (v66 == 1)
      {
        if ((v66 & 0xFFFF00) == 0x42900)
        {
          if ((v66 & 0xFF00000000) != 0)
          {
            sub_10000CA2C();
            v3 = swift_allocError();
            v33 = 116;
          }

          else
          {
            v52 = v65;
            if (v65 == 1)
            {
              goto LABEL_26;
            }

            sub_10000CA2C();
            v3 = swift_allocError();
            v33 = 117;
          }
        }

        else
        {
          sub_10000CA2C();
          v3 = swift_allocError();
          v33 = 115;
        }
      }

      else
      {
        sub_10000CA2C();
        v3 = swift_allocError();
        v33 = 114;
      }
    }

    else
    {
LABEL_16:
      sub_10000CA2C();
      v3 = swift_allocError();
      v33 = 113;
    }

    *v32 = v33;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
LABEL_18:
  aBlock = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v34._countAndFlagsBits = 0xD000000000000024;
  v34._object = 0x800000010012E050;
  String.append(_:)(v34);
  v74[0] = v3;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v35._countAndFlagsBits = 0x69766564206E6F20;
  v35._object = 0xEB00000000206563;
  String.append(_:)(v35);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(a1 + 24);
    v37 = swift_getObjectType();
    v5 = ActiveFunction.deviceName.getter(v37, v36);
    v39 = v38;
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0x800000010012E000;
  }

  v40._countAndFlagsBits = v5;
  v40._object = v39;
  String.append(_:)(v40);

  v41 = aBlock;
  v42 = v76;
  sub_10000A2A4(v23, v11);
  sub_100039AA0(5, v11, v41, v42);

  sub_10000C9D0(v11);
  if (swift_unknownObjectWeakLoadStrong() && (v43 = *(a1 + 24), v44 = swift_getObjectType(), v45 = (*(v43 + 16))(v44, v43), swift_unknownObjectRelease(), v45))
  {
    v66 = *(a1 + 64);
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v79 = sub_100083C44;
    v80 = v46;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_1000172D4;
    v78 = &unk_100162D90;
    v47 = _Block_copy(&aBlock);
    v65 = v45;
    v48 = v67;
    static DispatchQoS.unspecified.getter();
    v74[0] = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    v49 = v69;
    v50 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v47);

    (*(v71 + 8))(v49, v50);
    (*(v68 + 8))(v48, v70);
  }

  else
  {
  }

  v52 = 0;
LABEL_26:
  *v73 = v52;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> B2PInterface.processInterrupt(wValue:)(Swift::UInt16 wValue)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  __chkstk_darwin(v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 64);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = wValue;
  aBlock[4] = sub_1000818E0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100162CB0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v13 + 8))(v5, v3);
  (*(v6 + 8))(v8, v12);
}

void sub_100080EEC(uint64_t a1, unsigned __int16 a2)
{
  v4 = 0xD00000000000001DLL;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72[0] = 0;
  *(&v72[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  *&v72[0] = 0xD000000000000022;
  *(&v72[0] + 1) = 0x800000010012E400;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v13._countAndFlagsBits = active;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3A65756C61567720;
  v14._object = 0xE900000000000020;
  String.append(_:)(v14);
  if (a2 == 53832)
  {
    v15 = 0xEE0074736F48206FLL;
    v16 = 0x7420656369766544;
  }

  else if (a2 == 45648)
  {
    v15 = 0xEE00656369766544;
    v16 = 0x206F742074736F48;
  }

  else
  {
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10011DE90;
    *(v17 + 56) = &type metadata for UInt16;
    *(v17 + 64) = &protocol witness table for UInt16;
    *(v17 + 32) = a2;
    v16 = String.init(format:_:)();
    v15 = v18;
  }

  v19 = v15;
  String.append(_:)(*&v16);

  v20 = v72[0];
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v21, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v22, qword_100179508);
  sub_100039AA0(5, v7, v20, *(&v20 + 1));

  sub_10000C9D0(v7);
  if (a2 != 53832)
  {
LABEL_23:
    sub_10000CA2C();
    swift_allocError();
    v30 = 2;
    goto LABEL_24;
  }

  type metadata accessor for B2POverMEM_Interrupt(0);
  v24 = v23;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v74 = 1;
    memset(v72, 0, sizeof(v72));
    v73 = 1;
    v68 = *(v72 + 8);
    v69 = *(&v72[1] + 8);
    v70 = *(&v72[2] + 8);
    v71 = 0;
LABEL_18:
    sub_10000A2A4(v21, v7);
    v4 = 0xD00000000000001DLL;
    sub_100039F58(5, v7, 0xD000000000000046, 0x800000010012E460);
    sub_10000C9D0(v7);
    sub_10000CA2C();
    swift_allocError();
    v30 = 113;
LABEL_24:
    *v29 = v30;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_25;
  }

  v25 = *(a1 + 24);
  v26 = swift_getObjectType();
  sub_1000522EC(0xD248, v26, v24, v25, v72);
  swift_unknownObjectRelease();
  v27 = LOBYTE(v72[0]);
  v28 = BYTE3(v72[0]);
  v68 = *(v72 + 8);
  v69 = *(&v72[1] + 8);
  v70 = *(&v72[2] + 8);
  v71 = *(&v72[3] + 1);
  if (v73)
  {
    goto LABEL_18;
  }

  HIDWORD(v61) = *(v72 + 1);
  v62 = BYTE4(v72[0]);
  v63 = BYTE5(v72[0]);
  v64 = BYTE6(v72[0]);
  *&v65 = BYTE7(v72[0]);
  v79 = v68;
  v74 = v72[0];
  v75 = *(v72 + 1);
  v76 = *(v72 + 3);
  v77 = *(v72 + 5);
  v78 = BYTE7(v72[0]);
  v80 = v69;
  v81 = v70;
  v82 = v71;
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v31._countAndFlagsBits = 0xD00000000000003FLL;
  v31._object = 0x800000010012E4B0;
  String.append(_:)(v31);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10011DE90;
  *(v32 + 56) = &type metadata for UInt8;
  *(v32 + 64) = &protocol witness table for UInt8;
  *(v32 + 32) = v27;
  v33._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x2065646F63706F20;
  v34._object = 0xE800000000000000;
  String.append(_:)(v34);
  v35 = v28;
  v36 = HIDWORD(v61);
  v37._countAndFlagsBits = sub_10007F780(v27 | (HIDWORD(v61) << 8) | (v35 << 24));
  String.append(_:)(v37);

  v38 = v66;
  v39 = v67;
  sub_10000A2A4(v21, v7);
  sub_100039AA0(5, v7, v38, v39);

  sub_10000C9D0(v7);
  if (v27 == 1)
  {
    if (v36 == 1112)
    {
      sub_100081E64(&v74);
      return;
    }

    v4 = 0xD00000000000001DLL;
    if (!v36)
    {
      sub_100081904(&v74);
      return;
    }

    goto LABEL_23;
  }

  sub_10000CA2C();
  swift_allocError();
  *v60 = 114;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0xE000000000000000;
  swift_willThrow();
  v4 = 0xD00000000000001DLL;
LABEL_25:
  v40 = _convertErrorToNSError(_:)();
  v41 = [v40 code];

  if (v41 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v41 > 0x7FFFFFFF)
  {
LABEL_37:
    __break(1u);
    return;
  }

  *&v72[0] = 0;
  *(&v72[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v42._countAndFlagsBits = 0xD000000000000026;
  v42._object = 0x800000010012E430;
  String.append(_:)(v42);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v43 = swift_allocObject();
  v65 = xmmword_10011DE90;
  *(v43 + 16) = xmmword_10011DE90;
  *(v43 + 56) = &type metadata for Int32;
  *(v43 + 64) = &protocol witness table for Int32;
  *(v43 + 32) = v41;
  v44._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x69766564206E6F20;
  v45._object = 0xEB00000000206563;
  String.append(_:)(v45);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(a1 + 24);
    v47 = swift_getObjectType();
    v4 = ActiveFunction.deviceName.getter(v47, v46);
    v49 = v48;
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0x800000010012E000;
  }

  v50._countAndFlagsBits = v4;
  v50._object = v49;
  String.append(_:)(v50);

  v51 = v72[0];
  sub_10000A2A4(v21, v7);
  sub_100039F58(5, v7, v51, *(&v51 + 1));

  sub_10000C9D0(v7);
  if (swift_unknownObjectWeakLoadStrong() && (v52 = *(a1 + 24), v53 = swift_getObjectType(), v54 = (*(v52 + 16))(v53, v52), swift_unknownObjectRelease(), v54))
  {
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    inited = swift_initStackObject();
    *(inited + 16) = v65;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v56 = objc_allocWithZone(NSString);
    v57 = String._bridgeToObjectiveC()();
    v58 = [v56 initWithString:v57];

    *(inited + 48) = v58;
    v59 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD00000000000001DLL, 0x800000010012E0B0, v59);
  }

  else
  {
  }
}

uint64_t sub_1000818A8()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_1000818EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100081904(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v8;
  v9 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v36[3] = v9;
  sub_100081C18(v36 + 8, v3, &v35);
  if (!v2)
  {
    active = 0xD00000000000001DLL;
    v11 = *(a1 + 3);
    v30 = 1;
    v31 = 1;
    v32 = v11;
    v33 = 0;
    v34 = 514;
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v12._countAndFlagsBits = 0xD000000000000034;
    v12._object = 0x800000010012E330;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_10007F780((v11 << 24) | 0x101u);
    String.append(_:)(v13);

    v14._countAndFlagsBits = 544175136;
    v14._object = 0xE400000000000000;
    String.append(_:)(v14);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v15);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0x800000010012E000;
    }

    v19._countAndFlagsBits = active;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = v28;
    v21 = v29;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v22, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v23, qword_100179508);
    sub_100039AA0(5, v7, v20, v21);

    sub_10000C9D0(v7);
    v24 = [objc_allocWithZone(NSMutableData) initWithBytes:&v30 length:10];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v3 + 24);
      v26 = swift_getObjectType();
      sub_100052AFC(0xD248, v24, v26, v25);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100081C18(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  active = 0xD00000000000001DLL;
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v24 = 0xD000000000000026;
  v25 = 0x800000010012E370;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v12);
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0x800000010012E000;
  }

  v16._countAndFlagsBits = active;
  v16._object = v15;
  String.append(_:)(v16);

  v17 = v24;
  v18 = v25;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v19, v9);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v20, qword_100179508);
  sub_100039AA0(5, v9, v17, v18);

  result = sub_10000C9D0(v9);
  if (v10 || v11 != 2)
  {
    sub_10000CA2C();
    v22 = swift_allocError();
    *v23 = 119;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    result = swift_willThrow();
    *a3 = v22;
  }

  return result;
}

void sub_100081E64(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = 0xD00000000000001DLL;
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 40);
  v11 = &off_100173000;
  if (v10)
  {
    v45 = v2;
    v12 = *(a1 + 24);
    v50 = *(a1 + 8);
    v51 = v12;
    v52 = *(a1 + 40);
    v13 = v10;
    v44 = sub_10007F884();
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v49 = v46;
    v14._countAndFlagsBits = 0xD00000000000002CLL;
    v14._object = 0x800000010012E2E0;
    String.append(_:)(v14);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v15);
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0x800000010012E000;
      active = 0xD00000000000001DLL;
    }

    v20._countAndFlagsBits = active;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0x676E697474757020;
    v21._object = 0xE900000000000020;
    String.append(_:)(v21);
    v46 = v50;
    v47 = v51;
    v48 = v52;
    type metadata accessor for B2P_CMD_BT_ADDRESS_s(0);
    _print_unlocked<A, B>(_:_:)();
    v22._countAndFlagsBits = 0xD000000000000015;
    v22._object = 0x800000010012E310;
    String.append(_:)(v22);
    v23 = v49;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v24 = sub_10000A1BC(v7, qword_1001794F0);
    sub_10000A2A4(v24, v9);
    v11 = &off_100173000;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v25, qword_100179508);
    sub_100039AA0(5, v9, v23, *(&v23 + 1));

    sub_10000C9D0(v9);
    v26 = *&v13[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary];
    v27 = v44;
    *&v13[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v44;
    v28 = v27;

    [v13 sendPropertyChangeNotification];
    v3 = v45;
  }

  v29 = *(a1 + 3);
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 1113;
  BYTE3(v49) = v29;
  DWORD1(v49) = 0;
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v30._countAndFlagsBits = 0xD00000000000003BLL;
  v30._object = 0x800000010012E2A0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = sub_10007F780((v29 << 24) | 0x45901u);
  String.append(_:)(v31);

  v32._countAndFlagsBits = 544175136;
  v32._object = 0xE400000000000000;
  String.append(_:)(v32);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v4 + 24);
    v34 = swift_getObjectType();
    v6 = ActiveFunction.deviceName.getter(v34, v33);
    v36 = v35;
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0x800000010012E000;
  }

  v37._countAndFlagsBits = v6;
  v37._object = v36;
  String.append(_:)(v37);

  v38 = v46;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v39, v9);
  if (v11[408] != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v40, qword_100179508);
  sub_100039AA0(5, v9, v38, *(&v38 + 1));

  sub_10000C9D0(v9);
  v41 = [objc_allocWithZone(NSMutableData) initWithBytes:&v49 length:8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v4 + 24);
    v43 = swift_getObjectType();
    sub_100052AFC(0xD248, v41, v43, v42);
    if (v3)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10008237C(__int128 *a1)
{
  v2 = v1;
  v4 = 0xD00000000000001DLL;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v75 = *a1;
  v76 = v12;
  aBlock = 284673;
  LOWORD(v77) = *(a1 + 16);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v13._countAndFlagsBits = 0xD00000000000002DLL;
  v13._object = 0x800000010012E200;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000012;
  v14._object = 0x800000010012E130;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 544175136;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v16);
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v21._countAndFlagsBits = active;
  v21._object = v20;
  String.append(_:)(v21);

  v22 = v72;
  v23 = v73;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v24, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v25, qword_100179508);
  sub_100039AA0(5, v11, v22, v23);

  sub_10000C9D0(v11);
  v26 = [objc_allocWithZone(NSMutableData) initWithBytes:&aBlock length:42];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v2 + 24);
    v28 = swift_getObjectType();
    sub_100052AFC(0xB250, v26, v28, v27);
    swift_unknownObjectRelease();
  }

  type metadata accessor for B2POverMEMHeader(0);
  v30 = v29;
  if (swift_unknownObjectWeakLoadStrong() && (v31 = *(v2 + 24), v32 = swift_getObjectType(), sub_1000522EC(0xB250, v32, v30, v31, &aBlock), swift_unknownObjectRelease(), (v75 & 1) == 0))
  {
    v54 = aBlock;
    aBlock = 0;
    *&v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v55._countAndFlagsBits = 0xD000000000000033;
    v55._object = 0x800000010012E260;
    String.append(_:)(v55);
    v56._countAndFlagsBits = sub_10007F780(v54);
    String.append(_:)(v56);

    v57._countAndFlagsBits = 0x206D6F726620;
    v57._object = 0xE600000000000000;
    String.append(_:)(v57);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v2 + 24);
      v59 = swift_getObjectType();
      v60 = ActiveFunction.deviceName.getter(v59, v58);
      v62 = v61;
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0x800000010012E000;
      v60 = 0xD00000000000001DLL;
    }

    v63._countAndFlagsBits = v60;
    v63._object = v62;
    String.append(_:)(v63);

    v64 = aBlock;
    v65 = v75;
    sub_10000A2A4(v24, v11);
    sub_100039AA0(5, v11, v64, v65);

    sub_10000C9D0(v11);
    if (v54 == 1)
    {
      if ((v54 & 0xFFFF00) == 0x45900)
      {
        if ((v54 & 0xFF00000000) == 0)
        {
          return 1;
        }

        sub_10000CA2C();
        v34 = swift_allocError();
        v35 = 116;
      }

      else
      {
        sub_10000CA2C();
        v34 = swift_allocError();
        v35 = 115;
      }
    }

    else
    {
      sub_10000CA2C();
      v34 = swift_allocError();
      v35 = 114;
    }
  }

  else
  {
    sub_10000CA2C();
    v34 = swift_allocError();
    v35 = 113;
  }

  *v33 = v35;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0xE000000000000000;
  swift_willThrow();
  aBlock = 0;
  *&v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v36._countAndFlagsBits = 0xD000000000000026;
  v36._object = 0x800000010012E230;
  String.append(_:)(v36);
  v72 = v34;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v37._countAndFlagsBits = 0x69766564206E6F20;
  v37._object = 0xEB00000000206563;
  String.append(_:)(v37);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v2 + 24);
    v39 = swift_getObjectType();
    v4 = ActiveFunction.deviceName.getter(v39, v38);
    v41 = v40;
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0x800000010012E000;
  }

  v42._countAndFlagsBits = v4;
  v42._object = v41;
  String.append(_:)(v42);

  v43 = aBlock;
  v44 = v75;
  sub_10000A2A4(v24, v11);
  sub_100039AA0(5, v11, v43, v44);

  sub_10000C9D0(v11);
  if (swift_unknownObjectWeakLoadStrong() && (v45 = *(v2 + 24), v46 = swift_getObjectType(), v47 = (*(v45 + 16))(v46, v45), swift_unknownObjectRelease(), v47))
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(&v76 + 1) = sub_1000851F4;
    v77 = v48;
    aBlock = _NSConcreteStackBlock;
    *&v75 = 1107296256;
    *(&v75 + 1) = sub_1000172D4;
    *&v76 = &unk_100162E30;
    v49 = _Block_copy(&aBlock);
    v50 = v47;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    v51 = v68;
    v52 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v49);

    (*(v70 + 8))(v51, v52);
    (*(v67 + 8))(v8, v69);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100082CB4()
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:v2];

  *(inited + 48) = v3;
  v4 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD00000000000001DLL, 0x800000010012E0B0, v4);
}

void sub_100082DCC()
{
  v1 = *(v0 + 64);
}

id *B2PInterface.deinit()
{
  sub_100024174((v0 + 2));

  return v0;
}

uint64_t B2PInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_100082ED8()
{
  result = qword_100176DF0;
  if (!qword_100176DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DF0);
  }

  return result;
}

uint64_t sub_100082FA4@<X0>(void **a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v31 = v9;
  v15 = *&a2[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue];
  if (!v15)
  {

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v16 = result;
  v17 = v13;
  v30 = v17;
  v29 = v15;
  sub_100084904(v17, v34);
  v18 = swift_allocObject();
  v19 = v34[1];
  *(v18 + 24) = v34[0];
  v28 = v16;
  *(v18 + 16) = v16;
  *(v18 + 40) = v19;
  *(v18 + 56) = v35;
  *(v18 + 64) = a2;
  aBlock[4] = sub_1000851E4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100162DE0;
  v26 = _Block_copy(aBlock);

  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v27 = v10;
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  v21 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v26;
  v23 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v7 + 8))(v21, v6);
  (*(v32 + 8))(v12, v27);

  v24 = 1;
LABEL_6:
  *a3 = v24;
  return result;
}

uint64_t sub_100083318(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10008237C(a2);
  if (result)
  {
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v18 = v16[0];
    v9._object = 0x800000010012E1C0;
    v9._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v9);
    v10 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v10;
    v17 = *(a2 + 32);
    type metadata accessor for B2P_CMD_BT_ADDRESS_s(0);
    _print_unlocked<A, B>(_:_:)();
    v11 = v18;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v12 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v12, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v13, qword_100179508);
    sub_100039AA0(5, v7, v11, *(&v11 + 1));

    sub_10000C9D0(v7);
    v14 = sub_10007F884();
    v15 = *&a3[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary];
    *&a3[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v14;

    return [a3 sendPropertyChangeNotification];
  }

  return result;
}

uint64_t sub_100083624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v12 = type metadata accessor for LogID(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v46 = a4;
    v47 = a5;
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v49 = 0xD00000000000002FLL;
    v50 = 0x800000010012DF80;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v17);
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0x800000010012E000;
      active = 0xD00000000000001DLL;
    }

    v22._countAndFlagsBits = active;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = v49;
    v24 = v50;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A1BC(v12, qword_1001794F0);
    sub_10000A2A4(v25, v14);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v26, qword_100179508);
    sub_100039AA0(5, v14, v23, v24);

    sub_10000C9D0(v14);
    v27 = type metadata accessor for B2PSetPairingProperty();
    v48.receiver = v6;
    v48.super_class = v27;
    if (objc_msgSendSuper2(&v48, "setPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:", a1, a2, a3, v46, v47))
    {
      v28 = 0xD00000000000001DLL;
      if (*(v6 + OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet) == 1)
      {
        OS_dispatch_queue.sync<A>(execute:)();
        if (v49 == 1)
        {
          v49 = 0;
          v50 = 0xE000000000000000;
          _StringGuts.grow(_:)(48);

          v49 = 0xD000000000000023;
          v50 = 0x800000010012DFD0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v16 + 24);
            v30 = swift_getObjectType();
            v28 = ActiveFunction.deviceName.getter(v30, v29);
            v32 = v31;
            swift_unknownObjectRelease();
          }

          else
          {
            v32 = 0x800000010012E000;
          }

          v37._countAndFlagsBits = v28;
          v37._object = v32;
          String.append(_:)(v37);

          v38._countAndFlagsBits = 0x7373656363757320;
          v38._object = 0xEB000000006C7566;
          String.append(_:)(v38);
          v39 = v49;
          v40 = v50;
          sub_10000A2A4(v25, v14);
          sub_100039AA0(5, v14, v39, v40);
        }

        else
        {
          v49 = 0;
          v50 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v49 = 0xD000000000000023;
          v50 = 0x800000010012DFD0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v33 = *(v16 + 24);
            v34 = swift_getObjectType();
            v28 = ActiveFunction.deviceName.getter(v34, v33);
            v36 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v36 = 0x800000010012E000;
          }

          v41._countAndFlagsBits = v28;
          v41._object = v36;
          String.append(_:)(v41);

          v42._countAndFlagsBits = 0x64656C69616620;
          v42._object = 0xE700000000000000;
          String.append(_:)(v42);
          v43 = v49;
          v44 = v50;
          sub_10000A2A4(v25, v14);
          sub_100039F58(5, v14, v43, v44);
        }

        sub_10000C9D0(v14);
      }

      else
      {
      }

      return 1;
    }

    else
    {
      sub_10000A2A4(v25, v14);
      sub_100039F58(5, v14, 0xD00000000000001FLL, 0x800000010012DFB0);

      sub_10000C9D0(v14);
      return 0;
    }
  }

  return result;
}

id sub_100083B84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100083C0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_100083C68(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001D11C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CC92C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000CBDA0(v16, a4 & 1);
    v11 = sub_10001D11C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000CE78(v22);

    return sub_10000CE28(a1, v22);
  }

  else
  {
    sub_10004BBAC(v11, a2, a3, a1, v21);
  }
}

id sub_100083DB8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001D260(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000CCAD0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000CC058(v13, a3 & 1);
    v8 = sub_10001D260(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AUAStream(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_10004BC18(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100083EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for B2PInterface();
  v9 = swift_allocObject();
  v10 = swift_unknownObjectRetain();
  v41 = a3;
  v11 = sub_1000844E8(v10, v9, a3, a4);
  swift_unknownObjectRelease();
  LOBYTE(v43) = 1;
  *(&v43 + 1) = 0;
  BYTE9(v43) = 2;
  v12 = [objc_allocWithZone(NSMutableData) initWithBytes:&v43 length:10];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0xB250, v12, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  type metadata accessor for B2POverMEM_Ping_Rsp(0);
  v16 = v15;
  if (swift_unknownObjectWeakLoadStrong() && (v17 = *(v11 + 24), v18 = swift_getObjectType(), sub_1000522EC(0xB250, v18, v16, v17, &v43), swift_unknownObjectRelease(), (BYTE10(v43) & 1) == 0))
  {
    if (v43 == 1)
    {
      if ((v43 & 0xFFFF00) == 0x100)
      {
        if ((v43 & 0xFF00000000) != 0)
        {
          sub_10000CA2C();
          v20 = swift_allocError();
          v21 = 116;
        }

        else if (BYTE8(v43) == 2)
        {
          if ((WORD4(v43) & 0xFF00) == 0x200)
          {
            sub_10007FE84();
            return v11;
          }

          sub_10000CA2C();
          v20 = swift_allocError();
          v21 = 118;
        }

        else
        {
          sub_10000CA2C();
          v20 = swift_allocError();
          v21 = 117;
        }
      }

      else
      {
        sub_10000CA2C();
        v20 = swift_allocError();
        v21 = 115;
      }
    }

    else
    {
      sub_10000CA2C();
      v20 = swift_allocError();
      v21 = 114;
    }
  }

  else
  {
    sub_10000CA2C();
    v20 = swift_allocError();
    v21 = 113;
  }

  *v19 = v21;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0xE000000000000000;
  swift_willThrow();
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v11 + 24);
    v23 = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(v23, v22);
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v27._countAndFlagsBits = active;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000012;
  v28._object = 0x800000010012E3A0;
  String.append(_:)(v28);
  v42 = v20;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v29 = v43;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A1BC(v6, qword_1001794F0);
  sub_10000A2A4(v30, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v31, qword_100179508);
  sub_100039AA0(5, v8, v29, *(&v29 + 1));

  sub_10000C9D0(v8);
  v32 = (*(a4 + 16))(v41, a4);
  if (v32)
  {
    v33 = v32;
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v35 = objc_allocWithZone(NSString);
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 initWithString:v36];

    *(inited + 48) = v37;
    v38 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD00000000000001DLL, 0x800000010012E0B0, v38);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000844E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LogID(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 72) = 1;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v29 = a4;
  v30 = a1;
  active = ActiveFunction.deviceName.getter(a3, a4);
  v18 = v17;

  v31 = active;
  v32 = v18;
  v19._object = 0x800000010012E3C0;
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  v20 = v31;
  v21 = v32;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A1BC(v13, qword_1001794F0);
  sub_10000A2A4(v22, v15);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v23, qword_100179508);
  sub_100039AA0(5, v15, v20, v21);

  sub_10000C9D0(v15);
  sub_10001EBA8(0, &qword_1001772B0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100177010, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001AB4(&unk_1001772C0, &unk_100122650);
  sub_100085260(&qword_100177018, &unk_1001772C0, &unk_100122650);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(a2 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 24) = v29;
  swift_unknownObjectWeakAssign();
  return a2;
}

void sub_100084904(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = 0;
  v50 = 0;
  *&v48 = 0x726464615F7462;
  *(&v48 + 1) = 0xE700000000000000;
  v4 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v47 = 0u;
  }

  v48 = v41;
  v49 = v47;
  if (!*(&v47 + 1))
  {
LABEL_8:
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    goto LABEL_9;
  }

  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  if (swift_dynamicCast())
  {
    v5 = v40;
    v6 = v40[2];
    if (v6)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v5 = &off_10015A1B8;
  v6 = 6;
LABEL_10:
  if (v6 == 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v6 < 3)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v6 == 3)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v6 < 5)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v6 == 5)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = v5[32];
  v8 = v5[33];
  v38 = v5[35];
  v39 = v5[34];
  v36 = v5[37];
  v37 = v5[36];

  *&v42 = 0x656372756F73;
  *(&v42 + 1) = 0xE600000000000000;
  v9 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v47 = 0u;
  }

  v48 = v42;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v35 = [v40 unsignedCharValue];

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v35 = 0;
LABEL_23:
  *&v43 = 0x6574617473;
  *(&v43 + 1) = 0xE500000000000000;
  v10 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v47 = 0u;
  }

  v48 = v43;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v11 = [v40 unsignedCharValue];

      goto LABEL_31;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v11 = 0;
LABEL_31:
  *&v44 = 0x6469705F7462;
  *(&v44 + 1) = 0xE600000000000000;
  v12 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v47 = 0u;
  }

  v48 = v44;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v13 = [v40 unsignedShortValue];

      goto LABEL_39;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v13 = 0;
LABEL_39:
  *&v48 = 0x737265765F7766;
  *(&v48 + 1) = 0xE700000000000000;
  v14 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v47 = 0u;
  }

  v48 = v44;
  v49 = v47;
  if (!*(&v47 + 1))
  {
LABEL_46:
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    goto LABEL_47;
  }

  sub_100001AB4(&qword_100177008, &unk_100122640);
  if (swift_dynamicCast())
  {
    v15 = v40;
    v16 = v40[2];
    if (v16)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  v15 = &off_10015A1E0;
  v16 = 4;
LABEL_48:
  if (v16 == 1)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v16 < 3)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v16 != 3)
  {
    v33 = v11;
    v34 = v13;
    v32 = v8;
    v18 = v15[8];
    v17 = v15[9];
    v19 = v15[10];
    v31 = v15[11];

    *&v45 = 0x5F65727574616566;
    *(&v45 + 1) = 0xEF6B73616D746962;
    v20 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v47 = 0u;
    }

    v48 = v45;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      v21 = v7;
      if (swift_dynamicCast())
      {
        v22 = [v40 unsignedIntValue];

        goto LABEL_59;
      }
    }

    else
    {
      v21 = v7;
      sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    }

    v22 = 0;
LABEL_59:
    *&v46 = 0x726F6C6F63;
    *(&v46 + 1) = 0xE500000000000000;
    v23 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v24 = [v40 unsignedCharValue];

        v26 = v38;
        v25 = v39;
        v28 = v36;
        v27 = v37;
        v29 = v35;
        v30 = v31;
LABEL_68:
        *a2 = v21;
        *(a2 + 1) = v32;
        *(a2 + 2) = v25;
        *(a2 + 3) = v26;
        *(a2 + 4) = v27;
        *(a2 + 5) = v28;
        *(a2 + 6) = v29;
        *(a2 + 7) = v33;
        *(a2 + 8) = v34;
        *(a2 + 10) = v18;
        *(a2 + 14) = v17;
        *(a2 + 18) = v19;
        *(a2 + 22) = v30;
        *(a2 + 26) = v22;
        *(a2 + 30) = v24;
        *(a2 + 31) = v50;
        *(a2 + 33) = v51;
        return;
      }
    }

    else
    {

      sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    }

    v26 = v38;
    v25 = v39;
    v28 = v36;
    v27 = v37;
    v29 = v35;
    v30 = v31;
    v24 = 0;
    goto LABEL_68;
  }

LABEL_76:
  __break(1u);
}

id sub_10008512C(int a1, void **a2)
{
  result = [v2 isSettable];
  if (result)
  {
    v6 = a1 == 8;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (a2)
  {
    sub_100082FA4(a2, v2, &v7);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000851A4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100085218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100085260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Class sub_1000852D0(unsigned int a1)
{
  v2 = sub_10000AC68(_swiftEmptyArrayStorage);
  v3 = a1 & 7;
  v4 = (a1 >> 3) & 7;
  v5 = (a1 >> 6) & 7;
  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100122660;
  *(v6 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:a1 & 7];
  *(v6 + 40) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v4];
  *(v6 + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v5];
  *(v6 + 56) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:(a1 >> 9) & 7];
  sub_10000CFF4();
  *(v6 + 64) = NSNumber.init(BOOLeanLiteral:)((a1 & 0x1000) != 0);
  v35 = sub_100001AB4(&qword_100177020, &unk_100122670);
  *&v34 = v6;
  sub_10000CE28(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v2;
  sub_100083C68(v33, 0xD000000000000013, 0x800000010012E4F0, isUniquelyReferenced_nonNull_native);
  v8 = v36;
  v10 = v3 == 1 || v3 == 3;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = v10;
  sub_10000CE28(&v34, v33);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v8;
  sub_100083C68(v33, 0x736920646E756F73, 0xEF676E6974616C6FLL, v11);
  v12 = v36;
  v13 = (a1 & 7) - 1 < 2 && ((a1 >> 9) & 7) == 0;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = v13;
  sub_10000CE28(&v34, v33);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v12;
  sub_100083C68(v33, 0x6170206472696874, 0xEB00000000797472, v14);
  v15 = v36;
  v17 = v3 == 4 && v4 == 4 && v5 == 4;
  v18 = v17;
  if (v17)
  {
    if (((a1 >> 9) & 7) == 0 && (a1 & 0x1000) == 0)
    {
      v19 = 1;
      v20 = 1;
LABEL_24:
      v21 = 1;
      goto LABEL_34;
    }

    if (((a1 >> 9) & 7) == 3 && (a1 & 0x1000) != 0)
    {
      v20 = 1;
      v19 = 2;
      v21 = 2;
      goto LABEL_34;
    }
  }

  if (((a1 >> 9) & 7) == 3 && v3 == 2 && v4 == 2 && v5 == 2 && (a1 & 0x1000) != 0)
  {
    v21 = 2;
    v20 = 1;
    v19 = 3;
    goto LABEL_34;
  }

  if (v18)
  {
    if (((a1 >> 9) & 7) == 4)
    {
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      v20 = 0;
      v21 = 0;
      v19 = 2;
    }

    else
    {
      if (((a1 >> 9) & 7) != 2 || (a1 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      v21 = 2;
      v20 = 1;
      v19 = 5;
    }

    goto LABEL_34;
  }

  if (v3 == 3 && v4 == 3 && v5 == 3)
  {
    if (((a1 >> 9) & 7) != 0 || (a1 & 0x1000) != 0)
    {
      if (((a1 >> 9) & 7) == 2)
      {
        if ((a1 & 0x1000) == 0)
        {
          goto LABEL_36;
        }

        v21 = 2;
        v20 = 1;
        v19 = 6;
      }

      else
      {
        if (((a1 >> 9) & 7) != 3 || (a1 & 0x1000) == 0)
        {
          goto LABEL_36;
        }

        v21 = 2;
        v20 = 1;
        v19 = 4;
      }

      goto LABEL_34;
    }

    v20 = 1;
    v19 = 4;
    goto LABEL_24;
  }

  if (v3 != 1 || v4 != 1 || v5 != 1)
  {
    goto LABEL_36;
  }

  if (((a1 >> 9) & 7) == 2)
  {
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    v21 = 3;
    v20 = 1;
    v19 = 8;
  }

  else
  {
    if (((a1 >> 9) & 7) != 3 || (a1 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    v21 = 3;
    v20 = 1;
    v19 = 7;
  }

LABEL_34:
  v35 = &type metadata for UInt32;
  LODWORD(v34) = v19;
  sub_10000CE28(&v34, v33);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_100083C68(v33, 0x6563656970726165, 0xEF6E676973656420, v22);
  v15 = v36;
  if (v20)
  {
    v35 = &type metadata for UInt32;
    LODWORD(v34) = v21;
    sub_10000CE28(&v34, v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v15;
    sub_100083C68(v33, 0x697365642063696DLL, 0xEA00000000006E67, v23);
    v15 = v36;
  }

LABEL_36:
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_100083C68(v33, 0x6F68706F7263696DLL, 0xEA0000000000656ELL, v24);
  v25 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v25;
  sub_100083C68(v33, 0x6E6F74747562, 0xE600000000000000, v26);
  v27 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v27;
  sub_100083C68(v33, 0xD000000000000010, 0x800000010012E510, v28);
  v29 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 0;
  sub_10000CE28(&v34, v33);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v29;
  sub_100083C68(v33, 0xD000000000000016, 0x800000010012E530, v30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t (*StreamingInterface.canUseImplicit.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_100085974;
}

uint64_t StreamingInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    result = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!result)
        {
          result = 1;
        }
      }

      else if (result < 2u)
      {
        if (v5 == 16)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = v10 + 80 * v9;
      v12 = *(v11 + 72);
      if (v12 && (v13 = *(v12 + 16)) != 0)
      {
        v14 = 0;
        v15 = (v12 + 32);
        do
        {
          v17 = *v15++;
          v16 = v17;
          if (v17 == 68 || v16 == 67 || v16 == 16)
          {
            if (!v14)
            {
              v14 = 1;
            }
          }

          else if (v14 < 2u)
          {
            v14 = 2;
          }

          --v13;
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      v18 = *(v11 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = v18 + 32;
        do
        {
          v22 = *(v21 + 80 * v20 + 72);
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = (v22 + 32);
              do
              {
                v26 = *v24++;
                v25 = v26;
                if (v26 == 68 || v25 == 67 || v25 == 16)
                {
                  if (!v14)
                  {
                    v14 = 1;
                  }
                }

                else if (v14 < 2u)
                {
                  v14 = 2;
                }

                --v23;
              }

              while (v23);
            }
          }

          ++v20;
        }

        while (v20 != v19);
      }

      ++v9;
      if (result <= v14)
      {
        result = v14;
      }

      else
      {
        result = result;
      }
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t StreamingAltInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 72);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    result = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!result)
        {
          result = 1;
        }
      }

      else if (result < 2)
      {
        if (v5 == 16)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = *(v10 + 80 * v9 + 72);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = (v11 + 32);
          do
          {
            v15 = *v13++;
            v14 = v15;
            if (v15 == 16 || v14 == 68 || v14 == 67)
            {
              if (!result)
              {
                result = 1;
              }
            }

            else if (result < 2)
            {
              if (v14 == 16)
              {
                result = 1;
              }

              else
              {
                result = 2;
              }
            }

            --v12;
          }

          while (v12);
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t sub_100085C28(char *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v7 = v5;
  v8 = a5;
  LODWORD(v62) = a3;
  v12 = type metadata accessor for LogID(0);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = 0;
  v15 = CreateFixedPriorityDispatchQueue("com.apple.usbAudio.ActiveStreamingInterface", 63);
  v16 = v15;
  if (a4)
  {
    LODWORD(v61) = v8;
    v17 = *(*v7 + 2);
    v18 = v15;
    v19 = sub_1000F8CF8(v17, v16, AUAError.init(_:message:), 0);
    if (v6)
    {

      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v20._countAndFlagsBits = 0x20726F727265;
      v20._object = 0xE600000000000000;
      String.append(_:)(v20);
      v65[0] = v6;
      sub_100001AB4(&qword_100177270, &qword_100120A40);
      _print_unlocked<A, B>(_:_:)();
      v21._object = 0x800000010012E580;
      v21._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v21);
      v22 = v66;
      v23 = v67;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v24 = sub_10000A1BC(v12, qword_1001794F0);
      sub_10000A2A4(v24, v14);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v25, qword_100179508);
      sub_100039F58(1, v14, v22, v23);

      sub_10000C9D0(v14);
      sub_10000CA2C();
      swift_allocError();
      *v26 = 5;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0xE000000000000000;
      swift_willThrow();

      return v7;
    }

    v27 = v19;
    v60 = v18;

    v68 = v27;
    v37 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v37)
    {
      v38 = sub_1000AA808(0x11u, v37);
      v8 = v61;
      if (v38)
      {
        v66 = 0;
        v39 = v27;
        if (![v39 setIdleTimeout:&v66 error:2000.0])
        {
          v43 = v66;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return v7;
        }

        v40 = v66;
      }
    }

    else
    {
      v8 = v61;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v7 + 8);
  v29 = a1;

  v30 = sub_1000873AC(v28, v29, a2, &v68, v62, v8);
  if (v6)
  {

    return v7;
  }

  v62 = v30;

  v32 = *v7;
  v33 = *(*v7 + 8);
  if (!*(*v7 + 8) || (v34 = *&v29[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]) != 0 && sub_1000AA808(0xAu, v34))
  {
    v60 = v32;
    v61 = v7;
LABEL_16:
    v35 = 0;
    v36 = 0;
    goto LABEL_28;
  }

  v36 = *&v29[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (v36)
  {
    v41 = sub_1000F8280(v33);
    v60 = v32;
    v61 = v7;
    if (!v42)
    {
      goto LABEL_16;
    }

    v66 = v41;
    v67 = v42;
    v65[0] = 0;
    v65[1] = 0xE100000000000000;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_10001EA64();
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v36 = v44;
  }

  else
  {
    v60 = v32;
    v61 = v7;
    v35 = 0;
  }

LABEL_28:
  type metadata accessor for ActiveStreamingInterface();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 120) = -1;
  v45 = v62;
  v46 = *(v61 + 24);
  v69 = *(v61 + 32);
  v47 = v69;
  v70 = v46;
  v48 = *(v61 + 16);
  *(v7 + 32) = *v61;
  *(v7 + 48) = v48;
  *(v7 + 64) = v47;
  *(v7 + 72) = v45;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v49 = v16;
  *(v7 + 104) = v16;
  *(v7 + 112) = v27;
  *(v7 + 88) = v35;
  *(v7 + 96) = v36;
  if (HIBYTE(v60->isa))
  {
    v50 = v16;

    sub_10000D0B8(&v70, v65, &qword_100176860, &qword_100122138);
    sub_10000D0B8(&v69, v65, &qword_100176870, &unk_100122880);
    v51 = v27;
    *(v7 + 128) = 0;
    if (v27)
    {
      goto LABEL_30;
    }

LABEL_33:

    goto LABEL_34;
  }

  type metadata accessor for EndpointClock(0);
  swift_allocObject();
  v54 = v16;

  sub_10000D0B8(&v70, v65, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v69, v65, &qword_100176870, &unk_100122880);
  v55 = v27;

  *(v7 + 128) = sub_100117994(v56);
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_30:
  v65[0] = 0;
  v52 = [v27 selectAlternateSetting:0 error:{v65, v60}];
  v53 = v65[0];

  if ((v52 & 1) == 0)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v7;
  }

LABEL_34:
  v57 = *(v7 + 72);
  if (v57 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_36;
    }

LABEL_44:

    return v7;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_44;
  }

LABEL_36:
  if (v58 < 1)
  {
    __break(1u);
  }

  v59 = 0;
  do
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    ++v59;
    swift_beginAccess();
    swift_weakAssign();
  }

  while (v58 != v59);

  return v7;
}

void StreamingInterface.direction.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 80);
    v4 = *(v1 + 96);
    v6[2] = *(v1 + 64);
    v6[3] = v3;
    v6[4] = v4;
    v6[0] = *(v1 + 32);
    v6[1] = v2;
    sub_10001EBF0(v6, &v5);
    StreamingAltInterface.direction.getter();
    sub_10001EC4C(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t StreamingAltInterface.direction.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 104; ; i += 80)
  {
    v4 = *(i - 72);

    if (IOUSBGetEndpointUsageType(v4))
    {
    }

    else
    {
      wMaxPacketSize = v4->wMaxPacketSize;

      if ((wMaxPacketSize - 3) >= 6)
      {
        return IOUSBGetEndpointDirection(v4);
      }
    }

    if (IOUSBGetEndpointUsageType(v4) == 2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return IOUSBGetEndpointDirection(v4);
}

BOOL StreamingInterface.synchronizationType.getter()
{
  v1 = *(v0 + 8);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v8[4] = v4;
  v8[0] = *(v1 + 32);
  v8[1] = v2;
  sub_10001EBF0(v8, &v7);
  v5 = StreamingAltInterface.synchronizationType.getter();
  sub_10001EC4C(v8);
  return v5;
}

BOOL StreamingAltInterface.synchronizationType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v13[0] = *v3;
      v5 = v3[1];
      v6 = v3[2];
      v7 = v3[4];
      v13[3] = v3[3];
      v13[4] = v7;
      v13[1] = v5;
      v13[2] = v6;
      v8 = *&v13[0];
      sub_100022594(v13, &v12);
      if (!IOUSBGetEndpointUsageType(v8) && v8->wMaxPacketSize - 3 > 5)
      {
        break;
      }

      if (IOUSBGetEndpointUsageType(v8) == 2)
      {
        break;
      }

      sub_1000225F0(v13);
      if (!i)
      {
        return 0;
      }

      v3 += 5;
    }

    v9 = IOUSBGetEndpointSynchronizationType(v8);
    if (IOUSBGetEndpointDirection(v8) != 1 || v9)
    {
      sub_1000225F0(v13);
      return v9;
    }

    if (!IOUSBGetEndpointUsageType(v8))
    {
      wMaxPacketSize = v8->wMaxPacketSize;
      sub_1000225F0(v13);
      return (wMaxPacketSize - 9) < 0xFFFFFFFA;
    }

    sub_1000225F0(v13);
  }

  return 0;
}

void StreamingInterface.feedbackType.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 80);
    v4 = *(v1 + 96);
    v9[2] = *(v1 + 64);
    v9[3] = v3;
    v9[4] = v4;
    v9[0] = *(v1 + 32);
    v9[1] = v2;
    sub_10001EBF0(v9, &v8);
    v5 = sub_100086728();
    v7 = v6;
    sub_10001EC4C(v9);
    if (v7)
    {
      sub_100086894(v5, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100086728()
{
  if (StreamingAltInterface.direction.getter())
  {
    return 0x54554F20746F6ELL;
  }

  if (!StreamingAltInterface.synchronizationType.getter())
  {
    return 0x6E79734120746F6ELL;
  }

  v1 = 0xD000000000000018;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 104;
    do
    {
      if (v4)
      {
        v4 = 1;
      }

      else
      {
        v6 = *(v5 - 72);

        v7 = IOUSBGetEndpointUsageType(v6);
        if (v7)
        {
          v8 = v7;

          v4 = v8 == 1;
        }

        else
        {
          wMaxPacketSize = v6->wMaxPacketSize;

          v4 = (wMaxPacketSize - 3) < 6;
        }
      }

      v5 += 80;
      --v3;
    }

    while (v3);
    if (v4)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_100086894(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void StreamingInterface.providesImplicitFeedback.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 80);
    v4 = *(v1 + 96);
    v6[2] = *(v1 + 64);
    v6[3] = v3;
    v6[4] = v4;
    v6[0] = *(v1 + 32);
    v6[1] = v2;
    sub_10001EBF0(v6, &v5);
    StreamingAltInterface.providesImplicitFeedback.getter();
    sub_10001EC4C(v6);
  }

  else
  {
    __break(1u);
  }
}

BOOL StreamingAltInterface.providesImplicitFeedback.getter()
{
  if (StreamingAltInterface.direction.getter() != 1)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  v4 = v1 + 104;
  do
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      v5 = *(v4 - 72);

      LODWORD(v5) = IOUSBGetEndpointUsageType(v5);

      result = v5 == 2;
    }

    v4 += 80;
    --v2;
  }

  while (v2);
  return result;
}

void StreamingInterface.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      v5 += 80;
      StreamingAltInterface.hash(into:)(a1);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(*(v1 + 16) & 1);
  v6 = *(v1 + 24);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v7 = *(v6 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = (v6 + 32);
      do
      {
        v9 = *v8++;
        Hasher._combine(_:)(v9);
        --v7;
      }

      while (v7);
    }

    v10 = *(v1 + 32);
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v10 = *(v1 + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v13 = *(v12 + 2);
      v14 = *v12;
      v12 = (v12 + 3);
      USBDescriptorControl.hash(into:)(a1, v14 | (v13 << 16));
      --v11;
    }

    while (v11);
  }
}

Swift::Int StreamingInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  StreamingInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100086B60(uint64_t a1)
{
  Hasher.init(_seed:)();
  StreamingInterface.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100086B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9AUASDCore18StreamingInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void StreamingAltInterface.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(*(v1 + 16));
  Hasher._combine(_:)(*(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));
  v4 = *(v1 + 40);
  v5 = *(v1 + 49);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(v4);
  }

  else
  {
    v6 = *(v1 + 44);
    if (*(v1 + 49))
    {
      v9 = *(v1 + 48);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v9);
    }

    else
    {
      v7 = *(v1 + 42);
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v6);
    }
  }

  v10 = *(v1 + 56);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = v10 + 32;
    do
    {
      v12 += 80;
      Endpoint.hash(into:)(a1);
      --v11;
    }

    while (v11);
  }

  v13 = *(v1 + 64);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    v14 = *(v13 + 16);
    Hasher._combine(_:)(v14);
    if (v14)
    {
      v15 = (v13 + 32);
      do
      {
        v16 = *(v15 + 2);
        v17 = *v15;
        v15 = (v15 + 3);
        USBDescriptorControl.hash(into:)(a1, v17 | (v16 << 16));
        --v14;
      }

      while (v14);
    }

    v18 = *(v2 + 72);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v18 = *(v1 + 72);
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  v19 = *(v18 + 16);
  Hasher._combine(_:)(v19);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      Hasher._combine(_:)(v21);
      --v19;
    }

    while (v19);
  }
}

Swift::Int StreamingAltInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  StreamingAltInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100086E48(uint64_t a1)
{
  Hasher.init(_seed:)();
  StreamingAltInterface.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100086E84(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9AUASDCore21StreamingAltInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9);
}

uint64_t _s9AUASDCore18StreamingInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1000E4C6C(*(a1 + 8), *(a2 + 8)) & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v7)
    {
      return 0;
    }

    v8 = sub_1000EFF58();
    v6 = a2;
    v5 = a1;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (v9)
  {
    if (v10 && sub_1000E4630(v9, v10))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9AUASDCore21StreamingAltInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 40);
  v3 = *(a2 + 49);
  if (*(a1 + 49) > 1u)
  {
    if (*(a1 + 49) == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 != 3)
    {
      return 0;
    }

    if (*(a1 + 40) == v2)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v4 = *(a2 + 44);
  if (*(a1 + 49))
  {
    if (v3 == 1)
    {
      if (*(a1 + 40) != v2 || *(a1 + 44) != v4 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if (*(a2 + 49) || *(a1 + 40) != v2 || *(a1 + 42) != *(a2 + 42) || *(a1 + 44) != v4)
  {
    return 0;
  }

LABEL_24:
  if ((sub_1000E49A4(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = sub_1000E4630(v8, v9);
    v11 = a2;
    v12 = a1;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v12 = a1;
    v11 = a2;
    if (v9)
    {
      return 0;
    }
  }

  v13 = *(v11 + 72);
  if (*(v12 + 72))
  {
    return v13 && (sub_1000EFF58() & 1) != 0;
  }

  return !v13;
}

unint64_t sub_10008714C()
{
  result = qword_100177028;
  if (!qword_100177028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177028);
  }

  return result;
}

unint64_t sub_1000871A4()
{
  result = qword_100177030;
  if (!qword_100177030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177030);
  }

  return result;
}

unint64_t sub_1000871FC()
{
  result = qword_100177038;
  if (!qword_100177038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177038);
  }

  return result;
}

uint64_t sub_100087260(uint64_t a1, int a2)
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

uint64_t sub_1000872A8(uint64_t result, int a2, int a3)
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

uint64_t sub_100087300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100087348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000873AC(uint64_t a1, void *a2, uint64_t a3, void **a4, unsigned int a5, unsigned int a6)
{
  v7 = v6;
  v73 = a4;
  v63 = a3;
  v68 = type metadata accessor for LogID(0);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v87 = a2;
  v72 = a5;
  v14 = 0;
  v66 = " creating the child interface";
  v15 = a1 + 32;
  result = _swiftEmptyArrayStorage;
  v70 = v13;
  v71 = a6;
  v62 = a1 + 32;
  do
  {
    v64 = result;
    v65 = v7;
    v17 = (v15 + 80 * v14);
    v18 = v14;
    while (1)
    {
      if (v18 >= v13)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v19 = v17[3];
      v81 = v17[2];
      v82 = v19;
      v83 = v17[4];
      v20 = v17[1];
      v80[0] = *v17;
      v80[1] = v20;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_33;
      }

      v74 = v18 + 1;
      v21 = *v73;
      v22 = *(&v82 + 1);
      v23 = *(*(&v82 + 1) + 16);
      if (v23)
      {
        break;
      }

      v77 = 0;
      v78 = 0xE000000000000000;
      sub_10001EBF0(v80, &v75);
      v24 = v21;
      _StringGuts.grow(_:)(54);
      v75 = v77;
      v76 = v78;
      v25._countAndFlagsBits = 0x203A656369766544;
      v25._object = 0xE800000000000000;
      String.append(_:)(v25);
      v26 = [v87 boxName];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v28 = 0x206E776F6E6B6E55;
        v30 = 0xEE00656369766564;
      }

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0x61667265746E6920;
      v32._object = 0xEB00000000206563;
      String.append(_:)(v32);
      v33 = *&v80[0];
      LOBYTE(v77) = *(*&v80[0] + 2);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._countAndFlagsBits = 0x74746553746C6120;
      v35._object = 0xEC00000020676E69;
      String.append(_:)(v35);
      LOBYTE(v77) = *(v33 + 3);
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      v37._object = (v66 | 0x8000000000000000);
      v37._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v37);
      v38 = v75;
      v39 = v76;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v40 = sub_10000A1BC(v68, qword_1001794F0);
      v41 = v67;
      sub_10000A2A4(v40, v67);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v42, qword_100179508);
      sub_100039F58(1, v41, v38, v39);

      sub_10000C9D0(v41);

      result = sub_10001EC4C(v80);
      ++v18;
      v17 += 5;
      v13 = v70;
      if (v74 == v70)
      {
        return v64;
      }
    }

    v77 = _swiftEmptyArrayStorage;
    sub_10001EBF0(v80, &v75);
    v61 = v21;
    specialized ContiguousArray.reserveCapacity(_:)();
    v43 = (v22 + 32);
    active = type metadata accessor for ActiveEndpoint();
    do
    {
      v86[0] = *v43;
      v44 = v43[1];
      v45 = v43[2];
      v46 = v43[4];
      v86[3] = v43[3];
      v86[4] = v46;
      v86[1] = v44;
      v86[2] = v45;
      swift_allocObject();
      sub_100022594(v86, &v75);
      v47 = v87;
      LOBYTE(v75) = 0;
      sub_100116CD8(v86, v47, v72, v71);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v43 += 5;
      --v23;
    }

    while (v23);
    v48 = v77;
    v49 = *(v63 + 112);
    v84[4] = *(v63 + 96);
    v84[5] = v49;
    v84[6] = *(v63 + 128);
    v85 = *(v63 + 144);
    v50 = *(v63 + 48);
    v84[0] = *(v63 + 32);
    v84[1] = v50;
    v51 = *(v63 + 80);
    v84[2] = *(v63 + 64);
    v84[3] = v51;
    if (BYTE1(v82) > 1u)
    {
      v52 = v65;
      if (BYTE1(v82) == 2)
      {
        sub_100109BD4(WORD4(v81), v47, v84);
      }

      else
      {
        sub_10010A3F0(SWORD4(v81), v47, v84);
      }
    }

    else
    {
      v52 = v65;
      if (BYTE1(v82))
      {
        v53 = sub_10010986C(v47, BYTE8(v81), HIDWORD(v81), v82);
      }

      else
      {
        v53 = sub_1001094F0(v47, BYTE8(v81), WORD5(v81), BYTE12(v81));
      }
    }

    v7 = v52;
    if (v52)
    {

      v59 = v64;
      sub_10001EC4C(v80);

      return v59;
    }

    v56 = v53;
    v57 = v54;
    v58 = v55;
    type metadata accessor for ActiveStreamingAltInterface();
    swift_allocObject();
    sub_10001EBF0(v80, &v75);
    sub_1001121F4(v80, v48, v56, v57, v58, v21);
    sub_10001EC4C(v80);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v79;
    v13 = v70;
    v14 = v74;
    v15 = v62;
  }

  while (v74 != v70);
  return result;
}

uint64_t sub_100087A04@<X0>(unsigned __int8 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void **a4@<X3>, void **ObjectType@<X8>)
{
  v6 = v5;
  v11 = HIBYTE(a2);
  v12 = type metadata accessor for LogID(0);
  __chkstk_darwin(v12);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Mirror();
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v146 - v18;
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  if (v11 > 0xF || ((1 << v11) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v27 = 49;
    goto LABEL_22;
  }

  if (a1[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v27 = 83;
LABEL_22:
    *v26 = v27;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (a1[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v27 = 81;
    goto LABEL_22;
  }

  if (a1[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v27 = 82;
    goto LABEL_22;
  }

  if (a1[7] != a4)
  {
    goto LABEL_21;
  }

  LODWORD(v166) = a1[2];
  v152 = ObjectType;
  v169 = a1;
  v161 = v23;
  v155 = v19;
  v165 = &v146 - v22;
  if (a4 == 48)
  {
    v168 = v21;
    v50 = *(a3 + 16);
    v29 = _swiftEmptyArrayStorage;
    if (v50)
    {
      v167 = v25;
      v151 = v24;
      *&v174 = _swiftEmptyArrayStorage;
      sub_100047120(0, v50, 0);
      v29 = v174;
      v51 = (a3 + 32);
      do
      {
        v52 = v29;
        a4 = *v51;

        sub_10005F6D4(v53, v166, v181);
        if (v6)
        {
          goto LABEL_37;
        }

        v29 = v52;
        *&v174 = v52;
        v55 = v52[2];
        v54 = v52[3];
        if (v55 >= v54 >> 1)
        {
          a4 = &v174;
          sub_100047120((v54 > 1), v55 + 1, 1);
          v29 = v174;
        }

        v29[2] = v55 + 1;
        v56 = &v29[10 * v55];
        v56[2] = v181[0];
        v57 = v181[1];
        v58 = v181[2];
        v59 = v181[4];
        v56[5] = v181[3];
        v56[6] = v59;
        v56[3] = v57;
        v56[4] = v58;
        ++v51;
        --v50;
      }

      while (v50);
LABEL_38:
      v24 = v151;
      ObjectType = v152;
      v25 = v167;
    }

    goto LABEL_39;
  }

  if (a4 != 32)
  {
    if (!a4)
    {
      v168 = v21;
      v28 = *(a3 + 16);
      v29 = _swiftEmptyArrayStorage;
      if (v28)
      {
        v167 = v25;
        v151 = v24;
        *&v174 = _swiftEmptyArrayStorage;
        sub_100047120(0, v28, 0);
        v29 = v174;
        v30 = (a3 + 32);
        while (1)
        {
          v31 = v29;
          a4 = *v30;

          sub_1000D1464(v32, v166, v179);
          if (v6)
          {
            break;
          }

          v29 = v31;
          *&v174 = v31;
          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            a4 = &v174;
            sub_100047120((v33 > 1), v34 + 1, 1);
            v29 = v174;
          }

          v29[2] = v34 + 1;
          v35 = &v29[10 * v34];
          v35[2] = v179[0];
          v36 = v179[1];
          v37 = v179[2];
          v38 = v179[4];
          v35[5] = v179[3];
          v35[6] = v38;
          v35[3] = v36;
          v35[4] = v37;
          ++v30;
          if (!--v28)
          {
            goto LABEL_38;
          }
        }

LABEL_37:
      }

      goto LABEL_39;
    }

LABEL_21:
    sub_10000CA2C();
    swift_allocError();
    v27 = 85;
    goto LABEL_22;
  }

  v168 = v21;
  v40 = *(a3 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v40)
  {
    v167 = v25;
    v151 = v24;
    *&v174 = _swiftEmptyArrayStorage;
    sub_100047120(0, v40, 0);
    v29 = v174;
    v41 = (a3 + 32);
    while (1)
    {
      v42 = v29;
      a4 = *v41;

      sub_100021344(v43, v166, v180);
      if (v6)
      {
        goto LABEL_37;
      }

      v29 = v42;
      *&v174 = v42;
      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        a4 = &v174;
        sub_100047120((v44 > 1), v45 + 1, 1);
        v29 = v174;
      }

      v29[2] = v45 + 1;
      v46 = &v29[10 * v45];
      v46[2] = v180[0];
      v47 = v180[1];
      v48 = v180[2];
      v49 = v180[4];
      v46[5] = v180[3];
      v46[6] = v49;
      v46[3] = v47;
      v46[4] = v48;
      ++v41;
      if (!--v40)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  v60 = v169;
  if (!v29[2])
  {

    a4 = "Found a streaming interface with no alternate settings";
    if (qword_100173CB8 == -1)
    {
LABEL_56:
      v71 = sub_10000A1BC(v12, qword_1001794F0);
      sub_10000A2A4(v71, v14);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v72, qword_100179508);
      sub_100039F58(1, v14, 0xD000000000000036, ((a4 - 4) | 0x8000000000000000));
      result = sub_10000C9D0(v14);
      v60 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      goto LABEL_148;
    }

LABEL_159:
    swift_once();
    goto LABEL_56;
  }

  v182 = &_swiftEmptySetSingleton;
  v14 = v29[12];
  v153 = v29;
  if (!v14)
  {
    v156 = v6;
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_140;
  }

  v150 = v29 + 4;
  v163 = *(v14 + 2);
  if (!v163)
  {
    v156 = v6;
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_93;
  }

  v167 = v25;
  v162 = 0x800000010012E5E0;
  v151 = v24;
  ObjectType = (v24 + 8);

  v61 = 0;
  v62 = 32;
  v159 = v14;
  v160 = ObjectType;
  while (1)
  {
    v156 = v6;
    v63 = *(v14 + 2);
    v166 = v61;
    if (v61 >= v63)
    {
      goto LABEL_154;
    }

    v164 = v62;
    v64 = v14[v62 + 2];
    v65 = *&v14[v62];
    *(&v175 + 1) = &type metadata for USBDescriptorControl;
    LODWORD(v158) = v64;
    BYTE2(v174) = v64;
    LODWORD(v154) = v65;
    LOWORD(v174) = v65;
    Mirror.init(reflecting:)();
    v66 = Mirror.children.getter();
    v12 = *(v66 + 16);
    v14 = *(v66 + 32);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v67 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    a4 = v14;
    if (v67 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_155;
    }

    v68 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v68)
    {

      v14 = v159;
      ObjectType = v160;
      v12 = *v160;
      v6 = v156;
LABEL_51:
      v60 = v169;
      (v12)(v165, v168);

      a4 = 0xE700000000000000;
      goto LABEL_52;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    a4 = *(&v174 + 1);
    v69 = v174;
    sub_10000CE78(&v175);
    v14 = v159;
    ObjectType = v160;
    v12 = *v160;
    v6 = v156;
    if (!a4)
    {
      goto LABEL_51;
    }

    (v12)(v165, v168);
    v60 = v169;
    if (v69 == 0xD000000000000016 && v162 == a4)
    {
      break;
    }

LABEL_52:
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_61;
    }

    v61 = v166 + 1;
    v62 = v164 + 3;
    if (v163 == (v166 + 1))
    {

      v14 = _swiftEmptyArrayStorage;
      v29 = v153;
      v24 = v151;
      goto LABEL_93;
    }
  }

LABEL_61:
  v76 = v154 | (v158 << 16);

  v77 = sub_100024518(0, 1, 1, _swiftEmptyArrayStorage);
  v79 = *(v77 + 2);
  v78 = *(v77 + 3);
  v147 = v77;
  a4 = (v79 + 1);
  if (v79 >= v78 >> 1)
  {
    v147 = sub_100024518((v78 > 1), v79 + 1, 1, v147);
  }

  v29 = v153;
  v80 = v150;
  v24 = v151;
  v81 = v147;
  *(v147 + 2) = a4;
  v82 = &v81[3 * v79];
  v82[34] = BYTE2(v76);
  *(v82 + 16) = v76;
  v83 = v29[2];
  if (!v83)
  {
    goto LABEL_92;
  }

  v84 = 0;
  v85 = 1;
  v157 = v12;
  v148 = v83;
  while (2)
  {
    v86 = &v80[10 * v84];
    v87 = v86[1];
    v88 = v86[2];
    v89 = v86[3];
    v178 = v86[4];
    v90 = *v86;
    v176 = v88;
    v177 = v89;
    v174 = v90;
    v175 = v87;
    ObjectType = v178;
    if (!v178)
    {
      LODWORD(v91) = 0;
      goto LABEL_87;
    }

    v91 = *(v178 + 16);
    v159 = v91;
    if (!v91)
    {
      goto LABEL_87;
    }

    v149 = v85;
    v154 = v84;
    sub_10001EBF0(&v174, &v170);

    v92 = 0;
    v93 = 32;
    v158 = ObjectType;
    while (2)
    {
      if (v92 >= ObjectType[2])
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v163 = v93;
      v164 = v92;
      v94 = *(ObjectType + v93 + 2);
      v95 = *(ObjectType + v93);
      v173 = &type metadata for USBDescriptorControl;
      LODWORD(v166) = v94;
      BYTE2(v170) = v94;
      LODWORD(v165) = v95;
      LOWORD(v170) = v95;
      Mirror.init(reflecting:)();
      v96 = Mirror.children.getter();
      v97 = *(v96 + 24);
      v98 = *(v96 + 32);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v97;
      v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      a4 = v98;
      if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_150;
      }

      LODWORD(v166) = v165 | (v166 << 16);
      v99 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v99)
      {

        v60 = v169;
        v12 = v157;
        v157(v167, v168);
        goto LABEL_79;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v100 = v170;
      a4 = v171;
      sub_10000CE78(&v172);
      v60 = v169;
      v12 = v157;
      if (a4)
      {
        v157(v167, v168);
        ObjectType = v158;
        if (v100 == 0xD000000000000016 && v162 == a4)
        {

          goto LABEL_85;
        }
      }

      else
      {
        v157(v167, v168);
LABEL_79:

        a4 = 0xE700000000000000;
        ObjectType = v158;
      }

      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {
        v92 = v164 + 1;
        v93 = v163 + 3;
        if (v159 == (v164 + 1))
        {
          a4 = ObjectType;
          v102 = 15728894;
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    a4 = ObjectType;
LABEL_85:
    v102 = v166;
LABEL_86:

    sub_10001EC4C(&v174);
    LODWORD(v91) = (~v102 & 0xF000FE) != 0;
    v29 = v153;
    v84 = v154;
    v80 = v150;
    v24 = v151;
    v83 = v148;
    LOBYTE(v85) = v149;
LABEL_87:
    ++v84;
    if ((v85 & 1) == 0)
    {
      if (v84 == v83)
      {
        goto LABEL_91;
      }

      LODWORD(v91) = 0;
LABEL_66:
      v85 = v91;
      if (v84 >= v29[2])
      {
        goto LABEL_153;
      }

      continue;
    }

    break;
  }

  if (v84 != v83)
  {
    goto LABEL_66;
  }

  if ((v91 & 1) == 0)
  {
LABEL_91:
    a4 = &v182;
    sub_10009B498(&v174, 93);
    v24 = v151;
    v29 = v153;
  }

LABEL_92:
  v14 = v147;
LABEL_93:
  v12 = v29[12];
  if (v12)
  {
    v165 = *(v12 + 16);
    if (v165)
    {
      v147 = v14;
      v163 = 0x800000010012E5C0;
      ObjectType = (v24 + 8);

      v103 = 0;
      v104 = 32;
      v162 = ObjectType;
      v164 = v12;
      while (1)
      {
        v105 = *(v12 + 16);
        v167 = v103;
        if (v103 >= v105)
        {
          goto LABEL_157;
        }

        v166 = v104;
        v106 = *(v12 + v104 + 2);
        v107 = *(v12 + v104);
        *(&v175 + 1) = &type metadata for USBDescriptorControl;
        LODWORD(v160) = v106;
        BYTE2(v174) = v106;
        LODWORD(v159) = v107;
        LOWORD(v174) = v107;
        Mirror.init(reflecting:)();
        v108 = Mirror.children.getter();
        v12 = *(v108 + 24);
        v109 = *(v108 + 32);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        a4 = v109;
        if (v14 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_158;
        }

        v110 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v110 & 1) == 0)
        {
          break;
        }

        ObjectType = v162;
        v111 = *v162;
        v60 = v169;
LABEL_104:
        v12 = v164;
        v111(v155, v168);

        a4 = 0xE700000000000000;
LABEL_105:
        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v113)
        {
          goto LABEL_108;
        }

        v103 = v167 + 1;
        v104 = v166 + 3;
        if (v165 == (v167 + 1))
        {

          goto LABEL_139;
        }
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      a4 = *(&v174 + 1);
      v112 = v174;
      sub_10000CE78(&v175);
      ObjectType = v162;
      v111 = *v162;
      v60 = v169;
      if (!a4)
      {
        goto LABEL_104;
      }

      v111(v155, v168);
      v12 = v164;
      if (v112 != 0xD000000000000016 || v163 != a4)
      {
        goto LABEL_105;
      }

LABEL_108:
      v114 = v159 | (v160 << 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_100024518(0, *(v147 + 2) + 1, 1, v147);
      }

      v115 = v150;
      v117 = *(v147 + 2);
      v116 = *(v147 + 3);
      a4 = (v117 + 1);
      v118 = v153;
      if (v117 >= v116 >> 1)
      {
        v145 = sub_100024518((v116 > 1), v117 + 1, 1, v147);
        v115 = v150;
        v147 = v145;
        v118 = v153;
      }

      v119 = v147;
      *(v147 + 2) = a4;
      v120 = &v119[3 * v117];
      v120[34] = BYTE2(v114);
      *(v120 + 16) = v114;
      v121 = v118[2];
      if (v121)
      {
        v122 = 0;
        v123 = 1;
        v158 = v111;
        v154 = v121;
        while (1)
        {
          v124 = &v115[10 * v122];
          v125 = v124[1];
          v126 = v124[2];
          v127 = v124[3];
          v178 = v124[4];
          v128 = *v124;
          v176 = v126;
          v177 = v127;
          v174 = v128;
          v175 = v125;
          ObjectType = v178;
          if (v178)
          {
            v129 = *(v178 + 16);
            v160 = v129;
            if (v129)
            {
              LODWORD(v155) = v123;
              v157 = v122;
              sub_10001EBF0(&v174, &v170);

              v130 = 0;
              v131 = 32;
              v159 = ObjectType;
              while (1)
              {
                v132 = ObjectType[2];
                v165 = v130;
                if (v130 >= v132)
                {
                  goto LABEL_151;
                }

                v164 = v131;
                v133 = *(ObjectType + v131 + 2);
                v134 = *(ObjectType + v131);
                v173 = &type metadata for USBDescriptorControl;
                LODWORD(v167) = v133;
                BYTE2(v170) = v133;
                LODWORD(v166) = v134;
                LOWORD(v170) = v134;
                Mirror.init(reflecting:)();
                v135 = Mirror.children.getter();
                v136 = *(v135 + 24);
                v137 = *(v135 + 32);
                ObjectType = swift_getObjectType();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v14 = v136;
                v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
                swift_getObjectType();
                a4 = v137;
                if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
                {
                  goto LABEL_152;
                }

                v12 = v166 | (v167 << 16);
                v138 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v138)
                {
                  break;
                }

                dispatch thunk of _AnyCollectionBox.subscript.getter();

                v139 = v170;
                a4 = v171;
                sub_10000CE78(&v172);
                v60 = v169;
                ObjectType = v159;
                if (!a4)
                {
                  goto LABEL_127;
                }

                (v158)(v161, v168);
                if (v139 == 0xD000000000000016 && v163 == a4)
                {

LABEL_133:

                  sub_10001EC4C(&v174);
                  LODWORD(v129) = (~v12 & 0xF000FE) != 0;
                  v118 = v153;
                  v121 = v154;
                  v115 = v150;
                  v122 = v157;
                  LOBYTE(v123) = v155;
                  goto LABEL_134;
                }

LABEL_128:
                v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v140)
                {
                  a4 = ObjectType;
                  goto LABEL_133;
                }

                v130 = v165 + 1;
                v131 = v164 + 3;
                if (v160 == (v165 + 1))
                {
                  a4 = ObjectType;
                  v12 = 15728894;
                  goto LABEL_133;
                }
              }

              v60 = v169;
              ObjectType = v159;
LABEL_127:
              (v158)(v161, v168);

              a4 = 0xE700000000000000;
              goto LABEL_128;
            }
          }

          else
          {
            LODWORD(v129) = 0;
          }

LABEL_134:
          ++v122;
          if (v123)
          {
            if (v122 == v121)
            {
              if ((v129 & 1) == 0)
              {
LABEL_138:
                sub_10009B498(&v174, 93);
              }

              break;
            }
          }

          else
          {
            if (v122 == v121)
            {
              goto LABEL_138;
            }

            LODWORD(v129) = 0;
          }

          v123 = v129;
          if (v122 >= v118[2])
          {
            goto LABEL_156;
          }
        }
      }

LABEL_139:
      v14 = v147;
    }
  }

LABEL_140:
  v141 = v182;
  v142 = v182[2];
  if (!v142)
  {
LABEL_143:

    v74 = _swiftEmptyArrayStorage;
    goto LABEL_144;
  }

  v74 = sub_1001193F0(v182[2], 0);
  v143 = sub_10011B610(&v174, v74 + 32, v142, v141);
  result = sub_100022644(v174);
  if (v143 != v142)
  {
    __break(1u);
    goto LABEL_143;
  }

LABEL_144:
  ObjectType = v152;
  v75 = v14;
  if (!*(v14 + 2))
  {

    v75 = 0;
  }

  v73 = v153;
  if (!v74[2])
  {
    v144 = v75;

    v75 = v144;
    v73 = v153;
    v74 = 0;
  }

LABEL_148:
  *ObjectType = v60;
  ObjectType[1] = v73;
  ObjectType[2] = 0;
  ObjectType[3] = v74;
  ObjectType[4] = v75;
  return result;
}

Swift::Int ADC2InputTerminalDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  v6 = sub_1000670EC(a1, a2, a3);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2InputTerminalDescriptor(uint64_t a1)
{
  v2 = sub_1000670EC(*v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_100088EEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  v5 = sub_1000670EC(v2, v3, v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int ADC2OutputTerminalDescriptor.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100065E60(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2OutputTerminalDescriptor(uint64_t a1)
{
  v2 = sub_100065E60(*v1, *(v1 + 8));
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_1000890F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = sub_100065E60(v2, v3);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int ADC2MixerUnitDescriptorPart2.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100065E90(a1 & 0xFFFFFFFFFFFFLL);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2MixerUnitDescriptorPart2(uint64_t a1)
{
  v2 = sub_100065E90(*v1 | (*(v1 + 1) << 8) | (v1[5] << 40));
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_100089378(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[5];
  Hasher.init(_seed:)();
  v5 = sub_100065E90(v2 | (v3 << 8) | (v4 << 40));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int ADC2ProcessingUnitDescriptorPart2.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *v12 = a1;
  *&v12[8] = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 40;
  v5 = HIWORD(a1);
  v6 = a2 >> 8;
  Hasher.init(_seed:)();
  v11[0] = v2;
  *&v11[1] = v3;
  v11[5] = v4;
  v11[6] = v5;
  *&v11[7] = *&v12[7];
  v11[9] = v6;
  v7 = sub_100062690(*v11, *&v11[8]);
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = (v7 + 32);
    do
    {
      sub_10001EDEC(v9, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100089824()
{
  *&v2[1] = *(v0 + 1);
  v2[9] = *(v0 + 9);
  return ADC2ProcessingUnitDescriptorPart2.hashValue.getter(*v2, *&v2[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ProcessingUnitDescriptorPart2(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 5);
  v4 = *(v1 + 9);
  v9[0] = *v1;
  *&v9[1] = __PAIR64__(v3, v2);
  v9[9] = v4;
  v5 = sub_100062690(*v9, *&v9[8]);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100089924(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 5);
  v5 = v1[9];
  Hasher.init(_seed:)();
  v10[0] = v2;
  *&v10[1] = __PAIR64__(v4, v3);
  v10[9] = v5;
  v6 = sub_100062690(*v10, *&v10[8]);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC2ProcessingUnitDescriptorPart2(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = *(a2 + 5);
  v5 = a2[9];
  *&v9[1] = *(a1 + 1);
  v9[9] = *(a1 + 9);
  v6 = *v9;
  v7 = *&v9[8];
  LOBYTE(v10) = v2;
  *(&v10 + 1) = __PAIR64__(v4, v3);
  BYTE9(v10) = v5;
  return sub_10006C100(v6, v7, v10, WORD4(v10));
}

uint64_t sub_100089A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t, uint64_t))
{
  v5 = a4(*v4 | (*(v4 + 2) << 32) | (*(v4 + 6) << 48), a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100089B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 6);
  v8 = *v4;
  Hasher.init(_seed:)();
  v9 = a4(v8 | (v6 << 32) | (v7 << 48));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ExtensionUnitDescriptorPart2(uint64_t a1)
{
  v2 = sub_1000634FC(*v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_100089CFC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = sub_1000634FC(v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100089DAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_100089E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(*v4, a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100089F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  v7 = a4(v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_10001EDEC(v9, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100089FE4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t, uint64_t))
{
  v5 = a4(*v4 | (*(v4 + 1) << 8), a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_10008A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 1);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 8));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008A25C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(*v4, a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_10008A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  v7 = a4(v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_10001EDEC(v9, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008A4B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ClockMultiplierDescriptor(uint64_t a1)
{
  v2 = sub_1000649E4(*v1 | (*(v1 + 2) << 16) | (*(v1 + 3) << 24));
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_10008A61C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *v1;
  Hasher.init(_seed:)();
  v5 = sub_1000649E4(v4 | (v2 << 16) | (v3 << 24));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008A6E0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177040, type metadata accessor for ADC2InputTerminalDescriptor, &protocol conformance descriptor for ADC2InputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A780(uint64_t a1)
{
  result = sub_10008B220(&qword_100177050, type metadata accessor for ADC2OutputTerminalDescriptor, &protocol conformance descriptor for ADC2OutputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A820(uint64_t a1)
{
  result = sub_10008B220(&qword_100177060, type metadata accessor for ADC2MixerUnitDescriptor, &protocol conformance descriptor for ADC2MixerUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A8C0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177070, type metadata accessor for ADC2MixerUnitDescriptorPart2, &protocol conformance descriptor for ADC2MixerUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A960(uint64_t a1)
{
  result = sub_10008B220(&qword_100177080, type metadata accessor for ADC2MixerUnitDescriptorPart3, &protocol conformance descriptor for ADC2MixerUnitDescriptorPart3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AA00(uint64_t a1)
{
  result = sub_10008B220(&qword_100177090, type metadata accessor for ADC2SelectorUnitDescriptor, &protocol conformance descriptor for ADC2SelectorUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AAA0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770A0, type metadata accessor for ADC2SelectorUnitDescriptorPart2, &protocol conformance descriptor for ADC2SelectorUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AB40(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770B0, type metadata accessor for ADC2FeatureUnitDescriptor, &protocol conformance descriptor for ADC2FeatureUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008ABE0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770C0, type metadata accessor for ADC2SRConverterUnitDescriptor, &protocol conformance descriptor for ADC2SRConverterUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AC80(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770D0, type metadata accessor for ADC2EffectUnitDescriptor, &protocol conformance descriptor for ADC2EffectUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AD20(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770E0, type metadata accessor for ADC2ProcessingUnitDescriptor, &protocol conformance descriptor for ADC2ProcessingUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008ADC0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770F0, type metadata accessor for ADC2ProcessingUnitDescriptorPart2, &protocol conformance descriptor for ADC2ProcessingUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AE60(uint64_t a1)
{
  result = sub_10008B220(&qword_100177100, type metadata accessor for ADC2ExtensionUnitDescriptor, &protocol conformance descriptor for ADC2ExtensionUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AF00(uint64_t a1)
{
  result = sub_10008B220(&qword_100177110, type metadata accessor for ADC2ExtensionUnitDescriptorPart2, &protocol conformance descriptor for ADC2ExtensionUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AFA0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177120, type metadata accessor for ADC2ClockSourceDescriptor, &protocol conformance descriptor for ADC2ClockSourceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B040(uint64_t a1)
{
  result = sub_10008B220(&qword_100177130, type metadata accessor for ADC2ClockSelectorDescriptor, &protocol conformance descriptor for ADC2ClockSelectorDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B0E0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177140, type metadata accessor for ADC2ClockSelectorDescriptorPart2, &protocol conformance descriptor for ADC2ClockSelectorDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B180(uint64_t a1)
{
  result = sub_10008B220(&qword_100177150, type metadata accessor for ADC2ClockMultiplierDescriptor, &protocol conformance descriptor for ADC2ClockMultiplierDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008B268@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 17);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 0x11uLL);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        *(&v23 + 6) = 0;
        *&v23 = 0;
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        *&v23 = v7;
        WORD4(v23) = v8;
        BYTE10(v23) = BYTE2(v8);
        BYTE11(v23) = BYTE3(v8);
        BYTE12(v23) = BYTE4(v8);
        BYTE13(v23) = BYTE5(v8);
LABEL_18:
        v21 = &v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010AA24(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = *(v22 + 2);
            v24 = *(v22 + 48);

            *a3 = v23;
            *(a3 + 16) = v24;
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10008B4C8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v41 = type metadata accessor for Mirror();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = &_swiftEmptySetSingleton;
  v5 = sub_100091188();
  v6 = *(v5 + 16);
  v38 = v1;
  if (v6)
  {
    LODWORD(v44) = *(v1 + 14);
    v39 = (v2 + 8);
    v36 = v5;
    v7 = (v5 + 39);
    v8 = _swiftEmptyArrayStorage;
    v40 = v4;
    while (1)
    {
      v9 = (*(v7 - 5) & v44);
      if ((*(v7 - 7) & v44) == 0)
      {
        if ((*(v7 - 5) & v44) != 0)
        {
          sub_10009B498(&v52, 13);
        }

        goto LABEL_4;
      }

      v77 = v6;
      v10 = *(v7 - 3) | (*(v7 - 1) << 16);
      if (v9)
      {
        v11 = *(v7 - 3) | (*(v7 - 1) << 16);
      }

      else
      {
        v11 = *v7 | (*(v7 + 2) << 16);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100024518(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_100024518((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[3 * v13];
      v14[34] = BYTE2(v11);
      *(v14 + 16) = v11;
      if (v9)
      {
        v42 = v8;
        v55 = &type metadata for USBDescriptorControl;
        LOWORD(v52) = v10;
        BYTE2(v52) = BYTE2(v10);
        Mirror.init(reflecting:)();
        Mirror.children.getter();
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v43 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v43 != result)
        {
          __break(1u);
          return result;
        }

        v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v16)
        {

          v17 = *v39;
          v8 = v42;
LABEL_23:
          v6 = v77;
          v17(v40, v41);

LABEL_24:
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            sub_10009B498(&v52, 12);
          }

          goto LABEL_4;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v19 = v52;
        v18 = v53;
        sub_10000CE78(&v54);
        v17 = *v39;
        v8 = v42;
        if (!v18)
        {
          goto LABEL_23;
        }

        v17(v40, v41);
        v6 = v77;
        if (v19 != 0x746F725079706F63 || v18 != 0xEB00000000746365)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v6 = v77;
      }

LABEL_4:
      v7 += 5;
      if (!--v6)
      {

        v21 = v74;
        goto LABEL_28;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
  v21 = &_swiftEmptySetSingleton;
LABEL_28:
  v77 = *(v38 + 3);
  v22 = *(v38 + 4);
  v23 = *(v38 + 6);
  v44 = *(v38 + 7);
  v24 = *(v38 + 13);
  v25 = *(v38 + 16);
  v26 = *(v38 + 8) | (*(v38 + 9) << 32);
  sub_100001AB4(&qword_100175F98, &qword_100121748);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10011DE90;
  *(v27 + 32) = v26;
  *(v27 + 40) = v24;
  *(v27 + 41) = 1;
  v28 = v21[2];
  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = sub_1001193F0(v21[2], 0);
  v30 = sub_10011B610(&v52, v29 + 32, v28, v21);
  sub_100022644(v52);
  if (v30 != v28)
  {
    __break(1u);
LABEL_31:

    v29 = _swiftEmptyArrayStorage;
  }

  v75 = *(v38 + 24);
  v76 = *(v38 + 32);
  if (!*(v8 + 2))
  {

    v8 = 0;
  }

  if (!v29[2])
  {

    v29 = 0;
  }

  if (v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = -65536;
  }

  *&v46 = v22;
  *(&v46 + 1) = v23;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = *v73;
  DWORD1(v47) = *&v73[3];
  *(&v47 + 1) = v44;
  LOWORD(v48) = v31;
  *(&v48 + 3) = v71;
  BYTE7(v48) = v72;
  *(&v48 + 1) = v77;
  *&v49 = v75;
  WORD4(v49) = v76;
  *(&v49 + 10) = v69;
  HIWORD(v49) = v70;
  BYTE2(v48) = BYTE2(v31);
  *(v50 + 8) = xmmword_100122890;
  *&v50[0] = v27;
  *(&v50[1] + 1) = v8;
  v51 = v29;
  v52 = v22;
  v53 = v23;
  LOBYTE(v54) = 0;
  *(&v54 + 1) = *v73;
  HIDWORD(v54) = *&v73[3];
  v55 = v44;
  v57 = BYTE2(v31);
  v56 = v31;
  v59 = v72;
  v58 = v71;
  v62 = v76;
  v60 = v77;
  v61 = v75;
  v64 = v70;
  v63 = v69;
  v66 = xmmword_100122890;
  v65 = v27;
  v67 = v8;
  v68 = v29;
  sub_1000767C0(&v46, &v45);
  result = sub_10007681C(&v52);
  v32 = v50[1];
  v33 = v37;
  *(v37 + 64) = v50[0];
  *(v33 + 80) = v32;
  *(v33 + 96) = v51;
  v34 = v47;
  *v33 = v46;
  *(v33 + 16) = v34;
  v35 = v49;
  *(v33 + 32) = v48;
  *(v33 + 48) = v35;
  return result;
}

uint64_t sub_10008BAE0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 12);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 0xCuLL);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v23, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v23[0] = v7;
        LOWORD(v23[1]) = v8;
        BYTE2(v23[1]) = BYTE2(v8);
        BYTE3(v23[1]) = BYTE3(v8);
        BYTE4(v23[1]) = BYTE4(v8);
        BYTE5(v23[1]) = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010AB1C(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23[0] = v22[4];
            LODWORD(v23[1]) = *(v22 + 10);

            *a3 = v23[0];
            *(a3 + 8) = v23[1];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10008BD40@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v39 = a5;
  v38 = a4;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v5 = (a2 >> 8);
  v41 = type metadata accessor for Mirror();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100177160, &qword_100123330);
  inited = swift_initStackObject();
  v9 = 0;
  *(inited + 16) = xmmword_100120CD0;
  *(inited + 32) = 131073;
  *(inited + 38) = 0;
  *(inited + 36) = 257;
  *(inited + 41) = 0;
  *(inited + 39) = 256;
  *(inited + 42) = 524292;
  *(inited + 48) = 6;
  *(inited + 46) = 577;
  *(inited + 51) = 6;
  *(inited + 49) = 576;
  *(inited + 52) = 2097168;
  *(inited + 58) = 0;
  *(inited + 56) = 897;
  *(inited + 61) = 0;
  *(inited + 59) = 896;
  *(inited + 62) = 8388672;
  *(inited + 68) = 16;
  *(inited + 66) = 1281;
  *(inited + 71) = 16;
  *(inited + 69) = 1280;
  *(inited + 72) = 33554688;
  *(inited + 78) = 16;
  *(inited + 76) = 1601;
  *(inited + 81) = 16;
  v79 = inited;
  *(inited + 79) = 1600;
  v78 = &_swiftEmptySetSingleton;
  v40 = (v6 + 8);
  v10 = _swiftEmptyArrayStorage;
  v42 = v5;
  do
  {
    v11 = v79 + v9;
    v12 = (*(v79 + v9 + 34) & v5);
    if ((*(v79 + v9 + 32) & v5) != 0)
    {
      v13 = *(v11 + 36) | (*(v11 + 38) << 16);
      v14 = *(v11 + 39) | (*(v11 + 41) << 16);
      if ((*(v79 + v9 + 34) & v5) != 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100024518(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_100024518((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[3 * v17];
      v18[34] = BYTE2(v15);
      *(v18 + 16) = v15;
      if (v12)
      {
        v43 = v10;
        v56 = &type metadata for USBDescriptorControl;
        LOWORD(v53) = v13;
        BYTE2(v53) = BYTE2(v13);
        Mirror.init(reflecting:)();
        Mirror.children.getter();
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v44 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v44 != result)
        {
          __break(1u);
          return result;
        }

        v20 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v20)
        {

          v10 = v43;
          LOWORD(v5) = v42;
          (*v40)(v45, v41);
          goto LABEL_23;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v22 = v53;
        v21 = v54;
        sub_10000CE78(&v55);
        v23 = *v40;
        v10 = v43;
        LOWORD(v5) = v42;
        if (v21)
        {
          v23(v45, v41);
          if (v22 == 0x746F725079706F63 && v21 == 0xEB00000000746365)
          {

            goto LABEL_3;
          }
        }

        else
        {
          v23(v45, v41);
LABEL_23:
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          sub_10009B498(&v53, 12);
        }
      }
    }

    else if ((*(v79 + v9 + 34) & v5) != 0)
    {
      sub_10009B498(&v53, 13);
    }

LABEL_3:
    v9 += 10;
  }

  while (v9 != 50);

  v25 = v78;
  v26 = v78[2];
  if (!v26)
  {
    goto LABEL_29;
  }

  v27 = sub_1001193F0(v78[2], 0);
  v28 = sub_10011B610(&v53, v27 + 32, v26, v25);
  sub_100022644(v53);
  if (v28 != v26)
  {
    __break(1u);
LABEL_29:

    v27 = _swiftEmptyArrayStorage;
  }

  v74 = 0;
  if (!*(v10 + 2))
  {

    v10 = 0;
    if (v27[2])
    {
      goto LABEL_32;
    }

LABEL_37:

    v27 = 0;
    goto LABEL_32;
  }

  if (!v27[2])
  {
    goto LABEL_37;
  }

LABEL_32:
  *&v47 = WORD2(v35);
  *(&v47 + 1) = BYTE6(v35);
  LOBYTE(v48) = 0;
  *(&v48 + 1) = *v77;
  if (HIBYTE(v36))
  {
    v29 = HIBYTE(v36);
  }

  else
  {
    v29 = -65536;
  }

  DWORD1(v48) = *&v77[3];
  *(&v48 + 1) = v36;
  LOWORD(v49) = v29;
  BYTE2(v49) = BYTE2(v29);
  *(&v49 + 3) = v75;
  BYTE7(v49) = v76;
  *(&v49 + 1) = HIBYTE(v35);
  LOBYTE(v50) = v74;
  DWORD1(v50) = *&v73[3];
  *(&v50 + 1) = *v73;
  *(&v50 + 1) = BYTE3(v35);
  *&v51 = v10;
  *(&v51 + 1) = v37;
  LOWORD(v52) = v38;
  WORD3(v52) = v72;
  *(&v52 + 2) = v71;
  *(&v52 + 1) = v27;
  v53 = WORD2(v35);
  v54 = BYTE6(v35);
  LOBYTE(v55) = 0;
  HIDWORD(v55) = *&v77[3];
  *(&v55 + 1) = *v77;
  v56 = v36;
  v58 = BYTE2(v29);
  v57 = v29;
  v60 = v76;
  v59 = v75;
  v61 = HIBYTE(v35);
  v62 = v74;
  *&v63[3] = *&v73[3];
  *v63 = *v73;
  v64 = BYTE3(v35);
  v65 = v10;
  v66 = v37;
  v67 = v38;
  v69 = v72;
  v68 = v71;
  v70 = v27;
  sub_1000766B0(&v47, &v46);
  result = sub_100076AD0(&v53);
  v30 = v50;
  v31 = v39;
  v39[2] = v49;
  v31[3] = v30;
  v32 = v52;
  v31[4] = v51;
  v31[5] = v32;
  v33 = v48;
  *v31 = v47;
  v31[1] = v33;
  return result;
}

uint64_t sub_10008C400@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_74;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5uLL);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v113, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_113:
      __DataStorage._length.getter();
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_95;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_114;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_115:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_116;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_96;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    goto LABEL_15;
  }

  v113[0] = v12;
  LOWORD(v113[1]) = v13;
  BYTE2(v113[1]) = BYTE2(v13);
  BYTE3(v113[1]) = BYTE3(v13);
  BYTE4(v113[1]) = BYTE4(v13);
  BYTE5(v113[1]) = BYTE5(v13);
LABEL_17:
  v25 = v113;
LABEL_18:
  v26 = sub_10010AD40(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_94;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v27);
    v29 = v28;
    v111 = v30;
    v31 = sub_1001128D0(v10, v27);
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v35 != 2)
      {
        memset(v113, 0, 14);
        goto LABEL_34;
      }

      v36 = *(v31 + 16);
      v37 = __DataStorage._bytes.getter();
      if (!v37)
      {
LABEL_117:
        __DataStorage._length.getter();
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v39))
      {
        v40 = (v36 - v39 + v38);
        __DataStorage._length.getter();
        if (!v40)
        {
          goto LABEL_118;
        }

        goto LABEL_32;
      }

      goto LABEL_98;
    }

    if (!v35)
    {
      v113[0] = v31;
      LOWORD(v113[1]) = v32;
      BYTE2(v113[1]) = BYTE2(v32);
      BYTE3(v113[1]) = BYTE3(v32);
      BYTE4(v113[1]) = BYTE4(v32);
      BYTE5(v113[1]) = BYTE5(v32);
LABEL_34:
      v44 = v113;
LABEL_35:
      v45 = sub_10010AC70(v44, v27);
      sub_10007676C(v33, v34);
      if (!v29)
      {
        goto LABEL_73;
      }

      sub_1000D5D10(v29, v111, 6);
      v47 = v46;
      v109 = v48;
      v49 = sub_1001128D0(v29, 6uLL);
      v51 = v49;
      v52 = v50;
      v53 = v50 >> 62;
      if ((v50 >> 62) > 1)
      {
        if (v53 != 2)
        {
          memset(v113, 0, 14);
          goto LABEL_50;
        }

        v106 = v45;
        v54 = *(v49 + 16);
        v55 = __DataStorage._bytes.getter();
        if (!v55)
        {
LABEL_121:
          __DataStorage._length.getter();
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v56 = v55;
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v57))
        {
          goto LABEL_104;
        }

        v58 = (v54 - v57 + v56);
        __DataStorage._length.getter();
        v45 = v106;
        if (!v58)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (!v53)
        {
          v113[0] = v49;
          LOWORD(v113[1]) = v50;
          BYTE2(v113[1]) = BYTE2(v50);
          BYTE3(v113[1]) = BYTE3(v50);
          BYTE4(v113[1]) = BYTE4(v50);
          BYTE5(v113[1]) = BYTE5(v50);
LABEL_50:
          v62 = v113;
LABEL_51:
          v63 = sub_10010AC44(v62, 1);
          sub_10007676C(v51, v52);
          if (v63[2])
          {
            v112 = vmovl_u8(v4).u64[0];
            v64 = *(v63 + 32);
            v65 = *(v63 + 33);
            v105 = *(v63 + 37);

            v66 = v112.u16[0] - 13;
            if ((v66 & 0xFFFFFF00) == 0)
            {
              if ((((v112.i8[0] - 13) - v27) & 0xFFFFFF00) == 0)
              {
                if (v47)
                {
                  sub_1000D5D10(v47, v109, (v66 - v27));
                  v68 = v67;
                  v110 = v65;
                  v103 = v64;
                  v104 = v69;
                  v70 = sub_1001128D0(v47, (v112.i8[0] - 13 - v27));
                  v72 = v70;
                  v73 = v71;
                  v74 = v71 >> 62;
                  if ((v71 >> 62) > 1)
                  {
                    if (v74 != 2)
                    {
                      memset(v113, 0, 14);
                      goto LABEL_69;
                    }

                    v102 = v68;
                    v107 = v45;
                    v75 = *(v70 + 16);
                    v76 = __DataStorage._bytes.getter();
                    if (!v76)
                    {
LABEL_125:
                      __DataStorage._length.getter();
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    v77 = v76;
                    v78 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v75, v78))
                    {
                      v79 = (v75 - v78 + v77);
                      __DataStorage._length.getter();
                      v45 = v107;
                      if (!v79)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if (!v74)
                    {
                      v113[0] = v70;
                      LOWORD(v113[1]) = v71;
                      BYTE2(v113[1]) = BYTE2(v71);
                      BYTE3(v113[1]) = BYTE3(v71);
                      BYTE4(v113[1]) = BYTE4(v71);
                      BYTE5(v113[1]) = BYTE5(v71);
LABEL_69:
                      v83 = sub_10010AC70(v113, (v112.i8[0] - 13 - v27));
                      sub_10007676C(v72, v73);
                      goto LABEL_70;
                    }

                    v102 = v68;
                    if (v70 <= v70 >> 32)
                    {
                      v80 = __DataStorage._bytes.getter();
                      if (!v80)
                      {
LABEL_127:
                        __DataStorage._length.getter();
                        __break(1u);
                        goto LABEL_128;
                      }

                      v81 = v80;
                      v82 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v72, v82))
                      {
                        v79 = (v72 - v82 + v81);
                        __DataStorage._length.getter();
                        if (!v79)
                        {
LABEL_128:
                          __break(1u);
                          goto LABEL_129;
                        }

LABEL_67:
                        v83 = sub_10010AC70(v79, (v112.i8[0] - 13 - v27));
                        sub_10007676C(v72, v73);
                        v68 = v102;
LABEL_70:
                        v84 = v110;
                        if (v68)
                        {
                          sub_1000D5D10(v68, v104, 2);
                          v86 = sub_1001128D0(v68, 2uLL);
                          v88 = v86;
                          v89 = v87;
                          v90 = v87 >> 62;
                          if ((v87 >> 62) > 1)
                          {
                            if (v90 != 2)
                            {
                              memset(v113, 0, 14);
                              goto LABEL_90;
                            }

                            v108 = v45;
                            v91 = *(v86 + 16);
                            v92 = __DataStorage._bytes.getter();
                            if (!v92)
                            {
LABEL_129:
                              __DataStorage._length.getter();
LABEL_130:
                              __break(1u);
                              goto LABEL_131;
                            }

                            v93 = v92;
                            v94 = __DataStorage._offset.getter();
                            if (__OFSUB__(v91, v94))
                            {
                              goto LABEL_111;
                            }

                            v95 = (v91 - v94 + v93);
                            __DataStorage._length.getter();
                            v45 = v108;
                            if (!v95)
                            {
                              goto LABEL_130;
                            }
                          }

                          else
                          {
                            if (!v90)
                            {
                              v113[0] = v86;
                              LOWORD(v113[1]) = v87;
                              BYTE2(v113[1]) = BYTE2(v87);
                              BYTE3(v113[1]) = BYTE3(v87);
                              BYTE4(v113[1]) = BYTE4(v87);
                              BYTE5(v113[1]) = BYTE5(v87);
LABEL_90:
                              v99 = sub_10010AC18(v113, 1);
                              sub_10007676C(v88, v89);
LABEL_91:
                              if (v99[2])
                              {
                                v100 = v45;
                                v101 = *(v99 + 16);

                                *a3 = vuzp1_s8(v112, v112).u32[0];
                                *(a3 + 4) = v27;
                                *(a3 + 8) = v100;
                                *(a3 + 16) = v103;
                                *(a3 + 17) = v84;
                                *(a3 + 21) = v105;
                                *(a3 + 24) = v83;
                                *(a3 + 32) = v101;
                                return result;
                              }

                              goto LABEL_109;
                            }

                            if (v86 > v86 >> 32)
                            {
LABEL_110:
                              __break(1u);
LABEL_111:
                              __break(1u);
LABEL_112:
                              __break(1u);
                              goto LABEL_113;
                            }

                            v96 = __DataStorage._bytes.getter();
                            if (!v96)
                            {
LABEL_131:
                              result = __DataStorage._length.getter();
                              __break(1u);
                              goto LABEL_132;
                            }

                            v97 = v96;
                            v98 = __DataStorage._offset.getter();
                            if (__OFSUB__(v88, v98))
                            {
                              goto LABEL_112;
                            }

                            v95 = (v88 - v98 + v97);
                            result = __DataStorage._length.getter();
                            if (!v95)
                            {
LABEL_132:
                              __break(1u);
                              return result;
                            }
                          }

                          v99 = sub_10010AC18(v95, 1);
                          sub_10007676C(v88, v89);
                          v84 = v110;
                          goto LABEL_91;
                        }

                        goto LABEL_73;
                      }

LABEL_108:
                      __break(1u);
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_108;
                }

LABEL_73:

                goto LABEL_74;
              }

              goto LABEL_102;
            }

LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v49 > v49 >> 32)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v59 = __DataStorage._bytes.getter();
        if (!v59)
        {
LABEL_123:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_124;
        }

        v60 = v59;
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v61))
        {
LABEL_105:
          __break(1u);
        }

        v58 = (v51 - v61 + v60);
        __DataStorage._length.getter();
        if (!v58)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }
      }

      v62 = v58;
      goto LABEL_51;
    }

    if (v31 <= v31 >> 32)
    {
      v41 = __DataStorage._bytes.getter();
      if (!v41)
      {
LABEL_119:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_120;
      }

      v42 = v41;
      v43 = __DataStorage._offset.getter();
      if (!__OFSUB__(v33, v43))
      {
        v40 = (v33 - v43 + v42);
        __DataStorage._length.getter();
        if (!v40)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_32:
        v44 = v40;
        goto LABEL_35;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_74:
  sub_10000CA2C();
  swift_allocError();
  *v85 = 57;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10008CDF0@<X0>(uint64_t a1@<X8>)
{
  sub_100001AB4(&qword_100177168, &qword_100123338);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_1001228A0;
  *(inited + 32) = 513;
  *(inited + 36) = 6;
  *(inited + 34) = 705;
  *(inited + 39) = 6;
  *(inited + 37) = 704;
  *(inited + 40) = 2052;
  *(inited + 44) = 16;
  *(inited + 42) = 769;
  *(inited + 47) = 16;
  *(inited + 45) = 768;
  *(inited + 48) = 8208;
  *(inited + 52) = 16;
  *(inited + 50) = 1089;
  *(inited + 55) = 16;
  *(inited + 53) = 1088;
  v58 = &_swiftEmptySetSingleton;
  v4 = *(v1 + 11);
  v63 = v1;
  v34 = *(v1 + 12);
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = inited + v3;
    v7 = (*(inited + v3 + 33) & v4);
    if ((*(inited + v3 + 32) & v4) != 0)
    {
      v8 = (v6 + 37);
      v9 = (v6 + 34);
      if ((*(inited + v3 + 33) & v4) == 0)
      {
        v9 = v8;
      }

      v10 = *(v9 + 2);
      v11 = *v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100024518(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100024518((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[3 * v13];
      v14[34] = (v11 | (v10 << 16)) >> 16;
      *(v14 + 16) = v11;
      if (v7)
      {
        v15 = 12;
LABEL_2:
        sub_10009B498(&v41, v15);
      }
    }

    else if ((*(inited + v3 + 33) & v4) != 0)
    {
      v15 = 13;
      goto LABEL_2;
    }

    v3 += 8;
  }

  while (v3 != 24);

  v16 = *(v63 + 5);
  v33 = *(v63 + 6);
  v17 = *(v63 + 10);
  v18 = *(v63 + 32);
  v61 = *(v63 + 40);
  v62[0] = v18;
  v19 = v58;
  v20 = v58[2];
  if (v20)
  {
    v21 = v17;
    v22 = sub_1001193F0(v20, 0);
    v32 = sub_10011B610(&v41, v22 + 32, v20, v19);
    v23 = v41;
    sub_10000D0B8(v62, &v37, &qword_100176868, &unk_100122140);
    sub_10000D0B8(&v61, &v37, &qword_100175CA8, &unk_100124860);
    result = sub_100022644(v23);
    if (v32 == v20)
    {
      v17 = v21;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    sub_10000D0B8(v62, &v41, &qword_100176868, &unk_100122140);
    sub_10000D0B8(&v61, &v41, &qword_100175CA8, &unk_100124860);

    v22 = _swiftEmptyArrayStorage;
LABEL_19:
    v25 = *(v63 + 3);
    v59 = *(v63 + 16);
    v60 = *(v63 + 24);
    v27 = v61;
    v26 = v62[0];
    if (!*(v5 + 2))
    {

      v5 = 0;
    }

    *(v55 + 5) = v59;
    *(&v55[1] + 5) = v60;
    if (!v22[2])
    {

      v22 = 0;
    }

    v57 = 1;
    *&v37 = 0;
    if (v34)
    {
      v28 = v34;
    }

    else
    {
      v28 = -65536;
    }

    BYTE8(v37) = 1;
    *(&v37 + 9) = *v56;
    HIDWORD(v37) = *&v56[3];
    *v38 = v25;
    *&v38[8] = v28;
    *&v38[11] = v55[0];
    *&v38[18] = *(v55 + 7);
    *v43 = *v56;
    *&v43[3] = *&v56[3];
    v38[10] = BYTE2(v28);
    *&v38[28] = v16 | (v33 << 32);
    v38[36] = v17;
    v38[37] = 1;
    *&v38[40] = v26;
    *&v39 = v27;
    *(&v39 + 1) = v5;
    v40 = v22;
    v41 = 0;
    v42 = 1;
    v44 = v25;
    v46 = BYTE2(v28);
    v45 = v28;
    *v47 = v55[0];
    *&v47[7] = *(v55 + 7);
    v48 = *&v38[28];
    v49 = v17;
    v50 = 1;
    v51 = v26;
    v52 = v27;
    v53 = v5;
    v54 = v22;
    sub_10002317C(&v37, v36);
    result = sub_100076A7C(&v41);
    v29 = *&v38[32];
    v30 = v39;
    *(a1 + 32) = *&v38[16];
    *(a1 + 48) = v29;
    *(a1 + 64) = v30;
    *(a1 + 80) = v40;
    v31 = *v38;
    *a1 = v37;
    *(a1 + 16) = v31;
  }

  return result;
}

void sub_10008D24C(uint64_t a1)
{
  v3 = sub_100068F50(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100065E90(v1[5] | (*(v1 + 6) << 8) | (v1[10] << 40));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v9 = sub_100065E78(*(v1 + 11));
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v12 = *(v1 + 4);
  v13 = *(v12 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      Hasher._combine(_:)(v15);
      --v13;
    }

    while (v13);
  }

  v16 = *(v1 + 5);
  v17 = *(v16 + 16);
  Hasher._combine(_:)(v17);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      Hasher._combine(_:)(v19);
      --v17;
    }

    while (v17);
  }
}

Swift::Int sub_10008D3F4()
{
  Hasher.init(_seed:)();
  sub_10008D24C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008D438(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10008D24C(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008D474(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000910B4(v7, v8) & 1;
}

uint64_t sub_10008D4BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = &_swiftEmptySetSingleton;
  v7 = HIDWORD(a1);
  if (((a1 >> 40) & 1) == 0)
  {
    sub_10009B498(&v30, 14);
    v8 = v7;
    LOWORD(v7) = 1;
    if (v8 != 1)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_7:
    sub_10009B498(&v30, 16);
    goto LABEL_8;
  }

  if (!BYTE4(a1))
  {
LABEL_17:

    sub_10000CA2C();
    swift_allocError();
    *v21 = 17;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  LODWORD(v7) = (BYTE5(a1) >> 1) & 1;
  if (BYTE4(a1) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = BYTE6(v5);
  if ((v5 & 0xFF000000000000) == 0)
  {
    v9 = -65536;
  }

  v23 = v9;
  sub_100001AB4(&qword_1001753C8, &unk_100123340);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10011DE90;
  *(v10 + 34) = 80;
  *(v10 + 32) = v7 | 0x140;
  v11 = v46;
  v12 = v46[2];
  if (v12)
  {
    v13 = sub_1001193F0(v12, 0);
    v22 = sub_10011B610(&v30, v13 + 32, v12, v11);
    v14 = v30;
    sub_1000917E8(&v42, &v25);
    result = sub_100022644(v14);
    if (v22 != v12)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1000917E8(&v42, &v30);

    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v45;
  v17 = v43;
  LOBYTE(v5) = v44;
  v18 = HIBYTE(v44);
  if (!v13[2])
  {

    v13 = 0;
  }

  v41 = 1;
  *&v25 = 0;
  BYTE8(v25) = 1;
  *&v26 = BYTE3(v5);
  BYTE10(v26) = BYTE2(v23);
  WORD4(v26) = v23;
  *&v27 = v17;
  BYTE8(v27) = v5;
  BYTE9(v27) = v18;
  *&v28 = v16;
  *(&v28 + 1) = v10;
  v29 = v13;
  v30 = 0;
  LOBYTE(v31) = 1;
  v32 = BYTE3(v5);
  v33 = v23;
  v34 = BYTE2(v23);
  v35 = v17;
  v36 = v5;
  v37 = v18;
  v38 = v16;
  v39 = v10;
  v40 = v13;
  sub_1000267DC(&v25, v24);
  result = sub_100076980(&v30);
  v19 = v28;
  *(a5 + 32) = v27;
  *(a5 + 48) = v19;
  *(a5 + 64) = v29;
  v20 = v26;
  *a5 = v25;
  *(a5 + 16) = v20;
  return result;
}

uint64_t sub_10008D824@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5uLL);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v68[0] = v12;
  LOWORD(v68[1]) = v13;
  BYTE2(v68[1]) = BYTE2(v13);
  BYTE3(v68[1]) = BYTE3(v13);
  BYTE4(v68[1]) = BYTE4(v13);
  BYTE5(v68[1]) = BYTE5(v13);
LABEL_17:
  v25 = v68;
LABEL_18:
  v26 = sub_10010AE94(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    v67 = vmovl_u8(v4).u64[0];
    v28 = v67.u16[0] - 6 + (((v67.u16[0] - 6) & 0xC000u) >> 14);
    sub_1000D5D10(v10, v11, 4 * (v28 >> 2));
    v30 = v29;
    v66 = v31;
    v32 = v28 >> 2;
    v33 = sub_1001128D0(v10, 4 * (v28 >> 2));
    v35 = v33;
    v36 = v34;
    v37 = v34 >> 62;
    if ((v34 >> 62) <= 1)
    {
      if (!v37)
      {
        v68[0] = v33;
        LOWORD(v68[1]) = v34;
        BYTE2(v68[1]) = BYTE2(v34);
        BYTE3(v68[1]) = BYTE3(v34);
        BYTE4(v68[1]) = BYTE4(v34);
        BYTE5(v68[1]) = BYTE5(v34);
LABEL_34:
        v46 = v68;
        goto LABEL_35;
      }

      if (v33 <= v33 >> 32)
      {
        v43 = __DataStorage._bytes.getter();
        if (v43)
        {
          v44 = v43;
          v45 = __DataStorage._offset.getter();
          if (!__OFSUB__(v35, v45))
          {
            v42 = (v35 - v45 + v44);
            __DataStorage._length.getter();
            if (v42)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v37 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_34;
    }

    v65 = v27;
    v38 = *(v33 + 16);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = v39;
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v41))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = (v38 - v41 + v40);
      __DataStorage._length.getter();
      v27 = v65;
      if (v42)
      {
LABEL_32:
        v46 = v42;
LABEL_35:
        v47 = sub_10010ADC4(v46, v32);
        sub_10007676C(v35, v36);
        if (v30)
        {
          sub_1000D5D10(v30, v66, 1);
          v49 = sub_1001128D0(v30, 1uLL);
          v51 = v49;
          v52 = v50;
          v53 = v50 >> 62;
          if ((v50 >> 62) <= 1)
          {
            if (!v53)
            {
              v68[0] = v49;
              LOWORD(v68[1]) = v50;
              BYTE2(v68[1]) = BYTE2(v50);
              BYTE3(v68[1]) = BYTE3(v50);
              BYTE4(v68[1]) = BYTE4(v50);
              BYTE5(v68[1]) = BYTE5(v50);
LABEL_54:
              v62 = v68;
LABEL_55:
              v63 = sub_10010AC70(v62, 1);
              sub_10007676C(v51, v52);
              if (*(v63 + 2))
              {
                v64 = v63[32];

                *a3 = vuzp1_s8(v67, v67).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 8) = v47;
                *(a3 + 16) = v64;
                return result;
              }

              goto LABEL_64;
            }

            if (v49 > v49 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v59 = __DataStorage._bytes.getter();
            if (v59)
            {
              v60 = v59;
              v61 = __DataStorage._offset.getter();
              if (__OFSUB__(v51, v61))
              {
                goto LABEL_67;
              }

              v58 = (v51 - v61 + v60);
              result = __DataStorage._length.getter();
              if (v58)
              {
LABEL_52:
                v62 = v58;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v53 != 2)
          {
            memset(v68, 0, 14);
            goto LABEL_54;
          }

          v54 = *(v49 + 16);
          v55 = __DataStorage._bytes.getter();
          if (v55)
          {
            v56 = v55;
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v54, v57))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v58 = (v54 - v57 + v56);
            __DataStorage._length.getter();
            if (v58)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v48 = 57;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10008DE14@<X0>(uint64_t a1@<X8>)
{
  v35 = &_swiftEmptySetSingleton;
  v4 = sub_100091894();
  v5 = sub_100090E98(*(v1 + 24), v4);
  v36 = v2;

  v6 = *(v1 + 32);
  v7 = *(&_swiftEmptySetSingleton + 2);
  if (v7)
  {
    v17 = *(v1 + 32);
    v8 = sub_1001193F0(v7, 0);
    v18 = sub_10011B610(&v24, v8 + 32, v7, &_swiftEmptySetSingleton);
    v9 = v24;

    result = sub_100022644(v9);
    if (v18 != v7)
    {
      __break(1u);
      return result;
    }

    v6 = v17;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  *(v33 + 5) = *(v1 + 8);
  *(&v33[1] + 5) = *(v1 + 16);
  if (!v8[2])
  {
    v13 = v6;

    v6 = v13;
    v8 = 0;
  }

  v34 = 0;
  if (v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = -65536;
  }

  *&v20 = v12;
  BYTE8(v20) = 0;
  *&v21[0] = v11;
  WORD4(v21[0]) = v14;
  *(v21 + 11) = v33[0];
  *(&v21[1] + 2) = *(v33 + 7);
  BYTE10(v21[0]) = BYTE2(v14);
  v22 = v5;
  v23 = v8;
  v24 = v12;
  LOBYTE(v25) = 0;
  v26 = v11;
  v27 = v14;
  v28 = BYTE2(v14);
  *&v29[7] = *(v33 + 7);
  *v29 = v33[0];
  v30 = v5;
  v31 = 0;
  v32 = v8;
  sub_100076614(&v20, v19);
  sub_100091CF0(&v24);

  v15 = v22;
  *(a1 + 32) = v21[1];
  *(a1 + 48) = v15;
  *(a1 + 64) = v23;
  v16 = v21[0];
  *a1 = v20;
  *(a1 + 16) = v16;
  return result;
}

void sub_10008E010(uint64_t a1)
{
  v3 = sub_100068330(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(v1[32]);
}

Swift::Int sub_10008E0EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  v4 = sub_100068330(v2 | (v3 << 8));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(v1 + 3);
  USBDescriptor.hash(into:)(v13, *(v1 + 1), *(v1 + 8));
  v8 = *(v7 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = (v7 + 32);
    do
    {
      v10 = *v9++;
      Hasher._combine(_:)(v10);
      --v8;
    }

    while (v8);
  }

  Hasher._combine(_:)(v1[32]);
  return Hasher._finalize()();
}

Swift::Int sub_10008E1E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 1);
  v5 = v1[16];
  v6 = v1[17];
  v7 = *(v1 + 3);
  v8 = v1[32];
  Hasher.init(_seed:)();
  v9 = sub_100068330(v2 | (v3 << 8));
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(v17, v4, v5 | (v6 << 8));
  Hasher._combine(_:)(*(v7 + 16));
  v12 = *(v7 + 16);
  if (v12)
  {
    v13 = (v7 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

uint64_t sub_10008E2E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = a1[17];
  v5 = *(a1 + 3);
  v6 = a1[32];
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = *(a2 + 3);
  v11 = a2[32];
  if ((sub_10006EBF4(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v7, v8 | (v9 << 8)))
  {
    return sub_1000E4948(v5, v10) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008E3A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 7uLL);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v12;
  LOWORD(v70[1]) = v13;
  BYTE2(v70[1]) = BYTE2(v13);
  BYTE3(v70[1]) = BYTE3(v13);
  BYTE4(v70[1]) = BYTE4(v13);
  BYTE5(v70[1]) = BYTE5(v13);
LABEL_17:
  v25 = v70;
LABEL_18:
  v26 = sub_10010AFDC(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 38);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v28);
    v30 = v29;
    v67 = v27;
    v68 = v31;
    v32 = sub_1001128D0(v10, v28);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v70[0] = v32;
        LOWORD(v70[1]) = v33;
        BYTE2(v70[1]) = BYTE2(v33);
        BYTE3(v70[1]) = BYTE3(v33);
        BYTE4(v70[1]) = BYTE4(v33);
        BYTE5(v70[1]) = BYTE5(v33);
LABEL_34:
        v45 = v70;
        goto LABEL_35;
      }

      if (v32 <= v32 >> 32)
      {
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          if (!__OFSUB__(v34, v44))
          {
            v41 = (v34 - v44 + v43);
            __DataStorage._length.getter();
            if (v41)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v36 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v37 = *(v32 + 16);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      if (v41)
      {
LABEL_32:
        v45 = v41;
LABEL_35:
        v46 = sub_10010AC70(v45, v28);
        sub_10007676C(v34, v35);
        if (v30)
        {
          sub_1000D5D10(v30, v68, 8);
          v48 = sub_1001128D0(v30, 8uLL);
          v50 = v48;
          v51 = v49;
          v52 = v49 >> 62;
          if ((v49 >> 62) <= 1)
          {
            if (!v52)
            {
              v70[0] = v48;
              LOWORD(v70[1]) = v49;
              BYTE2(v70[1]) = BYTE2(v49);
              BYTE3(v70[1]) = BYTE3(v49);
              BYTE4(v70[1]) = BYTE4(v49);
              BYTE5(v70[1]) = BYTE5(v49);
LABEL_54:
              v61 = v70;
LABEL_55:
              v62 = sub_10010AEC0(v61, 1);
              sub_10007676C(v50, v51);
              if (v62[2])
              {
                v69 = vmovl_u8(v4).u64[0];
                v63 = *(v62 + 32);
                v64 = *(v62 + 33);
                v65 = *(v62 + 37);
                v66 = *(v62 + 39);

                *a3 = vuzp1_s8(v69, v69).u32[0];
                *(a3 + 4) = v67;
                *(a3 + 6) = v28;
                *(a3 + 8) = v46;
                *(a3 + 16) = v63;
                *(a3 + 17) = v64;
                *(a3 + 21) = v65;
                *(a3 + 23) = v66;
                return result;
              }

              goto LABEL_64;
            }

            if (v48 > v48 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v58 = __DataStorage._bytes.getter();
            if (v58)
            {
              v59 = v58;
              v60 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v60))
              {
                goto LABEL_67;
              }

              v57 = (v50 - v60 + v59);
              result = __DataStorage._length.getter();
              if (v57)
              {
LABEL_52:
                v61 = v57;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v52 != 2)
          {
            memset(v70, 0, 14);
            goto LABEL_54;
          }

          v53 = *(v48 + 16);
          v54 = __DataStorage._bytes.getter();
          if (v54)
          {
            v55 = v54;
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(v53, v56))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v57 = (v53 - v56 + v55);
            __DataStorage._length.getter();
            if (v57)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v47 = 57;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0xE000000000000000;
  return swift_willThrow();
}