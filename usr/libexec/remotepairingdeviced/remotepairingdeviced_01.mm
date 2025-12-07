void sub_100021B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (RPIdentity)
  {
    sub_10001E884();
    v7 = v6;
    v8 = sub_10004997C();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {
LABEL_12:

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_10000D884();
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (CUPairedPeer.verify(authTag:data:type:)())
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v5 = static os_log_type_t.fault.getter();
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10009CED0, "Unable to verify auth tags on platforms where Rapport is unavailable", 68, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100021CC0()
{

  sub_10000CADC((v0 + 24));
  sub_10000CADC((v0 + 64));

  return v0;
}

uint64_t sub_100021CF8()
{
  sub_100021CC0();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t getEnumTagSinglePayload for SystemKeychainPairingManager.PeersChangedEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemKeychainPairingManager.PeersChangedEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100021EC8()
{
  result = qword_1000999D8;
  if (!qword_1000999D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999D8);
  }

  return result;
}

void sub_100022030(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10002203C@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      result = sub_1000221A8(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a1 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return result;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1000221A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_100022260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000222C4(void *a1)
{
  v1 = [a1 acl];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100022330(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100022390(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setSecretKey:isa];
}

unint64_t sub_100022420()
{
  result = qword_1000999F8;
  if (!qword_1000999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000999F8);
  }

  return result;
}

unint64_t sub_1000224AC()
{
  result = qword_10009A8D0;
  if (!qword_10009A8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A8D0);
  }

  return result;
}

uint64_t sub_1000224F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100013414(a2, a3);
  sub_10000CC04();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000225B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000226F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002273C()
{
  sub_10000EC4C(v1, v2);
  sub_10000EC4C(v3, v0);

  return sub_10000EC4C(v1, v2);
}

id sub_10002277C()
{

  return sub_10004FCC0(v1, v2, v0, 0);
}

BOOL sub_1000227CC()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_10002285C(uint64_t a1, uint64_t a2)
{
  *(v4 - 104) = v3;
  *(v4 - 128) = a1;
  *(v4 - 120) = a2;
  sub_10000E8A4((v4 - 128), (v2 + 96));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000228A0()
{
}

id sub_1000228D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10004FCC0(a1, a2, a3, 0);
}

double sub_100022910()
{
  result = 0.0;
  v2 = (v0 - 128);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

_OWORD *sub_1000229AC()
{

  return sub_10000E8A4((v0 - 240), (v0 - 160));
}

uint64_t sub_1000229C4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

_OWORD *sub_1000229DC()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_10000E8A4(v4, (v2 - 240));
}

_OWORD *sub_1000229F8()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_10000E8A4(v4, (v2 - 128));
}

uint64_t sub_100022A14()
{

  return swift_dynamicCast();
}

uint64_t sub_100022A30()
{

  return swift_dynamicCast();
}

id sub_100022A48(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100022A60()
{

  return swift_beginAccess();
}

uint64_t sub_100022A84()
{
  v3 = *(v0 + 48);

  return sub_10000DF50(v3, v1);
}

uint64_t sub_100022B2C()
{
}

BOOL sub_100022B4C()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100022B6C()
{

  return type metadata accessor for UUID();
}

uint64_t sub_100022B8C(uint64_t a1)
{
  *(v1 - 192) = a1;

  return __DataStorage._offset.getter();
}

uint64_t sub_100022BA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  v8 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v7);
  if (result)
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    sub_100024E88(a1, a2, a3);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000C600(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100024E88(*(v3 + 16), *(v3 + 24), *(v3 + 32));
    v14 = String.init<A>(describing:)();
    v16 = sub_10000C600(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v7, "DeviceInitiatedPairingService state changed %{public}s -> %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return result;
}

unint64_t sub_100022D20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_100024E88(a1, a2, a3);
  sub_100022BA4(v7, v8, v9);
  sub_100024F84(v7, v8, v9);

  return sub_100024F84(a1, a2, a3);
}

void sub_100022DB0()
{
  sub_10000D060();
  v27 = v1;
  v28 = v0;
  v3 = v2;
  v26 = sub_100013414(&qword_100099B48, &qword_100077648);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v4);
  v5 = sub_100013414(&qword_100099488, &unk_100077650);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v6);
  v8 = (&v23 - v7);
  v9 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000EDF0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100024F24(v3, v8, &qword_100099488, &unk_100077650);
    v25 = *v8;
    (*(v11 + 32))(v18, v8 + *(v5 + 48), v9);
    XPCDictionary.entitlements.getter();
    sub_100024A1C();
    v24 = *(v11 + 8);
    v24(v15, v9);
    v19 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10009CED0, "Handling new browser request", 28, 2, _swiftEmptyArrayStorage);
    sub_10000D090();
    v20 = swift_allocObject();
    v21 = v27;
    *(v20 + 16) = v28;
    *(v20 + 24) = v21;

    sub_100023274(v22, v25, sub_100024D34, v20);
    v24(v18, v9);
  }

  sub_1000135A0();
}

uint64_t sub_100023148(void (*a1)(char *))
{
  v2 = sub_100013414(&qword_100099B48, &qword_100077648);
  __chkstk_darwin(v2);
  v4 = &v6 - v3;
  EmptyResponse.init()();
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_100022560(v4, &qword_100099B48, &qword_100077648);
}

uint64_t sub_100023210(uint64_t a1)
{
  dispatch thunk of XPCConnection.activate()();
  v1 = static os_log_type_t.debug.getter();
  v2 = qword_10009CED0;

  return os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Started device-initiated network pairing XPC service", 52, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100023274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10009CED0, "Received client browse registration", 35, 2, _swiftEmptyArrayStorage);
  type metadata accessor for PairableHostsBrowseRegistration();
  swift_allocObject();

  v8 = sub_100041C64(a2, a3, a4);
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  sub_10000CBD0();
  v9 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

  sub_100023594(v8);
}

uint64_t sub_1000233F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v4);
  v6 = &v10[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100024F24(a1, v6, &unk_1000994A0, &unk_100077090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = static os_log_type_t.info.getter();
        os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10009CED0, "Browser client disconnected. Unregistering", 42, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v9 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10009CED0, "Unexpected message from browser client. Unregistering.", 54, 2, _swiftEmptyArrayStorage);
      }

      sub_100022560(v6, &unk_1000994A0, &unk_100077090);
      sub_100023D60();
    }
  }

  return result;
}

uint64_t sub_100023594(uint64_t a1)
{
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v3 = type metadata accessor for BonjourBrowser.Mode();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for BonjourService();
  sub_10000CBBC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v16 = v15 - v14;
  v17 = v1[2];
  if (v17)
  {
    if (v17 == 1)
    {
      static RemotePairingError.invalidOperation.getter();
      sub_100024D84(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      swift_allocError();
      sub_100024D84(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      Error<>.init(_:_:)();
      return swift_willThrow();
    }

    else
    {
      v27 = v1[3];
      v26 = v1[4];
      v38[0] = v1[2];

      sub_100024E88(v17, v27, v26);
      sub_10006480C(&v39, a1);

      v28 = 1 << *(v27 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v27 + 64);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      if (v30)
      {
        goto LABEL_14;
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v33 >= v31)
        {

          sub_100022D20(v38[0], v27, v26);
        }

        v30 = *(v27 + 64 + 8 * v33);
        ++v32;
        if (v30)
        {
          v32 = v33;
          do
          {
LABEL_14:
            v30 &= v30 - 1;

            sub_100041E08();
          }

          while (v30);
          continue;
        }
      }

      __break(1u);
    }
  }

  else
  {
    type metadata accessor for BonjourBrowser();
    (*(v12 + 104))(v16, enum case for BonjourService.pairableHost(_:), v10);
    [objc_allocWithZone(CUNetLinkManager) init];
    sub_100022260((v1 + 7), v38);
    (*(v5 + 104))(v9, enum case for BonjourBrowser.Mode.onDemand(_:), v3);
    v19 = BonjourBrowser.__allocating_init(service:includePeerToPeer:netLinkManager:pairingManager:mode:)();
    sub_10000CBD0();
    v20 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v21 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;

    dispatch thunk of BonjourBrowser.resultsChangedHandler.setter();

    sub_100013414(&unk_100099B70, &unk_100077678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077580;
    *(inited + 32) = a1;
    if (sub_10004997C())
    {

      sub_100057B6C(inited);
      v25 = v24;
    }

    else
    {
      swift_setDeallocating();

      sub_100024D3C();
      v25 = &_swiftEmptySetSingleton;
    }

    type metadata accessor for UUID();
    type metadata accessor for DiscoveredPairableHost(0);
    sub_100025064();
    sub_100024D84(v34, v35, &protocol conformance descriptor for UUID);
    v36 = Dictionary.init(dictionaryLiteral:)();

    sub_100022D20(v25, v36, v19);
    dispatch thunk of BonjourBrowser.start(queue:)();
  }

  return result;
}

uint64_t sub_100023B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DiscoveredBonjourAdvert();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for BonjourBrowser.Change.Kind();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    BonjourBrowser.Change.kind.getter();
    v12 = (*(v8 + 88))(v10, v7);
    if (v12 == enum case for BonjourBrowser.Change.Kind.addedOrUpdated(_:))
    {
      BonjourBrowser.Change.advert.getter();
      sub_10002403C();
    }

    else
    {
      if (v12 != enum case for BonjourBrowser.Change.Kind.lost(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      BonjourBrowser.Change.advert.getter();
      sub_100024658();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_100023D60()
{
  sub_10000D060();
  v2 = v1;
  sub_100013414(&qword_100099B50, &qword_1000779B0);
  sub_10000D8B0();
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  sub_100013414(&qword_100099B60, &qword_100077668);
  sub_10000CC04();
  __chkstk_darwin(v6);
  sub_10000EDF0();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  sub_100041DCC();
  v13 = v0[2];
  if (v13 >= 2)
  {
    v15 = v0[3];
    v14 = v0[4];
    v24 = v15;
    v25 = v13;

    sub_1000674F8(v2);

    v16 = v25;
    if (sub_100023FFC(v25))
    {
      v23[1] = v16;
      v23[2] = v14;
      v23[3] = v0;
      dispatch thunk of BonjourBrowser.cancel()();
      while (*(v15 + 16))
      {
        v17 = sub_100024DCC(v15);
        v19 = v18;
        v21 = v20;
        sub_100013414(&qword_100099B68, &qword_100077670);
        Dictionary._Variant.remove(at:)();
        sub_100024E0C(v17, v19, v21 & 1);
        sub_100024E18(v9, v12);
        v22 = type metadata accessor for DiscoveredBonjourAdvert();
        sub_1000223E8(v5, 1, 1, v22);
        sub_10002A048();
        sub_100022560(v5, &qword_100099B50, &qword_1000779B0);
        sub_10002A750();
        sub_100022560(v12, &qword_100099B60, &qword_100077668);
        v15 = v24;
      }

      sub_100022D20(0, 0, 0);
    }

    else
    {

      sub_100022D20(v16, v15, v14);
    }
  }

  sub_1000135A0();
}

BOOL sub_100023FFC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_10002403C()
{
  sub_10000D060();
  v2 = v1;
  v71 = v3;
  v4 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v10 = v9 - v8;
  sub_100013414(&qword_100099B50, &qword_1000779B0);
  sub_10000D8B0();
  __chkstk_darwin(v11);
  v13 = v66 - v12;
  type metadata accessor for UUID();
  sub_10000CBBC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000EDF0();
  __chkstk_darwin(v17);
  v21 = v66 - v20;
  if (v0[2] < 2uLL)
  {
    goto LABEL_2;
  }

  v69 = v19;
  v70 = v18;
  v23 = v0[3];
  v22 = v0[4];

  if (v22 == v2)
  {
    v67 = v0;
    v68 = v24;

    v26 = v71;
    DiscoveredBonjourAdvert.identifier.getter();
    v27 = sub_10004C624(v21, v23);
    v29 = *(v15 + 8);
    v28 = (v15 + 8);
    v30 = v21;
    v31 = v29;
    v29(v30, v70);
    if (v27)
    {
      (*(v6 + 16))(v13, v26, v4);
      sub_1000223E8(v13, 0, 1, v4);
      sub_10002A048();

      sub_100022560(v13, &qword_100099B50, &qword_1000779B0);

LABEL_2:
      sub_1000135A0();
      return;
    }

    v66[1] = v28;
    (*(v6 + 16))(v10, v26, v4);
    v32 = v67;
    sub_100022260((v67 + 7), v74);
    v33 = v32[5];
    type metadata accessor for DiscoveredPairableHost(0);
    swift_allocObject();
    v34 = v33;
    sub_100029D38();
    v36 = v35;
    v37 = static os_log_type_t.default.getter();
    v38 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v37))
    {
      v39 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      v74[0] = v66[0];
      *v39 = 136315138;
      v40 = *(v36 + 16);
      v41 = *(v36 + 24);

      v42 = sub_10000C600(v40, v41, v74);
      v43 = v23;
      v44 = v31;
      v45 = v42;

      *(v39 + 4) = v45;
      v31 = v44;
      v23 = v43;
      _os_log_impl(&_mh_execute_header, v38, v37, "Created new wirelessly pairable host: %s", v39, 0xCu);
      v46 = v66[0];
      sub_10000CADC(v66[0]);
      sub_10000D8D4(v46);
      sub_10000D8D4(v39);
    }

    v66[0] = v22;
    v47 = v69;
    DiscoveredBonjourAdvert.identifier.getter();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v23;
    sub_100068FBC(v36, v47, isUniquelyReferenced_nonNull_native);
    v31(v47, v70);
    v71 = v74[0];
    if ((v68 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_100024D84(&unk_10009ADC0, type metadata accessor for PairableHostsBrowseRegistration, &unk_100078050);
      Set.Iterator.init(_cocoa:)();
      v50 = v74[0];
      v49 = v74[1];
      v51 = v74[2];
      v52 = v74[3];
      v53 = v74[4];
    }

    else
    {
      v54 = -1 << *(v68 + 32);
      v49 = v68 + 56;
      v51 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v53 = v56 & *(v68 + 56);
      v52 = 0;
    }

    if (v50 < 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v57 = v52;
      v58 = v53;
      v59 = v52;
      if (!v53)
      {
        break;
      }

LABEL_22:
      v60 = (v58 - 1) & v58;
      v61 = *(*(v50 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));

      if (!v61)
      {
LABEL_28:
        sub_1000134CC(v50);
        v63 = v68;

        v64 = v71;

        v65 = v66[0];

        sub_100022D20(v63, v64, v65);

        goto LABEL_2;
      }

      while (1)
      {
        sub_100041E08();

        v52 = v59;
        v53 = v60;
        if ((v50 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_24:
        v62 = __CocoaSet.Iterator.next()();
        if (v62)
        {
          v72 = v62;
          type metadata accessor for PairableHostsBrowseRegistration();
          swift_dynamicCast();
          v59 = v52;
          v60 = v53;
          if (v73)
          {
            continue;
          }
        }

        goto LABEL_28;
      }
    }

    while (1)
    {
      v59 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v59 >= ((v51 + 64) >> 6))
      {
        goto LABEL_28;
      }

      v58 = *(v49 + 8 * v59);
      ++v57;
      if (v58)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1000135A0();
  }
}

void sub_100024658()
{
  sub_10000D060();
  v2 = v1;
  sub_100013414(&qword_100099B50, &qword_1000779B0);
  sub_10000D8B0();
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = type metadata accessor for UUID();
  sub_10000CBBC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = v0[2];
  if (v13 < 2)
  {
LABEL_2:
    sub_1000135A0();
    return;
  }

  v15 = v0[3];
  v14 = v0[4];

  if (v14 == v2)
  {

    DiscoveredBonjourAdvert.identifier.getter();
    sub_100064018();
    if (v18)
    {
      v19 = v17;
      LODWORD(v37) = swift_isUniquelyReferenced_nonNull_native();
      v38 = v15;
      v20 = *(v15 + 24);
      sub_100013414(&qword_100099B58, &qword_100077660);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v37, v20);
      v21 = v38;
      v22 = v38[6];
      v36 = *(v8 + 8);
      v36(v22 + *(v8 + 72) * v19, v6);
      v35 = *(v21[7] + 8 * v19);
      type metadata accessor for DiscoveredPairableHost(0);
      sub_100025064();
      sub_100024D84(v23, v24, &protocol conformance descriptor for UUID);
      v37 = v21;
      v25 = v35;
      _NativeDictionary._delete(at:)();
      v36(v12, v6);
      v26 = static os_log_type_t.default.getter();
      v27 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v26))
      {
        v28 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = v36;
        *v28 = 136315138;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);

        v31 = sub_10000C600(v30, v29, &v38);

        *(v28 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v27, v26, "Removing wireless pairing host %s because the wireless pairing advert was lost", v28, 0xCu);
        v32 = v36;
        sub_10000CADC(v36);
        sub_10000D8D4(v32);
        sub_10000D8D4(v28);
      }

      v33 = type metadata accessor for DiscoveredBonjourAdvert();
      sub_1000223E8(v5, 1, 1, v33);
      sub_10002A048();
      sub_100022560(v5, &qword_100099B50, &qword_1000779B0);
      sub_10002A750();

      v34 = v37;

      sub_100022D20(v13, v34, v14);
    }

    else
    {
      (*(v8 + 8))(v12, v6);
    }

    goto LABEL_2;
  }

  sub_1000135A0();
}

uint64_t sub_100024A1C()
{
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v0);
  sub_10000CBDC();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = _RPIsAppleInternal();
    if ((result & 1) == 0)
    {
      sub_100024D84(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.permissionDenied.getter();
      sub_100024D84(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      swift_allocError();
      Error<>.init(_:_:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100024B90()
{
  sub_100024F84(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_10000CADC((v0 + 56));
  return v0;
}

uint64_t sub_100024BCC()
{
  sub_100024B90();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100024C24(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100024C3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024C50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100024D04(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100024D3C()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100024D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100024E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_100099B60, &qword_100077668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024E88(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100024EE0()
{

  sub_10000D090();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100024F24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013414(a3, a4);
  sub_10000CC04();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100024F84(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100024FD4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100025014(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10002507C()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002509C(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.info.getter();
  v4 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v3);
  if (result)
  {

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v2 + 24);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&_mh_execute_header, v4, v3, "BT Peers updated. Total count: %ld", v6, 0xCu);
  }

  return result;
}

BOOL sub_1000251D8()
{
  sub_10001E884();
  v0 = sub_10004997C();

  return v0 != 0;
}

BOOL sub_100025318()
{
  if (remotePairingIsEnabled())
  {
    if (static Defaults.deviceAllowBluetoothDeviceDiscovery.getter())
    {
      if (sub_1000251D8())
      {
        sub_10000D488(v0 + 24, v13);

        v2 = sub_100061FD0(v1);

        if (v2 <= 0)
        {
          if (*(v0 + 128) != 1)
          {
            return 1;
          }

          v12 = static os_log_type_t.error.getter();
          os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "Rejecting incoming BT connection as service is shutting down", 60, 2, _swiftEmptyArrayStorage);
        }

        else
        {
          v3 = static os_log_type_t.error.getter();
          v4 = qword_10009CED0;
          result = os_log_type_enabled(qword_10009CED0, v3);
          if (!result)
          {
            return result;
          }

          v6 = sub_10000D030();
          *v6 = 134217984;
          v7 = *(v0 + 24);
          if ((v7 & 0xC000000000000001) != 0)
          {
            sub_1000272E0();
            v8 = __CocoaSet.count.getter();
          }

          else
          {
            v8 = *(v7 + 16);
          }

          *(v6 + 4) = v8;

          _os_log_impl(&_mh_execute_header, v4, v3, "Rejecting incoming BT connection as we already have %ld BT peers", v6, 0xCu);
          sub_10000D8D4(v6);
        }
      }

      else
      {
        v11 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10009CED0, "Rejecting incoming BT connection due to no hosts being paired", 61, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v10 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10009CED0, "Rejecting incoming BT connection due to 'deviceAllowBluetoothDeviceDiscovery' not being set to true", 99, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10009CED0, "Rejecting incoming BT connection as RemotePairing support is disabled", 69, 2, _swiftEmptyArrayStorage);
  }

  return 0;
}

void sub_100025504(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v10 = v9 - v8;
  type metadata accessor for ControlChannelConnection.Options.Device();
  sub_10000CBBC();
  v47 = v12;
  v48 = v11;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v15 = v14 - v13;
  v16 = static os_log_type_t.default.getter();
  v17 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v16))
  {
    v18 = sub_10000D030();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = a1;
    *v19 = a1;
    v20 = a1;
    _os_log_impl(&_mh_execute_header, v17, v16, "Received new CBConnection from peer: %@", v18, 0xCu);
    sub_100027268(v19);
    sub_10000D8D4(v19);
    sub_10000D8D4(v18);
  }

  if (sub_100025318())
  {
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    v21 = type metadata accessor for BluetoothLEConnectionControlChannelTransport();
    swift_allocObject();
    v22 = a1;
    v51[3] = v21;
    v51[4] = &protocol witness table for BluetoothLEConnectionControlChannelTransport;
    v51[0] = BluetoothLEConnectionControlChannelTransport.init(connection:)();
    v23 = *(v2 + 40);
    v24 = v47;
    (*(v47 + 16))(v10, v15, v48);
    (*(v6 + 104))(v10, enum case for ControlChannelConnection.Options.device(_:), v4);
    v25 = *(v2 + 136);
    v50[3] = type metadata accessor for SystemKeychainPairingManager();
    v50[4] = sub_10000D0E0(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
    type metadata accessor for ControlChannelConnection();

    v26 = v23;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    swift_allocObject();
    v27 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    sub_100022260(v2 + 48, v51);
    dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
    sub_100022260(v2 + 88, v51);
    dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
    swift_beginAccess();

    sub_10006463C(v50, v27, v28, v29, v30, v31, v32, v33, v47, v48, v25);
    swift_endAccess();

    sub_10002509C(v34);
    sub_10000CBD0();
    v35 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v36 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v38 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v39 = swift_allocObject();
    swift_weakInit();

    sub_10000D090();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v38;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.start()();

    (*(v24 + 8))(v15, v49);
    sub_1000135A0();
  }

  else
  {
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v41))
    {
      v42 = sub_10000D030();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = a1;
      *v43 = a1;
      v44 = a1;
      _os_log_impl(&_mh_execute_header, v17, v41, "Rejecting bluetooth control channel connection from peer: %@", v42, 0xCu);
      sub_100027268(v43);
      sub_10000D8D4(v43);
      sub_10000D8D4(v42);
    }

    sub_1000135A0();

    sub_100025CEC(v45);
  }
}

uint64_t sub_100025A8C(uint64_t a1, uint64_t a2)
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

      sub_10002509C(v5);
    }
  }

  return result;
}

uint64_t sub_100025B54(uint64_t a1, uint64_t a2)
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
        if ((sub_100069E94() & 1) == 0)
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

uint64_t sub_100025CEC(void *a1)
{
  v2 = v1;
  type metadata accessor for BluetoothLEConnectionControlChannelTransport();
  swift_allocObject();
  v4 = a1;
  v5 = BluetoothLEConnectionControlChannelTransport.init(connection:)();
  swift_beginAccess();

  sub_100064A30(&v18, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17);
  swift_endAccess();

  sub_10000CBD0();
  v12 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;

  dispatch thunk of BluetoothLEConnectionControlChannelTransport.start(withTargetQueue:eventHandler:)();
}

uint64_t sub_100025E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v4 = type metadata accessor for ControlChannelMessageEnvelope.Message();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ControlChannelConnection.PeerType();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlChannelMessageEnvelope();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ControlChannelMessage();
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ControlChannelTransportEvent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v15 + 16))(v17, a1, v14);
    if ((*(v15 + 88))(v17, v14) == enum case for ControlChannelTransportEvent.transportStarted(_:))
    {
      v37 = v9;
      (*(v15 + 8))(v17, v14);
      v19 = static os_log_type_t.default.getter();
      v20 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v4;
        v23 = v11;
        v24 = v22;
        v46 = v22;
        *v21 = 136446210;
        v25 = dispatch thunk of BluetoothLEConnectionControlChannelTransport.id.getter();
        v27 = sub_10000C600(v25, v26, &v46);

        *(v21 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v19, "Rejected peer connection %{public}s started. Will send connection rejected message", v21, 0xCu);
        sub_10000CADC(v24);
        v11 = v23;
        v4 = v36;
      }

      v28 = enum case for ControlChannelMessage.Event.connectionRejected(_:);
      v29 = type metadata accessor for ControlChannelMessage.Event();
      (*(*(v29 - 8) + 104))(v13, v28, v29);
      v30 = v43;
      (*(v11 + 104))(v13, enum case for ControlChannelMessage.event(_:), v43);
      (*(v38 + 104))(v40, enum case for ControlChannelConnection.PeerType.host(_:), v39);
      (*(v11 + 16))(v6, v13, v30);
      (*(v41 + 104))(v6, enum case for ControlChannelMessageEnvelope.Message.plain(_:), v4);
      v31 = v11;
      v32 = v42;
      ControlChannelMessageEnvelope.init(originatedBy:sequenceNumber:message:)();
      v33 = v45;
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      type metadata accessor for BluetoothLEConnectionControlChannelTransport();

      JSONDataBasedControlChannelTransport.send(message:invokingCompletionHandlerOn:completion:)();

      (*(v44 + 8))(v32, v37);
      (*(v31 + 8))(v13, v30);
    }

    else
    {

      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

uint64_t sub_100026420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = static os_log_type_t.default.getter();
    v6 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136446210;
      v9 = dispatch thunk of BluetoothLEConnectionControlChannelTransport.id.getter();
      v11 = sub_10000C600(v9, v10, v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "Completed send of connection rejected message to rejected peer connection %{public}s. Invalidating", v7, 0xCu);
      sub_10000CADC(v8);
    }

    dispatch thunk of BluetoothLEConnectionControlChannelTransport.invalidate()();
    swift_beginAccess();
    sub_1000676B4(v4);
    swift_endAccess();
  }

  return result;
}

void sub_10002658C(uint64_t a1)
{
  if (CBConnection)
  {
    v2 = *(v1 + 40);
    sub_10000CBD0();
    v3 = swift_allocObject();
    swift_weakInit();
    v12[4] = sub_100027250;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1000499CC;
    v12[3] = &unk_10008F720;
    v4 = _Block_copy(v12);

    xpc_set_event_stream_handler("com.apple.bluetooth.connections", v2, v4);
    _Block_release(v4);
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    v6 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v5))
    {
      v7 = sub_10000D030();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000C600(v9, v10, v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v5, "Not starting %s as CoreBluetooth is not available at runtime", v7, 0xCu);
      sub_10000CADC(v8);
      sub_10000D8D4(v8);
      sub_10000D8D4(v7);
    }
  }
}

uint64_t sub_100026750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = static os_log_type_t.default.getter();
    v4 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_100099CE0, &qword_100077D90);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000C600(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v3, "Received CBConnection XPC event %s", v5, 0xCu);
      sub_10000CADC(v6);
    }

    objc_allocWithZone(CBConnection);
    v10 = swift_unknownObjectRetain();
    v11 = sub_100027184(v10);
    sub_100025504(v11);
  }

  return result;
}

void sub_1000269C8()
{
  v30 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v29 = v5 - v4;
  if (*(v0 + 128))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + 128) = 1;
    sub_10000D488(v0 + 24, v32);
    v11 = *(v0 + 24);
    if ((v11 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D270();
      sub_10000D0E0(v12, v13, &protocol conformance descriptor for ControlChannelConnection);
      Set.Iterator.init(_cocoa:)();
      v11 = v33;
      v14 = v34;
      v16 = v35;
      v15 = v36;
      v17 = v37;
    }

    else
    {
      v14 = v11 + 56;
      v16 = ~(-1 << *(v11 + 32));
      sub_10000D89C();
      v17 = v18 & v19;

      v15 = 0;
    }

    v20 = (v16 + 64) >> 6;
    v28 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v21 = (v2 + 104);
    v22 = (v2 + 8);
    if (v11 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v23 = v15;
      v24 = v17;
      v25 = v15;
      if (!v17)
      {
        break;
      }

LABEL_13:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v11 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
LABEL_19:
        sub_1000134CC(v11);
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v21)(v29, v28, v30);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v22)(v29, v30);
        v15 = v25;
        v17 = v26;
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
          v26 = v17;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        goto LABEL_19;
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void *sub_100026CCC(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {

    v4 = sub_10000D030();
    *v4 = 134217984;
    sub_10000D488(v1 + 24, v35);
    v5 = *(v1 + 24);
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1000272E0();
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v5 + 16);
    }

    *(v4 + 4) = v6;

    _os_log_impl(&_mh_execute_header, a1, v3, "BluetoothControlChannelConnectionService state: connection count = %ld", v4, 0xCu);
    sub_10000D8D4(v4);
  }

  sub_10000D488(v1 + 24, v38);
  v7 = *(v1 + 24);
  if ((v7 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D270();
    sub_10000D0E0(v8, v9, &protocol conformance descriptor for ControlChannelConnection);
    result = Set.Iterator.init(_cocoa:)();
    v7 = v39;
    v11 = v40;
    v12 = v41;
    v13 = v42;
    v14 = v43;
  }

  else
  {
    v11 = v7 + 56;
    v12 = ~(-1 << *(v7 + 32));
    sub_10000D89C();
    v14 = v15 & v16;

    v13 = 0;
  }

  v17 = (v12 + 64) >> 6;
  while (v7 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23)
    {
      return sub_1000134CC(v7);
    }

    v36 = v23;
    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v22 = v37;
    v20 = v13;
    v21 = v14;
    if (!v37)
    {
      return sub_1000134CC(v7);
    }

LABEL_19:
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v24))
    {
      v25 = sub_10000D030();
      v34 = swift_slowAlloc();
      v36 = v22;
      v37 = v34;
      *v25 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v26 = String.init<A>(describing:)();
      v33 = v21;
      v28 = v17;
      v29 = v11;
      v30 = v7;
      v31 = a1;
      v32 = sub_10000C600(v26, v27, &v37);

      *(v25 + 4) = v32;
      a1 = v31;
      v7 = v30;
      v11 = v29;
      v17 = v28;
      _os_log_impl(&_mh_execute_header, a1, v24, "BluetoothControlChannelConnectionService control channel connection: %{public}s", v25, 0xCu);
      sub_10000CADC(v34);
      sub_10000D8D4(v34);
      sub_10000D8D4(v25);

      v13 = v20;
      v14 = v33;
    }

    else
    {

      v13 = v20;
      v14 = v21;
    }
  }

  v18 = v13;
  v19 = v14;
  v20 = v13;
  if (v14)
  {
LABEL_15:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v7 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v22)
    {
      return sub_1000134CC(v7);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      return sub_1000134CC(v7);
    }

    v19 = *(v11 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027054()
{

  sub_10000CADC((v0 + 48));
  sub_10000CADC((v0 + 88));

  return v0;
}

uint64_t sub_10002709C()
{
  sub_100027054();

  return _swift_deallocClassInstance(v0, 144, 7);
}

id sub_100027184(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithXPCEventRepresentation:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100027268(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009B0D0, qword_1000777A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000272E0()
{
}

uint64_t sub_100027300(void *a1)
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_10000CBDC();
  sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100028174(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  *(v1 + 32) = OS_os_log.init(subsystem:category:)();
  *(v1 + 16) = a1;
  type metadata accessor for UUID();
  v10 = a1;
  sub_100013414(&unk_100099DC0, &unk_100077860);
  sub_100028174(&unk_10009BE40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(v1 + 40) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 50) = 0;
  *(v1 + 48) = 2;
  sub_100027634();

  return v1;
}

uint64_t sub_100027634()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v17 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v13 = v12 - v11;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, *(v0 + 32), "Refreshing wireless configuration from lockdown", 47, 2, _swiftEmptyArrayStorage);
  aBlock[4] = sub_100028104;
  v19 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F8D8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100028174(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v17);
}

uint64_t sub_1000278D4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC())
  {
    v6 = lockdown_wifi_sync_enabled();
    v7 = lockdown_wifi_debug_enabled();
    v8 = lockdown_wifi_pairing_enabled();
    if (v7)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v6;
    if (v8)
    {
      v11 = 0x10000;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 | v11;
  }

  else
  {
    v12 = 3;
  }

  v13 = static os_log_type_t.default.getter();
  v14 = *(a1 + 32);
  LODWORD(v15) = HIWORD(v12);
  if (os_log_type_enabled(v14, v13))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    BYTE2(v30) = BYTE2(v12);
    LOWORD(v30) = v12;
    v18 = String.init<A>(describing:)();
    v25 = a1;
    v15 = sub_10000C600(v18, v19, aBlock);
    a1 = v25;

    *(v16 + 4) = v15;
    LOBYTE(v15) = BYTE2(v12);
    _os_log_impl(&_mh_execute_header, v14, v13, "Received updated wireless configuration from lockdown: %{public}s", v16, 0xCu);
    sub_10000CADC(v17);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 26) = v15;
  *(v20 + 24) = v12;
  aBlock[4] = sub_10002810C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F928;
  v21 = _Block_copy(aBlock);

  v22 = v26;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100028174(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v3 + 8))(v23, v2);
  (*(v27 + 8))(v22, v29);
}

uint64_t sub_100027CDC(uint64_t a1, int a2)
{
  swift_beginAccess();
  *(a1 + 50) = BYTE2(a2);
  *(a1 + 48) = a2;
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v4 = *(a1 + 40);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v4 + 56) + ((v11 << 10) | (16 * v12)));

    v13(v14);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100027E04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v14 = v13 - v12;
  UUID.init()();
  (*(v10 + 16))(v14, a3, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 40);
  sub_100068D98();
  *(v4 + 40) = v16;
  (*(v10 + 8))(v14, v8);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_100027F7C()
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  swift_beginAccess();
  return *(v0 + 48) | (*(v0 + 50) << 16);
}

uint64_t sub_100028004()
{
  sub_100027FCC();

  return _swift_deallocClassInstance(v0, 51, 7);
}

uint64_t sub_10002805C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_100028070(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_1000280B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015E90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for LockdownWirelessConfigurationState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LockdownWirelessConfigurationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LockdownWirelessConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_100028308(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028324(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100028380(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  *a2 = result;
  return result;
}

uint64_t sub_1000283C0()
{
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v4 = v3 - v2;
  sub_10002ED74(v0, v3 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
      sub_100013414(&unk_10009A0C0, &unk_100077998);

      goto LABEL_3;
    case 4:
      return result;
    default:
LABEL_3:
      type metadata accessor for DiscoveredBonjourAdvert();
      sub_10000CC04();
      (*(v7 + 8))(v4);
      result = 1;
      break;
  }

  return result;
}

void sub_1000284D8()
{
  sub_10000D060();
  v2 = type metadata accessor for UUID();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  sub_10000D4A0();
  v6 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v12 = v11 - v10;
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v13);
  sub_10000CBDC();
  sub_10002ED74(v0, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      sub_10002F668(v24);

      v25 = sub_10002F580();
      v26(v25);
      sub_10000D544();
      _StringGuts.grow(_:)(57);
      sub_10002F6A4();
      v29 = v28 + 22;
      goto LABEL_7;
    case 2u:
      v30 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      sub_10002F668(v30);

      v31 = sub_10002F580();
      v32(v31);
      sub_10000D544();
      _StringGuts.grow(_:)(55);
      sub_10002F6A4();
      v29 = v33 + 20;
LABEL_7:
      v34 = v27 | 0x8000000000000000;
      String.append(_:)(*&v29);
      DiscoveredBonjourAdvert.identifier.getter();
      sub_10002F5F0();
      sub_10002EF04(v35, v36, &protocol conformance descriptor for UUID);
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      (*(v4 + 8))(v1, v2);
      v38._countAndFlagsBits = 0x63656E6E6F63202CLL;
      v38._object = 0xEE00203A6E6F6974;
      String.append(_:)(v38);
      v39._countAndFlagsBits = dispatch thunk of ControlChannelConnection.id.getter();
      String.append(_:)(v39);

      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);

      goto LABEL_8;
    case 3u:
      v18 = sub_10002F580();
      v19(v18);
      sub_10000D544();
      _StringGuts.grow(_:)(19);

      sub_10002F6A4();
      goto LABEL_4;
    case 4u:
      goto LABEL_9;
    default:
      v16 = sub_10002F580();
      v17(v16);
      sub_10000D544();
      _StringGuts.grow(_:)(35);

      sub_10002F6A4();
LABEL_4:
      DiscoveredBonjourAdvert.identifier.getter();
      sub_10002F5F0();
      sub_10002EF04(v20, v21, &protocol conformance descriptor for UUID);
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      (*(v4 + 8))(v1, v2);
      v23._countAndFlagsBits = 41;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
LABEL_8:
      (*(v8 + 8))(v12, v6);
LABEL_9:
      sub_100022994();
      sub_1000135A0();
      return;
  }
}

void sub_10002890C(uint64_t a1)
{
  v3 = type metadata accessor for DiscoveredPairableHost.State(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = static os_log_type_t.default.getter();
  v10 = qword_10009CED0;
  sub_10002ED74(a1, v8);
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_10000C600(*(v1 + 16), *(v1 + 24), &v21);
    *(v11 + 12) = 2082;
    sub_10002ED74(v8, v6);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10002EDD8(v8);
    v15 = sub_10000C600(v12, v14, &v21);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    v16 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    swift_beginAccess();
    sub_10002ED74(v1 + v16, v6);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000C600(v17, v18, &v21);

    *(v11 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: State changed from %{public}s -> %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10002EDD8(v8);
  }

  sub_10002D260();
}

uint64_t sub_100028B40(uint64_t a1)
{
  v3 = type metadata accessor for DiscoveredPairableHost.State(0);
  __chkstk_darwin(v3 - 8);
  sub_10000CBDC();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  sub_10002ED74(v1 + v7, v6);
  swift_beginAccess();
  sub_10002F51C(a1, v1 + v7);
  swift_endAccess();
  sub_10002890C(v6);
  sub_10002EDD8(a1);
  return sub_10002EDD8(v6);
}

uint64_t sub_100028C10()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener;
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener);
  }

  else
  {
    v2 = sub_100028CA0(v0, *v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100028CA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemXPCListenerConnection();
  static SystemXPCConnection.anonymousListenerConnection(targetQueue:)();
  v3 = swift_dynamicCastClassUnconditional();
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;

  dispatch thunk of SystemXPCListenerConnection.setPeerConnectionHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
  return v3;
}

uint64_t sub_100028D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_100024F24(a1, v6, &qword_10009A170, &qword_1000779C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100022560(v6, &qword_10009A170, &qword_1000779C0);
      v9 = static os_log_type_t.error.getter();
      v10 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v36 = v12;
        *v11 = 136446210;
        v13 = *(v8 + 16);
        v14 = *(v8 + 24);

        v15 = sub_10000C600(v13, v14, &v36);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: Received error from host listener", v11, 0xCu);
        sub_10000CADC(v12);
      }
    }

    else
    {
      type metadata accessor for SystemXPCPeerConnection();
      v16 = swift_dynamicCastClassUnconditional();

      dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
      v17 = v36;
      swift_beginAccess();

      sub_100064C00(&v39, v16, v18, v19, v20, v21, v22, v23, v36, v37, v38);
      swift_endAccess();

      v36 = 0;
      v37 = 0xE000000000000000;

      _StringGuts.grow(_:)(39);

      v36 = 0xD000000000000018;
      v37 = 0x800000010007DA90;
      v24._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v26 = *(v8 + 16);
      v27 = *(v8 + 24);

      v28._countAndFlagsBits = v26;
      v28._object = v27;
      String.append(_:)(v28);

      v29._countAndFlagsBits = 0x2E746E65696C632ELL;
      v29._object = 0xE800000000000000;
      String.append(_:)(v29);
      LODWORD(v39) = v17;
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      String.utf8CString.getter();

      v31 = os_transaction_create();

      swift_beginAccess();
      if (v31)
      {
        sub_10002EF5C(v31, v16);
      }

      else
      {
        sub_1000685C0(v16);

        swift_unknownObjectRelease();
      }

      swift_endAccess();
      v32 = *(v8 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue);
      dispatch thunk of XPCConnection.setTargetQueue(_:)();

      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      *(v35 + 24) = v34;

      dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

      dispatch thunk of XPCConnection.activate()();
    }
  }

  return result;
}

uint64_t sub_100029248@<X0>(_xpc_connection_s *a1@<X0>, _DWORD *a2@<X8>)
{
  result = xpc_connection_get_pid(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100029278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v8);
  v10 = &v25[-1] - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v14 = Strong;
  sub_100024F24(a1, v10, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100029670();
    v25[0] = v14;
    dispatch thunk of CodableDispatcher.dispatch(encodedData:context:completion:)();

    (*(v5 + 8))(v7, v4);
  }

  dispatch thunk of XPCConnection.cancel()();
  swift_beginAccess();
  sub_100067860(v14);
  swift_endAccess();

  swift_beginAccess();
  sub_1000685C0(v14);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_10002D8FC();
  v15 = static os_log_type_t.default.getter();
  v16 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v15))
  {
    v17 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *(v12 + 16);
    v19 = *(v12 + 24);

    v20 = sub_10000C600(v18, v19, v25);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v24 = v14;
    type metadata accessor for SystemXPCPeerConnection();

    v21 = String.init<A>(describing:)();
    v23 = sub_10000C600(v21, v22, v25);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s: Releasing usage assertions owned by disconnected peer %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100022560(v10, &unk_1000994A0, &unk_100077090);
}

uint64_t sub_100029670()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher;
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher);
  }

  else
  {
    v2 = sub_1000296D8(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000296D8(uint64_t a1)
{
  v1 = type metadata accessor for XPCReplyProviding();
  __chkstk_darwin(v1 - 8);
  static XPCReplyProviding.passthrough.getter();
  sub_100013414(&qword_10009A110, &qword_1000779B8);
  swift_allocObject();
  v2 = XPCMessageDispatcher.init(xpcReplyProviding:inboundObserver:outboundObserver:)();
  type metadata accessor for RemotePairingErrorCodingWrapper();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AttemptPairingPinCommand();
  type metadata accessor for EmptyResponse();
  sub_10002EF04(&qword_10009A118, &type metadata accessor for AttemptPairingPinCommand, &protocol conformance descriptor for AttemptPairingPinCommand);
  sub_10002EF04(&qword_10009A120, &type metadata accessor for AttemptPairingPinCommand, &protocol conformance descriptor for AttemptPairingPinCommand);
  sub_10002EF04(&qword_10009A128, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  sub_10002EF04(&qword_10009A130, &type metadata accessor for EmptyResponse, &protocol conformance descriptor for EmptyResponse);
  sub_10002EF04(&qword_10009A138, &type metadata accessor for RemotePairingErrorCodingWrapper, &protocol conformance descriptor for RemotePairingErrorCodingWrapper);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for CancelPairingCommand();
  sub_10002EF04(&qword_10009A140, &type metadata accessor for CancelPairingCommand, &protocol conformance descriptor for CancelPairingCommand);
  sub_10002EF04(&qword_10009A148, &type metadata accessor for CancelPairingCommand, &protocol conformance descriptor for CancelPairingCommand);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  swift_allocObject();
  swift_weakInit();
  type metadata accessor for InitiatePairingWithHostCommand();
  type metadata accessor for PairableHostInfo();
  sub_10002EF04(&qword_10009A150, &type metadata accessor for InitiatePairingWithHostCommand, &protocol conformance descriptor for InitiatePairingWithHostCommand);
  sub_10002EF04(&qword_10009A158, &type metadata accessor for InitiatePairingWithHostCommand, &protocol conformance descriptor for InitiatePairingWithHostCommand);
  sub_10002EF04(&qword_10009A160, &type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  sub_10002EF04(&qword_10009A168, &type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();

  return v2;
}

uint64_t sub_100029B78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = AttemptPairingPinCommand.pinAttempt.getter();
    sub_10002A95C(v5, v6, v4);
    if (v3)
    {
    }
  }

  return EmptyResponse.init()();
}

uint64_t sub_100029C30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return EmptyResponse.init()();
  }

  sub_10002AE58(v4);

  if (!v3)
  {
    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_100029CBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002B69C();
  }

  return result;
}

void sub_100029D38()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10000D618();
  if (sub_10004997C())
  {
    sub_1000579D4(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers] = v13;
  v14 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__transactions;
  type metadata accessor for SystemXPCPeerConnection();
  sub_100013414(&qword_10009A180, &unk_1000779D0);
  sub_10000CC20();
  sub_10002EF04(v15, v16, &protocol conformance descriptor for XPCConnection);
  *&v0[v14] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___listener] = 0;
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost____lazy_storage___dispatcher] = 0;
  strcpy(&v28, "pairablehost-");
  HIWORD(v28) = -4864;
  if (qword_100098E68 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18 = *(&v28 + 1);
  *(v0 + 2) = v28;
  *(v0 + 3) = v18;
  *&v0[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue] = v4;
  v19 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  v20 = type metadata accessor for DiscoveredBonjourAdvert();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v2[v19], v8, v20);
  type metadata accessor for DiscoveredPairableHost.State(0);
  swift_storeEnumTagMultiPayload();
  v22 = v4;
  v23 = DiscoveredBonjourAdvert.userAssignedName.getter();
  v25 = 0x6E776F6E6B6E55;
  if (v24)
  {
    v25 = v23;
  }

  v26 = 0xE700000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *(v2 + 4) = v25;
  *(v2 + 5) = v26;
  *(v2 + 6) = DiscoveredBonjourAdvert.model.getter();
  *(v2 + 7) = v27;
  DiscoveredBonjourAdvert.identifier.getter();

  (*(v21 + 8))(v8, v20);
  (*(v11 + 32))(&v2[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID], v1, v9);
  sub_100010E18(v6, &v2[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager]);
  sub_1000135A0();
}

void sub_10002A048()
{
  sub_10000D060();
  v2 = v1;
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v3);
  sub_10000EDF0();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = sub_100013414(&qword_100099B50, &qword_1000779B0);
  __chkstk_darwin(v10 - 8);
  v12 = v30 - v11;
  type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000CBDC();
  v18 = (v17 - v16);
  v20 = v19;
  sub_100024F24(v2, v12, &qword_100099B50, &qword_1000779B0);
  if (sub_100022484(v12, 1, v20) != 1)
  {
    (*(v14 + 32))(v18, v12, v20);
    v21 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    sub_10002F598();
    swift_beginAccess();
    sub_10002ED74(v0 + v21, v9);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        v25 = sub_100013414(&unk_10009A0C0, &unk_100077998);
        v26 = sub_10000D900(v25);
        v27(v26);
        *(&qword_1000779B0 + v6) = v21;
        v28 = v30[2];
        *&v12[v6] = v30[3];
        v29 = v30[1];
        *v18 = v28;
        *(v18 + 1) = v29;
        sub_10000EB0C();
        swift_storeEnumTagMultiPayload();

        sub_100028B40(v6);

        v24 = *(v14 + 8);
        v24(v30[4], v20);
        goto LABEL_6;
      case 4u:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      default:
        v22 = sub_10000CD04();
        v23(v22);
        sub_10000EB0C();
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v6);
        v24 = *(v14 + 8);
        v24(v18, v20);
LABEL_6:
        v24(v9, v20);
        goto LABEL_7;
    }
  }

  sub_100022560(v12, &qword_100099B50, &qword_1000779B0);
  sub_10000EB0C();
  swift_storeEnumTagMultiPayload();
  sub_100028B40(v6);
LABEL_7:
  sub_1000135A0();
}

uint64_t sub_10002A3F0()
{
  if (qword_100098E60 != -1)
  {
    swift_once();
  }

  dispatch thunk of AtomicCounter.next()();

  sub_100028C10();
  SystemXPCListenerConnection.createEndpoint()();

  __chkstk_darwin(v0);
  type metadata accessor for PairableHostInfo();
  dispatch thunk of XPCEndpoint.withUnsafeUnderlyingEndpoint<A>(_:)();
}

uint64_t sub_10002A4F8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v18[2] = a3;
  v18[0] = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiscoveredPairableHost.State(0);
  v10 = __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  v15 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  swift_beginAccess();
  sub_10002ED74(&a2[v15], v14);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v16 = type metadata accessor for DiscoveredBonjourAdvert();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  else
  {
    sub_10002EDD8(v14);
  }

  (*(v6 + 16))(v8, &a2[OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID], v5);
  sub_10002ED74(&a2[v15], v12);

  sub_1000283C0();
  sub_10002EDD8(v12);
  swift_unknownObjectRetain();
  return PairableHostInfo.init(identifier:name:model:available:paired:monotonicIdentifier:endpoint:)();
}

void *sub_10002A750()
{
  v1 = v0;
  sub_100028C10();
  dispatch thunk of XPCConnection.cancel()();

  v2 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000CC20();
    sub_10002EF04(v4, v5, &protocol conformance descriptor for XPCConnection);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
  }

  else
  {
    v7 = v3 + 56;
    v8 = ~(-1 << *(v3 + 32));
    sub_10000D89C();
    v10 = v11 & v12;

    v9 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v9;
    v14 = v10;
    v15 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_1000134CC(v3);
    }

    while (1)
    {
      dispatch thunk of XPCConnection.cancel()();

      v9 = v15;
      v10 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for SystemXPCPeerConnection();
        swift_dynamicCast();
        v15 = v9;
        v16 = v10;
        if (v18)
        {
          continue;
        }
      }

      return sub_1000134CC(v3);
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v8 + 64) >> 6))
    {
      return sub_1000134CC(v3);
    }

    v14 = *(v7 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v47 = v8 - v7;
  v9 = sub_10002F608();
  v10 = type metadata accessor for DiscoveredPairableHost.State(v9);
  sub_10000CC04();
  __chkstk_darwin(v11);
  sub_10000EDF0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v4 + v18, v17);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v19 = sub_100013414(&unk_10009A0C0, &unk_100077998);
    v20 = *&v17[*(v19 + 48)];
    v21 = *&v17[*(v19 + 64)];

    v22 = type metadata accessor for XPCConnection();
    if (static XPCConnection.== infix(_:_:)())
    {
      sub_100022994();
      dispatch thunk of ControlChannelConnection.attempt(pairingPIN:)();
    }

    else
    {
      v45 = v20;
      v46 = v21;
      v33 = static os_log_type_t.error.getter();
      v34 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v33))
      {
        sub_10000CCCC();
        v22 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v22 = 136446722;
        *(v22 + 4) = sub_10000C600(*(v4 + 16), *(v4 + 24), &v50);
        *(v22 + 12) = 2082;
        v49 = a3;
        type metadata accessor for SystemXPCPeerConnection();

        v35 = String.init<A>(describing:)();
        v37 = sub_10000C600(v35, v36, &v50);

        *(v22 + 14) = v37;
        *(v22 + 22) = 2082;
        v49 = v46;

        v38 = String.init<A>(describing:)();
        v40 = sub_10000C600(v38, v39, &v50);

        *(v22 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v34, v33, "%{public}s: Received PIN challenge from peer %{public}s but pairing was initiated by %{public}s", v22, 0x20u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      static RemotePairingError.invalidOperation.getter();
      sub_10002F5C0();
      sub_10002EF04(v41, v22, &protocol conformance descriptor for RemotePairingError);
      sub_10002F614();
      swift_allocError();
      sub_10000D294();
      sub_10002EF04(v42, v22, v43);
      sub_10002F62C();
      swift_willThrow();
    }

    type metadata accessor for DiscoveredBonjourAdvert();
    sub_10000CC04();
    return (*(v44 + 8))(v17);
  }

  else
  {
    v23 = static os_log_type_t.error.getter();
    v24 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v23))
    {
      sub_10002F620();
      v25 = swift_slowAlloc();
      sub_10002F65C();
      v50 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000C600(*(v4 + 16), *(v4 + 24), &v50);
      *(v25 + 12) = 2082;
      sub_10002ED74(v4 + v18, v14);
      v26 = String.init<A>(describing:)();
      v10 = v27;
      v28 = sub_10000C600(v26, v27, &v50);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s: Invalid state to attempt PIN pairing: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    static RemotePairingError.invalidOperation.getter();
    sub_10002F5C0();
    sub_10002EF04(v29, v10, &protocol conformance descriptor for RemotePairingError);
    sub_10002F614();
    swift_allocError();
    sub_10000D294();
    sub_10002EF04(v30, v10, v31);
    sub_10002F62C();
    swift_willThrow();
    return sub_10002EDD8(v17);
  }
}

uint64_t sub_10002AE58(uint64_t a1)
{
  v90 = a1;
  v3 = v1;
  type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v87 = v5;
  v88 = v4;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v86 = v7 - v6;
  sub_10002F608();
  v85 = type metadata accessor for POSIXError();
  sub_10000CBBC();
  v83 = v8;
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v81 = v11 - v10;
  sub_10002F608();
  v84 = type metadata accessor for PairingOutcome();
  sub_10000CBBC();
  v82 = v12;
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v16 = (v15 - v14);
  v93 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v17);
  sub_10000CBDC();
  v92 = v19 - v18;
  sub_10002F608();
  v20 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_10000CBDC();
  sub_10000D618();
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v24);
  sub_10000EDF0();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v31 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  v91 = v3;
  sub_10002ED74(v3 + v31, v30);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v32 = sub_100013414(&unk_10009A0C0, &unk_100077998);
    v33 = *&v30[v32[12]];
    v34 = *&v30[v32[16]];
    v35 = &v30[v32[20]];
    v37 = *v35;
    v36 = *(v35 + 1);
    v76 = v37;
    v77 = v36;
    v38 = sub_100022994();
    v39(v38);
    type metadata accessor for XPCConnection();
    v80 = v34;
    v40 = static XPCConnection.== infix(_:_:)();
    v78 = v33;
    v79 = v20;
    if (v40)
    {
      LODWORD(v95) = 89;
      sub_10004FD70(_swiftEmptyArrayStorage);
      sub_10002F5A8();
      sub_10002EF04(v41, v42, &protocol conformance descriptor for POSIXError);
      v43 = v81;
      v44 = v85;
      _BridgedStoredNSError.init(_:userInfo:)();
      v45 = POSIXError._nsError.getter();
      (*(v83 + 8))(v43, v44);
      *v16 = v45;
      v46 = v82;
      v47 = v84;
      (*(v82 + 104))(v16, enum case for PairingOutcome.failure(_:), v84);
      v76(v16);
      (*(v46 + 8))(v16, v47);
      (*(v22 + 16))(v27, v2, v79);
      swift_storeEnumTagMultiPayload();
      sub_100028B40(v27);
      v49 = v86;
      v48 = v87;
      v50 = v88;
      (*(v87 + 104))(v86, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v88);
      dispatch thunk of ControlChannelConnection.invalidate(for:)();

      (*(v48 + 8))(v49, v50);
      v51 = sub_100022994();
      return v52(v51);
    }

    else
    {
      v63 = v22;
      v89 = v2;
      v64 = static os_log_type_t.error.getter();
      v65 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v64))
      {
        sub_10000CCCC();
        v33 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v33 = 136446722;
        *(v33 + 4) = sub_10000C600(*(v91 + 16), *(v91 + 24), &v95);
        *(v33 + 12) = 2082;
        v94 = v90;
        type metadata accessor for SystemXPCPeerConnection();

        v66 = String.init<A>(describing:)();
        v68 = sub_10000C600(v66, v67, &v95);

        *(v33 + 14) = v68;
        *(v33 + 22) = 2082;
        v94 = v80;

        v69 = String.init<A>(describing:)();
        v71 = sub_10000C600(v69, v70, &v95);

        *(v33 + 24) = v71;
        _os_log_impl(&_mh_execute_header, v65, v64, "%{public}s: Received PIN challenge from peer %{public}s but pairing was initiated by %{public}s", v33, 0x20u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      static RemotePairingError.invalidOperation.getter();
      sub_10002F5D8();
      sub_10002EF04(v72, v33, &protocol conformance descriptor for RemotePairingError);
      sub_10002F614();
      swift_allocError();
      sub_10000D294();
      sub_10002EF04(v73, v33, v74);
      sub_10000D380();
      swift_willThrow();

      return (*(v63 + 8))(v89, v79);
    }
  }

  else
  {
    v54 = static os_log_type_t.error.getter();
    v55 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v54))
    {
      sub_10002F620();
      v3 = swift_slowAlloc();
      sub_10002F65C();
      v95 = swift_slowAlloc();
      *v3 = 136446466;
      v56 = v91;
      *(v3 + 4) = sub_10000C600(*(v91 + 16), *(v91 + 24), &v95);
      *(v3 + 12) = 2082;
      sub_10002ED74(v56 + v31, v27);
      v57 = String.init<A>(describing:)();
      v59 = sub_10000C600(v57, v58, &v95);

      *(v3 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s: Invalid state to handle pairing cancellation: %{public}s", v3, 0x16u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    static RemotePairingError.invalidOperation.getter();
    sub_10002F5D8();
    sub_10002EF04(v60, v3, &protocol conformance descriptor for RemotePairingError);
    sub_10002F614();
    swift_allocError();
    sub_10000D294();
    sub_10002EF04(v61, v3, v62);
    sub_10000D380();
    swift_willThrow();
    return sub_10002EDD8(v30);
  }
}

void sub_10002B69C()
{
  sub_10000D060();
  v2 = v0;
  v58 = v3;
  v59 = v4;
  v6 = v5;
  v55 = sub_100013414(&unk_10009A100, &qword_1000779A8);
  sub_10000CC04();
  __chkstk_darwin(v7);
  sub_10000D4A0();
  v8 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v56 = v9;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v51 = v12 - v11;
  sub_10002F608();
  v57 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v54 = v15 - v14;
  v16 = sub_10002F608();
  type metadata accessor for DiscoveredPairableHost.State(v16);
  sub_10000CC04();
  __chkstk_darwin(v17);
  sub_10000EDF0();
  v52 = v18 - v19;
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v23 = static os_log_type_t.default.getter();
  v24 = qword_10009CED0;
  if (sub_10002F68C(v23))
  {
    sub_10002F620();
    v25 = swift_slowAlloc();
    v53 = v8;
    v26 = v25;
    sub_10002F65C();
    v50 = swift_slowAlloc();
    v61[0] = v50;
    *v26 = 136446466;
    *(v26 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v61);
    *(v26 + 12) = 2082;
    v60[0] = v6;
    type metadata accessor for SystemXPCPeerConnection();

    v27 = String.init<A>(describing:)();
    v29 = sub_10000C600(v27, v28, v61);
    v2 = v0;

    *(v26 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s: Received request to wirelessly pair from peer: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    sub_100015FBC();

    v8 = v53;
    sub_100015FBC();
  }

  v30 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v2 + v30, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_100013414(&unk_10009A0C0, &unk_100077998);
      v51 = v30;

      (*(v56 + 8))(v22, v8);
      static RemotePairingError.pairingFailed.getter();
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      sub_10002F614();
      v31 = swift_allocError();
      sub_10000D294();
      sub_10002EF04(v32, &type metadata accessor for RemotePairingError, v33);
      v30 = v51;
      Error<>.init(_:_:)();
      goto LABEL_6;
    case 3u:
      v51 = v30;
      static RemotePairingError.pairingFailed.getter();
      v50 = v1;
      v53 = v8;
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      sub_10002F614();
      v31 = swift_allocError();
      sub_10000D294();
      sub_10002EF04(v41, &type metadata accessor for RemotePairingError, v42);
      v1 = v50;
      v30 = v51;
      v43 = v56;
      Error<>.init(_:_:)();
      swift_willThrow();
      (*(v43 + 8))(v22, v53);
      goto LABEL_9;
    case 4u:
      sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      sub_10002F614();
      v31 = swift_allocError();
      static RemotePairingError.deviceNotFound.getter();
LABEL_6:
      swift_willThrow();
LABEL_9:
      v44 = static os_log_type_t.error.getter();
      if (sub_10002F68C(v44))
      {
        sub_10002F620();
        v45 = swift_slowAlloc();
        sub_10002F65C();
        v60[0] = swift_slowAlloc();
        *v45 = 136446466;
        *(v45 + 4) = sub_10000C600(*(v2 + 16), *(v2 + 24), v60);
        *(v45 + 12) = 2082;
        sub_10002ED74(v2 + v30, v52);
        sub_100022994();
        v46 = String.init<A>(describing:)();
        v48 = sub_10000C600(v46, v47, v60);

        *(v45 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v24, v44, "%{public}s: Invalid state to handle pairing initiation request: %{public}s", v45, 0x16u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

      *v1 = v31;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v58(v1);

      sub_100022560(v1, &unk_10009A100, &qword_1000779A8);
      break;
    default:
      v34 = v56;
      v35 = v51;
      (*(v56 + 32))(v51, v22, v8);
      sub_10000CBD0();
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = v6;
      v38 = swift_allocObject();
      v39 = v58;
      v40 = v59;
      v38[2] = v36;
      v38[3] = v39;
      v38[4] = v40;
      v38[5] = v37;

      sub_10002DE7C();

      (*(v34 + 8))(v35, v8);

      break;
  }

  sub_1000135A0();
}

uint64_t sub_10002BDEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v63 = a4;
  v57 = type metadata accessor for DeviceServiceEvent();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PairingChallengeEvent();
  v60 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v61 = sub_100013414(&unk_10009A100, &qword_1000779A8);
  __chkstk_darwin(v61);
  v62 = (&v47 - v15);
  v16 = type metadata accessor for PairingOutcome();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v47 - v22;
  __chkstk_darwin(v21);
  v25 = &v47 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = a3;
    v50 = v12;
    v65 = result;
    v27 = static os_log_type_t.default.getter();
    v28 = qword_10009CED0;
    v29 = *(v17 + 16);
    v58 = a1;
    v30 = a1;
    v31 = v29;
    v29(v25, v30, v16);
    v52 = v27;
    if (os_log_type_enabled(v28, v27))
    {
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v66[0] = v48;
      *v32 = 136446466;
      v51 = v14;
      v49 = v31;
      v33 = *(v65 + 16);
      v34 = *(v65 + 24);

      v35 = sub_10000C600(v33, v34, v66);
      v31 = v49;

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v31(v23, v25, v16);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      (*(v17 + 8))(v25, v16);
      v39 = sub_10000C600(v36, v38, v66);

      *(v32 + 14) = v39;
      v14 = v51;
      _os_log_impl(&_mh_execute_header, v28, v52, "%{public}s: Received pairing outcome %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v17 + 8))(v25, v16);
    }

    v31(v20, v58, v16);
    v40 = (*(v17 + 88))(v20, v16);
    v41 = v59;
    if (v40 == enum case for PairingOutcome.failure(_:))
    {
      (*(v17 + 96))(v20, v16);
      v42 = *v20;
      v43 = v62;
      *v62 = v42;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v41(v43);

LABEL_7:

      return sub_100022560(v43, &unk_10009A100, &qword_1000779A8);
    }

    if (v40 == enum case for PairingOutcome.challenge(_:))
    {
      (*(v17 + 96))(v20, v16);
      PairingChallengeEvent.init(lastAttemptIncorrect:throttleSeconds:)();
      v44 = v55;
      (*(v60 + 16))(v55, v14, v64);
      v45 = v54 + 104;
      v46 = v57;
      (*(v54 + 104))(v44, enum case for DeviceServiceEvent.pairingChallenge(_:), v57);
      sub_10002EF04(&unk_10009ADD0, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
      sub_10002EF04(&unk_10009A0F0, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
      XPCConnection.send<A>(value:)();

      (*(v45 - 96))(v44, v46);
      return (*(v60 + 8))(v14, v64);
    }

    if (v40 == enum case for PairingOutcome.success(_:))
    {
      v43 = v62;
      sub_10002A3F0();
      swift_storeEnumTagMultiPayload();
      v41(v43);
      goto LABEL_7;
    }

    if (v40 == enum case for PairingOutcome.awaitingUserConsent(_:))
    {
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void sub_10002C764()
{
  sub_10000D060();
  v3 = v2;
  v22 = v4;
  v23 = v5;
  v7 = v6;
  v9 = v8;
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_10000D618();
  v11 = static os_log_type_t.default.getter();
  v12 = qword_10009CED0;
  if (sub_10002F68C(v11))
  {
    v13 = swift_slowAlloc();
    sub_10000CCCC();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), &v24);
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s: Initating pairing", v13, 0xCu);
    sub_10000CADC(v14);
    sub_100015FBC();

    sub_100015FBC();
  }

  v15 = sub_100013414(&unk_10009A0C0, &unk_100077998);
  v16 = v15[12];
  v17 = v15[16];
  v18 = (v1 + v15[20]);
  type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CC04();
  (*(v19 + 16))(v1, v22);
  *(v1 + v16) = v7;
  *(v1 + v17) = v9;
  *v18 = v23;
  v18[1] = v3;
  sub_100022994();
  swift_storeEnumTagMultiPayload();

  sub_100028B40(v1);
  sub_10000CBD0();
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v7;

  dispatch thunk of ControlChannelConnection.initiatePairing(withOptions:pairingOutcomeHandler:)();

  sub_1000135A0();
}

uint64_t sub_10002C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v77 = a1;
  v3 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PairingOutcome();
  v78 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v62[-v9];
  v11 = type metadata accessor for DiscoveredPairableHost.State(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v62[-v15];
  v17 = type metadata accessor for DiscoveredBonjourAdvert();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v62[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v73 = v18;
    v23 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
    swift_beginAccess();
    sub_10002ED74(v22 + v23, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v70 = v14;
      v71 = v8;
      v72 = v5;
      v24 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v25 = *&v16[*(v24 + 48)];

      v26 = *&v16[*(v24 + 80)];
      v27 = v73;
      (*(v73 + 32))(v20, v16, v17);
      if (v25 != v79)
      {
        (*(v27 + 8))(v20, v17);
      }

      v67 = v26;
      v68 = v25;
      v69 = v17;
      v28 = v78;
      v29 = v72;
      (*(v78 + 16))(v10, v77, v72);
      v30 = (*(v28 + 88))(v10, v29);
      v31 = v30;
      if (v30 == enum case for PairingOutcome.failure(_:))
      {
        (*(v28 + 96))(v10, v29);
        v32 = *v10;
        v33 = v73;
        v34 = *(v73 + 16);
        v35 = v70;
        v66 = v20;
        v34(v70, v20, v69);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v35);
        v36 = v71;
        *v71 = v32;
        (*(v28 + 104))(v36, v31, v29);
        swift_errorRetain();
        v67(v36);
        (*(v28 + 8))(v36, v29);
        v38 = v74;
        v37 = v75;
        v39 = v76;
        (*(v75 + 104))(v74, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v76);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v37 + 8))(v38, v39);
        return (*(v33 + 8))(v66, v69);
      }

      v40 = v20;
      v41 = v70;
      v42 = v71;
      if (v30 == enum case for PairingOutcome.challenge(_:))
      {
        v43 = v72;
        (*(v28 + 96))(v10, v72);
        v44 = *(v10 + 1);
        v45 = v10[16];
        *v42 = *v10;
        v42[1] = v44;
        *(v42 + 16) = v45;
        (*(v28 + 104))(v42, v31, v43);
        v67(v42);

        (*(v28 + 8))(v42, v43);
        return (*(v73 + 8))(v40, v69);
      }

      if (v30 == enum case for PairingOutcome.success(_:))
      {
        LODWORD(v77) = v30;
        v46 = static os_log_type_t.default.getter();
        v47 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v46))
        {
          v48 = swift_slowAlloc();
          v64 = v48;
          v65 = swift_slowAlloc();
          v80 = v65;
          *v48 = 136446210;
          v50 = *(v22 + 16);
          v49 = *(v22 + 24);

          v51 = sub_10000C600(v50, v49, &v80);
          v63 = v46;
          v52 = v51;
          v28 = v78;

          v53 = v64;
          *(v64 + 1) = v52;
          _os_log_impl(&_mh_execute_header, v47, v63, "%{public}s: Successfully wirelessly paired with host", v53, 0xCu);
          sub_10000CADC(v65);
        }

        v54 = v73;
        v55 = v69;
        (*(v73 + 16))(v41, v40, v69);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v41);
        v56 = v72;
        (*(v28 + 104))(v42, v77, v72);
        v67(v42);
        (*(v28 + 8))(v42, v56);
        v58 = v74;
        v57 = v75;
        v59 = v76;
        (*(v75 + 104))(v74, enum case for ControlChannelConnection.InvalidationReason.devicePaired(_:), v76);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v57 + 8))(v58, v59);
        return (*(v54 + 8))(v40, v55);
      }

      else
      {
        v60 = v67;
        if (v30 == enum case for PairingOutcome.awaitingUserConsent(_:))
        {
          v61 = v72;
          (*(v28 + 104))(v71, v30, v72);
          v60(v42);

          (*(v28 + 8))(v42, v61);
          return (*(v73 + 8))(v40, v69);
        }

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    else
    {

      return sub_10002EDD8(v16);
    }
  }

  return result;
}

void sub_10002D260()
{
  sub_10000D060();
  v1 = type metadata accessor for DeviceServiceEvent();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000EDF0();
  v41 = v5 - v6;
  v8 = __chkstk_darwin(v7);
  v44 = v39 - v9;
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v48 = v39 - v10;
  sub_10002A3F0();
  v12 = *(v3 + 104);
  v49 = v1;
  v12(v11, enum case for DeviceServiceEvent.pairableHostFound(_:), v1);
  v13 = static os_log_type_t.debug.getter();
  v14 = qword_10009CED0;
  v15 = sub_10002F68C(v13);
  v45 = v14;
  if (v15)
  {

    sub_10002F620();
    v16 = swift_slowAlloc();
    sub_10000CCCC();
    v17 = swift_slowAlloc();
    v52[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v52);
    *(v16 + 12) = 2048;
    v18 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
    sub_10000EB00();
    swift_beginAccess();
    v19 = *(v0 + v18);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *(v19 + 16);
    }

    *(v16 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v45, v13, "%{public}s: Publishing discovered host state changes to %ld peers", v16, 0x16u);
    sub_10000CADC(v17);
    sub_100015FBC();

    sub_100015FBC();
  }

  v21 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__peers;
  sub_10000EB00();
  swift_beginAccess();
  v22 = *(v0 + v21);
  if ((v22 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000CC20();
    sub_10002EF04(v23, v24, &protocol conformance descriptor for XPCConnection);
    Set.Iterator.init(_cocoa:)();
    v22 = v52[0];
    v26 = v52[1];
    v27 = v52[2];
    v28 = v52[3];
    v29 = v52[4];
  }

  else
  {
    v26 = v22 + 56;
    v27 = ~(-1 << *(v22 + 32));
    sub_10000D89C();
    v29 = v30 & v31;

    v28 = 0;
  }

  v39[1] = v27;
  v32 = (v27 + 64) >> 6;
  v42 = v3 + 16;
  v46 = (v3 + 8);
  *&v25 = 136315394;
  v40 = v25;
  v47 = v26;
  v43 = v22;
  while (v22 < 0)
  {
    v38 = __CocoaSet.Iterator.next()();
    if (!v38 || (v50 = v38, type metadata accessor for SystemXPCPeerConnection(), swift_dynamicCast(), v35 = v28, v36 = v29, !v51))
    {
LABEL_20:
      (*v46)(v48, v49);
      sub_1000134CC(v22);
      sub_1000135A0();
      return;
    }

LABEL_19:
    sub_10002EF04(&unk_10009ADD0, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
    sub_10002EF04(&unk_10009A0F0, &type metadata accessor for DeviceServiceEvent, &protocol conformance descriptor for DeviceServiceEvent);
    XPCConnection.send<A>(value:)();

    v28 = v35;
    v29 = v36;
    v26 = v47;
  }

  v33 = v28;
  v34 = v29;
  v35 = v28;
  if (v29)
  {
LABEL_15:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v22 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v37)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_20;
    }

    v34 = *(v26 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_10002D8FC()
{
  sub_10000D060();
  v67 = v1;
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v66 = v3;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v65 = v6 - v5;
  sub_10002F608();
  v64 = type metadata accessor for POSIXError();
  sub_10000CBBC();
  v62 = v7;
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v60 = v10 - v9;
  sub_10002F608();
  v63 = type metadata accessor for PairingOutcome();
  sub_10000CBBC();
  v61 = v11;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = (v14 - v13);
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v16);
  sub_10000EDF0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000CBDC();
  v29 = v28 - v27;
  v30 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10000EB00();
  swift_beginAccess();
  sub_10002ED74(v0 + v30, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v54 = v19;
      v55 = v0;
      v58 = v15;
      v59 = v2;
      v31 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v32 = *&v22[*(v31 + 48)];
      v33 = &v22[*(v31 + 80)];
      v34 = *v33;
      v35 = *(v33 + 1);
      v56 = *(v25 + 32);
      v57 = v34;
      v56(v29, v22, v23);
      type metadata accessor for XPCConnection();
      if (static XPCConnection.== infix(_:_:)())
      {
        v53 = v35;
        v67 = v32;
        v36 = static os_log_type_t.default.getter();
        v37 = qword_10009CED0;
        if (sub_10002F68C(v36))
        {
          v38 = swift_slowAlloc();
          sub_10000CCCC();
          v39 = swift_slowAlloc();
          v68 = v39;
          *v38 = 136446210;
          *(v38 + 4) = sub_10000C600(*(v55 + 16), *(v55 + 24), &v68);

          _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s: Cancelling pairing attempt because peer initiating pairing has disconnected", v38, 0xCu);
          sub_10000CADC(v39);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {
        }

        v40 = v54;
        v41 = sub_10000EB0C();
        (v56)(v41);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v40);
        LODWORD(v68) = 89;
        sub_10004FD70(_swiftEmptyArrayStorage);
        sub_10002F5A8();
        sub_10002EF04(v42, v43, &protocol conformance descriptor for POSIXError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v44 = POSIXError._nsError.getter();
        v45 = sub_10000EB0C();
        v46(v45);
        v47 = v58;
        *v58 = v44;
        v48 = v61;
        v49 = v63;
        (*(v61 + 104))(v47, enum case for PairingOutcome.failure(_:), v63);
        v57(v47);

        (*(v48 + 8))(v47, v49);
        v51 = v65;
        v50 = v66;
        v52 = v59;
        (*(v66 + 104))(v65, enum case for ControlChannelConnection.InvalidationReason.onDemandTaskCompleted(_:), v59);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*(v50 + 8))(v51, v52);
      }

      else
      {
        (*(v25 + 8))(v29, v23);
      }

      break;
    case 4u:
      break;
    default:
      (*(v25 + 8))(v22, v23);
      break;
  }

  sub_1000135A0();
}

void sub_10002DE7C()
{
  sub_10000D060();
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v8);
  sub_10000CBDC();
  sub_10000D4A0();
  v9 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = v14 - v13;
  v16 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__queue);
  DiscoveredBonjourAdvert.createTransport(withTargetQueue:)();
  sub_100022260(v32, &v31);
  v17 = v16;
  ControlChannelConnection.Options.Host.init(attemptPairVerify:)();
  (*(v11 + 104))(v15, enum case for ControlChannelConnection.Options.host(_:), v9);
  sub_100022260(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager, &v30);
  type metadata accessor for ControlChannelConnection();
  static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
  swift_allocObject();
  v18 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
  sub_10000CBD0();
  v19 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;

  dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

  sub_10000CBD0();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v18;

  dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

  v23 = sub_100013414(&unk_10009A0C0, &unk_100077998);
  v24 = v23[12];
  v25 = v23[16];
  v26 = (v1 + v23[20]);
  type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CC04();
  (*(v27 + 16))(v1, v7);
  *(v1 + v24) = v18;
  *(v1 + v25) = v5;
  *v26 = v28;
  v26[1] = v29;
  swift_storeEnumTagMultiPayload();

  sub_100028B40(v1);
  dispatch thunk of ControlChannelConnection.start()();

  sub_10000CADC(v32);
  sub_1000135A0();
}

uint64_t sub_10002E1A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_10000EB00();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a2);
  }

  return result;
}

void sub_10002E218()
{
  sub_10000D060();
  v40 = v2;
  v3 = type metadata accessor for PairingOutcome();
  sub_10000CBBC();
  v39 = v4;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = (v7 - v6);
  v9 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10000D618();
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v13);
  sub_10000EDF0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v0 + v20, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = v3;
      v27 = sub_100013414(&unk_10009A0C0, &unk_100077998);
      v28 = *&v19[*(v27 + 48)];

      v29 = &v19[*(v27 + 80)];
      v30 = *(v29 + 1);
      v37 = *v29;
      (*(v11 + 32))(v1, v19, v9);
      if (v28 == v40)
      {
        (*(v11 + 16))(v16, v1, v9);
        swift_storeEnumTagMultiPayload();
        sub_100028B40(v16);
        type metadata accessor for RemotePairingError();
        sub_10002EF04(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        sub_10002F614();
        v31 = swift_allocError();
        v40 = v30;
        v32 = v31;
        sub_10000D294();
        sub_10002EF04(v33, &type metadata accessor for RemotePairingError, v34);
        static Error<>.unknown.getter();
        *v8 = v32;
        (*(v39 + 104))(v8, enum case for PairingOutcome.failure(_:), v38);
        v37(v8);

        v35 = sub_10000EB0C();
        v36(v35);
        (*(v11 + 8))(v1, v9);
      }

      else
      {
        (*(v11 + 8))(v1, v9);
      }

      goto LABEL_10;
    case 2u:
      sub_100013414(&unk_10009A0C0, &unk_100077998);

      goto LABEL_6;
    case 3u:
LABEL_6:
      (*(v11 + 8))(v19, v9);
      goto LABEL_10;
    case 4u:
      goto LABEL_3;
    default:
      (*(v11 + 8))(v19, v9);
LABEL_3:
      v21 = static os_log_type_t.error.getter();
      v22 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v21))
      {
        sub_10002F620();
        v23 = swift_slowAlloc();
        sub_10002F65C();
        v41[0] = swift_slowAlloc();
        *v23 = 136446466;
        *(v23 + 4) = sub_10000C600(*(v0 + 16), *(v0 + 24), v41);
        *(v23 + 12) = 2080;
        v24 = dispatch thunk of ControlChannelConnection.id.getter();
        v26 = sub_10000C600(v24, v25, v41);

        *(v23 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s: Unexpectedly received control channel invalidation for %s while in state unavailable", v23, 0x16u);
        swift_arrayDestroy();
        sub_100015FBC();

        sub_100015FBC();
      }

LABEL_10:
      sub_1000135A0();
      return;
  }
}

void sub_10002E6D8()
{
  sub_10000D060();
  v3 = v2;
  type metadata accessor for DiscoveredPairableHost.State(0);
  sub_10000CC04();
  __chkstk_darwin(v4);
  sub_10000CBDC();
  sub_10000D4A0();
  v5 = type metadata accessor for DiscoveredBonjourAdvert();
  sub_10000CBBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state;
  sub_10002F598();
  swift_beginAccess();
  sub_10002ED74(v0 + v12, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v1 + *(sub_100013414(&unk_10009A0C0, &unk_100077998) + 48));
    (*(v7 + 32))(v11, v1, v5);
    if (v13 == v3)
    {
      sub_10002C764();
    }

    (*(v7 + 8))(v11, v5);
  }

  else
  {
    sub_10002EDD8(v1);
  }

  sub_1000135A0();
}

uint64_t sub_10002E8A0()
{

  v1 = OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__advertID;
  type metadata accessor for UUID();
  sub_10000CC04();
  (*(v2 + 8))(v0 + v1);
  sub_10000CADC((v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__pairingManager));

  sub_10002EDD8(v0 + OBJC_IVAR____TtC20remotepairingdeviced22DiscoveredPairableHost__state);

  return v0;
}

uint64_t sub_10002E980()
{
  sub_10002E8A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10002EA00(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DiscoveredPairableHost.State(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002EB34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002EB74(uint64_t a1)
{
  sub_10002EC00();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10002EC48(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_10002EC00()
{
  if (!qword_10009A078)
  {
    v0 = type metadata accessor for DiscoveredBonjourAdvert();
    if (!v1)
    {
      atomic_store(v0, &qword_10009A078);
    }
  }
}

void sub_10002EC48(uint64_t a1)
{
  if (!qword_10009A080[0])
  {
    __chkstk_darwin(0);
    type metadata accessor for DiscoveredBonjourAdvert();
    type metadata accessor for ControlChannelConnection();
    type metadata accessor for SystemXPCPeerConnection();
    sub_100015E90(&unk_100099DC0, &unk_100077860);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, qword_10009A080);
    }
  }
}

uint64_t sub_10002ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EDD8(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002EF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_10002EFF4(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_100068FD0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EFF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009A178, &qword_1000779C8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      type metadata accessor for SystemXPCPeerConnection();
      swift_dynamicCast();
      sub_100013414(&qword_10009A180, &unk_1000779D0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_10002F23C(v4 + 1, 1);
      }

      v2 = v18;
      sub_10000CC20();
      sub_10002EF04(&unk_10009A0E0, v5, &protocol conformance descriptor for XPCConnection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002F23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100013414(&qword_10009A178, &qword_1000779C8);
  v31 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v30 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_100066980(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v31 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    type metadata accessor for SystemXPCPeerConnection();
    sub_10002EF04(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection, &protocol conformance descriptor for XPCConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    v5 = v30;
    v12 = v32;
    if (!v32)
    {
      goto LABEL_7;
    }
  }

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
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10002F51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredPairableHost.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F62C()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10002F668(uint64_t a1)
{
}

BOOL sub_10002F68C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002F6B0()
{
  v3 = 0;
  sysctlbyname("kern.bootargs", 0, &v3, 0, 0);
  v0 = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v3)
  {
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v1[2] = v0;
    bzero(v1 + 4, v0);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sysctlbyname("kern.bootargs", v1 + 4, &v3, 0, 0);
  return sub_10002F784(v1);
}

uint64_t sub_10002F784(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = static String._fromUTF8Repairing(_:)();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F80C()
{
  sub_10002F6B0();
  if (os_variant_allows_internal_security_policies())
  {
    v0 = &off_10008EAB0;
    v1 = 3;
    while (--v1)
    {
      v2 = v0 + 2;
      swift_bridgeObjectRetain_n();
      v3._countAndFlagsBits = 12605;
      v3._object = 0xE200000000000000;
      String.append(_:)(v3);
      sub_10002F90C();
      v4 = StringProtocol.contains<A>(_:)();

      v0 = v2;
      if (v4)
      {

        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_10002F90C()
{
  result = qword_10009A188;
  if (!qword_10009A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A188);
  }

  return result;
}

uint64_t sub_10002F960(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for SystemXPCListenerConnection();
  v6 = a3;
  static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();

  v7 = swift_dynamicCastClassUnconditional();
  type metadata accessor for RemotePairingDeviceXPCServer();
  v8 = swift_allocObject();
  sub_10002FA0C(v7, a1, a2, v6);
  return v8;
}

void *sub_10002FA0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for XPCReplyProviding();
  __chkstk_darwin(v9 - 8);
  static XPCReplyProviding.passthrough.getter();
  sub_100013414(&qword_10009A270, &unk_100077A40);
  swift_allocObject();
  v4[2] = XPCMessageDispatcher.init(xpcReplyProviding:inboundObserver:outboundObserver:)();
  if (sub_10004997C())
  {
    sub_1000579D4(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v4[4] = a4;
  v4[5] = v10;
  v4[3] = a1;
  sub_10000CBD0();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v13 = a4;

  dispatch thunk of SystemXPCListenerConnection.setPeerConnectionHandler(_:)();

  return v4;
}

uint64_t sub_10002FBB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a3;
  v6 = type metadata accessor for XPCError();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100015EEC(a1, v18, &qword_10009A170, &qword_1000779C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = a4;
      (*(v7 + 32))(v15, v18, v6);
      v20 = static os_log_type_t.error.getter();
      v21 = qword_10009CED0;
      v22 = v7;
      v23 = *(v7 + 16);
      v23(v13, v15, v6);
      if (os_log_type_enabled(v21, v20))
      {
        v24 = swift_slowAlloc();
        v45 = v21;
        v25 = v24;
        v46 = swift_slowAlloc();
        v49[0] = v46;
        *v25 = 136315394;
        *(v25 + 4) = sub_10000C600(v48, v47, v49);
        *(v25 + 12) = 2080;
        v23(v10, v13, v6);
        v26 = String.init<A>(describing:)();
        v28 = v27;
        v29 = *(v22 + 8);
        v29(v13, v6);
        v30 = sub_10000C600(v26, v28, v49);

        *(v25 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v45, v20, "Failed to start %s with error: %s", v25, 0x16u);
        swift_arrayDestroy();

        return (v29)(v15, v6);
      }

      else
      {

        v43 = *(v22 + 8);
        v43(v13, v6);
        return (v43)(v15, v6);
      }
    }

    else
    {
      v31 = static os_log_type_t.debug.getter();
      v32 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v31))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_10000C600(v48, a4, v49);
        _os_log_impl(&_mh_execute_header, v32, v31, "Peer connected to %s XPC service", v33, 0xCu);
        sub_10000CADC(v34);
      }

      type metadata accessor for SystemXPCPeerConnection();
      v35 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();

      sub_100064C00(&v50, v35, v36, v37, v38, v39, v40, v41, v44, v45, v46);
      swift_endAccess();

      v42 = swift_dynamicCastClassUnconditional();

      sub_100030090(v42);
    }
  }

  return result;
}

uint64_t sub_100030090(uint64_t a1)
{
  dispatch thunk of XPCConnection.setTargetQueue(_:)();
  swift_beginAccess();

  sub_100064C00(&v15, a1, v2, v3, v4, v5, v6, v7, v12, v13, v14);
  swift_endAccess();

  sub_10000CBD0();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

  return dispatch thunk of XPCConnection.activate()();
}

uint64_t sub_1000301BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_100013414(&qword_100099488, &unk_100077650);
  __chkstk_darwin(v48);
  v49 = (&v41 - v4);
  v5 = type metadata accessor for XPCDictionary();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      sub_100015EEC(a1, v17, &unk_1000994A0, &unk_100077090);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_beginAccess();
        sub_100067860(v20);
        swift_endAccess();

        return sub_100030708(v17, &unk_1000994A0, &unk_100077090);
      }

      (*(v6 + 32))(v14, v17, v5);
      v21 = static os_log_type_t.debug.getter();
      v22 = qword_10009CED0;
      v23 = *(v6 + 16);
      v47 = v6 + 16;
      v23(v12, v14, v5);
      v46 = v21;
      v24 = v21;
      v25 = v22;
      if (os_log_type_enabled(v22, v24))
      {
        v26 = swift_slowAlloc();
        v43 = v26;
        v45 = swift_slowAlloc();
        v50[0] = v45;
        *v26 = 136315138;
        v23(v9, v12, v5);
        v27 = String.init<A>(describing:)();
        v44 = v23;
        v28 = v27;
        v30 = v29;
        v31 = *(v6 + 8);
        v42 = v25;
        v32 = v12;
        v33 = v31;
        v31(v32, v5);
        v34 = sub_10000C600(v28, v30, v50);

        v35 = v42;
        v36 = v43;
        *(v43 + 1) = v34;
        _os_log_impl(&_mh_execute_header, v35, v46, "Received XPC event from local peer: %s", v36, 0xCu);
        sub_10000CADC(v45);

        v37 = v44;
      }

      else
      {
        v38 = v12;
        v33 = *(v6 + 8);
        v33(v38, v5);
        v37 = v23;
      }

      v39 = v49;
      v40 = *(v48 + 48);
      *v49 = v20;
      v37(v39 + v40, v14, v5);

      dispatch thunk of CodableDispatcher.dispatch(encodedData:context:completion:)();

      sub_100030708(v39, &qword_100099488, &unk_100077650);
      v33(v14, v5);
    }
  }

  return result;
}

uint64_t sub_100030664()
{

  return v0;
}

uint64_t sub_10003069C()
{
  sub_100030664();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100030708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013414(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100030768()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E0D0;
  v1._object = 0x800000010007E0B0;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A278 = v3;
}

void sub_10003088C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v9 = qword_10009CEF0;
  v13._object = 0x800000010007E060;
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000004BLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v13);

  *a4 = v12._countAndFlagsBits;
  *a5 = v12._object;
}

void sub_100030960()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E180;
  v1._countAndFlagsBits = 0xD000000000000068;
  v1._object = 0x800000010007E110;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000005DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2A8 = v3;
}

Swift::String *sub_100030A34()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v5._object = 0x800000010007E020;
  v1._object = 0x800000010007DFB0;
  v1._countAndFlagsBits = 0x1000000000000063;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000039;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5);

  result = swift_allocObject();
  result[1] = v3;
  qword_10009A2B8 = sub_100035FE4;
  unk_10009A2C0 = result;
  return result;
}

void sub_100030B2C()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E2D0;
  v1._object = 0x800000010007E2A0;
  v4._countAndFlagsBits = 0xD000000000000061;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2C8 = v3;
}

void sub_100030C00()
{
  if (qword_100098EB8 != -1)
  {
    swift_once();
  }

  v0 = qword_10009CEF0;
  v4._object = 0x800000010007E390;
  v1._countAndFlagsBits = 0xD00000000000004CLL;
  v1._object = 0x800000010007E340;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000049;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10009A2D8 = v3;
}

uint64_t sub_100030CD4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000687A4(a1);
  if (v6 || (result = sub_1000687A4(a1), v8))
  {

    v9 = static os_log_type_t.default.getter();
    v10 = qword_10009CED0;
    (*(v3 + 16))(v5, a1, v2);
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v3 + 8))(v5, v2);
      v16 = sub_10000C600(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v9, "Ended promptless pairing session %{public}s", v11, 0xCu);
      sub_10000CADC(v12);
    }

    else
    {
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

void sub_100030ED8(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = static os_log_type_t.default.getter();
  v17 = qword_10009CED0;
  v18 = *(v10 + 16);
  if (a2)
  {
    v18(v15, a1, v9);
    if (os_log_type_enabled(v17, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = a1;
      v21 = v20;
      v37 = v20;
      *v19 = 136446210;
      v22 = UUID.uuidString.getter();
      v35 = a4;
      v24 = v23;
      (*(v10 + 8))(v15, v9);
      v25 = sub_10000C600(v22, v24, &v37);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v16, "Automation promptless pairing allowed by session %{public}s", v19, 0xCu);
      sub_10000CADC(v21);
    }

    else
    {
      (*(v10 + 8))(v15, v9);
    }

    swift_isUniquelyReferenced_nonNull_native();
    v37 = *v5;
    sub_1000690D0();
    *v5 = v37;
  }

  else
  {
    v18(v13, a1, v9);
    if (os_log_type_enabled(v17, v16))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = a4;
      v28 = v27;
      v37 = v27;
      *v26 = 136446210;
      v29 = UUID.uuidString.getter();
      v34 = v5;
      v30 = v29;
      v32 = v31;
      (*(v10 + 8))(v13, v9);
      v5 = v34;
      v33 = sub_10000C600(v30, v32, &v37);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v17, v16, "Non-automation promptless pairing allowed by session %{public}s", v26, 0xCu);
      sub_10000CADC(v28);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }

    swift_isUniquelyReferenced_nonNull_native();
    v37 = v5[1];
    sub_1000690D0();
    v5[1] = v37;
  }
}

uint64_t sub_10003128C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100013414(&qword_10009A4A8, &qword_100077B88);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  sub_10005B1E8(a1, &v32 - v10);
  v12 = sub_100013414(&qword_10009A4B0, &qword_100077B90);
  if (sub_100022484(v11, 1, v12) != 1)
  {
    v16 = &v11[*(v12 + 48)];
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v11, v19);
    v20 = sub_100013414(&qword_10009A498, &qword_100077B78);
    v21 = (a3 + *(v20 + 48));
    v22 = enum case for PermittedPromptlessPairingMode.automation(_:);
    v23 = type metadata accessor for PermittedPromptlessPairingMode();
    (*(*(v23 - 8) + 104))(a3, v22, v23);
    *v21 = v17;
    v21[1] = v18;
LABEL_6:
    v14 = a3;
    v15 = 0;
    v13 = v20;
    return sub_1000223E8(v14, v15, 1, v13);
  }

  sub_10003625C(v11);
  sub_10005B1E8(a2, v9);
  if (sub_100022484(v9, 1, v12) != 1)
  {
    v24 = &v9[*(v12 + 48)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 8))(v9, v27);
    v20 = sub_100013414(&qword_10009A498, &qword_100077B78);
    v28 = (a3 + *(v20 + 48));
    v29 = enum case for PermittedPromptlessPairingMode.nonAutomation(_:);
    v30 = type metadata accessor for PermittedPromptlessPairingMode();
    (*(*(v30 - 8) + 104))(a3, v29, v30);
    *v28 = v25;
    v28[1] = v26;
    goto LABEL_6;
  }

  sub_10003625C(v9);
  v13 = sub_100013414(&qword_10009A498, &qword_100077B78);
  v14 = a3;
  v15 = 1;
  return sub_1000223E8(v14, v15, 1, v13);
}

void sub_100031548()
{
  sub_10000D060();
  v1 = v0;
  v21 = v2;
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000CBBC();
  v23 = v4;
  v24 = v3;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v20 = v6 - v5;
  sub_10002F608();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  sub_10000CBDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  sub_10000CBDC();
  sub_100035DCC();
  static DispatchQoS.userInitiated.getter();
  v25 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v26 = *(v8 + 104);
  v26(v11);
  sub_100036008(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100036538();
  sub_100035F9C(v13, &qword_10009A960, &unk_100077B40, v14);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for UUID();
  sub_100036008(&unk_10009BE40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = sub_100036570();
  v16 = sub_100036570();
  *(v0 + 48) = v15;
  *(v0 + 56) = v16;
  *(v0 + 64) = [objc_allocWithZone(USBListener) init];
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 16) = v21;
  v22 = v21;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (v26)(v11, v25, v19);
  (*(v23 + 104))(v20, enum case for DispatchQoS.QoSClass.userInteractive(_:), v24);
  static OS_dispatch_queue.global(qos:)();
  (*(v23 + 8))(v20, v24);
  static DispatchQoS.unspecified.getter();
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (v26)(v11, v25, v19);
  v17 = *(v0 + 32);
  static DispatchQoS.unspecified.getter();
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v1 + 40) = v18;
  sub_1000135A0();
}

void sub_1000319E4()
{
  sub_10000D060();
  v1 = v0;
  v36 = v2;
  v37 = v3;
  v34 = v4;
  v6 = v5;
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v39 = v8;
  v40 = v7;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for UUID();
  sub_10000CBBC();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v35 = v19;
  __chkstk_darwin(v20);
  sub_10000CBDC();
  v23 = v22 - v21;
  dispatch_suspend(*(v1 + 40));
  v33 = *(v1 + 32);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v24 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v18, v6, v12);
  v25 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v26 = v25 + v16;
  v27 = (v25 + v16) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  (*(v14 + 32))(v28 + v25, v18, v12);
  *(v28 + v26) = v34;
  v29 = v28 + v27;
  v30 = v37;
  *(v29 + 8) = v36;
  *(v29 + 16) = v30;
  v41[4] = sub_100036414;
  v41[5] = v28;
  sub_10001ACF4();
  v41[1] = 1107296256;
  sub_10000EE28();
  v41[2] = v31;
  v41[3] = &unk_1000900B0;
  v32 = _Block_copy(v41);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v39 + 8))(v11, v40);
  (*(v35 + 8))(v23, v38);

  sub_1000135A0();
}

void sub_100031CD4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_100030ED8(a2, a3 & 1, a4, a5);
    swift_endAccess();
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    dispatch_resume(v10);
  }
}

void sub_100031DC8()
{
  sub_10000D060();
  v25 = v1;
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v27 = v3;
  v28 = v2;
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v6 = v5 - v4;
  v7 = type metadata accessor for UUID();
  sub_10000CBBC();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v19 = v18 - v17;
  dispatch_suspend(*(v0 + 40));
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v13, v25, v7);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v13, v7);
  v29[4] = sub_100036384;
  v29[5] = v22;
  sub_10001ACF4();
  v29[1] = 1107296256;
  sub_10000EE28();
  v29[2] = v23;
  v29[3] = &unk_100090060;
  v24 = _Block_copy(v29);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v27 + 8))(v6, v28);
  (*(v15 + 8))(v19, v26);

  sub_1000135A0();
}

void sub_10003207C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_100030CD4(a2);
    swift_endAccess();
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);

    dispatch_resume(v4);
  }
}

void sub_100032150()
{
  sub_10000D060();
  v1 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v14 = v13 - v12;
  dispatch_suspend(*(v0 + 40));
  static DispatchWorkItemFlags.barrier.getter();
  sub_10000CBD0();
  v15 = swift_allocObject();
  swift_weakInit();
  v18[4] = sub_1000362C4;
  v18[5] = v15;
  sub_10001ACF4();
  v18[1] = 1107296256;
  sub_10000EE28();
  v18[2] = v16;
  v18[3] = &unk_100090010;
  v17 = _Block_copy(v18);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);

  sub_1000135A0();
}

void sub_100032334(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_100013414(&qword_10009A4B8, &qword_100077B98);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    v1 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10009CED0, "Ended all promptless pairing sessions", 37, 2, _swiftEmptyArrayStorage);
    swift_endAccess();
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    dispatch_resume(v3);
  }
}

uint64_t sub_100032460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100013414(&qword_10009A498, &qword_100077B78);
  sub_1000223E8(a1, 1, 1, v3);
  v4 = *(v1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000361BC;
  *(v6 + 24) = v5;
  v10[4] = sub_1000361C4;
  v10[5] = v6;
  sub_100036518();
  v10[1] = 1107296256;
  v10[2] = sub_100032698;
  v10[3] = &unk_10008FFE8;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000325C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A4A0, &qword_100077B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  sub_10003128C(v8, v7, v6);

  return sub_1000361EC(v6, a1);
}

uint64_t sub_1000326C0()
{
  v1 = *(v0 + 64);
  sub_10000CBD0();
  v2 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1000361B4;
  v10[5] = v2;
  sub_100036518();
  v10[1] = 1107296256;
  v10[2] = sub_100050100;
  v10[3] = &unk_10008FF70;
  v3 = _Block_copy(v10);
  v4 = v1;

  v5 = [v4 addDisconnectHandler:v3];
  _Block_release(v3);

  if (v5)
  {
    if ([*(v0 + 64) startOnQueue:*(v0 + 16)])
    {
      v6 = static os_log_type_t.debug.getter();
      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10009CED0, "USB listener started", 20, 2, _swiftEmptyArrayStorage);
      return 1;
    }

    v9 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10009CED0, "Failed to start USB listener.", 29, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10009CED0, "Failed to register USB disconnect handler.", 42, 2, _swiftEmptyArrayStorage);
  }

  return 0;
}

uint64_t sub_100032848(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100032150();
  }

  v1 = static os_log_type_t.default.getter();
  return os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10009CED0, "USB host disconnected; promptless pairing disabled.", 51, 2, _swiftEmptyArrayStorage);
}

void sub_1000328D0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = v1;
    CFUserNotificationCancel(v2);
    v3 = *(v0 + 80);
    *(v0 + 80) = 0;

    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  v4 = *(v0 + 88);
  if (v4)
  {
    v5 = v4;
    [v5 invalidate];
    v6 = *(v0 + 88);
    *(v0 + 88) = 0;

    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  *(v0 + 72) = 0;
  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_100032964()
{
  v1 = *(v0 + 72);
  if ((v1 & 1) == 0)
  {
    *(v0 + 72) = 1;
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  return v1 ^ 1u;
}

void sub_10003299C()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  isa = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for PairingConsentCollectionOutcome();
  sub_10000CBBC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v19 = (v18 - v17);
  if ((sub_100032964() & 1) == 0)
  {
    v28 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Already collecting pairing consent. Rejecting new pairing request.", 66, 2, _swiftEmptyArrayStorage);
    type metadata accessor for RemotePairingError();
    sub_1000364F0();
    v31 = sub_100036008(v29, v30, &protocol conformance descriptor for RemotePairingError);
    v32 = sub_100036550(v31);
    static RemotePairingError.deviceIsAlreadyPairingWithHost.getter();
    *v19 = v32;
    v33 = sub_100036508();
    v34(v33);
    v4(v19);
LABEL_10:
    (*(v15 + 8))(v19, v13);
    goto LABEL_11;
  }

  v60 = v12;
  v61 = v10;
  v62 = v13;
  v20 = v4;
  v21 = *(v0 + 16);
  sub_10000CBD0();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v20;
  v23[5] = v2;

  v24 = v21;
  if ((sub_10002F80C() & 1) == 0)
  {
    v59 = v20;
    if ((os_variant_is_darwinos() & 1) == 0)
    {
      if (is_pairing_restricted_by_findMy())
      {
        v35 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_10009CED0, "Rejecting pairing request as pairing is currently restricted by FindMy", 70, 2, _swiftEmptyArrayStorage);
        type metadata accessor for RemotePairingError();
        sub_1000364F0();
        v38 = sub_100036008(v36, v37, &protocol conformance descriptor for RemotePairingError);
        v39 = sub_100036550(v38);
        static RemotePairingError.findMyRejectedPairing.getter();
        *v19 = v39;
      }

      else
      {
        if (isa)
        {
          sub_100033424(isa);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        v58 = v24;
        if (v6 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v44 = Data._bridgeToObjectiveC()().super.isa;
        }

        v45 = managed_configuration_allow_pairing(isa, v44);

        switch(v45)
        {
          case 0:
            type metadata accessor for RemotePairingError();
            sub_1000364F0();
            v48 = sub_100036008(v46, v47, &protocol conformance descriptor for RemotePairingError);
            v49 = sub_100036550(v48);
            static RemotePairingError.managedConfigurationRejectedPairing.getter();
            *v19 = v49;
            goto LABEL_20;
          case 1:
            v53 = static os_log_type_t.default.getter();
            v54 = qword_10009CED0;
            os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, qword_10009CED0, "ManagedConfiguration approved pairing.", 38, 2, _swiftEmptyArrayStorage);
            v24 = v58;
            if (is_setup_complete())
            {
              v55 = sub_100036508();
              v56(v55);
              sub_100032FD0(v19, v58, v22, v20, v2);

              (*(v15 + 8))(v19, v62);

              sub_100033E80(v60, v61, v0, sub_100035E28, v23, v0);

              goto LABEL_11;
            }

            v57 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v54, "Setup has not completed yet. Approving trust without user dialog.", 65, 2, _swiftEmptyArrayStorage);
            break;
          case 2:
            v50 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, qword_10009CED0, "ManagedConfiguration approved pairing without prompt.", 53, 2, _swiftEmptyArrayStorage);
            goto LABEL_20;
          case 3:
LABEL_20:
            v51 = sub_100036508();
            v13 = v62;
            v52(v51);
            v42 = v19;
            v43 = v58;
            goto LABEL_9;
          default:

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
        }
      }
    }

    v40 = sub_100036508();
    v13 = v62;
    v41(v40);
    v42 = v19;
    v43 = v24;
LABEL_9:
    sub_100032FD0(v42, v43, v22, v59, v2);

    goto LABEL_10;
  }

  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10009CED0, "Free pairing boot arg set. Approving trust without user dialog.", 63, 2, _swiftEmptyArrayStorage);
  v26 = sub_100036508();
  v27(v26);
  sub_100032FD0(v19, v24, v22, v20, v2);

  (*(v15 + 8))(v19, v62);
LABEL_11:
  sub_1000135A0();
}

uint64_t sub_100032FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v30 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PairingConsentCollectionOutcome();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = v25;
  *(v18 + v17) = v24;
  v20 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v19;
  v20[1] = v21;
  aBlock[4] = sub_100036118;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008FF48;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);
}

uint64_t sub_100033394(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (PairingConsentCollectionOutcome.terminal.getter())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000328D0();
    }
  }

  return a3(a1);
}

uint64_t sub_100033424(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100013414(&qword_10009A470, &unk_100077B50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000CA80(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E8A4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E8A4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E8A4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000E8A4(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000336E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100013414(&qword_10009A470, &unk_100077B50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + 4 * v11);
    sub_10000CA80(*(a1 + 56) + 32 * v11, v33 + 8);
    LODWORD(v33[0]) = v12;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v12;
    swift_dynamicCast();
    sub_10000E8A4((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000E8A4(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000E8A4(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_10000E8A4(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_10003399C(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingConsentCollectionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = static os_log_type_t.default.getter();
  if (a1)
  {
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "Authenticating user with passcode challenge", 43, 2, _swiftEmptyArrayStorage);

    sub_10003500C(a4, a2, a3);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "User declined pairing prompt", 28, 2, _swiftEmptyArrayStorage);
    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v13 = swift_allocError();
    static RemotePairingError.userRejectedPairing.getter();
    *v11 = v13;
    (*(v9 + 104))(v11, enum case for PairingConsentCollectionOutcome.rejected(_:), v8);
    a2(v11);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100033B9C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for PairingConsentCollectionOutcome();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    swift_errorRetain();
    v10 = static os_log_type_t.default.getter();
    v11 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v10))
    {
      v12 = swift_slowAlloc();
      v23 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v22 = a3;
      v15 = v14;
      v24 = a1;
      v25 = v14;
      *v13 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000C600(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v10, "Rejecting pairing attempt as authentication policy evaluation failed with error: %s", v13, 0xCu);
      sub_10000CADC(v15);

      a2 = v23;
    }

    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v19 = swift_allocError();
    static RemotePairingError.failedToAuthenticateUser.getter();
    *v9 = v19;
    (*(v7 + 104))(v9, enum case for PairingConsentCollectionOutcome.rejected(_:), v6);
    a2(v9);
  }

  else
  {
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10009CED0, "Successfully authenticated user", 31, 2, _swiftEmptyArrayStorage);
    (*(v7 + 104))(v9, enum case for PairingConsentCollectionOutcome.userConsented(_:), v6);
    a2(v9);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100033E80(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v79 = a3;
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v15 - 8);
  v78 = v15;
  __chkstk_darwin(v15);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PairingConsentCollectionOutcome();
  v80 = *(v18 - 8);
  v81 = v18;
  __chkstk_darwin(v18);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  v82 = a4;
  v21[2] = a4;
  v21[3] = a5;
  v84 = a5;
  v22 = v21;
  v21[4] = a6;
  v83 = a6;
  if (!a2)
  {
    goto LABEL_8;
  }

  v23 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    String.count.getter();
    String.index(_:offsetBy:)();
    v85 = String.subscript.getter();
    v86 = v24;
    v87 = v25;
    v88 = v26;
    static CharacterSet.newlines.getter();
    sub_100035F48();
    v27 = StringProtocol.components(separatedBy:)();
    (*(v12 + 8))(v14, v11);

    v85 = v27;
    sub_100013414(&qword_10009B0B0, &unk_1000781C0);
    sub_100035F9C(&qword_10009A488, &qword_10009B0B0, &unk_1000781C0, &protocol conformance descriptor for [A]);
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    if (qword_100098E90 != -1)
    {
      swift_once();
    }

    v31 = qword_10009A2B8;
    sub_100013414(&qword_1000999F0, &unk_100077530);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100077360;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100022420();
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    v33 = v31(v32);
    v35 = v34;
  }

  else
  {
LABEL_8:
    v36 = qword_100098E88;

    if (v36 != -1)
    {
      swift_once();
    }

    v35 = *(&xmmword_10009A2A8 + 1);
    v33 = xmmword_10009A2A8;
  }

  sub_100013414(&unk_10009A910, &unk_100077D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773A0;
  v85 = kCFUserNotificationAlertHeaderKey;
  v38 = kCFUserNotificationAlertHeaderKey;
  sub_100013414(&qword_10009A478, &qword_100077B60);
  sub_100035E40();
  AnyHashable.init<A>(_:)();
  if (qword_100098E70 != -1)
  {
    swift_once();
  }

  v39 = xmmword_10009A278;
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v39;
  v85 = kCFUserNotificationAlertMessageKey;
  v40 = kCFUserNotificationAlertMessageKey;

  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v33;
  *(inited + 152) = v35;
  v85 = kCFUserNotificationDefaultButtonTitleKey;
  v41 = kCFUserNotificationDefaultButtonTitleKey;
  AnyHashable.init<A>(_:)();
  if (qword_100098E80 != -1)
  {
    swift_once();
  }

  v42 = qword_10009A298;
  v43 = qword_10009A2A0;
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v42;
  *(inited + 224) = v43;
  v85 = kCFUserNotificationAlternateButtonTitleKey;
  v44 = kCFUserNotificationAlternateButtonTitleKey;

  AnyHashable.init<A>(_:)();
  if (qword_100098E78 != -1)
  {
    swift_once();
  }

  v46 = qword_10009A288;
  v45 = qword_10009A290;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v46;
  *(inited + 296) = v45;

  v47 = Dictionary.init(dictionaryLiteral:)();
  *&v93 = SBUserNotificationAlternateButtonPresentationStyleKey;
  v48 = SBUserNotificationAlternateButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  v94 = &type metadata for UInt32;
  LODWORD(v93) = 0;
  sub_10000E8A4(&v93, v92);
  swift_isUniquelyReferenced_nonNull_native();
  v91 = v47;
  sub_100068C84(v92, &v85);
  v49 = v91;
  sub_10002269C(&v85);
  *&v93 = SBUserNotificationDefaultButtonPresentationStyleKey;
  v50 = SBUserNotificationDefaultButtonPresentationStyleKey;
  AnyHashable.init<A>(_:)();
  v94 = &type metadata for UInt32;
  LODWORD(v93) = 2;
  sub_10000E8A4(&v93, v92);
  swift_isUniquelyReferenced_nonNull_native();
  v91 = v49;
  sub_100068C84(v92, &v85);
  sub_10002269C(&v85);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v52 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, isa);

  if (v52)
  {
    v53 = v79;
    if (*(v79 + 72))
    {
      v54 = *(v79 + 80);
      *(v79 + 80) = v52;
      v55 = v52;

      OS_dispatch_queue.assertOnQueueHierarchy()();
      v82 = *(v53 + 24);
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v53;
      v56[4] = sub_100035E34;
      v56[5] = v22;
      v89 = sub_100035F3C;
      v90 = v56;
      v85 = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100050100;
      v88 = &unk_10008FDE0;
      v57 = _Block_copy(&v85);
      v58 = v55;

      v59 = v73;
      static DispatchQoS.unspecified.getter();
      *&v93 = _swiftEmptyArrayStorage;
      sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100013414(&unk_100099840, &unk_100077350);
      sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
      v60 = v75;
      v61 = v78;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);

      (*(v77 + 8))(v60, v61);
      (*(v74 + 8))(v59, v76);
    }

    else
    {
      v68 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, qword_10009CED0, "User declined pairing prompt", 28, 2, _swiftEmptyArrayStorage);
      type metadata accessor for RemotePairingError();
      sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      v69 = swift_allocError();
      static RemotePairingError.userRejectedPairing.getter();
      *v20 = v69;
      v71 = v80;
      v70 = v81;
      (*(v80 + 104))(v20, enum case for PairingConsentCollectionOutcome.rejected(_:), v81);
      v82(v20);
      (*(v71 + 8))(v20, v70);
    }
  }

  else
  {
    v62 = static os_log_type_t.fault.getter();
    v63 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, qword_10009CED0, "Failed to present trust dialog to the user", 42, 2, _swiftEmptyArrayStorage);
    v64 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v63, "User declined pairing prompt", 28, 2, _swiftEmptyArrayStorage);
    type metadata accessor for RemotePairingError();
    sub_100036008(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v65 = swift_allocError();
    static RemotePairingError.userRejectedPairing.getter();
    *v20 = v65;
    v67 = v80;
    v66 = v81;
    (*(v80 + 104))(v20, enum case for PairingConsentCollectionOutcome.rejected(_:), v81);
    v82(v20);
    (*(v67 + 8))(v20, v66);
  }
}

uint64_t sub_100034A90(__CFUserNotification *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = CFUserNotificationReceiveResponse(a1, 0.0, (v14 + 16));
  v19 = *(a2 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  aBlock[4] = sub_100035FEC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008FE80;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_100034DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = a2;
  swift_beginAccess();
  return sub_100034E3C(v7, *(a3 + 16), a4);
}

uint64_t sub_100034E3C(int a1, char a2, uint64_t (*a3)(uint64_t))
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (a1)
  {
    v6 = static os_log_type_t.error.getter();
    v7 = qword_10009CED0;
    result = os_log_type_enabled(qword_10009CED0, v6);
    if (result)
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v7, v6, "Received invalid status code %d when reading response to trust prompt notification", v9, 8u);
    }
  }

  else
  {
    switch(a2 & 3)
    {
      case 1:
        v14 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10009CED0, "User approved trust dialog", 26, 2, _swiftEmptyArrayStorage);
        v13 = 1;
        goto LABEL_12;
      case 2:
        v11 = static os_log_type_t.fault.getter();
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10009CED0, "User selected unknown button on trust dialog prompt", 51, 2, _swiftEmptyArrayStorage);
        goto LABEL_10;
      case 3:
        v12 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10009CED0, "The notification was cancelled", 30, 2, _swiftEmptyArrayStorage);
        goto LABEL_10;
      default:
        v10 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10009CED0, "User declined trust dialog", 26, 2, _swiftEmptyArrayStorage);
LABEL_10:
        v13 = 0;
LABEL_12:
        result = a3(v13);
        break;
    }
  }

  return result;
}

void sub_10003500C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = type metadata accessor for POSIXError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PairingConsentCollectionOutcome();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  if (MKBGetDeviceLockState() == 3)
  {
    v15 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10009CED0, "Not requiring user passcode as key bag is disabled", 50, 2, _swiftEmptyArrayStorage);
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v16, "Successfully authenticated user", 31, 2, _swiftEmptyArrayStorage);
    (*(v11 + 104))(v13, enum case for PairingConsentCollectionOutcome.userConsented(_:), v10);
    a2(v13);
    (*(v11 + 8))(v13, v10);
LABEL_9:

    return;
  }

  v18 = [objc_allocWithZone(LAContext) init];
  v19 = v18;
  if (*(a1 + 72))
  {
    v20 = *(a1 + 88);
    *(a1 + 88) = v18;
    v21 = v18;

    OS_dispatch_queue.assertOnQueueHierarchy()();
    sub_100013414(&qword_10009A490, &unk_100077B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077360;
    *(inited + 32) = 2;
    if (qword_100098EA0 != -1)
    {
      swift_once();
    }

    v23 = xmmword_10009A2D8;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v23;

    v33 = Dictionary.init(dictionaryLiteral:)();
    if (qword_100098E98 != -1)
    {
      swift_once();
    }

    v30 = &type metadata for String;
    aBlock = xmmword_10009A2C8;

    sub_10004C248(&aBlock, 1037);
    v24 = sub_1000336E8(v33);

    v25 = swift_allocObject();
    *(v25 + 16) = sub_100036000;
    *(v25 + 24) = v14;
    v31 = sub_100036050;
    v32 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v29 = sub_100035518;
    v30 = &unk_10008FEF8;
    v26 = _Block_copy(&aBlock);

    sub_10003607C(1013, v24, v26, v21);

    _Block_release(v26);
    goto LABEL_9;
  }

  LODWORD(aBlock) = 89;
  sub_10004FD70(_swiftEmptyArrayStorage);
  sub_100036008(&unk_10009AB20, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v27 = POSIXError._nsError.getter();
  (*(v7 + 8))(v9, v6);
  sub_100033B9C(v27, a2, a3);
}

uint64_t sub_100035518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1000355C4()
{
  sub_10000D060();
  v50 = v1;
  v51 = v2;
  v49 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v57 = v5;
  v58 = v4;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v56 = v7 - v6;
  sub_10002F608();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v54 = v9;
  v55 = v8;
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v53 = v11 - v10;
  sub_10002F608();
  v12 = type metadata accessor for DispatchTimeInterval();
  sub_10000CBBC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000CBDC();
  v18 = (v17 - v16);
  v61 = type metadata accessor for DispatchTime();
  sub_10000CBBC();
  v52 = v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v48 - v24;
  sub_10002F608();
  v60 = type metadata accessor for UUID();
  sub_10000CBBC();
  v27 = v26;
  v29 = *(v28 + 64);
  v31 = __chkstk_darwin(v30);
  v32 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v48 - v33;
  UUID.init()();
  v59 = v34;
  sub_1000319E4();
  if (([*(v0 + 64) active] & 1) == 0 && (sub_1000326C0() & 1) == 0)
  {
    v35 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, qword_10009CED0, "Failed to start USB listener.", 29, 2, _swiftEmptyArrayStorage);
  }

  v51 = *(v0 + 16);
  static DispatchTime.now()();
  *v18 = 10;
  (*(v14 + 104))(v18, enum case for DispatchTimeInterval.seconds(_:), v12);
  v48 = v25;
  + infix(_:_:)();
  (*(v14 + 8))(v18, v12);
  v52 = *(v52 + 8);
  (v52)(v23, v61);
  sub_10000CBD0();
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v60;
  (*(v27 + 16))(v32, v59, v60);
  v38 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  (*(v27 + 32))(v39 + v38, v32, v37);
  v63[4] = sub_100035E10;
  v63[5] = v39;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 1107296256;
  sub_10000EE28();
  v63[2] = v40;
  v63[3] = &unk_10008FD40;
  v41 = _Block_copy(v63);

  v42 = v53;
  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_100036008(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100036538();
  sub_100035F9C(v43, &unk_100099840, &unk_100077350, v44);
  v45 = v56;
  v46 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v48;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);
  (*(v57 + 8))(v45, v46);
  (*(v54 + 8))(v42, v55);
  (v52)(v47, v61);
  (*(v27 + 8))(v59, v60);

  sub_1000135A0();
}

uint64_t sub_100035B60(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100031DC8();
  }

  return result;
}

uint64_t sub_100035BC0()
{

  v1 = *(v0 + 88);
  return v0;
}

uint64_t sub_100035C24()
{
  sub_100035BC0();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100035C7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100035CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100035D34(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100035D40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100035D80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100035DCC()
{
  result = qword_10009A990;
  if (!qword_10009A990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A990);
  }

  return result;
}

unint64_t sub_100035E40()
{
  result = qword_10009A920;
  if (!qword_10009A920)
  {
    sub_100015E90(&qword_10009A478, &qword_100077B60);
    sub_100036008(&qword_100099080, type metadata accessor for CFString, &unk_100076E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A920);
  }

  return result;
}

uint64_t sub_100035EF4()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100035F48()
{
  result = qword_10009A480;
  if (!qword_10009A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A480);
  }

  return result;
}

uint64_t sub_100035F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100015E90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100036008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003607C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 evaluatePolicy:a1 options:isa reply:a3];
}

uint64_t sub_100036118()
{
  v1 = *(type metadata accessor for PairingConsentCollectionOutcome() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100033394(v0 + v2, v4, v5);
}

uint64_t sub_1000361EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A4A0, &qword_100077B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003625C(uint64_t a1)
{
  v2 = sub_100013414(&qword_10009A4A8, &qword_100077B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000362CC()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10003639C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100036414()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  sub_100031CD4(v4, (v0 + v2), v5, v7, v8);
}

uint64_t sub_100036550(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100036570()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100036590()
{
  sub_10000D060();
  v2 = v1;
  v4 = v3;
  v89 = v5;
  v86 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v93 = v6;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v85 = v9 - v8;
  sub_10002F608();
  v88 = type metadata accessor for UUID();
  sub_10000CBBC();
  v84 = v10;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v73 = v13 - v12;
  v79 = sub_100013414(&qword_10009A8F8, &unk_100077D70);
  sub_10000CC04();
  __chkstk_darwin(v14);
  v81 = &v69[-v15];
  v16 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v17 = sub_10000D368(v16);
  __chkstk_darwin(v17);
  sub_10000EDF0();
  v80 = v18 - v19;
  v21 = __chkstk_darwin(v20);
  v74 = &v69[-v22];
  __chkstk_darwin(v21);
  v87 = &v69[-v23];
  sub_10002F608();
  v24 = type metadata accessor for ControlChannelConnection.State();
  sub_10000CBBC();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10000CBDC();
  sub_100040074();
  v28 = (*(v2 + 16))(v4, v2);
  v29 = v28;
  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10003FFC8();
    sub_10000D128(v30, 255, v31, &protocol conformance descriptor for ControlChannelConnection);
    sub_10000D4B0();
    Set.Iterator.init(_cocoa:)();
    v29 = v96;
    v32 = v97;
    v33 = v98;
    v34 = v99;
    v35 = v100;
  }

  else
  {
    v34 = 0;
    v36 = -1 << *(v28 + 32);
    v32 = v28 + 56;
    v33 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = v38 & *(v28 + 56);
  }

  v75 = v33;
  v39 = (v33 + 64) >> 6;
  v92 = v26 + 88;
  v91 = enum case for ControlChannelConnection.State.authenticated(_:);
  v90 = v26 + 8;
  v71 = (v84 + 32);
  v72 = (v84 + 8);
  LODWORD(v84) = enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:);
  v82 = (v93 + 8);
  v83 = (v93 + 104);
  v78 = v24;
  v77 = v0;
  v76 = v29;
  if (v29 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v40 = v34;
  v41 = v34;
  if (v35)
  {
LABEL_12:
    sub_100040048();
    v44 = v43 & v42;
    v46 = *(*(v29 + 48) + ((v41 << 9) | (8 * v45)));

    if (!v46)
    {
LABEL_40:
      sub_1000134CC(v29);
      sub_1000135A0();
      return;
    }

    while (1)
    {
      v93 = v44;
      dispatch thunk of ControlChannelConnection.state.getter();
      v48 = sub_100040038();
      v50 = v49(v48);
      if (v50 == v91)
      {
        v51 = sub_100040038();
        v52(v51);
        v53 = v88;
        sub_100040018(v89);
        if (!v67)
        {
          v59 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
          if (v59)
          {
            v60 = v59;
            v61 = [v59 identifier];

            if (v61)
            {
              v62 = v74;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v63 = 0;
              v64 = v81;
            }

            else
            {
              v63 = 1;
              v64 = v81;
              v62 = v74;
            }

            sub_1000223E8(v62, v63, 1, v53);
            v65 = v87;
            v29 = &unk_100077D60;
            sub_10003DED0(v62, v87, &qword_1000999E8, &unk_100077D60);
          }

          else
          {
            v65 = v87;
            sub_1000223E8(v87, 1, 1, v53);
            v64 = v81;
            v29 = &unk_100077D60;
          }

          v66 = *(v79 + 48);
          sub_10003DE84(v65, v64, &qword_1000999E8, &unk_100077D60);
          sub_10003DE84(v89, &v64[v66], &qword_1000999E8, &unk_100077D60);
          sub_100040018(v64);
          if (v67)
          {
            sub_1000400E4(v65);
            sub_100040018(&v64[v66]);
            if (!v67)
            {

LABEL_37:
              sub_100040004();
              sub_100022560(v64, &qword_10009A8F8, &unk_100077D70);
              goto LABEL_21;
            }

            sub_1000400E4(v64);
            sub_100040004();
          }

          else
          {
            sub_10003DE84(v64, v80, &qword_1000999E8, &unk_100077D60);
            sub_100040018(&v64[v66]);
            if (v67)
            {

              sub_1000400E4(v87);
              (*v72)(v80, v53);
              goto LABEL_37;
            }

            (*v71)(v73, &v64[v66], v53);
            sub_10000D128(&qword_10009A900, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();
            v68 = *v72;
            (*v72)(v73, v53);
            sub_1000400E4(v87);
            v68(v80, v53);
            sub_1000400E4(v81);
            sub_100040004();
            if ((v70 & 1) == 0)
            {

              goto LABEL_21;
            }
          }
        }

        v55 = v85;
        v54 = v86;
        (*v83)(v85, v84, v86);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v82)(v55, v54);
      }

      else
      {

        v56 = sub_100040038();
        v58(v56, v57);
      }

LABEL_21:
      v34 = v41;
      v35 = v93;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v47 = __CocoaSet.Iterator.next()();
      if (v47)
      {
        v94 = v47;
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v41 = v34;
        v44 = v35;
        if (v95)
        {
          continue;
        }
      }

      goto LABEL_40;
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
      goto LABEL_40;
    }

    ++v40;
    if (*(v32 + 8 * v41))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100036D60()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for PairingConsentCollector();
    swift_allocObject();
    v4 = v3;
    sub_100031548();
    v1 = v5;
    *(v2 + 32) = v5;
  }

  return v1;
}

uint64_t sub_100036DDC()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_1000388DC();
    v1 = sub_10003EDC0(v2, v3, 0);
    *(v0 + 40) = v1;
  }

  return v1;
}

void *sub_100036E54()
{
  v1 = type metadata accessor for InProcessIRKGenerator();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000EDF0();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*(v0 + 48))
  {
    v11 = *(v0 + 48);
  }

  else
  {
    InProcessIRKGenerator.init()();
    v12 = sub_1000388DC();
    (*(v3 + 16))(v7, v10, v1);
    v11 = sub_10003E034(v7, v12);
    (*(v3 + 8))(v10, v1);
    *(v0 + 48) = v11;
  }

  return v11;
}

uint64_t sub_100036F94()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_1000388DC();

    v1 = sub_10003F1CC(v4, v2, v3, type metadata accessor for PairingManagementService, 112, sub_10003F2F4);
    *(v0 + 56) = v1;
  }

  return v1;
}

void sub_100037040()
{
  sub_10000D060();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  sub_100040074();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10003FFB0();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v16 = v15 - v14;
  if (!*(v0 + 64))
  {
    v37 = v12;
    v36 = v13;
    v38 = sub_100036E54();
    v39 = sub_100038058();
    static DispatchQoS.userInitiated.getter();
    *&v47 = _swiftEmptyArrayStorage;
    sub_10000EE3C();
    sub_10000D128(v17, 255, v18, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v5 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v19 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    v20 = sub_100040164();
    v21(v20);
    (*(v9 + 8))(v1, v7);
    (*(v36 + 8))(v16, v37);
    v22 = v0;
    v23 = sub_1000388DC();
    v48 = type metadata accessor for RemotePairingDeviceService();
    v49 = sub_10000D128(&qword_10009A980, v24, type metadata accessor for RemotePairingDeviceService, &unk_100077CC8);
    *&v47 = v0;
    v45 = v48;
    sub_10000D554();
    v46 = sub_10000D128(v25, v26, type metadata accessor for RemotePairingDeviceService, v27);
    *&v44 = v0;
    v28 = type metadata accessor for LockStateManager(0);
    v43[3] = v28;
    v43[4] = &off_100091068;
    v43[0] = v23;
    type metadata accessor for RSDService();
    v29 = swift_allocObject();
    sub_10003EA8C(v43, v28);
    sub_10000CC38();
    __chkstk_darwin(v30);
    sub_10000CBDC();
    v33 = (v32 - v31);
    (*(v34 + 16))(v32 - v31);
    v35 = *v33;
    v41 = v28;
    v42 = &off_100091068;
    *&v40 = v35;
    *(v29 + 16) = 50;
    *(v29 + 24) = &_swiftEmptySetSingleton;
    sub_1000118F0(0, &qword_10009BE30, OS_remote_device_ptr);
    swift_retain_n();
    *(v29 + 32) = Dictionary.init(dictionaryLiteral:)();
    *(v29 + 176) = 0;
    *(v29 + 184) = v38;
    sub_100010E18(&v47, v29 + 88);
    sub_100010E18(&v44, v29 + 48);
    *(v29 + 168) = v39;
    *(v29 + 40) = v19;
    sub_100010E18(&v40, v29 + 128);
    sub_10000CADC(v43);
    *(v22 + 64) = v29;
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037544()
{
  sub_10000D060();
  sub_100040098();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10003FFB0();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_100040144();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_100040074();
  if (!*(v0 + 72))
  {
    v23 = v14;
    v24 = v13;
    v25 = sub_100036E54();
    static DispatchQoS.userInitiated.getter();
    sub_10000EE3C();
    sub_10000D128(v15, 255, v16, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100040068();
    sub_100028120(v17, v18, v19);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v4;
    (*(v6 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
    v21 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v6 + 8))(v1, v20);
    (*(v10 + 8))(v2, v8);
    (*(v23 + 8))(v3, v24);
    type metadata accessor for NetworkPairingService();
    v22 = swift_allocObject();
    *(v0 + 72) = sub_10003E688(v0, v25, v21, v22);
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037850()
{
  sub_10000D060();
  sub_100040098();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  sub_100040144();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_100040074();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v16 = v15 - v14;
  if (!*(v0 + 80))
  {
    v28 = v13;
    v29 = v12;
    v31 = sub_100036E54();
    v30 = sub_100038058();
    static DispatchQoS.userInitiated.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10000EE3C();
    sub_10000D128(v17, 255, v18, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v3;
    (*(v5 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v20 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v5 + 8))(v1, v3);
    (*(v9 + 8))(v2, v7);
    (*(v28 + 8))(v16, v29);
    v21 = sub_1000388DC();
    v33 = type metadata accessor for LockStateManager(0);
    v34 = &off_100091068;
    v32 = v21;
    type metadata accessor for NetworkControlChannelService();
    v22 = swift_allocObject();
    sub_10003EA8C(&v32, v33);
    sub_10000CC38();
    __chkstk_darwin(v23);
    sub_10003FFB0();
    (*(v24 + 16))(v19);
    v25 = *v19;

    v27 = sub_10003E71C(v26, v31, v30, v20, v25, v22);
    sub_10000CADC(&v32);
    *(v0 + 80) = v27;
  }

  sub_100040124();
  sub_1000135A0();
}

void sub_100037C2C()
{
  sub_10000D060();
  sub_100040098();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v15 = v14 - v13;
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  __chkstk_darwin(v16);
  sub_10000CBDC();
  sub_100040074();
  if (!*(v0 + 88))
  {
    v32 = v18;
    v33 = v17;
    swift_retain_n();
    v34 = sub_100036E54();
    static DispatchQoS.userInitiated.getter();
    sub_10000EE3C();
    sub_10000D128(v19, 255, v20, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100040068();
    sub_100028120(v21, v22, v23);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v2;
    (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v25 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v4 + 8))(v8, v24);
    (*(v11 + 8))(v15, v9);
    (*(v32 + 8))(v1, v33);
    type metadata accessor for BluetoothControlChannelConnectionService();
    v26 = swift_allocObject();
    v27 = type metadata accessor for RemotePairingDeviceService();
    *(v26 + 112) = v27;
    *(v26 + 120) = sub_10000D128(&qword_10009A980, v28, type metadata accessor for RemotePairingDeviceService, &unk_100077CC8);
    *(v26 + 88) = v0;
    *(v26 + 72) = v27;
    sub_10000D554();
    *(v26 + 80) = sub_10000D128(v29, v30, type metadata accessor for RemotePairingDeviceService, v31);
    *(v26 + 48) = v0;
    *(v26 + 16) = 1;
    *(v26 + 24) = &_swiftEmptySetSingleton;
    *(v26 + 128) = 0;
    *(v26 + 136) = v34;
    *(v26 + 32) = &_swiftEmptySetSingleton;
    *(v26 + 40) = v25;
    *(v0 + 88) = v26;
  }

  sub_1000135A0();
}

uint64_t sub_100037FC4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = sub_100036E54();
    type metadata accessor for DeviceInitiatedPairingService();
    v4 = swift_allocObject();
    v1 = sub_10003EEEC(v2, v3, 0, v4);
    *(v0 + 96) = v1;
  }

  return v1;
}

void *sub_100038058()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    v4 = type metadata accessor for XPCEventPublisher();
    type metadata accessor for AuxiliaryMetadataService();
    swift_allocObject();
    v5 = v3;
    v6 = sub_10004C75C(v5, v4, &off_100090AE8, 0);
    v7 = sub_100038170();
    v1 = sub_10003E2C0(v6, v5, v7, sub_100049AD8, 0, 0xD000000000000019, 0x800000010007EE20, 0xD00000000000002FLL, 0x800000010007E940);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_100038170()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for LockdownStateService();
    swift_allocObject();
    v1 = sub_100027300(v3);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1000381EC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_10003824C(v0);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_10003824C(uint64_t a1)
{
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013414(&unk_10009A950, qword_100077DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773B0;
  sub_100037040();
  v14 = v13;
  *(inited + 56) = type metadata accessor for RSDService();
  *(inited + 64) = &off_100091830;
  *(inited + 32) = v14;
  sub_100037544();
  v16 = v15;
  *(inited + 96) = type metadata accessor for NetworkPairingService();
  *(inited + 104) = &off_1000912B0;
  *(inited + 72) = v16;
  sub_100037850();
  v18 = v17;
  *(inited + 136) = type metadata accessor for NetworkControlChannelService();
  *(inited + 144) = &off_1000904F0;
  *(inited + 112) = v18;
  if (sub_10006ACDC())
  {
    v43 = sub_100036E54();
    v42 = *(a1 + 16);
    v40 = "wn is not available";
    v39 = v11;
    static DispatchQoS.userInitiated.getter();
    *&v46 = _swiftEmptyArrayStorage;
    v38 = sub_10000D128(&qword_100099DB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v41 = v9;
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v44;
    (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
    v20 = v39;
    v42 = OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)();
    (*(v2 + 8))(v4, v19);
    (*(v6 + 8))(v8, v5);
    (*(v45 + 8))(v20, v41);
    v21 = sub_1000388DC();
    v22 = sub_10003F1CC(v43, v42, v21, type metadata accessor for LockdownControlChannelService, 88, sub_10003DFD0);
    sub_10005419C();
    v24 = v23;
    v25 = type metadata accessor for LockdownControlChannelService();
    v48 = &off_10008ECB0;
    v47 = v25;
    *&v46 = v22;
    *(v24 + 16) = 4;
  }

  else
  {
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10009CED0, "Not initializing real LockdownControlChannelService as liblockdown is not available", 83, 2, _swiftEmptyArrayStorage);
    v27 = sub_100036E54();
    v28 = *(a1 + 16);
    v29 = type metadata accessor for DummyLockdownControlChannelService();
    swift_allocObject();
    v30 = sub_100012ED0(v27, v28);
    sub_10005419C();
    v24 = v31;
    v48 = &off_10008EC80;
    v47 = v29;
    *&v46 = v30;
    *(v31 + 16) = 4;
  }

  sub_100010E18(&v46, v24 + 152);
  if (static Defaults.deviceAllowBluetoothDeviceDiscovery.getter())
  {
    sub_100037C2C();
    v33 = v32;
    v34 = *(v24 + 16);
    if (v34 >= *(v24 + 24) >> 1)
    {
      sub_10005419C();
      v24 = v37;
    }

    v35 = type metadata accessor for BluetoothControlChannelConnectionService();
    v48 = &off_10008F6C8;
    v47 = v35;
    *&v46 = v33;
    *(v24 + 16) = v34 + 1;
    sub_100010E18(&v46, v24 + 40 * v34 + 32);
  }

  return v24;
}

uint64_t sub_10003885C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 128))
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v4 = v2;
    sub_1000118F0(0, &qword_100099830, OS_dispatch_source_ptr);
    v3 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    *(v4 + 128) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_1000388DC()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for LockStateManager(0);
    swift_allocObject();
    v1 = sub_1000550A0(v3, 0xD000000000000024, 0x800000010007ED50, sub_100055080, 0);
    *(v2 + 136) = v1;
    v4 = v3;
  }

  return v1;
}

void sub_100038990()
{
  sub_10000D060();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CC04();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v3 = type metadata accessor for DispatchQoS();
  v4 = sub_10000D368(v3);
  __chkstk_darwin(v4);
  sub_10003FFB0();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CC38();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  sub_100040144();
  sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
  v14 = *(v6 + 104);
  v14(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  static DispatchQoS.unspecified.getter();
  sub_10000EE3C();
  sub_10000D128(v8, 255, v9, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100013414(&qword_10009A960, &unk_100077B40);
  sub_100040068();
  sub_100028120(v10, v11, v12);
  sub_100040130();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = sub_1000400A4(0xD00000000000002FLL, 0x800000010007F040);
  static DispatchQoS.unspecified.getter();
  sub_100040130();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + 24) = sub_1000400A4(0xD000000000000038, 0x800000010007F070);
  bzero((v0 + 32), 0x90uLL);
  *(v0 + 176) = 1;
  sub_10003D8A8();
  sub_100040124();
  sub_1000135A0();
}

void sub_100038C28()
{
  sub_10000D060();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v16 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10003FFB0();
  v17[4] = sub_10003FF74;
  v18 = v0;
  sub_10001ACF4();
  v17[1] = 1107296256;
  sub_10000EE28();
  v17[2] = v12;
  v17[3] = &unk_1000902F8;
  v13 = _Block_copy(v17);

  static DispatchQoS.unspecified.getter();
  sub_10000D94C();
  sub_10000D128(v14, 255, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v1, v16);

  sub_1000135A0();
}

void sub_100038E58()
{
  sub_10000D060();
  sub_100040098();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  v32 = v12 - v11;
  sub_1000388DC();
  sub_100055170();

  v13 = *(v0 + 136);

  sub_100055448(0xD00000000000001CLL, 0x800000010007ECE0, v13, v0);

  v14 = sub_100038058();
  sub_10000CBD0();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v14[3];
  v17 = v14[4];
  v14[3] = sub_10003DFB8;
  v14[4] = v15;

  sub_10000FAC8(v16, v17);

  v18 = sub_1000381EC();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    do
    {
      sub_100022260(v20, v34);
      sub_10001355C(v34, v35);
      v21 = sub_100040164();
      v22(v21);
      sub_10000CADC(v34);
      v20 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
  }

  sub_100036DDC();
  sub_10005C570();

  sub_10005B7F4(v23);

  v24 = sub_100036F94();
  sub_1000143DC(v24);

  v25 = sub_100037FC4();
  sub_100023210(v25);

  sub_100049B94();

  sub_1000398A0(0xD00000000000002ELL, 0x800000010007EC80);
  sub_1000398A0(0xD00000000000002BLL, 0x800000010007ECB0);
  sub_100036E54();
  sub_10000CBD0();
  v26 = swift_allocObject();
  swift_weakInit();

  sub_100020070(sub_10003DFC0, v26);

  v27 = SIG_IGN.getter();
  v28 = signal(15, v27);
  sub_10003885C(v28, v29);
  swift_getObjectType();
  sub_10000CBD0();
  v30 = swift_allocObject();
  swift_weakInit();
  v36 = sub_10003DFC8;
  v37 = v30;
  sub_10001ACF4();
  v34[1] = 1107296256;
  v34[2] = sub_100050100;
  v35 = &unk_100090280;
  v31 = _Block_copy(v34);

  j_j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_10001AC88();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v31);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v7, v1);
  (*(v33 + 8))(v32, v8);

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  sub_10003D394();
  sub_1000135A0();
}

uint64_t sub_100039310()
{
  sub_100036E54();
  sub_1000207B0();
}

uint64_t sub_100039488(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10009CED0, "Device metadata did change. Pushing updated info to host via control channels", 77, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003961C();
  }

  return result;
}

uint64_t sub_100039510(unsigned __int8 a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    notify_post([kRemotePairingTrustedHostsUpdatedNotificationName UTF8String]);
    if (a1 <= 2u)
    {
      notify_post([**(&off_100090320 + a1) UTF8String]);
    }
  }

  return result;
}

uint64_t sub_1000395C0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003D2D0();
  }

  return xpc_transaction_exit_clean();
}

void sub_10003961C()
{
  v0 = sub_1000381EC();
  v21 = *(v0 + 16);
  if (!v21)
  {

    return;
  }

  v1 = 0;
  v19 = v0;
  v20 = v0 + 32;
LABEL_3:
  if (v1 >= *(v0 + 16))
  {
    goto LABEL_24;
  }

  sub_100022260(v20 + 40 * v1, v23);
  v2 = v24;
  v3 = v25;
  sub_10001355C(v23, v24);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CADC(v23);
  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10003FFC8();
    sub_10000D128(&unk_10009BE10, 255, v5, &protocol conformance descriptor for ControlChannelConnection);
    Set.Iterator.init(_cocoa:)();
    v4 = v26;
    v6 = v27;
    v8 = v28;
    v7 = v29;
    v9 = v30;
  }

  else
  {
    v7 = 0;
    v6 = v4 + 56;
    v8 = ~(-1 << *(v4 + 32));
    sub_100040110();
    v9 = v10 & v11;
  }

  ++v1;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    sub_100040048();
    v16 = v15 & v14;
    v18 = *(*(v4 + 48) + ((v13 << 9) | (8 * v17)));

    if (!v18)
    {
LABEL_18:
      sub_1000134CC(v4);
      v0 = v19;
      if (v1 == v21)
      {

        return;
      }

      goto LABEL_3;
    }

    while (1)
    {
      dispatch thunk of ControlChannelConnection.pushDeviceInfoChangesToHost()();

      v7 = v13;
      v9 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v13 = v7;
        v16 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= ((v8 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v12;
    if (*(v6 + 8 * v13))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1000398A0(uint64_t a1, uint64_t a2)
{
  sub_10000CBD0();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v8[4] = sub_10003DF8C;
  v8[5] = v5;
  sub_100036518();
  v8[1] = 1107296256;
  v8[2] = sub_1000499CC;
  v8[3] = &unk_100090258;
  v6 = _Block_copy(v8);

  v7 = String.utf8CString.getter();
  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);
}

void sub_1000399B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);

    __chkstk_darwin(v6);
    sub_100013414(&unk_10009A940, &qword_100077D98);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t sub_100039AB0@<X0>(_xpc_activity_s *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v10 = result;
  if (result)
  {
    sub_100039B4C(a2, a3, a4);
  }

  *a5 = v10 == 0;
  return result;
}

void sub_100039B4C(_xpc_activity_s *a1, uint64_t a2, uint64_t a3)
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (!xpc_activity_get_state(a1))
  {
    v13 = static os_log_type_t.default.getter();
    v14 = qword_10009CED0;
    if (!os_log_type_enabled(qword_10009CED0, v13))
    {
      return;
    }

    sub_10000D054();
    v15 = swift_slowAlloc();
    sub_10000CCCC();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000400C8(v16, v17);
    v18 = "Received check in event in for XPC activity %{public}s";
    goto LABEL_9;
  }

  if (xpc_activity_get_state(a1) != 2)
  {
    return;
  }

  if (!xpc_activity_should_defer(a1))
  {
    v19 = static os_log_type_t.default.getter();
    v14 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v19))
    {
      sub_10000D054();
      v20 = swift_slowAlloc();
      sub_10000CCCC();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1000400C8(v21, v22);
      _os_log_impl(&_mh_execute_header, v14, v19, "XPC activity %{public}s fired", v20, 0xCu);
      sub_10000CADC(v21);
      sub_100015FBC();

      sub_100015FBC();
    }

    v23 = a2 == 0xD00000000000002ELL && 0x800000010007EC80 == a3;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100039EFC();
      return;
    }

    v24 = a2 == 0xD00000000000002BLL && 0x800000010007ECB0 == a3;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000388DC();
      sub_100055F64();

      return;
    }

    v13 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v14, v13))
    {
      return;
    }

    sub_10000D054();
    v15 = swift_slowAlloc();
    sub_10000CCCC();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000400C8(v16, v25);
    v18 = "Received event for unexpected XPC activity %s";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v14, v13, v18, v15, 0xCu);
    sub_10000CADC(v16);
    sub_100015FBC();

    goto LABEL_10;
  }

  if (!xpc_activity_set_state(a1, 3))
  {
    v6 = static os_log_type_t.fault.getter();
    v7 = qword_10009CED0;
    if (sub_100040190(v6))
    {
      sub_10000D054();
      v8 = swift_slowAlloc();
      sub_10000CCCC();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_100099CE0, &qword_100077D90);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000C600(v10, v11, &v26);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v7, v6, "Failed to defer activity %s", v8, 0xCu);
      sub_10000CADC(v9);
      sub_10003FFE0();

LABEL_10:
      sub_100015FBC();
    }
  }
}

void sub_100039EFC()
{
  sub_10000D060();
  v37 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04();
  __chkstk_darwin(v1);
  v38 = &v31 - v2;
  v3 = sub_1000381EC();
  v34 = *(v3 + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

  v40 = sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v4 = 0;
  v33 = v3 + 32;
  *&v5 = 136315394;
  v35 = v5;
  v36 = v0;
  v32 = v3;
  while (2)
  {
    if (v4 >= *(v3 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v41 = v4;
    sub_100022260(v33 + 40 * v4, v46);
    v6 = static os_log_type_t.info.getter();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Updating last used times for any existing pairing records", 57, 2, _swiftEmptyArrayStorage);

    v8 = v47;
    v9 = v48;
    sub_10001355C(v46, v47);
    v10 = (*(v9 + 16))(v8, v9);
    sub_10000CADC(v46);
    if ((v10 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10003FFC8();
      sub_10000D128(&unk_10009BE10, 255, v11, &protocol conformance descriptor for ControlChannelConnection);
      sub_10000D4B0();
      Set.Iterator.init(_cocoa:)();
      v10 = v49;
      v12 = v50;
      v13 = v51;
      v14 = v52;
      v15 = v53;
    }

    else
    {
      v14 = 0;
      v12 = v10 + 56;
      sub_100040110();
      v15 = v16 & v17;
    }

    ++v41;
    v42 = v10;
    v39 = v13;
    v18 = (v13 + 64) >> 6;
    while (v10 < 0)
    {
      v26 = __CocoaSet.Iterator.next()();
      if (!v26)
      {
        goto LABEL_20;
      }

      v44 = v26;
      type metadata accessor for ControlChannelConnection();
      swift_dynamicCast();
      v20 = v14;
      v23 = v15;
      if (!v45)
      {
        goto LABEL_20;
      }

LABEL_17:
      v43 = v23;
      v27 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v27)
      {
        v28 = v27;
        sub_100036E54();
        sub_100021370(v28);
      }

      v14 = v20;
      v10 = v42;
      v15 = v43;
    }

    v19 = v14;
    v20 = v14;
    if (!v15)
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          goto LABEL_20;
        }

        ++v19;
        if (*(v12 + 8 * v20))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_13:
    sub_100040048();
    v23 = v22 & v21;
    v25 = *(*(v10 + 48) + ((v20 << 9) | (8 * v24)));

    if (v25)
    {
      goto LABEL_17;
    }

LABEL_20:
    v29 = sub_100040164();
    sub_1000134CC(v29);
    v4 = v41;
    v3 = v32;
    if (v41 != v34)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v30 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10009CED0, "Clearing expired pairing records", 32, 2, _swiftEmptyArrayStorage);
  sub_100036E54();
  sub_1000207B0();

  sub_1000135A0();
}

void sub_10003A57C()
{
  sub_10000D600();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v43 = v6;
  v41 = v7;
  v8 = type metadata accessor for PinNotificationEvent();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v14 = (v13 - v12);
  v15 = static os_log_type_t.error.getter();
  v40 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v15))
  {
    sub_10000D054();
    v16 = swift_slowAlloc();
    sub_10000CCCC();
    v17 = swift_slowAlloc();
    *&v42[0] = v17;
    *v16 = 136315138;
    v18 = sub_10000CD1C();
    *(v16 + 4) = sub_10000C600(v18, v19, v20);
    _os_log_impl(&_mh_execute_header, v40, v15, ">>>>> show pin: %s", v16, 0xCu);
    sub_10000CADC(v17);
    sub_10003FFE0();

    sub_100015FBC();
  }

  v21 = v1[19];
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v1[20];
  *v14 = v41;
  v14[1] = v43;
  v14[2] = v5;
  v14[3] = v3;
  (*(v10 + 104))(v14, enum case for PinNotificationEvent.show(_:), v8);

  sub_100010E30(v21, v22);

  v23 = v21(v14);
  (*(v10 + 8))(v14, v8);
  if ((v23 & 1) == 0)
  {
    sub_10000FAC8(v21, v22);
LABEL_9:
    sub_100013414(&unk_10009A910, &unk_100077D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100077390;
    v31 = kCFUserNotificationAlertHeaderKey;
    sub_100013414(&qword_10009A478, &qword_100077B60);
    sub_100035E40();
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x72696170206E6950;
    *(inited + 80) = 0xEB00000000676E69;
    v32 = kCFUserNotificationAlertMessageKey;
    AnyHashable.init<A>(_:)();
    _StringGuts.grow(_:)(36);

    strcpy(v42, "Enter the PIN ");
    HIBYTE(v42[0]) = -18;
    v33._countAndFlagsBits = sub_10000CD1C();
    String.append(_:)(v33);
    v34._object = 0x800000010007EBC0;
    v34._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v34);
    v35 = v42[0];
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v35;
    sub_10000D4B0();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = CFUserNotificationCreate(0, 0.0, 0x23uLL, 0, isa);

    v38 = v1[18];
    v1[18] = v37;

    v39 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, ">>>>> created CFUsernotification", 32, 2, _swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v24))
  {
    sub_10000D054();
    v25 = swift_slowAlloc();
    sub_10000CCCC();
    v26 = swift_slowAlloc();
    *&v42[0] = v26;
    *v25 = 136315138;
    v27 = sub_10000CD1C();
    *(v25 + 4) = sub_10000C600(v27, v28, v29);
    _os_log_impl(&_mh_execute_header, v40, v24, ">>>>> used custom pin handler: %s", v25, 0xCu);
    sub_10000CADC(v26);
    sub_100015FBC();

    sub_10003FFE0();
  }

  sub_10000FAC8(v21, v22);
LABEL_10:
  sub_100016010();
}