uint64_t sub_1000C2C88()
{
  type metadata accessor for AlishaExpress(0);
  swift_allocObject();
  result = sub_1000C2CC8();
  qword_10051B260 = result;
  return result;
}

uint64_t sub_1000C2CC8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xD00000000000001BLL;
  *(v0 + 32) = 0x80000001004629F0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000C4DB4;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C6BE0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000C2E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v9 = &type metadata for Bool;
  LOBYTE(v8) = v2;
  sub_100075D50(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v7, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = sub_100015DA0("alishaexpress.state", isa);

  return v5;
}

void sub_1000C2F00()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_11:
    v20[3] = v2;
    v20[4] = &off_1004C6BD0;
    v20[0] = v1;

    v15 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
    if (v16 >> 60 == 15)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_1001BF594(v20, v15, v16);
      sub_10006A2D0(v17, v18);
      sub_1000752F4(v20);
      sub_1000C4AF4();
    }

    return;
  }

  v9 = *(v1 + 16);
  v10 = Logger.logObject.getter();
  if ((v9 & 1) == 0)
  {
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, v13, "Starting AlishaExpress", v14, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_100501A58 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AlishaExpress is already running", v12, 2u);
  }
}

void sub_1000C3230()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v25 = v9;
  v11 = *(v1 + 16);
  v12 = Logger.logObject.getter();
  if (v11 != 1)
  {
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, v21, "AlishaExpress is not running", v22, 2u);
    }

    return;
  }

  v24 = v1;
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Stopping AlishaExpress", v14, 2u);
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v23 = qword_10051B3F0;
  v15 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v16 >> 60 != 15)
  {
    v17 = v15;
    v18 = v16;
    v19 = v25;
    *v5 = v25;
    v8(v5, v7, v2);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    v10(v5, v2);
    if (v19)
    {
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      swift_beginAccess();
      sub_100069E2C(v17, v18);
      sub_1000C5710(v26, v17, v18);
      swift_endAccess();
      sub_10006A2D0(v17, v18);
      *(v24 + 16) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1000C35A4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v4 = sub_1000CAAC4();
  v5 = v4;
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }

LABEL_11:

    if (qword_1005018F0 != -1)
    {
      swift_once();
    }

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v9 = qword_10051B7F0;
    *v3 = qword_10051B7F0;
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v3, v0);
    if (v9)
    {
      if (qword_100501DA8 == -1)
      {
LABEL_17:
        sub_10034682C(0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = objc_opt_self();
  sub_10004EBC8(v6, 3);
  v7 = sub_1000C2A00(v5);

  if (qword_1005018F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000E0074(v7);

  sub_100076084(v8);
}

uint64_t sub_1000C38C8()
{

  v1 = OBJC_IVAR____TtC10seserviced13AlishaExpress_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaExpress(uint64_t a1)
{
  result = qword_100503498;
  if (!qword_100503498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C39C0(uint64_t a1, uint64_t a2)
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

void sub_1000C3A64(int64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    v7 = enum case for DispatchPredicate.onQueue(_:);
    v9 = v3 + 13;
    v8 = v3[13];
    v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v10 = v6;
    v11 = _dispatchPreconditionTest(_:)();
    v13 = v3[1];
    ++v3;
    v12 = v13;
    v14 = (v13)(v5, v2);
    if (v11)
    {
      v49 = v10;
      v50 = v12;
      v51 = v8;
      if (qword_1005019E8 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    v14 = swift_once();
LABEL_4:
    v15 = *(off_100504A68 + 3);
    __chkstk_darwin(v14);
    *(&v44 - 2) = sub_1000C49D4;
    *(&v44 - 1) = 0;
    os_unfair_lock_lock(v15 + 8);
    sub_1000C4A64(&v15[4], v56);
    os_unfair_lock_unlock(v15 + 8);
    if (LOBYTE(v56[0]) != 1)
    {
      return;
    }

    v45 = v7;
    v46 = v9;

    v16 = v52;
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v20 = os_log_type_enabled(v18, v19);
    v47 = v3;
    v48 = v2;
    v53 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v56[0] = v3;
      *v21 = 136315138;
      v22 = sub_1001C337C();
      v24 = sub_1002FFA0C(v22, v23, v56);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s", v21, 0xCu);
      sub_1000752F4(v3);
    }

    if (*(v16 + 16) != 1)
    {
      break;
    }

    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v25 = sub_1000CAAC4();
    v52 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_1000C4A9C();
      Set.Iterator.init(_cocoa:)();
      v26 = v56[0];
      v2 = v56[1];
      v27 = v56[2];
      v28 = v56[3];
      v29 = v56[4];
    }

    else
    {
      v33 = -1 << *(v25 + 32);
      v2 = v25 + 56;
      v27 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v29 = v35 & *(v25 + 56);
      v28 = 0;
    }

    v44 = v27;
    v36 = (v27 + 64) >> 6;
    if (v26 < 0)
    {
      while (1)
      {
        v40 = __CocoaSet.Iterator.next()();
        if (!v40)
        {
          break;
        }

        v54 = v40;
        type metadata accessor for Peer(0);
        swift_dynamicCast();
        v39 = v55;
        a1 = v28;
        v3 = v29;
        if (!v55)
        {
          break;
        }

LABEL_28:
        v55 = v39;
        sub_1000C40B0(&v55, v53);

        v28 = a1;
        v29 = v3;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_30:
      sub_100093854(v26);

      if (*(v53 + 16) == 1)
      {
        sub_1000C4AF4();
        return;
      }

      if (qword_1005018F0 != -1)
      {
        swift_once();
      }

      v41 = v48;
      v42 = v49;
      *v5 = v49;
      v51(v5, v45, v41);
      v43 = v42;
      LOBYTE(v42) = _dispatchPreconditionTest(_:)();
      v50(v5, v41);
      if (v42)
      {
        if (qword_100501DA8 == -1)
        {
LABEL_36:
          sub_10034682C(0);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_36;
    }

LABEL_20:
    v37 = v28;
    v38 = v29;
    a1 = v28;
    if (v29)
    {
LABEL_24:
      v3 = ((v38 - 1) & v38);
      v39 = *(*(v26 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v38)))));

      if (v39)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    while (1)
    {
      a1 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (a1 >= v36)
      {
        goto LABEL_30;
      }

      v38 = *(v2 + 8 * a1);
      ++v37;
      if (v38)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Not running", v32, 2u);
  }
}

void sub_1000C40B0(unint64_t *a1, uint64_t a2)
{
  v56 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  v57 = *(*a1 + OBJC_IVAR____TtC10seserviced4Peer_expressState);
  v3 = *(a2 + 24);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(a2 + 24) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v58 = *a1;
  v60 = (*a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v61 = *(a2 + 24);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v61 + 48) + ((v11 << 10) | (16 * v13)));
    v15 = *v14;
    v2 = v14[1];
    v17 = *v60;
    v16 = v60[1];
    if (v2 >> 60 == 15)
    {
      if (v16 >> 60 == 15)
      {
        sub_100069E2C(v15, v2);
        sub_10006A2BC(v17, v16);

        sub_10006A2D0(v15, v2);
        goto LABEL_82;
      }

LABEL_13:
      sub_100069E2C(v15, v2);
      sub_10006A2BC(v17, v16);
      sub_10006A2D0(v15, v2);
      sub_10006A2D0(v17, v16);
    }

    else
    {
      if (v16 >> 60 == 15)
      {
        goto LABEL_13;
      }

      v18 = v2 >> 62;
      v19 = v16 >> 62;
      if (v2 >> 62 == 3)
      {
        if (v15)
        {
          v20 = 0;
        }

        else
        {
          v20 = v2 == 0xC000000000000000;
        }

        v21 = 0;
        v22 = v20 && v16 >> 62 == 3;
        if (v22 && !v17 && v16 == 0xC000000000000000)
        {
          goto LABEL_79;
        }

        goto LABEL_36;
      }

      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v24 = *(v15 + 16);
          v23 = *(v15 + 24);
          v25 = __OFSUB__(v23, v24);
          v21 = v23 - v24;
          if (v25)
          {
            goto LABEL_104;
          }

          goto LABEL_36;
        }

        v21 = 0;
        if (v19 > 1)
        {
          goto LABEL_42;
        }

LABEL_37:
        if (v19)
        {
          LODWORD(v26) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
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
            swift_once();
            goto LABEL_86;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v16);
        }

LABEL_44:
        if (v21 != v26)
        {
          goto LABEL_50;
        }

        if (v21 < 1)
        {
          goto LABEL_77;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v52 = *(v15 + 24);
            v54 = *(v15 + 16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            v29 = __DataStorage._bytes.getter();
            if (v29)
            {
              v49 = v29;
              v30 = __DataStorage._offset.getter();
              v31 = v54;
              if (__OFSUB__(v54, v30))
              {
                goto LABEL_107;
              }

              v50 = v54 - v30 + v49;
            }

            else
            {
              v50 = 0;
              v31 = v54;
            }

            if (__OFSUB__(v52, v31))
            {
              goto LABEL_106;
            }

            __DataStorage._length.getter();
            v35 = v50;
            goto LABEL_66;
          }

          memset(v63, 0, 14);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
        }

        else
        {
          if (v18)
          {
            if (v15 >> 32 < v15)
            {
              goto LABEL_105;
            }

            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            sub_100069E2C(v15, v2);
            sub_10006A2BC(v17, v16);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v51 = v32;
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v15, v33))
              {
                goto LABEL_108;
              }

              v53 = v15 - v33 + v51;
            }

            else
            {
              v53 = 0;
            }

            __DataStorage._length.getter();
            v35 = v53;
LABEL_66:
            sub_10019F024(v35, v17, v16, v63);
            sub_10006A2D0(v17, v16);
            sub_10006A178(v15, v2);
            sub_10006A2D0(v17, v16);
            v34 = v63[0];
            goto LABEL_67;
          }

          v63[0] = v15;
          LOWORD(v63[1]) = v2;
          BYTE2(v63[1]) = BYTE2(v2);
          BYTE3(v63[1]) = BYTE3(v2);
          BYTE4(v63[1]) = BYTE4(v2);
          BYTE5(v63[1]) = BYTE5(v2);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
        }

        sub_10019F024(v63, v17, v16, &v62);
        sub_10006A2D0(v17, v16);
        sub_10006A178(v15, v2);
        sub_10006A2D0(v17, v16);
        v34 = v62;
LABEL_67:
        sub_10006A2D0(v15, v2);
        if (v34)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v18)
        {
          v21 = BYTE6(v2);
          if (v19 <= 1)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        LODWORD(v21) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_103;
        }

        v21 = v21;
LABEL_36:
        if (v19 <= 1)
        {
          goto LABEL_37;
        }

LABEL_42:
        if (v19 == 2)
        {
          v28 = *(v17 + 16);
          v27 = *(v17 + 24);
          v25 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v25)
          {
            goto LABEL_102;
          }

          goto LABEL_44;
        }

        if (!v21)
        {
LABEL_77:
          sub_100069E2C(v15, v2);
          sub_10006A2BC(v17, v16);
          sub_10006A2D0(v17, v16);
          goto LABEL_80;
        }

LABEL_50:
        sub_100069E2C(v15, v2);
        sub_10006A2BC(v17, v16);
        sub_10006A2D0(v17, v16);
        sub_10006A2D0(v15, v2);
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v9 = v58;
      *(v58 + v56) = 0;
      v36 = v57;
      goto LABEL_70;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_79:
  sub_100069E2C(0, 0xC000000000000000);
  sub_10006A2BC(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v15 = 0;
LABEL_80:
  sub_10006A2D0(v15, v2);
LABEL_81:

LABEL_82:
  v40 = *(a2 + 16);
  v9 = v58;
  *(v58 + v56) = v40;
  v36 = v57;
  if (v40 != 1)
  {
LABEL_70:
    if (v36 == 1 && *(v9 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
    {
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v37 = qword_10051B5B0;

      v38 = sub_10024F2B4(v37, v9);

      v39 = sub_1000CA828(v38);

      if (v39)
      {
        sub_1002463FC();
        sub_100246268(0);
      }
    }

    return;
  }

  if (v57 == 1 || *(v58 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    return;
  }

  v11 = v59;
  if (qword_100501B60 != -1)
  {
    goto LABEL_109;
  }

LABEL_86:
  v41 = sub_1002B3B94(&off_1004C3B50);
  v43 = v42;
  v44 = sub_100239160(3, 17, v41, v42);
  v46 = v45;
  sub_10006A178(v41, v43);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v47 = v11;
  sub_1000E71A0(v44, v46, v9);
  if (v11)
  {

    v47 = 0;
  }

  if (*(v9 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2)
  {
    v48 = sub_1000E7974(v9);
    if (v48 != 2 && (v48 & 1) == 0)
    {
      if (qword_100501B98 != -1)
      {
        swift_once();
      }

      sub_100251228(v9);
      if (v47)
      {
        sub_10006A178(v44, v46);

        return;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      sub_1002558C4(0, v9);
    }
  }

  sub_10006A178(v44, v46);
}

unint64_t sub_1000C4A9C()
{
  result = qword_100503F20;
  if (!qword_100503F20)
  {
    type metadata accessor for Peer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503F20);
  }

  return result;
}

void sub_1000C4AF4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4 = qword_10051B7F0;
  *v3 = qword_10051B7F0;
  v5 = enum case for DispatchPredicate.onQueue(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v4;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  if (v8)
  {
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v10 = qword_10051B288;
  *v3 = v7;
  v6(v3, v5, v0);
  v11 = _dispatchPreconditionTest(_:)();
  v9(v3, v0);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    v0 = sub_10012E6B0(0, v0[2] + 1, 1, v0);
    *(v10 + v11) = v0;
    goto LABEL_12;
  }

  v12 = *(v10 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  v13 = v12 > 0xA;
  v14 = (1 << v12) & 0x430;
  if (!v13 && v14 != 0)
  {
    sub_1000C35A4();
    return;
  }

  v11 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v0 = *(v10 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v11) = v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v18 = v0[2];
  v17 = v0[3];
  if (v18 >= v17 >> 1)
  {
    v0 = sub_10012E6B0((v17 > 1), v18 + 1, 1, v0);
  }

  v0[2] = v18 + 1;
  v19 = &v0[3 * v18];
  *(v19 + 32) = 0;
  v19[5] = sub_1000C2C84;
  v19[6] = 0;
  *(v10 + v11) = v0;
  swift_endAccess();
}

uint64_t sub_1000C4DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4DD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v8 = sub_10008C808(a5);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v25 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1003109EC();
        v12 = v25;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      v16 = *(v15 + 8);
      v16(v13 + *(v15 + 72) * v10, v14);
      sub_1000DCF64(v10, v12);
      result = (v16)(a5, v14);
      *v6 = v12;
    }

    else
    {
      v23 = type metadata accessor for UUID();
      v24 = *(*(v23 - 8) + 8);

      return v24(a5, v23);
    }
  }

  else
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    sub_100314954(a1, a2, a3, a5, v21);
    v22 = type metadata accessor for UUID();
    result = (*(*(v22 - 8) + 8))(a5, v22);
    *v5 = v26;
  }

  return result;
}

uint64_t sub_1000C4FF0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v5 = v19;
  }

  else
  {
    v14 = sub_10008C8DC(a2, a3);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v20 = *v6;
      if (!v17)
      {
        a5();
        v18 = v20;
      }

      sub_10006A178(*(*(v18 + 48) + 16 * v16), *(*(v18 + 48) + 16 * v16 + 8));

      sub_1000DDC00(v16, v18);
      result = sub_10006A178(a2, a3);
      *v6 = v18;
    }

    else
    {

      return sub_10006A178(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000C5158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x10000) != 0)
  {
    v9 = sub_10008C808(a2);
    if (v10)
    {
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100310F28();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      sub_1000DD5AC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100314E8C(a1, a2, v6);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1000C5310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 3)
  {
    v5 = sub_10008C808(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100310CB8();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for UUID();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_1000DD28C(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_100314CF0(a1, a2, v16);
    v17 = type metadata accessor for UUID();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1000C54CC(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100315028(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_100075768(a1, &qword_100502F08, &qword_10040A000);
    v7 = sub_10008C9C8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100311198();
        v11 = v13;
      }

      sub_1000BC104((*(v11 + 56) + 40 * v9), v14);
      sub_1000DDA60(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_100075768(v14, &qword_100502F08, &qword_10040A000);
  }

  return result;
}

uint64_t sub_1000C55D8(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1003152C8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_100075768(a1, &qword_1005031C8, &qword_10040A5D0);
    v7 = sub_10008C9C8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1003114B0();
        v11 = v13;
      }

      sub_1000BC104((*(v11 + 56) + 40 * v9), v14);
      sub_1000DDA60(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_100075768(v14, &qword_1005031C8, &qword_10040A5D0);
  }

  return result;
}

uint64_t sub_1000C5710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000BC104(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100315484(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v3 = v8;
  }

  else
  {
    sub_100075768(a1, &qword_100505FC0, &unk_10040DDF0);
    sub_10014545C(a2, a3, v9);
    sub_10006A178(a2, a3);
    return sub_100075768(v9, &qword_100505FC0, &unk_10040DDF0);
  }

  return result;
}

Swift::Int sub_1000C57E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = sub_100315784(a1, a2, v9, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v18;
  }

  else
  {
    result = sub_10008C9C8(a5);
    if (v14)
    {
      v15 = result;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        sub_100311B20();
        v17 = v19;
      }

      result = sub_1000DDF80(v15, v17);
      *v6 = v17;
    }
  }

  return result;
}

uint64_t sub_1000C58E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100315DC0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_10006A178(a2, a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_10008C8DC(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_100312350();
        v14 = v16;
      }

      sub_10006A178(*(*(v14 + 48) + 16 * v12), *(*(v14 + 48) + 16 * v12 + 8));

      sub_1000DDC00(v12, v14);
      result = sub_10006A178(a2, a3);
      *v4 = v14;
    }

    else
    {

      return sub_10006A178(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000C5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100315F3C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10008C908(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1003124BC();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1000DE434(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000C5B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_100075768(a1, &qword_1005031F0, &unk_10040C4C0);
    sub_1001457B8(a2, a3, v9);

    return sub_100075768(v9, &qword_1005031F0, &unk_10040C4C0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10031669C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void *sub_1000C5CDC(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_10008E990(v25, v26, v27, a1);
    v13 = v12;
    [v12 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100068FC4(&unk_100505FB0, &unk_10040DDE0);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000937D4(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = (1 << *(a1 + 32));
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = (__clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000937D4(v10, v9, 0);
            v14 = (__clz(__rbit64(v21)) + v18);
            goto LABEL_27;
          }
        }

        result = sub_1000937D4(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1000C603C(uint64_t a1)
{
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v21 = v2;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_10008EDB4(v25, v26, v27, a1);
    type metadata accessor for Peer(0);

    sub_100068FC4(&qword_100503600, &qword_10040A9D8);
    swift_dynamicCast();
    [v23 copyWithZone:0];
    swift_unknownObjectRelease();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v22)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v21;
      sub_100068FC4(&qword_100502C08, &qword_100409CC8);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v24, 0);
      if (v6 == v21)
      {
LABEL_28:
        sub_1000937D4(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = (1 << *(a1 + 32));
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = (__clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0);
        v2 = v21;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        v2 = v21;
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1000937D4(v10, v9, 0);
            v12 = (__clz(__rbit64(v19)) + v16);
            goto LABEL_27;
          }
        }

        result = sub_1000937D4(v10, v9, 0);
      }

LABEL_27:
      v25 = v12;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1000C63FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  sub_10019F3C0(0, v3, 0);
  v5 = v4 + 64;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v27 = v4 + 72;
  v28 = v3;
  v29 = v4;
  v30 = v4 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v8;
    v33 = *(v4 + 36);
    v11 = (*(v4 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    sub_100069E2C(*v11, v13);
    v32 = v2;
    sub_100288788(v12, v13);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    result = sub_10006A178(v12, v13);
    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v4 = v29;
    v5 = v30;
    v9 = 1 << *(v29 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(v29 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v2 = v32;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      v2 = v32;
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1000937D4(v7, v33, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v7, v33, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v9;
    if (v31 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000C66AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_100069E2C(v17, v16);
              sub_10019F024(v44, a1, a2, &v43);
              sub_10006A178(v17, v16);
              if (v43)
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_100069E2C(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            __DataStorage._length.getter();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_10019F024(v34, v36, v37, v44);
            sub_10006A178(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_100069E2C(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_100069E2C(v17, v16);
          sub_10019F024(v44, a1, a2, &v43);
          sub_10006A178(v17, v16);
          if (v43)
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

BOOL sub_1000C6AD0(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000C6B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000C6C94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1000E0514(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1000E0514(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1000C6EAC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
LABEL_7:
    v5 = qword_10051B5B0;
    v12 = sub_100240640(qword_10051B5B0);
    sub_1000CB430(v12);
    v14 = v13;

    if (!v14)
    {
LABEL_32:
      sub_100240A9C(1);
      *(v1 + 16) = 0;
      return;
    }

    v34[2] = v5;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBLyonSession();
      sub_1000E0514(&qword_100503628, type metadata accessor for UWBLyonSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v15 = v36;
      v3 = v37;
      v2 = v38;
      v16 = v39;
      v17 = v40;
    }

    else
    {
      v20 = -1 << *(v14 + 32);
      v3 = v14 + 56;
      v2 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v17 = (v22 & *(v14 + 56));

      v16 = 0;
      v15 = v14;
    }

    v34[1] = v2;
    v23 = (v2 + 64) >> 6;
    while (v15 < 0)
    {
      v31 = __CocoaSet.Iterator.next()();
      if (!v31 || (v34[3] = v31, type metadata accessor for UWBLyonSession(), v29 = swift_dynamicCast(), v2 = v35, v28 = v16, v5 = v17, !v35))
      {
LABEL_31:
        sub_100093854(v15);

        goto LABEL_32;
      }

LABEL_28:
      v32 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
      if (*v32 == _TtC10seserviced8LyonPeer && (*(v32 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
      {
        v33 = *(v32 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);

        sub_100241AFC(v33, 107);
      }

      sub_100241E60(v29, v30);
      sub_100246878(v24, v25);

      v16 = v28;
      v17 = v5;
    }

    v26 = v16;
    v27 = v17;
    v28 = v16;
    if (v17)
    {
LABEL_24:
      v5 = ((v27 - 1) & v27);
      v29 = *(*(v15 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      v2 = v29;
      if (!v29)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        goto LABEL_31;
      }

      v27 = *(v3 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v8 = *(v1 + 16);
  v9 = Logger.logObject.getter();
  if (v8 == 1)
  {
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stopping LyonUWB", v11, 2u);
    }

    if (qword_100501B70 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v9, v18, "LyonUWB is not running", v19, 2u);
  }
}

void sub_1000C7390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_72:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v17 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v17, v46, "LyonUWB is not running", v47, 2u);
    }

    goto LABEL_19;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_72;
  }

LABEL_6:
  v15 = qword_10051B5B0;

  v16 = sub_10024F2B8(v15, a3);

  v17 = sub_1000CA858(v16, sub_10008EBB4);

  if (!v17)
  {
LABEL_21:
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "No active UWB Lyon session", v50, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    return;
  }

  type metadata accessor for UWBLyonSession();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_21;
  }

  v135 = v18;
  sub_100069E2C(a1, a2);
  v19 = sub_1000939AC(a1, a2, 0, 0, 0);
  if (v5)
  {
LABEL_19:

    return;
  }

  v20 = v19;
  v21 = v19;
  v22 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;
  v134 = v3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  LODWORD(v133) = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v131 = v26;
    v132 = swift_slowAlloc();
    p_isa = v132;
    *v26 = 136315138;
    v27 = sub_10024FED4(v21);
    v29 = a3;
    v30 = v22;
    v31 = v17;
    v32 = sub_1002FFA0C(v27, v28, &p_isa);

    v33 = v131;
    *(v131 + 1) = v32;
    v17 = v31;
    v22 = v30;
    a3 = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received Notification %s", v33, 0xCu);
    sub_1000752F4(v132);
  }

  if (v20 < 4u)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v35))
    {
LABEL_16:

      sub_1000755A4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      goto LABEL_19;
    }

    v36 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    *v36 = 136315394;

    v37 = v17;
    v38 = UUID.uuidString.getter();
    v40 = v39;

    v41 = sub_1002FFA0C(v38, v40, &p_isa);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = sub_10024FED4(v133);
    v44 = sub_1002FFA0C(v42, v43, &p_isa);
    v17 = v37;

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Peer %s received invalid notification %s", v36, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }

  if (v20 == 5)
  {
    v68 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v69 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    if (v69 <= 0xE)
    {
      v70 = 1 << v69;
      if ((v70 & 0x1880) != 0)
      {

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = v17;
          v17 = swift_slowAlloc();
          p_isa = &v17->isa;
          *v73 = 136315138;
          v136 = *(a3 + v68);
          v75 = String.init<A>(describing:)();
          v68 = sub_1002FFA0C(v75, v76, &p_isa);

          *(v73 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v71, v72, "Received out of order rangingSessionSuspended when in %s", v73, 0xCu);
          sub_1000752F4(v17);
        }

        else
        {
        }

        v86 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        v109 = v86[16];
        v65 = __CFADD__(v109, 1);
        v110 = v109 + 1;
        if (!v65)
        {
          goto LABEL_64;
        }

        __break(1u);
LABEL_59:
        sub_100241AFC(*v86, 201);

        *(a3 + v68) = 14;
        return;
      }

      if ((v70 & 0x4400) != 0)
      {
        v86 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
        if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
        {

          v34 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v34, v87))
          {
            goto LABEL_16;
          }

          v88 = swift_slowAlloc();
          v89 = v17;
          v90 = swift_slowAlloc();
          p_isa = v90;
          *v88 = 136315138;

          v91 = UUID.uuidString.getter();
          v93 = v92;

          v94 = sub_1002FFA0C(v91, v93, &p_isa);

          *(v88 + 4) = v94;
          v95 = "Peer %s received suspended notification, but has no stored session ID";
          goto LABEL_52;
        }

        goto LABEL_59;
      }
    }

    v34 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v111))
    {
      goto LABEL_16;
    }

    v112 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    *v112 = 136315394;
    v136 = *(a3 + v68);
    v113 = String.init<A>(describing:)();
    v114 = v17;
    v116 = sub_1002FFA0C(v113, v115, &p_isa);

    *(v112 + 4) = v116;
    *(v112 + 12) = 2080;

    v117 = UUID.uuidString.getter();
    v119 = v118;

    v120 = sub_1002FFA0C(v117, v119, &p_isa);

    *(v112 + 14) = v120;
    v17 = v114;
    v121 = "Received rangingSessionSuspended when in %s for %s";
    goto LABEL_69;
  }

  if (v20 != 4)
  {

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v77, v78))
    {

      goto LABEL_19;
    }

    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    p_isa = v80;
    *v79 = 67109378;
    *(v79 + 4) = v133;
    *(v79 + 8) = 2080;

    v81 = v17;
    v82 = UUID.uuidString.getter();
    v84 = v83;

    v85 = sub_1002FFA0C(v82, v84, &p_isa);

    *(v79 + 10) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "Not processing unknown ranging notification %u from peer %s", v79, 0x12u);
    sub_1000752F4(v80);

    return;
  }

  v52 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v53 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
  if (v53 <= 0xA)
  {
    if (v53 != 7)
    {
      if (v53 != 10)
      {
LABEL_67:

        v34 = Logger.logObject.getter();
        v111 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v34, v111))
        {
          goto LABEL_16;
        }

        v112 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        *v112 = 136315394;
        v136 = *(&v52->isa + a3);
        v123 = String.init<A>(describing:)();
        v124 = v17;
        v126 = sub_1002FFA0C(v123, v125, &p_isa);

        *(v112 + 4) = v126;
        *(v112 + 12) = 2080;

        v127 = UUID.uuidString.getter();
        v129 = v128;

        v130 = sub_1002FFA0C(v127, v129, &p_isa);

        *(v112 + 14) = v130;
        v17 = v124;
        v121 = "Received secureRangingOverUWBRadioFailed when in invalid state %s for %s";
LABEL_69:
        _os_log_impl(&_mh_execute_header, v34, v111, v121, v112, 0x16u);
        swift_arrayDestroy();
LABEL_14:

LABEL_15:

        goto LABEL_16;
      }

LABEL_49:
      v67 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
      if ((*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
      {
        if (v53 != 10)
        {
          *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 6;
          sub_1000C8E3C(a3);
          goto LABEL_19;
        }

        goto LABEL_66;
      }

      goto LABEL_50;
    }
  }

  else if (v53 != 11)
  {
    if (v53 != 14)
    {
      if (v53 == 12)
      {

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v133 = v17;
          v58 = v57;
          p_isa = v57;
          *v56 = 136315138;

          v59 = UUID.uuidString.getter();
          v132 = v22;
          v61 = v60;

          v62 = sub_1002FFA0C(v59, v61, &p_isa);

          *(v56 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v54, v55, "Received out of order secureRangingOverUWBRadioFailed when in pauseRangingRequested, discarding request sent to reader for %s", v56, 0xCu);
          sub_1000752F4(v58);
          v17 = v133;
        }

        if (qword_1005018F8 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    goto LABEL_49;
  }

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    *v102 = 136315394;
    v136 = *(&v52->isa + a3);
    v103 = String.init<A>(describing:)();
    v52 = v17;
    v105 = sub_1002FFA0C(v103, v104, &p_isa);

    *(v102 + 4) = v105;
    *(v102 + 12) = 2080;

    v106 = UUID.uuidString.getter();
    v108 = v107;

    v17 = sub_1002FFA0C(v106, v108, &p_isa);

    *(v102 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v100, v101, "Received out of order secureRangingOverUWBRadioFailed when in %s for %s", v102, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v86 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v122 = v86[16];
  v65 = __CFADD__(v122, 1);
  v110 = v122 + 1;
  if (!v65)
  {
LABEL_64:
    v86[16] = v110;
    return;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_33:
  sub_100081644(0);
  v63 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
  v64 = *(v63 + 64);
  v65 = __CFADD__(v64, 1);
  v66 = v64 + 1;
  if (!v65)
  {
    *(v63 + 64) = v66;
    *(&v52->isa + a3) = 10;
    *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
    v67 = (a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
    if ((*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
    {
LABEL_66:
      sub_100241AFC(*v67, 200);

      *(&v52->isa + a3) = 5;
      return;
    }

LABEL_50:

    v34 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v87))
    {
      goto LABEL_16;
    }

    v88 = swift_slowAlloc();
    v89 = v17;
    v90 = swift_slowAlloc();
    p_isa = v90;
    *v88 = 136315138;

    v96 = UUID.uuidString.getter();
    v98 = v97;

    v99 = sub_1002FFA0C(v96, v98, &p_isa);

    *(v88 + 4) = v99;
    v95 = "Peer %s received secureRangingOverUWBRadioFailed notification, but has no stored session ID";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v34, v87, v95, v88, 0xCu);
    sub_1000752F4(v90);
    v17 = v89;

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1000C8420(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "LyonUWB is not running";
    goto LABEL_12;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B5B0;

  v6 = sub_10024F2B8(v5, a1);

  oslog = sub_1000CA858(v6, sub_10008EBB4);

  if (oslog)
  {
    type metadata accessor for UWBLyonSession();
    if (swift_dynamicCastClass())
    {
      sub_10024374C(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus), a2);
      goto LABEL_13;
    }
  }

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Session not available to report lock status";
LABEL_12:
    _os_log_impl(&_mh_execute_header, oslog, v7, v9, v8, 2u);
  }

LABEL_13:
}

void sub_1000C8608(__objc2_class **a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != 1 || *a1 != _TtC10seserviced8LyonPeer)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = *(v3 + 16);

      _os_log_impl(&_mh_execute_header, v27, v28, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v29, 8u);
    }

    else
    {
    }

    return;
  }

  v46 = v8;
  v11 = qword_100501B70;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B5B0;

  v13 = sub_10024F2B8(v12, a1);

  v14 = sub_1000CA858(v13, sub_10008EBB4);

  if (v14)
  {
    type metadata accessor for UWBLyonSession();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v45 = v15;

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        v43 = v18;
        *v18 = 67109378;
        *(v18 + 4) = a2;
        *(v18 + 8) = 2080;
        v19 = v46;
        (*(v7 + 16))(v10, a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v46);
        sub_1000E0514(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = v16;
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        HIDWORD(v41) = v17;
        v22 = v21;
        (*(v7 + 8))(v10, v19);
        v23 = sub_1002FFA0C(v20, v22, &v47);

        v25 = v42;
        v24 = v43;
        *(v43 + 10) = v23;
        _os_log_impl(&_mh_execute_header, v25, BYTE4(v41), "Prefectching ursk for session %u in peer %s", v24, 0x12u);
        sub_1000752F4(v44);
      }

      else
      {
      }

      if (qword_100501CD0 != -1)
      {
        swift_once();
      }

      v38 = *(off_10050A240 + 4);
      v39 = __CFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        __break(1u);
      }

      else
      {
        *(off_10050A240 + 4) = v40;
        sub_1002433B8(a2, v26);
      }

      return;
    }
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315138;

    v34 = UUID.uuidString.getter();
    v36 = v35;

    v37 = sub_1002FFA0C(v34, v36, &v47);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "No session exists for peer %s", v32, 0xCu);
    sub_1000752F4(v33);
  }
}

void sub_1000C8B8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_10008C808(a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 24 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    swift_endAccess();
    if (qword_100501B70 != -1)
    {
      swift_once();
    }

    v11 = qword_10051B5B0;

    v12 = sub_10024F2B4(v11, a1);

    v13 = sub_1000CA858(v12, sub_10008EBB4);

    if (v13)
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v24 = v9;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25[0] = v17;
        *v16 = 136315138;
        v18 = UUID.uuidString.getter();
        v20 = sub_1002FFA0C(v18, v19, v25);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Processing timesync for %s", v16, 0xCu);
        sub_1000752F4(v17);

        v9 = v24;
      }

      sub_100246580(v9, v8, v10);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No active UWB Lyon session to do timesync for", v23, 2u);
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1000C8E3C(uint64_t a1)
{
  v158 = a1;
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4 + 104;
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v156 = *(v4 + 8);
  v156(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (*(v2 + 16) != 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "LyonUWB is not running", v30, 2u);
    }

    return;
  }

  v155 = v9;
  if (*(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_30;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v160[0] = v34;
    *v33 = 136315138;

    v35 = UUID.uuidString.getter();
    v37 = v36;

    v38 = sub_1002FFA0C(v35, v37, v160);

    *(v33 + 4) = v38;
    v39 = "%s already errored out, not sending device intent";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v31, v32, v39, v33, 0xCu);
    sub_1000752F4(v34);

    goto LABEL_30;
  }

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E7974(v158);
  if (v13 == 2 || (v13 & 1) != 0)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_30;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v160[0] = v34;
    *v33 = 136315138;

    v40 = UUID.uuidString.getter();
    v42 = v41;

    v43 = sub_1002FFA0C(v40, v42, v160);

    *(v33 + 4) = v43;
    v39 = "Not sending device intent: Not in closer state for %s";
    goto LABEL_29;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B5B0;
  v15 = v158;

  v154 = v14;
  v16 = sub_10024F2B8(v14, v15);

  v17 = sub_1000CA858(v16, sub_10008EBB4);

  if (!v17)
  {
    goto LABEL_27;
  }

  type metadata accessor for UWBLyonSession();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

LABEL_27:

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_30;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v160[0] = v34;
    *v33 = 136315138;

    v44 = UUID.uuidString.getter();
    v46 = v45;

    v47 = sub_1002FFA0C(v44, v46, v160);

    *(v33 + 4) = v47;
    v39 = "Not sending device intent: No active UWB Lyon session for %s";
    goto LABEL_29;
  }

  v153 = v17;
  if (*(v18 + OBJC_IVAR____TtC10seserviced10UWBSession_state) != 4)
  {
    v48 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
    v49 = v18;

    v50 = v153;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v50;
      v54 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v54 = 136315394;
      LOBYTE(v161) = *(v49 + v48);
      v55 = String.init<A>(describing:)();
      v57 = sub_1002FFA0C(v55, v56, v160);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;

      v58 = UUID.uuidString.getter();
      v60 = v59;

      v61 = sub_1002FFA0C(v58, v60, v160);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Not sending device intent: UWB session is currently in state %s for %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v19 = *(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
  if (v19 >> 60 == 15)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v160[0] = v23;
      *v22 = 136315138;

      v24 = UUID.uuidString.getter();
      v26 = v25;

      v27 = sub_1002FFA0C(v24, v26, v160);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not sending device intent: No stored reader identifier for peer %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    return;
  }

  v152 = *(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
  v62 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
  swift_beginAccess();
  v150 = *(*(v2 + v62) + 16);
  sub_100069E2C(v152, v19);
  v151 = v19;
  if (v150)
  {
    sub_10008C8DC(v152, v19);
    v63 = v151;
    if (v64)
    {
      swift_endAccess();

      v65 = v152;
      sub_10006A2BC(v152, v63);
      v66 = v63;
      v31 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();
      sub_10006A2D0(v65, v63);

      if (!os_log_type_enabled(v31, v67))
      {

        sub_10006A2D0(v65, v63);
        return;
      }

      v68 = swift_slowAlloc();
      v160[0] = swift_slowAlloc();
      *v68 = 136315394;
      sub_100069E2C(v65, v63);
      v69 = Data.description.getter();
      v71 = v70;
      sub_10006A2D0(v65, v66);
      v72 = sub_1002FFA0C(v69, v71, v160);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;

      v73 = UUID.uuidString.getter();
      v75 = v74;

      v76 = sub_1002FFA0C(v73, v75, v160);

      *(v68 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v31, v67, "Not sending device intent: Ranging blocked for peer by Wallet for reader identifier %s for %s", v68, 0x16u);
      swift_arrayDestroy();

      sub_10006A2D0(v65, v66);
LABEL_30:

      return;
    }
  }

  swift_endAccess();
  if ((*(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) | 0x80) == 0x81)
  {

    v31 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v31, v77))
    {
LABEL_43:

      sub_10006A2D0(v152, v151);
      goto LABEL_30;
    }

    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v160[0] = v79;
    *v78 = 136315138;

    v80 = UUID.uuidString.getter();
    v82 = v81;

    v83 = sub_1002FFA0C(v80, v82, v160);

    *(v78 + 4) = v83;
    v84 = "Not sending device intent: Lock is unlocked for %s";
    goto LABEL_41;
  }

  *v6 = v11;
  v155(v6, v8, v3);
  v150 = v11;
  v85 = _dispatchPreconditionTest(_:)();
  v156(v6, v3);
  if ((v85 & 1) == 0)
  {
    __break(1u);
LABEL_79:
    swift_once();
LABEL_47:
    sub_1002A227C();
    v88 = *(v87 + 16);

    if (!v88)
    {

      v31 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v31, v77))
      {
        goto LABEL_43;
      }

      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v161 = v79;
      *v78 = 136315138;

      v102 = UUID.uuidString.getter();
      v104 = v103;

      v105 = sub_1002FFA0C(v102, v104, &v161);

      *(v78 + 4) = v105;
      v84 = "Not sending device intent: Ranging limit is currently exceeded, and no exception is set for %s";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v31, v77, v84, v78, 0xCu);
      sub_1000752F4(v79);

LABEL_42:

      goto LABEL_43;
    }

    goto LABEL_48;
  }

  v11 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
  v86 = v154;
  swift_beginAccess();
  if (sub_1000C6AD0(1uLL, *&v11[v86]))
  {
    if (qword_100501BF0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_48:
  v149 = v11;
  if (*(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) == 1)
  {
    v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
    v89 = *(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    if (v89 == 14)
    {
      v146 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
      v117 = [objc_opt_self() TLVWithTag:1 value:0];
      if (!v117)
      {
LABEL_84:
        __break(1u);
        return;
      }

      v118 = v117;
      v92 = [v117 asData];

      v93 = 11;
      if (!v92)
      {
LABEL_54:
        v147 = 0xF000000000000000;
        v148 = 0;
LABEL_68:
        v121 = v158;
        v122 = v146;
        *(&v146->isa + v158) = v93;
        v123 = v122;

        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v144 = v125;
          v127 = v126;
          v145 = swift_slowAlloc();
          v161 = v145;
          *v127 = 136315394;
          v159 = *(&v123->isa + v121);
          v128 = String.init<A>(describing:)();
          v146 = v124;
          v130 = sub_1002FFA0C(v128, v129, &v161);

          *(v127 + 4) = v130;
          *(v127 + 12) = 2080;

          v131 = UUID.uuidString.getter();
          v133 = v132;

          v134 = sub_1002FFA0C(v131, v133, &v161);

          *(v127 + 14) = v134;
          v124 = v146;
          _os_log_impl(&_mh_execute_header, v146, v144, "Sending device intent in state: %s for peer %s", v127, 0x16u);
          swift_arrayDestroy();
        }

        v135 = v147;
        v136 = v148;
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        if (v135 >> 60 != 15)
        {
          v137 = qword_10051B188;
          sub_100069E2C(v136, v135);
          v138 = v157;
          v146 = v137;
          sub_100081ED8(2u, 1, v136, v135, v158);
          sub_10006A2D0(v136, v135);
          if (v138)
          {

            sub_10006A2D0(v152, v151);
            sub_10006A2D0(v136, v135);
            return;
          }

          v157 = 0;
          v139 = v150;
          *v6 = v150;
          v155(v6, v8, v3);
          v140 = v139;

          v141 = _dispatchPreconditionTest(_:)();
          v156(v6, v3);
          if (v141)
          {
            LOBYTE(v139) = sub_1000C6AD0(1uLL, *&v149[v154]);
            v10 = v152;
            if (qword_100501BF0 == -1)
            {
LABEL_77:
              sub_1002A227C();
              sub_1002F8EBC(v139 & 1, v142);

              sub_100081838(0, 0x6920656369766544, 0xED0000746E65746ELL, v158);
              sub_10006A2D0(v148, v147);

              sub_10006A2D0(v10, v151);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_77;
        }

        __break(1u);
        goto LABEL_83;
      }

LABEL_67:
      v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v120;
      v148 = v119;

      goto LABEL_68;
    }

    if (v89 != 10)
    {
      if (v89 == 6)
      {
        v146 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
        v90 = [objc_opt_self() TLVWithTag:0 value:0];
        if (!v90)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v91 = v90;
        v92 = [v90 asData];

        v93 = 7;
        if (!v92)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

LABEL_63:
      v106 = v12;
      v107 = v158;

      v31 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v31, v108))
      {
        goto LABEL_43;
      }

      v109 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v109 = 136315394;
      v159 = *(v107 + v106);
      v110 = String.init<A>(describing:)();
      v112 = sub_1002FFA0C(v110, v111, &v161);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2080;

      v113 = UUID.uuidString.getter();
      v115 = v114;

      v116 = sub_1002FFA0C(v113, v115, &v161);

      *(v109 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v31, v108, "Not sending device intent - incorrect state %s for %s", v109, 0x16u);
      swift_arrayDestroy();

      goto LABEL_42;
    }

LABEL_62:
    *(v158 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
    goto LABEL_63;
  }

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v161 = v97;
    *v96 = 136315138;

    v98 = UUID.uuidString.getter();
    v100 = v99;

    v101 = sub_1002FFA0C(v98, v100, &v161);

    *(v96 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v94, v95, "Not sending device intent: URSK not prefetched for %s", v96, 0xCu);
    sub_1000752F4(v97);
  }

  sub_10006A2D0(v152, v151);
}

void sub_1000CA2E8(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501960 == -1)
    {
LABEL_6:
      v9 = qword_10051B288;

      sub_10011333C(a1, v9, a1, v1);

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Not running", v12, 2u);
  }
}

void sub_1000CA51C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (*(v1 + 16) != 1)
  {
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Not running";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v11, v16, v18, v17, 2u);

    goto LABEL_17;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v9 = qword_10051B5B0;

  v10 = sub_10024F2B8(v9, a1);

  v11 = sub_1000CA858(v10, sub_10008EBB4);

  if (!v11)
  {
LABEL_14:
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "No session to cleanup";
    goto LABEL_16;
  }

  type metadata accessor for UWBLyonSession();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_14;
  }

  if ((*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
  {
    v12 = sub_100241AFC(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID), 107);
  }

  sub_100241E60(v12, v13);
  sub_100246878(v14, v15);
LABEL_17:
}

uint64_t sub_1000CA858(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000937D4(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1000937D4(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_1000937D4(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_1000CA97C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

unint64_t *sub_1000CAA04()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 8);
  sub_1000E1ED4(&v1[4], &v5);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v5;
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = sub_1000C5CDC(v5);

    v2 = sub_1000E1FD8(v3, &qword_100503F00, SEEndPoint_ptr, &qword_100503608, sub_1000D5130);
  }

  return v2;
}

uint64_t sub_1000CAAC4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 8);
  sub_1000E04E4(&v1[4], &v5);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v5;
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = sub_1000C603C(v5);

    v2 = sub_1000DFF08(v3);
  }

  return v2;
}

uint64_t sub_1000CAB5C(uint64_t a1)
{
  sub_1000E1E80();
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_10006A178(v13[0], v13[1]))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    sub_100069E2C(*v10, v12);
    sub_1000D589C(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CAC80()
{
  type metadata accessor for LyonUWB(0);
  swift_allocObject();
  result = sub_1000CADF8();
  qword_10051B268 = result;
  return result;
}

uint64_t sub_1000CACC0()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  v5[15] = 1;
  v5[14] = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000CADF8()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers) = _swiftEmptyDictionarySingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1000E055C;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004C6CA8;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1000CAF44()
{
  v1 = *(v0 + 16);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v1;
  sub_100075D50(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v4 = sub_1000C63FC(v3);

  v12 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v11 = v4;
  sub_100075D50(&v11, v10);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000018, 0x8000000100462A90, v5);
  if (qword_100501958 != -1)
  {
    swift_once();
  }

  v12 = &type metadata for Bool;
  LOBYTE(v11) = byte_10051B270;
  sub_100075D50(&v11, v10);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000010, 0x8000000100462AB0, v6);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = sub_100015DA0("lyonuwb.state", isa);

  return v8;
}

void sub_1000CB160()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_11:
    v16[3] = v2;
    v16[4] = &off_1004C6C08;
    v16[0] = v1;

    sub_1002400AC(1uLL, v16);
    sub_100075768(v16, &qword_100502F08, &qword_10040A000);
    *(v1 + 16) = 1;
    return;
  }

  v9 = *(v1 + 16);
  v10 = Logger.logObject.getter();
  if ((v9 & 1) == 0)
  {
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, v13, "Starting LyonUWB", v14, 2u);
    }

    if (qword_100501B70 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LyonUWB is already running", v12, 2u);
  }
}

void sub_1000CB430(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_100068FC4(&qword_100503630, &qword_10040A9F0);
  v3 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  v43 = v3;
  if (type metadata accessor for UWBLyonSession() == &type metadata for String)
  {
    if (v2)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_1000E0514(&qword_100507D00, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v1 = v45;
      v7 = v46;
      v8 = v47;
      v9 = v48;
      v10 = v49;
    }

    else
    {
      v32 = -1 << *(v1 + 32);
      v7 = v1 + 56;
      v8 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v10 = v34 & *(v1 + 56);

      v9 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_49;
    }

LABEL_43:
    v35 = v10;
    v36 = v9;
    if (v10)
    {
LABEL_48:
      v38 = (v35 - 1) & v35;
      v39 = *(*(v1 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      while (1)
      {
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

          v42 = v1;
LABEL_58:
          sub_100093854(v42);

          return;
        }

        sub_1000DEC48(v40);
        v9 = v36;
        v10 = v38;
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_49:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for UWBSession();
        swift_dynamicCast();
        v39 = v44;
        v36 = v9;
        v38 = v10;
      }

      v41 = v1;
    }

    else
    {
      v37 = v9;
      while (1)
      {
        v36 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_61;
        }

        if (v36 >= ((v8 + 64) >> 6))
        {
          break;
        }

        v35 = *(v7 + 8 * v36);
        ++v37;
        if (v35)
        {
          goto LABEL_48;
        }
      }

      v41 = v1;
    }

    sub_100093854(v41);
    return;
  }

  if (v2)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for UWBSession();
    sub_1000E0514(&qword_100507D00, type metadata accessor for UWBSession, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v45;
    v4 = v46;
    v5 = v47;
    v2 = v48;
    v6 = v49;
  }

  else
  {
    v11 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v6 = v13 & *(v1 + 56);
  }

  v14 = (v5 + 64) >> 6;
  v15 = v3 + 56;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_37:
      sub_100093854(v1);
      return;
    }

    type metadata accessor for UWBSession();
    swift_dynamicCast();
    v21 = v44;
    v18 = v2;
    v20 = v6;
LABEL_27:
    v22 = swift_dynamicCastClass();
    if (!v22)
    {

      v42 = v1;
      goto LABEL_58;
    }

    v23 = v22;
    v24 = NSObject._rawHashValue(seed:)(*(v43 + 5));
    v25 = -1 << v43[32];
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*&v15[8 * (v26 >> 6)]) != 0)
    {
      v16 = __clz(__rbit64((-1 << v26) & ~*&v15[8 * (v26 >> 6)])) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_60;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *&v15[8 * v27];
      }

      while (v31 == -1);
      v16 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *&v15[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    *(*(v43 + 6) + 8 * v16) = v23;
    ++*(v43 + 2);
    v2 = v18;
    v6 = v20;
  }

  v17 = v6;
  v18 = v2;
  if (v6)
  {
LABEL_24:
    v20 = (v17 - 1) & v17;
    v44 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    v21 = v44;
    goto LABEL_27;
  }

  v19 = v2;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_37;
    }

    v17 = *(v4 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

id sub_1000CB98C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = v3;
  LOWORD(v6) = a3;
  v7 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 TLVsWithData:isa];

  if (!v9)
  {
    sub_1000755A4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return v3;
  }

  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v34 = 256;
  v32 = 0;
  v33 = 1;
  v31 = 256;
  if (v10 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v28 = v6;
    v12 = 0;
    v6 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v3 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v30 = v13;
      sub_1000CD1F4(&v30, &v36, &v35, &v34, &v32, v5, &v31);
      if (v4)
      {

        goto LABEL_26;
      }

      ++v12;
      if (v3 == i)
      {
        v16 = v36;
        LOWORD(v6) = v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_17:

  if (v16 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (v35 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if ((v34 & 0x100) == 0 && (v33 & 1) == 0)
  {
    v29 = v34;
    v22 = v32;
    if (HIBYTE(v31))
    {
      v23 = 0;
    }

    else
    {
      v23 = v31;
    }

    v24 = objc_allocWithZone(NIAcwgM1Msg);
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v25 = v6;
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = Array._bridgeToObjectiveC()().super.isa;
    v3 = [v24 initWithSupportedUwbConfigIds:v26 supportedPulseShapeCombos:v27 channelBitmask:v29 uwbSessionId:v22 finalData2Bitmask:v23 selectedProtocolVersion:v25];

    return v3;
  }

LABEL_23:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "expected values not found while parsng M1 message", v19, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v20 = 2;
  swift_willThrow();
  v3 = v35;

LABEL_26:

  return v3;
}

id sub_1000CBDA8(uint64_t a1, void *a2)
{
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 TLVsWithData:isa];

  if (!v7)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Could not parse message for M1", v57, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v58 = 0;
    return swift_willThrow();
  }

  v74 = a1;
  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_60:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {

LABEL_49:
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "expected values not found while parsing M3 message", v61, 2u);
    }

    sub_1000755A4();
    swift_allocError();
    *v62 = 2;
    return swift_willThrow();
  }

  v10 = v9;
  v73 = a2;
  v11 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v85 = 1;
  v80 = 1;
  v81 = 1;
  v82 = 1;
  v83 = 1;
  v79 = 1;
  v84 = 1;
  v86 = v9;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    a2 = v12;
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v14 = [v12 tag];
    if (v14 <= 8)
    {
      switch(v14)
      {
        case 4:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_67;
          }

          v31 = result;
          v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_1000939AC(v32, v34, 0, 0, 1);
          if (v2)
          {
            goto LABEL_55;
          }

          BYTE4(v75) = v35;
          v85 = 0;
          break;
        case 6:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_66;
          }

          v50 = result;
          v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = sub_1000939F8(v51, v53, 0, 0, 1);
          if (v2)
          {
            sub_10006A178(v51, v53);
LABEL_55:

            sub_100069E2C(v74, v73);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();
            sub_10006A178(v74, v73);
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v87 = v66;
              *v65 = 136315138;
              sub_100288788(v74, v73);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v67 = BidirectionalCollection<>.joined(separator:)();
              v69 = v68;

              v70 = sub_1002FFA0C(v67, v69, &v87);

              *(v65 + 4) = v70;
              _os_log_impl(&_mh_execute_header, v63, v64, "Incorrectly formatted TLV while parsing for M3: %s", v65, 0xCu);
              sub_1000752F4(v66);
            }

            sub_1000755A4();
            swift_allocError();
            *v71 = 0;
            swift_willThrow();
          }

          v78 = v54;
          sub_10006A178(v51, v53);
          v79 = 0;
          break;
        case 8:
          result = [a2 value];
          if (!result)
          {
            goto LABEL_65;
          }

          v21 = result;
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25 = sub_1000939AC(v22, v24, 0, 0, 1);
          if (v2)
          {
            goto LABEL_55;
          }

          BYTE4(v77) = v25;
          v83 = 0;
          break;
        default:
          goto LABEL_32;
      }
    }

    else if (v14 > 10)
    {
      if (v14 == 11)
      {
        result = [a2 value];
        if (!result)
        {
          goto LABEL_62;
        }

        v45 = result;
        v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_1000939AC(v46, v48, 0, 0, 1);
        if (v2)
        {
          goto LABEL_55;
        }

        LOBYTE(v77) = v49;
        v82 = 0;
      }

      else
      {
        if (v14 != 15)
        {
LABEL_32:
          v36 = a2;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 67109120;
            *(v39 + 4) = [v36 tag];

            _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring nknown attribute tag %u in M3 message", v39, 8u);
            v10 = v86;
          }

          else
          {
          }

          goto LABEL_7;
        }

        result = [a2 value];
        if (!result)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          return result;
        }

        v26 = result;
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_1000939AC(v27, v29, 0, 0, 1);
        if (v2)
        {
          goto LABEL_55;
        }

        LOBYTE(v75) = v30;
        v84 = 0;
        v10 = v86;
      }
    }

    else if (v14 == 9)
    {
      result = [a2 value];
      if (!result)
      {
        goto LABEL_64;
      }

      v40 = result;
      v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1000939AC(v41, v43, 0, 0, 1);
      if (v2)
      {
        goto LABEL_55;
      }

      LOBYTE(v76) = v44;
      v80 = 0;
    }

    else
    {
      result = [a2 value];
      if (!result)
      {
        goto LABEL_63;
      }

      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000939AC(v17, v19, 0, 0, 1);
      if (v2)
      {
        goto LABEL_55;
      }

      BYTE4(v76) = v20;
      v81 = 0;
    }

LABEL_7:

    ++v11;
  }

  while (v13 != v10);

  if ((v85 | v80 | v81 | v82 | v79 | v83 | v84))
  {
    goto LABEL_49;
  }

  LOBYTE(v72) = v75;
  return [objc_allocWithZone(NIAcwgM3Msg) initWithSelectedRanMultiplier:BYTE4(v75) selectedNumChapsPerSlot:v76 numResponders:BYTE4(v76) numSlotsPerRound:v77 supportedSyncCodeIndexBitmask:v78 selectedHoppingConfigBitmask:BYTE4(v77) macMode:v72];
}

void sub_1000CC69C()
{
  v1 = v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() TLVWithData:isa];

  if (v3)
  {
    if ([v3 tag] == 2)
    {
      v4 = [v3 value];
      if (v4)
      {
        v5 = v4;
        [v4 u32BE:0];

        return;
      }

      goto LABEL_24;
    }

    v1 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {

      v10 = v1;
LABEL_22:

      sub_1000755A4();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();

      return;
    }

    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = [v1 tag];
    *(v12 + 8) = 2048;
    v13 = [v1 value];
    if (!v13)
    {
LABEL_25:

      __break(1u);
      return;
    }

    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v17;
    v19 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v19 != 2)
      {
        sub_10006A178(v15, v17);
        v20 = 0;
        goto LABEL_21;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      sub_10006A178(v15, v18);
      v20 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v19)
    {
      sub_10006A178(v15, v17);
      v20 = BYTE6(v17);
LABEL_21:
      *(v12 + 10) = v20;

      _os_log_impl(&_mh_execute_header, v10, v11, "Incorrect attribute id :%u of length : %ld", v12, 0x12u);

      goto LABEL_22;
    }

    sub_10006A178(v15, v18);
    LODWORD(v20) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = v20;
    goto LABEL_21;
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not parse request ranging message", v8, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();
}

void sub_1000CC9AC()
{
  v1 = v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() TLVWithData:isa];

  if (v3)
  {
    if ([v3 tag] == 17)
    {
      v4 = [v3 value];
      if (v4)
      {
        v5 = v4;
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        sub_1000939AC(v6, v8, 0, 0, 0);
        return;
      }

      goto LABEL_24;
    }

    v1 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      v13 = v1;
LABEL_22:

      sub_1000755A4();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();

      return;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = [v1 tag];
    *(v15 + 8) = 2048;
    v16 = [v1 value];
    if (!v16)
    {
LABEL_25:

      __break(1u);
      return;
    }

    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v20;
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 != 2)
      {
        sub_10006A178(v18, v20);
        v23 = 0;
        goto LABEL_21;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      sub_10006A178(v18, v21);
      v23 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v22)
    {
      sub_10006A178(v18, v20);
      v23 = BYTE6(v20);
LABEL_21:
      *(v15 + 10) = v23;

      _os_log_impl(&_mh_execute_header, v13, v14, "Incorrect attribute id :%u of length :%ld", v15, 0x12u);

      goto LABEL_22;
    }

    sub_10006A178(v18, v21);
    LODWORD(v23) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = v23;
    goto LABEL_21;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not parse message for suspend request", v11, 2u);
  }

  sub_1000755A4();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
}

void sub_1000CCCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44[0] = v20;
    *v19 = 136315138;

    v21 = UUID.uuidString.getter();
    v23 = v22;

    v24 = sub_1002FFA0C(v21, v23, v44);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received BT TimeSync event for %s", v19, 0xCu);
    sub_1000752F4(v20);

    a3 = v41;
  }

  if (*(v5 + 16) != 1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "LyonUWB is not running", v40, 2u);
    }

    return;
  }

  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v25 = qword_10051B5B0;

  v26 = sub_10024F2B8(v25, a4);

  v27 = sub_1000CA858(v26, sub_10008EBB4);

  if (v27)
  {
    if (*(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) >= 5u)
    {
      sub_100246580(a1, v42, a3);

      return;
    }
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44[0] = v31;
    *v30 = 136315138;
    LOBYTE(v43) = *(a4 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
    v32 = String.init<A>(describing:)();
    v34 = sub_1002FFA0C(v32, v33, v44);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Queuing timesync event as we are not ready to send in %s", v30, 0xCu);
    sub_1000752F4(v31);
  }

  v35 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v36 = OBJC_IVAR____TtC10seserviced7LyonUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v5 + v36);
  *(v5 + v36) = 0x8000000000000000;
  sub_100314954(a1, v42, a3, a4 + v35, isUniquelyReferenced_nonNull_native);
  *(v5 + v36) = v43;
  swift_endAccess();
}

void sub_1000CD1F4(id *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v13 = *a1;
  v14 = [*a1 tag];
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = [v13 value];
          if (v15)
          {
            v16 = v15;
            v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = sub_1000939F8(v17, v19, 0, 0, 1);
            sub_10006A178(v17, v19);
            if (!v7)
            {
              *a5 = v20;
              *(a5 + 4) = 0;
            }

            return;
          }

          goto LABEL_79;
        }

        goto LABEL_25;
      }

      v44 = [v13 value];
      if (!v44)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v45 = v44;
      a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v31 = v47;
      v48 = v47 >> 62;
      if ((v47 >> 62) <= 1)
      {
        if (!v48)
        {
          sub_10006A178(a2, v47);
          v49 = BYTE6(v47);
LABEL_60:
          if (!v49)
          {
            return;
          }

          v75 = 0;
          while (1)
          {
            v76 = [v13 value];
            if (!v76)
            {
              break;
            }

            v77 = v76;
            v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v79;

            sub_1000939AC(v78, v80, v75, 0, 0);
            if (!v7)
            {
              UInt8._bridgeToObjectiveC()();
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              ++v75;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v49 != v75)
              {
                continue;
              }
            }

            return;
          }

          goto LABEL_76;
        }

        sub_10006A178(a2, v47);
        if (__OFSUB__(HIDWORD(a2), a2))
        {
          goto LABEL_74;
        }

        v49 = HIDWORD(a2) - a2;
        goto LABEL_59;
      }

      if (v48 == 2)
      {
        v65 = a2[2];
        v64 = a2[3];
        sub_10006A178(a2, v31);
        v49 = v64 - v65;
        if (!__OFSUB__(v64, v65))
        {
LABEL_59:
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          __break(1u);
          goto LABEL_72;
        }

        __break(1u);
LABEL_44:
        sub_10006A178(a3, v31);
        v66 = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v33 = v66;
        if (v66 < 1)
        {
          return;
        }

        goto LABEL_46;
      }

      v74 = a2;
    }

    else
    {
      v27 = [v13 value];
      if (!v27)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v28 = v27;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v30;
      v32 = v30 >> 62;
      if ((v30 >> 62) <= 1)
      {
        if (!v32)
        {
          sub_10006A178(a3, v30);
          v33 = BYTE6(v30);
          if (!BYTE6(v30))
          {
            return;
          }

          goto LABEL_46;
        }

        goto LABEL_44;
      }

      if (v32 == 2)
      {
        v63 = a3[2];
        v62 = a3[3];
        sub_10006A178(a3, v31);
        v33 = v62 - v63;
        if (__OFSUB__(v62, v63))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v33 < 1)
        {
          return;
        }

LABEL_46:
        v67 = 0;
        while (1)
        {
          v68 = __OFADD__(v67, 2) ? 0x7FFFFFFFFFFFFFFFLL : v67 + 2;
          v69 = [v13 value];
          if (!v69)
          {
            break;
          }

          v70 = v69;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          sub_100090214(v71, v73, v67, 0, 0);
          sub_10006A178(v71, v73);
          if (!v7)
          {
            UInt16._bridgeToObjectiveC()();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v67 = v68;
            if (v68 < v33)
            {
              continue;
            }
          }

          return;
        }

        goto LABEL_75;
      }

      v74 = a3;
    }

    sub_10006A178(v74, v31);
    return;
  }

  switch(v14)
  {
    case 3:
      v34 = [v13 value];
      if (!v34)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_1000939AC(v36, v38, 0, 0, 1);
      if (!v7)
      {
        *a4 = v39;
        a4[1] = 0;
      }

      break;
    case 16:
      v50 = v13;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v51, v52))
      {

        return;
      }

      v53 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = v81;
      *v53 = 136315138;
      v54 = [v50 value];

      if (v54)
      {
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        sub_100288788(v55, v57);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v58 = BidirectionalCollection<>.joined(separator:)();
        v60 = v59;
        sub_10006A178(v55, v57);

        v61 = sub_1002FFA0C(v58, v60, &v82);

        *(v53 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring vendor specific tag in M1 of value %s", v53, 0xCu);
        sub_1000752F4(v81);

        return;
      }

      goto LABEL_82;
    case 18:
      if (qword_100501958 != -1)
      {
        swift_once();
      }

      if (byte_10051B270 == 1)
      {
        v21 = [v13 value];
        if (!v21)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v22 = v21;
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_1000939AC(v23, v25, 0, 0, 1);
        if (!v7)
        {
          *a7 = v26;
          a7[1] = 0;
        }
      }

      break;
    default:
LABEL_25:
      v40 = v13;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        *(v43 + 4) = [v40 tag];

        _os_log_impl(&_mh_execute_header, v41, v42, "Unknown attribute tag %u in M1 message", v43, 8u);
      }

      else
      {
      }

      return;
  }
}

void sub_1000CD958(void *a1, uint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    swift_once();
LABEL_11:
    v27 = sub_1000E22C4(v14);
    sub_100080E48(a3, v27 & 0x1FF);

    return;
  }

  if (*(v4 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v28, v29, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v30, 8u);
    }

    else
    {
    }

    return;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  if (a2)
  {
    v16 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v16 + 84) = 9;
    *(v16 + 88) = 0;
    swift_willThrow();

    v14 = a2;
    goto LABEL_8;
  }

  if (!a1)
  {
    sub_1000755A4();
    v14 = swift_allocError();
    *v84 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v31 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

  v32 = a1;
  v99 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v102 = v36;
    *v35 = 136315138;

    v37 = UUID.uuidString.getter();
    v38 = v32;
    v40 = v39;

    v41 = sub_1002FFA0C(v37, v40, &v102);
    v32 = v38;

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "UWB Lyon session M2 message for %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10040A950;
  LOWORD(v101) = __rev16([v32 selectedUwbConfigId]);
  v43 = sub_1002B1854(&v101, &v101 + 2);
  v45 = v44;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v43, v45);
  v47 = objc_opt_self();
  v48 = [v47 TLVWithTag:0 value:isa];

  if (!v48)
  {
    __break(1u);
    goto LABEL_44;
  }

  *(v42 + 32) = v48;
  LOBYTE(v101) = [v32 selectedPulseShapeCombo];
  v49 = sub_1002B1854(&v101, &v101 + 1);
  v51 = v50;
  v52 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v49, v51);
  v53 = [v47 TLVWithTag:1 value:v52];

  if (!v53)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v42 + 40) = v53;
  LOBYTE(v101) = [v32 selectedChannelBitmask];
  v54 = sub_1002B1854(&v101, &v101 + 1);
  v56 = v55;
  v57 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v54, v56);
  v58 = [v47 TLVWithTag:3 value:v57];

  if (!v58)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v42 + 48) = v58;
  LODWORD(v101) = bswap32([v32 supportedSyncCodeIndexBitmask]);
  v59 = sub_1002B1854(&v101, &v101 + 4);
  v61 = v60;
  v62 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v59, v61);
  v63 = [v47 TLVWithTag:6 value:v62];

  if (!v63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v42 + 56) = v63;
  LOBYTE(v101) = [v32 minRanMultiplier];
  v64 = sub_1002B1854(&v101, &v101 + 1);
  v66 = v65;
  v67 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v64, v66);
  v68 = [v47 TLVWithTag:4 value:v67];

  if (!v68)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v42 + 64) = v68;
  LOBYTE(v101) = [v32 supportedSlotBitmask];
  v69 = sub_1002B1854(&v101, &v101 + 1);
  v71 = v70;
  v72 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v69, v71);
  v73 = [v47 TLVWithTag:5 value:v72];

  if (!v73)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v42 + 72) = v73;
  LOBYTE(v101) = [v32 supportedHoppingConfigBitmask];
  v74 = sub_1002B1854(&v101, &v101 + 1);
  v76 = v75;
  v77 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v74, v76);
  v78 = [v47 TLVWithTag:8 value:v77];

  if (!v78)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v42 + 80) = v78;
  v102 = v42;
  v100 = v32;
  if ([v32 selectedFinalData2Bitmask])
  {
    if (qword_100501958 != -1)
    {
      swift_once();
    }

    if (byte_10051B270 == 1)
    {
      LOBYTE(v101) = [v100 selectedFinalData2Bitmask];
      v79 = sub_1002B1854(&v101, &v101 + 1);
      v81 = v80;
      v82 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v79, v81);
      v83 = [v47 TLVWithTag:18 value:v82];

      if (v83)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_34;
      }

LABEL_50:
      __break(1u);
      return;
    }
  }

LABEL_34:
  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
  v85 = Array._bridgeToObjectiveC()().super.isa;

  v86 = [v47 dataWithTLVs:v85];

  if (!v86)
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v101 = v93;
      *v92 = 136315138;

      v94 = UUID.uuidString.getter();
      v96 = v95;

      v97 = sub_1002FFA0C(v94, v96, &v101);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v90, v91, "UWB Lyon session M2 message for %s could not be created", v92, 0xCu);
      sub_1000752F4(v93);
    }

    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    sub_1000755A4();
    v14 = swift_allocError();
    *v98 = 0;
    swift_willThrow();

LABEL_8:

    swift_errorRetain();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v19 = 136315394;

      v20 = UUID.uuidString.getter();
      v22 = v21;

      v23 = sub_1002FFA0C(v20, v22, &v102);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1002FFA0C(v24, v25, &v102);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to process M2 message for %s %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

  v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100081ED8(1u, 1, v87, v89, a3);
  sub_100081644(1);
  sub_100081838(0, 0xD000000000000012, 0x8000000100462B70, a3);

  sub_10006A178(v87, v89);
}

void sub_1000CE630(void *a1, void *a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_11:
    v26 = sub_1000E22C4(v11);
    sub_100080E48(a3, v26 & 0x1FF);

    return;
  }

  if (*(v4 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v27, v28, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v29, 8u);

      return;
    }

    goto LABEL_15;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  if (a2)
  {
    v15 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v15 + 84) = 9;
    *(v15 + 88) = 0;
    swift_willThrow();

    v11 = a2;
    goto LABEL_8;
  }

  if (!a1)
  {
    sub_1000755A4();
    v11 = swift_allocError();
    *v33 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v30 = qword_1005018F8;

  v31 = a1;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_10051B188;
  sub_100081644(1);
  v34 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

  v83[1] = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v35, v36);
  v83[2] = v32;
  v84 = v31;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v86 = v39;
    *v38 = 136315138;

    v40 = UUID.uuidString.getter();
    v42 = v41;

    v43 = sub_1002FFA0C(v40, v42, &v86);
    v31 = v84;

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "UWB Lyon session M4 message for %s", v38, 0xCu);
    sub_1000752F4(v39);
  }

  v44 = objc_opt_self();
  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10040A960;
  LODWORD(v86) = bswap32([v31 stsIndex0]);
  v46 = v31;
  v47 = sub_1002B1854(&v86, &v86 + 4);
  v49 = v48;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v47, v49);
  v85 = v44;
  v51 = [v44 TLVWithTag:12 value:isa];

  if (!v51)
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v45 + 32) = v51;
  v86 = bswap64([v46 uwbTime0]);
  v52 = sub_1002B1854(&v86, &v87);
  v54 = v53;
  v55 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v52, v54);
  v56 = [v85 TLVWithTag:13 value:v55];

  if (!v56)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v45 + 40) = v56;
  LODWORD(v86) = bswap32([v46 hopKey]);
  v57 = sub_1002B1854(&v86, &v86 + 4);
  v59 = v58;
  v60 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v57, v59);
  v61 = [v85 TLVWithTag:14 value:v60];

  if (!v61)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v45 + 48) = v61;
  LOBYTE(v86) = [v46 selectedSyncCodeIndex];
  v62 = sub_1002B1854(&v86, &v86 + 1);
  v64 = v63;
  v65 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v62, v64);
  v66 = [v85 TLVWithTag:7 value:v65];

  if (v66)
  {
    *(v45 + 56) = v66;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v67 = Array._bridgeToObjectiveC()().super.isa;

    v68 = [v85 dataWithTLVs:v67];

    if (v68)
    {
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      sub_100081ED8(1u, 3, v69, v71, a3);
      v72 = v84;
      sub_10006A178(v69, v71);

      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 10;
      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
LABEL_15:

      return;
    }

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v86 = v76;
      *v75 = 136315138;

      v77 = UUID.uuidString.getter();
      v79 = v78;

      v80 = sub_1002FFA0C(v77, v79, &v86);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "UWB Lyon session M4 message for %s could not be created", v75, 0xCu);
      sub_1000752F4(v76);
    }

    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    v81 = v84;
    sub_1000755A4();
    v11 = swift_allocError();
    *v82 = 2;
    swift_willThrow();

LABEL_8:

    swift_errorRetain();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v18 = 136315394;

      v19 = UUID.uuidString.getter();
      v21 = v20;

      v22 = sub_1002FFA0C(v19, v21, &v86);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1002FFA0C(v23, v24, &v86);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to process M4 message for %s %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
}

void sub_1000CF0B8(void *a1, uint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_25:
    v60 = sub_1000E22C4(v14);
    sub_100080E48(a3, v60 & 0x1FF);

    return;
  }

  if (*(v4 + 16) != 1 || *a3 != _TtC10seserviced8LyonPeer)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v16, v17, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v18, 8u);
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    v15 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
    *(v15 + 84) = 9;
    *(v15 + 88) = 0;
    swift_willThrow();

    v14 = a2;
    goto LABEL_22;
  }

  if (!a1)
  {
    sub_1000755A4();
    v14 = swift_allocError();
    *v49 = 0;
    swift_willThrow();

LABEL_22:

    swift_errorRetain();
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *&v65 = swift_slowAlloc();
      *v52 = 136315394;

      v53 = UUID.uuidString.getter();
      v55 = v54;

      v56 = sub_1002FFA0C(v53, v55, &v65);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v57 = Error.localizedDescription.getter();
      v59 = sub_1002FFA0C(v57, v58, &v65);

      *(v52 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to process resume request for %s %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_1005018F8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v65 = v23;
    *v22 = 136315138;

    v24 = UUID.uuidString.getter();
    v26 = v25;

    v27 = sub_1002FFA0C(v24, v26, &v65);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "UWB Lyon session Ranging response message for %s", v22, 0xCu);
    sub_1000752F4(v23);
  }

  v65 = xmmword_1004098D0;
  v62 = v19;
  LODWORD(v63) = bswap32([v19 stsIndex0]);
  v28 = sub_1002B1854(&v63, &v63 + 4);
  v30 = v29;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v28, v30);
  v32 = objc_opt_self();
  v33 = [v32 TLVWithTag:12 value:isa];

  if (!v33)
  {
    __break(1u);
    goto LABEL_29;
  }

  v34 = [v33 asData];

  if (!v34)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  Data.append(_:)();
  sub_10006A178(v35, v37);
  v63 = bswap64([v62 uwbTime0]);
  v38 = sub_1002B1854(&v63, &v64);
  v40 = v39;
  v41 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v38, v40);
  v42 = [v32 TLVWithTag:13 value:v41];

  if (!v42)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v43 = [v42 asData];

  if (!v43)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  Data.append(_:)();
  sub_10006A178(v44, v46);
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 10;
  *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v47 = v65;
  sub_100081ED8(1u, 7, v65, *(&v65 + 1), a3);
  v48 = v62;
  sub_100081644(1);

  sub_10006A178(v47, *(&v47 + 1));
}

void sub_1000CF8F4(uint64_t a1)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
LABEL_23:
    swift_once();
LABEL_16:
    sub_100081ED8(1u, 4, v8, v5, a1);
    if (v2)
    {
      sub_10006A178(v8, v5);
    }

    else
    {
      sub_100081838(0, 0xD000000000000015, 0x8000000100462AF0, a1);
      sub_10006A178(v8, v5);
      *(a1 + v3) = 12;
    }

    return;
  }

  if (*(v1 + 16) != 1)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "LyonUWB is not running";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "UWB sessionID is not cached, cannot pause ranging";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 10)
  {
    v15 = [objc_opt_self() TLVWithTag:2 unsignedLongValue:bswap32(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID))];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 asData];

      if (v17)
      {
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v18;

        if (qword_1005018F8 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v21 = 136315394;
    v29[7] = *(a1 + v3);
    v22 = String.init<A>(describing:)();
    v24 = sub_1002FFA0C(v22, v23, &v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;

    v25 = UUID.uuidString.getter();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v30);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Device state is %s, not sending pause ranging request for %s", v21, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000CFDD0(uint64_t a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_7:
    sub_100073DEC(a2);
    if (!a1)
    {
      v33 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v43[1] = v33;
        v37 = v36;
        v38 = swift_slowAlloc();
        v44[0] = v38;
        *v37 = 136315138;

        v39 = UUID.uuidString.getter();
        v41 = v40;

        v42 = sub_1002FFA0C(v39, v41, v44);

        *(v37 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "NI URSK prefetched for %s", v37, 0xCu);
        sub_1000752F4(v38);
      }

      sub_100073178(a2);
      *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) = 1;
      sub_1000C8E3C(a2);
      goto LABEL_21;
    }

    v13 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID);
    v14 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4);

    swift_errorRetain();
    sub_100073170();
    sub_100073170();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13;
      }

      v18 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v18 = 136315650;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_1002FFA0C(v19, v20, v44);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;

      v22 = UUID.uuidString.getter();
      v24 = v23;

      v25 = sub_1002FFA0C(v22, v24, v44);

      *(v18 + 14) = v25;
      *(v18 + 22) = 1024;
      *(v18 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to prefetch URSK %s for %s with session ID 0x%x", v18, 0x1Cu);
      swift_arrayDestroy();
    }

    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v26 = *(off_10050A240 + 10);
    v27 = __CFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      *(off_10050A240 + 10) = v28;
      if (qword_1005018F8 == -1)
      {
LABEL_17:
        v29 = sub_1000E22C4(a1);
        sub_100080E48(a2, v29 & 0x1FF);

        goto LABEL_21;
      }
    }

    swift_once();
    goto LABEL_17;
  }

  if (*(v3 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    v12 = qword_1005018E8;

    if (v12 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v30, v31, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v32, 8u);

    return;
  }

LABEL_21:
}

void sub_1000D0564(void *a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v3 + 16) != 1 || *a2 != _TtC10seserviced8LyonPeer)
    {

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = *(v3 + 16);

        _os_log_impl(&_mh_execute_header, v21, v22, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v23, 8u);

        return;
      }

      goto LABEL_15;
    }

    if (a1)
    {
      v12 = a1;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136316162;

        v17 = UUID.uuidString.getter();
        v19 = v18;

        v20 = sub_1002FFA0C(v17, v19, &v32);

        *(v15 + 4) = v20;
        *(v15 + 12) = 256;
        LOBYTE(v20) = [v12 lastBtRssiValue];

        *(v15 + 14) = v20;
        *(v15 + 15) = 1024;
        LODWORD(v20) = [v12 ioStateDisplacing];

        *(v15 + 17) = v20;
        *(v15 + 21) = 1024;
        LODWORD(v20) = [v12 explicitPAITriggered];

        *(v15 + 23) = v20;
        *(v15 + 27) = 1024;
        LODWORD(v20) = [v12 currentSFInBubble];

        *(v15 + 29) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "AOP ZoneUpdate received for %s with lastBtRssiVal: %hhd, ioStateDisplacing: %{BOOL}d, explicitPAITriggered: %{BOOL}d, currentSFInBubble: %{BOOL}d", v15, 0x21u);
        sub_1000752F4(v16);

LABEL_14:
LABEL_15:

        return;
      }
    }

    else
    {

      v12 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;

        v27 = UUID.uuidString.getter();
        v29 = v28;

        v30 = sub_1002FFA0C(v27, v29, &v32);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v12, v24, "Null AOP ZoneUpdate received for %s", v25, 0xCu);
        sub_1000752F4(v26);

        goto LABEL_14;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D0AB0(void *a1, uint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
LABEL_37:
    v102 = sub_1000E22C4(v14);
    sub_100080E48(a3, v102 & 0x1FF);

    return;
  }

  if (v4[16] != 1 || *a3 != _TtC10seserviced8LyonPeer || !a3)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v4[16];

      _os_log_impl(&_mh_execute_header, v17, v18, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v19, 8u);
    }

    else
    {
    }

    return;
  }

  if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 == 512)
  {
    p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    if (a2)
    {
      v16 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v16 + 84) = 9;
      *(v16 + 88) = 0;
      swift_willThrow();

      v14 = a2;
      goto LABEL_34;
    }

    if (!a1)
    {
      sub_1000755A4();
      v14 = swift_allocError();
      *v81 = 0;
      swift_willThrow();

      goto LABEL_34;
    }

    v28 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;

    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v111[1] = v28;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v113 = v34;
      *v33 = 136315138;

      v35 = UUID.uuidString.getter();
      v37 = v36;

      v38 = sub_1002FFA0C(v35, v37, &v113);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "NI timesync message for %s", v33, 0xCu);
      sub_1000752F4(v34);
    }

    v39 = objc_opt_self();
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10040A950;
    v113 = bswap64([v29 deviceEventCount]);
    v41 = sub_1002B1854(&v113, &v114);
    v43 = v42;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v41, v43);
    v45 = [v39 TLVWithTag:0 value:isa];

    if (v45)
    {
      *(v40 + 32) = v45;
      v113 = bswap64([v29 uwbDeviceTimeUs]);
      v46 = sub_1002B1854(&v113, &v114);
      v48 = v47;
      v49 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v46, v48);
      v50 = [v39 TLVWithTag:1 value:v49];

      if (v50)
      {
        *(v40 + 40) = v50;
        LOBYTE(v113) = [v29 uwbDeviceTimeUncertainty];
        v51 = sub_1002B1854(&v113, &v113 + 1);
        v53 = v52;
        v54 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v51, v53);
        v55 = [v39 TLVWithTag:2 value:v54];

        if (v55)
        {
          *(v40 + 48) = v55;
          LOBYTE(v113) = [v29 uwbClockSkewMeasurementAvailable];
          v56 = sub_1002B1854(&v113, &v113 + 1);
          v58 = v57;
          v59 = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A178(v56, v58);
          v60 = [v39 TLVWithTag:3 value:v59];

          if (v60)
          {
            *(v40 + 56) = v60;
            LOWORD(v113) = __rev16([v29 deviceMaxPpm]);
            v61 = sub_1002B1854(&v113, &v113 + 2);
            v63 = v62;
            v64 = Data._bridgeToObjectiveC()().super.isa;
            sub_10006A178(v61, v63);
            v65 = [v39 TLVWithTag:4 value:v64];

            if (v65)
            {
              *(v40 + 64) = v65;
              LOBYTE(v113) = [v29 success];
              v66 = sub_1002B1854(&v113, &v113 + 1);
              v68 = v67;
              v69 = Data._bridgeToObjectiveC()().super.isa;
              sub_10006A178(v66, v68);
              v70 = [v39 TLVWithTag:5 value:v69];

              if (v70)
              {
                *(v40 + 72) = v70;
                v112 = v29;
                LOWORD(v113) = __rev16([v29 retryDelay]);
                v71 = sub_1002B1854(&v113, &v113 + 2);
                v73 = v72;
                v74 = Data._bridgeToObjectiveC()().super.isa;
                sub_10006A178(v71, v73);
                v75 = [v39 TLVWithTag:6 value:v74];

                p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
                if (v75)
                {
                  *(v40 + 80) = v75;
                  sub_10009393C(0, &qword_100502418, SESTLV_ptr);
                  v76 = Array._bridgeToObjectiveC()().super.isa;

                  v77 = [v39 dataWithTLVs:v76];

                  if (v77)
                  {
                    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v80 = v79;

                    if (qword_1005018F8 != -1)
                    {
                      swift_once();
                    }

                    sub_100081ED8(3u, 0, v78, v80, a3);
                    if (*(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 5)
                    {
                      *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 6;
                      sub_1000C8E3C(a3);
                      sub_10006A178(v78, v80);

                      return;
                    }

                    v103 = *(a3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
                    v104 = *(v103 + 160);
                    v105 = __CFADD__(v104, 1);
                    v106 = v104 + 1;
                    if (v105)
                    {
                      __break(1u);
                    }

                    else
                    {
                      *(v103 + 160) = v106;
                      v107 = qword_100501CD0;

                      v4 = v112;
                      if (v107 == -1)
                      {
LABEL_42:
                        v108 = off_10050A240;
                        sub_10006A178(v78, v80);

                        v109 = v108[24];
                        v105 = __CFADD__(v109, 1);
                        v110 = v109 + 1;
                        if (v105)
                        {
                          __break(1u);
                        }

                        v108[24] = v110;
                        return;
                      }
                    }

                    swift_once();
                    goto LABEL_42;
                  }

                  v82 = Logger.logObject.getter();
                  v83 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v82, v83))
                  {
                    v84 = swift_slowAlloc();
                    v85 = swift_slowAlloc();
                    v113 = v85;
                    *v84 = 136315138;

                    v86 = UUID.uuidString.getter();
                    v88 = v87;

                    v89 = sub_1002FFA0C(v86, v88, &v113);
                    p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;

                    *(v84 + 4) = v89;
                    _os_log_impl(&_mh_execute_header, v82, v83, "UWB Lyon session timesync message for %s could not be created", v84, 0xCu);
                    sub_1000752F4(v85);
                  }

                  sub_1000755A4();
                  v14 = swift_allocError();
                  *v90 = 0;
                  swift_willThrow();

LABEL_34:

                  swift_errorRetain();
                  swift_errorRetain();
                  v91 = Logger.logObject.getter();
                  v92 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v91, v92))
                  {
                    v93 = swift_slowAlloc();
                    v94 = swift_slowAlloc();
                    v95 = p_class_meths;
                    v96 = swift_slowAlloc();
                    v113 = v96;
                    *v93 = 136315394;

                    v97 = UUID.uuidString.getter();
                    v99 = v98;

                    v100 = sub_1002FFA0C(v97, v99, &v113);

                    *(v93 + 4) = v100;
                    *(v93 + 12) = 2112;
                    swift_errorRetain();
                    v101 = _swift_stdlib_bridgeErrorToNSError();
                    *(v93 + 14) = v101;
                    *v94 = v101;
                    _os_log_impl(&_mh_execute_header, v91, v92, "Failed to process time sync for %s with %@", v93, 0x16u);
                    sub_100075768(v94, &unk_100503F70, &unk_10040B2E0);

                    sub_1000752F4(v96);
                    p_class_meths = v95;
                  }

                  if (p_class_meths[287] == -1)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_45;
                }

LABEL_55:
                __break(1u);
                return;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v113 = v23;
    *v22 = 136315138;

    v24 = UUID.uuidString.getter();
    v26 = v25;

    v27 = sub_1002FFA0C(v24, v26, &v113);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s already errored out, ignoring timesync message", v22, 0xCu);
    sub_1000752F4(v23);
  }
}

void sub_1000D1840(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *a3;
  if ((a1 & 0x10000) != 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v16 = v5;
      sub_1000E1E2C();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1002FFA0C(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve the BLE connection handle %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    sub_100080E48(a2, 0);
  }

  else
  {
    if (qword_100501B70 != -1)
    {
      v14 = *a3;
      swift_once();
      v6 = v14;
    }

    v15[3] = v6;
    v15[4] = &off_1004C6C48;
    v15[0] = a3;

    sub_1000752F4(v15);
  }
}

void sub_1000D1BA4(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    goto LABEL_15;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = UUID.uuidString.getter();
    v16 = sub_1002FFA0C(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "UWB Lyon session started running for %s", v12, 0xCu);
    sub_1000752F4(v13);
  }

  if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
  {
    v17 = qword_100501B58;

    if (v17 == -1)
    {
LABEL_9:
      sub_100223D5C(a1);
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v20, 8u);

    return;
  }

LABEL_13:
}

void sub_1000D1F18(char a1, __objc2_class **a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_18:
    sub_100080E48(a2, 1);
    goto LABEL_19;
  }

  if (*(v3 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    if ((a1 & 4) != 0)
    {
      v18 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      *(v18 + 84) = 5;
      v13 = (v18 + 88);
    }

    else
    {
      v12 = *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
      v13 = (v12 + 88);
      if ((a1 & 2) != 0)
      {
        v14 = 6;
      }

      else
      {
        v14 = 9;
      }

      *(v12 + 84) = v14;
    }

    *v13 = 0;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "UWB Lyon session suspended; disconnecting until uwb is resumed", v21, 2u);
    }

    sub_1000D2270(a2);
    if (qword_1005018F8 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v17, 8u);

    return;
  }

LABEL_19:
}

void sub_1000D2270(uint64_t a1)
{

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v4 = 136315394;

    v5 = UUID.uuidString.getter();
    v7 = v6;

    v8 = sub_1002FFA0C(v5, v7, v19);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = String.init<A>(describing:)();
    v11 = sub_1002FFA0C(v9, v10, v19);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending NI ranging paused notification %s in state %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v12 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) != 10)
  {
    goto LABEL_9;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() TLVWithTag:5 value:0];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 asData];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      sub_100081ED8(2u, 1, v16, v18, a1);
      sub_10006A178(v16, v18);
LABEL_9:
      *(a1 + v12) = 14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000D262C(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v2 + 16) != 1 || *a1 != _TtC10seserviced8LyonPeer)
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v18, v19, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v20, 8u);

        return;
      }

      goto LABEL_11;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;

      v14 = UUID.uuidString.getter();
      v16 = v15;

      v17 = sub_1002FFA0C(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "NI session resumed for %s", v12, 0xCu);
      sub_1000752F4(v13);

LABEL_11:

      return;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D297C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_6:
    v9 = qword_10051B5B0;

    v10 = sub_10024F2B8(v9, a1);

    v11 = sub_1000CA858(v10, sub_10008EBB4);

    if (v11)
    {
      type metadata accessor for UWBLyonSession();
      if (swift_dynamicCastClass())
      {
        v12 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState);
        if (v12 == 13 || v12 == 10)
        {
          if ((*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID + 4) & 1) == 0)
          {
            sub_100241AFC(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID), 107);
            sub_1000D2270(a1);
LABEL_27:

            return;
          }

          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v31, v32))
          {
LABEL_26:

            goto LABEL_27;
          }

          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v39 = v15;
          *v14 = 136315138;

          v16 = UUID.uuidString.getter();
          v18 = v17;

          v19 = sub_1002FFA0C(v16, v18, &v39);

          *(v14 + 4) = v19;
          v20 = "Trying to pause ranging for %s with no uwbsessionID";
        }

        else
        {

          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v31, v32))
          {
            goto LABEL_26;
          }

          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v39 = v15;
          *v14 = 136315138;

          v34 = UUID.uuidString.getter();
          v36 = v35;

          v37 = sub_1002FFA0C(v34, v36, &v39);

          *(v14 + 4) = v37;
          v20 = "UWB session not ranging for %s, no need to pause";
        }

        _os_log_impl(&_mh_execute_header, v31, v32, v20, v14, 0xCu);
        sub_1000752F4(v15);

        goto LABEL_26;
      }
    }

    v11 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;

      v27 = UUID.uuidString.getter();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, &v39);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v11, v24, "No active UWB Lyon session for %s, cannot pause ranging", v25, 0xCu);
      sub_1000752F4(v26);
    }

    goto LABEL_27;
  }

  if (*(v1 + 16) == 1)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "LyonUWB is not running", v23, 2u);
  }
}

void sub_1000D2F30(uint64_t a1, unint64_t a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = *(v11 + 8);
  v11 += 8;
  v16(v13, v10);
  if (v14)
  {
    if (*(v6 + 16) != 1)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "LyonUWB is not running", v26, 2u);
      }

      return;
    }

    v17 = sub_10013044C(a1, a2);
    if (v18 >> 60 == 15)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&aBlock = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1002FFA0C(a1, a2, &aBlock);
        _os_log_impl(&_mh_execute_header, v19, v20, "Trying to suspend ranging for invalied reader identifier %s", v21, 0xCu);
        sub_1000752F4(v22);
      }

      sub_1000755A4();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      return;
    }

    v11 = v17;
    v27 = v18;
    v28 = v18 >> 62;
    v156 = v17;
    if ((v18 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_30;
      }

      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        __break(1u);
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
      }

      if (v32 != 32)
      {
        goto LABEL_30;
      }
    }

    else if (v28)
    {
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_124;
      }

      if (HIDWORD(v17) - v17 != 32)
      {
LABEL_30:
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&aBlock = v58;
          *v57 = 136315394;
          v157 = sub_100288788(v11, v27);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v59 = BidirectionalCollection<>.joined(separator:)();
          v61 = v60;

          v62 = sub_1002FFA0C(v59, v61, &aBlock);
          v11 = v156;

          *(v57 + 4) = v62;
          *(v57 + 12) = 2048;
          *(v57 + 14) = 32;
          _os_log_impl(&_mh_execute_header, v55, v56, "Reader Identifier of invalid length %s, expected %ld", v57, 0x16u);
          sub_1000752F4(v58);
        }

LABEL_33:
        sub_1000755A4();
        swift_allocError();
        *v63 = 0;
        swift_willThrow();
        v64 = v11;
        v65 = v27;
        goto LABEL_116;
      }
    }

    else if (BYTE6(v18) != 32)
    {
      goto LABEL_30;
    }

    v152 = v18 >> 62;
    v33 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
    swift_beginAccess();
    if (*(*(v6 + v33) + 16))
    {
      sub_10008C8DC(v11, v27);
      if (v34)
      {
        swift_endAccess();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Trying to suspend ranging for reader identifier for which it is already suspended ", v37, 2u);
        }

        goto LABEL_33;
      }
    }

    v155 = v27;
    swift_endAccess();
    v38 = swift_allocObject();
    v38[2] = v6;
    v38[3] = v11;
    v38[4] = v155;
    v39 = objc_allocWithZone(SESTimer);
    v161 = sub_1000E396C;
    v162 = v38;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v40 = v155;
    v159 = sub_100080830;
    v160 = &unk_1004C6CF8;
    v41 = _Block_copy(&aBlock);

    sub_10006A2BC(v11, v40);
    v42 = sub_1003AE50C(v39, v15, v41);
    _Block_release(v41);

    sub_100069E2C(v11, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    sub_10006A2D0(v11, v40);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&aBlock = v153;
      *v45 = 136315394;
      v46 = sub_100288788(v156, v40);
      v154 = v42;
      v157 = v46;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      LODWORD(v151) = v44;
      v47 = BidirectionalCollection<>.joined(separator:)();
      v49 = v48;
      v42 = v154;

      v50 = sub_1002FFA0C(v47, v49, &aBlock);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2048;
      *(v45 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v43, v151, "Blocking reader identifier %s from xpc command for %f seconds", v45, 0x16u);
      sub_1000752F4(v153);

      v11 = v156;
    }

    swift_beginAccess();
    sub_10006A2BC(v11, v40);
    v51 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v6 + v33);
    *(v6 + v33) = 0x8000000000000000;
    v148 = v51;
    sub_100315DC0(v51, v11, v40, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v11, v40);
    *(v6 + v33) = v157;
    swift_endAccess();
    if (qword_100501D78 == -1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_26:
  v53 = sub_1000CAAC4();
  v10 = v53;
  if ((v53 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer(0);
    sub_1000E0514(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
    Set.Iterator.init(_cocoa:)();
    v10 = v163;
    a1 = v164;
    v54 = v165;
    v13 = v166;
    a2 = v167;
  }

  else
  {
    v13 = 0;
    v66 = -1 << *(v53 + 32);
    a1 = v53 + 56;
    v54 = ~v66;
    v67 = -v66;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    a2 = v68 & *(v53 + 56);
  }

  v147 = v54;
  v69 = (v54 + 64) >> 6;
  v70 = __OFSUB__(HIDWORD(v11), v11);
  v144 = v70;
  v143 = HIDWORD(v11) - v11;
  v146 = BYTE6(v155);
  if (v11)
  {
    v71 = 0;
  }

  else
  {
    v71 = v155 == 0xC000000000000000;
  }

  v72 = v71;
  v145 = v72;
  v154 = v10;
  v149 = v6;
  while (1)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v73 = v13;
      v74 = a2;
      v75 = v13;
      if (!a2)
      {
        while (1)
        {
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v75 >= v69)
          {
            goto LABEL_115;
          }

          v74 = *(a1 + 8 * v75);
          v73 = (v73 + 1);
          if (v74)
          {
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_2;
      }

LABEL_54:
      v76 = (v74 - 1) & v74;
      v77 = *(*(v10 + 48) + ((v75 << 9) | (8 * __clz(__rbit64(v74)))));

      if (!v77)
      {
        goto LABEL_117;
      }

      goto LABEL_58;
    }

    v78 = __CocoaSet.Iterator.next()();
    if (!v78)
    {
      break;
    }

    v157 = v78;
    type metadata accessor for Peer(0);
    swift_dynamicCast();
    v77 = aBlock;
    v75 = v13;
    v76 = a2;
    v10 = v154;
    if (!aBlock)
    {
LABEL_117:
      v11 = v156;
      goto LABEL_115;
    }

LABEL_58:
    if (*v77 == _TtC10seserviced8LyonPeer)
    {
      v153 = v5;
      v80 = *(v77 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
      v79 = *(v77 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8);
      if (v79 >> 60 == 15)
      {
        v81 = v155;
        v82 = v156;
        sub_10006A2BC(v156, v155);
        sub_10006A2BC(v80, v79);
        v11 = v82;

        sub_10006A2D0(v80, v79);
        v83 = v81;
        v10 = v154;
        sub_10006A2D0(v82, v83);
        v13 = v75;
        a2 = v76;
        v6 = v149;
        v5 = v153;
      }

      else
      {
        v84 = v79 >> 62;
        v150 = v76;
        v151 = v79;
        if (v79 >> 62 == 3)
        {
          v85 = 0;
          if (v152 == 3 && !v80 && v79 == 0xC000000000000000)
          {
            if (v145)
            {
              sub_10006A2BC(0, 0xC000000000000000);
              sub_10006A2BC(0, 0xC000000000000000);
              sub_10006A2D0(0, 0xC000000000000000);
              v87 = v80;
              v88 = v151;
LABEL_95:
              sub_10006A2D0(v87, v88);
LABEL_96:
              sub_1000D297C(v77);
              goto LABEL_97;
            }

LABEL_94:
            v104 = v155;
            v105 = v156;
            sub_10006A2BC(v156, v155);
            v106 = v80;
            v87 = v80;
            v88 = v151;
            sub_10006A2BC(v106, v151);
            sub_10006A2D0(v105, v104);
            goto LABEL_95;
          }
        }

        else if (v84 > 1)
        {
          if (v84 == 2)
          {
            v90 = *(v80 + 16);
            v89 = *(v80 + 24);
            v31 = __OFSUB__(v89, v90);
            v85 = v89 - v90;
            if (v31)
            {
              goto LABEL_128;
            }
          }

          else
          {
            v85 = 0;
          }
        }

        else if (v84)
        {
          LODWORD(v85) = HIDWORD(v80) - v80;
          if (__OFSUB__(HIDWORD(v80), v80))
          {
            goto LABEL_127;
          }

          v85 = v85;
        }

        else
        {
          v85 = BYTE6(v79);
        }

        if (v152 > 1)
        {
          if (v152 != 2)
          {
            if (v85)
            {
LABEL_93:
              v99 = v155;
              v100 = v156;
              sub_10006A2BC(v156, v155);
              v101 = v80;
              v102 = v80;
              v103 = v151;
              sub_10006A2BC(v101, v151);
              sub_10006A2D0(v100, v99);
              sub_10006A2D0(v102, v103);
              goto LABEL_97;
            }

            goto LABEL_94;
          }

          v93 = *(v156 + 16);
          v92 = *(v156 + 24);
          v31 = __OFSUB__(v92, v93);
          v91 = v92 - v93;
          if (v31)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v91 = v146;
          if (v152)
          {
            v91 = v143;
            if (v144)
            {
              goto LABEL_126;
            }
          }
        }

        if (v85 != v91)
        {
          goto LABEL_93;
        }

        if (v85 < 1)
        {
          goto LABEL_94;
        }

        if (v84 <= 1)
        {
          if (!v84)
          {
            *&aBlock = v80;
            v94 = v151;
            DWORD2(aBlock) = v151;
            WORD6(aBlock) = WORD2(v151);
            v141 = &aBlock + BYTE6(v151);
            v95 = v80;
            v96 = v155;
            v97 = v156;
            sub_10006A2BC(v156, v155);
            sub_10006A2BC(v95, v94);
            sub_10006A2BC(v97, v96);
            sub_10006A2BC(v95, v94);
            v98 = v153;
            sub_10019F024(&aBlock, v97, v96, &v157);
            v153 = v98;
            sub_10006A2D0(v97, v96);
            sub_10006A2D0(v95, v94);
            sub_10006A2D0(v97, v96);
            LOBYTE(v96) = v157;
            sub_10006A2D0(v95, v94);
            if (v96)
            {
              goto LABEL_96;
            }

            goto LABEL_97;
          }

          v140 = v80;
          v141 = ((v80 >> 32) - v80);
          if (v80 >> 32 < v80)
          {
            goto LABEL_129;
          }

          v117 = v155;
          v116 = v156;
          sub_10006A2BC(v156, v155);
          v118 = v151;
          sub_10006A2BC(v80, v151);
          sub_10006A2BC(v116, v117);
          sub_10006A2BC(v80, v118);
          v119 = __DataStorage._bytes.getter();
          v142 = v80;
          if (v119)
          {
            v120 = v119;
            v121 = __DataStorage._offset.getter();
            if (__OFSUB__(v140, v121))
            {
              goto LABEL_132;
            }

            v122 = v140 - v121 + v120;
          }

          else
          {
            v122 = 0;
          }

          v127 = v151;
          __DataStorage._length.getter();
          v135 = v122;
          v136 = v155;
          v137 = v156;
          v138 = v153;
          sub_10019F024(v135, v156, v155, &aBlock);
          v153 = v138;
          sub_10006A2D0(v137, v136);
          v126 = v142;
          sub_10006A2D0(v142, v127);
          sub_10006A2D0(v137, v136);
          v129 = aBlock;
          goto LABEL_113;
        }

        if (v84 != 2)
        {
          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          v123 = v155;
          v124 = v156;
          sub_10006A2BC(v156, v155);
          v125 = v80;
          v126 = v80;
          v127 = v151;
          sub_10006A2BC(v125, v151);
          sub_10006A2BC(v124, v123);
          sub_10006A2BC(v126, v127);
          v128 = v153;
          sub_10019F024(&aBlock, v124, v123, &v157);
          v153 = v128;
          sub_10006A2D0(v124, v123);
          sub_10006A2D0(v126, v127);
          sub_10006A2D0(v124, v123);
          v129 = v157;
LABEL_113:
          sub_10006A2D0(v126, v127);
          if (v129)
          {
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        v140 = a1;
        v107 = *(v80 + 16);
        v141 = *(v80 + 24);
        v108 = v80;
        v109 = v155;
        v110 = v156;
        sub_10006A2BC(v156, v155);
        v111 = v151;
        sub_10006A2BC(v108, v151);
        sub_10006A2BC(v110, v109);
        v142 = v108;
        sub_10006A2BC(v108, v111);
        v112 = __DataStorage._bytes.getter();
        if (v112)
        {
          v113 = v112;
          v114 = __DataStorage._offset.getter();
          if (__OFSUB__(v107, v114))
          {
            goto LABEL_131;
          }

          v115 = v107 - v114 + v113;
        }

        else
        {
          v115 = 0;
        }

        if (__OFSUB__(v141, v107))
        {
          goto LABEL_130;
        }

        v130 = v151;
        __DataStorage._length.getter();
        v131 = v155;
        v132 = v156;
        v133 = v153;
        sub_10019F024(v115, v156, v155, &aBlock);
        v153 = v133;
        sub_10006A2D0(v132, v131);
        v134 = v142;
        sub_10006A2D0(v142, v130);
        sub_10006A2D0(v132, v131);
        LOBYTE(v131) = aBlock;
        sub_10006A2D0(v134, v130);
        a1 = v140;
        if (v131)
        {
          goto LABEL_96;
        }

LABEL_97:

        v13 = v75;
        a2 = v150;
        v11 = v156;
        v5 = v153;
        v10 = v154;
      }
    }

    else
    {
      a2 = v76;

      v13 = v75;
      v11 = v156;
    }
  }

  v10 = v154;
LABEL_115:
  sub_100093854(v10);
  v139 = v148;
  sub_1003AE618(v148, a3);

  v64 = v11;
  v65 = v155;
LABEL_116:
  sub_10006A2D0(v64, v65);
}

uint64_t sub_1000D40E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_100069E2C(a2, a3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_10006A178(a2, a3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    sub_100288788(a2, a3);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12 = sub_1002FFA0C(v9, v11, v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unblocking reader identifier %s from timer", v7, 0xCu);
    sub_1000752F4(v8);
  }

  swift_beginAccess();
  sub_100069E2C(a2, a3);
  sub_1000C58E0(0, a2, a3);
  return swift_endAccess();
}

void sub_1000D42BC(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "LyonUWB is not running", v14, 2u);
    }

    goto LABEL_23;
  }

  v5 = sub_10013044C(a1, a2);
  if (v6 >> 60 == 15)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v49[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(a1, a2, v49);
      _os_log_impl(&_mh_execute_header, v7, v8, "Trying to suspend ranging for invalied reader identifier %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    sub_1000755A4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return;
  }

  v15 = v5;
  v16 = v6;
  v17 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_26;
    }

    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 == 32)
      {
        goto LABEL_15;
      }

LABEL_26:
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v49[0] = v40;
        *v39 = 136315394;
        v49[4] = sub_100288788(v15, v16);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v41 = BidirectionalCollection<>.joined(separator:)();
        v43 = v42;

        v44 = sub_1002FFA0C(v41, v43, v49);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2048;
        *(v39 + 14) = 32;
        _os_log_impl(&_mh_execute_header, v37, v38, "Reader Identifier of invalid length %s, expected %ld", v39, 0x16u);
        sub_1000752F4(v40);
      }

      sub_1000755A4();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      sub_10006A2D0(v15, v16);
      return;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v17)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 == 32)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (BYTE6(v6) != 32)
  {
    goto LABEL_26;
  }

LABEL_15:
  v22 = OBJC_IVAR____TtC10seserviced7LyonUWB_blockedReaderIdentifiers;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (!*(v23 + 16) || (v24 = sub_10008C8DC(v15, v16), (v25 & 1) == 0))
  {
    swift_endAccess();
    v12 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v12, v35, "Given reader identifier was not in the block list; doing nothing", v36, 2u);
    }

    sub_10006A2D0(v15, v16);
LABEL_23:

    return;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  v27 = v26;
  sub_10006A2BC(v15, v16);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  sub_10006A2D0(v15, v16);
  if (os_log_type_enabled(v28, v29))
  {
    v47 = v29;
    v30 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49[0] = v46;
    *v30 = 136315138;
    sub_100069E2C(v15, v16);
    v31 = Data.description.getter();
    v48 = v27;
    v33 = v32;
    sub_10006A2D0(v15, v16);
    v34 = sub_1002FFA0C(v31, v33, v49);
    v27 = v48;

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v47, "Unblocking reader identifier %s from xpc command", v30, 0xCu);
    sub_1000752F4(v46);
  }

  sub_1003AE754(v27);
  swift_beginAccess();
  sub_1000C58E0(0, v15, v16);
  swift_endAccess();
}

void sub_1000D48D8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v8 = v7;
    v9 = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v6, v3);
    if ((v9 & 1) == 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*(v1 + 16) != 1)
    {
      break;
    }

    v3 = *(a1 + 16);
    if (!v3)
    {
LABEL_34:
      if (qword_100501B70 == -1)
      {
LABEL_35:
        v25 = 0;
        if (v3)
        {
          v26 = (a1 + 32);
          do
          {
            v27 = *v26++;
            v25 |= qword_10040AA30[v27];
            --v3;
          }

          while (v3);
        }

        sub_100243A54(v25, 1uLL);
        return;
      }

LABEL_43:
      swift_once();
      goto LABEL_35;
    }

    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v28[0] = v1;
    v29 = a1;
    v10 = sub_1000CAAC4();
    v1 = v10;
    if ((v10 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer(0);
      sub_1000E0514(&qword_100503F20, type metadata accessor for Peer, &unk_1004109B0);
      Set.Iterator.init(_cocoa:)();
      v1 = v33;
      a1 = v34;
      v11 = v35;
      v12 = v36;
      v4 = v37;
    }

    else
    {
      v12 = 0;
      v16 = -1 << *(v10 + 32);
      a1 = v10 + 56;
      v11 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v4 = v18 & *(v10 + 56);
    }

    v30 = 0;
    v28[1] = v11;
    v19 = (v11 + 64) >> 6;
    while (1)
    {
      v6 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

      v23 = __CocoaSet.Iterator.next()();
      if (!v23 || (v31 = v23, type metadata accessor for Peer(0), swift_dynamicCast(), (v22 = v32) == 0))
      {
LABEL_33:
        sub_100093854(v1);
        a1 = v29;
        goto LABEL_34;
      }

LABEL_28:
      if (*v22 == _TtC10seserviced8LyonPeer && *(v22 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1 && *(v22 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) == 1)
      {
        v24 = v30;
        sub_1000C8E3C(v22);
        if (v24)
        {
        }

        v30 = 0;
      }
    }

    v20 = v12;
    v21 = v4;
    if (v4)
    {
LABEL_24:
      v4 = (v21 - 1) & v21;
      v22 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));

      if (!v22)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        goto LABEL_33;
      }

      v21 = *(a1 + 8 * v12);
      ++v20;
      if (v21)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "LyonUWB is not running", v15, 2u);
  }
}

uint64_t sub_1000D4DE4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced7LyonUWB_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonUWB(uint64_t a1)
{
  result = qword_100503560;
  if (!qword_100503560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4EF4(uint64_t a1, uint64_t a2)
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

void sub_1000D5034(char a1)
{
  if (qword_100501BF0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1002A24A4(2, 2, a1 & 1, 2, 0, 2);
}

void sub_1000D50B0(uint64_t a1)
{
  if (qword_100501BF0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1002A24A4(2, a1 != 0, 2, 2, 0, 2);
}

uint64_t sub_1000D5130(uint64_t *a1, void *a2)
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

      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
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

    v19 = sub_100108358(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100109978(v20 + 1);
    }

    v18 = v8;
    sub_10011F7A4();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000D8088(v18, v13, isUniquelyReferenced_nonNull_native);
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

uint64_t sub_1000D5368(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v18 = sub_1001087D8(v7, result + 1);
      v19 = *(v18 + 16);
      if (*(v18 + 24) <= v19)
      {
        sub_100109950(v19 + 1);
      }

      sub_10010BE38(v20, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1000D8208(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1000D558C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000D83A4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000D5684(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100108A00(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100109E88(v17 + 1);
    }

    sub_10010BF4C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a2 + 16));
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1000D84F0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1000D589C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100069E2C(a2, a3);
    sub_1000D8650(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100069E2C(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100069E2C(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100069E2C(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_10019F024(v32, a2, v44, v50);
    sub_10006A178(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100069E2C(v18, v17);
LABEL_60:
  sub_10019F024(v50, a2, a3, &v49);
  sub_10006A178(v18, v17);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_10006A178(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100069E2C(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_1000D5D24(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Peer(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
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
        v17 = sub_10010857C(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_100109BDC(v18 + 1);
        }

        sub_10010BE50(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000E0514(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = static UUID.== infix(_:_:)();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1000D8AC8(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}