uint64_t getEnumTagSinglePayload for DSKExpress.ExpressState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DSKExpress.ExpressState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000AEE84()
{
  result = qword_100502ED0;
  if (!qword_100502ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502ED0);
  }

  return result;
}

unint64_t sub_1000AEEDC()
{
  result = qword_100502ED8;
  if (!qword_100502ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502ED8);
  }

  return result;
}

void sub_1000AF00C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ([a1 endPointType] != 1)
  {
    return;
  }

  v10 = OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint;
  v11 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  v61 = a1;
  if (v11)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {

      goto LABEL_14;
    }

    v59 = v13;
    v60 = v12;
    v14 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63 = v58;
    *v14 = 136315394;
    v15 = *(v2 + v10);
    if (v15)
    {
      v16 = v15;

      v17 = [v16 publicKeyIdentifier];
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v62 = sub_100288788(v18, v20);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v21 = BidirectionalCollection<>.joined(separator:)();
      v23 = v22;
      sub_10006A178(v18, v20);

      v24 = sub_1002FFA0C(v21, v23, &v63);

      *(v14 + 4) = v24;
      *(v14 + 12) = 2080;
      v25 = [v61 publicKeyIdentifier];
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v62 = sub_100288788(v26, v28);
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;
      sub_10006A178(v26, v28);

      v32 = sub_1002FFA0C(v29, v31, &v63);

      *(v14 + 14) = v32;
      v12 = v60;
      _os_log_impl(&_mh_execute_header, v60, v59, "We're tracking endpoint %s but got a new one %s", v14, 0x16u);
      swift_arrayDestroy();

LABEL_14:

      sub_100099870(2);
      return;
    }

LABEL_20:

    __break(1u);
    return;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v35 = 136315138;
    v36 = [v61 publicKeyIdentifier];
    v59 = v34;
    v37 = v36;
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v62 = sub_100288788(v38, v40);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v41 = BidirectionalCollection<>.joined(separator:)();
    v43 = v42;
    sub_10006A178(v38, v40);

    v44 = sub_1002FFA0C(v41, v43, &v63);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v59, "Endpoint created %s", v35, 0xCu);
    sub_1000752F4(v60);
  }

  v45 = *(v2 + v10);
  *(v2 + v10) = v61;

  v46 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  if (v46)
  {
    v47 = v61;

    v48 = [v47 publicKeyIdentifier];
    v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = (v46 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v53 = *(v46 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v54 = *(v46 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    *v52 = v49;
    v52[1] = v51;
    sub_10006A2D0(v53, v54);
  }

  else
  {
    v55 = v61;

    v56 = v55;
  }
}

void sub_1000AF69C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if ([a1 endPointType] == 1)
    {
      v10 = OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint;
      v11 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
      if (v11 && (sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), v12 = v11, v13 = a1, v14 = static NSObject.== infix(_:_:)(), v13, v12, (v14 & 1) != 0))
      {
        v35 = v13;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v37 = v34;
          *v17 = 136315138;
          v18 = [v35 publicKeyIdentifier];
          HIDWORD(v33) = v16;
          v19 = v18;
          v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v36 = sub_100288788(v20, v22);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v23 = BidirectionalCollection<>.joined(separator:)();
          v25 = v24;
          sub_10006A178(v20, v22);

          v26 = sub_1002FFA0C(v23, v25, &v37);

          *(v17 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v15, BYTE4(v33), "Endpoint updated %s", v17, 0xCu);
          sub_1000752F4(v34);
        }

        v27 = *(v2 + v10);
        *(v2 + v10) = v35;

        v28 = v35;

        v29 = v28;
      }

      else
      {
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Got an update for a different endpoint", v32, 2u);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000AFACC(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    result = [a1 endPointType];
    if (result == 1)
    {
      v9 = [a1 publicKeyIdentifier];
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_1000A6DB8(v10, v12);
      return sub_10006A178(v10, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AFC98(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1000B32F0(v4, a2);

  *a1 = v5;
  return result;
}

uint64_t sub_1000AFCF4(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] == 1)
  {
    result = [v1 bleUUID];
    if (!result)
    {
      return result;
    }

    v3 = [v1 revocationAttestation];
    if (!v3)
    {
      return 1;
    }

    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10006A178(v5, v7);
  }

  return 0;
}

void *sub_1000AFDA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1000B2F9C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1000AFE40(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_1000DFB00(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1000AFEE0(const char *a1, char a2)
{
  v5 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (*(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, a1, v14, 2u);
      }

      *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = a2;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B00C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
  {
    v13 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v40 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v39 = v13;
      v19 = v18;
      v41[0] = v18;
      *v17 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, v41);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Peer discovered %s", v17, 0xCu);
      sub_1000752F4(v19);

      a1 = v40;
    }

    v23 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 1)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a1 + 16))
      {
        v26 = sub_10008C908(v24, v25);
        v28 = v27;

        if (v28)
        {
          sub_1000754F0(*(a1 + 56) + 32 * v26, v41);
          if (swift_dynamicCast())
          {
            if (v42)
            {
              *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = a2;
            }
          }
        }
      }

      else
      {
      }

      v29 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v36))
      {
        goto LABEL_19;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v29, v36, "Peripheral is not connectable", v37, 2u);
    }

    else
    {

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v29, v30))
      {
LABEL_19:

        sub_100099870(2);
        sub_100069DD8();
        swift_allocError();
        *v38 = 2;
        return swift_willThrow();
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315138;
      v42 = *(v3 + v23);
      v33 = String.init<A>(describing:)();
      v35 = sub_1002FFA0C(v33, v34, v41);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Wrong state %s", v31, 0xCu);
      sub_1000752F4(v32);
    }

    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1000B0570(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100068FC4(&unk_100507CE0, &unk_10040B260);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000B2B6C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v9 = -1 << v3[32];
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *&v6[8 * (v10 >> 6)];
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {

        v15 = static UUID.== infix(_:_:)();

        if (v15)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *&v6[8 * (v10 >> 6)];
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *&v6[8 * v11] = v13 | v12;
      *(*(v3 + 6) + 8 * v10) = v7;
      v16 = *(v3 + 2);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000B07FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10008FCB4(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000B089C(uint64_t *a1, char a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = a7;
  v15 = a4;
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v19 = a3;
    if (v18 != 2)
    {
      *(&v49 + 7) = 0;
      *&v49 = 0;
      sub_100069E2C(a3, a4);
      sub_100069E2C(a6, v13);
      sub_100069E2C(a9, a10);
      if (a2)
      {
        ccaes_ccm_decrypt_mode();
      }

      else
      {
        ccaes_ccm_encrypt_mode();
      }

      v29 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        if (!v29 || !__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_52;
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

LABEL_29:
      if (v29 != 2 || !__OFSUB__(*(v19 + 24), *(v19 + 16)))
      {
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_33;
    }

    sub_100069E2C(a3, a4);
    sub_100069E2C(a6, v13);
    sub_100069E2C(a9, a10);
    sub_100069E2C(v19, v15);
    sub_100069E2C(a6, v13);
    sub_100069E2C(a9, a10);
    sub_100069E2C(v16, v17);
    sub_10006A178(v16, v17);
    *&v49 = v16;
    *(&v49 + 1) = v17 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v21 = a6;
    a6 = v49;
    v17 &= 0x3FFFFFFFFFFFFFFFuLL;
    v22 = *(v49 + 16);
    v23 = v19;
    v19 = v15;
    sub_100069E2C(v23, v15);
    v44 = v21;
    v15 = a7;
    sub_100069E2C(v21, a7);
    sub_100069E2C(a9, a10);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_149;
    }

    if (!__OFSUB__(v22, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      if ((a2 & 1) == 0)
      {
        ccaes_ccm_encrypt_mode();
        goto LABEL_34;
      }

LABEL_33:
      ccaes_ccm_decrypt_mode();
LABEL_34:
      v13 = v15;
      v15 = v19;
      v30 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        v19 = a3;
        if (v30 == 2 && __OFSUB__(*(a3 + 24), *(a3 + 16)))
        {
          __break(1u);
LABEL_41:
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_45;
          }

          goto LABEL_136;
        }
      }

      else
      {
        v19 = a3;
        if (v30 && __OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_142;
        }
      }

      v36 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v36 != 2 || !__OFSUB__(*(v44 + 24), *(v44 + 16)))
        {
          goto LABEL_88;
        }

        __break(1u);
      }

      else if (!v36)
      {
        goto LABEL_88;
      }

      if (__OFSUB__(HIDWORD(v44), v44))
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

LABEL_88:
      v37 = a10 >> 62;
      if ((a10 >> 62) > 1)
      {
        if (v37 != 2 || !__OFSUB__(*(a9 + 24), *(a9 + 16)))
        {
          goto LABEL_96;
        }

        __break(1u);
      }

      else if (!v37)
      {
LABEL_96:
        v35 = ccccm_one_shot();
        sub_10006A178(a9, a10);
        sub_10006A178(v44, v13);
        sub_10006A178(v19, v15);
        sub_10006A178(v19, v15);
        sub_10006A178(v44, v13);
        sub_10006A178(a9, a10);
        sub_10006A178(v19, v15);
        sub_10006A178(v44, v13);
        v38 = v17 | 0x8000000000000000;
        v39 = a1;
        *a1 = a6;
LABEL_129:
        v39[1] = v38;
        goto LABEL_130;
      }

      if (__OFSUB__(HIDWORD(a9), a9))
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      goto LABEL_96;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v45 = a4;
  if (!v18)
  {
    sub_100069E2C(a3, a4);
    sub_100069E2C(a6, v13);
    sub_100069E2C(a9, a10);
    sub_100069E2C(a3, v15);
    v44 = a6;
    sub_100069E2C(a6, v13);
    sub_100069E2C(a9, a10);
    sub_10006A178(v16, v17);
    *&v49 = v16;
    WORD4(v49) = v17;
    BYTE10(v49) = BYTE2(v17);
    BYTE11(v49) = BYTE3(v17);
    BYTE12(v49) = BYTE4(v17);
    BYTE13(v49) = BYTE5(v17);
    BYTE14(v49) = BYTE6(v17);
    if (a2)
    {
      ccaes_ccm_decrypt_mode();
    }

    else
    {
      ccaes_ccm_encrypt_mode();
    }

    v28 = v45 >> 62;
    v15 = a6;
    v19 = a3;
    if ((v45 >> 62) <= 1)
    {
      if (!v28)
      {
LABEL_45:
        v31 = v13 >> 62;
        if ((v13 >> 62) <= 1)
        {
          if (!v31)
          {
            goto LABEL_60;
          }

LABEL_59:
          if (!__OFSUB__(HIDWORD(v15), v15))
          {
LABEL_60:
            v33 = a10 >> 62;
            if ((a10 >> 62) <= 1)
            {
              if (!v33)
              {
                goto LABEL_76;
              }

LABEL_75:
              if (!__OFSUB__(HIDWORD(a9), a9))
              {
LABEL_76:
                v35 = ccccm_one_shot();
                sub_10006A178(v19, v45);
                sub_10006A178(v15, v13);
                sub_10006A178(a9, a10);
                sub_10006A178(v19, v45);
                sub_10006A178(v15, v13);
                *a1 = v49;
                a1[1] = DWORD2(v49) | ((WORD6(v49) | (BYTE14(v49) << 16)) << 32);
LABEL_130:
                sub_10006A178(a9, a10);
                return v35;
              }

              goto LABEL_140;
            }

            if (v33 != 2 || !__OFSUB__(*(a9 + 24), *(a9 + 16)))
            {
              goto LABEL_76;
            }

            __break(1u);
LABEL_67:
            if (!__OFSUB__(HIDWORD(a6), a6))
            {
              goto LABEL_68;
            }

LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v31 != 2 || !__OFSUB__(*(v15 + 24), *(v15 + 16)))
        {
          goto LABEL_60;
        }

        __break(1u);
LABEL_52:
        v32 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v32 == 2 && __OFSUB__(*(a6 + 24), *(a6 + 16)))
          {
            __break(1u);
            goto LABEL_59;
          }
        }

        else if (v32)
        {
          goto LABEL_67;
        }

LABEL_68:
        v34 = a10 >> 62;
        if ((a10 >> 62) > 1)
        {
          if (v34 == 2 && __OFSUB__(*(a9 + 24), *(a9 + 16)))
          {
            __break(1u);
            goto LABEL_75;
          }
        }

        else if (v34 && __OFSUB__(HIDWORD(a9), a9))
        {
          goto LABEL_141;
        }

        v35 = ccccm_one_shot();
        sub_10006A178(v19, v15);
        sub_10006A178(a6, v13);
        goto LABEL_130;
      }

      goto LABEL_41;
    }

    if (v28 != 2)
    {
      goto LABEL_45;
    }

    v29 = *(a3 + 24);
    if (!__OFSUB__(v29, *(a3 + 16)))
    {
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_29;
  }

  v25 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100069E2C(a3, a4);
  sub_100069E2C(a6, v13);
  sub_100069E2C(a9, a10);
  sub_100069E2C(a3, v15);
  v26 = v13;
  sub_100069E2C(a6, v13);
  sub_100069E2C(a9, a10);
  sub_100069E2C(v16, v17);
  sub_10006A178(v16, v17);
  *a1 = xmmword_1004098D0;
  sub_10006A178(0, 0xC000000000000000);
  v27 = v16 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v16)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v16, __DataStorage._offset.getter()))
    {
      goto LABEL_135;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v40 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v25 = v40;
  }

  if (v27 < v16)
  {
    goto LABEL_132;
  }

  sub_100069E2C(a3, v45);
  sub_100069E2C(a6, v26);
  sub_100069E2C(a9, a10);

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v16, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      if (a2)
      {
        ccaes_ccm_decrypt_mode();
      }

      else
      {
        ccaes_ccm_encrypt_mode();
      }

      v41 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v41 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
        {
          goto LABEL_112;
        }

        __break(1u);
      }

      else if (!v41)
      {
        goto LABEL_112;
      }

      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_112:
      v42 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v42 != 2 || !__OFSUB__(*(a6 + 24), *(a6 + 16)))
        {
          goto LABEL_120;
        }

        __break(1u);
      }

      else if (!v42)
      {
        goto LABEL_120;
      }

      if (__OFSUB__(HIDWORD(a6), a6))
      {
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
      }

LABEL_120:
      v43 = a10 >> 62;
      if ((a10 >> 62) > 1)
      {
        if (v43 != 2 || !__OFSUB__(*(a9 + 24), *(a9 + 16)))
        {
          goto LABEL_128;
        }

        __break(1u);
      }

      else if (!v43)
      {
LABEL_128:
        v35 = ccccm_one_shot();
        sub_10006A178(a9, a10);
        sub_10006A178(a6, v26);
        sub_10006A178(a3, v45);

        sub_10006A178(a3, v45);
        sub_10006A178(a6, v26);
        sub_10006A178(a9, a10);
        sub_10006A178(a3, v45);
        sub_10006A178(a6, v26);
        v38 = v25 | 0x4000000000000000;
        v39 = a1;
        *a1 = v16;
        goto LABEL_129;
      }

      if (__OFSUB__(HIDWORD(a9), a9))
      {
        goto LABEL_147;
      }

      goto LABEL_128;
    }

    goto LABEL_133;
  }

LABEL_149:
  __break(1u);
  return result;
}

void sub_1000B136C(unsigned __int8 a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v118 = a6;
  v9 = a2;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v11 - 8);
  v13 = (&v115 - v12);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_95:

    v42 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v42, v105))
    {
      goto LABEL_55;
    }

    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v122[0] = v107;
    *v106 = 136315138;
    v119 = *(v117 + v116);
    v108 = String.init<A>(describing:)();
    v110 = sub_1002FFA0C(v108, v109, v122);

    *(v106 + 4) = v110;
    v111 = "FA success control flow received in unexpected state %s";
    goto LABEL_99;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
      {
        if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 3)
        {
          *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 4;
          sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v115);
        }

        if (qword_1005018E0 != -1)
        {
          swift_once();
        }

        sub_1000680F8(a3, a4);
      }

      return;
    }

    if (a1 != 1)
    {
      goto LABEL_40;
    }

    v25 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
    if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) != 1)
    {
      v58 = sub_1002B3B94(&off_1004C38D0);
      v60 = v82;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v120 = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_1002FFA0C(0x535F454349564544, 0xEE00595355425F45, &v120);
        _os_log_impl(&_mh_execute_header, v83, v84, "Sending %s", v85, 0xCu);
        sub_1000752F4(v86);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v65 = sub_100239160(3, 17, v58, v60);
      v67 = v87;
      if (qword_100501960 == -1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 8)
      {
        v116 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        v117 = v6;
        if (qword_100501C80 != -1)
        {
          swift_once();
        }

        v26 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        v27 = v118;
        swift_beginAccess();
        v28 = type metadata accessor for UUID();
        v29 = *(v28 - 8);
        (*(v29 + 16))(v13, v27 + v26, v28);
        (*(v29 + 56))(v13, 0, 1, v28);
        sub_1002D9C74(v9, a3, a4, v27, 1, v13, 0, 1);
        sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
        sub_100069E2C(a3, a4);
        v88 = sub_1000939AC(a3, a4, 1, 0, 0);
        sub_100069E2C(a3, a4);
        v89 = sub_1000939AC(a3, a4, 2, 0, 0);
        v90 = v117;
        v91 = v89;
        sub_100069E2C(a3, a4);
        v92 = sub_1000939AC(a3, a4, 3, 0, 0);
        if (v88 != 60)
        {
          return;
        }

        if (*(v90 + v25))
        {
          if (*(v90 + v25) == 1)
          {
            if (v91)
            {
              if (v91 != 1 || v92 != 176)
              {
                return;
              }

              if (*(v90 + v116) == 8)
              {
                *(v90 + v116) = 9;
                sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v115);
                return;
              }

              goto LABEL_95;
            }
          }

          else if (v91)
          {
            if (v91 != 1 || v92 != 129)
            {
              return;
            }

            if (*(v90 + v116) == 8)
            {
              *(v90 + v116) = 9;
              sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v115);
              if (qword_1005018E0 != -1)
              {
                swift_once();
              }

              sub_1000684C4();
              v100 = Logger.logObject.getter();
              v101 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v100, v101))
              {
                v102 = swift_slowAlloc();
                *v102 = 0;
                _os_log_impl(&_mh_execute_header, v100, v101, "Handing off the peripheral to Alisha", v102, 2u);
              }

              if (qword_100501B60 != -1)
              {
                swift_once();
              }

              sub_10022E104(v118, *(v117 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion));
              sub_100099870(6);
              return;
            }

            v42 = Logger.logObject.getter();
            v105 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v42, v105))
            {
              goto LABEL_55;
            }

            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v122[0] = v107;
            *v106 = 136315138;
            v119 = *(v117 + v116);
            v112 = String.init<A>(describing:)();
            v114 = sub_1002FFA0C(v112, v113, v122);

            *(v106 + 4) = v114;
            v111 = "OP success control flow received in unexpected state %s";
LABEL_99:
            _os_log_impl(&_mh_execute_header, v42, v105, v111, v106, 0xCu);
            sub_1000752F4(v107);

            goto LABEL_54;
          }
        }

        else if (v91)
        {
          return;
        }

        v75 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v75, v103, "Received error control flow", v104, 2u);
        }

        goto LABEL_59;
      }

      v58 = sub_1002B3B94(&off_1004C38A8);
      v60 = v59;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v120 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1002FFA0C(0x425F454349564544, 0xEB00000000595355, &v120);
        _os_log_impl(&_mh_execute_header, v61, v62, "Sending %s", v63, 0xCu);
        sub_1000752F4(v64);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v65 = sub_100239160(3, 17, v58, v60);
      v67 = v66;
      if (qword_100501960 == -1)
      {
LABEL_65:
        sub_1000E71A0(v65, v67, v118);
        sub_10006A178(v58, v60);
        sub_10006A178(v65, v67);
        return;
      }
    }

    swift_once();
    goto LABEL_65;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      sub_100069E2C(a3, a4);
      v40 = sub_1000939AC(a3, a4, 0, 0, 0);
      v41 = v118;
      if (v40 == 4)
      {
        sub_100069E2C(a3, a4);
        sub_100084D68(1uLL, a3, a4, &v120);
        v68 = v120;
        v69 = v121;
        sub_1000A291C(v120, v121, v41);
        sub_10006A178(v68, v69);
        return;
      }

      if (v40 == 1)
      {
        sub_1000A15AC(a3, a4, v118);
        return;
      }

      v70 = v40;
      sub_100069E2C(a3, a4);
      v42 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      sub_10006A178(a3, a4);
      if (!os_log_type_enabled(v42, v50))
      {
        goto LABEL_55;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v120 = v52;
      *v51 = 16777730;
      *(v51 + 4) = v70;
      *(v51 + 5) = 2080;
      v122[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = v72;

      v74 = sub_1002FFA0C(v71, v73, &v120);

      *(v51 + 7) = v74;
      v57 = "Ignoring unknown event category %hhu payload %s";
      goto LABEL_53;
    }

    if (a1 == 5)
    {
      if (v9 == 15)
      {
        v20 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 6)
        {
          v21 = v6;
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Received FIRST_APPROACH_RS", v24, 2u);
          }

          *(v21 + v20) = 7;
          sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s", v115);
          sub_1000A2B9C(a3, a4, v118);
          return;
        }

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v120 = v78;
          *v77 = 136315138;
          LOBYTE(v122[0]) = *(v6 + v20);
          v79 = String.init<A>(describing:)();
          v81 = sub_1002FFA0C(v79, v80, &v120);

          *(v77 + 4) = v81;
          _os_log_impl(&_mh_execute_header, v75, v76, "Wrong state %s", v77, 0xCu);
          sub_1000752F4(v78);
        }

LABEL_59:

        sub_100099870(2);
        return;
      }

      sub_100069E2C(a3, a4);
      v42 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v42, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v120 = v52;
        *v51 = 16777730;
        *(v51 + 4) = v9;
        *(v51 + 5) = 2080;
        v122[0] = sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v53 = BidirectionalCollection<>.joined(separator:)();
        v55 = v54;

        v56 = sub_1002FFA0C(v53, v55, &v120);

        *(v51 + 7) = v56;
        v57 = "Ignoring supplementary service message identifier %hhu payload %s";
LABEL_53:
        _os_log_impl(&_mh_execute_header, v42, v50, v57, v51, 0xFu);
        sub_1000752F4(v52);

        goto LABEL_54;
      }

LABEL_55:

      return;
    }

LABEL_40:
    sub_100069E2C(a3, a4);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v120 = v45;
      *v44 = 16777986;
      *(v44 + 4) = a1;
      *(v44 + 5) = 256;
      *(v44 + 7) = v9;
      *(v44 + 8) = 2080;
      v122[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v46 = BidirectionalCollection<>.joined(separator:)();
      v48 = v47;

      v49 = sub_1002FFA0C(v46, v48, &v120);

      *(v44 + 10) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Ignoring unknown message type %hhu identifier %hhu payload %s", v44, 0x12u);
      sub_1000752F4(v45);

LABEL_54:

      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
  {
    return;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v30 = qword_10051B5B0;
  v31 = v118;

  v32 = sub_10024F2B4(v30, v31);

  v33 = sub_1000CA828(v32);

  if (v33)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      if (v9 == 5)
      {
        v34 = objc_opt_self();
        UUID.uuidString.getter();
        v35 = String._bridgeToObjectiveC()();
        v31 = v118;

        sub_1003AE0BC(v34, v35);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v36 = sub_100239160(2, v9, a3, a4);
      v38 = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = v6;
      *(v39 + 24) = v31;

      sub_100240FEC(v36, v38, sub_1000B3670, v39);

      sub_10006A178(v36, v38);

      return;
    }
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v120 = v96;
    *v95 = 136315138;
    v97 = UUID.uuidString.getter();
    v99 = sub_1002FFA0C(v97, v98, &v120);

    *(v95 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v93, v94, "No active UWB Alisha session for %s", v95, 0xCu);
    sub_1000752F4(v96);
  }

  sub_100099870(2);
}

uint64_t sub_1000B2A4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000B2A64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2A9C()
{

  sub_10006A178(*(v0 + 32), *(v0 + 40));
  sub_10006A178(*(v0 + 48), *(v0 + 56));
  sub_10006A178(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000B2B04()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v2;
  v7 = *(v0 + 64);
  return sub_1000A9558(v1, &v4, *(v0 + 80), *(v0 + 88));
}

uint64_t sub_1000B2B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B2B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B2BD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000B2D00(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = UUID.uuidString.getter();
      v15 = sub_1002FFA0C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session invalidated for %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    if (*(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {

      if (static UUID.== infix(_:_:)())
      {
        sub_100099870(4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1000B2F9C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v14 = v13 | (v8 << 6);
LABEL_11:
    if (*(*(*(a3 + 48) + 8 * v14) + 16) != a4)
    {
      *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10024A854(v6, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v8);
    ++v15;
    if (v16)
    {
      v11 = (v16 - 1) & v16;
      v14 = __clz(__rbit64(v16)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1000B30B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    __chkstk_darwin(v8);
    bzero(&v23 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_12:
      if (*(*(*(a1 + 48) + 8 * v16) + 16) != a2)
      {
        *(&v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v16;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_10024A854((&v23 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_17;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  v20 = sub_1000AFDA4(v22, v6, a1, a2);

LABEL_17:

  return v20;
}

Swift::Int sub_1000B32F0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1000B30B4(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
    swift_dynamicCast();
    if (*(v15 + 16) == a2)
    {
    }

    else
    {
      v4 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v4)
      {
        sub_100109E88(v4 + 1);
        v3 = &_swiftEmptySetSingleton;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v15 + 16));
      result = Hasher._finalize()();
      v6 = &_swiftEmptySetSingleton + 56;
      v7 = -1 << *(&_swiftEmptySetSingleton + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v9 == v12;
          if (v9 == v12)
          {
            v9 = 0;
          }

          v11 |= v13;
          v14 = *&v6[8 * v9];
        }

        while (v14 == -1);
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
      }

      *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v15;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return v3;
}

uint64_t sub_1000B3530(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  else
  {
    return static UUID.== infix(_:_:)();
  }
}

uint64_t sub_1000B35AC()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3680()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  sub_10006A178(*(v0 + 40), *(v0 + 48));
  sub_10006A178(*(v0 + 56), *(v0 + 64));
  sub_10006A178(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000B36E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v3 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = v3;
  v8 = *(v0 + 72);
  return sub_1000A3B8C(v1, v2, &v5, *(v0 + 88), *(v0 + 96));
}

uint64_t sub_1000B3730()
{

  sub_10006A178(*(v0 + 24), *(v0 + 32));
  sub_10006A178(*(v0 + 40), *(v0 + 48));
  sub_10006A178(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000B37E4(void (*a1)(void))
{
  a1(v1[2]);

  sub_10006A178(v1[4], v1[5]);

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1000B38C8()
{

  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_1000B3934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&unk_100503FD0, &unk_10040B320);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000B3A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502F18, &qword_10040A018);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000B3C6C()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B3CD0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t getEnumTagSinglePayload for AlishaPairing.PairingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlishaPairing.PairingError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B3E74()
{
  result = qword_100502F20;
  if (!qword_100502F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502F20);
  }

  return result;
}

uint64_t sub_1000B4000(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a4;
  *(v6 + 192) = a3;
  *(v6 + 80) = a1;
  return _swift_task_switch(sub_1000B402C, 0, 0);
}

uint64_t sub_1000B402C()
{
  v56 = v0;
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 192)];
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000B54F8();
    v3 = v2;
    v4 = sub_1000B5544(v3);
    *(v0 + 128) = v4;

    v5 = qword_1005019D8;
    v14 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 136) = sub_1000958E4(v15, qword_10051B2C8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1002FFA0C(v19, v18, v55);
      *(v20 + 12) = 2080;
      v21 = [v14 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_1002FFA0C(v22, v24, v55);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "AuthSheet present: Starting presentation for scene ID %s and process %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v26 = *(v0 + 112);
    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 createForSceneID:v28 inProcess:v14];
    *(v0 + 144) = v29;

    v30 = [objc_allocWithZone(LAContext) init];
    *(v0 + 152) = v30;
    v31 = *(v26 + 24);
    v32 = v30;

    *(v26 + 24) = v30;
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 externalizedContext];
    if (v34)
    {
      v42 = v34;
      v43 = *(v0 + 112);
      v44 = objc_opt_self();
      v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v45, v47);
      v49 = [v44 createForName:v33 externalizedContext:isa];
      *(v0 + 160) = v49;

      v50 = [objc_opt_self() createForRequest:v49];
      *(v0 + 168) = v50;
      v51 = *(v43 + 16);
      v52 = v50;

      *(v43 + 16) = v50;
      v53 = swift_task_alloc();
      *(v0 + 176) = v53;
      v53[2] = v52;
      v53[3] = v29;
      v53[4] = v32;
      v54 = swift_task_alloc();
      *(v0 + 184) = v54;
      v41 = sub_100068FC4(&qword_100502F28, &qword_10040A0E0);
      *v54 = v0;
      v54[1] = sub_1000B4744;
      v39 = sub_1000B5608;
      v34 = (v0 + 16);
      v38 = 0x8000000100462300;
      v35 = 0;
      v36 = 0;
      v37 = 0xD000000000000032;
      v40 = v53;
    }

    else
    {
      __break(1u);
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 192);
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "AuthSheet present: Unable to convert client pid %d to RBSProcessIdentifier", v10, 8u);
    }

    sub_10009591C();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000B4744()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1000B4894, 0, 0);
}

uint64_t sub_1000B4894(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (!v4)
  {
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v8, v12))
    {
      v11 = 29;
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, v12, "AuthSheet present: Returning from present since auth sheet is unavailable in PK", v13, 2u);
    v11 = 29;
LABEL_7:

LABEL_13:
    v19 = *(v1 + 160);
    v20 = *(v1 + 144);
    v22 = *(v1 + 120);
    v21 = *(v1 + 128);

    sub_10009591C();
    swift_allocError();
    *v23 = v11;
    swift_willThrow();

    sub_10006A2D0(v2, v3);
    v24 = *(v1 + 8);

    return v24();
  }

  v5 = *(v1 + 112);
  v6 = *(v1 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  sub_1000B2A4C(*v5, v5[1]);
  *v5 = sub_1000B564C;
  v5[1] = v7;
  if (v3 >> 60 == 15)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      v11 = 6;
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AuthSheet present: Externalize Context is unexpectedly nil", v10, 2u);
    v11 = 6;
    goto LABEL_7;
  }

  v14 = *(v1 + 160);
  v15 = *(v1 + 144);
  v16 = *(v1 + 120);

  v17 = *(v1 + 8);

  return v17(v2, v3);
}

void sub_1000B4B0C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v30 = a2;
  v31 = a3;
  v28 = a1;
  v5 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for SingleCallback()) init];
  v24 = v10;
  v27 = *(v6 + 16);
  v27(v9, a1, v5);
  v11 = *(v6 + 80);
  v12 = (v11 + 24) & ~v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v25 = *(v6 + 32);
  v25(v13 + v12, v9, v5);
  v14 = v26;
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v36 = sub_1000B5768;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000B505C;
  v35 = &unk_1004C64C8;
  v29 = _Block_copy(&aBlock);
  v15 = v24;
  v16 = v14;

  v27(v9, v28, v5);
  v17 = (v11 + 32) & ~v11;
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = v30;
  *(v18 + 24) = v15;
  v25(v18 + v17, v9, v5);
  v36 = sub_1000B5914;
  v37 = v18;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100080830;
  v35 = &unk_1004C6518;
  v20 = _Block_copy(&aBlock);
  v21 = v15;
  v22 = v19;

  v23 = v29;
  [v22 displayForPresentationTarget:v31 withAction:v29 completion:v20];
  _Block_release(v20);
  _Block_release(v23);
}

atomic_uchar *sub_1000B4E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = (*(**(a3 + OBJC_IVAR____TtC10seserviced14SingleCallback_invoked) + 136))();
  v10 = 0;
  atomic_compare_exchange_strong(result, &v10, 1u);
  if (!v10)
  {

    return sub_1000B4EC4(a4, a5, a1, a2);
  }

  return result;
}

uint64_t sub_1000B4EC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AuthSheet present: Auth performed, returning continuation for consumption", v10, 2u);
  }

  v11 = [a2 externalizedContext];
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000B505C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1000B59BC, v4);
}

atomic_uchar *sub_1000B50F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B2C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AuthSheet present: Auth sheet has been invalidated by PassKitCore", v9, 2u);
  }

  v10 = [a1 invalidateWithCompletion:0];
  result = (*(**(a2 + OBJC_IVAR____TtC10seserviced14SingleCallback_invoked) + 136))(v10);
  v13 = 0;
  atomic_compare_exchange_strong(result, &v13, 1u);
  if (!v13)
  {

    return sub_1000B525C(a3, v12);
  }

  return result;
}

uint64_t sub_1000B525C(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AuthSheet present: Resuming continuation upon invalidation", v5, 2u);
  }

  sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000B5374(char a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    v5 = *(v1 + 8);
    v6 = qword_1005019D8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "Notifying PassKitCore about auth completion commited %{BOOL}d", v10, 8u);
    }

    v3(a1 & 1);
    sub_1000B2A4C(v3, v5);
    sub_1000B2A4C(v3, v5);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  v11 = *(v2 + 16);
  if (v11)
  {
    [*(v2 + 16) invalidateWithCompletion:0];

    *(v2 + 16) = 0;
  }

  v12 = *(v2 + 24);
  if (v12)
  {
    [*(v2 + 24) invalidate];
  }

  *(v2 + 24) = 0;
}

unint64_t sub_1000B54F8()
{
  result = qword_100506F80;
  if (!qword_100506F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100506F80);
  }

  return result;
}

id sub_1000B5544(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000B5614()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B564C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1000B5684()
{
  v1 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

atomic_uchar *sub_1000B5768(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100068FC4(&qword_100502F30, &unk_10040A0E8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1000B4E10(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1000B5824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B583C()
{
  v1 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

atomic_uchar *sub_1000B5914()
{
  v1 = *(sub_100068FC4(&qword_100502F30, &unk_10040A0E8) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1000B50F0(v2, v3, v4);
}

uint64_t sub_1000B5984()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6158(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000B61C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B61D4(uint64_t a1, int a2)
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

uint64_t sub_1000B621C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000B6274()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10013FCB4(v2, v3, 1);
  if (qword_100501910 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100502F60);
  v14 = *(v1 + 3);

  sub_1000B6AF8(&v14, v13);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  sub_1000B6B54(&v14);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1002FFA0C(v2, v3, v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = [v7 installType];

    _os_log_impl(&_mh_execute_header, v8, v9, "Current Default Application with bundleID %s is installed with installType %lu", v10, 0x16u);
    sub_1000752F4(v11);
  }

  else
  {
  }

  return 1;
}

Swift::Int sub_1000B65F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B664C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B6694(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1000B66C8()
{
  result = qword_100502F78;
  if (!qword_100502F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502F78);
  }

  return result;
}

uint64_t sub_1000B671C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100502F60);
  sub_1000958E4(v2, qword_100502F60);
  return Logger.init(subsystem:category:)();
}

void sub_1000B67A0(uint64_t a1@<X0>, void *a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_10008C908(0x6449656C646E7562, 0xE800000000000000);
    if (v6)
    {
      sub_1000754F0(*(a1 + 56) + 32 * v5, v27);
      if (swift_dynamicCast())
      {
        v7 = v26;
        if (*(a1 + 16))
        {
          v8 = v25;
          v9 = sub_10008C908(0x6E69616D6F64, 0xE600000000000000);
          if (v10)
          {
            sub_1000754F0(*(a1 + 56) + 32 * v9, v27);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v11 = v25;
                v12 = sub_10008C908(0x4E79616C70736964, 0xEB00000000656D61);
                if (v13)
                {
                  sub_1000754F0(*(a1 + 56) + 32 * v12, v27);
                  if (swift_dynamicCast())
                  {

                    v14 = v25;
                    v15 = v26;
                    goto LABEL_18;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_100501910 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_100502F60);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24 = sub_1002FFA0C(v21, v23, v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Malformed dict %s when forming default app info", v19, 0xCu);
    sub_1000752F4(v20);
  }

  else
  {
  }

  v8 = 0;
  v7 = 0;
  v11 = 0;
  v14 = 0;
  v15 = 0;
LABEL_18:
  *a3 = v8;
  a3[1] = v7;
  a3[2] = v11;
  a3[3] = v14;
  a3[4] = v15;
}

uint64_t *sub_1000B6A94(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000B6BA8(uint64_t a1)
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

uint64_t sub_1000B6BC4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000B6BEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B6C08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 56))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B6C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1000B6CD0()
{
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(190);
  v14 = v16;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x8000000100462510;
  String.append(_:)(v1);
  LOWORD(v16) = *v0;
  BYTE2(v16) = *(v0 + 2);
  sub_100068FC4(&qword_100502F98, &unk_10040A380);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x8000000100462550;
  String.append(_:)(v3);
  LOWORD(v16) = *(v0 + 4);
  BYTE2(v16) = *(v0 + 6);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._object = 0x8000000100462580;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v5);
  v15 = *(v0 + 8);
  v16 = v15;
  sub_1000B7C24(&v16, &v13);
  sub_100068FC4(&qword_100502BF0, &qword_100409C88);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000024;
  v7._object = 0x80000001004625A0;
  String.append(_:)(v7);
  *&v15 = *(v0 + 24);
  BYTE8(v15) = *(v0 + 32);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x80000001004625D0;
  String.append(_:)(v9);
  v15 = *(v0 + 40);
  v13 = *(v0 + 40);
  sub_1000B7C24(&v15, &v12);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  return v14;
}

void sub_1000B6F08(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 >> 60 == 15)
  {
LABEL_17:
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 56);

    v10(a1, 1, 1, v9);
    return;
  }

  v4 = *(v1 + 8);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_100069E2C(v4, v3);
      if (v8 == 16)
      {
        goto LABEL_13;
      }

LABEL_16:
      sub_10006A2D0(v4, v3);
      goto LABEL_17;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v4) - v4;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (BYTE6(v3) != 16)
  {
    goto LABEL_16;
  }

LABEL_13:

  sub_1001E0778(v4, v3, a1);
}

void sub_1000B7028()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 == 15)
  {
    return;
  }

  v2 = *(v0 + 40);
  v3 = objc_opt_self();
  sub_100069E2C(v2, v1);
  v69 = v2;
  v70 = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 TLVsWithData:isa];

  if (!v5)
  {
    __break(1u);
    return;
  }

  sub_1000754A4();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      v13 = [v9 value];
      if (!v13)
      {
        goto LABEL_87;
      }

      v14 = v13;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10012E5A4(0, *(v12 + 16) + 1, 1, v12);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v21 = v18;
      if (v20 >= v19 >> 1)
      {
        v21 = sub_10012E5A4((v19 > 1), v20 + 1, 1, v18);
      }

      *(v21 + 2) = v20 + 1;
      v8 = v21;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v15;
      *(v22 + 5) = v17;
      ++v7;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_22:

  if (qword_100501918 != -1)
  {
    goto LABEL_83;
  }

LABEL_23:
  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_100502F80);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = v70;
  if (!os_log_type_enabled(v24, v25))
  {
    sub_10006A2D0(v69, v70);

    goto LABEL_72;
  }

  v68 = v25;
  v27 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v86 = v67;
  *v27 = 136315138;
  v28 = *(v8 + 16);
  if (!v28)
  {
    goto LABEL_71;
  }

  v65 = v27;
  v66 = v24;
  v85 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v28, 0);
  v29 = 0;
  v30 = v85;
  v73 = v8 + 32;
  v71 = v8;
  v72 = v28;
  do
  {
    v74 = v29;
    v75 = v30;
    v31 = (v73 + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v33 >> 62;
    v76 = HIDWORD(*v31);
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v35 = _swiftEmptyArrayStorage;
        goto LABEL_66;
      }

      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      v8 = v36 - v37;
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_82;
      }

      goto LABEL_36;
    }

    if (v34)
    {
      if (__OFSUB__(v76, v32))
      {
        goto LABEL_81;
      }

      v8 = v76 - v32;
LABEL_36:
      sub_100069E2C(v32, v33);
      sub_100069E2C(v32, v33);
      if (!v8)
      {
LABEL_29:
        v35 = _swiftEmptyArrayStorage;
        v8 = v71;
        goto LABEL_66;
      }

      goto LABEL_37;
    }

    v8 = BYTE6(v33);
    if (!BYTE6(v33))
    {
      goto LABEL_29;
    }

LABEL_37:
    v84 = _swiftEmptyArrayStorage;
    v38 = v8 & ~(v8 >> 63);
    sub_10019F3C0(0, v38, 0);
    v35 = v84;
    if (v34 == 2)
    {
      v39 = *(v32 + 16);
      goto LABEL_42;
    }

    if (v34 == 1)
    {
      v39 = v32;
LABEL_42:
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      swift_once();
      goto LABEL_23;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
    }

    v39 = 0;
    do
    {
LABEL_46:
      if (!v38)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v34 == 2)
      {
        if (v39 < *(v32 + 16))
        {
          goto LABEL_74;
        }

        if (v39 >= *(v32 + 24))
        {
          goto LABEL_77;
        }

        v44 = __DataStorage._bytes.getter();
        if (!v44)
        {
          goto LABEL_86;
        }

        v41 = v44;
        v45 = __DataStorage._offset.getter();
        v43 = v39 - v45;
        if (__OFSUB__(v39, v45))
        {
          goto LABEL_79;
        }

        goto LABEL_59;
      }

      if (v34 == 1)
      {
        if (v39 < v32 || v39 >= v32 >> 32)
        {
          goto LABEL_76;
        }

        v40 = __DataStorage._bytes.getter();
        if (!v40)
        {
          goto LABEL_85;
        }

        v41 = v40;
        v42 = __DataStorage._offset.getter();
        v43 = v39 - v42;
        if (__OFSUB__(v39, v42))
        {
          goto LABEL_78;
        }

LABEL_59:
        v46 = *(v41 + v43);
        goto LABEL_62;
      }

      if (v39 >= BYTE6(v33))
      {
        goto LABEL_75;
      }

      LOWORD(v78) = v32;
      BYTE2(v78) = BYTE2(v32);
      BYTE3(v78) = BYTE3(v32);
      BYTE4(v78) = v76;
      BYTE5(v78) = BYTE5(v32);
      BYTE6(v78) = BYTE6(v32);
      HIBYTE(v78) = HIBYTE(v32);
      v79 = v33;
      v80 = BYTE2(v33);
      v81 = BYTE3(v33);
      v82 = BYTE4(v33);
      v83 = BYTE5(v33);
      v46 = *(&v78 + v39);
LABEL_62:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1004098F0;
      *(v47 + 56) = &type metadata for UInt8;
      *(v47 + 64) = &protocol witness table for UInt8;
      *(v47 + 32) = v46;
      v48 = String.init(format:_:)();
      v84 = v35;
      v51 = v35[2];
      v50 = v35[3];
      if (v51 >= v50 >> 1)
      {
        v64 = v48;
        v53 = v49;
        sub_10019F3C0((v50 > 1), v51 + 1, 1);
        v49 = v53;
        v48 = v64;
        v35 = v84;
      }

      v35[2] = v51 + 1;
      v52 = &v35[2 * v51];
      v52[4] = v48;
      v52[5] = v49;
      ++v39;
      --v38;
      --v8;
    }

    while (v8);
    v8 = v71;
LABEL_66:
    v78 = v35;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = v55;

    sub_10006A178(v32, v33);
    sub_10006A178(v32, v33);
    v30 = v75;
    v85 = v75;
    v58 = v75[2];
    v57 = v75[3];
    if (v58 >= v57 >> 1)
    {
      sub_10019F3C0((v57 > 1), v58 + 1, 1);
      v30 = v85;
    }

    v29 = v74 + 1;
    v30[2] = v58 + 1;
    v59 = &v30[2 * v58];
    v59[4] = v54;
    v59[5] = v56;
  }

  while (v74 + 1 != v72);
  v26 = v70;
  v27 = v65;
  v24 = v66;
LABEL_71:
  v60 = Array.description.getter();
  v62 = v61;

  v63 = sub_1002FFA0C(v60, v62, &v86);

  *(v27 + 4) = v63;

  _os_log_impl(&_mh_execute_header, v24, v68, "MultiSEGroupAIDs: %s", v27, 0xCu);
  sub_1000752F4(v67);

  sub_10006A2D0(v69, v26);
LABEL_72:
}

unint64_t sub_1000B7818()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000020;
  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000B78A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B8288(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B78E8(uint64_t a1)
{
  v2 = sub_1000B8780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B7924(uint64_t a1)
{
  v2 = sub_1000B8780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B7960(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100502FC0, &unk_10040A3A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000752B0(a1, a1[3]);
  sub_1000B8780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 8);
    *v13 = *(v3 + 8);
    v12 = 2;
    sub_1000B7C24(&v15, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006A2D0(v13[0], v13[1]);
    LOBYTE(v13[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 40);
    *v13 = *(v3 + 40);
    v12 = 4;
    sub_1000B7C24(&v14, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006A2D0(v13[0], v13[1]);
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1000B7BBC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000B843C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000B7C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502BF0, &qword_100409C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7C94(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100502F80);
  sub_1000958E4(v2, qword_100502F80);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

void sub_1000B7D0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v22 = 0;
    v36 = 0;
    v32 = 0;
    v35 = 0;
    v33 = 0;
    v45 = 1;
    v44 = 1;
    v43 = 1;
    v24 = 0xF000000000000000;
    v34 = 0xF000000000000000;
    goto LABEL_34;
  }

  v3 = a1;
  v4 = &stru_1004F5000;
  v5 = [v3 childWithTag:254];

  if (!v5 || (v6 = [v5 childWithTag:57152], v5, !v6))
  {

    goto LABEL_7;
  }

  v7 = [v6 value];
  if (!v7)
  {
LABEL_7:
    v35 = 0;
    v45 = 1;
    goto LABEL_8;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100069E2C(v8, v10);
  v35 = sub_100090214(v8, v10, 0, 0, 1);
  sub_10006A178(v8, v10);
  sub_10006A178(v8, v10);
  v45 = 0;
LABEL_8:
  v11 = v3;
  v12 = [v11 childWithTag:254];

  if (v12 && (v13 = [v12 childWithTag:57153], v12, v13))
  {

    v14 = [v13 value];
    if (v14)
    {
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      sub_100069E2C(v15, v17);
      v36 = sub_100090214(v15, v17, 0, 0, 1);
      sub_10006A178(v15, v17);
      sub_10006A178(v15, v17);
      v44 = 0;
    }

    else
    {
      v36 = 0;
      v44 = 1;
    }

    v4 = &stru_1004F5000;
  }

  else
  {

    v36 = 0;
    v44 = 1;
  }

  v18 = v11;
  v19 = [v18 v4[113].type];

  if (v19 && (v20 = [v19 v4[113].type], v19, v20))
  {

    v21 = [v20 value];
    if (v21)
    {
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      goto LABEL_20;
    }
  }

  else
  {
  }

  v22 = 0;
  v24 = 0xF000000000000000;
LABEL_20:
  v25 = v18;
  v26 = [v25 childWithTag:254];

  if (v26 && (v27 = [v26 childWithTag:57155], v26, v27))
  {

    v28 = [v27 value];
    if (v28)
    {
      v42 = v35;
      v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_100069E2C(v29, v31);
      v32 = sub_1000905BC(v29, v31, 0, 0, 1);
      sub_10006A178(v29, v31);
      sub_10006A178(v29, v31);
      v37 = 0;
      v35 = v42;
    }

    else
    {
      v32 = 0;
      v37 = 1;
    }
  }

  else
  {

    v32 = 0;
    v37 = 1;
  }

  v43 = v37;
  v38 = v25;
  v33 = [v38 childWithTag:221];

  if (v33)
  {
    v39 = v35;
    v40 = [v33 value];

    if (v40)
    {
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v41;
    }

    else
    {

      v33 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = v39;
  }

  else
  {

    v34 = 0xF000000000000000;
  }

LABEL_34:
  *a2 = v35;
  *(a2 + 2) = v45;
  *(a2 + 4) = v36;
  *(a2 + 6) = v44;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24;
  *(a2 + 24) = v32;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  *(a2 + 48) = v34;
}

uint64_t sub_1000B8288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001004625F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000100462610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100462640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100462660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100462680 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000B843C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100068FC4(&qword_100502FA8, &qword_10040A398);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1000B8780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v31) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = BYTE2(v9) & 1;
  LOBYTE(v31) = 1;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = BYTE2(v26) & 1;
  LOBYTE(v27) = 2;
  sub_1000B87D4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v31;
  v25 = v32;
  LOBYTE(v31) = 3;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v10 & 1;
  v43 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v20 = v38;
  v19 = v39;
  LOWORD(v27) = v9;
  v21 = v42;
  v22 = v9;
  BYTE2(v27) = v42;
  v11 = v26;
  WORD2(v27) = v26;
  v12 = v41;
  BYTE6(v27) = v41;
  v14 = v24;
  v13 = v25;
  *(&v27 + 1) = v24;
  *&v28 = v25;
  v15 = v23;
  *(&v28 + 1) = v23;
  v16 = v40;
  LOBYTE(v29) = v40;
  *(&v29 + 1) = v38;
  v30 = v39;
  sub_1000B8828(&v27, &v31);
  sub_1000752F4(a1);
  LOWORD(v31) = v22;
  BYTE2(v31) = v21;
  WORD2(v31) = v11;
  BYTE6(v31) = v12;
  v32 = v14;
  v33 = v13;
  v34 = v15;
  v35 = v16;
  v36 = v20;
  v37 = v19;
  result = sub_1000B8860(&v31);
  v18 = v28;
  *a2 = v27;
  *(a2 + 16) = v18;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_1000B8780()
{
  result = qword_100502FB0;
  if (!qword_100502FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FB0);
  }

  return result;
}

unint64_t sub_1000B87D4()
{
  result = qword_100502FB8;
  if (!qword_100502FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FB8);
  }

  return result;
}

unint64_t sub_1000B8890()
{
  result = qword_100502FC8;
  if (!qword_100502FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscretionaryData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscretionaryData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B8A38()
{
  result = qword_100502FD0;
  if (!qword_100502FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FD0);
  }

  return result;
}

unint64_t sub_1000B8A90()
{
  result = qword_100502FD8;
  if (!qword_100502FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FD8);
  }

  return result;
}

unint64_t sub_1000B8AE8()
{
  result = qword_100502FE0;
  if (!qword_100502FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FE0);
  }

  return result;
}

uint64_t sub_1000B8B3C()
{
  v14 = type metadata accessor for HPKE.AEAD();
  v0 = *(v14 - 8);
  __chkstk_darwin(v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HPKE.KDF();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HPKE.KEM();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HPKE.Ciphersuite();
  sub_1000B6A94(v11, qword_100502FE8);
  sub_1000958E4(v11, qword_100502FE8);
  (*(v8 + 104))(v10, enum case for HPKE.KEM.P256_HKDF_SHA256(_:), v7);
  (*(v4 + 104))(v6, enum case for HPKE.KDF.HKDF_SHA256(_:), v3);
  (*(v0 + 104))(v2, enum case for HPKE.AEAD.AES_GCM_128(_:), v14);
  return HPKE.Ciphersuite.init(kem:kdf:aead:)();
}

char *sub_1000B8D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v61 = a1;
  v62 = a2;
  v63 = type metadata accessor for SHA256();
  v54 = *(v63 - 8);
  __chkstk_darwin(v63);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for HPKE.Ciphersuite();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HPKE.Sender();
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v66[0] = a3;
  v66[1] = a4;
  v19 = a3;
  v20 = a3;
  v21 = a4;
  sub_100069E2C(v20, a4);
  v22 = v70;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v22)
  {
    v23 = v58;
    v51 = v21;
    v52 = v19;
    v70 = v10;
    (*(v65 + 16))(v15, v18, v13);
    if (qword_100501920 != -1)
    {
      swift_once();
    }

    v24 = sub_1000958E4(v23, qword_100502FE8);
    (*(v60 + 2))(v59, v24, v23);
    HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
    v25 = v63;
    v60 = v18;
    v66[0] = v61;
    v66[1] = v62;
    *v69 = xmmword_1004098D0;
    sub_1000937E0();
    v26 = HPKE.Sender.seal<A, B>(_:authenticating:)();
    v62 = 0;
    v61 = v26;
    v59 = v28;
    sub_10006A178(v69[0], v69[1]);
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    strcpy(v66, "version");
    v66[1] = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v30;
    *(inited + 80) = v31;
    strcpy(v66, "publicKeyHash");
    HIWORD(v66[1]) = -4864;
    AnyHashable.init<A>(_:)();
    sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v58 = v13;
    v32 = v53;
    dispatch thunk of HashFunction.init()();
    v33 = v51;
    v34 = v52;
    sub_100069E2C(v52, v51);
    v35 = v62;
    sub_100357FC4(v34, v33, v32);
    v62 = v35;
    sub_10006A178(v34, v33);
    v36 = v55;
    dispatch thunk of HashFunction.finalize()();
    (*(v54 + 8))(v32, v25);
    v37 = v57;
    v67 = v57;
    v68 = sub_1000B95EC(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v38 = sub_1000B9634(v66);
    v39 = v56;
    (*(v56 + 16))(v38, v36, v37);
    sub_1000752B0(v66, v67);
    v40 = v62;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v62 = v40;
    (*(v39 + 8))(v36, v37);
    v41 = v69[0];
    v42 = v69[1];
    sub_1000752F4(v66);
    v43 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v41, v42);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v43;
    v66[0] = 0xD000000000000012;
    v66[1] = 0x80000001004626A0;
    AnyHashable.init<A>(_:)();
    v44 = HPKE.Sender.encapsulatedKey.getter();
    v46 = v45;
    v47 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v44, v46);
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v47;
    v66[0] = 1635017060;
    v66[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v48 = v61;
    v49 = v59;
    v50 = Data.base64EncodedString(options:)(0);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v50;
    v18 = sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    sub_10006A178(v48, v49);
    (*(v64 + 8))(v12, v70);
    (*(v65 + 8))(v60, v58);
  }

  return v18;
}

uint64_t sub_1000B95EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_1000B9634(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000B9698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPKE.Ciphersuite();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HPKE.Recipient();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0xD000000000000012;
  v43 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v13 = sub_10008CA7C(v44), (v14 & 1) == 0))
  {
    sub_100092F28(v44);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v13, v45);
  sub_100092F28(v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v17 = sub_1000B9C54();
    v18 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v36 = a2;
  v38 = Data.init(base64Encoded:options:)();
  v16 = v15;

  v37 = v16;
  if (v16 >> 60 != 15)
  {
    v42 = 1635017060;
    v43 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v20 = sub_10008CA7C(v44), (v21 & 1) != 0))
    {
      sub_1000754F0(*(a1 + 56) + 32 * v20, v45);
      sub_100092F28(v44);
      if (swift_dynamicCast())
      {
        v22 = Data.init(base64Encoded:options:)();
        v24 = v23;

        if (v24 >> 60 != 15)
        {
          v34 = v22;
          v35 = v24;
          (*(v40 + 16))(v9, v36, v7);
          v17 = v38;
          if (qword_100501920 != -1)
          {
            swift_once();
          }

          v28 = sub_1000958E4(v4, qword_100502FE8);
          (*(v41 + 16))(v6, v28, v4);
          v29 = v37;
          sub_100069E2C(v17, v37);
          v30 = v46;
          HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)();
          if (!v30)
          {
            v32 = v34;
            v31 = v35;
            v44[0] = v34;
            v44[1] = v35;
            *v45 = xmmword_1004098D0;
            sub_1000937E0();
            v17 = HPKE.Recipient.open<A, B>(_:authenticating:)();
            sub_10006A2D0(v38, v29);
            sub_10006A178(v45[0], v45[1]);
            (*(v39 + 8))(v12, v10);
            sub_10006A2D0(v32, v31);
            return v17;
          }

          sub_10006A2D0(v17, v29);
          v26 = v34;
          v27 = v35;
          goto LABEL_18;
        }

        v17 = sub_1000B9C54();
        v25 = 0x2064696C61766E49;
LABEL_17:
        sub_10030990C(0, 1, v25, 0xEC00000061746164, 0);
        swift_willThrow();
        v27 = v37;
        v26 = v38;
LABEL_18:
        sub_10006A2D0(v26, v27);
        return v17;
      }
    }

    else
    {
      sub_100092F28(v44);
    }

    v17 = sub_1000B9C54();
    v25 = 0x20676E697373694DLL;
    goto LABEL_17;
  }

  v17 = sub_1000B9C54();
  v18 = "Invalid ephemeralPublicKey";
LABEL_8:
  sub_10030990C(0, 1, 0xD00000000000001ALL, (v18 - 32) | 0x8000000000000000, 0);
  swift_willThrow();
  return v17;
}

unint64_t sub_1000B9C54()
{
  result = qword_10050AA20;
  if (!qword_10050AA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10050AA20);
  }

  return result;
}

uint64_t sub_1000B9CA0(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC10seserviced13EventListener_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3, v5);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000BA740;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000B3564;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346DB0;
  aBlock[3] = &unk_1004C6810;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  dispatch_sync(v9, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1000B9EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = [v3 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1002FFA0C(v9, v11, &v24);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received notification %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v13 = [v3 name];
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (*(v14 + 16) && (v15 = sub_10008CAC0(v13), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    swift_endAccess();

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v17 + 64);
      while (v19 < *(v17 + 16))
      {
        ++v19;
        v21 = *(v20 - 1);
        v22 = *v20;
        v24 = *(v20 - 4);
        v25 = *(v20 - 3);
        v26 = v21;
        v27 = v22;

        v23 = v22;
        sub_1000BA12C(&v24);

        v20 += 5;
        if (v18 == v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
    }
  }

  else
  {

    swift_endAccess();
  }
}

uint64_t sub_1000BA12C(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v9 = a1[3];
  v8 = a1[4];
  v26 = *(a1 + 1);
  v10 = v26;

  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v11;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;

    v17 = v7;
    v18 = sub_1002FFA0C(v7, v10, aBlock);

    *(v14 + 4) = v18;
    v7 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Calling handler for %s", v14, 0xCu);
    sub_1000752F4(v16);
    v11 = v25;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v26;
  *(v19 + 40) = v9;
  *(v19 + 48) = v11;
  aBlock[4] = sub_1000BA7B8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C6860;
  v20 = _Block_copy(aBlock);

  v11;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  v21 = v29;
  v22 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v30 + 8))(v21, v22);
  (*(v27 + 8))(v6, v28);
}

uint64_t sub_1000BA53C()
{

  v1 = OBJC_IVAR____TtC10seserviced13EventListener_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EventListener(uint64_t a1)
{
  result = qword_100503048;
  if (!qword_100503048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA644(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BA700()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BA770()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000BA7E0()
{
  result = qword_1005020E0;
  if (!qword_1005020E0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005020E0);
  }

  return result;
}

unint64_t sub_1000BA838()
{
  result = qword_1005020F0;
  if (!qword_1005020F0)
  {
    sub_1000692D8(&unk_1005046F0, &unk_10040B2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005020F0);
  }

  return result;
}

uint64_t sub_1000BA8A4()
{
  type metadata accessor for DSKMotion();
  swift_allocObject();
  result = sub_1000BA8E0();
  qword_10051B238 = result;
  return result;
}

uint64_t sub_1000BA8E0()
{
  v1 = v0;
  v2 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = _swiftEmptyDictionarySingleton;
  *(v1 + 32) = 1;
  LOBYTE(aBlock) = 1;
  LOBYTE(v20) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  *(v1 + 33) = aBlock;
  v20 = 0x3FE0000000000000;
  aBlock = 0;
  LOBYTE(v15) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v10 = *(v3 + 8);
  v10(v5, v2);
  *(v1 + 40) = aBlock;
  v20 = 0x4082C00000000000;
  aBlock = 0;
  LOBYTE(v15) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v10(v5, v2);
  *(v1 + 48) = aBlock;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BBF84;
  v19 = v1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100193978;
  v17 = &unk_1004C6888;
  v11 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v11);
  return v1;
}

_DWORD *sub_1000BAC94()
{
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040A530;
  AnyHashable.init<A>(_:)();
  v2 = *(v0 + 16) != 0;
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v2;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v3 = *(v0 + 24);
  *(inited + 168) = sub_100068FC4(&qword_1005031C0, &unk_10040A5C0);
  *(inited + 144) = v3;

  AnyHashable.init<A>(_:)();
  v4 = *(v0 + 32);
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = v4;
  AnyHashable.init<A>(_:)();
  v5 = *(v0 + 33);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v5;
  AnyHashable.init<A>(_:)();
  v6 = *(v0 + 40);
  *(inited + 384) = &type metadata for Double;
  *(inited + 360) = v6;
  AnyHashable.init<A>(_:)();
  v7 = *(v0 + 48);
  *(inited + 456) = &type metadata for Double;
  *(inited + 432) = v7;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_100015DA0("dskmotion.state", isa);

  return v9;
}

void sub_1000BAF34(uint64_t a1, Swift::UInt a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*(v2 + 33) == 1 && [objc_opt_self() activityAlarmAvailable])
  {
    swift_beginAccess();
    v11 = *(v2 + 24);
    if (*(v11 + 16))
    {
      v12 = sub_10008C9C8(a2);
      if (v13)
      {
        sub_1000BC094(*(v11 + 56) + 40 * v12, &v20);
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    swift_endAccess();
    v14 = *(&v21 + 1);
    sub_1000BC02C(&v20);
    if (v14)
    {
      sub_100079E24();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      return;
    }

    sub_1000BC094(a1, &v20);
    swift_beginAccess();
    sub_1000C55D8(&v20, a2);
    swift_endAccess();
    if (!*(v2 + 16))
    {
      if (qword_100501930 == -1)
      {
LABEL_15:
        v16 = type metadata accessor for Logger();
        sub_1000958E4(v16, qword_1005030E0);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Starting motion detection", v19, 2u);
        }

        sub_1000BB26C(0);
        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_15;
    }
  }
}

void sub_1000BB26C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    v10 = *(v1 + 16);
    if (v10)
    {
      [v10 invalidate];
    }

    v11 = a1 & 1;
    v12 = 48;
    if (v11)
    {
      v12 = 40;
    }

    v13 = *(v1 + v12);
    v14 = objc_allocWithZone(CMActivityAlarm);
    aBlock[4] = sub_1000BC0F8;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004C68B0;
    v15 = _Block_copy(aBlock);

    v16 = [v14 initWithTrigger:v11 duration:v8 onQueue:v15 withHandler:v13];
    _Block_release(v15);

    v17 = *(v1 + 16);
    *(v1 + 16) = v16;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BB4B4(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(v2 + 24);
  if (*(v10 + 16) && (v11 = sub_10008C9C8(a1), (v12 & 1) != 0))
  {
    sub_1000BC094(*(v10 + 56) + 40 * v11, &v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  swift_endAccess();
  v13 = *(&v21 + 1);
  sub_1000BC02C(&v20);
  if (!v13)
  {
    return;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  swift_beginAccess();
  sub_1000C55D8(&v20, a1);
  swift_endAccess();
  if (*(*(v2 + 24) + 16))
  {
    return;
  }

  if (qword_100501930 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_1005030E0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Stopping motion detection", v17, 2u);
  }

  v18 = *(v2 + 16);
  if (v18)
  {
    [v18 invalidate];
    v19 = *(v2 + 16);
  }

  else
  {
    v19 = 0;
  }

  *(v2 + 16) = 0;

  *(v2 + 32) = 1;
}

uint64_t sub_1000BB78C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v32[1] = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    return result;
  }

  if (a2 || !a1)
  {
    *(v3 + 32) = 1;
    sub_1000BB26C(0);
  }

  else
  {
    v18 = a1;
    v19 = [v18 trigger] == 0;
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    *(v3 + 32) = v20;
    sub_1000BB26C(v19);
  }

  if (qword_100501930 != -1)
  {
    goto LABEL_24;
  }

LABEL_13:
  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_1005030E0);

  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v24 = 136315394;
    if (*(v3 + 32))
    {
      v25 = 0x676E69766F6DLL;
    }

    else
    {
      v25 = 0x636974617473;
    }

    v26 = sub_1002FFA0C(v25, 0xE600000000000000, aBlock);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = v28;
    }

    else
    {
      v29 = 0xE400000000000000;
      v27 = 1701736302;
    }

    v30 = sub_1002FFA0C(v27, v29, aBlock);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Device is %s error %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  aBlock[4] = sub_1000BC0FC;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C68D8;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v35 + 8))(v8, v6);
  (*(v33 + 8))(v11, v34);
}

uint64_t sub_1000BBD00(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(v2 + 48) + 8 * v13);
      sub_1000BC094(*(v2 + 56) + 40 * v13, v17);
      *&v18 = v14;
      sub_1000BC104(v17, &v18 + 8);
      v11 = v9;
LABEL_13:
      v21[1] = v19;
      v21[2] = v20;
      v21[0] = v18;
      if (!v20)
      {
      }

      sub_1000BC104((v21 + 8), &v18);
      v15 = *(&v19 + 1);
      v16 = v20;
      sub_1000752B0(&v18, *(&v19 + 1));
      (*(v16 + 8))(*(a1 + 32), v15, v16);
      result = sub_1000752F4(&v18);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000BBEA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000BBF0C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005030E0);
  sub_1000958E4(v2, qword_1005030E0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BBF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BBFA0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000BC02C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005031C8, &qword_10040A5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BC094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000BC104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1000BC12C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SecureElementApplicationEntity();
    sub_1000C0A10(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = &selRef_cacheProximityChipData_completion_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for SecureElementApplicationEntity(), swift_dynamicCast(), v12 = v18, v9 = &selRef_cacheProximityChipData_completion_, !v18))
    {
LABEL_24:
      sub_100093854(v1);
      return;
    }

LABEL_17:
    v13 = v12;
    v14 = [v13 v9[328]];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v13 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      type metadata accessor for ApplicationInfoInternal();
      [v13 gdprVersionShown];
      dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1000BC43C(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a2;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v5 - 8);
  v86 = &v73 - v6;
  v7 = sub_100068FC4(&qword_1005031F8, &unk_10040A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for StateInternal();
  v89 = *(v10 - 8);
  __chkstk_darwin(v10);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v73 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v73 - v26;
  v28 = [a1 friendlyName];
  if (!v28)
  {

LABEL_19:

    return 0;
  }

  v85 = v23;
  v83 = v10;
  v29 = v28;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [a1 uuid];
  if (!v32)
  {

    goto LABEL_19;
  }

  v84 = v31;
  v33 = v32;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = [a1 ownerApplications];
  if (!v34)
  {
    (*(v15 + 8))(v27, v14);

LABEL_18:

    goto LABEL_19;
  }

  v35 = v34;
  v81 = v15;
  v91 = 0;
  type metadata accessor for SecureElementApplicationEntity();
  sub_1000C0A10(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity, &protocol conformance descriptor for NSObject);
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  v36 = v91;
  if (!v91)
  {

    (*(v81 + 8))(v27, v14);
    return 0;
  }

  v37 = [a1 userApplications];
  if (!v37)
  {
    (*(v81 + 8))(v27, v14);

LABEL_17:

    goto LABEL_18;
  }

  v80 = v14;
  v91 = 0;
  v38 = v37;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  v39 = v91;
  if (!v91)
  {

    (*(v81 + 8))(v27, v80);
    return 0;
  }

  v40 = [a1 productConfigUUID];
  v41 = v80;
  if (!v40)
  {
    (*(v81 + 8))(v27, v80);

    goto LABEL_17;
  }

  v42 = v40;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000BC12C(v36);
  v79 = v43;

  sub_1000BC12C(v39);
  v45 = v44;

  [a1 state];
  StateInternal.init(rawDiscriminant:instanceInfos:)();
  v46 = v89;
  v47 = v83;
  if ((*(v89 + 48))(v9, 1, v83) == 1)
  {

    v48 = *(v81 + 8);
    v48(v85, v41);
    v48(v27, v41);
    sub_100075768(v9, &qword_1005031F8, &unk_10040A5E0);
    return 0;
  }

  v75 = v45;
  (*(v46 + 32))(v88, v9, v47);
  v50 = v79;
  if (v79 >> 62)
  {
LABEL_59:
    v76 = v50 & 0xFFFFFFFFFFFFFF8;
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v79;
    v78 = v72;
  }

  else
  {
    v76 = v79 & 0xFFFFFFFFFFFFFF8;
    v78 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v85;
  v52 = 0;
  v77 = v50 & 0xC000000000000001;
  v74 = 1;
  while (v78 != v52)
  {
    if (v77)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v52 >= *(v76 + 16))
      {
        goto LABEL_56;
      }

      v54 = *(v50 + 8 * v52 + 32);
    }

    v55 = v54;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (ApplicationInfoInternal.applicationId.getter() == v90 && v56 == a3)
    {
LABEL_48:
      v63 = v86;

      v41 = v80;
      v64 = v81;
      v51 = v85;
      goto LABEL_51;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v52;
    v50 = v79;
    v41 = v80;
    v51 = v85;
    if (v53)
    {
      goto LABEL_50;
    }
  }

  v57 = v75;
  v76 = v75 & 0xFFFFFFFFFFFFFF8;
  if (v75 >> 62)
  {
    v78 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = 0;
  v77 = v57 & 0xC000000000000001;
  do
  {
    if (v78 == v58)
    {

      (*(v89 + 8))(v88, v83);
      v62 = *(v81 + 8);
      v62(v51, v41);
      v62(v27, v41);
      return 0;
    }

    if (v77)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *(v76 + 16))
      {
        goto LABEL_58;
      }

      v60 = *(v75 + 8 * v58 + 32);
    }

    v55 = v60;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_57;
    }

    if (ApplicationInfoInternal.applicationId.getter() == v90 && v61 == a3)
    {
      v74 = 0;
      goto LABEL_48;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v58;
    v41 = v80;
    v51 = v85;
  }

  while ((v59 & 1) == 0);
  v74 = 0;
LABEL_50:
  v64 = v81;
  v63 = v86;
LABEL_51:

  v65 = *(v64 + 16);
  v65(v20, v27, v41);
  (*(v89 + 16))(v87, v88, v83);
  v65(v17, v51, v41);
  v66 = [a1 lastUsedDate];
  if (v66)
  {
    v67 = v66;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = type metadata accessor for Date();
  (*(*(v69 - 8) + 56))(v63, v68, 1, v69);
  v70 = dispatch thunk of CredentialInternal.__allocating_init(identifier:friendlyName:ownerApplications:userApplications:state:configUUID:accessLevel:lastUsedDate:)();

  (*(v89 + 8))(v88, v83);
  v71 = *(v81 + 8);
  v71(v51, v41);
  v71(v27, v41);
  return v70;
}

uint64_t sub_1000BCE28(unint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StateInternal();
  v251 = *(v5 - 8);
  __chkstk_darwin(v5);
  v258 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v249 = (&v246 - v8);
  v9 = type metadata accessor for InstanceInfoInternal.LifeCycleState();
  v248 = *(v9 - 8);
  __chkstk_darwin(v9);
  v257 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v246 - v12;
  __chkstk_darwin(v14);
  v264 = (&v246 - v15);
  v273 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v273);
  v274 = &v246 - v16;
  v17 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v17 - 8);
  v19 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v268 = &v246 - v21;
  __chkstk_darwin(v22);
  v24 = &v246 - v23;
  v275 = type metadata accessor for UUID();
  v255 = *(v275 - 8);
  __chkstk_darwin(v275);
  v267 = &v246 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_239;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v250 = v5;
  v254 = v9;
  v277 = v24;
  v266 = v19;
  if (v26)
  {
    v284 = _swiftEmptyArrayStorage;
    v27 = &v284;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v26 < 0)
    {
      goto LABEL_242;
    }

    v281 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = 0;
      do
      {
        v29 = v28 + 1;
        v30 = [specialized _ArrayBuffer._getElementSlowPath(_:)() applet];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v28 = v29;
      }

      while (v26 != v29);
    }

    else
    {
      v31 = (a1 + 32);
      do
      {
        v32 = *v31++;
        v33 = [v32 applet];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v26;
      }

      while (v26);
    }

    v24 = v284;
    v3 = v281;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_1000958E4(v34, qword_10051B2C8);

  v9 = v3;
  v259 = v35;
  v36 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v36, v2);
  p_isa = (v24 >> 62);
  v262 = v13;
  v276 = v9;
  *&v252 = a1;
  v256 = (v24 >> 62);
  if (v37)
  {
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v284 = v39;
    *v13 = 136315394;
    if (p_isa)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v290 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v40 & ~(v40 >> 63), 0);
      if (v40 < 0)
      {
        goto LABEL_247;
      }

      v272 = v39;
      v278 = v13;
      LODWORD(v279) = v2;
      *&v280 = v36;
      v41 = v290;
      v281 = v24;
      if ((v24 & 0xC000000000000001) != 0)
      {
        v42 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v43 = [swift_unknownObjectRetain() identifier];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
          swift_unknownObjectRelease_n();

          v290 = v41;
          isa = v41[2].isa;
          v47 = v41[3].isa;
          a1 = isa + 1;
          if (isa >= v47 >> 1)
          {
            sub_10019F3C0((v47 > 1), isa + 1, 1);
            v41 = v290;
          }

          ++v42;
          v41[2].isa = a1;
          v49 = &v41[2 * isa];
          v49[4].isa = v44;
          v49[5].isa = v46;
        }

        while (v40 != v42);
      }

      else
      {
        v50 = (v24 + 32);
        a1 = &selRef_cacheProximityChipData_completion_;
        do
        {
          v51 = *v50;
          v52 = [v51 identifier];
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v290 = v41;
          v57 = v41[2].isa;
          v56 = v41[3].isa;
          if (v57 >= v56 >> 1)
          {
            sub_10019F3C0((v56 > 1), v57 + 1, 1);
            v41 = v290;
          }

          v41[2].isa = (v57 + 1);
          v58 = &v41[2 * v57];
          v58[4].isa = v53;
          v58[5].isa = v55;
          ++v50;
          --v40;
        }

        while (v40);
      }

      v24 = v281;
      v36 = v280;
      v2 = v279;
      v13 = v278;
    }

    v59 = Array.description.getter();
    v61 = v60;

    v62 = sub_1002FFA0C(v59, v61, &v284);

    *(v13 + 4) = v62;
    *(v13 + 6) = 2080;
    v9 = v267;
    CredentialInternal.identifier.getter();
    v63 = UUID.uuidString.getter();
    v65 = v64;
    (v255[1].isa)(v9, v275);
    v66 = sub_1002FFA0C(v63, v65, &v284);

    *(v13 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v36, v2, "Syncing NFAppletInfo %s with credential %s", v13, 0x16u);
    swift_arrayDestroy();

    p_isa = &v256->isa;
  }

  else
  {
  }

  if (p_isa)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v268;
  v281 = v24;
  if (!v5)
  {
    goto LABEL_51;
  }

  v67 = 0;
  v271 = v24 & 0xFFFFFFFFFFFFFF8;
  v272 = v24 & 0xC000000000000001;
  v270 = v255 + 7;
  v19 = &v255[6];
  v261 = v255 + 4;
  v263 = v255 + 1;
  v269 = v5;
  v260 = v255 + 6;
  while (!v272)
  {
    if (v67 >= *(v271 + 16))
    {
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      v26 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v70 = *(v24 + 8 * v67 + 32);
    v71 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      goto LABEL_50;
    }

LABEL_44:
    v278 = v67;
    a1 = v277;
    *&v280 = v70;
    sub_10013070C(v277);
    CredentialInternal.identifier.getter();
    v72 = v275;
    (v270->isa)(v3, 0, 1, v275);
    v13 = v274;
    v73 = *(v273 + 48);
    sub_1000756F8(a1, v274);
    sub_1000756F8(v3, &v13[v73]);
    v74 = *v19;
    v75 = (*v19)(v13, 1, v72);
    v279 = v71;
    if (v75 == 1)
    {

      v2 = v3;
      v9 = &unk_10040B360;
      sub_100075768(v3, &unk_10050BE80, &unk_10040B360);
      sub_100075768(a1, &unk_10050BE80, &unk_10040B360);
      v68 = v74(&v13[v73], 1, v72) == 1;
      v69 = v13;
      if (!v68)
      {
        goto LABEL_153;
      }

      sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
      v24 = v281;
    }

    else
    {
      v76 = v280;
      a1 = v266;
      sub_1000756F8(v13, v266);
      if (v74(&v13[v73], 1, v72) == 1)
      {
        goto LABEL_152;
      }

      v77 = v267;
      (v261->isa)(v267, &v13[v73], v72);
      sub_1000C0A10(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();

      v79 = v263->isa;
      (v263->isa)(v77, v72);
      v80 = v268;
      v9 = &unk_10040B360;
      sub_100075768(v268, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v277, &unk_10050BE80, &unk_10040B360);
      v2 = v80;
      (v79)(a1, v72);
      v19 = v260;
      sub_100075768(v13, &unk_10050BE80, &unk_10040B360);
      v24 = v281;
      if ((v78 & 1) == 0)
      {
        goto LABEL_154;
      }
    }

    v67 = v278 + 1;
    v5 = v269;
    v3 = v2;
    if (v279 == v269)
    {
      goto LABEL_51;
    }
  }

  v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v71 = (v67 + 1);
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  v284 = _swiftEmptyArrayStorage;
  a1 = v252;
  v81 = v252 & 0xFFFFFFFFFFFFFF8;
  if (v253)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = 0;
  v2 = _swiftEmptyArrayStorage;
  v13 = v262;
  while (v82 != v83)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v83 >= *(v81 + 16))
      {
        goto LABEL_219;
      }

      v84 = *(a1 + 8 * v83 + 32);
    }

    v85 = v84;
    v3 = (&v83->isa + 1);
    if (__OFADD__(v83, 1))
    {
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    type metadata accessor for InstanceInfoInternal();
    v83 = (v83 + 1);
    if (sub_1000BF218(v85))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v284 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v284;
      v83 = v3;
    }
  }

  v27 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_243;
  }

  v86 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v9 = v254;
    v253 = v86;
    if (v256)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v253 != v87)
    {

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Some applets could not be transformed into InstanceInfo", v92, 2u);
        goto LABEL_156;
      }

LABEL_157:

      sub_10009591C();
      swift_allocError();
      *v170 = 6;
      swift_willThrow();
      return v171 & 1;
    }

    if (v27)
    {
      v89 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v89 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v258;
    v271 = v89;
    v272 = v2;
    if (!v89)
    {
      goto LABEL_130;
    }

    v93 = 0;
    v270 = (v2 & 0xC000000000000001);
    v247 = v2 & 0xFFFFFFFFFFFFFF8;
    v246 = v2 + 32;
    v268 = &v248[1];
    v269 = v248 + 2;
    *&v88 = 136315394;
    v252 = v88;
    v280 = xmmword_1004098F0;
LABEL_78:
    if (v270)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v94 = v264;
      v95 = __OFADD__(v93, 1);
      v24 = v93 + 1;
      if (v95)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v94 = v264;
      if (v93 >= *(v247 + 16))
      {
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        v86 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      v5 = *(v246 + 8 * v93);
      v95 = __OFADD__(v93, 1);
      v24 = v93 + 1;
      if (v95)
      {
        goto LABEL_232;
      }
    }

    break;
  }

  InstanceInfoInternal.lifeCycleState.getter();
  InstanceInfoInternal.LifeCycleState.init(from:)();
  (v269->isa)(v13, v94, v9);
  v3 = v5;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();

  v98 = os_log_type_enabled(v96, v97);
  v273 = v24;
  if (!v98)
  {

    v103 = v13;
    v104 = *v268;
    a1 = v268 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*v268)(v103, v9);
    goto LABEL_128;
  }

  LODWORD(v260) = v97;
  v263 = v96;
  v99 = swift_slowAlloc();
  v256 = swift_slowAlloc();
  v290 = v256;
  v261 = v99;
  LODWORD(v99->isa) = v252;
  v100 = InstanceInfoInternal.instanceAID.getter();
  v19 = v100;
  v102 = v101;
  a1 = v101 >> 62;
  v279 = HIDWORD(v100);
  v266 = v3;
  if ((v101 >> 62) > 1)
  {
    if (a1 != 2)
    {
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_127;
    }

    v106 = *(v100 + 16);
    v105 = *(v100 + 24);
    v2 = v105 - v106;
    if (__OFSUB__(v105, v106))
    {
      goto LABEL_245;
    }

    if (!v2)
    {
      goto LABEL_98;
    }
  }

  else if (a1)
  {
    v107 = v279 - v100;
    if (__OFSUB__(v279, v100))
    {
      goto LABEL_246;
    }

    v2 = v107;
    if (!v107)
    {
LABEL_98:
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_126;
    }
  }

  else
  {
    v2 = BYTE6(v101);
    if (!BYTE6(v101))
    {
      goto LABEL_98;
    }
  }

  v283 = _swiftEmptyArrayStorage;
  v13 = (v2 & ~(v2 >> 63));
  v5 = &v283;
  sub_10019F3C0(0, v13, 0);
  v3 = v283;
  v278 = v19;
  if (a1 == 2)
  {
    v9 = *(v19 + 16);
LABEL_101:
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_105;
    }

    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
  }

  if (a1 == 1)
  {
    v9 = v278;
    goto LABEL_101;
  }

  if (v2 < 0)
  {
    goto LABEL_248;
  }

  v9 = 0;
LABEL_105:
  v274 = v19 >> 32;
  v277 = BYTE6(v102);
  v281 = a1;
  while (2)
  {
    if (!v13)
    {
      goto LABEL_220;
    }

    if (a1 == 2)
    {
      if (v9 < *(v19 + 16))
      {
        goto LABEL_226;
      }

      if (v9 >= *(v19 + 24))
      {
        goto LABEL_228;
      }

      v111 = __DataStorage._bytes.getter();
      if (!v111)
      {
        goto LABEL_256;
      }

      v24 = v111;
      v5 = v102 & 0x3FFFFFFFFFFFFFFFLL;
      v112 = __DataStorage._offset.getter();
      v110 = v9 - v112;
      if (__OFSUB__(v9, v112))
      {
        goto LABEL_230;
      }

LABEL_119:
      v5 = *(v24 + v110);
    }

    else
    {
      if (a1 == 1)
      {
        if (v9 < v278 || v9 >= v274)
        {
          goto LABEL_227;
        }

        v108 = __DataStorage._bytes.getter();
        if (!v108)
        {
          goto LABEL_255;
        }

        v24 = v108;
        v5 = v102 & 0x3FFFFFFFFFFFFFFFLL;
        v109 = __DataStorage._offset.getter();
        v110 = v9 - v109;
        if (__OFSUB__(v9, v109))
        {
          goto LABEL_229;
        }

        goto LABEL_119;
      }

      if (v9 >= v277)
      {
        goto LABEL_225;
      }

      LOWORD(v284) = v19;
      BYTE2(v284) = BYTE2(v19);
      BYTE3(v284) = BYTE3(v19);
      BYTE4(v284) = v279;
      BYTE5(v284) = BYTE5(v19);
      BYTE6(v284) = BYTE6(v19);
      HIBYTE(v284) = HIBYTE(v19);
      v285 = v102;
      v286 = BYTE2(v102);
      v287 = BYTE3(v102);
      v288 = BYTE4(v102);
      v289 = BYTE5(v102);
      v5 = *(&v284 + v9);
    }

    sub_100068FC4(&qword_100502440, &unk_10040B240);
    v113 = swift_allocObject();
    *(v113 + 16) = v280;
    *(v113 + 56) = &type metadata for UInt8;
    *(v113 + 64) = &protocol witness table for UInt8;
    *(v113 + 32) = v5;
    v114 = String.init(format:_:)();
    v283 = v3;
    v117 = v3[2].isa;
    v116 = v3[3].isa;
    v24 = v117 + 1;
    if (v117 >= v116 >> 1)
    {
      v5 = &v283;
      v248 = v114;
      v119 = v115;
      sub_10019F3C0((v116 > 1), v117 + 1, 1);
      v115 = v119;
      v114 = v248;
      v3 = v283;
    }

    v3[2].isa = v24;
    v118 = &v3[2 * v117];
    v118[4].isa = v114;
    v118[5].isa = v115;
    ++v9;
    --v13;
    --v2;
    a1 = v281;
    if (v2)
    {
      continue;
    }

    break;
  }

  v9 = v254;
  v13 = v262;
LABEL_126:
  v2 = v272;
LABEL_127:
  v284 = v3;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v120 = BidirectionalCollection<>.joined(separator:)();
  v122 = v121;
  sub_10006A178(v19, v102);

  v123 = sub_1002FFA0C(v120, v122, &v290);

  v124 = v261;
  *(&v261->isa + 4) = v123;
  WORD2(v124[1].isa) = 2080;
  v125 = InstanceInfoInternal.LifeCycleState.description.getter();
  v127 = v126;
  v128 = v13;
  v104 = *v268;
  a1 = v268 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*v268)(v128, v9);
  v129 = sub_1002FFA0C(v125, v127, &v290);

  *(&v124[1].isa + 6) = v129;
  v130 = v263;
  _os_log_impl(&_mh_execute_header, v263, v260, "AID %s lifecycle %s", v124, 0x16u);
  swift_arrayDestroy();

  v94 = v264;
  v3 = v266;
LABEL_128:
  v131 = v257;
  static InstanceInfoInternal.LifeCycleState.locked.getter();
  sub_1000C0A10(&qword_1005031D8, &type metadata accessor for InstanceInfoInternal.LifeCycleState, &protocol conformance descriptor for InstanceInfoInternal.LifeCycleState);
  v27 = v94;
  v132 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (v104)(v131, v9);
  if (v132)
  {

    v213 = v276;
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v266 = v3;
      v218 = v217;
      v284 = v217;
      *v216 = 136315138;
      v219 = v267;
      CredentialInternal.identifier.getter();
      v220 = UUID.uuidString.getter();
      v281 = v213;
      v222 = v221;
      (v255[1].isa)(v219, v275);
      v223 = sub_1002FFA0C(v220, v222, &v284);

      *(v216 + 4) = v223;
      _os_log_impl(&_mh_execute_header, v214, v215, "Credential %s transitioned into locked state", v216, 0xCu);
      sub_1000752F4(v218);
      v3 = v266;
    }

    v224 = v250;
    v225 = v264;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v226 = swift_allocObject();
    *(v226 + 16) = xmmword_100409E40;
    *(v226 + 32) = v3;
    v227 = v249;
    *v249 = v226;
    (*(v251 + 104))(v227, enum case for StateInternal.locked(_:), v224);
    v228 = v3;
    CredentialInternal.state.setter();

    (v104)(v225, v254);
    v171 = 0;
    return v171 & 1;
  }

  (v104)(v27, v9);

  v93 = v273;
  v19 = v258;
  v13 = v262;
  if (v273 != v271)
  {
    goto LABEL_78;
  }

LABEL_130:
  v133 = v276;
  CredentialInternal.state.getter();
  v134 = v251;
  v135 = v250;
  v136 = (*(v251 + 88))(v19, v250);
  v137 = v136;
  if (v136 == enum case for StateInternal.installed(_:))
  {
    (*(v134 + 96))(v19, v135);
    v138 = *v19;
    v139 = v133;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();

    v142 = os_log_type_enabled(v140, v141);
    v281 = v139;
    if (v142)
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v284 = v144;
      *v143 = 136315138;
      v145 = v267;
      CredentialInternal.identifier.getter();
      v146 = UUID.uuidString.getter();
      v148 = v147;
      (v255[1].isa)(v145, v275);
      v149 = sub_1002FFA0C(v146, v148, &v284);

      *(v143 + 4) = v149;
      _os_log_impl(&_mh_execute_header, v140, v141, "Credential %s is already in installed state", v143, 0xCu);
      sub_1000752F4(v144);

      v2 = v272;
    }

    v150 = v271;
    v151 = sub_1000BF4C8(v138);
    v284 = v151;
    if (!v150)
    {
LABEL_210:

      v212 = v249;
      *v249 = v151;
      (*(v251 + 104))(v212, v137, v250);
      CredentialInternal.state.setter();
      v171 = 0;
      return v171 & 1;
    }

    if (v150 >= 1)
    {
      v152 = 0;
      v153 = v2 & 0xC000000000000001;
      v13 = &v290;
      while (1)
      {
        if (v153)
        {
          v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v154 = *(v272 + 8 * v152 + 32);
        }

        v72 = v154;
        a1 = &v246;
        v290 = v154;
        __chkstk_darwin(v154);
        *(&v246 - 2) = &v290;

        v155 = v265;
        v156 = sub_10033322C(sub_1000C0508, &v246 - 4, v151);
        v76 = v156;
        if (v156 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_145:
            v265 = v155;
            goto LABEL_146;
          }
        }

        else if (!*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v157 = sub_1000C0718(&v284, v76);
        if (v284 >> 62)
        {
          a1 = v155;
          v160 = v157;
          v158 = _CocoaArrayWrapper.endIndex.getter();
          v157 = v160;
          if (v158 < v160)
          {
LABEL_151:
            __break(1u);
LABEL_152:

            sub_100075768(v268, &unk_10050BE80, &unk_10040B360);
            sub_100075768(v277, &unk_10050BE80, &unk_10040B360);
            (v263->isa)(a1, v72);
            v69 = v13;
LABEL_153:
            sub_100075768(v69, &qword_1005031D0, &unk_100413B20);
LABEL_154:

            v161 = v276;
            v90 = Logger.logObject.getter();
            v162 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v90, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v284 = v164;
              *v163 = 136315138;
              v165 = v267;
              CredentialInternal.identifier.getter();
              v166 = UUID.uuidString.getter();
              v168 = v167;
              (v263->isa)(v165, v275);
              v169 = sub_1002FFA0C(v166, v168, &v284);

              *(v163 + 4) = v169;
              _os_log_impl(&_mh_execute_header, v90, v162, "Some applets are not for credential %s", v163, 0xCu);
              sub_1000752F4(v164);

LABEL_156:
            }

            goto LABEL_157;
          }
        }

        else
        {
          v158 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v158 < v157)
          {
            goto LABEL_151;
          }
        }

        v265 = v155;
        sub_1001A2230(v157, v158);
LABEL_146:

        v159 = v72;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v284 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v152;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v151 = v284;

        if (v150 == v152)
        {
          goto LABEL_210;
        }
      }
    }

    goto LABEL_252;
  }

  if (v136 != enum case for StateInternal.installationPending(_:))
  {

    v229 = v276;
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v284 = v233;
      *v232 = 136315138;
      v234 = v267;
      CredentialInternal.identifier.getter();
      v235 = UUID.uuidString.getter();
      v237 = v236;
      (v255[1].isa)(v234, v275);
      v238 = sub_1002FFA0C(v235, v237, &v284);

      *(v232 + 4) = v238;
      _os_log_impl(&_mh_execute_header, v230, v231, "Credential %s is in a bad state", v232, 0xCu);
      sub_1000752F4(v233);
    }

    (*(v251 + 8))(v258, v250);
    v171 = 0;
    return v171 & 1;
  }

  v172 = v249;
  *v249 = v2;
  (*(v251 + 104))(v172);

  v173 = v276;
  CredentialInternal.state.setter();
  v174 = v173;

  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.info.getter();

  LODWORD(v269) = v176;
  if (!os_log_type_enabled(v175, v176))
  {

    goto LABEL_222;
  }

  v268 = v175;
  v177 = swift_slowAlloc();
  v266 = swift_slowAlloc();
  v290 = v266;
  *v177 = 136315394;
  v178 = v267;
  CredentialInternal.identifier.getter();
  v179 = UUID.uuidString.getter();
  v181 = v180;
  (v255[1].isa)(v178, v275);
  v182 = sub_1002FFA0C(v179, v181, &v290);

  *(v177 + 4) = v182;
  v267 = v177;
  *(v177 + 12) = 2080;
  v183 = v253;
  if (!v253)
  {
    goto LABEL_221;
  }

  v283 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v253 & ~(v253 >> 63), 0);
  if (v183 < 0)
  {
    goto LABEL_254;
  }

  v184 = 0;
  v185 = v283;
  v273 = v2 & 0xC000000000000001;
  v270 = (v2 + 32);
  v280 = xmmword_1004098F0;
  do
  {
    if (v273)
    {
      v186 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v186 = v270[v184].isa;
    }

    v187 = v186;
    v188 = InstanceInfoInternal.instanceAID.getter();
    v9 = v188;
    v190 = v189;
    v13 = (v189 >> 62);
    v279 = HIDWORD(v188);
    v274 = v187;
    v275 = v184;
    if ((v189 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v19 = _swiftEmptyArrayStorage;
        goto LABEL_206;
      }

      v192 = *(v188 + 16);
      v191 = *(v188 + 24);
      v2 = v191 - v192;
      if (__OFSUB__(v191, v192))
      {
        goto LABEL_251;
      }

      if (!v2)
      {
        goto LABEL_178;
      }
    }

    else if (v13)
    {
      v193 = v279 - v188;
      if (__OFSUB__(v279, v188))
      {
        goto LABEL_250;
      }

      v2 = v193;
      if (!v193)
      {
LABEL_178:
        v19 = _swiftEmptyArrayStorage;
        goto LABEL_206;
      }
    }

    else
    {
      v2 = BYTE6(v189);
      if (!BYTE6(v189))
      {
        goto LABEL_178;
      }
    }

    v282 = _swiftEmptyArrayStorage;
    v24 = v2 & ~(v2 >> 63);
    v5 = &v282;
    sub_10019F3C0(0, v24, 0);
    v19 = v282;
    v278 = v9;
    v271 = v185;
    if (v13 == 2)
    {
      v3 = *(v9 + 16);
    }

    else
    {
      if (v13 != 1)
      {
        if (v2 < 0)
        {
          goto LABEL_253;
        }

        v3 = 0;
        goto LABEL_185;
      }

      v3 = v278;
    }

    if (v2 < 0)
    {
      goto LABEL_249;
    }

LABEL_185:
    v276 = v9 >> 32;
    v277 = BYTE6(v190);
    v281 = v13;
    do
    {
      if (!v24)
      {
        goto LABEL_231;
      }

      if (v13 == 2)
      {
        if (v3 < *(v9 + 16))
        {
          goto LABEL_233;
        }

        if (v3 >= *(v9 + 24))
        {
          goto LABEL_236;
        }

        v197 = __DataStorage._bytes.getter();
        if (!v197)
        {
          goto LABEL_258;
        }

        v13 = v197;
        v5 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v198 = __DataStorage._offset.getter();
        v196 = v3 - v198;
        if (__OFSUB__(v3, v198))
        {
          goto LABEL_238;
        }

        goto LABEL_199;
      }

      if (v13 == 1)
      {
        if (v3 < v278 || v3 >= v276)
        {
          goto LABEL_235;
        }

        v194 = __DataStorage._bytes.getter();
        if (!v194)
        {
          goto LABEL_257;
        }

        v13 = v194;
        v5 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v195 = __DataStorage._offset.getter();
        v196 = v3 - v195;
        if (__OFSUB__(v3, v195))
        {
          goto LABEL_237;
        }

LABEL_199:
        v5 = v196[v13];
        goto LABEL_202;
      }

      if (v3 >= v277)
      {
        goto LABEL_234;
      }

      LOWORD(v284) = v9;
      BYTE2(v284) = BYTE2(v9);
      BYTE3(v284) = BYTE3(v9);
      BYTE4(v284) = v279;
      BYTE5(v284) = BYTE5(v9);
      BYTE6(v284) = BYTE6(v9);
      HIBYTE(v284) = HIBYTE(v9);
      v285 = v190;
      v286 = BYTE2(v190);
      v287 = BYTE3(v190);
      v288 = BYTE4(v190);
      v289 = BYTE5(v190);
      v5 = *(&v284 + v3);
LABEL_202:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v199 = swift_allocObject();
      *(v199 + 16) = v280;
      *(v199 + 56) = &type metadata for UInt8;
      *(v199 + 64) = &protocol witness table for UInt8;
      *(v199 + 32) = v5;
      v200 = String.init(format:_:)();
      v282 = v19;
      a1 = *(v19 + 16);
      v202 = *(v19 + 24);
      if (a1 >= v202 >> 1)
      {
        v5 = &v282;
        v264 = v200;
        v204 = v201;
        sub_10019F3C0((v202 > 1), a1 + 1, 1);
        v201 = v204;
        v200 = v264;
        v19 = v282;
      }

      *(v19 + 16) = a1 + 1;
      v203 = v19 + 16 * a1;
      *(v203 + 32) = v200;
      *(v203 + 40) = v201;
      v3 = (v3 + 1);
      --v24;
      --v2;
      v13 = v281;
    }

    while (v2);
    v185 = v271;
LABEL_206:
    v284 = v19;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v205 = BidirectionalCollection<>.joined(separator:)();
    v207 = v206;

    sub_10006A178(v9, v190);
    v208 = v274;

    v283 = v185;
    v210 = v185[2].isa;
    v209 = v185[3].isa;
    if (v210 >= v209 >> 1)
    {
      sub_10019F3C0((v209 > 1), v210 + 1, 1);
      v185 = v283;
    }

    v184 = v275 + 1;
    v185[2].isa = (v210 + 1);
    v211 = &v185[2 * v210];
    v211[4].isa = v205;
    v211[5].isa = v207;
  }

  while (v184 != v253);
LABEL_221:

  v239 = Array.description.getter();
  v241 = v240;

  v242 = sub_1002FFA0C(v239, v241, &v290);

  v243 = v267;
  *(v267 + 14) = v242;
  v244 = v268;
  _os_log_impl(&_mh_execute_header, v268, v269, "Credential %s transitioned to installed state with new instances %s", v243, 0x16u);
  swift_arrayDestroy();

LABEL_222:
  v171 = 1;
  return v171 & 1;
}

uint64_t sub_1000BF218(void *a1)
{
  v2 = [a1 applet];
  v3 = [v2 packageIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_10013044C(v4, v6);
  if (v8 >> 60 == 15)
  {

    return 0;
  }

  v10 = v7;
  v11 = v8;
  v12 = [v2 moduleIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_10013044C(v13, v15);
  if (v17 >> 60 == 15)
  {

LABEL_9:
    sub_10006A2D0(v10, v11);
    return 0;
  }

  v18 = v16;
  v19 = v17;
  v20 = [a1 ssdAID];
  if (!v20)
  {

    sub_10006A2D0(v18, v19);
    goto LABEL_9;
  }

  v21 = v20;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a1 obgk];
  if (v22)
  {
    v23 = v22;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = [v2 groupMembers];
  if (v24 || (v24 = [v2 groupHead]) != 0)
  {
  }

  v25 = [v2 identifierAsData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = bswap64([v2 rawGPState]);
  sub_1002B1854(&v27, &v28);
  v26 = dispatch thunk of InstanceInfoInternal.__allocating_init(instanceAID:packageAID:moduleAID:securityDomainAID:securityDomainKeyInfo:lifeCycleState:instanceType:)();

  return v26;
}

void *sub_1000BF4C8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000C01C4(v3, 0);
  sub_1000C02DC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000BF55C(void *a1)
{
  v3 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v3 - 8);
  v5 = v68 - v4;
  v6 = sub_100068FC4(&qword_1005031F8, &unk_10040A5E0);
  __chkstk_darwin(v6 - 8);
  v81 = v68 - v7;
  v8 = type metadata accessor for StateInternal();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v82 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = v68 - v11;
  v12 = type metadata accessor for NSFastEnumerationIterator();
  v87 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v68 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v80 = v68 - v23;
  __chkstk_darwin(v24);
  v86 = v68 - v25;
  v27 = __chkstk_darwin(v26);
  v29 = v68 - v28;
  v30 = [a1 friendlyName];
  if (!v30)
  {

    return 0;
  }

  v77 = v21;
  v76 = v5;
  v31 = v30;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [a1 uuid];
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = v34;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = [a1 ownerApplications];
  if (!v36)
  {
    (*(v19 + 8))(v29, v18);
LABEL_20:

LABEL_21:

    return 0;
  }

  v74 = v36;
  v73 = [a1 userApplications];
  if (!v73)
  {
    (*(v19 + 8))(v29, v18);

    return 0;
  }

  v37 = [a1 productConfigUUID];
  if (!v37)
  {
    (*(v19 + 8))(v29, v18);

    goto LABEL_21;
  }

  v70 = v19;
  v71 = v18;
  v68[1] = v1;
  v72 = a1;
  v38 = v37;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_1000C0A10(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  v88 = v29;
  v89 = v33;
  v79 = _swiftEmptyArrayStorage;
  if (v94)
  {
    v78 = _swiftEmptyArrayStorage;
    do
    {
      sub_100075D50(&v93, v92);
      sub_1000754F0(v92, v91);
      type metadata accessor for SecureElementApplicationEntity();
      if (swift_dynamicCast())
      {
        v39 = v90;
        v40 = [v90 identifier];
        if (v40)
        {
          v41 = v40;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = [v39 bundleIdentifier];
          if (v42)
          {
            v43 = v42;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          type metadata accessor for ApplicationInfoInternal();
          [v39 gdprVersionShown];
          dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

          sub_1000752F4(v92);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v78 = v95;
          v29 = v88;
        }

        else
        {
          sub_1000752F4(v92);
        }
      }

      else
      {
        sub_1000752F4(v92);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v94);
  }

  else
  {
    v78 = _swiftEmptyArrayStorage;
  }

  v45 = *(v87 + 8);
  v87 += 8;
  v69 = v45;
  v45(v17, v12);
  v95 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  dispatch thunk of IteratorProtocol.next()();
  if (v94)
  {
    v79 = _swiftEmptyArrayStorage;
    v46 = v84;
    do
    {
      sub_100075D50(&v93, v92);
      sub_1000754F0(v92, v91);
      type metadata accessor for SecureElementApplicationEntity();
      if (swift_dynamicCast())
      {
        v47 = v90;
        v48 = [v90 identifier];
        if (v48)
        {
          v49 = v48;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = [v47 bundleIdentifier];
          if (v50)
          {
            v51 = v50;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          type metadata accessor for ApplicationInfoInternal();
          [v47 gdprVersionShown];
          dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

          sub_1000752F4(v92);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v79 = v95;
          v29 = v88;
        }

        else
        {
          sub_1000752F4(v92);
        }
      }

      else
      {
        sub_1000752F4(v92);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v94);
  }

  else
  {
    v46 = v84;
  }

  v69(v14, v12);
  v52 = v72;
  [v72 state];
  v53 = v81;
  StateInternal.init(rawDiscriminant:instanceInfos:)();
  v54 = v85;
  if ((*(v46 + 48))(v53, 1, v85) == 1)
  {

    v55 = *(v70 + 8);
    v56 = v71;
    v55(v86, v71);
    v55(v29, v56);
    sub_100075768(v53, &qword_1005031F8, &unk_10040A5E0);
    return 0;
  }

  v57 = v83;
  (*(v46 + 32))(v83, v53, v54);
  v58 = v70;
  v59 = *(v70 + 16);
  v60 = v71;
  v59(v80, v29, v71);
  (*(v46 + 16))(v82, v57, v54);
  v59(v77, v86, v60);
  v61 = [v52 lastUsedDate];
  if (v61)
  {
    v62 = v76;
    v63 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v76;
  }

  v65 = type metadata accessor for Date();
  (*(*(v65 - 8) + 56))(v62, v64, 1, v65);
  v66 = dispatch thunk of CredentialInternal.__allocating_init(identifier:friendlyName:ownerApplications:userApplications:state:configUUID:accessLevel:lastUsedDate:)();

  (*(v46 + 8))(v83, v54);
  v67 = *(v58 + 8);
  v67(v86, v60);
  v67(v29, v60);
  return v66;
}

void *sub_1000C0148(uint64_t a1, uint64_t a2)
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

  sub_100068FC4(&qword_100502448, &qword_100409998);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1000C01C4(uint64_t a1, uint64_t a2)
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

  sub_100068FC4(&qword_100504060, &qword_10040B370);
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

void *sub_1000C024C(uint64_t a1, uint64_t a2)
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

  sub_100068FC4(&qword_100503208, "|e\a");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_1000C02DC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100075C60(&qword_1005031E8, &qword_1005031E0, &qword_10040A5D8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100068FC4(&qword_1005031E0, &qword_10040A5D8);
            v9 = sub_1000C0480(v13, i, a3);
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
        type metadata accessor for InstanceInfoInternal();
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

void (*sub_1000C0480(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000C0500;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000C0560(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_24:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = a2 >> 62;
  while (v15 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v3 + 32);
      if (!v4)
      {
LABEL_10:
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:

      goto LABEL_5;
    }

LABEL_11:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a2 + 32);
    }

    v8 = v7;
    type metadata accessor for InstanceInfoInternal();
    v9 = v6;
    v10 = v8;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      return v3;
    }

LABEL_5:
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_22;
    }
  }

  return 0;
}

unint64_t sub_1000C0718(unint64_t *a1, unint64_t a2)
{
  v5 = *a1;
  result = sub_1000C0560(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v13 = *(v5 + 8 * v9 + 32);
LABEL_16:
    v14 = v13;
    if (a2 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_28:

        if (v8 != v9)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v15 = *(a2 + 32);
    }

    v16 = v15;
    type metadata accessor for InstanceInfoInternal();
    v17 = v14;
    v18 = v16;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      if (v8 != v9)
      {
LABEL_29:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v22)
          {
            goto LABEL_56;
          }

          if (v9 >= v22)
          {
            goto LABEL_57;
          }

          v23 = *(v5 + 32 + 8 * v9);
          v20 = *(v5 + 32 + 8 * v8);
          v21 = v23;
        }

        v24 = v21;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1001A291C(v5);
          v25 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v25) = 0;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
        v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v24;

        if ((v5 & 0x8000000000000000) != 0 || v25)
        {
          v5 = sub_1001A291C(v5);
          v26 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_47:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v9 >= *(v26 + 16))
        {
          goto LABEL_54;
        }

        v10 = v26 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v20;

        *a1 = v5;
      }

LABEL_8:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_52;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_51;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000C0A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000C0AC8(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0xA && a2)
  {
    v4 = log10f(a2);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 4295000000.0)
      {
        v5 = v4 + 1;
        if (v4 != -1)
        {
          v6 = v5 >= a1;
          v7 = v5 - a1;
          if (v7 == 0 || !v6)
          {
            return;
          }

          v8 = __exp10(v7);
          if (v8 != INFINITY)
          {
            if (v8 > -1.0)
            {
              if (v8 < 4294967300.0)
              {
                if (v8)
                {
                  if (a2 >= a2 % v8)
                  {
                    return;
                  }

LABEL_23:
                  __break(1u);
                  return;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_1000C0BCC()
{
  sub_100068FC4(&qword_100503238, &unk_10040A660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004098F0;
  v1 = sub_1000C0C38();
  *(v0 + 32) = &type metadata for SEStorageMockPassSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

unint64_t sub_1000C0C38()
{
  result = qword_100503240[0];
  if (!qword_100503240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100503240);
  }

  return result;
}

Swift::Int UUID.UTF8DataStringCase.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C0D78()
{
  Hasher.init(_seed:)();
  UUID.UTF8DataStringCase.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1000C0DB8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0E9C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000C0F30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C0F78(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LyonTimeExtension.MessageDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LyonTimeExtension.MessageDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_1000C1154()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_1000C11E0()
{
  Hasher.init(_seed:)();
  sub_1000C0E70();
  return Hasher._finalize()();
}

uint64_t sub_1000C124C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10051B240);
  sub_1000958E4(v2, qword_10051B240);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C12CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_1000C12EC, 0, 0);
}

uint64_t sub_1000C12EC()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C143C;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004C6BA8;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C143C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1000C1868;
  }

  else
  {
    v2 = sub_1000C154C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C154C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  sub_1000C1AA4();
  v3 = *(v0 + 152);

  v5 = sub_1003AF3C4(v2, v4);
  v6 = [v5 casdCertificate];

  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(type metadata accessor for SECHardwareInfoInternal());
  v8 = SECHardwareInfoInternal.init(hardwareReleaseVersionString:casdCertificate:)();
  v9 = qword_10051B258;
  qword_10051B258 = v8;
  v10 = v8;

  v3(v8, 0);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000C1868(uint64_t a1)
{
  v18 = v1;
  v2 = v1[21];
  swift_willThrow();

  if (qword_100501940 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100503448);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000019, 0x8000000100462920, &v17);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error %@ encountered while getting secure element", v6, 0x16u);
    sub_1000C2998(v7);

    sub_1000752F4(v8);
  }

  v10 = v1[22];
  v11 = v1[19];
  sub_10009591C();
  v12 = swift_allocError();
  *v13 = 31;
  v11(0, v12);

  if (!v10)
  {
  }

  v15 = v1[1];

  return v15();
}

id sub_1000C1AA4()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100462970);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  v3 = v1;
  v4 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v3, v4);

  v6 = sub_1002B3B94(&off_1004C3B28);
  v8 = v7;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  v81[0] = 0;
  v10 = sub_1003AE9C8(v0, v9, v81);

  if (!v10)
  {
    v32 = v81[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return sub_10006A178(v6, v8);
  }

  v11 = v81[0];
  if (sub_1003B0984(v10) != 36864 || (v12 = sub_1003B0934(v10), v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v15 = v14, v12, v16 = Data._bridgeToObjectiveC()().super.isa, sub_10006A178(v13, v15), v17 = objc_opt_self(), v18 = [v17 TLVWithData:v16], v16, !v18))
  {
LABEL_63:
    if (qword_100501940 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000958E4(v58, qword_100503448);
    v59 = v10;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81[0] = v75;
      *v62 = 136315138;
      v63 = sub_1003AAA78(v59);
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v6;
      v66 = v65;

      sub_100288788(v64, v66);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v80 = v8;
      sub_10007A2D0();
      v67 = BidirectionalCollection<>.joined(separator:)();
      v69 = v68;
      v70 = v66;
      v6 = v78;
      sub_10006A178(v64, v70);

      v71 = sub_1002FFA0C(v67, v69, v81);
      v8 = v80;

      *(v62 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Invalid TLV in jcopVersionRAPDU %s", v62, 0xCu);
      sub_1000752F4(v75);
    }

    sub_10009591C();
    swift_allocError();
    *v72 = 31;
    swift_willThrow();

    return sub_10006A178(v6, v8);
  }

  v19 = &selRef_mockFleetIntermediateCert;
  if ([v18 tag] != 254)
  {
LABEL_50:

    goto LABEL_63;
  }

  v79 = v8;
  result = [v18 children];
  if (!result)
  {
    goto LABEL_71;
  }

  v21 = result;
  v22 = sub_1000754A4();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_57:

    goto LABEL_62;
  }

LABEL_56:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_57;
  }

LABEL_9:
  v76 = v22;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  if ([v25 *(v19 + 3920)] != 57164)
  {

LABEL_62:
    v8 = v79;
    goto LABEL_63;
  }

  v74 = v25;
  v26 = [v25 value];
  if (v26)
  {
    v27 = v26;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v28, v30);
  }

  else
  {
    v31.super.isa = 0;
  }

  v22 = v76;
  v33 = [v17 TLVsWithData:{v31.super.isa, v73}];

  if (!v33)
  {

    goto LABEL_62;
  }

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v18;
  if (!(v19 >> 62))
  {
    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
LABEL_61:

    goto LABEL_62;
  }

LABEL_21:
  v34 = 0;
  v18 = (v19 & 0xC000000000000001);
  v17 = (v19 & 0xFFFFFFFFFFFFFF8);
  v77 = v19;
  while (1)
  {
    if (v18)
    {
      v22 = v6;
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= v17[2])
      {
        goto LABEL_55;
      }

      v22 = v6;
      v35 = *(v19 + 8 * v34 + 32);
    }

    v19 = v35;
    v6 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 tag] == 131)
    {
      break;
    }

    ++v34;
    v36 = v6 == v23;
    v6 = v22;
    v19 = v77;
    if (v36)
    {
      goto LABEL_61;
    }
  }

  result = [v19 value];
  if (!result)
  {
    goto LABEL_72;
  }

  v37 = result;
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = v40 >> 62;
  v6 = v22;
  v18 = v73;
  if ((v40 >> 62) > 1)
  {
    v8 = v79;
    if (v41 != 2)
    {

      sub_10006A178(v38, v40);
      goto LABEL_63;
    }

    v43 = v38;
    v45 = v38 + 16;
    v38 = *(v38 + 16);
    v44 = *(v45 + 8);
    sub_10006A178(v43, v40);
    v42 = v44 - v38;
    if (!__OFSUB__(v44, v38))
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {
    v8 = v79;
    if (!v41)
    {
      sub_10006A178(v38, v40);
      v42 = BYTE6(v40);
LABEL_43:
      if (v42 != 2)
      {

        goto LABEL_50;
      }

      result = [v19 value];
      if (!result)
      {
        goto LABEL_73;
      }

      v46 = result;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_1000CA97C(v47, v49);
      sub_10006A178(v47, v49);
      if ((v50 & 0x100) != 0)
      {
      }

      else
      {
        result = [v19 value];
        if (!result)
        {
          goto LABEL_74;
        }

        v51 = result;

        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        LOWORD(v51) = sub_1000C2438(v52, v54);
        sub_10006A178(v52, v54);
        if ((v51 & 0x100) == 0)
        {
          v81[0] = 0x20504F434ALL;
          v81[1] = 0xE500000000000000;
          v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v55);

          v56._countAndFlagsBits = 46;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);
          v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v57);

          sub_10006A178(v6, v79);
          return v81[0];
        }
      }

      goto LABEL_62;
    }
  }

  result = sub_10006A178(v38, v40);
  LODWORD(v42) = HIDWORD(v38) - v38;
  if (!__OFSUB__(HIDWORD(v38), v38))
  {
    v42 = v42;
LABEL_42:
    v18 = v73;
    goto LABEL_43;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void sub_1000C23C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000C2438(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C24E0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100503448);
  v3 = sub_1000958E4(v2, qword_100503448);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v2, qword_10051B2C8);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

uint64_t sub_1000C25A8(void (**a1)(void, void, void))
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = qword_10051B258;
  if (qword_10051B258)
  {
    _Block_copy(a1);
    a1[2](a1, v6, 0);
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = sub_1000C2784;
    v9[5] = v5;
    _Block_copy(a1);

    sub_1001F9BE8(0, 0, v4, &unk_10040A8D8, v9);
  }
}

uint64_t sub_1000C274C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C278C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C27CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_1000C12CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C288C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000C2998(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_100503F70, &unk_10040B2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C2A00(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_1000C4A9C();
    result = Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = v1;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_24;
      }

      type metadata accessor for Peer(0);
      swift_dynamicCast();
      v14 = v28;
      v5 = v10;
      v6 = v11;
      if (!v28)
      {
LABEL_25:
        v1 = v22;
LABEL_24:
        sub_100093854(v1);
        return v21;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_18:
    v15 = *(v14 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v16 = *(v14 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    sub_10006A2BC(v15, v16);

    v10 = v5;
    v11 = v6;
    v1 = v22;
    if (v16 >> 60 != 15)
    {
      v17 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10012E5A4(0, *(v21 + 2) + 1, 1, v21);
        v17 = result;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_10012E5A4((v18 > 1), v19 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v19 + 1;
      v21 = v17;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v16;
      v1 = v22;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}