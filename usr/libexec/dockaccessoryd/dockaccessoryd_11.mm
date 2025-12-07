void sub_100179980(void *a1)
{
  if (!a1)
  {
    sub_1000B346C();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    return;
  }

  v2 = a1;
  v3 = [v2 controllerKeyIdentifier];
  if (!v3)
  {
    sub_1000B346C();
    swift_allocError();
    v22 = 2;
LABEL_15:
    *v21 = v22;
    swift_willThrow();

    return;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v2 = v2;
  v8 = [v2 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = sub_1001762B8(v9, v11, 1);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_14:

    sub_1000B346C();
    swift_allocError();
    v22 = 1;
    goto LABEL_15;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = v12[4];
  }

  v14 = v13[4];
  v13[4] = v2;
  v15 = v2;

  v13[14] = v5;
  v13[15] = v7;

  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_1001780D0(v17, v19);
  if (v1)
  {
  }

  else
  {

    sub_100177148(v13, 1, 0);
  }
}

uint64_t sub_100179C94(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1001762B8(a1, a2, 1);
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            v9 = String._bridgeToObjectiveC()();

            v10 = v9;
            *a3 = v9;

            return 1;
          }

LABEL_8:
          if (a3)
          {
            goto LABEL_14;
          }

          ++v7;
          if (v8 == v6)
          {
            goto LABEL_17;
          }
        }

        if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_100179F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v61 = a2;
  v6 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v60 = a1;
  v18 = a1;
  v20 = v19;
  v22 = v21;
  sub_1000B5150(v18, v11, &qword_1002A7AF0, &qword_10023C9D0);
  v23 = *(v22 + 48);
  v64 = v20;
  if (v23(v11, 1, v20) == 1)
  {
    sub_100095C84(v11, &qword_1002A7AF0, &qword_10023C9D0);
    sub_1000B346C();
    swift_allocError();
    *v24 = 2;
    return swift_willThrow();
  }

  else
  {
    v58 = v3;
    v59 = v17;
    v57 = *(v22 + 32);
    result = v57(v17, v11, v64);
    if (a3)
    {
      v26 = v61;
      v27 = sub_100177864(v61, a3);
      if (v27)
      {
        v28 = v27;
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100093DE8(v29, qword_1002AA0E0);
        v30 = v59;
        (*(v22 + 16))(v15, v59, v64);

        v31 = v22;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        LODWORD(v62) = v33;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v63[0] = v60;
          *v34 = 136315394;
          *(v34 + 4) = sub_1000952D4(v61, a3, v63);
          *(v34 + 12) = 2080;
          v35 = v31;
          v36 = UUID.uuidString.getter();
          v38 = v37;
          (*(v35 + 8))(v15, v64);
          v39 = sub_1000952D4(v36, v38, v63);

          *(v34 + 14) = v39;
          _os_log_impl(&_mh_execute_header, v32, v62, "Saving peripheral identifier for %s: %s.", v34, 0x16u);
          swift_arrayDestroy();

          v30 = v59;

          v31 = v35;
        }

        else
        {

          (*(v31 + 8))(v15, v64);
        }

        v54 = v64;
        v57(v9, v30, v64);
        (*(v31 + 56))(v9, 0, 1, v54);
        v55 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
        swift_beginAccess();
        sub_10017E7A8(v9, v28 + v55);
        swift_endAccess();
      }

      else
      {
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100093DE8(v40, qword_1002AA0E0);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = v22;
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v63[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_1000952D4(v26, a3, v63);
          _os_log_impl(&_mh_execute_header, v41, v42, "Saving new peripheral identifier for %s.", v44, 0xCu);
          sub_100095808(v45);

          v22 = v43;
        }

        v46 = v62;
        type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry(0);
        v47 = swift_allocObject();
        v48 = v22;
        (*(v22 + 56))(v47 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, 1, 1, v64);
        *(v47 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = 0;
        *(v47 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = 0;
        *(v47 + 16) = v26;
        *(v47 + 24) = a3;
        v49 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
        swift_beginAccess();

        sub_10017E738(v60, v47 + v49);
        swift_endAccess();
        v50 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v46 + v50) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v46 + v50) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v51 = *(v46 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
        v52 = qword_1002A66F0;

        v53 = v59;
        if (v52 != -1)
        {
          swift_once();
        }

        swift_weakInit();
        v63[0] = v51;
        swift_weakAssign();
        sub_10017169C(v47, &off_100274F20);
        swift_arrayDestroy();

        sub_100095C84(v63, &qword_1002AA4C8, &unk_10023EDF0);
        return (*(v48 + 8))(v53, v64);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10017A924(uint64_t a1, unint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v17[-1] - v6;
  if (a2)
  {
    result = sub_100177864(a1, a2);
    if (result)
    {
      v8 = result;
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100093DE8(v9, qword_1002AA0E0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1000952D4(a1, a2, v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Deleting peripheral identifier for %s.", v12, 0xCu);
        sub_100095808(v13);
      }

      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      v15 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E7A8(v7, v8 + v15);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10017ABD8()
{
  v1 = v0;
  v2 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002AA0E0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting all peripheral identifiers.", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {

    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      ++v12;
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v15 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E7A8(v4, v13 + v15);
      swift_endAccess();
    }

    while (v11 != v12);
  }
}

uint64_t sub_10017AF58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v23[-1] - v8;
  if (a2)
  {
    v10 = sub_100177864(a1, a2);
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_1000B5150(v11 + v12, v9, &qword_1002A7AF0, &qword_10023C9D0);
      v13 = type metadata accessor for UUID();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v9, 1, v13) == 1)
      {
        sub_100095C84(v9, &qword_1002A7AF0, &qword_10023C9D0);
        sub_1000B346C();
        swift_allocError();
        *v15 = 1;
        swift_willThrow();
      }

      else
      {

        return (*(v14 + 32))(a3, v9, v13);
      }
    }

    else
    {
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100093DE8(v16, qword_1002AA0E0);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v23[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1000952D4(a1, a2, v23);
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to read peripheral identifier for %s: Key store does not exist.", v19, 0xCu);
        sub_100095808(v20);
      }

      sub_1000B346C();
      swift_allocError();
      *v21 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10017B60C()
{
  result = qword_1002AA4C0;
  if (!qword_1002AA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4C0);
  }

  return result;
}

id *sub_10017B660@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1001025F0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1001025F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1001025F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1001025F0(0, v41[2] + 1, 1, v41);
    }

    v13 = v41[2];
    v28 = v41[3];
    v12 = (v13 + 1);
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1001025F0((v28 > 1), v13 + 1, 1, v41);
    }

    v41[2] = v12;
    v29 = &v41[4 * v13];
    v29[4] = v24;
    v29[5] = v43;
    v29[6] = v38;
    v29[7] = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (v41[2] == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_10017BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_10017E87C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001E4440(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10017C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_10017E87C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001E4440(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOWORD(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOWORD(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 16));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOWORD(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOWORD(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOWORD(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10017C5E4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001E4440(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10017CB68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10017CCEC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE2(result) & 1;
    v13 = result | ((BYTE2(result) & 1) << 16);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 24);
  }

  return result;
}

uint64_t sub_10017CC38(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10017CC90@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry(0);
  swift_allocObject();
  result = sub_100172F20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017CCEC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1001E4838(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOWORD(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 16);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFFFF0000) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 & 0x10000) != 0)
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 16);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 16);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 & 0x10000) != 0)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 16);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 16);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

id *sub_10017D180(id *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

id sub_10017D21C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = v4 >> 62;
    if ((v4 >> 62) <= 1)
    {
      if (v5)
      {
        if (v3 == v3 >> 32)
        {
          goto LABEL_10;
        }
      }

      else if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_1000A0CD8(*(a1 + 40), *(a1 + 48));
      sub_10013B46C(v3, v4);
      sub_1000A0D2C(v3, v4);
      v6 = String.uppercased()();

      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
      return sub_100100D58(countAndFlagsBits, object);
    }

    if (v5 == 2 && *(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  result = [*(a1 + 32) privateKey];
  if (result)
  {

    v10 = [*(a1 + 32) publicKey];
    v11 = [v10 data];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_10013B46C(v12, v14);
    sub_1000A0D2C(v12, v14);
    String.uppercased()();

    v15._countAndFlagsBits = 43;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);

    result = [*(a1 + 32) privateKey];
    if (result)
    {
      v16 = result;
      v17 = [result data];

      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_10013B46C(v18, v20);
      sub_1000A0D2C(v18, v20);
      v21 = String.uppercased()();

      String.append(_:)(v21);

      countAndFlagsBits = String.init<A>(_:)();
      return sub_100100D58(countAndFlagsBits, object);
    }

    __break(1u);
  }

  return result;
}

void sub_10017D4B0(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
  v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController + 8);
  v4 = a1;

  v5 = sub_1001762B8(v2, v3, 0);

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_33:

    v38 = sub_100176034();
    if (!v42)
    {
      v6 = v38;
LABEL_8:
      v7 = v6[4];
      v6[4] = v4;
      v39 = v4;

      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v9;
      v10 = v6[12];
      v11 = v6[13];
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v10;
      *(inited + 56) = v11;
      sub_1000A0CD8(v10, v11);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10023C170;
      *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v12 + 40) = v13;

      v15 = sub_10017D21C(v14, 0);
      v17 = v16;

      *(v12 + 72) = &type metadata for Data;
      *(v12 + 48) = v15;
      *(v12 + 56) = v17;
      sub_1001F2468(v12);
      swift_setDeallocating();
      sub_100095C84(v12 + 32, &qword_1002AA4E0, &qword_10023EE00);
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100093DE8(v18, qword_1002AA0E0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;

        v24 = v6[2];
        v23 = v6[3];

        v25 = sub_1000952D4(v24, v23, &v40);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Saving local pairing identity for %s", v21, 0xCu);
        sub_100095808(v22);
      }

      else
      {
      }

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = SecItemUpdate(isa, v27);

      if (!v28)
      {
        goto LABEL_30;
      }

      v29 = SecCopyErrorMessageString(v28, 0);
      if (v29)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v40 = 0;
          v41 = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();

          v29 = v41;
          if (v41)
          {
            v30 = v40;
LABEL_21:

            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v40 = v34;
              *v33 = 136315138;
              if (v29)
              {
                v35 = v30;
              }

              else
              {
                v35 = 0x206E776F6E6B6E55;
              }

              if (v29)
              {
                v36 = v29;
              }

              else
              {
                v36 = 0xED0000726F727245;
              }

              v37 = sub_1000952D4(v35, v36, &v40);

              *(v33 + 4) = v37;
              _os_log_impl(&_mh_execute_header, v31, v32, "Unable to save local pairing identity: %s", v33, 0xCu);
              sub_100095808(v34);

              goto LABEL_31;
            }

LABEL_30:

LABEL_31:

            return;
          }
        }

        else
        {
        }

        v30 = 0;
        v29 = 0;
        goto LABEL_21;
      }

      v30 = 0;
      goto LABEL_21;
    }

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = v5[4];

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10017DA48(const void *a1, const void *a2)
{
  if (a2)
  {
    v3 = sub_1001762B8(a1, a2, 1);
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        v2 = (v2 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
        while ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_8:
          v9 = v7[14] == *v2 && v7[15] == v2[1];
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v10 = v7[5];
            sub_1000A0CD8(v10, v7[6]);

            return v10;
          }

          ++v6;
          if (v8 == v5)
          {
            goto LABEL_22;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
          goto LABEL_22;
        }
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:

    v10 = 1;
  }

  else
  {
LABEL_18:
    v10 = 2;
  }

  sub_1000B346C();
  swift_allocError();
  *v11 = v10;
  swift_willThrow();
  return v10;
}

id sub_10017DBCC(void *a1, unsigned int (*a2)(void, void, void), void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v107 = a5;
  v13 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v14 = __chkstk_darwin(v13 - 8);
  v105 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  __chkstk_darwin(v16);
  v20 = &v100 - v19;
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100093DE8(v21, qword_1002AA0E0);
  v109 = a1;
  sub_1000B5150(a1, v20, &qword_1002A7AF0, &qword_10023C9D0);

  v106 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v101 = v24;
    v103 = a2;
    v104 = a4;
    v102 = v8;
    v108 = v6;
    v8 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v114[0] = v100;
    *v8 = 136315394;
    v7 = type metadata accessor for UUID();
    a4 = *(v7 - 8);
    a2 = *(a4 + 48);
    if (a2(v20, 1, v7) == 1)
    {

      v25 = 0xE300000000000000;
      v26 = 7104878;
      goto LABEL_10;
    }

LABEL_8:
    sub_1000B5150(v20, v18, &qword_1002A7AF0, &qword_10023C9D0);
    v27 = a2(v18, 1, v7);

    if (v27 == 1)
    {
      goto LABEL_49;
    }

    v26 = UUID.uuidString.getter();
    v25 = v29;
    (*(a4 + 8))(v18, v7);
LABEL_10:
    sub_100095C84(v20, &qword_1002A7AF0, &qword_10023C9D0);
    v30 = sub_1000952D4(v26, v25, v114);

    *(v8 + 4) = v30;
    *(v8 + 12) = 2080;
    v7 = v108;
    a4 = v104;
    if (a3)
    {
      a2 = v103;
      *(v8 + 14) = sub_1000952D4(v103, a3, v114);
      _os_log_impl(&_mh_execute_header, v23, v101, "updatePeripheralIdentifier(%s, %s)", v8, 0x16u);
      swift_arrayDestroy();

      v8 = v102;
      goto LABEL_12;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    return result;
  }

  sub_100095C84(v20, &qword_1002A7AF0, &qword_10023C9D0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v31 = sub_100177864(a2, a3);
  v32 = v109;
  if (v31)
  {
    v33 = v31;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v108 = v7;
      v37 = a4;
      v38 = v36;
      v39 = v8;
      v40 = swift_slowAlloc();
      v114[0] = v40;
      *v38 = 136315138;
      *(v38 + 4) = sub_1000952D4(a2, a3, v114);
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating peripheral identifier information for %s.", v38, 0xCu);
      sub_100095808(v40);
      v8 = v39;
      v32 = v109;

      a4 = v37;
      v7 = v108;
    }

    v41 = v107;
    v42 = type metadata accessor for UUID();
    if ((*(*(v42 - 8) + 48))(v32, 1, v42) != 1)
    {
      v43 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E738(v32, v33 + v43);
      swift_endAccess();
    }

    *(v33 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = v41;
    *(v33 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = a4;
    v44 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
    v45 = qword_1002A66F0;

    if (v45 != -1)
    {
      swift_once();
    }

    swift_weakInit();
    v114[0] = v44;
    swift_weakAssign();
    v112 = 39;
    v113 = 0xE100000000000000;
    v46._countAndFlagsBits = a2;
    v46._object = a3;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 39;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = v112;
    v49 = v113;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      swift_arrayDestroy();
      sub_1000B346C();
      swift_allocError();
      *v97 = 2;
      swift_willThrow();

      return sub_100095C84(v114, &qword_1002AA4C8, &unk_10023EDF0);
    }

    v51 = Strong;
    sub_1000B5150(v114, &v112, &qword_1002AA4C8, &unk_10023EDF0);
    v52 = *(v51 + 24);

    if ((v52 & 1) != 0 || (sub_100138F54(v53, v54), !v7))
    {
      v107 = v48;
      v109 = v49;
      v55 = sub_100174554(&off_100274F80);
      if (v55[2] == 3)
      {
        LODWORD(v104) = v52;
        v105 = v51;
        v106 = v33;
        v108 = v7;
        v56 = 0;
        v57 = 0;
        v58 = 0xE000000000000000;
        do
        {
          v59 = HIBYTE(v58) & 0xF;
          if ((v58 & 0x2000000000000000) == 0)
          {
            v59 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v59)
          {
            v60 = 8236;
          }

          else
          {
            v60 = 0;
          }

          if (v59)
          {
            v61 = 0xE200000000000000;
          }

          else
          {
            v61 = 0xE000000000000000;
          }

          v110 = v57;
          v111 = v58;

          v62._countAndFlagsBits = v60;
          v62._object = v61;
          String.append(_:)(v62);

          v64 = v110;
          v63 = v111;
          v65 = *(&off_100274F80 + v56 * 8 + 40);
          v110 = *(&off_100274F80 + v56 * 8 + 32);
          v111 = v65;

          v66._countAndFlagsBits = 656424224;
          v66._object = 0xE400000000000000;
          String.append(_:)(v66);
          v67 = v55[v56 + 4];
          v68 = v55[v56 + 5];

          v69._countAndFlagsBits = v67;
          v69._object = v68;
          String.append(_:)(v69);

          v70._countAndFlagsBits = 39;
          v70._object = 0xE100000000000000;
          String.append(_:)(v70);
          v71 = v110;
          v72 = v111;
          v110 = v64;
          v111 = v63;

          v73._countAndFlagsBits = v71;
          v73._object = v72;
          String.append(_:)(v73);

          v57 = v110;
          v58 = v111;
          v56 += 2;
        }

        while (v56 != 6);

        v110 = 0x20455441445055;
        v111 = 0xE700000000000000;
        v75 = *(v112 + 16);
        v74 = *(v112 + 24);

        v76._countAndFlagsBits = v75;
        v76._object = v74;
        String.append(_:)(v76);

        v77._countAndFlagsBits = 0x2054455320;
        v77._object = 0xE500000000000000;
        String.append(_:)(v77);

        v78._countAndFlagsBits = v57;
        v78._object = v58;
        String.append(_:)(v78);

        v80 = v110;
        v79 = v111;
        v110 = 0x20455245485720;
        v111 = 0xE700000000000000;
        v81._countAndFlagsBits = 0x696669746E656469;
        v81._object = 0xEA00000000007265;
        String.append(_:)(v81);
        v82._countAndFlagsBits = 2112800;
        v82._object = 0xE300000000000000;
        String.append(_:)(v82);
        v83._countAndFlagsBits = v107;
        v83._object = v109;
        String.append(_:)(v83);
        v84._countAndFlagsBits = 59;
        v84._object = 0xE100000000000000;
        String.append(_:)(v84);
        v85 = v110;
        v86 = v111;
        v110 = v80;
        v111 = v79;

        v87._countAndFlagsBits = v85;
        v87._object = v86;
        String.append(_:)(v87);

        v88 = v108;
        sub_100139D48(v110, v111, 0);
        if (v88)
        {

          if ((v104 & 1) == 0)
          {
LABEL_35:
            sub_1001396D0(v89, v90);

            sub_100095C84(&v112, &qword_1002AA4C8, &unk_10023EDF0);

LABEL_44:
            swift_bridgeObjectRelease_n();
            return sub_100095C84(v114, &qword_1002AA4C8, &unk_10023EDF0);
          }
        }

        else
        {

          if ((v104 & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {

        sub_100139F18();
        swift_allocError();
        *v99 = 2;
        *(v99 + 4) = 2;
        v89 = swift_willThrow();
        if ((v52 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    sub_100095C84(&v112, &qword_1002AA4C8, &unk_10023EDF0);
    goto LABEL_44;
  }

  v91 = v105;
  sub_1000B5150(v109, v105, &qword_1002A7AF0, &qword_10023C9D0);
  v92 = type metadata accessor for UUID();
  v93 = *(v92 - 8);
  isa = 0;
  if ((*(v93 + 48))(v91, 1, v92) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v93 + 8))(v91, v92);
  }

  v95 = String._bridgeToObjectiveC()();
  v114[0] = 0;
  v96 = [v8 savePeripheralIdentifier:isa forAccessoryIdentifier:v95 error:v114];

  if (v96)
  {
    return v114[0];
  }

  v98 = v114[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10017E738(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100173C18(*(v1 + 24), *(v1 + 32));
  *a1 = result & 1;
  return result;
}

unint64_t sub_10017E87C()
{
  result = qword_1002AA4E8;
  if (!qword_1002AA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4E8);
  }

  return result;
}

unint64_t sub_10017E8D0()
{
  result = qword_1002AA4F8;
  if (!qword_1002AA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4F8);
  }

  return result;
}

unint64_t sub_10017E95C(uint64_t a1, uint64_t a2)
{
  result = qword_1002A7AB0;
  if (!qword_1002A7AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7AB0);
  }

  return result;
}

unint64_t sub_10017E9A8()
{
  result = qword_1002AA538;
  if (!qword_1002AA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA538);
  }

  return result;
}

uint64_t sub_10017E9FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10017EA70(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002AA550);
  sub_100093DE8(v2, qword_1002AA550);
  return Logger.init(subsystem:category:)();
}

id sub_10017EAF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  __chkstk_darwin(v3);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v26 = OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger;
  Logger.init(subsystem:category:)();
  v25 = OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue;
  v12 = sub_1000B3420(0, v11);
  v24[1] = "Invalid pairing token";
  v24[2] = v12;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100181814(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v13 = v2;
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v15 = v28;
  v14 = v29;
  v16 = v30;
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v26;
  *&v2[v25] = v17;
  (*(v16 + 16))(v15, &v2[v18], v14);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "pairing interface open", v21, 2u);
  }

  (*(v16 + 8))(v15, v14);
  v22 = type metadata accessor for dockPairing(0);
  v31.receiver = v13;
  v31.super_class = v22;
  return objc_msgSendSuper2(&v31, "init");
}

void sub_10017F04C(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  a2(a1);
}

uint64_t sub_10017F108(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t type metadata accessor for dockPairing(uint64_t a1)
{
  result = qword_1002AA590;
  if (!qword_1002AA590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017F3B8(uint64_t a1, uint64_t a2)
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

void sub_10017F454(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v25 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6778 != -1)
  {
    swift_once();
  }

  v13 = sub_100093DE8(v9, qword_1002AA550);
  (*(v10 + 16))(v12, v13, v9);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = a4;
    v18 = a5;
    v19 = v17;
    v26[0] = v17;
    v26[1] = a2;
    *v16 = 67109378;
    *(v16 + 4) = v25;
    *(v16 + 8) = 2080;
    v26[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000952D4(v20, v21, v26);

    *(v16 + 10) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, v18, v16, 0x12u);
    sub_100095808(v19);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100196ED8(v25, Strong);
}

id sub_10017F7CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10017F828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 processIdentifier];
    (*(v11 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v10);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 67109378;
      *(v22 + 4) = v19;
      *(v22 + 8) = 2080;
      *(v22 + 10) = sub_1000952D4(v32, a2, &v34);
      _os_log_impl(&_mh_execute_header, v20, v21, "Client %d requested pairing for %s", v22, 0x12u);
      sub_100095808(v23);
    }

    (*(v11 + 8))(v16, v10);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v24 = v18;
    sub_1001965B0(v19, v18, v32, a2);

    (*(v33 + 16))(v33, 0);
  }

  else
  {
    v32 = v7;
    (*(v11 + 16))(v14, a3 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v10);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed fetching current NSXPCConnection, cannot construct client", v27, 2u);
    }

    (*(v11 + 8))(v14, v10);
    *v9 = 0xD000000000000029;
    v9[1] = 0x800000010022F170;
    v28 = v32;
    (*(v32 + 104))(v9, enum case for Errors.XPCNil(_:), v6);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v28 + 16))(v29, v9, v6);
    v30 = _convertErrorToNSError(_:)();
    (*(v33 + 16))(v33, v30);

    (*(v28 + 8))(v9, v6);
  }
}

uint64_t sub_10017FCF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a3;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  UUID.init(uuidString:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100095C84(v16, &qword_1002A7AF0, &qword_10023C9D0);
    (*(v11 + 16))(v13, v33 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v10);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000952D4(v32, a2, &v37);
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid pairing token: %s", v23, 0xCu);
      sub_100095808(v24);
    }

    (*(v11 + 8))(v13, v10);
    *v9 = 0xD000000000000015;
    v9[1] = 0x8000000100233F20;
    v25 = v34;
    v26 = v35;
    (*(v35 + 104))(v9, enum case for Errors.PairingError(_:), v34);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v26 + 16))(v27, v9, v25);
    v28 = _convertErrorToNSError(_:)();
    (*(v36 + 16))(v36, v28);

    (*(v26 + 8))(v9, v25);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v30 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    sub_1000DF8C4(v20, v31);

    (*(v36 + 16))(v36, 0);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1001801F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue);
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_10018177C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279828;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100181814(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);

  return (*(v24 + 16))(v24, 0);
}

uint64_t sub_100180594(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v6 = type metadata accessor for Errors();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v48 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for Logger();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v43 - v22;
  v44 = a1;
  UUID.init(uuidString:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100095C84(v16, &qword_1002A7AF0, &qword_10023C9D0);
    v24 = v49;
    v25 = v52;
    (*(v49 + 16))(v9, &v55[OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger], v52);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000952D4(v44, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid pairing token: %s", v28, 0xCu);
      sub_100095808(v29);
    }

    (*(v24 + 8))(v9, v25);
    v30 = v48;
    *v48 = 0xD000000000000015;
    v30[1] = 0x8000000100233F20;
    v32 = v53;
    v31 = v54;
    (*(v53 + 104))(v30, enum case for Errors.PairingError(_:), v54);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v32 + 16))(v33, v30, v31);
    v34 = _convertErrorToNSError(_:)();
    (*(v56 + 16))(v56, v34);

    (*(v32 + 8))(v30, v31);
  }

  else
  {
    v36 = *(v18 + 32);
    v36(v23, v16, v17);
    v55 = *&v55[OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue];
    (*(v18 + 16))(v21, v23, v17);
    v37 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v38 = swift_allocObject();
    v36((v38 + v37), v21, v17);
    aBlock[4] = sub_1001816A8;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_1002797D8;
    v39 = _Block_copy(aBlock);
    v40 = v55;
    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_100181814(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v41 = v46;
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v50 + 8))(v41, v42);
    (*(v45 + 8))(v13, v47);

    (*(v56 + 16))(v56, 0);
    return (*(v18 + 8))(v23, v17);
  }
}

uint64_t sub_100180D4C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  LODWORD(v55) = [a1 processIdentifier];
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v54 = v7;
  aBlock = v62;
  v59 = v63;
  if (*(&v63 + 1))
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v56;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v57;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v13 = 0;
    v14 = 0;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [a1 valueForEntitlement:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v17 = v55;
  aBlock = v62;
  v59 = v63;
  if (*(&v63 + 1))
  {
    if (swift_dynamicCast())
    {
      v19 = v14;
      if (v56)
      {
        v53 = v13;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v52 = sub_10019B91C(a1, v18);
        v21 = v20;
        if (qword_1002A6778 != -1)
        {
          swift_once();
        }

        v22 = sub_100093DE8(v3, qword_1002AA550);
        v23 = v54;
        (*(v4 + 16))(v54, v22, v3);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        v51 = v25;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v49 = v24;
          v27 = v26;
          v50 = swift_slowAlloc();
          *&v62 = v50;
          *v27 = 67109634;
          *(v27 + 4) = v17;
          *(v27 + 8) = 2080;
          *&aBlock = v53;
          *(&aBlock + 1) = v19;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v28 = String.init<A>(describing:)();
          v30 = sub_1000952D4(v28, v29, &v62);

          *(v27 + 10) = v30;
          *(v27 + 18) = 2080;
          *&aBlock = v52;
          *(&aBlock + 1) = v21;
          v31 = String.init<A>(describing:)();
          v33 = sub_1000952D4(v31, v32, &v62);
          v17 = v55;

          *(v27 + 20) = v33;
          v34 = v49;
          _os_log_impl(&_mh_execute_header, v49, v51, "new pairing connection from pid %d, appID entitlement %s, appID %s", v27, 0x1Cu);
          swift_arrayDestroy();

          (*(v4 + 8))(v54, v3);
        }

        else
        {

          (*(v4 + 8))(v23, v3);
          v13 = v53;
        }

        v55 = objc_opt_self();
        v54 = [v55 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore24XPCPairingDaemonProtocol_];
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        *(v41 + 16) = v17;
        *(v41 + 24) = v13;
        *(v41 + 32) = v19;
        *(v41 + 40) = v40;
        v60 = sub_100181620;
        v61 = v41;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v59 = sub_100147FC8;
        *(&v59 + 1) = &unk_100279738;
        v42 = _Block_copy(&aBlock);

        [a1 setInvalidationHandler:v42];
        _Block_release(v42);
        v43 = swift_allocObject();
        *(v43 + 16) = v17;
        *(v43 + 24) = v13;
        *(v43 + 32) = v19;
        *(v43 + 40) = v40;
        v60 = sub_100181664;
        v61 = v43;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v59 = sub_100147FC8;
        *(&v59 + 1) = &unk_100279788;
        v44 = _Block_copy(&aBlock);

        [a1 setInterruptionHandler:v44];
        _Block_release(v44);
        v45 = v54;
        [a1 setExportedInterface:v54];
        v46 = [v55 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore24XPCPairingClientProtocol_];
        [a1 setRemoteObjectInterface:v46];
        v47 = [objc_allocWithZone(type metadata accessor for dockPairing(0)) init];
        [a1 setExportedObject:v47];
        [a1 resume];

        return 1;
      }
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  if (qword_1002A6778 != -1)
  {
    swift_once();
  }

  v35 = sub_100093DE8(v3, qword_1002AA550);
  (*(v4 + 16))(v9, v35, v3);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v36, v37, "process %d is not entitled for this API. Add entitlements and try again", v38, 8u);
  }

  (*(v4 + 8))(v9, v3);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1001815E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018164C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001816EC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100181814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id *sub_100181878(uint64_t (*a1)(id *), id *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_100181A24()
{
  v1 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp;
  swift_beginAccess();
  sub_1001A2CDC(v3, v0 + v6);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = 0;
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  swift_beginAccess();
  sub_1001A2CDC(v3, v0 + v7);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = 0;
  return result;
}

uint64_t sub_100181B7C()
{
  v115 = type metadata accessor for UUID();
  v102 = *(v115 - 8);
  v1 = __chkstk_darwin(v115);
  v105 = v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v113 = v100 - v3;
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = v100 - v5;
  v114 = type metadata accessor for Logger();
  v125 = *(v114 - 8);
  v7 = __chkstk_darwin(v114);
  v8 = __chkstk_darwin(v7);
  v112 = v100 - v9;
  __chkstk_darwin(v8);
  v135 = v100 - v10;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v128 = type metadata accessor for URL.DirectoryHint();
  v12 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v14 - 8);
  v16 = v100 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 1);
  v19 = __chkstk_darwin(v17);
  v130 = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v116 = v100 - v22;
  v23 = __chkstk_darwin(v21);
  v107 = v100 - v24;
  __chkstk_darwin(v23);
  v129 = v100 - v25;
  v108 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v26 = *&v0[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock];

  os_unfair_lock_lock(v26 + 4);

  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v111 = v27;
  v28 = v0;
  *&v0[v27] = _swiftEmptyArrayStorage;

  if (qword_1002A6710 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v29 = qword_1002B1C20;
    sub_100152034(v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100095C84(v16, &qword_1002A6B70, &unk_10023C9C0);
      v30 = v108;
      v16 = v28;
      goto LABEL_39;
    }

    v134 = v29;
    v124 = v6;
    v31 = *(v18 + 32);
    v32 = v129;
    v126 = v17;
    v31(v129, v16, v17);
    v136 = 0x6E6F6973726576;
    v137 = 0xE700000000000000;
    v33 = *(v12 + 104);
    v34 = v127;
    v122 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v35 = v128;
    v121 = v12 + 104;
    v120 = v33;
    v33(v127);
    v119 = sub_1000E3C10();
    URL.appending<A>(path:directoryHint:)();
    v36 = *(v12 + 8);
    v123 = v12 + 8;
    v118 = v36;
    v36(v34, v35);
    static String.Encoding.utf8.getter();
    v37 = String.init(contentsOf:encoding:)();
    v110 = v28;
    v39 = v38;
    v40 = v37;
    v41 = v125;
    v42 = &v28[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger];
    v43 = v135;
    v44 = v114;
    v104 = *(v125 + 16);
    v104(v135, v42, v114);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v106 = 0;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = v43;
      v50 = swift_slowAlloc();
      v136 = v50;
      *v48 = 136315138;
      v51 = sub_1000952D4(v40, v39, &v136);

      *(v48 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Current database version string %s", v48, 0xCu);
      sub_100095808(v50);

      v32 = v129;

      v52 = *(v41 + 8);
      v53 = v49;
    }

    else
    {

      v52 = *(v41 + 8);
      v53 = v43;
    }

    v103 = v52;
    v52(v53, v44);
    v54 = *(v134 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    sub_100095274(&qword_1002AB4B8, &unk_10023F0D8);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10023AAC0;
    v12 = NSURLIsReadableKey;
    *(v58 + 32) = NSURLIsRegularFileKey;
    *(v58 + 40) = NSURLIsReadableKey;
    type metadata accessor for URLResourceKey(0);
    v59 = NSURLIsRegularFileKey;
    v60 = NSURLIsReadableKey;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v136 = 0;
    v62 = [v54 contentsOfDirectoryAtURL:v57 includingPropertiesForKeys:isa options:21 error:&v136];

    v63 = v136;
    if (!v62)
    {
      v95 = v136;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v96 = *(v18 + 8);
      v97 = v126;
      v96(v107, v126);
      v96(v32, v97);
      v16 = v110;
      goto LABEL_38;
    }

    v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v63;

    v16 = v110;
    v134 = *(v64 + 16);
    if (!v134)
    {
      break;
    }

    v28 = 0;
    v109 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
    v101 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v133 = v64 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v132 = v18 + 16;
    v131 = (v102 + 6);
    v135 = (v18 + 8);
    v100[1] = v125 + 16;
    v100[0] = v125 + 8;
    ++v102;
    v66 = v115;
    v17 = v124;
    v67 = v126;
    v6 = v116;
    v117 = v64;
    while (v28 < *(v64 + 16))
    {
      v12 = v18;
      (*(v18 + 16))(v6, v133 + *(v18 + 72) * v28, v67);
      URL.relativePath.getter();
      UUID.init(uuidString:)();

      if ((*v131)(v17, 1, v66) == 1)
      {
        v68 = *v135;
        (*v135)(v6, v67);
        sub_100095C84(v17, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {
        sub_100095C84(v17, &qword_1002A7AF0, &qword_10023C9D0);
        v136 = URL.relativePath.getter();
        v137 = v69;
        v70 = v127;
        v71 = v6;
        v72 = v128;
        v120(v127, v122, v128);
        v73 = v130;
        URL.appending<A>(path:directoryHint:)();
        v118(v70, v72);

        v74 = sub_10019CD88(v73);
        if (v74)
        {
          v17 = v74;
          v75 = dispatch thunk of DockCoreAccessory.info.getter();
          v76 = v113;
          DockCoreInfo.identifier.getter();

          v77 = sub_1001408A0(v76);
          v79 = v78;
          v80 = *&v16[v109];
          v125 = v77;
          v81 = sub_10014025C(v77, v79);
          v83 = sub_1001762B8(v81, v82, 1);
          v84 = v83;
          v18 = v12;
          if (v83 >> 62)
          {
            v85 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v6 = v116;
          if (v85)
          {
            if ((v84 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v12 = *(v84 + 32);
            }

            v16 = v110;
            v86 = v111;
            swift_beginAccess();
            v87 = v17;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v16[v86] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v16[v86] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1000A0D2C(v125, v79);

            v68 = *v135;
            v67 = v126;
            (*v135)(v130, v126);
            v68(v6, v67);
            v66 = v115;
          }

          else
          {
            v12 = v79;

            v104(v112, &v16[v101], v114);
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              *v90 = 0;
              _os_log_impl(&_mh_execute_header, v88, v89, "Skipping existing paired accessory, no matching entry in keystore.", v90, 2u);
            }

            v103(v112, v114);
            v91 = dispatch thunk of DockCoreAccessory.info.getter();
            v92 = v105;
            DockCoreInfo.identifier.getter();

            v93 = v106;
            sub_100188B9C(v92, v94);
            if (v93)
            {

              sub_1000A0D2C(v125, v12);

              v66 = v115;
              (*v102)(v92, v115);
              v68 = *v135;
              v67 = v126;
              (*v135)(v130, v126);
              v68(v6, v67);
              v106 = 0;
            }

            else
            {
              v106 = 0;
              sub_1000A0D2C(v125, v12);

              v66 = v115;
              (*v102)(v92, v115);
              v68 = *v135;
              v67 = v126;
              (*v135)(v130, v126);
              v68(v6, v67);
            }
          }

          v17 = v124;
        }

        else
        {
          v68 = *v135;
          v67 = v126;
          (*v135)(v73, v126);
          v68(v71, v67);
          v17 = v124;
          v18 = v12;
          v6 = v71;
        }

        v64 = v117;
      }

      if (v134 == ++v28)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v68 = *(v18 + 8);
  v67 = v126;
LABEL_37:
  v68(v107, v67);
  v68(v129, v67);
LABEL_38:
  v30 = v108;
LABEL_39:
  v98 = *&v16[v30];

  os_unfair_lock_unlock(v98 + 4);
}

uint64_t sub_100182CCC(char a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18[1] = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v19 = v6;
  v20 = v2;
  v9 = *(v2 + v8);
  v18[2] = v4;
  v18[3] = v3;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      dispatch thunk of DockCoreAccessory.needsMigration.setter();
      sub_10018F7CC(v13, v15);

      ++v11;
      if (v14 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v16 = *(v20 + v19);

  os_unfair_lock_unlock(v16 + 4);

  return 0;
}

uint64_t sub_100183044(uint64_t a1, uint64_t a2)
{
  result = sub_100183064(a1, a2);
  qword_1002B1CF0 = result;
  return result;
}

uint64_t sub_100183064(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DockAccessoryDatabase(0);
  swift_allocObject();
  v6 = sub_1001837FC();
  v7 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification);
  DeviceNotification.state.setter();

  v8 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification);
  DeviceNotification.state.setter();

  v9 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  DeviceNotification.state.setter();

  sub_100181B7C();
  type metadata accessor for DockCoreManager();
  v10 = static DockCoreManager.debugAllowed.getter();
  if (v10)
  {
    sub_100152BF4(v10, v11);
  }

  v12 = type metadata accessor for DockKitFeatures();
  v27 = v12;
  v28 = sub_1001A2FAC(&qword_1002A6808, &type metadata accessor for DockKitFeatures, &protocol conformance descriptor for DockKitFeatures);
  v13 = sub_100093E20(aBlock);
  (*(*(v12 - 8) + 104))(v13, enum case for DockKitFeatures.RemoteControl(_:), v12);
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100095808(aBlock);
  if (v12)
  {
    v14 = objc_allocWithZone(type metadata accessor for DockIDSServer(0));
    v15 = sub_1001B74C8(0xD000000000000025, 0x8000000100234940);
    v16 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
    *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer) = v15;
  }

  else
  {
    (*(v3 + 16))(v5, v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring IDS initialization, feature not enabled.", v19, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v28 = sub_1001A302C;
  v29 = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185984;
  v27 = &unk_100279F40;
  v21 = _Block_copy(aBlock);

  v22 = os_state_add_handler();
  _Block_release(v21);
  v23 = v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle;
  *v23 = v22;
  *(v23 + 8) = 0;

  v24 = static DockCoreManager.secureTrackingAllowed.getter();

  sub_1000EECDC(v24);

  return v6;
}

double sub_1001834F0(uint64_t *a1, void *a2)
{
  v26 = a2;
  v4 = v2;
  v5 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = *a1;
  swift_beginAccess();
  sub_1000B5150(v4 + v18, v10, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100095C84(v10, &qword_1002A7C88, &qword_10023CC10);
    v19 = v26;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 56))(v8, 1, 1, v11);
    swift_beginAccess();
    sub_1001A2CDC(v8, v4 + v18);
    swift_endAccess();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v22 = *(v12 + 8);
    v22(v15, v11);
    v22(v17, v11);
    v23 = v26;
    *(v4 + *v26) = v21 + *(v4 + *v26);
    v19 = v23;
  }

  return *(v4 + *v19);
}

uint64_t sub_1001837FC()
{
  v1 = v0;
  v2 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v86 = *(v2 - 8);
  v87 = v2;
  __chkstk_darwin(v2);
  v85 = &v76 - v3;
  v84 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v90 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v89);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 2;
  v7 = v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap) = &_swiftEmptyDictionarySingleton;
  v8 = (v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = 0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = 0;
  v11(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn) = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v88 = sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  v14 = v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
  *(v1 + v15) = [objc_allocWithZone(type metadata accessor for AccessoryKeystore(0 v16))];
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_queue;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v80 = sub_1001A2FAC(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v79 = sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v81 = sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v78 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v18 = *(v90 + 104);
  v90 += 104;
  v77 = v18;
  v20 = v83;
  v19 = v84;
  v18(v83);
  *(v1 + v17) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for AccessoryManager(0)) init];
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager) = 0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  *(v1 + v22) = sub_1001F18A8(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionQueue;
  *(v1 + v23) = [objc_allocWithZone(NSOperationQueue) init];
  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v77(v20, v78, v19);
  *(v1 + v24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_imuUpdateInterval) = 0x3F91111111111111;
  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_continuityCaptureHeadingMap;
  *(v1 + v25) = sub_1001F19C0(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_batteryPollInterval) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer) = 0;
  v26 = (v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID);
  *v26 = 0xD00000000000003BLL;
  v26[1] = 0x8000000100231690;
  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager;
  type metadata accessor for SecureTrackingSessionManager(0);
  swift_allocObject();
  *(v1 + v27) = sub_1000EC07C();
  v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlEnabledNotification;
  v29 = type metadata accessor for DeviceNotification();
  static DeviceNotification.secureTrackingControlEnabledNotificationName.getter();
  v30 = objc_allocWithZone(v29);
  *(v1 + v28) = DeviceNotification.init(name:)();
  v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification;
  static DeviceNotification.secureTrackingControlOnNotificationName.getter();
  v32 = objc_allocWithZone(v29);
  *(v1 + v31) = DeviceNotification.init(name:)();
  v33 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  LOBYTE(aBlock[0]) = 0;
  v34 = v85;
  DKThreadSafe.init(wrappedValue:)();
  (*(v86 + 32))(v1 + v33, v34, v87);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking) = _swiftEmptyArrayStorage;
  v35 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  *(v1 + v35) = sub_1001F1AB8(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator) = 0;
  v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  *(v1 + v36) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  *(v1 + v37) = sub_1001F1CC0(_swiftEmptyArrayStorage);
  v38 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  *(v1 + v38) = sub_1001F1CD4(_swiftEmptyArrayStorage);
  v39 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
  *(v1 + v39) = sub_1001F1CD4(_swiftEmptyArrayStorage);
  v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
  *(v1 + v40) = sub_1001F1DB4(_swiftEmptyArrayStorage);
  v41 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  *(v1 + v41) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v42 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  *(v1 + v42) = sub_1001F1DC8(_swiftEmptyArrayStorage);
  v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  *(v1 + v43) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v44 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  *(v1 + v44) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  *(v1 + v45) = sub_1001F1DDC(_swiftEmptyArrayStorage);
  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  *(v1 + v46) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  *(v1 + v47) = sub_1001F1BBC(_swiftEmptyArrayStorage);
  v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  *(v1 + v48) = sub_1001F1EF0(_swiftEmptyArrayStorage);
  v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  *(v1 + v49) = sub_1001F1F04(_swiftEmptyArrayStorage);
  v50 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  *(v1 + v50) = sub_1001F202C(_swiftEmptyArrayStorage);
  v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
  *(v1 + v51) = sub_1001F2040(_swiftEmptyArrayStorage);
  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
  *(v1 + v52) = sub_1001F2040(_swiftEmptyArrayStorage);
  v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  *(v1 + v53) = sub_1001F215C(_swiftEmptyArrayStorage);
  v54 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitConfiguration;
  v55 = sub_1001F2278(&off_100274BA8);
  sub_100095274(&qword_1002AB4C0, &qword_10023F0E8);
  swift_arrayDestroy();
  *(v1 + v54) = v55;
  v56 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification;
  static DeviceNotification.connectedNotificationName.getter();
  v57 = objc_allocWithZone(v29);
  *(v1 + v56) = DeviceNotification.init(name:)();
  v58 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification;
  static DeviceNotification.configNotificationName.getter();
  v59 = objc_allocWithZone(v29);
  *(v1 + v58) = DeviceNotification.init(name:)();
  v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification;
  static DeviceNotification.trackingButtonNotificationName.getter();
  v61 = objc_allocWithZone(v29);
  *(v1 + v60) = DeviceNotification.init(name:)();
  v62 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v1 + v62) = v63;
  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__configLock;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v1 + v64) = v65;
  v66 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v1 + v66) = v67;
  v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
  v69 = swift_allocObject();
  *(v1 + v68) = v69;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions) = _swiftEmptyArrayStorage;
  *(v69 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs) = _swiftEmptyArrayStorage;
  if (qword_1002A66C0 != -1)
  {
    v69 = swift_once();
  }

  v70 = static AppLayoutMonitor.shared;
  sub_1000F0574(v69);
  v71 = *(v70 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
  v72 = swift_allocObject();
  v72[2] = v70;
  v72[3] = v1;
  v72[4] = &off_10027A7D0;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1001A3074;
  *(v73 + 24) = v72;
  aBlock[4] = sub_10013A028;
  aBlock[5] = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_100279FB8;
  v74 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v71, v74);
  _Block_release(v74);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if ((v71 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100184424(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle + 8) & 1) == 0)
  {
    os_state_remove_handler();
  }

  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  sub_100095C84(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp, &qword_1002A7C88, &qword_10023CC10);
  sub_100095C84(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp, &qword_1002A7C88, &qword_10023CC10);

  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  v6 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return v2;
}

uint64_t sub_1001848EC(uint64_t a1, uint64_t a2)
{
  sub_100184424(a1, a2);

  return swift_deallocClassInstance();
}

void sub_10018496C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_1001A33E4(319, &qword_1002AA7A8, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      sub_1001A3394(319, &unk_1002AA7B0, &type metadata for Bool, &type metadata accessor for DKThreadSafe);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100184BA8(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for Logger();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v3 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "===== State Dump =====", v6, 2u);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v113 = v3;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v115[0] = v11;
    *v10 = 136315138;
    v12 = qword_1002B1970;
    v13 = *algn_1002B1978;

    v14 = sub_1000952D4(v12, v13, v115);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "dockaccessoryd version: %s", v10, 0xCu);
    sub_100095808(v11);
    v3 = v113;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v115[0] = v18;
    v19 = "teAlertHandle16@NSError24";
    *v17 = 136315138;
    *(v17 + 4) = sub_1000952D4(0x302E303233, 0xE500000000000000, v115);
    _os_log_impl(&_mh_execute_header, v15, v16, "DockKitCore version: %s", v17, 0xCu);
    sub_100095808(v18);
    v3 = v113;
  }

  else
  {

    v19 = "teAlertHandle16@NSError24";
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Paired accessories:", v22, 2u);
  }

  v23 = v109;
  v108 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v24 = *(v109 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v24 + 4);

  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v26 = *(v23 + v25);
  if (v26 >> 62)
  {
    goto LABEL_69;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_22;
  }

  while (v27 >= 1)
  {
    v28 = v26 & 0xC000000000000001;

    v29 = v19;
    v30 = 0;
    *&v31 = *(v29 + 2704);
    v110 = v31;
    v111 = (v26 & 0xC000000000000001);
    *&v112 = v26;
    do
    {
      if (v28)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v26 + 8 * v30 + 32);
      }

      v41 = v40;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v114[0] = v33;
        *v32 = v110;
        v34 = [v41 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v27;
        v38 = v37;

        v39 = sub_1000952D4(v35, v38, v114);
        v27 = v36;

        *(v32 + 4) = v39;
        v3 = v113;
        _os_log_impl(&_mh_execute_header, v42, v43, "- %s", v32, 0xCu);
        sub_100095808(v33);
        v28 = v111;

        v26 = v112;
      }

      else
      {
      }

      ++v30;
    }

    while (v27 != v30);

    v19 = "teAlertHandle16@NSError24";
    do
    {
LABEL_22:
      v44 = *(v109 + v108);

      os_unfair_lock_unlock(v44 + 4);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v114[0] = v48;
        *v47 = *(v19 + 2704);
        sub_1001DF270();
        v51 = sub_1000952D4(v49, v50, v114);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "%s", v47, 0xCu);
        sub_100095808(v48);
        v3 = v113;
      }

      v52 = *(v109 + v108);

      os_unfair_lock_lock(v52 + 4);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "XPC Connections:", v55, 2u);
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Pairing Clients:", v58, 2u);
      }

      v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
      v26 = v109;
      swift_beginAccess();
      v60 = *(v26 + v59);
      v61 = v60 + 64;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v19 = v63 & *(v60 + 64);
      v64 = (v62 + 63) >> 6;

      v65 = 0;
      *&v66 = 138412290;
      v112 = v66;
      while (v19)
      {
LABEL_37:
        v68 = *(*(v60 + 56) + ((v65 << 9) | (8 * __clz(__rbit64(v19)))));
        v69 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v26))
        {
          v70 = v60;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v71 = v112;
          *(v71 + 4) = v68;
          *v72 = v68;
          v111 = v68;
          _os_log_impl(&_mh_execute_header, v69, v26, "- %@", v71, 0xCu);
          sub_100095C84(v72, &unk_1002A6F60, &unk_10023C4E0);
          v3 = v113;

          v60 = v70;

          v68 = v69;
          v69 = v111;
        }

        v19 &= v19 - 1;
      }

      while (1)
      {
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v67 >= v64)
        {
          break;
        }

        v19 = *(v61 + 8 * v67);
        ++v65;
        if (v19)
        {
          v65 = v67;
          goto LABEL_37;
        }
      }

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Actuation Clients:", v75, 2u);
      }

      v76 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
      v26 = v109;
      swift_beginAccess();
      v77 = *(v26 + v76);
      v78 = v77 + 64;
      v79 = 1 << *(v77 + 32);
      v80 = -1;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      v19 = v80 & *(v77 + 64);
      v81 = (v79 + 63) >> 6;

      v82 = 0;
      while (v19)
      {
LABEL_50:
        v84 = *(*(v77 + 56) + ((v82 << 9) | (8 * __clz(__rbit64(v19)))));
        v85 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v26))
        {
          v86 = v77;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v87 = v112;
          *(v87 + 4) = v84;
          *v88 = v84;
          v111 = v84;
          _os_log_impl(&_mh_execute_header, v85, v26, "- %@", v87, 0xCu);
          sub_100095C84(v88, &unk_1002A6F60, &unk_10023C4E0);
          v3 = v113;

          v77 = v86;

          v84 = v85;
          v85 = v111;
        }

        v19 &= v19 - 1;
      }

      while (1)
      {
        v83 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v83 >= v81)
        {

          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Sensor Clients:", v91, 2u);
          }

          v92 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
          v26 = v109;
          swift_beginAccess();
          v93 = *(v26 + v92);
          v94 = v93 + 64;
          v95 = 1 << *(v93 + 32);
          v96 = -1;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          v19 = v96 & *(v93 + 64);
          v97 = (v95 + 63) >> 6;

          v98 = 0;
          while (v19)
          {
LABEL_63:
            v100 = *(*(v93 + 56) + ((v98 << 9) | (8 * __clz(__rbit64(v19)))));
            v101 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v101, v26))
            {
              v102 = v93;
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              *v103 = v112;
              *(v103 + 4) = v100;
              *v104 = v100;
              v111 = v100;
              _os_log_impl(&_mh_execute_header, v101, v26, "- %@", v103, 0xCu);
              sub_100095C84(v104, &unk_1002A6F60, &unk_10023C4E0);
              v3 = v113;

              v93 = v102;

              v100 = v101;
              v101 = v111;
            }

            v19 &= v19 - 1;
          }

          while (1)
          {
            v99 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_68;
            }

            if (v99 >= v97)
            {

              v105 = *(v109 + v108);

              os_unfair_lock_unlock(v105 + 4);
              (*(v106 + 8))(v3, v107);

              return;
            }

            v19 = *(v94 + 8 * v99);
            ++v98;
            if (v19)
            {
              v98 = v99;
              goto LABEL_63;
            }
          }
        }

        v19 = *(v78 + 8 * v83);
        ++v82;
        if (v19)
        {
          v82 = v83;
          goto LABEL_50;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    while (!v27);
  }

  __break(1u);
}

uint64_t sub_100185918(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100184BA8(Strong, v3);
    }
  }

  return 0;
}

uint64_t sub_100185984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_1001859D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000952D4(*(a1 + 64), *(a1 + 72), v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "registering transaction %s", v11, 0xCu);
    sub_100095808(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v16 = *(v3 + v13);

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_100185C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(v3 + v10) = _swiftEmptyArrayStorage;

    v27 = *(v3 + v8);

    os_unfair_lock_unlock(v27 + 4);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v34 = result;
  if (result >= 1)
  {
    v28 = v10;
    v29 = v8;
    v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v36 = (v5 + 16);
    v37 = v11 & 0xC000000000000001;
    v35 = (v5 + 8);

    v14 = 0;
    *&v15 = 136315138;
    v30 = v15;
    v16 = v34;
    v32 = v11;
    v33 = v4;
    v31 = v3;
    do
    {
      if (v37)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      (*v36)(v7, v3 + v13, v4);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = v30;
        v22 = v7;
        v23 = v13;
        v25 = *(v17 + 64);
        v24 = *(v17 + 72);

        v26 = sub_1000952D4(v25, v24, &v38);
        v13 = v23;

        *(v20 + 4) = v26;
        v7 = v22;
        v16 = v34;
        _os_log_impl(&_mh_execute_header, v18, v19, "Stopping txn %s", v20, 0xCu);
        sub_100095808(v21);
        v3 = v31;
        v4 = v33;

        v11 = v32;
      }

      (*v35)(v7, v4);
      ++v14;
      sub_1001059EC();
    }

    while (v16 != v14);

    v10 = v28;
    v8 = v29;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100185F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1001A2F60;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279E50;
  v18 = _Block_copy(aBlock);

  sub_1000C6F30(a3, a4);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

id sub_10018628C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v49 = &v45 - v13;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = *(v9 + 16);
  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v47 = v16;
  v48 = v9 + 16;
  v16(&v45 - v14, a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v52 = a3;
  v53 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000952D4(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "Registering motion for client %s", v20, 0xCu);
    sub_100095808(v21);
  }

  v22 = *(v9 + 8);
  v22(v15, v8);
  v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager;
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager);
  if (!result)
  {
    v47(v49, a1 + v46, v8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Creating motion manager", v27, 2u);
    }

    v22(v49, v8);
    v28 = [objc_allocWithZone(CMMotionManager) init];
    v29 = *(a1 + v23);
    *(a1 + v23) = v28;

    result = *(a1 + v23);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  if ([result isDeviceMotionActive])
  {
    goto LABEL_16;
  }

  result = *(a1 + v23);
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ([result isDeviceMotionAvailable])
  {
    v47(v45, a1 + v46, v8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "starting motion updates", v32, 2u);
    }

    v22(v45, v8);
    result = *(a1 + v23);
    if (result)
    {
      [result setDeviceMotionUpdateInterval:0.0166666667];
      result = *(a1 + v23);
      if (result)
      {
        [result setShowsDeviceMovementDisplay:1];
        v33 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionQueue);
        result = [v33 setMaxConcurrentOperationCount:1];
        v34 = *(a1 + v23);
        if (v34)
        {
          aBlock[4] = sub_1001A2F9C;
          aBlock[5] = a1;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000A5218;
          aBlock[3] = &unk_100279EA0;
          v35 = _Block_copy(aBlock);
          v36 = v34;

          [v36 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v33 withHandler:v35];
          _Block_release(v35);

          goto LABEL_16;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  v37 = v50;
  if (v50)
  {
    v38 = swift_allocObject();
    v39 = v51;
    v40 = v52;
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    v41 = sub_1001A2F70;
    v42 = v53;
  }

  else
  {
    v41 = 0;
    v38 = 0;
    v40 = v52;
    v42 = v53;
    v39 = v51;
  }

  v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();

  sub_1000C6F30(v37, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(a1 + v43);
  *(a1 + v43) = 0x8000000000000000;
  sub_1001ED1A4(v41, v38, v42, v40, isUniquelyReferenced_nonNull_native);

  *(a1 + v43) = v55;
  return swift_endAccess();
}

uint64_t sub_10018684C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v26 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  if (a2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
      swift_errorRetain();

      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "device motion update failed with error %@", v19, 0xCu);
        sub_100095C84(v20, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v7 + 8))(v9, v6);
    }

    return swift_weakDestroy();
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a1;
    aBlock[4] = sub_1001A2FA4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100279EF0;
    v24 = _Block_copy(aBlock);
    v25 = a1;

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v27 + 8))(v12, v10);
    (*(v26 + 8))(v15, v13);
    swift_weakDestroy();
  }
}

void sub_100186CF4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(v5 + 56) + ((v10 << 10) | (16 * v12));
    v14 = *v13;
    if (*v13)
    {
      v15 = a2 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(v13 + 8);
      v18 = a2;
      sub_1000C6F30(v14, v16);
      v17 = a2;
      v14(&v18);

      sub_1000BAA84(v14, v16);
    }
  }

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

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100186E38(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v18[1] = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
    v19 = v13;
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_1001A2EE4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100279E00;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v19);
  }

  else
  {

    sub_100187174(a1, a2);
  }
}

void sub_100187174(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v65 = &v62 - v10;
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v20 = *(v6 + 16);
  v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v69 = v20;
  v70 = v6 + 16;
  v20(v12, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v67 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = v6;
    v26 = swift_slowAlloc();
    v73[0] = v26;
    *v24 = 136315138;
    v27 = v66;
    *(v24 + 4) = sub_1000952D4(v66, a2, v73);
    _os_log_impl(&_mh_execute_header, v21, v22, "Unregistering motion for client %s", v24, 0xCu);
    sub_100095808(v26);

    v28 = v25;
    v71 = *(v25 + 8);
    v71(v12, v5);
  }

  else
  {

    v28 = v6;
    v71 = *(v6 + 8);
    v71(v12, v5);
    v27 = v66;
  }

  v29 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();
  v30 = sub_1001E4DC8(v27, a2);
  v32 = v31;
  swift_endAccess();
  v33 = v32;
  v34 = v67;
  sub_1001A2E40(v30, v33);
  v35 = *(v34 + v29);
  if (*(v35 + 16))
  {
    v36 = v35 + 64;
    v37 = 1 << *(v35 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v35 + 64);
    v40 = (v37 + 63) >> 6;
    v65 = (v28 + 8);

    v42 = 0;
    *&v43 = 136315138;
    v64 = v43;
    v44 = v72;
    v66 = v41;
    v63 = v5;
    while (v39)
    {
      v46 = v42;
LABEL_16:
      v47 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v48 = (*(v41 + 48) + ((v46 << 10) | (16 * v47)));
      v50 = *v48;
      v49 = v48[1];
      v69(v44, v34 + v68, v5);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v73[0] = v54;
        *v53 = v64;
        v55 = sub_1000952D4(v50, v49, v73);

        *(v53 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v51, v52, "Client remaining: %s", v53, 0xCu);
        sub_100095808(v54);
        v34 = v67;

        v44 = v72;
        v45 = v72;
        v5 = v63;
      }

      else
      {

        v44 = v72;
        v45 = v72;
      }

      v71(v45, v5);
      v42 = v46;
      v41 = v66;
    }

    while (1)
    {
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v46 >= v40)
      {

        return;
      }

      v39 = *(v36 + 8 * v46);
      ++v42;
      if (v39)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v56 = v65;
  v69(v65, v34 + v68, v5);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Stopping device motion updates", v59, 2u);
    v34 = v67;
  }

  v71(v56, v5);
  v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager;
  [*(v34 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager) stopDeviceMotionUpdates];
  v61 = *(v34 + v60);
  *(v34 + v60) = 0;
}

id sub_1001877C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager);
  if (result)
  {
    result = [result deviceMotion];
  }

  *a2 = result;
  return result;
}

void sub_100187818()
{
  v1 = v0;
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v8[4] = sub_1001A2E30;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100147FC8;
  v8[3] = &unk_100279D88;
  v4 = _Block_copy(v8);

  v5 = v2;

  AudioServicesPlaySystemSoundWithCompletion(0x424u, v4);
  _Block_release(v4);
  OS_dispatch_semaphore.wait()();
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;

  v7 = v5;
  sub_100187FFC(0xD000000000000010, 0x8000000100234880, sub_1001A2E38, v6);

  OS_dispatch_semaphore.wait()();
}

Swift::Int sub_1001879BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "done playing pong sound", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_100187B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (!a2)
  {
    (*(v8 + 16))(&v32 - v12, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v7);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Launched camera app successfully", v28, 2u);
    }

    v29 = *(v8 + 8);
    v30 = v13;
    goto LABEL_8;
  }

  (*(v8 + 16))(v11, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v7);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    v29 = *(v8 + 8);
    v30 = v11;
LABEL_8:
    v29(v30, v7);
    return OS_dispatch_semaphore.signal()();
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v34 = a4;
  v35 = v18;
  v19 = v18;
  *v17 = 136315138;
  v20 = [v14 localizedDescription];
  v33 = v7;
  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_1000952D4(v22, v24, &v35);

  *(v17 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v15, v16, "Failed to launch Camera app with error: %s", v17, 0xCu);
  sub_100095808(v19);

  (*(v8 + 8))(v11, v33);
  return OS_dispatch_semaphore.signal()();
}

void sub_100187E14()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = qword_1002A66C0;

      if (v9 != -1)
      {
        v10 = swift_once();
      }

      __chkstk_darwin(v10);
      OS_dispatch_queue.sync<A>(execute:)();
      if (v11 == 1)
      {
        break;
      }

      v5 &= v5 - 1;

      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_100187FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = SBSCreateOpenApplicationService();
  sub_100095274(&qword_1002A81A0, &qword_10023D038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v11;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_1001F2ABC(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002ACA30, qword_10023D040);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() optionsWithDictionary:{isa, v18, v19}];

  if (v9)
  {
    v14 = v9;
    v15 = String._bridgeToObjectiveC()();
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v22 = sub_1001A2E20;
    v23 = v16;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000A5218;
    v21 = &unk_100279D38;
    v17 = _Block_copy(&v18);

    [v14 openApplication:v15 withOptions:v13 completion:v17];

    _Block_release(v17);
    v13 = v15;
  }
}

void sub_100188254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = a4;
    v29 = a1;
    v30 = a7;
    (*(v15 + 16))(v17, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v14);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = a6;
      v31 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1000952D4(v28, a5, &v31);
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_1000952D4(v22, v23, &v31);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to launch %s: %s", v20, 0x16u);
      swift_arrayDestroy();
      a6 = v27;
    }

    else
    {
    }

    (*(v15 + 8))(v17, v14);
    v25 = _convertErrorToNSError(_:)();
    a1 = v29;
  }

  else
  {
    v25 = 0;
  }

  a6(a1, v25);
}

id sub_1001884E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v18 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v16 = v2;
    v17 = v1;
    v2 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v5 + 8 * v2 + 32);
      }

      v8 = v7;
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v10 = dispatch thunk of DockCoreAccessory.info.getter();
      v1 = static NSObject.== infix(_:_:)();

      if (v1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v18;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v2;
      if (v9 == i)
      {
        v11 = v18;
        v2 = v16;
        v1 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_16:

  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    if (v11[2])
    {
      goto LABEL_19;
    }

LABEL_28:

    v14 = 0;
    goto LABEL_29;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_28;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (v11[2])
  {
    v13 = v11[4];
LABEL_22:
    v14 = v13;

LABEL_29:
    v15 = *(v1 + v2);

    os_unfair_lock_unlock(v15 + 4);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100188738(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v21[1] = *(v5 - 8);
  v21[2] = v5;
  __chkstk_darwin(v5);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v10 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v12 = a1;
  v13 = sub_1001A12F4((v3 + v11), v12);

  v14 = *(v3 + v11);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v13)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (v15 < v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_1001A167C(v13, v15, &type metadata accessor for DockCoreAccessory);
  swift_endAccess();
  DockCoreInfo.identifier.getter();
  sub_100188B9C(v9, v16);
  (*(v7 + 8))(v9, v6);
  v17 = *(v3 + v11);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_13:
  v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v19 = *(v3 + v22);

  os_unfair_lock_unlock(v19 + 4);

  if (!v18)
  {
    if (qword_1002A67A0 != -1)
    {
      result = swift_once();
    }

    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {

      sub_1000F2E4C(1);
    }
  }

  return result;
}

uint64_t sub_100188B9C(uint64_t a1, uint64_t a2)
{
  v32[1] = a1;
  v2 = type metadata accessor for Logger();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  v15 = qword_1002B1C20;
  sub_100152034(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100095C84(v10, &qword_1002A6B70, &unk_10023C9C0);
    v16 = v35;
    v17 = v36;
    (*(v35 + 16))(v4, v34 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v36);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to remove paired accessory: Unable to get library path", v20, 2u);
    }

    return (*(v16 + 8))(v4, v17);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v37[0] = UUID.uuidString.getter();
    v37[1] = v22;
    v23 = v33;
    (*(v5 + 104))(v7, enum case for URL.DirectoryHint.notDirectory(_:), v33);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v5 + 8))(v7, v23);

    v24 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v37[0] = 0;
    v28 = [v24 removeItemAtURL:v26 error:v37];

    if (v28)
    {
      v29 = *(v12 + 8);
      v30 = v37[0];
      return v29(v14, v11);
    }

    else
    {
      v31 = v37[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v12 + 8))(v14, v11);
    }
  }
}

uint64_t sub_100189054(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  if (a1)
  {
    v17 = a1;
    v18 = sub_1001884E4(v17);
    if (v18)
    {
      v19 = v18;
      v49 = v4;
      v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v21 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v21 + 4);

      v22 = v5;
      v23 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = v19;
      v50 = v19;

      v24 = 1;
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 1;
      v25 = *(v2 + v20);

      os_unfair_lock_unlock(v25 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v26 = static OS_dispatch_queue.main.getter();
      v58 = sub_1001A2DB4;
      v59 = v2;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_100147FC8;
      v57 = &unk_100279CE8;
      v27 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v28 = v51;
      v29 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      v22[1](v28, v29);
      (*(v52 + 8))(v9, v53);
    }

    else
    {
      (*(v11 + 16))(v16, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
      v41 = v17;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = a1;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Can't select %@, it's unknown", v44, 0xCu);
        sub_100095C84(v45, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {
        v46 = v42;
        v42 = v41;
      }

      (*(v11 + 8))(v16, v10);
      return 0;
    }
  }

  else
  {
    v50 = v5;
    v30 = v4;
    (*(v11 + 16))(v14, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Set connected to nil", v33, 2u);
    }

    (*(v11 + 8))(v14, v10);
    v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v35 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v35 + 4);

    v36 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = 0;

    *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 2;
    v37 = *(v2 + v34);

    os_unfair_lock_unlock(v37 + 4);

    sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
    v38 = static OS_dispatch_queue.main.getter();
    v58 = sub_1001A2D90;
    v59 = v2;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_100147FC8;
    v57 = &unk_100279CC0;
    v39 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v40 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v50 + 1))(v40, v30);
    (*(v52 + 8))(v9, v53);
    sub_1000EC468(7);
    return 1;
  }

  return v24;
}

void sub_100189850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  if (TrackingButtonState.rawValue.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    DeviceNotification.state.setter();

    v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification);
    DeviceNotification.state.setter();
  }
}

void sub_1001898EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v43[-v10];
  if (a1)
  {
    v12 = a1;
    v13 = sub_1001884E4(v12);
    if (v13)
    {
      v14 = v13;
      v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v16 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v16 + 4);

      v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked;
      v18 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
      *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked) = v14;
      v19 = v14;

      v20 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
      if (!v20)
      {
LABEL_6:
        v24 = *(v3 + v15);

        os_unfair_lock_unlock(v24 + 4);

        return;
      }

      v21 = *(v3 + v17);
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        sub_1001B8BE4(v23, 0);

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      (*(v6 + 16))(v11, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);
      v36 = v12;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = a1;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "Can't select %@, it's unknown", v39, 0xCu);
        sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {
        v41 = v37;
        v37 = v36;
      }

      (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Set docked to nil", v27, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v29 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v29 + 4);

    v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked;
    v31 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
    if (v31)
    {
      v32 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
      if (v32)
      {
        v33 = v32;
        v34 = v31;
        sub_1001B8BE4(v34, 1);
      }

      v43[31] = 0;
      swift_beginAccess();
      sub_100095274(&qword_1002A9318, &qword_10023F0C0);
      DKThreadSafe.wrappedValue.setter();
      swift_endAccess();
      v35 = *(v3 + v30);
    }

    else
    {
      v35 = 0;
    }

    *(v3 + v30) = 0;

    v42 = *(v3 + v28);

    os_unfair_lock_unlock(v42 + 4);
  }
}

void sub_100189D44()
{
  v1 = v0;
  swift_beginAccess();
  sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  DKThreadSafe.wrappedValue.setter();
  swift_endAccess();
  if (sub_10018B060())
  {
    v2 = 2;
  }

  else
  {
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v6 = *(v1 + v3);
    v7 = v5;

    os_unfair_lock_unlock(v6 + 4);

    if (v5)
    {

      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  sub_10018A5D0(v2);
}

void sub_100189E44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v9 = __chkstk_darwin(v8 - 8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v52 = a1;
  v20 = TrackingButtonState.init(rawValue:)();
  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = v20;
  }

  v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  swift_beginAccess();
  sub_1000B5150(v2 + v24, v12, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100095C84(v12, &qword_1002A7C88, &qword_10023CC10);
    v25 = TrackingButtonState.rawValue.getter();
    v26 = v22;
    if (v25 != TrackingButtonState.rawValue.getter())
    {
      goto LABEL_13;
    }

    v27 = TrackingButtonState.rawValue.getter();
    if (v27 != TrackingButtonState.rawValue.getter())
    {
      goto LABEL_13;
    }

    v28 = v51;
    static Date.now.getter();
    (*(v14 + 56))(v28, 0, 1, v13);
    goto LABEL_11;
  }

  (*(v14 + 32))(v19, v12, v13);
  v29 = TrackingButtonState.rawValue.getter();
  v26 = v22;
  if (v29 == TrackingButtonState.rawValue.getter())
  {
    v30 = TrackingButtonState.rawValue.getter();
    if (v30 == TrackingButtonState.rawValue.getter())
    {
      Date.init()();
      Date.timeIntervalSince(_:)();
      v32 = v31;
      v33 = *(v14 + 8);
      v33(v17, v13);
      v33(v19, v13);
      v26 = v22;
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = v32 + *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration);
      v28 = v51;
      (*(v14 + 56))(v51, 1, 1, v13);
LABEL_11:
      swift_beginAccess();
      sub_1001A2CDC(v28, v2 + v24);
      swift_endAccess();
      goto LABEL_13;
    }
  }

  (*(v14 + 8))(v19, v13);
LABEL_13:
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = v26;
  v34 = v53;
  v35 = *(v2 + v53);

  os_unfair_lock_unlock(v35 + 4);

  v51 = v26;
  v36 = TrackingButtonState.rawValue.getter();
  if (v36 == TrackingButtonState.rawValue.getter())
  {
    v37 = 2;
  }

  else
  {
    v37 = 8;
  }

  sub_1000EC468(v37);
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v52;
  aBlock[4] = sub_1001A2D84;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279C98;
  v40 = _Block_copy(aBlock);

  v41 = v54;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v42 = v57;
  v43 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v58 + 8))(v42, v43);
  (*(v55 + 8))(v41, v56);
  v44 = *(v2 + v34);

  os_unfair_lock_lock(v44 + 4);

  v45 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v46 = *(v2 + v34);
  v47 = v45;

  os_unfair_lock_unlock(v46 + 4);

  if (v45)
  {
    v48 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
    if (v48)
    {
      v49 = v48;
      sub_1001B8C0C(v47, v51);
    }
  }
}

void sub_10018A570(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  DeviceNotification.state.setter();
}

void sub_10018A5D0(uint64_t a1)
{
  v3 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v4 = __chkstk_darwin(v3 - 8);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v32 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp;
  swift_beginAccess();
  sub_1000B5150(v1 + v16, v7, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100095C84(v7, &qword_1002A7C88, &qword_10023CC10);
    v17 = TrackerStateEvent.rawValue.getter();
    if (v17 != TrackerStateEvent.rawValue.getter())
    {
      goto LABEL_12;
    }

    if ((*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState + 8) & 1) == 0)
    {
      v18 = TrackerStateEvent.rawValue.getter();
      if (v18 == TrackerStateEvent.rawValue.getter())
      {
        goto LABEL_12;
      }
    }

    v19 = v31;
    static Date.now.getter();
    (*(v9 + 56))(v19, 0, 1, v8);
    goto LABEL_10;
  }

  (*(v9 + 32))(v14, v7, v8);
  v20 = TrackerStateEvent.rawValue.getter();
  if (v20 != TrackerStateEvent.rawValue.getter() && (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState + 8) & 1) == 0)
  {
    v21 = TrackerStateEvent.rawValue.getter();
    if (v21 == TrackerStateEvent.rawValue.getter())
    {
      Date.init()();
      Date.timeIntervalSince(_:)();
      v23 = v22;
      v24 = a1;
      v25 = *(v9 + 8);
      v25(v12, v8);
      v25(v14, v8);
      a1 = v24;
      *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = v23 + *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration);
      v19 = v31;
      (*(v9 + 56))(v31, 1, 1, v8);
LABEL_10:
      swift_beginAccess();
      sub_1001A2CDC(v19, v1 + v16);
      swift_endAccess();
      goto LABEL_12;
    }
  }

  (*(v9 + 8))(v14, v8);
LABEL_12:
  v26 = v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState;
  *v26 = a1;
  *(v26 + 8) = 0;
  v27 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v28 = *(v1 + v32);
  v29 = v27;

  os_unfair_lock_unlock(v28 + 4);

  if (v27)
  {
    v30 = v29;
    sub_10018A9DC(a1, v27);
  }
}

void sub_10018A9DC(uint64_t a1, void *a2)
{
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v46 - v17;
  if (a2)
  {
    v51 = v16;
    v52 = v11;
    v48 = v9;
    v53 = v8;
    v49 = v7;
    v50 = a1;
    v47 = v2;
    v19 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v20 = a2;
    v21 = v19;
    v54 = v20;
    v57 = dispatch thunk of DockCoreAccessory.info.getter();
    v55 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v22 = *&v21[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v23 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v56 = v21;
    v24 = *&v21[v23];
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = 0;
      v27 = v24 + 32;
      v28 = (v51 + 8);
      while (v26 < *(v24 + 16))
      {
        sub_1000A097C(v27, v58);
        v29 = *(*sub_1000A09E0(v58, v58[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v29) = static UUID.== infix(_:_:)();
        v30 = *v28;
        (*v28)(v15, v12);
        v30(v18, v12);
        if (v29)
        {

          v31 = v56;
          v33 = *&v56[v55];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v58, &v59);
          sub_100095808(v58);
          goto LABEL_9;
        }

        ++v26;
        sub_100095808(v58);
        v27 += 40;
        if (v25 == v26)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v31 = v56;
      v32 = *&v56[v55];
      OS_dispatch_semaphore.signal()();

      v61 = 0;
      v59 = 0u;
      v60 = 0u;
LABEL_9:

      v35 = v52;
      v34 = v53;
      if (*(&v60 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v36 = v58[0];
          v37 = v48;
          (*(v48 + 16))(v35, v47 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v34);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v59 = v41;
            *v40 = 136315394;
            *(v40 + 4) = sub_1000952D4(0xD00000000000002FLL, 0x8000000100234820, &v59);
            *(v40 + 12) = 2048;
            v42 = v50;
            *(v40 + 14) = TrackerStateEvent.rawValue.getter();
            _os_log_impl(&_mh_execute_header, v38, v39, "%s Updated tracking sensor state=%ld", v40, 0x16u);
            sub_100095808(v41);

            (*(v37 + 8))(v35, v34);
          }

          else
          {

            (*(v37 + 8))(v35, v34);
            v42 = v50;
          }

          v43 = type metadata accessor for TaskPriority();
          v44 = v49;
          (*(*(v43 - 8) + 56))(v49, 1, 1, v43);
          v45 = swift_allocObject();
          v45[2] = 0;
          v45[3] = 0;
          v45[4] = v36;
          v45[5] = v42;
          sub_1001B6710(0, 0, v44, &unk_10023F0B8, v45);
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v59, &unk_1002A6F40, &unk_10023BE90);
      }
    }
  }
}

uint64_t sub_10018AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_100112B7C;

  return sub_1001A5658(a5, v8);
}

uint64_t sub_10018B060()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v2 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);
  v5 = *(v0 + v1);

  v6 = v3;

  os_unfair_lock_unlock(v5 + 4);

  if (v3)
  {

    if (v4)
    {
      v7 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 > 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_10018B174(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v68 = v11;
  v12 = *(v11 + 16);
  v71 = v11 + 16;
  v72 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v70 = v12;
  v12(&v60 - v9, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v65 = v2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_1000952D4(0xD00000000000001DLL, 0x8000000100234800, v75);
    *(v17 + 12) = 2080;
    v18 = CameraSessionInformation.appId.getter();
    v20 = sub_1000952D4(v18, v19, v75);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2048;
    CameraSessionInformation.cameraType.getter();
    v21 = TrackerCamera.rawValue.getter();

    *(v17 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s session=%s cam=%ld", v17, 0x20u);
    swift_arrayDestroy();

    v3 = v65;
  }

  else
  {
  }

  v22 = v68;
  v69 = *(v68 + 8);
  v69(v10, v5);
  v66 = v5;
  v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = CameraSessionInformation.appId.getter();
  v26 = v25;
  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
  swift_beginAccess();
  v28 = *(v3 + v27);
  if (*(v28 + 16))
  {

    v29 = sub_10016D4D0(v24, v26);
    v31 = v30;

    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v29);

      goto LABEL_9;
    }
  }

  else
  {
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_9:

  v33 = CameraSessionInformation.appId.getter();
  v35 = v34;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10023BDA0;
  *(v36 + 32) = v13;
  swift_beginAccess();
  v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v3 + v27);
  *(v3 + v27) = 0x8000000000000000;
  sub_1001EB988(v36, v33, v35, isUniquelyReferenced_nonNull_native);

  *(v3 + v27) = v73;
  swift_endAccess();
  v38 = CameraSessionInformation.appId.getter();
  v39 = (v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
  *v39 = v38;
  v39[1] = v40;

  v43 = v32;
  if (v32 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v44 = result;
  }

  else
  {
    v44 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v66;
  if (!v44)
  {
LABEL_21:
    v57 = *(v3 + v61);

    os_unfair_lock_unlock(v57 + 4);

    sub_100198B58(v58, v59);
    return v43;
  }

  if (v44 >= 1)
  {
    v46 = 0;
    v67 = v22 + 8;
    v68 = v43 & 0xC000000000000001;
    v63 = "com.apple.cameracaptured";
    *&v42 = 136315650;
    v62 = v42;
    v64 = v8;
    do
    {
      if (v68)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v43 + 8 * v46 + 32);
      }

      v48 = v47;
      v70(v8, v3 + v72, v45);
      v49 = v48;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v74[0] = swift_slowAlloc();
        *v52 = v62;
        *(v52 + 4) = sub_1000952D4(0xD00000000000001DLL, v63 | 0x8000000000000000, v74);
        *(v52 + 12) = 2080;
        v53 = CameraSessionInformation.appId.getter();
        v55 = sub_1000952D4(v53, v54, v74);

        *(v52 + 14) = v55;
        *(v52 + 22) = 2048;
        CameraSessionInformation.cameraType.getter();
        v56 = TrackerCamera.rawValue.getter();

        *(v52 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s previous session=%s cam=%ld", v52, 0x20u);
        swift_arrayDestroy();
        v8 = v64;
        v45 = v66;

        v3 = v65;
      }

      else
      {
      }

      v69(v8, v45);
      ++v46;
    }

    while (v44 != v46);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_10018B7F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return;
  }

  v4 = v3;
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v11 = a3;
  sub_1001DAC34(a3, a1, a2);
  swift_endAccess();
  v12 = *(v4 + v7);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(v4 + v7);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_10:
    v21 = *(v4 + v10);

    v22 = cameracaptureIdentifier.getter();
    if (*(v21 + 16))
    {
      sub_10016D4D0(v22, v23);
      v25 = v24;

      if (v25)
      {
LABEL_12:
        v26 = 9;
LABEL_15:
        v27 = *(v4 + v7);

        os_unfair_lock_unlock(v27 + 4);

        sub_1000EC468(v26);
        return;
      }
    }

    else
    {
    }

    v26 = 3;
    goto LABEL_15;
  }

  v16 = 0;
  v17 = (v14 + 40);
  while (v16 < *(v14 + 16))
  {
    if (*(*(v4 + v10) + 16))
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      sub_10016D4D0(v19, v18);
      LOBYTE(v19) = v20;

      if (v19)
      {

        goto LABEL_12;
      }
    }

    ++v16;
    v17 += 2;
    if (v15 == v16)
    {

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_10018BA14(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return;
  }

  v4 = v3;
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_10016D4D0(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      if (a3 && (sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr), v14 = v14, v15 = a3, v16 = static NSObject.== infix(_:_:)(), v15, v14, (v16 & 1) != 0))
      {
        swift_beginAccess();
        v17 = sub_1001E53DC(a1, a2);
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v18 = *(v4 + v8);

  os_unfair_lock_unlock(v18 + 4);

  v19 = *(v4 + v8);

  os_unfair_lock_lock(v19 + 4);

  v20 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_17:
    v27 = *(v4 + v10);

    v28 = cameracaptureIdentifier.getter();
    if (*(v27 + 16))
    {
      sub_10016D4D0(v28, v29);
      v31 = v30;

      if (v31)
      {
LABEL_19:
        v32 = 9;
LABEL_22:
        v33 = *(v4 + v8);

        os_unfair_lock_unlock(v33 + 4);

        sub_1000EC468(v32);
        return;
      }
    }

    else
    {
    }

    v32 = 3;
    goto LABEL_22;
  }

  v22 = 0;
  v23 = (v20 + 40);
  while (v22 < *(v20 + 16))
  {
    if (*(*(v4 + v10) + 16))
    {
      v25 = *(v23 - 1);
      v24 = *v23;

      sub_10016D4D0(v25, v24);
      LOBYTE(v25) = v26;

      if (v25)
      {

        goto LABEL_19;
      }
    }

    ++v22;
    v23 += 2;
    if (v21 == v22)
    {

      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10018BCE0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 != 0xD000000000000018 || 0x80000001002347E0 != a2))
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v10 = v2;
      (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1000952D4(a1, a2, v23);
        _os_log_impl(&_mh_execute_header, v11, v12, "start API usage metric report for app: %s", v13, 0xCu);
        sub_100095808(v14);
      }

      (*(v6 + 8))(v9, v5);
      v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
      v16 = v10;
      swift_beginAccess();
      if (*(*(v10 + v15) + 16) && (, sub_10016D4D0(a1, a2), v16 = v10, v18 = v17, , (v18 & 1) != 0))
      {
      }

      else
      {
        v19 = sub_1001F3774(_swiftEmptyArrayStorage);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v16 + v15);
        *(v16 + v15) = 0x8000000000000000;
        sub_1001ED190(v19, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v16 + v15) = v22;
        return swift_endAccess();
      }
    }
  }

  return result;
}

void sub_10018BFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DKAPIUsageMetric();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002AB4A0, &qword_10023F098);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v54 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 != 0xD000000000000018 || 0x80000001002347E0 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
    swift_beginAccess();
    v18 = *(v2 + v17);
    if (*(v18 + 16))
    {

      v19 = sub_10016D4D0(a1, a2);
      if ((v20 & 1) == 0)
      {
LABEL_27:

        return;
      }

      v54 = v17;
      v62 = *(*(v18 + 56) + 8 * v19);

      (*(v14 + 16))(v16, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v13);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = os_log_type_enabled(v21, v22);
      v56 = v3;
      v57 = a2;
      v55 = a1;
      if (v23)
      {
        v24 = swift_slowAlloc();
        LODWORD(v63) = v22;
        v25 = v24;
        v26 = swift_slowAlloc();
        v67[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1000952D4(a1, a2, v67);
        _os_log_impl(&_mh_execute_header, v21, v63, "stop API usage metric report for app: %s", v25, 0xCu);
        sub_100095808(v26);
      }

      (*(v14 + 8))(v16, v13);
      v27 = 0;
      v29 = v62 + 64;
      v28 = *(v62 + 64);
      v30 = 1 << *(v62 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v28;
      v33 = (v30 + 63) >> 6;
      v59 = v64 + 16;
      v60 = v11;
      v34 = (v64 + 32);
      v63 = (v64 + 8);
      v61 = v6;
      v58 = (v64 + 32);
      if ((v31 & v28) != 0)
      {
        while (1)
        {
          v35 = v27;
LABEL_20:
          v38 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v39 = v38 | (v35 << 6);
          v40 = v61;
          v41 = *(*(v62 + 48) + v39);
          v42 = v64;
          v43 = v66;
          (*(v64 + 16))(v66, *(v62 + 56) + *(v64 + 72) * v39, v61);
          v44 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
          v45 = *(v44 + 48);
          v46 = v60;
          *v60 = v41;
          v47 = *(v42 + 32);
          v6 = v40;
          v11 = v46;
          v48 = v43;
          v34 = v58;
          v47(&v46[v45], v48, v6);
          (*(*(v44 - 8) + 56))(v11, 0, 1, v44);
          v37 = v35;
LABEL_21:
          v49 = v65;
          sub_1001A2B7C(v11, v65);
          v50 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
          if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
          {
            break;
          }

          v51 = v49 + *(v50 + 48);
          v52 = v66;
          (*v34)(v66, v51, v6);
          DKAPIUsageMetric.send()();
          (*v63)(v52, v6);
          v27 = v37;
          if (!v32)
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        sub_1001E5484(v55, v57);
        swift_endAccess();
        goto LABEL_27;
      }

LABEL_13:
      if (v33 <= v27 + 1)
      {
        v36 = v27 + 1;
      }

      else
      {
        v36 = v33;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v35 >= v33)
        {
          v53 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
          (*(*(v53 - 8) + 56))(v11, 1, 1, v53);
          v32 = 0;
          goto LABEL_21;
        }

        v32 = *(v29 + 8 * v35);
        ++v27;
        if (v32)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }
  }
}

void sub_10018C604(uint64_t a1, unint64_t a2, unsigned int a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v90 = a4;
  v98 = a3;
  v6 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v6 - 8);
  v95 = &v85 - v7;
  v8 = type metadata accessor for DKAPIUsageMetric();
  v97 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&unk_1002AC8D0, &qword_10023F088);
  v11 = __chkstk_darwin(v10 - 8);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v85 - v13;
  v14 = sub_100095274(&qword_1002AB498, &qword_10023F090);
  __chkstk_darwin(v14 - 8);
  v16 = &v85 - v15;
  v17 = type metadata accessor for DKAPIUsageType();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v94 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = &v85 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  if ((a1 != 0xD000000000000018 || 0x80000001002347E0 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v88 = v8;
    (*(v23 + 16))(v25, v99 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v22);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v89 = a2;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v86 = v18;
      v30 = v29;
      v31 = swift_slowAlloc();
      v87 = v17;
      v32 = v31;
      v103[0] = v31;
      *v30 = 16777730;
      *(v30 + 4) = v98;
      *(v30 + 5) = 2080;
      *(v30 + 7) = sub_1000952D4(v100, a2, v103);
      _os_log_impl(&_mh_execute_header, v26, v27, "new API usage of type: %hhu by app: %s", v30, 0xFu);
      sub_100095808(v32);
      v17 = v87;

      v18 = v86;
    }

    (*(v23 + 8))(v25, v22);
    v33 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
    v34 = v99;
    swift_beginAccess();
    v35 = *(v34 + v33);
    v36 = v88;
    v37 = v89;
    if (*(v35 + 16))
    {

      v38 = sub_10016D4D0(v100, v37);
      if (v39)
      {
        v40 = *(*(v35 + 56) + 8 * v38);

        DKAPIUsageType.init(rawValue:)();
        v41 = v18;
        v42 = *(v18 + 48);
        v43 = v17;
        if (v42(v16, 1, v17) == 1)
        {

          sub_100095C84(v16, &qword_1002AB498, &qword_10023F090);
        }

        else
        {
          v44 = v96;
          (*(v41 + 32))(v96, v16, v17);
          if (*(v40 + 16) && (v45 = sub_10016D898(v98), (v46 & 1) != 0))
          {
            v47 = v97;
            v48 = v93;
            (*(v97 + 16))(v93, *(v40 + 56) + *(v97 + 72) * v45, v36);

            (*(v47 + 56))(v48, 0, 1, v36);
            sub_100095C84(v48, &unk_1002AC8D0, &qword_10023F088);
            v49 = sub_100183468(v103);
            v50 = sub_10018D1F4(v102, v100, v89);
            if (*v51)
            {
              v52 = sub_10018D280(v101, v98);
              if (!(*(v47 + 48))(v53, 1, v36))
              {
                DKAPIUsageMetric.increment()();
              }

              (v52)(v101, 0);
              (v50)(v102, 0);
              (v49)(v103, 0);
            }

            else
            {
              (v50)(v102, 0);
              (v49)(v103, 0);
            }

            v80 = sub_100183468(v103);
            v81 = sub_10018D1F4(v102, v100, v89);
            if (*v82)
            {
              v83 = sub_10018D280(v101, v98);
              if (!(*(v47 + 48))(v84, 1, v36))
              {
                DKAPIUsageMetric.set(error:)();
              }

              (v83)(v101, 0);
              (v81)(v102, 0);
              (v80)(v103, 0);
            }

            else
            {
              (v81)(v102, 0);
              (v80)(v103, 0);
            }

            (*(v41 + 8))(v44, v43);
          }

          else
          {

            v54 = v17;
            v55 = v93;
            v90 = *(v97 + 56);
            v90(v93, 1, 1, v36);
            sub_100095C84(v55, &unk_1002AC8D0, &qword_10023F088);
            v86 = v41;
            v56 = *(v41 + 16);
            v87 = v54;
            v56(v94, v44, v54);
            v57 = type metadata accessor for Errors();
            (*(*(v57 - 8) + 56))(v95, 1, 1, v57);
            v58 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
            v59 = *(v99 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
            if (v59 && (v60 = v59, v61 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter(), v63 = v62, v60, v63))
            {
              v93 = v61;
            }

            else
            {

              v93 = 0x6E776F6E6B6E55;
            }

            v64 = v92;
            v65 = *(v99 + v58);
            if (!v65 || (v66 = v65, dispatch thunk of DockCoreAccessory.model.getter(), v68 = v67, v66, !v68))
            {
            }

            v69 = *(v99 + v58);
            if (v69)
            {
              v70 = v69;
              v71 = dispatch thunk of DockCoreAccessory.info.getter();

              DockCoreInfo.name.getter();
            }

            v72 = v89;

            v73 = v100;
            DKAPIUsageMetric.init(appID:type:callCount:error:firmwareVersion:hardwareModel:hardwareMake:)();
            v74 = sub_100183468(v103);
            v75 = sub_10018D1F4(v102, v73, v72);
            if (*v76)
            {
              v77 = v97;
              v78 = v91;
              v79 = v88;
              (*(v97 + 16))(v91, v64, v88);
              v90(v78, 0, 1, v79);
              sub_1001DA66C(v78, v98);
              (v75)(v102, 0);
              (v74)(v103, 0);
            }

            else
            {
              (v75)(v102, 0);
              (v74)(v103, 0);
              v79 = v88;
              v77 = v97;
            }

            (*(v77 + 8))(v64, v79);
            (*(v86 + 8))(v96, v87);
          }
        }
      }

      else
      {
      }
    }
  }
}

uint64_t (*sub_10018D16C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10019FB84(v6, a2, a3);
  return sub_1001A34C0;
}

uint64_t (*sub_10018D1F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10019FCD4(v6, a2, a3);
  return sub_10018D27C;
}

uint64_t (*sub_10018D280(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10019FC30(v4, a2);
  return sub_1001A34C0;
}

void sub_10018D2F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10018D344(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_10016D548(a1);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v12 = *v10;
      v11 = v10[1];

      sub_10018DAC4(v12, v11);
      swift_beginAccess();
      sub_1001E4C84(a1);
      swift_endAccess();

      v13 = (v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
      v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8);
      if (v14)
      {
        if (v12 == *v13 && v14 == v11)
        {
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        *v13 = 0;
        v13[1] = 0;
      }
    }
  }

LABEL_13:
  v17 = *(v2 + v4);

  os_unfair_lock_unlock(v17 + 4);
}

void sub_10018D4B4(uint64_t a1)
{
  v3 = type metadata accessor for CameraOrientationInternal();
  v52 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for UUID();
  v51 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary) = a1;
  v53 = a1;

  v17 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  if (!v17)
  {
    goto LABEL_20;
  }

  v43 = v8;
  v46 = v6;
  v44 = v3;
  v47 = v15;
  v48 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v19 = v17;
  v20 = v18;
  v45 = v19;
  v54 = dispatch thunk of DockCoreAccessory.info.getter();
  v49 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v21 = *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v22 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v50 = v20;
  v23 = *&v20[v22];
  v24 = *(v23 + 16);

  if (!v24)
  {
LABEL_7:

    v30 = v50;
    v31 = *&v50[v49];
    OS_dispatch_semaphore.signal()();

    v58 = 0;
    v56 = 0u;
    v57 = 0u;
LABEL_9:

    v15 = v47;
    v33 = v52;
    v34 = v46;
    if (*(&v57 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v54 = v55[0];
        v35 = v43;
        dispatch thunk of TrackingSummaryInternal.orientation.getter();
        v36 = *(v33 + 104);
        v37 = v44;
        v36(v34, enum case for CameraOrientationInternal.landscapeLeft(_:), v44);
        sub_1001A2FAC(&qword_1002AB490, &type metadata accessor for CameraOrientationInternal, &protocol conformance descriptor for CameraOrientationInternal);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v38 = *(v33 + 8);
        v38(v34, v37);
        v38(v35, v37);
        if (v56 == v55[0])
        {

          v1 = v48;
        }

        else
        {
          dispatch thunk of TrackingSummaryInternal.orientation.getter();
          v36(v34, enum case for CameraOrientationInternal.landscapeRight(_:), v37);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();

          v38(v34, v37);
          v38(v35, v37);
          v1 = v48;
          if (v56 != v55[0])
          {
            v39 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader;
            v40 = v54;
            v41 = *(v54 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) & 0xFE;
            goto LABEL_19;
          }
        }

        v39 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader;
        v40 = v54;
        v41 = *(v54 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) | 1;
LABEL_19:
        v40[v39] = v41;

        goto LABEL_20;
      }
    }

    else
    {

      sub_100095C84(&v56, &unk_1002A6F40, &unk_10023BE90);
    }

    v1 = v48;
LABEL_20:
    v42 = *(v1 + v15);

    os_unfair_lock_unlock(v42 + 4);

    return;
  }

  v25 = 0;
  v26 = v23 + 32;
  v27 = (v51 + 8);
  while (v25 < *(v23 + 16))
  {
    sub_1000A097C(v26, v55);
    v28 = *(*sub_1000A09E0(v55, v55[3]) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v28) = static UUID.== infix(_:_:)();
    v29 = *v27;
    (*v27)(v12, v9);
    v29(v14, v9);
    if (v28)
    {

      v30 = v50;
      v32 = *&v50[v49];
      OS_dispatch_semaphore.signal()();

      sub_1000A097C(v55, &v56);
      sub_100095808(v55);
      goto LABEL_9;
    }

    ++v25;
    sub_100095808(v55);
    v26 += 40;
    if (v24 == v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10018DAC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v6 - 8);
  v77 = &v72[-v7];
  v81 = type metadata accessor for UUID();
  v8 = *(v81 - 8);
  v9 = __chkstk_darwin(v81);
  v80 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v72[-v11];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v16, &v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger], v13);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v78 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v79 = v3;
    *&v83 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_1000952D4(0xD00000000000001CLL, 0x80000001002347C0, &v83);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000952D4(a1, a2, &v83);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s finish camera session app=%s", v20, 0x16u);
    swift_arrayDestroy();
    v3 = v79;
  }

  (*(v14 + 8))(v16, v13);
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
  swift_beginAccess();
  v23 = *&v3[v22];
  if (!*(v23 + 16))
  {
    goto LABEL_16;
  }

  v24 = sub_10016D4D0(a1, a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_15;
  }

LABEL_7:
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    goto LABEL_49;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else if (v29 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = v3;
    v31 = a1;
    v32 = a2;
    for (i = *(v26 + 8 * v29 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v34 = i;

      v35 = [objc_allocWithZone(NSDate) init];
      [v35 timeIntervalSince1970];

      CameraSessionInformation.endTime.setter();
      a2 = v32;
      a1 = v31;
      v3 = v30;
LABEL_16:
      v36 = *&v3[v22];
      if (!*(v36 + 16))
      {
        goto LABEL_29;
      }

      v37 = sub_10016D4D0(a1, a2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_28;
      }

      v39 = *(*(v36 + 56) + 8 * v37);

      if (v39 >> 62)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
        if (!v40)
        {
LABEL_28:

LABEL_29:
          v45 = 0;
          goto LABEL_30;
        }
      }

      else
      {
        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_28;
        }
      }

      v28 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v28)
      {
        goto LABEL_50;
      }

      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;

      CameraSessionInformation.cameraType.getter();

      v44 = TrackerCamera.rawValue.getter();
      v45 = v44 == TrackerCamera.rawValue.getter();
LABEL_30:
      v46 = TrackingButtonState.rawValue.getter();
      if (v46 != TrackingButtonState.rawValue.getter())
      {
        return;
      }

      v47 = *&v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected];
      if (!v47)
      {
        return;
      }

      v73 = v45;
      v79 = v3;
      v48 = *&v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager];
      v49 = v47;
      v50 = v48;
      v74 = v49;
      v51 = dispatch thunk of DockCoreAccessory.info.getter();
      v75 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v52 = *&v50[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      a2 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v76 = v50;
      v22 = *&v50[a2];
      v53 = *(v22 + 16);

      if (!v53)
      {
LABEL_37:

        v60 = v76;
        v61 = *&v76[v75];
        OS_dispatch_semaphore.signal()();

        v85 = 0;
        v83 = 0u;
        v84 = 0u;
LABEL_39:

        v63 = v74;
        if (*(&v84 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          if (swift_dynamicCast())
          {
            v64 = v82[0];
            type metadata accessor for Actuator();
            static Actuator.Pitch.getter();
            v65 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

            if (v65)
            {
              v66 = type metadata accessor for TaskPriority();
              v67 = v77;
              (*(*(v66 - 8) + 56))(v77, 1, 1, v66);
              v68 = swift_allocObject();
              *(v68 + 16) = 0;
              *(v68 + 24) = 0;
              v69 = v79;
              *(v68 + 32) = v79;
              *(v68 + 40) = v73;
              *(v68 + 48) = v65;
              *(v68 + 56) = v64;

              v70 = v65;

              v71 = sub_1001B6410(0, 0, v67, &unk_10023F078, v68);

              *&v69[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask] = v71;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {

          sub_100095C84(&v83, &unk_1002A6F40, &unk_10023BE90);
        }

        return;
      }

      v54 = 0;
      v55 = v22 + 32;
      v3 = (v78 + 8);
      while (v54 < *(v22 + 16))
      {
        sub_1000A097C(v55, v82);
        v56 = *(*sub_1000A09E0(v82, v82[3]) + 24);
        DockCoreInfo.identifier.getter();

        v57 = v80;
        DockCoreInfo.identifier.getter();
        a2 = static UUID.== infix(_:_:)();
        v58 = *v3;
        v59 = v57;
        a1 = v81;
        (*v3)(v59, v81);
        v58(v12, a1);
        if (a2)
        {

          v60 = v76;
          v62 = *&v76[v75];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v82, &v83);
          sub_100095808(v82);
          goto LABEL_39;
        }

        ++v54;
        sub_100095808(v82);
        v55 += 40;
        if (v53 == v54)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v30 = v3;
      v31 = a1;
      v32 = a2;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_10018E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 34) = a5;
  *(v7 + 40) = a4;
  v8 = type metadata accessor for TrajectoryCommand();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  *(v7 + 112) = v10;
  *(v7 + 120) = *(v10 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return (_swift_task_switch)(sub_10018E574, 0, 0);
}

uint64_t sub_10018E574()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  static ContinuousClock.Instant.now.getter();
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  *(v0 + 144) = v4;
  *(v0 + 152) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = sub_1001A2FAC(&qword_1002AB488, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v5 = v0;
  v5[1] = sub_10018E6C8;
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  v9 = *(v0 + 88);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_10018E6C8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[17];
    v6 = v2[13];
    v5 = v2[14];
    v9 = v2 + 11;
    v7 = v2[11];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    v3(v4, v5);
  }

  else
  {
    v10 = v2[18];
    v11 = v2[17];
    v12 = v2[14];
    (*(v2[12] + 8))(v2[13], v2[11]);
    v10(v11, v12);
  }

  return (_swift_task_switch)(sub_10018E858, 0, 0);
}

uint64_t sub_10018E858(uint64_t a1)
{
  if (static Task<>.isCancelled.getter())
  {
LABEL_6:

    v6 = *(v1 + 8);

    return v6();
  }

  if (*(v1 + 34) == 1)
  {
    Actuator.homePosition.getter();
  }

  v2 = *(v1 + 80);
  dispatch thunk of Component.id.getter();
  sub_10018EC24(v2);
  v3 = TrajectoryCommand.encode()();
  *(v1 + 168) = v4;
  if (v4 >> 60 == 15)
  {
    v5 = *(v1 + 40);
    (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
    *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;

    goto LABEL_6;
  }

  v8 = v4;
  v9 = *(v1 + 56);
  *(v1 + 176) = v3;
  v10 = v3;
  v11 = swift_task_alloc();
  *(v1 + 184) = v11;
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v8;
  v12 = swift_task_alloc();
  *(v1 + 192) = v12;
  *v12 = v1;
  v12[1] = sub_10018EA4C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 33, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v11, &type metadata for Bool);
}

uint64_t sub_10018EA4C()
{

  return (_swift_task_switch)(sub_10018EB64, 0, 0);
}

uint64_t sub_10018EB64()
{
  sub_1000A452C(v0[22], v0[21]);
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_10018EC24@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100095274(&qword_1002AB470, &qword_10023F058);
  __chkstk_darwin(v3 - 8);
  v31 = &v25 - v4;
  v29 = type metadata accessor for TrajectoryCommand.Animation();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrajectoryCommand.TrajectoryPoint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TrajectoryCommand.Trajectory();
  v28 = *(v30 - 8);
  v11 = v28;
  __chkstk_darwin(v30);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrajectoryCommand.Trajectory.init()();
  TrajectoryCommand.Trajectory.actuatorId.setter();
  TrajectoryCommand.Trajectory.duration.setter();
  TrajectoryCommand.Trajectory.positionCommand.setter();
  TrajectoryCommand.Trajectory.velocityCommand.setter();
  TrajectoryCommand.Trajectory.relative.setter();
  TrajectoryCommand.TrajectoryPoint.init()();
  TrajectoryCommand.TrajectoryPoint.position.setter();
  TrajectoryCommand.TrajectoryPoint.velocity.setter();
  TrajectoryCommand.TrajectoryPoint.time.setter();
  sub_100095274(&qword_1002AB478, &qword_10023F060);
  v26 = v8;
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v25 = xmmword_10023C170;
  *(v15 + 16) = xmmword_10023C170;
  (*(v8 + 16))(v15 + v14, v10, v7);
  TrajectoryCommand.Trajectory.points.setter();
  (*(v5 + 104))(v27, enum case for TrajectoryCommand.Animation.Custom(_:), v29);
  v16 = enum case for TrajectoryCommand.Priority.Low(_:);
  v17 = type metadata accessor for TrajectoryCommand.Priority();
  v18 = *(v17 - 8);
  v19 = v31;
  (*(v18 + 104))(v31, v16, v17);
  (*(v18 + 56))(v19, 0, 1, v17);
  sub_100095274(&qword_1002AB480, &qword_10023F068);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  v22 = v21 + v20;
  v23 = v30;
  (*(v11 + 16))(v22, v13, v30);
  TrajectoryCommand.init(type:priority:trajectories:)();
  (*(v26 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v23);
}

id sub_10018F07C(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v58 = &v52 - v12;
  v13 = __chkstk_darwin(v11);
  v59 = &v52 - v14;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = dispatch thunk of DockCoreAccessory.info.getter();
  v18 = sub_1001884E4(v17);

  if (v18)
  {
    if ((v4 & 1) == 0)
    {
      return v18;
    }
  }

  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v20 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v20 + 4);

  if ((v4 & 1) == 0)
  {
    goto LABEL_20;
  }

  v52 = v16;
  v53 = v7;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v54 = v6;
  v55 = v3;
  v56 = v10;
  v57 = v19;
  if (v23 >> 62)
  {
LABEL_31:
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {
LABEL_17:

    v7 = v53;
    v6 = v54;
    v3 = v55;
    v32 = v59;
    (*(v53 + 16))(v59, v55 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v54);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not found any paired accessory with the same info. Saving paired accessory", v35, 2u);
    }

    (*(v7 + 8))(v32, v6);
    v19 = v57;
LABEL_20:
    sub_10018F7CC(a1, v21);
    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v18 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v37 = v58;
    (*(v7 + 16))(v58, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Saved paired accessory", v40, 2u);
    }

    (*(v7 + 8))(v37, v6);
    v41 = *(v3 + v19);

    os_unfair_lock_unlock(v41 + 4);

    v42 = v18;
    return v18;
  }

  v25 = 0;
  v60 = v23 & 0xFFFFFFFFFFFFFF8;
  v61 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v61)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v60 + 16))
      {
        goto LABEL_30;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v18 = v26;
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v28 = dispatch thunk of DockCoreAccessory.info.getter();
    v29 = a1;
    v30 = dispatch thunk of DockCoreAccessory.info.getter();
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
      break;
    }

    ++v25;
    a1 = v29;
    if (v27 == v24)
    {
      goto LABEL_17;
    }
  }

  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  (*(v53 + 16))(v52, v55 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v54);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Found already paired accessory with the same info. Updating the accessory", v49, 2u);
    v43 = v52;
  }

  (*(v44 + 8))(v43, v45);
  dispatch thunk of DockCoreAccessory.updateFrom(accessory:)();
  v50 = *(v46 + v57);

  os_unfair_lock_unlock(v50 + 4);

  return v18;
}