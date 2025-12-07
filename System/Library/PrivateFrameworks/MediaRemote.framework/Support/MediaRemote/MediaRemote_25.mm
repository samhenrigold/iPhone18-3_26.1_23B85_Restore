void sub_10034DE48()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_10034DF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

char *sub_10034E1A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10034E1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10034E1C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005275F8, &unk_1004591D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10034E2CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MRAVOutputDeviceType(0);
  sub_10034E8B8(&qword_1005275E8, &unk_100459248);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10034D9A4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_10034E364(void *a1)
{
  v1 = (*((swift_isaMask & *a1) + 0x70))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 outputDevices];

    if (v3)
    {
      sub_100013424();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
LABEL_15:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
          goto LABEL_21;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_15;
    }
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_7:
  result = sub_10034E1A8(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [specialized _ArrayBuffer._getElementSlowPath(_:)() deviceType];
      swift_unknownObjectRelease();
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10034E1A8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v8;
    }
  }

  else
  {
    v11 = 32;
    do
    {
      v12 = [*(v4 + v11) deviceType];
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        sub_10034E1A8((v13 > 1), v14 + 1, 1);
        v12 = v15;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v12;
      v11 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_21:

  v16 = sub_10034E2CC(_swiftEmptyArrayStorage);

  if (*(v16 + 16))
  {
    v17 = v16 + 56;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(2u);
    v18 = Hasher._finalize()();
    v19 = -1 << *(v16 + 32);
    v20 = v18 & ~v19;
    if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      v22 = 0x746F6F7465756C62;
      while (*(*(v16 + 48) + 4 * v20) != 2)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v17 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v32 = 0xE900000000000068;
      goto LABEL_42;
    }

LABEL_26:
    if (*(v16 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5u);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v16 + 32);
      v25 = v23 & ~v24;
      if ((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        v22 = 0x6465726977;
        while (*(*(v16 + 48) + 4 * v25) != 5)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v32 = 0xE500000000000000;
        goto LABEL_42;
      }

LABEL_31:
      if (*(v16 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3u);
        v27 = Hasher._finalize()();
        v28 = -1 << *(v16 + 32);
        v29 = v27 & ~v28;
        if ((*(v17 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          v22 = 0x79616C50726143;
          while (*(*(v16 + 48) + 4 * v29) != 3)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v17 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v32 = 0xE700000000000000;
LABEL_42:

          type metadata accessor for RouteRecommendationSuppressionPolicy();
          v33 = sub_10038122C(v22, v32);
          v35 = v34;

          v36 = sub_1003810DC(v33, v35);

          return v36;
        }
      }
    }
  }

LABEL_36:

  v31 = *sub_10038108C();

  return v31;
}

uint64_t sub_10034E8B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MRAVOutputDeviceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10034E8FC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MRDRouteRecommendationSuppressionController_suppressors] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_10034E970(void *a1, void *a2)
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004508A0;
  type metadata accessor for RouteRecommendationPlayingStateSuppressor();
  sub_10034EA70(a2, v8);
  *(v5 + 32) = sub_100359E04(v8);
  type metadata accessor for RouteRecommendationLocalOutputContextSuppressor();
  *(v5 + 40) = sub_100230078();
  type metadata accessor for RouteRecommendationDisplayMonitorSuppressor();
  sub_10034EA70(a1, v8);
  *(v5 + 48) = sub_100359E04(v8);
  v6 = (*(v2 + 88))(v5);
  sub_100026A44(a2);
  sub_100026A44(a1);
  return v6;
}

uint64_t sub_10034EA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_BYTE *sub_10034EAD4(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR___MRDRouteRecommendationSuppressionController_suppressors);
  if (v4 >> 62)
  {
LABEL_15:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_12:
            __break(1u);
            return v2;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        v2 = [v7 suppressionPolicyWithContext:a1];
        swift_unknownObjectRelease();
        if (v2[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress])
        {
          return v2;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  v10 = *sub_10038108C();

  return v10;
}

id sub_10034ECB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteRecommendationSuppressionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10034ED20@<X0>(void *a1@<X8>)
{
  result = sub_10034ED14();
  *a1 = result;
  return result;
}

void sub_10034ED4C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice) = *a1;
  v3 = v2;
}

id sub_10034EDA8@<X0>(void *a1@<X8>)
{
  result = sub_10034ED9C();
  *a1 = result;
  return result;
}

void sub_10034EDD4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice) = *a1;
  v3 = v2;
}

id sub_10034EE30@<X0>(void *a1@<X8>)
{
  result = sub_10034EE24();
  *a1 = result;
  return result;
}

void sub_10034EE5C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034EEB8@<X0>(void *a1@<X8>)
{
  result = sub_10034EEAC();
  *a1 = result;
  return result;
}

void sub_10034EEE4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_10034F164(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_eventName];
  *v6 = 0xD000000000000030;
  v6[1] = 0x8000000100441570;
  v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v5[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10034F228(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_eventName];
  *v6 = 0xD000000000000030;
  v6[1] = 0x8000000100441570;
  v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10034F3F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10034F43C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_10034F510()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004592D0;
  *(v0 + 32) = sub_10034ED14();
  *(v0 + 40) = sub_10034ED9C();
  *(v0 + 48) = sub_10034EE24();
  *(v0 + 56) = sub_10034EEAC();
  return v0;
}

id sub_10034F5A8@<X0>(void *a1@<X8>)
{
  result = sub_10034F59C();
  *a1 = result;
  return result;
}

void sub_10034F5D4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy) = *a1;
  v3 = v2;
}

id sub_10034F630@<X0>(void *a1@<X8>)
{
  result = sub_10034F624();
  *a1 = result;
  return result;
}

void sub_10034F65C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034F6B8@<X0>(void *a1@<X8>)
{
  result = sub_10034F6AC();
  *a1 = result;
  return result;
}

void sub_10034F6E4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10034F740@<X0>(void *a1@<X8>)
{
  result = sub_10034F734();
  *a1 = result;
  return result;
}

void sub_10034F76C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext) = *a1;
  v3 = v2;
}

id sub_10034F7C8@<X0>(void *a1@<X8>)
{
  result = sub_10034F7BC();
  *a1 = result;
  return result;
}

void sub_10034F7F4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_10034FB44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_eventName];
  *v6 = 0xD00000000000002ALL;
  v6[1] = 0x80000001004415F0;
  v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext] = 0;
  *&v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateHostedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10034FD2C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10034FD74(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateHostedEndpointAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

unint64_t sub_10034FE48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000044;
  v7 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v8;

  v10 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v10;
}

uint64_t sub_10034FF30()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = sub_10034F59C();
  *(v0 + 40) = sub_10034F624();
  *(v0 + 48) = sub_10034F6AC();
  *(v0 + 56) = sub_10034F734();
  *(v0 + 64) = sub_10034F7BC();
  return v0;
}

id sub_100350084@<X0>(void *a1@<X8>)
{
  result = sub_100350078();
  *a1 = result;
  return result;
}

void sub_1003500B0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_10035010C@<X0>(void *a1@<X8>)
{
  result = sub_100350100();
  *a1 = result;
  return result;
}

void sub_100350138(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = *a1;
  v3 = v2;
}

id sub_100350194@<X0>(void *a1@<X8>)
{
  result = sub_100350188();
  *a1 = result;
  return result;
}

void sub_1003501C0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext) = *a1;
  v3 = v2;
}

id sub_10035021C@<X0>(void *a1@<X8>)
{
  result = sub_100350210();
  *a1 = result;
  return result;
}

void sub_100350248(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID) = *a1;
  v3 = v2;
}

id sub_1003502A4@<X0>(void *a1@<X8>)
{
  result = sub_100350298();
  *a1 = result;
  return result;
}

void sub_1003502D0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent) = *a1;
  v3 = v2;
}

unint64_t sub_100350320()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_10044F530;
  *(inited + 40) = 0xE900000000000044;
  v3 = (v0 + OBJC_IVAR___MRDCreateEndpointAnalytics_requestID);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "operationType");
  *(inited + 94) = -4864;
  swift_beginAccess();

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000100441680;
  v7 = (v1 + OBJC_IVAR___MRDCreateEndpointAnalytics_operationTypeString);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v8;

  v10 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v10;
}

id sub_1003507DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics_operationType] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_operationTypeString];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_eventName];
  *v7 = 0xD000000000000024;
  v7[1] = 0x8000000100441650;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointAnalytics_tracked] = 0;
  v8 = &v2[OBJC_IVAR___MRDCreateEndpointAnalytics_requestID];
  *v8 = a1;
  v8[1] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1003509F8()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_100350A40(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateEndpointAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_100350B2C()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = sub_100350078();
  *(v0 + 40) = sub_100350100();
  *(v0 + 48) = sub_100350298();
  *(v0 + 56) = sub_100350188();
  *(v0 + 64) = sub_100350210();
  return v0;
}

id sub_100350DA0@<X0>(void *a1@<X8>)
{
  result = sub_100350D94();
  *a1 = result;
  return result;
}

void sub_100350DCC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices) = *a1;
  v3 = v2;
}

id sub_100350E28@<X0>(void *a1@<X8>)
{
  result = sub_100350E1C();
  *a1 = result;
  return result;
}

void sub_100350E54(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice) = *a1;
  v3 = v2;
}

id sub_100350EB0@<X0>(void *a1@<X8>)
{
  result = sub_100350EA4();
  *a1 = result;
  return result;
}

void sub_100350EDC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint) = *a1;
  v3 = v2;
}

id sub_100350F38@<X0>(void *a1@<X8>)
{
  result = sub_100350F2C();
  *a1 = result;
  return result;
}

void sub_100350F64(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion) = *a1;
  v3 = v2;
}

id sub_100350FC0@<X0>(void *a1@<X8>)
{
  result = sub_100350FB4();
  *a1 = result;
  return result;
}

void sub_100350FEC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification) = *a1;
  v3 = v2;
}

id sub_100351048@<X0>(void *a1@<X8>)
{
  result = sub_10035103C();
  *a1 = result;
  return result;
}

void sub_100351074(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification);
  *(*a2 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification) = *a1;
  v3 = v2;
}

uint64_t sub_1003510C4()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004592E0;
  *(v0 + 32) = sub_100350D94();
  *(v0 + 40) = sub_100350E1C();
  *(v0 + 48) = sub_100350EA4();
  *(v0 + 56) = sub_100350FB4();
  *(v0 + 64) = sub_100350F2C();
  *(v0 + 72) = sub_10035103C();
  return v0;
}

unint64_t sub_100351144()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_10044F530;
  *(inited + 40) = 0xE900000000000044;
  v2 = (v0 + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100441700;
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v5);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000100441720;
  swift_beginAccess();

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  v8 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v8;
}

id sub_10035167C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_eventName];
  *v6 = 0xD00000000000002DLL;
  v6[1] = 0x80000001004416D0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification] = 0;
  *&v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification] = 0;
  v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1003518A4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_1003518EC(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

id sub_100351BF4@<X0>(void *a1@<X8>)
{
  result = sub_100351BE8();
  *a1 = result;
  return result;
}

void sub_100351C20(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader) = *a1;
  v3 = v2;
}

id sub_100351C7C@<X0>(void *a1@<X8>)
{
  result = sub_100351C70();
  *a1 = result;
  return result;
}

void sub_100351CA8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint) = *a1;
  v3 = v2;
}

id sub_100351D04@<X0>(void *a1@<X8>)
{
  result = sub_100351CF8();
  *a1 = result;
  return result;
}

void sub_100351D30(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint) = *a1;
  v3 = v2;
}

id sub_100351D8C@<X0>(void *a1@<X8>)
{
  result = sub_100351D80();
  *a1 = result;
  return result;
}

void sub_100351DB8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup);
  *(*a2 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup) = *a1;
  v3 = v2;
}

unint64_t sub_100351E08()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4974736575716572;
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 40) = 0xE900000000000044;
  v2 = (v0 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_requestID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001004417B0;
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v5);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001004417D0;
  v6 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  *(inited + 144) = *(v0 + v6);
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "airlayActive");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v7 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  v8 = *(v0 + v7);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = v8;

  v9 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v9;
}

id sub_100352254(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive] = 0;
  v6 = &v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_eventName];
  *v6 = 0xD000000000000037;
  v6[1] = 0x8000000100441770;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint] = 0;
  *&v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup] = 0;
  v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked] = 0;
  v7 = &v2[OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_requestID];
  *v7 = a1;
  v7[1] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100352444()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10035248C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_100352578()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004592D0;
  *(v2 + 32) = sub_100351BE8();
  v3 = sub_100351C70();
  v4 = *(v1 + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = v4;
  *(v2 + 56) = sub_100351D80();
  return v2;
}

id sub_100352BB4@<X0>(void *a1@<X8>)
{
  result = sub_100352BA8();
  *a1 = result;
  return result;
}

void sub_100352BE0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint) = *a1;
  v3 = v2;
}

id sub_100352C3C@<X0>(void *a1@<X8>)
{
  result = sub_100352C30();
  *a1 = result;
  return result;
}

void sub_100352C68(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology) = *a1;
  v3 = v2;
}

id sub_100352CC4@<X0>(void *a1@<X8>)
{
  result = sub_100352CB8();
  *a1 = result;
  return result;
}

void sub_100352CF0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint) = *a1;
  v3 = v2;
}

id sub_100352D4C@<X0>(void *a1@<X8>)
{
  result = sub_100352D40();
  *a1 = result;
  return result;
}

void sub_100352D78(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect) = *a1;
  v3 = v2;
}

id sub_100352DD4@<X0>(void *a1@<X8>)
{
  result = sub_100352DC8();
  *a1 = result;
  return result;
}

void sub_100352E00(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand) = *a1;
  v3 = v2;
}

uint64_t sub_100352E50()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  strcpy((inited + 32), "commandString");
  *(inited + 16) = xmmword_10044F550;
  *(inited + 46) = -4864;
  v3 = (v0 + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x646E616D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v6 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  v26[19] = *(v1 + v6);

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000100441860;
  v8 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(inited + 144) = *(v1 + v8);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000100441880;
  v9 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(inited + 192) = *(v1 + v9);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000015;
  *(inited + 232) = 0x80000001004418A0;
  v10 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(inited + 240) = *(v1 + v10);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000019;
  *(inited + 280) = 0x80000001004418C0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(inited + 288) = *(v1 + v11);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD000000000000021;
  *(inited + 328) = 0x80000001004418E0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  v13 = *(v1 + v12);
  *(inited + 360) = &type metadata for Int;
  *(inited + 336) = v13;
  v14 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v15 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_100353208();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = v14;
  sub_100356C10(v17, sub_100355B68, 0, isUniquelyReferenced_nonNull_native, v26);

  v19 = v26[0];
  v20 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = sub_1003534F8();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v19;
  sub_100356C10(v22, sub_100355B68, 0, v23, &v25);

  return v25;
}

__CFString *sub_100353208()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100459300;
  *(inited + 32) = 0x7469736F706D6F63;
  *(inited + 40) = 0xEB000000006E6F69;
  v3 = MRAnalyticsCompositionForDeviceInfo();
  type metadata accessor for MRAnalyticsDeviceComposition(0);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100441910;
  MRAnalyticsCompositionForDeviceInfo();
  v5 = MRAnalyticsDeviceCompositionDescription();
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v6;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000100441930;
  v7 = [(__CFString *)v1 deviceUID];
  v8 = v7;
  if (v7)
  {
  }

  *(inited + 144) = v8 != 0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x616C707269417369;
  *(inited + 184) = 0xEF65766974634179;
  *(inited + 192) = [(__CFString *)v1 isAirPlayActive];
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000010043C7A0;
  *(inited + 240) = [(__CFString *)v1 groupContainsDiscoverableGroupLeader];
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x8000000100441950;
  *(inited + 288) = [(__CFString *)v1 parentGroupContainsDiscoverableGroupLeader];
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x5472657473756C63;
  *(inited + 328) = 0xEB00000000657079;
  v9 = [(__CFString *)v1 clusterType];
  type metadata accessor for MRAVOutputDeviceClusterType(0);
  *(inited + 336) = v9;
  *(inited + 360) = v10;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000100441970;
  v11 = [(__CFString *)v1 clusterType];
  if (v11 <= 3)
  {
    v1 = off_1004CF118[v11];
    v12 = off_1004CF0F8[v11];
  }

  result = v1;
  if (result)
  {
    v14 = result;

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(inited + 408) = &type metadata for String;
    *(inited + 384) = v15;
    *(inited + 392) = v17;
    v18 = sub_10021F050(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
    swift_arrayDestroy();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003534F8()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F530;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000044;
  v2 = [v0 requestID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  v6 = [v0 reason];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
  *(inited + 96) = v8;
  *(inited + 104) = v10;
  *(inited + 120) = v11;
  strcpy((inited + 128), "userInitiated");
  *(inited + 142) = -4864;
  v12 = [v0 userInitiated];
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v12;
  v13 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v13;
}

id sub_100353960(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002BLL;
  v13[1] = 0x8000000100441830;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details] = a1;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v9[v11] = a3;
  swift_beginAccess();
  *&v9[v12] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100353AF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002BLL;
  v13[1] = 0x8000000100441830;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details] = a1;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v4[v11] = a3;
  swift_beginAccess();
  *&v4[v12] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_100353DF4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_100353E3C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_100353F28()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = sub_100352BA8();
  *(v0 + 40) = sub_100352C30();
  *(v0 + 48) = sub_100352CB8();
  *(v0 + 56) = sub_100352D40();
  *(v0 + 64) = sub_100352DC8();
  return v0;
}

id sub_1003541A4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_100354228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id sub_100354B28@<X0>(void *a1@<X8>)
{
  result = sub_100354B1C();
  *a1 = result;
  return result;
}

void sub_100354B54(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices) = *a1;
  v3 = v2;
}

id sub_100354BB0@<X0>(void *a1@<X8>)
{
  result = sub_100354BA4();
  *a1 = result;
  return result;
}

void sub_100354BDC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands);
  *(*a2 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands) = *a1;
  v3 = v2;
}

uint64_t sub_100354C2C()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  strcpy((inited + 32), "commandString");
  *(inited + 16) = xmmword_100459310;
  *(inited + 46) = -4864;
  v3 = (v0 + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x646E616D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v6 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  v40[46] = *(v1 + v6);

  *(inited + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD00000000000001DLL;
  *(inited + 136) = 0x8000000100441860;
  v8 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(inited + 144) = *(v1 + v8);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000100441880;
  v9 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(inited + 192) = *(v1 + v9);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD000000000000015;
  *(inited + 232) = 0x80000001004418A0;
  v10 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(inited + 240) = *(v1 + v10);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0xD000000000000019;
  *(inited + 280) = 0x80000001004418C0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(inited + 288) = *(v1 + v11);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD000000000000021;
  *(inited + 328) = 0x80000001004418E0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 336) = *(v1 + v12);
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x8000000100441A10;
  v13 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 384) = *(v1 + v13);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD00000000000001FLL;
  *(inited + 424) = 0x8000000100441A40;
  v14 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  *(inited + 432) = *(v1 + v14);
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = 0x8000000100441A60;
  v15 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  *(inited + 480) = *(v1 + v15);
  *(inited + 504) = &type metadata for Int;
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = 0x8000000100441A80;
  v16 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  v17 = *(v1 + v16);
  *(inited + 552) = &type metadata for Int;
  *(inited + 528) = v17;
  *(inited + 560) = 0xD000000000000017;
  *(inited + 568) = 0x8000000100441AA0;
  v18 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  v19 = *(v1 + v18);
  *(inited + 600) = &type metadata for Int;
  *(inited + 576) = v19;
  *(inited + 608) = 0xD00000000000001ALL;
  *(inited + 616) = 0x8000000100441AC0;
  v20 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  v21 = *(v1 + v20);
  *(inited + 648) = &type metadata for Int;
  *(inited + 624) = v21;
  *(inited + 656) = 0xD000000000000018;
  *(inited + 664) = 0x8000000100441AE0;
  v22 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  v23 = *(v1 + v22);
  *(inited + 696) = &type metadata for Int;
  *(inited + 672) = v23;
  *(inited + 704) = 0xD00000000000001BLL;
  *(inited + 712) = 0x8000000100441B00;
  v24 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  v25 = *(v1 + v24);
  *(inited + 744) = &type metadata for Int;
  *(inited + 720) = v25;
  *(inited + 752) = 0x74756F656D6974;
  *(inited + 760) = 0xE700000000000000;
  v26 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  v27 = *(v1 + v26);
  *(inited + 792) = &type metadata for Double;
  *(inited + 768) = v27;
  v28 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v29 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = sub_100353208();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v28;
  sub_100356C10(v31, sub_100355B68, 0, isUniquelyReferenced_nonNull_native, v40);

  v33 = v40[0];
  v34 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v35 = *(v1 + v34);
  v36 = sub_1003534F8();

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v33;
  sub_100356C10(v36, sub_100355B68, 0, v37, &v39);

  return v39;
}

id sub_1003553F8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002CLL;
  v13[1] = 0x80000001004419E0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands] = 0;
  v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details] = a1;
  *&v9[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v9[v11] = a3;
  swift_beginAccess();
  *&v9[v12] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_1003555C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command] = 0;
  v10 = &v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_commandString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin] = 0;
  v11 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion] = 0;
  v12 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout] = 0;
  v13 = &v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_eventName];
  *v13 = 0xD00000000000002CLL;
  v13[1] = 0x80000001004419E0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands] = 0;
  v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked] = 0;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details] = a1;
  *&v4[OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo] = a2;
  swift_beginAccess();
  *&v4[v11] = a3;
  swift_beginAccess();
  *&v4[v12] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_1003558D4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_10035591C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

unint64_t sub_1003559E0()
{
  v0 = sub_10003D4B4(_swiftEmptyArrayStorage, &qword_100527A10, &unk_100459878, &qword_100527A08, &qword_100459870);
  KeyPath = swift_getKeyPath();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100355FE4(0xD000000000000015, 0x8000000100459300, KeyPath, isUniquelyReferenced_nonNull_native);

  v3 = swift_getKeyPath();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100355FE4(0x6D6D6F43646E6573, 0xEC00000073646E61, v3, v4);

  return v0;
}

uint64_t sub_100355B04()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004508B0;
  *(v0 + 32) = sub_100354B1C();
  *(v0 + 40) = sub_100354BA4();
  return v0;
}

double sub_100355B68@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100020E0C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_100355BB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100527A10, &unk_100459878);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v35 = *v22;
      if ((v34 & 1) == 0)
      {
      }

      sub_1001BC5A8(&qword_100527A08, &qword_100459870);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v35;
      v16[1] = v23;
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
}

void sub_100355E74()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527A10, &unk_100459878);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void sub_100355FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003D6A4(a3, &qword_100527A08, &qword_100459870);
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
      sub_100355BB4(v16, a4 & 1);
      v11 = sub_10003D6A4(a3, &qword_100527A08, &qword_100459870);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1001BC5A8(&qword_100527A08, &qword_100459870);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100355E74();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v23 = (v21[7] + 16 * v11);
  *v23 = a1;
  v23[1] = a2;
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

void sub_100356184(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100020E0C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1001C4088(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1000038A4(v20, &qword_100527A18, &qword_100459888);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1003562E4()
{
  sub_1001BC5A8(&qword_100527AC0, &qword_100459D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x8000000100459460;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000020;
  *(inited + 72) = 0x8000000100459480;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001004594B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001004594D0;
  v1 = sub_10003D4B4(inited, &qword_100527AD0, &qword_100459DC8, &qword_100527AD8, &unk_100459DD0);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527AC8, &qword_100459DC0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356440()
{
  sub_1001BC5A8(&qword_100527AA0, &qword_100459C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "searchForBuddy");
  *(inited + 55) = -18;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x8000000100459530;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001004594B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = 0x8000000100459550;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000011;
  *(inited + 144) = 0x80000001004594D0;
  v1 = sub_10003D4B4(inited, &qword_100527AB0, &qword_100459D08, &qword_100527AB8, &qword_100459D10);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527AA8, &qword_100459D00);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1003565D0()
{
  sub_1001BC5A8(&qword_100527A80, &qword_100459B48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001004594B0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001ALL;
  *(inited + 72) = 0x8000000100459530;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000013;
  *(inited + 96) = 0x8000000100459550;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001004594D0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x8000000100459590;
  v1 = sub_10003D4B4(inited, &qword_100527A90, &qword_100459C20, &qword_100527A98, &qword_100459C28);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A88, &qword_100459C18);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356758()
{
  sub_1001BC5A8(&qword_100527A60, &qword_100459A38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x8000000100459300;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD00000000000001DLL;
  *(inited + 72) = 0x80000001004595D0;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "createEndpoint");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x8000000100459600;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD00000000000002FLL;
  *(inited + 144) = 0x8000000100459620;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000021;
  *(inited + 168) = 0x8000000100459650;
  v1 = sub_10003D4B4(inited, &qword_100527A70, &qword_100459B38, &qword_100527A78, &qword_100459B40);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A68, &qword_100459B30);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356910()
{
  sub_1001BC5A8(&qword_100527A40, &qword_100459978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001004596B0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000017;
  *(inited + 72) = 0x80000001004596D0;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "createEndpoint");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "discoverGroup");
  *(inited + 126) = -4864;
  v1 = sub_10003D4B4(inited, &qword_100527A50, &qword_100459A28, &qword_100527A58, &qword_100459A30);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A48, &qword_100459A20);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100356A84()
{
  sub_1001BC5A8(&qword_100527A20, &qword_100459890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001004596D0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000021;
  *(inited + 72) = 0x8000000100459730;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x8000000100442590;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7463656E6E6F63;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6D6D6F43646E6573;
  *(inited + 144) = 0xEB00000000646E61;
  v1 = sub_10003D4B4(inited, &qword_100527A30, &qword_100459968, &qword_100527A38, &qword_100459970);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100527A28, &qword_100459960);
  swift_arrayDestroy();
  return v1;
}

void sub_100356C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_100356184(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_1001C4088(v45, v43);
  v14 = *a5;
  v15 = sub_10000698C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10022D3B0(v20, a4 & 1);
    v15 = sub_10000698C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_10022DB84();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    sub_100026A44(v25);
    sub_1001C4088(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_1001C4088(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_100356184(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_1001C4088(v45, v43);
        v32 = *a5;
        v33 = sub_10000698C(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_10022D3B0(v37, 1);
          v33 = sub_10000698C(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          sub_100026A44(v31);
          sub_1001C4088(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_1001C4088(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_100356184(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_100045960(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1003570C4()
{
  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction))
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute))
  {
    return 1;
  }

  return *(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion);
}

uint64_t sub_1003571B8()
{
  _StringGuts.grow(_:)(19);

  String.append(_:)(*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_bundleIdentifier));
  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion))
  {
    v2 = 79;
  }

  else
  {
    v2 = 95;
  }

  v3 = 0xE100000000000000;
  String.append(_:)(*&v2);
  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute))
  {
    v4 = 65;
  }

  else
  {
    v4 = 95;
  }

  v5 = 0xE100000000000000;
  String.append(_:)(*&v4);
  if (*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction))
  {
    v6 = 67;
  }

  else
  {
    v6 = 95;
  }

  v7 = 0xE100000000000000;
  String.append(_:)(*&v6);
  v8._countAndFlagsBits = 123;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 16509;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  String.append(_:)(*(v0 + OBJC_IVAR___MRDBundleMediaRecommendationEligibility_source));
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 60;
}

id sub_100357378()
{
  result = [objc_allocWithZone(type metadata accessor for MRDMediaBundleManager()) init];
  qword_1005385A8 = result;
  return result;
}

uint64_t *sub_1003573A8()
{
  if (qword_100535B10 != -1)
  {
    swift_once();
  }

  return &qword_1005385A8;
}

uint64_t sub_10035750C(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = static os_log_type_t.default.getter();
  v5 = *sub_1000045DC();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10044EC70;
  v7 = *(*(v1 + v3) + 16);
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  v8 = v5;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v8, "[MRDRRC].MBM bundles changed, new count: (%ld)", v10);
}

uint64_t (*sub_100357608(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100357690;
}

void sub_100357690(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = static os_log_type_t.default.getter();
    v7 = *sub_1000045DC();
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10044EC70;
    v9 = *(*(v5 + v4) + 16);
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v9;
    v10 = v7;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v10, "[MRDRRC].MBM bundles changed, new count: (%ld)", v11);
  }

  free(v3);
}

uint64_t sub_1003577E4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock);
  os_unfair_lock_lock(v2 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_100357928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100357A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100357AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001BC5A8(&qword_100527B38, &qword_100459DE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for IRMBBundle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000038A4(a1, &qword_100527B38, &qword_100459DE8);
    sub_100358604(a2, a3, v9);

    return sub_1000038A4(v9, &qword_100527B38, &qword_100459DE8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1003592CC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_100357CB8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100357FA4;
  }

  else
  {
    v2 = sub_100357DCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100357DCC()
{
  v15 = v0[14];
  v16 = v0[16];
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v12 = v0[6];
  v13 = v0[13];
  v14 = *(v2 + 16);
  v14(v4);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *((swift_isaMask & *v3) + 0xB0);

  v7 = v6(v0 + 2);
  sub_100357AE0(v4, v12, v5);
  v7(v0 + 2, 0);
  (v14)(v15, v13, v1);
  v8 = objc_allocWithZone(type metadata accessor for MRDBundleMediaRecommendationEligibility());
  v9 = sub_100008EC8(v15);

  (*(v2 + 8))(v13, v1);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100357FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003581D0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001CDEF0;

  return sub_1000095F4(v5, v7);
}

void *sub_1003582A4(uint64_t a1, uint64_t a2)
{
  v5 = (*((swift_isaMask & *v2) + 0x70))();
  if (*(v5 + 16) && (v6 = sub_10000698C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100358358(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003583EC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100004E30();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100358774(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100358954(v20 + 1);
    }

    v18 = v8;
    sub_1001E45EC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100004E30();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100359668(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100358604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000698C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100006ABC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for IRMBBundle();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1003590E0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for IRMBBundle();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int sub_100358774(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100004E30();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100358954(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100358954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t *sub_100358B7C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100007BC4(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void sub_100358D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for IRMBBundle();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001BC5A8(&qword_100527BB0, &qword_100459F18);
  v43 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

unint64_t sub_1003590E0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IRMBBundle() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

void sub_1003592CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000698C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100006ABC();
      goto LABEL_7;
    }

    sub_100358D60(v15, a4 & 1);
    v25 = sub_10000698C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for IRMBBundle();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_10035944C(v12, a2, a3, a1, v18);
}

uint64_t sub_10035944C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for IRMBBundle();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1003594FC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527BA8, &qword_100459F10);
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

        v22 = v20;
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

void sub_100359668(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100358954(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1003597C8();
      goto LABEL_12;
    }

    sub_100359918(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100004E30();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003597C8()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100359918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100527BC0, &qword_100459F20);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

unint64_t sub_100359B2C(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100527BC8, &qword_100459F28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001BC5A8(&qword_100527BB0, &qword_100459F18);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001D9AC(v9, v5, &qword_100527BC8, &qword_100459F28);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000698C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for IRMBBundle();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100359D50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F34;

  return sub_1003581D0(v2, v3, v4);
}

uint64_t sub_100359E04(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100359E48(a1, v2 + 16);
  return v2;
}

uint64_t sub_100359E48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100359E60(void *a1)
{
  v3 = *((swift_isaMask & *a1) + 0x88);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = v1[5];
    v7 = v1[6];
    sub_1000326D8(v1 + 2, v6);
    if ((*(v7 + 8))(v5, v6, v7) & 1) != 0 && ((*((swift_isaMask & *a1) + 0xB8))())
    {
      goto LABEL_8;
    }
  }

  v8 = (*((swift_isaMask & *a1) + 0x70))();
  if (v8)
  {
    v5 = v8;
    v9 = v1[5];
    v10 = v1[6];
    sub_1000326D8(v1 + 2, v9);
    if ((*(v10 + 8))(v5, v9, v10))
    {
      if ((*((swift_isaMask & *a1) + 0xA0))())
      {
LABEL_8:
        v11 = *sub_10038108C();

        return v11;
      }

      type metadata accessor for RouteRecommendationSuppressionPolicy();
      v21 = sub_100381214();
      v22 = *v21;
      v23 = v21[1];

      v11 = sub_1003810DC(v22, v23);

LABEL_18:

      return v11;
    }
  }

  v12 = v3();
  if (v12)
  {
    v13 = v12;
    v14 = v1[5];
    v15 = v1[6];
    sub_1000326D8(v1 + 2, v14);
    if ((*(v15 + 8))(v13, v14, v15))
    {
      type metadata accessor for RouteRecommendationSuppressionPolicy();
      v16 = sub_100381220();
      v17 = *v16;
      v18 = v16[1];

      v11 = sub_1003810DC(v17, v18);

      goto LABEL_18;
    }
  }

  v19 = *sub_10038108C();

  return v19;
}

uint64_t sub_10035A174()
{
  sub_100026A44((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10035A1D0()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100535BA8);
  sub_100015AFC(v0, qword_100535BA8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_10035A338(uint64_t a1)
{
  v27 = a1;
  v25[1] = swift_getObjectType();
  v26 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v26);
  v25[2] = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session] = 0;
  v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask] = 0;
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_publicAssertion] = 0;
  v8 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer;
  v9 = *sub_1001D8C64();
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() bufferWithCapacity:10 category:v9 loggingPrefix:v10];

  *&v1[v8] = v11;
  swift_unknownObjectWeakAssign();
  sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = type metadata accessor for NearbySessionsAdvertiserImplementation();
  v28.receiver = v1;
  v28.super_class = v12;
  v13 = objc_msgSendSuper2(&v28, "init");
  v14 = qword_100535BA0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100535BA8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Initialize", v19, 0xCu);
    sub_100026A44(v20);
  }

  swift_unknownObjectRelease();
  return v15;
}

id sub_10035A83C()
{
  v1 = v0;
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535BA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deinit", v5, 0xCu);
    sub_100026A44(v6);
  }

  v10 = type metadata accessor for NearbySessionsAdvertiserImplementation();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10035AB80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100015AFC(v9, qword_100535BA8);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v48 = v8;
    v12 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v12 = 136315650;
    v47 = a3;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v51);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10002C9C8(0xD00000000000001DLL, 0x8000000100442ED0, &v51);
    *(v12 + 22) = 2080;
    if (a1)
    {
      v16 = [a1 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 7104878;
      v19 = 0xE300000000000000;
    }

    v20 = sub_10002C9C8(v17, v19, &v51);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] %s - %s", v12, 0x20u);
    swift_arrayDestroy();

    a3 = v47;
    v8 = v48;
  }

  else
  {
  }

  v21 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session;
  if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session))
  {
    sub_100360994();
    v22 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask))
    {

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();
    }

    *(a2 + v22) = 0;

    v23 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask))
    {

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();
    }

    *(a2 + v23) = 0;

    v24 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask;
    if (*(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask))
    {

      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      Task.cancel()();
    }

    *(a2 + v24) = 0;

    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = 0;
  }

  *(a2 + v21) = a1;
  swift_unknownObjectRelease();
  v25 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  v49 = 0;
  v50 = 0xE000000000000000;
  swift_unknownObjectRetain();
  _StringGuts.grow(_:)(27);

  v51 = 91;
  v52 = 0xE100000000000000;
  v26._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v26);

  v27._object = 0x8000000100442E70;
  v27._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v27);
  if (a1)
  {
    v28 = [a1 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33 = String._bridgeToObjectiveC()();

    [v25 logInterpolatedString:v33];

    v34 = [swift_unknownObjectRetain() nearbyInvitation];
    if (v34)
    {
      v35 = *&v34[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
      v36 = v34;

      v37 = type metadata accessor for TaskPriority();
      (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v35;
      v39[5] = v38;
      v39[6] = a3;

      v40 = sub_1001CB290(0, 0, v8, &unk_10045A180, v39);

      swift_unknownObjectRelease();
      *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_joinRequestTask) = v40;
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v43._countAndFlagsBits = 91;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v44);

      v45._countAndFlagsBits = 0xD000000000000032;
      v45._object = 0x8000000100442E90;
      String.append(_:)(v45);
      v49 = a1;
      sub_1001BC5A8(&qword_100527E88, &qword_10045A170);
      _print_unlocked<A, B>(_:_:)();
      v46 = String._bridgeToObjectiveC()();

      [v25 logErrorWithInterpolatedString:v46];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v41._countAndFlagsBits = 7104878;
    v41._object = 0xE300000000000000;
    String.append(_:)(v41);

    v48 = String._bridgeToObjectiveC()();

    [v25 logInterpolatedString:v48];
    v42 = v48;
  }
}

uint64_t sub_10035B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6[21] = v9;
  v10 = *(v9 - 8);
  v6[22] = v10;
  v6[23] = *(v10 + 64);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = sub_1001BC5A8(&qword_100527E90, &qword_10045A188);
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = sub_1001BC5A8(&qword_100527E98, &qword_10045A190);
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  v13 = sub_1001BC5A8(&qword_100527EA0, &qword_10045A198);
  v6[32] = v13;
  v6[33] = *(v13 - 8);
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_10035B58C, 0, 0);
}

uint64_t sub_10035B58C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  dispatch thunk of NearbyInvitation.$pendingMembers.getter();
  sub_10000462C(&qword_100527EA8, &qword_100527E98, &qword_10045A190, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  swift_beginAccess();
  v0[35] = &_swiftEmptySetSingleton;
  v7 = swift_task_alloc();
  v0[36] = v7;
  *v7 = v0;
  v7[1] = sub_10035B718;

  return sub_10035BEF8(0, 0);
}

uint64_t sub_10035B718(uint64_t a1)
{
  *(*v2 + 296) = a1;

  if (!v1)
  {

    return _swift_task_switch(sub_10035B82C, 0, 0);
  }

  return result;
}

uint64_t sub_10035B82C()
{
  v47 = v0;
  v1 = v0[37];
  if (!v1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
LABEL_7:

    v4 = v0[1];

    return v4();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    goto LABEL_7;
  }

  v2 = v0[35];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v46 = v1;

    sub_1003679A4(v2);

    v3 = v1;
  }

  else
  {

    v3 = sub_100367DEC(v2, v1);
  }

  if (qword_100535BA0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100535BA8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v35 = v1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v46);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v13 = Set.description.getter();
    v15 = sub_10002C9C8(v13, v14, &v46);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] New pending members: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = 0;
  v39 = v3;
  v18 = *(v3 + 56);
  v3 += 56;
  v17 = v18;
  v19 = -1;
  v20 = -1 << *(v3 - 24);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & v17;
  v22 = (63 - v20) >> 6;
  v36 = v3;
  v37 = v22;
  if ((v19 & v17) != 0)
  {
    while (1)
    {
      v23 = v16;
LABEL_22:
      v25 = v0[24];
      v24 = v0[25];
      v26 = v0[22];
      v27 = v0[21];
      v40 = v0[20];
      v44 = v0[19];
      v45 = v0[18];
      v43 = v0[16];
      v41 = v0[17];
      v42 = v0[15];
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v26 + 16))(v24, *(v39 + 48) + *(v26 + 72) * (v28 | (v23 << 6)), v27);
      v29 = *(v26 + 32);
      v29(v25, v24, v27);
      v30 = (*(v26 + 80) + 24) & ~*(v26 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = Strong;
      v29(v31 + v30, v25, v27);
      v0[6] = sub_10036C2A0;
      v0[7] = v31;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003D98;
      v0[5] = &unk_1004CF928;
      v32 = _Block_copy(v0 + 2);
      v33 = Strong;
      static DispatchQoS.unspecified.getter();
      v0[11] = _swiftEmptyArrayStorage;
      v3 = sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v1 = v41;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      (*(v43 + 8))(v41, v42);
      (*(v44 + 8))(v40, v45);

      v22 = v37;
      if (!v21)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v23 >= v22)
    {
      break;
    }

    v21 = *(v36 + 8 * v23);
    ++v16;
    if (v21)
    {
      v16 = v23;
      goto LABEL_22;
    }
  }

  v0[35] = v35;
  v34 = swift_task_alloc();
  v0[36] = v34;
  *v34 = v0;
  v34[1] = sub_10035B718;

  return sub_10035BEF8(0, 0);
}

uint64_t sub_10035BEF8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100527EA0, &qword_10045A198);
  v4 = sub_10000462C(&qword_100527ED0, &qword_100527EA0, &qword_10045A198, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_10035BFF0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100527E50, &qword_10045A150);
  v4 = sub_10000462C(&qword_100527E80, &qword_100527E50, &qword_10045A150, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_10035C0E8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_10035C0E8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036C38C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036C390;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10035C278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001D9AC(a3, v22 - v9, &qword_100521B60, &qword_10044F1A0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000038A4(v10, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_10035C5B4()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = ObjectType;
  aBlock[4] = sub_10036C064;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF810;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v14);

  return result;
}

void sub_10035C890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v57 - v5);
  v7 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (v7)
  {
    v8 = [swift_unknownObjectRetain() nearbyInvitation];
    if (v8)
    {
      v62 = v6;
      v9 = v8;
      v10 = *&v8[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];

      v11 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
      v63[0] = 91;
      v63[1] = 0xE100000000000000;
      v12._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 8285;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14._object = 0x8000000100442DB0;
      v14._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 2108704;
      v15._object = 0xE300000000000000;
      String.append(_:)(v15);
      v16 = [v7 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v21 = String._bridgeToObjectiveC()();

      [v11 logInterpolatedString:v21];

      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising) = 1;
      if (MSVDeviceIsAudioAccessory())
      {
        v22 = objc_allocWithZone(type metadata accessor for NearbyInvitationParameters());
        LOBYTE(v63[0]) = 0;
        v23 = NearbyInvitationParameters.init(serviceName:browserType:route:)();
      }

      else
      {
        v23 = 0;
      }

      [v7 routeType];
      v61 = a2;
      v37 = v7;
      sub_1001BC5A8(&qword_100527E38, &qword_10045A108);
      swift_allocObject();
      v60 = v23;
      v38 = v10;

      v39 = NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)();
      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = v39;

      v63[0] = v39;
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v43 = type metadata accessor for TaskPriority();
      v44 = *(v43 - 8);
      v58 = *(v44 + 56);
      v59 = v44 + 56;
      v45 = v62;
      v58(v62, 1, 1, v43);
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v46;
      v47[5] = v39;
      v47[6] = v40;
      v47[7] = v42;
      v48 = v61;
      v47[8] = v38;
      v47[9] = v48;

      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask) = sub_1001CB290(0, 0, v45, &unk_10045A128, v47);

      v49 = [v37 identifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v58(v45, 1, 1, v43);
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      v54[2] = 0;
      v54[3] = 0;
      v54[4] = v50;
      v54[5] = v52;
      v54[6] = v39;
      v54[7] = v53;
      v54[8] = v48;

      v55 = sub_1001CB290(0, 0, v45, &unk_10045A138, v54);

      swift_unknownObjectRelease();
      *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_invitationTask) = v55;

      return;
    }

    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100015AFC(v30, qword_100535BA8);
    v62 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63[0] = v33;
      *v32 = 136315138;
      v34 = _typeName(_:qualified:)();
      v36 = sub_10002C9C8(v34, v35, v63);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v62, v31, "[%s] No invitation to begin advertising.", v32, 0xCu);
      sub_100026A44(v33);

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100015AFC(v24, qword_100535BA8);
    v62 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v25))
    {
      v26 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = _typeName(_:qualified:)();
      v29 = sub_10002C9C8(v27, v28, v63);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_10002C9C8(0xD000000000000012, 0x8000000100442DB0, v63);
      _os_log_impl(&_mh_execute_header, v62, v25, "[%s] %s - No session to begin advertising.", v26, 0x16u);
      swift_arrayDestroy();

LABEL_13:

      return;
    }
  }

  v56 = v62;
}

uint64_t sub_10035D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v10;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  return _swift_task_switch(sub_10035D054, 0, 0);
}

uint64_t sub_10035D054()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    v5 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start());
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_10035D180;

    return v5();
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10035D180()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10035D81C;
  }

  else
  {
    v2 = sub_10035D294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035D294()
{
  v17 = v0;
  if (static Task<>.isCancelled.getter())
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_100535BA8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[16];
    if (v4)
    {
      v7 = v0[12];
      v6 = v0[13];
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v16);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_10002C9C8(v7, v6, &v16);
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Start advertising task was cancelled before completing with %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:));
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_10035D508;

    return v15(2);
  }
}

uint64_t sub_10035D508(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_10035DA44;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_10035D630;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10035D630()
{
  *(v0[16] + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_publicAssertion) = v0[21];

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(45);

  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._object = 0x8000000100442E00;
  v7._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v7);
  v0[9] = v3;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 544108320;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v4;
  v10._object = v2;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  [v5 logInterpolatedString:{v11, 91, 0xE100000000000000}];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10035D81C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v16 = v0[13];
  v4 = v0[12];
  v5 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(57);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v6._countAndFlagsBits = 91;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  v8._object = 0x8000000100442DD0;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v8);
  v0[7] = v3;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544108320;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v16;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v0[8] = v1;
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v13 = String._bridgeToObjectiveC()();

  [v5 logErrorWithInterpolatedString:v13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10035DA44()
{
  v28 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100535BA8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v25 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v26);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(v4, v25, &v26);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to make public advertiser assertion for %s: %@", v5, 0x20u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  v15 = *&v11[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  v26 = 0;
  v27 = 0xE000000000000000;
  v16 = v15;
  _StringGuts.grow(_:)(45);

  v26 = 91;
  v27 = 0xE100000000000000;
  v17._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v17);

  v18._object = 0x8000000100442E00;
  v18._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v18);
  v0[9] = v13;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 544108320;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v14;
  v21._object = v12;
  String.append(_:)(v21);
  v22 = String._bridgeToObjectiveC()();

  [v16 logInterpolatedString:v22];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10035DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_1001BC5A8(&qword_100527E40, &qword_10045A140);
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = sub_1001BC5A8(&qword_100527E48, &qword_10045A148);
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_1001BC5A8(&qword_100527E50, &qword_10045A150);
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10035E004, 0, 0);
}

uint64_t sub_10035E004()
{
  v19 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_100015AFC(v1, qword_100535BA8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v18);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Started observing invitations for: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  dispatch thunk of NearbyInvitationAdvertiser.$pendingMembers.getter();
  sub_10000462C(&qword_100527E58, &qword_100527E48, &qword_10045A148, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v11 + 8))(v10, v12);
  AsyncPublisher.makeAsyncIterator()();
  (*(v15 + 8))(v13, v14);
  swift_beginAccess();
  v0[23] = &_swiftEmptySetSingleton;
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_10035E2EC;

  return sub_10035BFF0(0, 0);
}

uint64_t sub_10035E2EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (!v1)
  {

    return _swift_task_switch(sub_10035E400, 0, 0);
  }

  return result;
}

void sub_10035E400(uint64_t a1)
{
  v32 = v1;
  v2 = v1[25];
  if (!v2)
  {
    (*(v1[20] + 8))(v1[21], v1[19]);
LABEL_5:

    v4 = v1[1];
    goto LABEL_6;
  }

  v3 = v1[26];
  static Task<>.checkCancellation()();
  if (v3)
  {
    (*(v1[20] + 8))(v1[21], v1[19]);

    v4 = v1[1];
LABEL_6:

    v4();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1[20] + 8))(v1[21], v1[19]);

    goto LABEL_5;
  }

  v5 = v1[23];
  if (*(v5 + 16) <= *(v2 + 16) >> 3)
  {
    v31[0] = v2;

    sub_100367BC8(v5);

    v6 = v2;
  }

  else
  {

    v6 = sub_100368854(v5, v2);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, v31);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v13 = Set.description.getter();
    v15 = sub_10002C9C8(v13, v14, v31);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] New connection requests: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = 0;
  v29 = v6;
  v17 = v6 + 56;
  v18 = -1;
  v19 = -1 << v6[32];
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v6 + 7);
  v21 = (63 - v19) >> 6;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_24:
      v23 = v1[11];
      v24 = v1[12];
      v25 = v1[10];
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v23 + 16))(v24, *(v29 + 6) + *(v23 + 72) * (v26 | (v22 << 6)), v25);
      v27 = sub_100362664(v24);
      (*(v23 + 8))(v24, v25, v27);
      if (!v20)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *&v17[8 * v22];
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_24;
    }
  }

  v1[23] = v2;
  v28 = swift_task_alloc();
  v1[24] = v28;
  *v28 = v1;
  v28[1] = sub_10035E2EC;

  sub_10035BFF0(0, 0);
}

double sub_10035E900(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = ObjectType;
  aBlock[4] = sub_10036BF9C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF798;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);

  return result;
}

void sub_10035EBE8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v6 - 8);
  v8 = v36 - v7;
  v9 = [a1 invitationData];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
    v36[0] = 91;
    v36[1] = 0xE100000000000000;
    v15._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17._object = 0x8000000100442D20;
    v17._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v17);
    v18 = String._bridgeToObjectiveC()();

    [v14 logInterpolatedString:v18];

    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising) = 1;
    sub_1001BC5A8(&qword_100527E38, &qword_10045A108);
    swift_allocObject();
    sub_1001C3FE0(v11, v13);
    v19 = NearbyInvitationAdvertiser.init(remoteInvitationData:provider:activityType:route:params:)();
    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser) = v19;
    v26 = v19;

    v36[0] = v26;
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v31;
    v32[5] = v26;
    v32[6] = v27;
    v32[7] = v29;
    v32[8] = a3;

    v33 = sub_1001CB290(0, 0, v8, &unk_10045A118, v32);
    sub_1001C4034(v11, v13);
    *(a2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask) = v33;
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100015AFC(v20, qword_100535BA8);
    v35 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v21))
    {
      v22 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_10002C9C8(v23, v24, v36);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_10002C9C8(0xD00000000000001CLL, 0x8000000100442D20, v36);
      _os_log_impl(&_mh_execute_header, v35, v21, "[%s] %s - No remote invitation to begin advertising.", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v34 = v35;
    }
  }
}

uint64_t sub_10035F22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return _swift_task_switch(sub_10035F254, 0, 0);
}

uint64_t sub_10035F254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    v5 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.start());
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_10035F380;

    return v5();
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10035F380()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10035F748;
  }

  else
  {
    v2 = sub_10035F494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035F494()
{
  v23 = v0;
  if (static Task<>.isCancelled.getter())
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_100535BA8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[13];
    if (v4)
    {
      v6 = v0[11];
      v7 = v0[10];
      v8 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, v22);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_10002C9C8(v7, v6, v22);
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Start advertising task was cancelled before completing with %s", v8, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v12 = v0[13];
    v14 = v0[10];
    v13 = v0[11];
    v15 = *&v12[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
    _StringGuts.grow(_:)(48);

    v22[0] = 91;
    v22[1] = 0xE100000000000000;
    v16._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v16);

    v17._object = 0x8000000100442D80;
    v17._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v14;
    v18._object = v13;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v15 logInterpolatedString:v19];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10035F748()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  _StringGuts.grow(_:)(60);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v6._countAndFlagsBits = 91;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  v8._object = 0x8000000100442D40;
  v8._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v4;
  v9._object = v3;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v0[7] = v1;
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  _print_unlocked<A, B>(_:_:)();
  v11 = String._bridgeToObjectiveC()();

  [v5 logErrorWithInterpolatedString:v11];

  v12 = v0[1];

  return v12();
}

void sub_10035F944()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v3 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v10;
  v14[5] = v12;
  v14[6] = v1;
  v14[7] = ObjectType;

  v15 = v1;
  v16 = sub_10035C278(0, 0, v5, &unk_10045A0E8, v14);
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v12;
  v17[4] = v16;
  v17[5] = ObjectType;
  v18 = objc_allocWithZone(MRGroupSessionAssertion);
  aBlock[4] = sub_10036BEE4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF720;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithCancellationHandler:v19];
  _Block_release(v19);
  if (v20)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10035FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_10035FC30, 0, 0);
}

uint64_t sub_10035FC30()
{
  v16 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100535BA8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Asserting public advertisement with ID: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(*(v0 + 40) + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser);
  *(v0 + 56) = v10;
  if (v10)
  {
    v14 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:) + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:));

    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_10035FEB8;

    return v14(1);
  }

  else
  {
    **(v0 + 16) = 0;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10035FEB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10036000C;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_10035FFE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036000C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100360070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  sub_1001CB290(0, 0, v10, &unk_10045A0F8, v12);

  return result;
}

uint64_t sub_10036019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_1003601C0, 0, 0);
}

uint64_t sub_1003601C0()
{
  v16 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100535BA8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Cancelling public advertisement assertion with ID: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = swift_task_alloc();
  v0[7] = v10;
  v11 = sub_1001BC5A8(&qword_100527E30, &qword_10045A100);
  v12 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  *v10 = v0;
  v10[1] = sub_100360410;
  v13 = v0[5];

  return Task.value.getter(v0 + 2, v13, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_100360410()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100360598;
  }

  else
  {
    v2 = sub_100360524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100360524()
{
  if (*(v0 + 16))
  {
    AnyCancellable.cancel()();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_10036068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

double sub_100360994()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session;
  v14 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  v15 = &unk_100535000;
  if (!v14)
  {
LABEL_13:
    if (v15[372] == -1)
    {
LABEL_14:
      v45 = type metadata accessor for Logger();
      sub_100015AFC(v45, qword_100535BA8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v57 = v49;
        *v48 = 136315138;
        v50 = _typeName(_:qualified:)();
        v52 = sub_10002C9C8(v50, v51, &v57);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%s] No invitation to end advertising.", v48, 0xCu);
        sub_100026A44(v49);
      }

      return result;
    }

LABEL_19:
    swift_once();
    goto LABEL_14;
  }

  v16 = qword_100535BA0;
  swift_unknownObjectRetain();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100015AFC(v17, qword_100535BA8);
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v5;
    v57 = v21;
    *v20 = 136315650;
    v22 = _typeName(_:qualified:)();
    v55 = ObjectType;
    v24 = sub_10002C9C8(v22, v23, &v57);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0xD000000000000017, 0x8000000100442CA0, &v57);
    *(v20 + 22) = 2080;
    v25 = [v14 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10002C9C8(v26, v28, &v57);

    *(v20 + 24) = v29;
    ObjectType = v55;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] %s - %s", v20, 0x20u);
    swift_arrayDestroy();
    v5 = v54;

    v15 = &unk_100535000;

    swift_unknownObjectRelease();
    v30 = *&v1[v13];
    if (!v30)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    v30 = *&v1[v13];
    if (!v30)
    {
      goto LABEL_13;
    }
  }

  v31 = [v30 nearbyInvitation];
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = *&v31[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
  v33 = v31;

  v34 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v57 = 91;
  v58 = 0xE100000000000000;
  v35._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD00000000000001BLL;
  v36._object = 0x8000000100442C80;
  String.append(_:)(v36);
  v56 = v32;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v38 = String._bridgeToObjectiveC()();

  [v34 logInterpolatedString:v38];

  v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
  v39 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask];
  if (v39 && (v40 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser]) != 0)
  {
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v5, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v40;
    v42[5] = v39;
    v42[6] = v1;
    v42[7] = v32;
    v42[8] = ObjectType;

    v43 = v1;
    sub_1001BF864(0, 0, v5, &unk_10045A0D8, v42);
  }

  else
  {
  }

  return result;
}

uint64_t sub_10036104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return _swift_task_switch(sub_100361074, 0, 0);
}

uint64_t sub_100361074()
{
  v16 = v0;
  v0[4] = v0[8];
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v0[13] = v1;
  v0[14] = v2;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[15] = sub_100015AFC(v4, qword_100535BA8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(v1, v3, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Waiting for existing advertise task on %s to finish", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[16] = v11;
  v12 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v0[17] = v12;
  *v11 = v0;
  v11[1] = sub_1003612D8;
  v13 = v0[9];

  return Task.value.getter(v12, v13, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_1003612D8()
{

  if (v0)
  {

    v1 = sub_10036C348;
  }

  else
  {
    v1 = sub_1003613F0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1003613F0()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(v4, v3, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Stopping existing advertisement on %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v11 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop());
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1003615C4;

  return v11();
}

uint64_t sub_1003615C4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100361894;
  }

  else
  {
    v2 = sub_1003616D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003616D8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = *(v0[10] + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(45);

  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._object = 0x8000000100442CF0;
  v6._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v6);
  v0[7] = v3;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 544108320;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v2;
  v9._object = v1;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v4 logInterpolatedString:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100361894()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[10];

  v4 = *(v3 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(51);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v5._countAndFlagsBits = 91;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._object = 0x8000000100442CC0;
  v7._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v7);
  v0[5] = v2;
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);
  sub_10000462C(&qword_100527E28, &qword_100527E20, &qword_10044F2F8, &protocol conformance descriptor for NearbyInvitation<A>);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 2108704;
  v9._object = 0xE300000000000000;
  String.append(_:)(v9);
  v0[6] = v1;
  _print_unlocked<A, B>(_:_:)();
  v10 = String._bridgeToObjectiveC()();

  [v4 logErrorWithInterpolatedString:v10];

  v11 = v0[1];

  return v11();
}

void sub_100361A7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer];
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v21 = 91;
    v22 = 0xE100000000000000;
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    v14._object = 0x8000000100442BF0;
    v14._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();

    [v12 logInterpolatedString:v15];

    v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising] = 0;
    v16 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertisingTask];
    if (v16)
    {
      v17 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_advertiser];
      if (v17)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v17;
        v19[5] = v16;
        v19[6] = v1;
        v19[7] = ObjectType;

        v20 = v1;
        sub_1001BF864(0, 0, v5, &unk_10045A0C8, v19);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100361D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_100361D84, 0, 0);
}

uint64_t sub_100361D84()
{
  v16 = v0;
  v0[4] = v0[6];
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v0[10] = v1;
  v0[11] = v2;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[12] = sub_100015AFC(v4, qword_100535BA8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(v1, v3, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Waiting for existing advertise task on %s to finish", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v0[14] = v12;
  *v11 = v0;
  v11[1] = sub_100361FE8;
  v13 = v0[7];

  return Task.value.getter(v12, v13, &type metadata for () + 8, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_100361FE8()
{

  if (v0)
  {

    v1 = sub_10036C34C;
  }

  else
  {
    v1 = sub_100362100;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100362100()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(v4, v3, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Stopping existing advertisement on %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v11 = (&async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop() + async function pointer to dispatch thunk of NearbyInvitationAdvertiser.stop());
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1003622D4;

  return v11();
}

uint64_t sub_1003622D4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100362514;
  }

  else
  {
    v2 = sub_1003623E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003623E8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v0[8] + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(48);

  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._object = 0x8000000100442C50;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v3 logInterpolatedString:v7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100362514()
{
  v1 = v0[16];
  v2 = v0[8];

  v3 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer);
  _StringGuts.grow(_:)(54);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v4._countAndFlagsBits = 91;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._object = 0x8000000100442C10;
  v6._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v6);
  v0[5] = v1;
  _print_unlocked<A, B>(_:_:)();
  v7 = String._bridgeToObjectiveC()();

  [v3 logErrorWithInterpolatedString:v7];

  v8 = v0[1];

  return v8();
}

double sub_100362664(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v21 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  (*(v8 + 16))(&v19 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v12, v11, v7);
  *(v14 + v13) = v1;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_10036B568;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF428;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v25 + 8))(v4, v17);
  (*(v22 + 8))(v6, v24);

  return result;
}

void sub_100362A3C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v9;
  __chkstk_darwin(v8);
  v11 = &v66 - v10;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100015AFC(v12, qword_100535BA8);
  v73 = *(v7 + 16);
  v74 = v7 + 16;
  v73(v11, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v71 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v72 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v70 = a1;
    aBlock = v19;
    *v18 = 136315650;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &aBlock);
    v68 = v13;
    v23 = a3;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10002C9C8(0xD00000000000001BLL, 0x8000000100442BD0, &aBlock);
    *(v18 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v11, v6);
    v28 = sub_10002C9C8(v25, v27, &aBlock);
    a3 = v23;

    *(v18 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] %s - %s", v18, 0x20u);
    swift_arrayDestroy();
    a1 = v70;

    a2 = v72;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v29 = *&a2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  if (v29)
  {
    v30 = kMREventGroupSessionPreLMIRequestReceived;
    v80 = sub_1003631F8;
    v81 = 0;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_1001CDC04;
    v79 = &unk_1004CF450;
    v31 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v32 = v30;
    MRAnalyticsSendEvent();
    _Block_release(v31);

    v33 = v75;
    v73(v75, a1, v6);
    v34 = objc_allocWithZone(type metadata accessor for NearbySessionsPendingParticipant(0));
    v35 = sub_100367324(v33);
    v36 = objc_allocWithZone(MRDGroupSessionInvitationRequest);
    v68 = v35;
    v37 = [v36 initWithSession:v29 pendingParticipant:v35];
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    v40 = os_log_type_enabled(v38, v39);
    v67 = a3;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v70 = a1;
      v42 = v41;
      v43 = swift_slowAlloc();
      v72 = a2;
      v44 = v43;
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v42 = 136315394;
      v46 = _typeName(_:qualified:)();
      v48 = sub_10002C9C8(v46, v47, &aBlock);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2112;
      *(v42 + 14) = v37;
      *v44 = v37;
      v49 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Parsed invitation request: - %@", v42, 0x16u);
      sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);
      a2 = v72;

      sub_100026A44(v45);

      a1 = v70;
    }

    v50 = v71;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v52 = Strong;
      v53 = v75;
      v73(v75, a1, v6);
      v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v55 = (v69 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      *(v56 + 16) = a2;
      *(v56 + 24) = v29;
      (*(v50 + 32))(v56 + v54, v53, v6);
      *(v56 + v55) = v67;
      v80 = sub_10036B60C;
      v81 = v56;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v78 = sub_100227ECC;
      v79 = &unk_1004CF4A0;
      v57 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v58 = a2;

      [v52 advertiser:v58 didReceiveInvitationRequest:v37 accessHandler:v57];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      _Block_release(v57);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock = v62;
      *v61 = 136315138;
      v63 = _typeName(_:qualified:)();
      v65 = sub_10002C9C8(v63, v64, &aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%s] Got connection request without active session. Ignoring", v61, 0xCu);
      sub_100026A44(v62);
    }
  }
}

double sub_100363238(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v26 = a1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25[-v14];
  v28 = *&a2[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  (*(v12 + 16))(&v25[-v14], a4, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = v16 + v13;
  v18 = (v16 + v13) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v12 + 32))(v19 + v16, v15, v11);
  *(v19 + v17) = v26;
  *(v19 + v18 + 8) = v27;
  aBlock[4] = sub_10036B6B8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF4F0;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v10, v32);

  return result;
}

void sub_100363624(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = aBlock - v15;
  v17 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (v17)
  {
    v18 = v17 == a2;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v31 = *(v11 + 16);
    v30 = v11 + 16;
    v31(aBlock - v15, a3, v10);
    v32 = (*(v30 + 64) + 16) & ~*(v30 + 64);
    v33 = swift_allocObject();
    (*(v30 + 16))(v33 + v32, v16, v10);
    if (a4)
    {
      v34 = &unk_10045A0A0;
      v35 = 0x65766F72707061;
      v36 = v33;
      v37 = 0xE700000000000000;
    }

    else
    {
      v34 = &unk_10045A090;
      v35 = 0x7463656A6572;
      v36 = v33;
      v37 = 0xE600000000000000;
    }

    sub_100363AE8(v34, v36, v35, v37, a3, a5);

    v38 = kMREventGroupSessionPreLMIResponseSent;
    v39 = swift_allocObject();
    *(v39 + 16) = a4 & 1;
    aBlock[4] = sub_10036B830;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001CDC04;
    aBlock[3] = &unk_1004CF568;
    v40 = _Block_copy(aBlock);
    v41 = v38;

    MRAnalyticsSendEvent();
    _Block_release(v40);
  }

  else
  {
    if (qword_100535BA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100015AFC(v19, qword_100535BA8);
    (*(v11 + 16))(v14, a3, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_10002C9C8(v23, v24, aBlock);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v11 + 8))(v14, v10);
      v29 = sub_10002C9C8(v26, v28, aBlock);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Attempted to approve connection request: %s but the requesting session is no longer active", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

double sub_100363AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a3;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a5, v9);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v24;
  *(v20 + 5) = a4;
  (*(v10 + 32))(&v20[v18], v13, v9);
  v21 = &v20[v19];
  *v21 = v25;
  v21[1] = a2;
  *&v20[(v19 + 23) & 0xFFFFFFFFFFFFFFF8] = v26;

  sub_1001BF864(0, 0, v16, &unk_10045A0B8, v20);

  return result;
}

uint64_t sub_100363D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_100363E08, 0, 0);
}

uint64_t sub_100363E08()
{
  v28 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[12] = sub_100015AFC(v5, qword_100535BA8);
  v6 = *(v3 + 16);
  v0[13] = v6;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v24 = v0[2];
    v25 = v0[3];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10002C9C8(v24, v25, &v27);
    *(v13 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_10002C9C8(v17, v19, &v27);

    *(v13 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] %s connection request: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[15] = v20;
  v26 = (v0[5] + *v0[5]);
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_100364150;

  return v26();
}

uint64_t sub_100364150()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100364294, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100364294()
{
  v24 = v0;
  (*(v0 + 104))(*(v0 + 80), *(v0 + 32), *(v0 + 64));

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v22 = *(v0 + 120);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v21 = *(v0 + 24);
    v20 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v5 = 136315906;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(v20, v21, &v23);
    *(v5 + 22) = 2080;
    sub_10000462C(&unk_100527E10, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v22(v3, v4);
    v13 = sub_10002C9C8(v10, v12, &v23);

    *(v5 + 24) = v13;
    *(v5 + 32) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 34) = v14;
    *v6 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Failed to %s: %s - error: %@", v5, 0x2Au);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);

    v15(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100364584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  *v1 = v0;
  v1[1] = sub_100009F30;

  return NearbyInvitationAdvertiser.PendingMember.approve()(v2);
}

uint64_t sub_100364630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  *v1 = v0;
  v1[1] = sub_100009F30;

  return NearbyInvitationAdvertiser.PendingMember.reject()(v2);
}

void sub_1003646DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v71 - v10;
  v72 = v11;
  __chkstk_darwin(v9);
  v13 = &v71 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_100535BA0 == -1)
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
  v20 = type metadata accessor for Logger();
  v21 = sub_100015AFC(v20, qword_100535BA8);
  v79 = *(v6 + 16);
  v79(v13, a1, v5);
  Strong = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v80 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v75 = v2;
    aBlock[0] = v26;
    *v25 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_10002C9C8(v27, v28, aBlock);
    v76 = ObjectType;
    v30 = v29;

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v73 = *(v6 + 8);
    v73(v13, v5);
    v34 = sub_10002C9C8(v31, v33, aBlock);
    ObjectType = v76;

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s] Got join request: %s", v25, 0x16u);
    swift_arrayDestroy();
    v2 = v75;
  }

  else
  {

    v73 = *(v6 + 8);
    v73(v13, v5);
  }

  v35 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  v36 = v79;
  if (v35)
  {
    v37 = [swift_unknownObjectRetain() identifier];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_100018D7C(0, &qword_100527E08, off_1004B30A0);
    v40 = v78;
    v36(v78, v80, v5);
    v41 = sub_100364FB8(v40);
    if (v41)
    {
      v42 = v41;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v43 = swift_allocObject();
        v75 = v2;
        v44 = v43;
        swift_unknownObjectWeakInit();
        v73 = v39;
        v45 = v78;
        v36(v78, v80, v5);
        v46 = (*(v6 + 80) + 24) & ~*(v6 + 80);
        v76 = ObjectType;
        v47 = (v72 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
        v49 = swift_allocObject();
        v50 = v6;
        v51 = v49;
        *(v49 + 16) = v44;
        (*(v50 + 32))(v49 + v46, v45, v5);
        *(v51 + v47) = v35;
        v52 = (v51 + v48);
        v53 = v73;
        *v52 = v74;
        v52[1] = v53;
        *(v51 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) = v76;
        aBlock[4] = sub_10036B0C4;
        aBlock[5] = v51;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100227ECC;
        aBlock[3] = &unk_1004CF310;
        v54 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [Strong advertiser:v75 didReceiveJoinRequest:v42 accessHandler:v54];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        _Block_release(v54);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v42 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v66 = 136315138;
        v68 = _typeName(_:qualified:)();
        v70 = sub_10002C9C8(v68, v69, aBlock);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v42, v65, "[%s] Failed to parse join request information", v66, 0xCu);
        sub_100026A44(v67);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v55 = v74;
    v79(v74, v80, v5);
    v42 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v56))
    {

      v73(v55, v5);
      return;
    }

    v57 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v57 = 136315394;
    v58 = _typeName(_:qualified:)();
    v60 = sub_10002C9C8(v58, v59, aBlock);

    *(v57 + 4) = v60;
    *(v57 + 12) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v73(v55, v5);
    v64 = sub_10002C9C8(v61, v63, aBlock);

    *(v57 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v42, v56, "[%s] Got join request with no active session: %s. Ignoring", v57, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_100364FB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v7 = NearbyInvitation.PendingMember.joinRequestUserInfo.getter();
  isa = 0;
  if (v8 >> 60 != 15)
  {
    v10 = v7;
    v11 = v8;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100045968(v10, v11);
  }

  v12 = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) initWithData:isa];

  if (!v12)
  {
    (*(*(v6 - 8) + 8))(a1, v6);
    return 0;
  }

  v13 = [v12 identity];
  v14 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v13];

  if (!v14)
  {
    (*(*(v6 - 8) + 8))(a1, v6);

    return 0;
  }

  v22 = v3;
  v15 = [v12 oobKeys];
  if (!v15 || (v23 = 0, v16 = v15, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v16, !v23))
  {
  }

  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  NearbyInvitation.PendingMember.invitationID.getter();
  UUID.uuidString.getter();
  (*(v22 + 8))(v5, v2);
  v18 = String._bridgeToObjectiveC()();

  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithIdentifier:v18 identity:v14 oobKeys:v19];

  (*(*(v6 - 8) + 8))(a1, v6);
  return v20;
}

void sub_1003652DC(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v34 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [objc_allocWithZone(_MRGroupSessionJoinResponseProtobuf) init];
    if (v20)
    {
      v21 = v20;
      v35 = v12;
      v36 = v9;
      v37 = v8;
      v22 = [a4 joinToken];
      v23 = [v22 joinURLString];

      if (!v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String._bridgeToObjectiveC()();
      }

      [v21 setJoinURL:v23];

      v34[1] = *&v19[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
      (*(v14 + 16))(v17, v38, v13);
      v24 = (*(v14 + 80) + 41) & ~*(v14 + 80);
      v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v27 = v40;
      *(v26 + 16) = v19;
      *(v26 + 24) = v27;
      *(v26 + 32) = v42;
      *(v26 + 40) = v39 & 1;
      (*(v14 + 32))(v26 + v24, v17, v13);
      *(v26 + v25) = v21;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
      aBlock[4] = sub_10036B18C;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CF360;
      v28 = _Block_copy(aBlock);
      v29 = v19;

      v30 = v21;
      v31 = v35;
      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v32 = v44;
      v33 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v36 + 8))(v32, v33);
      (*(v43 + 8))(v31, v45);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003657C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a4;
  v30 = a6;
  v31 = a1;
  v32 = a3;
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a5 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    (*(v10 + 16))(v13, v30, v9);
    v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v31;
    *(v26 + 5) = a2;
    (*(v10 + 32))(&v26[v24], v13, v9);
    v27 = &v26[v25];
    v28 = v34;
    *v27 = v32;
    v27[1] = v28;
    *&v26[(v25 + 23) & 0xFFFFFFFFFFFFFFF8] = v33;

    sub_1001BF864(0, 0, v16, &unk_10045A078, v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100365AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100365BC0, 0, 0);
}

uint64_t sub_100365BC0()
{
  v26 = v0;
  if (qword_100535BA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[11] = sub_100015AFC(v5, qword_100535BA8);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v22 = v0[2];
    v23 = v0[3];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10002C9C8(v22, v23, &v25);
    *(v12 + 22) = 2080;
    sub_10000462C(&qword_100527E00, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = sub_10002C9C8(v16, v18, &v25);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s pending member: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v24 = (v0[5] + *v0[5]);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_100365EF8;

  return v24();
}

uint64_t sub_100365EF8()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100366034, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100366034()
{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v12 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_10002C9C8(v3, v12, &v13);
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v9;
    *v5 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Failed to %s pending member: %@", v4, 0x20u);
    sub_1000038A4(v5, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

double sub_100366258(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a6;
  v38 = a5;
  v12 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v17 = &v35 - v16;
  v37 = a1;
  v18 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (v18)
  {
    v36 = a4;
    v19 = [v18 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v20 == a2 && v22 == a3)
    {

      v25 = a7;
      v26 = v36;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = a7;
      v26 = v36;
      if ((v24 & 1) == 0)
      {
        return result;
      }
    }

    v27 = v38;
    (*(v13 + 16))(v17, v38, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    if (v26)
    {
      v29 = swift_allocObject();
      (*(v13 + 32))(v29 + v28, v17, v12);
      v30 = v35;
      *(v29 + ((v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
      v31 = v30;
      v32 = &unk_10045A060;
      v33 = 0x65766F72707061;
      v34 = 0xE700000000000000;
    }

    else
    {
      v29 = swift_allocObject();
      (*(v13 + 32))(v29 + v28, v17, v12);
      v32 = &unk_10045A050;
      v33 = 0x7463656A6572;
      v34 = 0xE600000000000000;
    }

    sub_1003657C8(v33, v34, v32, v29, v37, v27, v25);
  }

  return result;
}

uint64_t sub_1003664EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10036650C, 0, 0);
}

uint64_t sub_10036650C()
{
  v1 = [*(v0 + 24) data];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  *v6 = v0;
  v6[1] = sub_10036660C;

  return NearbyInvitation.PendingMember.approve(userInfo:)(v3, v5, v7);
}

uint64_t sub_10036660C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100366748, 0, 0);
  }

  else
  {
    sub_100045968(v2[4], v2[5]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100366748()
{
  sub_100045968(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003667AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  *v1 = v0;
  v1[1] = sub_100009F34;

  return NearbyInvitation.PendingMember.reject()(v2);
}

void sub_100366858(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  if (v3 && (v4 = [v3 nearbyInvitation]) != 0)
  {
    v5 = *&v4[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
    v6 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v1;
  v8[4] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100367780;
  *(v9 + 24) = v8;
  v14[4] = sub_10021C408;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1001E7220;
  v14[3] = &unk_1004CF298;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = v1;

  dispatch_async_and_wait(v7, v10);

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100366B38()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100366BFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_100366D08()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100366DBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100366EBC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100366F54(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10036704C()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1003670E4(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1003671DC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100367274(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100367324(uint64_t a1)
{
  v2 = v1;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected] = 0;
  v4 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connectionRequest;
  v5 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a1, v5);
  v7 = NearbyInvitationAdvertiser.PendingMember.identifier.getter();
  v8 = &v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier];
  *v8 = v7;
  v8[1] = v9;
  v10 = objc_opt_self();
  NearbyInvitationAdvertiser.PendingMember.contactID.getter();
  v11 = String._bridgeToObjectiveC()();

  NearbyInvitationAdvertiser.PendingMember.displayName.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 basicIdentityWithIdentifier:v11 displayName:v12];

  *&v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity] = v13;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest] = 1;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden] = 0;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for NearbySessionsPendingParticipant(0);
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v6 + 8))(a1, v5);
  return v14;
}

uint64_t type metadata accessor for NearbySessionsPendingParticipant(uint64_t a1)
{
  result = qword_100535BC8;
  if (!qword_100535BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100367564(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100367638(unsigned __int8 a1)
{
  if (a1 > 0xBu)
  {
    return 0;
  }

  else
  {
    return byte_10045A1C2[a1];
  }
}

void sub_100367668(uint64_t a1)
{
  sub_100367720(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100367720(uint64_t a1)
{
  if (!qword_100527DE0)
  {
    type metadata accessor for NearbyGroup();
    v1 = type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
    if (!v2)
    {
      atomic_store(v1, &qword_100527DE0);
    }
  }
}

void sub_100367780()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = 0x6974617469766E69;
  *(inited + 40) = 0xEA00000000006E6FLL;
  if (v2)
  {
    v7 = dispatch thunk of NearbyInvitation.description.getter();
    v9 = (v6 + 48);
    *(v6 + 72) = &type metadata for String;
    if (v8)
    {
      *v9 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = (inited + 48);
    *(inited + 72) = &type metadata for String;
  }

  *v9 = 7104878;
  v8 = 0xE300000000000000;
LABEL_6:
  *(v6 + 56) = v8;
  strcpy((v6 + 80), "isAdvertising");
  *(v6 + 94) = -4864;
  v10 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising);
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 96) = v10;
  sub_10021F050(v6);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (v3)
  {
    Dictionary.description.getter();

    v11 = String._bridgeToObjectiveC()();

    [v3 setGroupSessionAdvertiserState:v11];

    isa = [*(v4 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer) history];
    if (!isa)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v3 setGroupSessionAdvertiserEvents:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003679A4(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1003692BC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1000038A4(v5, &qword_100527EB8, &qword_10045A1A8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100367BC8(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1003695B0(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1000038A4(v5, &qword_100527E68, &qword_10045A160);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

char *sub_100367DEC(unint64_t a1, char *a2)
{
  v4 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = (&v66 - v8);
  v9 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = (&v66 - v14);
  __chkstk_darwin(v13);
  v81 = (&v66 - v16);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v70 = v7;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = a2 + 56;
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = *(v77 + 48) + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      sub_1000038A4(v31, &qword_100527EB8, &qword_10045A1A8);
      v60 = v77;
      goto LABEL_53;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << a2[32];
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v15, *(a2 + 6) + v85 * v23, v9);
    v36 = sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = a2[32];
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v68 = &v66;
    __chkstk_darwin(v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 2);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        sub_1000038A4(v45, &qword_100527EB8, &qword_10045A1A8);
        a2 = sub_10036A254(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v53 = a2;
      v54 = -1 << a2[32];
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v15, *(v53 + 6) + v23 * v85, v9);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v53 + 6) + v23 * v85, v9);
            v58 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v22;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_1003698A4(v65, v66, v81, v23, v90);

  v10 = v90[0];
  v67 = v91;
LABEL_52:
  v60 = v10;
LABEL_53:
  sub_100045960(v60);
  return a2;
}

char *sub_100368854(unint64_t a1, char *a2)
{
  v4 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = (&v66 - v8);
  v9 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = (&v66 - v14);
  __chkstk_darwin(v13);
  v81 = (&v66 - v16);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v70 = v7;
  v18 = a1 + 56;
  v17 = *(a1 + 56);
  v19 = -1 << *(a1 + 32);
  v67 = ~v19;
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v73 = (63 - v19) >> 6;
  v87 = v10 + 2;
  v79 = (v10 + 6);
  v80 = (v10 + 7);
  v76 = (v10 + 4);
  v77 = a1;
  v83 = a2 + 56;
  v89 = (v10 + 1);

  v23 = 0;
  v69 = v10;
  for (i = a1 + 56; ; v18 = i)
  {
    v24 = v21;
    v25 = v23;
    if (v21)
    {
LABEL_14:
      a1 = (v24 - 1) & v24;
      v29 = *(v77 + 48) + v10[9] * (__clz(__rbit64(v24)) | (v25 << 6));
      v30 = v10[2];
      v31 = v68;
      v30(v68, v29, v9);
      v32 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v73 <= (v23 + 1) ? v23 + 1 : v73;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v73)
        {
          break;
        }

        v24 = *(v18 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v32 = 1;
      v31 = v68;
    }

    v75 = *v80;
    v75(v31, v32, 1, v9);
    v74 = *v79;
    if (v74(v31, 1, v9) == 1)
    {
      sub_1000038A4(v31, &qword_100527E68, &qword_10045A160);
      v60 = v77;
      goto LABEL_53;
    }

    v72 = *v76;
    v72(v81, v31, v9);
    v71 = sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v33 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << a2[32];
    v23 = v33 & ~v34;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) != 0)
    {
      break;
    }

    v10 = v69;
    (*v89)(v81, v9);
LABEL_22:
    v23 = v27;
    v21 = a1;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v34;
  v35 = v69[9];
  v84 = v69[2];
  v85 = v35;
  while (1)
  {
    v84(v15, *(a2 + 6) + v85 * v23, v9);
    v36 = sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v9);
    if (v37)
    {
      break;
    }

    v23 = (v23 + 1) & v82;
    v25 = v23 >> 6;
    v18 = 1 << v23;
    if (((1 << v23) & v83[v23 >> 6]) == 0)
    {
      v10 = v69;
      v88(v81, v9);
      goto LABEL_22;
    }
  }

  v82 = v36;
  v91 = v67;
  v92 = v27;
  v93 = a1;
  v10 = v77;
  v90[0] = v77;
  v90[1] = i;
  v38 = (v88)(v81, v9);
  v39 = a2[32];
  v66 = ((1 << v39) + 63) >> 6;
  v22 = 8 * v66;
  if ((v39 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v68 = &v66;
    __chkstk_darwin(v38);
    v41 = &v66 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v41, v83, v40);
    v42 = *&v41[8 * v25] & ~v18;
    v43 = *(a2 + 2);
    v81 = v41;
    *&v41[8 * v25] = v42;
    v44 = v43 - 1;
    v25 = i;
    v45 = v70;
    v46 = v73;
LABEL_26:
    v69 = v44;
    while (a1)
    {
      v47 = v27;
LABEL_38:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v84(v45, v10[6] + (v50 | (v47 << 6)) * v85, v9);
      v51 = 0;
LABEL_39:
      v75(v45, v51, 1, v9);
      if (v74(v45, 1, v9) == 1)
      {
        sub_1000038A4(v45, &qword_100527E68, &qword_10045A160);
        a2 = sub_10036A580(v81, v66, v69, a2);
        goto LABEL_52;
      }

      v72(v86, v45, v9);
      v52 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v53 = a2;
      v54 = -1 << a2[32];
      v23 = v52 & ~v54;
      v55 = v23 >> 6;
      v18 = 1 << v23;
      if (((1 << v23) & v83[v23 >> 6]) != 0)
      {
        v84(v15, *(v53 + 6) + v23 * v85, v9);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v9);
        if ((v56 & 1) == 0)
        {
          v57 = ~v54;
          do
          {
            v23 = (v23 + 1) & v57;
            v55 = v23 >> 6;
            v18 = 1 << v23;
            if (((1 << v23) & v83[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v53 + 6) + v23 * v85, v9);
            v58 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v9);
          }

          while ((v58 & 1) == 0);
        }

        v88(v86, v9);
        v59 = v81[v55];
        v81[v55] = v59 & ~v18;
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
        if ((v59 & v18) != 0)
        {
          v44 = v69 - 1;
          if (__OFSUB__(v69, 1))
          {
            __break(1u);
          }

          if (v69 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v9);
        a2 = v53;
        v10 = v77;
        v25 = i;
        v45 = v70;
        v46 = v73;
      }
    }

    if (v46 <= (v27 + 1))
    {
      v48 = v27 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        a1 = 0;
        v51 = 1;
        v27 = v49;
        goto LABEL_39;
      }

      a1 = *(v25 + 8 * v47);
      ++v27;
      if (a1)
      {
        v27 = v47;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v22;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_100369D7C(v65, v66, v81, v23, v90);

  v10 = v90[0];
  v67 = v91;
LABEL_52:
  v60 = v10;
LABEL_53:
  sub_100045960(v60);
  return a2;
}

uint64_t sub_1003692BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036A8AC(&qword_100527C80, &qword_100459F80, &qword_100527EC8, &unk_10045A1B0);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    sub_10036AAD8(v12, &qword_100527C80, &qword_100459F80, &qword_100527EB0, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1003695B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = *v2;
  sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v9 + 56;
  v30 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v30 + 48) + v17 * v12, v5);
      sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036A8AC(&qword_100527CB0, &qword_100459F88, &qword_100527E78, &qword_10045A168);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18, v5);
    sub_10036AAD8(v12, &qword_100527CB0, &qword_100459F88, &qword_100527E60, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_1003698A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000038A4(v11, &qword_100527EB8, &qword_10045A1A8);
          v45 = v61;

          return sub_10036A254(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_100369D7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v24 = *a5;
        v23 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v23 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v24 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v24;
        a5[1] = v23;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000038A4(v11, &qword_100527E68, &qword_10045A160);
          v45 = v61;

          return sub_10036A580(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}