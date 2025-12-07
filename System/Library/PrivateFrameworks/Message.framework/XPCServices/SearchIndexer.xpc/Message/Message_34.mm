uint64_t sub_10023E5A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v50 = v2;
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

  while (2)
  {
    v48 = v8;
    v49 = v7;

    v7 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = sub_1004A6794();
      }

      else
      {
        if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v11 = *(v9 + 32 + 8 * v7);
      }

      v12 = (*(*v11 + 608))();
      if (!v12)
      {
        goto LABEL_22;
      }

      if (v13 != a2)
      {
        v8 = a2;

        goto LABEL_23;
      }

      v14 = *(v12 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }

LABEL_21:

LABEL_22:

LABEL_23:
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_42;
      }

      if (v7 == v10)
      {

        return 0;
      }
    }

    if (v14)
    {
      v15 = v12 == a1;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = 32;
      while (v14)
      {
        if (*(v12 + v16) != *(a1 + v16))
        {
          goto LABEL_21;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v10 = sub_1004A6A34();
      if (!v10)
      {
        return 0;
      }

      continue;
    }

    break;
  }

LABEL_27:

  v19 = v48;
  v20 = v50;
  swift_beginAccess();
  v21 = *(v20 + v19);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = sub_1004A6794();
    v22 = v49;
LABEL_30:
    swift_endAccess();
    LODWORD(v49) = *(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v20 + v24, v22, &qword_1005D5968, &unk_1004E9180);
    v25 = sub_1004A4A74();
    v26 = *(v25 - 8);
    result = (*(v26 + 48))(v22, 1, v25);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v27 = sub_1004A4A54();
      v28 = sub_1004A6034();

      v47 = v28;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v46 = v25;
        v30 = a2;
        v31 = v29;
        v45 = swift_slowAlloc();
        v51[0] = v45;
        *v31 = 68158723;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v31 + 11) = 2082;
        v32 = ConnectionID.debugDescription.getter(v49);
        v34 = sub_10015BA6C(v32, v33, v51);
        v20 = v50;

        *(v31 + 13) = v34;
        *(v31 + 21) = 2160;
        *(v31 + 23) = 0x786F626C69616DLL;
        *(v31 + 31) = 2085;
        v51[1] = a1;
        v52 = v30;
        v25 = v46;

        v35 = sub_1004A5824();
        v37 = sub_10015BA6C(v35, v36, v51);

        *(v31 + 33) = v37;
        _os_log_impl(&_mh_execute_header, v27, v47, "[%.*hhx] Closing connection %{public}s for mailbox '%{sensitive,mask.mailbox}s'.", v31, 0x29u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v26 + 8))(v22, v25);
      result = swift_beginAccess();
      v38 = *(v20 + v19);
      if ((v38 & 0xC000000000000001) != 0)
      {
        goto LABEL_48;
      }

      if (v7 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v39 = *(v38 + 8 * v7 + 32);

        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v22 = v49;
    if (v7 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v7 + 32);

      goto LABEL_30;
    }

    __break(1u);
LABEL_48:
    v39 = sub_1004A6794();
LABEL_37:
    v40 = swift_endAccess();
    v41 = (*(*v39 + 576))(v40);

    result = swift_beginAccess();
    v42 = *(v20 + v19);
    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = sub_1004A6794();
      goto LABEL_40;
    }

    if (v7 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v42 + 8 * v7 + 32);

LABEL_40:
      v44 = swift_endAccess();
      (*(*v43 + 536))(v44);

      return v41;
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10023EBF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1004A5404();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
  {
    __break(1u);
    goto LABEL_39;
  }

  RestartableTimer.start()();

  v16 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  LOBYTE(v16) = *(v16 + 17);
  result = static MonotonicTime.now()();
  if ((v16 & 1) != 0 || !(v18 & 1 | (result >= v17)))
  {
    v36 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
    swift_beginAccess();
    v37 = static MonotonicTime.now()();
    if (*(v36 + 8))
    {
      goto LABEL_20;
    }

    v38 = *v36;
    v39 = __OFSUB__(v37, *v36);
    v40 = v37 - *v36;
    if (v37 >= *v36)
    {
LABEL_18:
      if (!v39)
      {
        goto LABEL_19;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v38, v37))
    {
      v39 = __OFSUB__(0, v38 - v37);
      v40 = v37 - v38;
      if (!v39)
      {
LABEL_19:
        if (v40 < *(v36 + 16))
        {
          return swift_endAccess();
        }

LABEL_20:
        *v36 = v37;
        *(v36 + 8) = 0;
        sub_100240D10(v4);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = sub_10023F898();
    if ((result & 1) == 0)
    {
      sub_10023F5EC();
      v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v20 = *(v4 + v3);
      if (!(v20 >> 62))
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= a2)
        {
          return result;
        }

        goto LABEL_9;
      }

LABEL_34:
      result = sub_1004A6A34();
      if (result >= a2)
      {
        return result;
      }

LABEL_9:
      sub_10024AFFC(v4, v4);
      v22 = v21;
      v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(v4 + v23, v8, &qword_1005D5968, &unk_1004E9180);
      v24 = sub_1004A4A74();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v8, 1, v24) != 1)
      {
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v26 = sub_1004A4A54();
        v27 = sub_1004A6034();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v46 = v24;
          v29 = v28;
          v45 = swift_slowAlloc();
          v47[0] = v45;
          *v29 = 68158466;
          *(v29 + 4) = 2;
          *(v29 + 8) = 256;
          v30 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v29 + 10) = v30;

          *(v29 + 11) = 2082;
          v31 = ConnectionID.debugDescription.getter(*(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v33 = sub_10015BA6C(v31, v32, v47);

          *(v29 + 13) = v33;
          *(v29 + 21) = 2048;
          v35 = (*(*v22 + 432))(v34);

          *(v29 + 23) = v35;

          _os_log_impl(&_mh_execute_header, v26, v27, "[%.*hhx] Did create connection %{public}s [C%llu]", v29, 0x1Fu);
          sub_1000197E0(v45);

          v24 = v46;
        }

        else
        {
        }

        (*(v25 + 8))(v8, v24);
        swift_beginAccess();

        sub_1004A5BF4();
        if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004A5C44();
        }

        sub_1004A5C84();
        v41 = swift_endAccess();
        (*(*v22 + 528))(v41);
        if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
        {

          RestartableTimer.start()();

          v42 = *(v4 + v3);
          if (v42 >> 62)
          {
            if (sub_1004A6A34() == 1)
            {
LABEL_29:
              Strong = swift_unknownObjectWeakLoadStrong();

              if (Strong)
              {
                *(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 1;
                return swift_unknownObjectRelease();
              }

              return result;
            }
          }

          else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
            goto LABEL_29;
          }
        }

LABEL_40:
        __break(1u);
        result = swift_endAccess();
        __break(1u);
        return result;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  return result;
}

unint64_t sub_10023F2AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a1;
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_10023F5EC();
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v5 + v11, v10, &qword_1005D5968, &unk_1004E9180);
  v12 = sub_1004A4A74();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29[3] = a4;
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v15 = sub_1004A4A54();
    v16 = sub_1004A5FF4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a3;
      v18 = swift_slowAlloc();
      *v18 = 68158208;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v18 + 10) = v19;

      *(v18 + 11) = 2048;
      v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v21 = *(v5 + v20);
      if (v21 >> 62)
      {
        v22 = sub_1004A6A34();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 13) = v22;

      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx] Pool has %ld connections.", v18, 0x15u);

      a3 = v17;
    }

    else
    {
    }

    (*(v13 + 8))(v10, v12);
    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    v24 = swift_beginAccess();
    v25 = *(v5 + v23);
    __chkstk_darwin(v24);
    *&v29[-4] = v31;

    v26 = sub_10023B8B4(sub_10024DA5C, &v29[-8], v25);
    v28 = v27;

    if (v28)
    {
      sub_10023EBF0(v30, a3);
    }

    return v26;
  }

  return result;
}

uint64_t sub_10023F5EC()
{
  v18 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v19 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_1004A6A34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v15 = v6;
    v16 = v0;
    v9 = 0;
    v17 = v7 & 0xC000000000000001;
    v6 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v10 = sub_1004A6794();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v13 = v19;
          v6 = v15;
          v0 = v16;
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      v0 = v10;
      (*(*v10 + 304))();
      sub_10024DDB8(v5, v2, type metadata accessor for ConnectionState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {

        sub_10024DD58(v2, type metadata accessor for ConnectionState);
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      ++v9;
      if (v11 == v8)
      {
        goto LABEL_19;
      }
    }

    sub_10024DD58(v2, type metadata accessor for ConnectionState);
LABEL_15:
    v0 = &v19;
    sub_1004A6814();
    sub_1004A68A4();
    sub_1004A68B4();
    sub_1004A6834();
    goto LABEL_6;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_21:

  *(v0 + v6) = v13;
}

uint64_t sub_10023F898()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
LABEL_19:
    v9 = sub_1004A6A34();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_1004A6794();
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_15;
        }
      }

      (*(*v11 + 304))();

      sub_10024DDB8(v6, v3, type metadata accessor for ConnectionState);
      v13 = 1 << swift_getEnumCaseMultiPayload();
      if ((v13 & 0xC) != 0)
      {
        sub_10024DD58(v3, type metadata accessor for ConnectionState);
      }

      else if ((v13 & 0x30) == 0)
      {

        sub_10024DD58(v3, type metadata accessor for ConnectionState);
        return 1;
      }

      ++v10;
    }

    while (v12 != v9);
  }

  return 0;
}

uint64_t sub_10023FAD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v13 = *(v12 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

  v13 = sub_1004A6794();
LABEL_5:
  swift_endAccess();
  v14 = (*(*v13 + 616))(a3, a4);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  result = swift_beginAccess();
  v16 = *(a2 + v11);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v17 = *(v16 + 8 * a1 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:
  v17 = sub_1004A6794();
LABEL_10:
  swift_endAccess();
  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(a2 + v18, v10, &qword_1005D5968, &unk_1004E9180);
  v19 = sub_1004A4A74();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v10, 1, v19);
  if (result != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v21 = sub_1004A4A54();
    v22 = sub_1004A5FF4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v23 = 68158723;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      *(v23 + 10) = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v23 + 11) = 2160;
      *(v23 + 13) = 0x786F626C69616DLL;
      *(v23 + 21) = 2085;
      v32 = a3;
      v33 = a4;

      v24 = sub_1004A5824();
      v26 = sub_10015BA6C(v24, v25, &v34);

      *(v23 + 23) = v26;
      *(v23 + 31) = 2082;
      v27 = ConnectionID.debugDescription.getter(*(v17 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v29 = sub_10015BA6C(v27, v28, &v34);

      *(v23 + 33) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx] Will select mailbox '%{sensitive,mask.mailbox}s' on connection %{public}s for new mailbox affinity.", v23, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v20 + 8))(v10, v19);
    return v17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10023FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v4;
  v5 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v5 - 8);
  v43 = &v43 - v6;
  v7 = sub_1004A5214();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A4E34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ConnectionStatus(0);
  v19 = *(v50 - 8);
  __chkstk_darwin(v50);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_10024DECC(a1, v18, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10024DD58(v48, type metadata accessor for ConnectionState);
        v23 = v50;
        swift_storeEnumTagMultiPayload();
        sub_10024DD58(v18, type metadata accessor for ConnectionState);
LABEL_17:
        v25 = v49;
LABEL_18:
        sub_10024DDB8(v21, v25, type metadata accessor for ConnectionStatus);
        v24 = 0;
        return (*(v19 + 56))(v25, v24, 1, v23);
      }

      memcpy(v51, v18, 0x162uLL);
      AuthenticatedState.mailboxSelection.getter();
      v38 = v37;
      v40 = v39;
      sub_1001ACFCC(v51);
      sub_10024DD58(v48, type metadata accessor for ConnectionState);
      if (BYTE4(v40))
      {
        v25 = v49;
        if (BYTE4(v40) == 1)
        {
          *v21 = v38;
          *(v21 + 2) = v40;
        }

        v23 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      *v21 = v38;
      *(v21 + 2) = v40;
      v23 = v50;
    }

    else
    {
      v26 = v10;
      (*(v10 + 32))(v15, v18, v9);
      (*(v10 + 16))(v12, v15, v9);
      if ((*(v10 + 88))(v12, v9) != enum case for NWConnection.State.waiting(_:))
      {
        sub_10024DD58(v48, type metadata accessor for ConnectionState);
        v41 = *(v10 + 8);
        v41(v15, v9);
        v23 = v50;
        swift_storeEnumTagMultiPayload();
        v41(v12, v9);
        goto LABEL_17;
      }

      (*(v10 + 96))(v12, v9);
      v27 = v44;
      v28 = v47;
      v29 = v12;
      v30 = v45;
      (*(v44 + 32))(v47, v29, v45);
      v31 = v43;
      v32 = v28;
      v33 = v30;
      (*(v27 + 16))(v43, v32, v30);
      v34 = type metadata accessor for ConnectionStatus.Error.Details(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
      v35 = sub_1004A44E4();
      v36 = v46;
      (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v31, v36, v21);
      sub_10024DD58(v48, type metadata accessor for ConnectionState);
      (*(v27 + 8))(v47, v33);
      (*(v26 + 8))(v15, v9);
      v23 = v50;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10024DD58(v48, type metadata accessor for ConnectionState);
    sub_10024DD58(v18, type metadata accessor for ConnectionState);
    v24 = 1;
    v25 = v49;
    v23 = v50;
  }

  else
  {
    v23 = v50;
    sub_10024DD58(v48, type metadata accessor for ConnectionState);
    v24 = 1;
    v25 = v49;
  }

  return (*(v19 + 56))(v25, v24, 1, v23);
}

uint64_t sub_1002405FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConnectionState(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**a1 + 304))(v5);
  return sub_10023FF00(v7, a2);
}

uint64_t sub_1002406BC@<X0>(_BYTE *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1004A5214();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100241DB4(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100025F40(v13, &unk_1005D54F0, &unk_1004E8DA0);
    v18 = 1;
    v19 = v24;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v7, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_10024DDB8(v7, v10, type metadata accessor for ConnectionStatus.Error.Details);
    (*(v5 + 56))(v10, 0, 1, v4);
    v20 = sub_1004A44E4();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v19 = v24;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v10, v3, v24);
    (*(v15 + 8))(v17, v14);
    v18 = 0;
  }

  v21 = type metadata accessor for ConnectionStatus.Error(0);
  return (*(*(v21 - 8) + 56))(v19, v18, 1, v21);
}

uint64_t sub_100240A70@<X0>(uint64_t a2@<X1>, char a3@<W2>, _BYTE *x8_0@<X8>)
{
  v5 = v4;
  v9 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1004A44E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = &v28 - v20;
  if (a3)
  {
    (*(v13 + 56))(&v28 - v20, 1, 1, v12, v21);
LABEL_10:
    v26 = *v5;
    v27 = type metadata accessor for ConnectionStatus.Error(0);
    sub_10000E268(&v5[*(v27 + 20)], v11, &qword_1005D55B8, &unk_1004F2790);
    sub_10000E268(v22, v18, &qword_1005D0F20, &qword_1004E9390);
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v26, v11, v18, x8_0);
    return sub_100025F40(v22, &qword_1005D0F20, &qword_1004E9390);
  }

  v23 = static MonotonicTime.now()();
  result = sub_1004A44D4();
  if (v23 > a2)
  {
    if (__OFSUB__(v23, a2))
    {
      __break(1u);
      goto LABEL_12;
    }

    if (!__OFSUB__(0, v23 - a2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!__OFSUB__(a2, v23))
  {
LABEL_9:
    sub_1004A4474();
    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v22, 0, 1, v12, v25);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100240D10(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(a1 + v5, v4, &qword_1005D5968, &unk_1004E9180);
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v9 = sub_1004A4A54();
    v10 = sub_1004A6034();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68158208;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      v12 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v11 + 10) = v12;

      *(v11 + 11) = 2048;
      v13 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      *(v11 + 13) = *(a1 + v13);

      _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx] Backed off (failure count %ld). Not creating a new connection.", v11, 0x15u);
    }

    else
    {
    }

    return (*(v7 + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_100240F68(uint64_t (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v4 - 8);
  v28 = &v28 - v5;
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v10 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v7 + 104);
  (v13)(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v14 = v11;
  v15 = sub_1004A5404();
  v16 = *(v7 + 8);
  result = v16(v10, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    *v10 = v14;
    v13(v10, v12, v6);
    v25 = v14;
    v26 = sub_1004A5404();
    result = v16(v10, v6);
    if (v26)
    {
      v27 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID);
      *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = v27 + 1;
      sub_100230548(v27, v29, v30);
      return swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v19 = v28;
  sub_10000E268(v3 + v18, v28, &qword_1005D5968, &unk_1004E9180);
  v20 = sub_1004A4A74();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v19, 1, v20);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v22 = sub_1004A4A54();
  v23 = sub_1004A6014();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 68157952;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    *(v24 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] Current credentials are invalid.", v24, 0xBu);
  }

  else
  {
  }

  (*(v21 + 8))(v19, v20);
  return v29(_swiftEmptyArrayStorage);
}

uint64_t sub_100241314(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100230828(a1, a2);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100241460(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100230AFC(a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002414F4()
{
  v1 = v0;
  v2 = sub_1004A5234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1004A53B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v33 - v13);
  v15 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  if (*(v15 + 16))
  {
    swift_beginAccess();
    sub_10000E268(v1 + v16, v11, &qword_1005D5968, &unk_1004E9180);
    v17 = sub_1004A4A74();
    v2 = *(v17 - 8);
    result = (*(v2 + 48))(v11, 1, v17);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v14 = sub_1004A4A54();
      v19 = sub_1004A6034();
      if (os_log_type_enabled(v14, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 68157952;
        *(v20 + 4) = 2;
        *(v20 + 8) = 256;
        *(v20 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v14, v19, "[%.*hhx] Cancelling backoff timer.", v20, 0xBu);

LABEL_13:
        (*(v2 + 8))(v11, v17);
        v26 = *(**(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);

        v26(v27);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v35 = v7;
  v36 = v6;
  v37 = *(v15 + 8);
  swift_beginAccess();
  sub_10000E268(v1 + v16, v14, &qword_1005D5968, &unk_1004E9180);
  v21 = sub_1004A4A74();
  v17 = *(v21 - 8);
  result = (*(v17 + 48))(v14, 1, v21);
  if (result != 1)
  {
    v34 = v3;
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v22 = sub_1004A4A54();
    v11 = sub_1004A6034();
    if (!os_log_type_enabled(v22, v11))
    {

LABEL_17:
      (*(v17 + 8))(v14, v21);
      v28 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

      v29 = v38;
      DispatchTime.init(_:)(v37);
      v30 = swift_allocObject();
      swift_weakInit();
      *v5 = 100;
      v31 = v34;
      (*(v34 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v2);
      v32 = *(*v28 + 200);

      v32(v29, v5, sub_10024DB5C, v30);

      (*(v31 + 8))(v5, v2);
      (*(v35 + 8))(v29, v36);
    }

    v33 = v2;
    v23 = swift_slowAlloc();
    *v23 = 68158464;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v23 + 10) = v24;

    *(v23 + 11) = 2048;
    result = static MonotonicTime.now()();
    v25 = v37 - result;
    if (v37 >= result)
    {
      v2 = v33;
      if (!__OFSUB__(v37, result))
      {
LABEL_16:
        *(v23 + 13) = v25 / 1000000000.0;
        *(v23 + 21) = 2048;
        *(v23 + 23) = *v15;

        _os_log_impl(&_mh_execute_header, v22, v11, "[%.*hhx] Setting up backoff timer for %f s (count %ld) from now.", v23, 0x1Fu);

        goto LABEL_17;
      }
    }

    else
    {
      if (!__OFSUB__(result, v37))
      {
        v25 = v37 - result;
        v2 = v33;
        if (__OFSUB__(0, result - v37))
        {
          __break(1u);
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100241B8C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v1 + v5, v4, &qword_1005D5968, &unk_1004E9180);
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v9 = sub_1004A4A54();
    v10 = sub_1004A5FF4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 68157952;
      *(v11 + 4) = 2;
      *(v11 + 8) = 256;
      *(v11 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx] Backoff timer has expired. Re-trying.", v11, 0xBu);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F130(_swiftEmptyArrayStorage);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100241DB4@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v2 - 8);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v85 - v5;
  __chkstk_darwin(v6);
  v92 = &v85 - v7;
  v8 = sub_1004A4E34();
  v9 = *(v8 - 8);
  v98 = v8;
  v99 = v9;
  __chkstk_darwin(v8);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v85 - v12;
  __chkstk_darwin(v13);
  v95 = &v85 - v14;
  __chkstk_darwin(v15);
  v94 = &v85 - v16;
  __chkstk_darwin(v17);
  v100 = &v85 - v18;
  v19 = type metadata accessor for ConnectionState(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v85 - v24;
  __chkstk_darwin(v26);
  v28 = &v85 - v27;
  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v101 = *(v1 + v29);
  v30 = v101;
  v90 = v29;
  v91 = v1;
  if (v101 >> 62)
  {
    v84 = sub_1004A6A34();
    v30 = v101;
    v31 = v84;
  }

  else
  {
    v31 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = _swiftEmptyArrayStorage;
  v96 = v28;
  v97 = v19;
  if (v31)
  {
    v102 = _swiftEmptyArrayStorage;
    v33 = v30;

    result = sub_10024AB20(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v35 = 0;
    v32 = v102;
    v36 = v33 & 0xC000000000000001;
    v37 = v33;
    do
    {
      if (v36)
      {
        v38 = sub_1004A6794();
      }

      else
      {
        v38 = *(v37 + 8 * v35 + 32);
      }

      (*(*v38 + 304))();

      v102 = v32;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_10024AB20((v39 > 1), v40 + 1, 1);
        v32 = v102;
      }

      ++v35;
      v32[2] = v40 + 1;
      sub_10024DDB8(v25, v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v40, type metadata accessor for ConnectionState);
      v37 = v101;
    }

    while (v31 != v35);

    v28 = v96;
  }

  v41 = v32[2];
  v42 = v98;
  if (v41)
  {
    v43 = v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v44 = *(v20 + 72);
    v45 = (v99 + 32);
    v46 = _swiftEmptyArrayStorage;
    v101 = v44;
    do
    {
      sub_10024DECC(v43, v28, type metadata accessor for ConnectionState);
      sub_10024DDB8(v28, v22, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10024DD58(v22, type metadata accessor for ConnectionState);
      }

      else
      {
        v47 = *v45;
        v48 = v95;
        (*v45)(v95, v22, v42);
        v49 = v46;
        v50 = v94;
        v47(v94, v48, v42);
        v51 = v50;
        v46 = v49;
        v47(v100, v51, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1002379B4(0, v49[2] + 1, 1, v49);
        }

        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          v46 = sub_1002379B4((v52 > 1), v53 + 1, 1, v46);
        }

        v46[2] = v53 + 1;
        v42 = v98;
        v47(v46 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v53, v100, v98);
        v28 = v96;
        v44 = v101;
      }

      v43 += v44;
      --v41;
    }

    while (v41);
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
  }

  v54 = v46[2];
  v55 = *(v91 + v90);
  v56 = v99;
  v57 = v93;
  if (!(v55 >> 62))
  {
    result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 == result)
    {
      goto LABEL_27;
    }

LABEL_35:
    v75 = sub_1004A5214();
    (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
  }

  result = sub_1004A6A34();
  if (v54 != result)
  {
    goto LABEL_35;
  }

LABEL_27:
  v58 = v46[2];
  v100 = (v56 + 16);
  v59 = (v56 + 88);
  LODWORD(v101) = enum case for NWConnection.State.waiting(_:);
  v60 = (v56 + 8);
  if (v58)
  {
    v61 = 0;
    v62 = v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v63 = *(v56 + 72);
    v64 = *(v56 + 16);
    v65 = v98;
    while (1)
    {
      v64(v57, v62, v65);
      v66 = (*v59)(v57, v65);
      if (v66 == v101)
      {
        break;
      }

      (*v60)(v57, v65);
      v67 = sub_1004A5214();
      v68 = v92;
      (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
      v69 = v68;
      v57 = v93;
      result = sub_100025F40(v69, &unk_1005D54F0, &unk_1004E8DA0);
      ++v61;
      v62 += v63;
      if (v58 == v61)
      {
        v61 = v58;
        v56 = v99;
        goto LABEL_34;
      }
    }

    v70 = v99;
    (*(v99 + 96))(v57, v65);
    v71 = sub_1004A5214();
    v72 = *(v71 - 8);
    v73 = v92;
    (*(v72 + 32))(v92, v57, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    v56 = v70;
    result = sub_100025F40(v73, &unk_1005D54F0, &unk_1004E8DA0);
  }

  else
  {
    v61 = 0;
    v65 = v98;
  }

LABEL_34:
  v74 = v46[2];
  if (v61 == v74)
  {
    goto LABEL_35;
  }

  if (v61 >= v74)
  {
    goto LABEL_47;
  }

  v76 = v86;
  (*(v56 + 16))(v86, v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v61, v65);
  v77 = (*(v56 + 88))(v76, v65);
  if (v77 == v101)
  {
    (*(v56 + 96))(v76, v65);
    v78 = sub_1004A5214();
    v79 = *(v78 - 8);
    v80 = v88;
    (*(v79 + 32))(v88, v76, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
  }

  else
  {
    (*v60)(v76, v65);
    v78 = sub_1004A5214();
    v80 = v88;
    (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
  }

  v81 = v87;
  sub_10000E268(v80, v87, &unk_1005D54F0, &unk_1004E8DA0);
  sub_1004A5214();
  v82 = *(v78 - 8);
  result = (*(v82 + 48))(v81, 1, v78);
  if (result != 1)
  {
    v83 = v89;
    (*(v82 + 32))(v89, v81, v78);
    sub_100025F40(v80, &unk_1005D54F0, &unk_1004E8DA0);
    (*(v82 + 56))(v83, 0, 1, v78);
  }

LABEL_48:
  __break(1u);
  return result;
}

char *sub_100242860()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
LABEL_25:
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_1004A6A34();
  }

  else
  {
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v7;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_1004A6794();
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v8 >= *(v23 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v8 + 32);

          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v10 = (*v9 + 304);
        v11 = *v10;
        (*v10)();
        v12 = ConnectionState.isClosedOrCancelled.getter();
        v13 = sub_10024DD58(v3, type metadata accessor for ConnectionState);
        if (!v12)
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_22;
        }
      }

      HIDWORD(v21) = *(v9 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v14 = (*(*v9 + 424))(v13);
      v11();
      v15 = ConnectionState.isActivelyConnectingOrAuthenticating.getter();

      sub_10024DD58(v3, type metadata accessor for ConnectionState);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100237BD4(0, *(v22 + 2) + 1, 1, v22);
      }

      v17 = *(v22 + 2);
      v16 = *(v22 + 3);
      if (v17 >= v16 >> 1)
      {
        v22 = sub_100237BD4((v16 > 1), v17 + 1, 1, v22);
      }

      v18 = v22;
      *(v22 + 2) = v17 + 1;
      v19 = &v18[8 * v17];
      *(v19 + 8) = HIDWORD(v21);
      v19[36] = v14 & 1;
      v19[37] = !v15;
    }

    while (v7 != v6);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

LABEL_22:

  return v22;
}

uint64_t sub_100242B58(uint64_t a1)
{
  v2 = v1;
  v144 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v144);
  v5 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v6 - 8);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = &v128 - v10;
  __chkstk_darwin(v11);
  v139 = &v128 - v12;
  __chkstk_darwin(v13);
  v149 = &v128 - v14;
  __chkstk_darwin(v15);
  v132 = &v128 - v16;
  __chkstk_darwin(v17);
  v131 = &v128 - v18;
  __chkstk_darwin(v19);
  v135 = &v128 - v20;
  v21 = sub_1004A53F4();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = (&v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21, v23);
  v27 = v26;
  v28 = sub_1004A5404();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v36 = sub_1004A6A34();
    goto LABEL_10;
  }

  v29 = (v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  result = swift_beginAccess();
  v31 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  if (*(*v29 + 16))
  {
    v28 = v149;
    if (!v31)
    {
      goto LABEL_80;
    }

    RestartableTimer.start()();
  }

  else
  {
    v28 = v149;
    if (!v31)
    {
      goto LABEL_81;
    }

    RestartableTimer.stop()();
  }

  v32 = *v29;
  v33 = *(v29 + 1);

  sub_10023766C(a1, v32, v33);
  v26 = v34;

  if (!*(v26 + 16))
  {
  }

  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v143 = *(v2 + v35);
  if (v143 >> 62)
  {
    goto LABEL_72;
  }

  v36 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  if (!v36)
  {
LABEL_68:

    return sub_10023F5EC();
  }

  v130 = v8;
  v37 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v38 = v143;
  v148 = v143 & 0xC000000000000001;
  v137 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID;

  v147 = v37;
  swift_beginAccess();
  v8 = 0;
  v134 = v38 & 0xFFFFFFFFFFFFFF8;
  v133 = v38 + 32;
  v141 = v26 + 56;
  *&v39 = 68158210;
  v136 = v39;
  v142 = v2;
  v138 = v5;
  v145 = v26;
  v146 = v36;
  while (1)
  {
    if (v148)
    {
      v41 = sub_1004A6794();
      v42 = __OFADD__(v8++, 1);
      if (v42)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v8 >= *(v134 + 16))
      {
        goto LABEL_70;
      }

      v41 = *(v133 + 8 * v8);

      v42 = __OFADD__(v8++, 1);
      if (v42)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id;
    if (*(v26 + 16))
    {
      v44 = *(v41 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      sub_1004A6E94();
      sub_1004A6EE4(v44);
      v45 = sub_1004A6F14();
      v46 = -1 << *(v26 + 32);
      v47 = v45 & ~v46;
      if ((*(v141 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }
    }

LABEL_27:
    (*(*v41 + 304))();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v60 = v140;
      v61 = v139;
      if (EnumCaseMultiPayload == 3)
      {
        sub_10024DD58(v5, type metadata accessor for ConnectionState);
        sub_10000E268(v2 + v147, v61, &qword_1005D5968, &unk_1004E9180);
        v94 = v61;
        v95 = sub_1004A4A74();
        v96 = *(v95 - 8);
        result = (*(v96 + 48))(v94, 1, v95);
        if (result == 1)
        {
          goto LABEL_77;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v97 = sub_1004A4A54();
        v98 = sub_1004A6034();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v150[0] = v100;
          *v99 = v136;
          *(v99 + 4) = 2;
          *(v99 + 8) = 256;
          *(v99 + 10) = *(v2 + v137);

          *(v99 + 11) = 2082;
          v101 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v103 = sub_10015BA6C(v101, v102, v150);

          *(v99 + 13) = v103;
          v2 = v142;
          _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx] Connection %{public}s: authentication failed.", v99, 0x15u);
          sub_1000197E0(v100);

          v5 = v138;
        }

        else
        {
        }

        v28 = v149;
        v40 = v146;
        (*(v96 + 8))(v139, v95);
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 4)
      {
        sub_10000E268(v2 + v147, v140, &qword_1005D5968, &unk_1004E9180);
        v62 = sub_1004A4A74();
        v63 = *(v62 - 8);
        result = (*(v63 + 48))(v60, 1, v62);
        if (result == 1)
        {
          goto LABEL_75;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v64 = sub_1004A4A54();
        v65 = sub_1004A6034();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v129 = v64;
          v68 = v67;
          v150[0] = v67;
          *v66 = v136;
          *(v66 + 4) = 2;
          *(v66 + 8) = 256;
          *(v66 + 10) = *(v2 + v137);

          *(v66 + 11) = 2082;
          v69 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v71 = sub_10015BA6C(v69, v70, v150);

          *(v66 + 13) = v71;
          v2 = v142;
          v72 = v65;
          v73 = v129;
          _os_log_impl(&_mh_execute_header, v129, v72, "[%.*hhx] Connection %{public}s failed.", v66, 0x15u);
          sub_1000197E0(v68);

          v5 = v138;
        }

        else
        {
        }

        v28 = v149;
        v127 = v146;
        (*(v63 + 8))(v140, v62);
      }

      else
      {
        v113 = v130;
        sub_10000E268(v2 + v147, v130, &qword_1005D5968, &unk_1004E9180);
        v114 = sub_1004A4A74();
        v115 = *(v114 - 8);
        result = (*(v115 + 48))(v113, 1, v114);
        if (result == 1)
        {
          goto LABEL_74;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v116 = sub_1004A4A54();
        v117 = sub_1004A6034();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v129 = v116;
          v120 = v119;
          v150[0] = v119;
          *v118 = v136;
          *(v118 + 4) = 2;
          *(v118 + 8) = 256;
          *(v118 + 10) = *(v2 + v137);

          *(v118 + 11) = 2082;
          v121 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v123 = sub_10015BA6C(v121, v122, v150);

          *(v118 + 13) = v123;
          v2 = v142;
          v124 = v117;
          v125 = v129;
          _os_log_impl(&_mh_execute_header, v129, v124, "[%.*hhx] Connection %{public}s is cancelled.", v118, 0x15u);
          sub_1000197E0(v120);

          v5 = v138;
        }

        else
        {
        }

        v28 = v149;
        v127 = v146;
        (*(v115 + 8))(v130, v114);
      }

LABEL_65:
      v26 = v145;
      if (v8 == v127)
      {
LABEL_66:

        goto LABEL_68;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v84 = v131;
        sub_10000E268(v2 + v147, v131, &qword_1005D5968, &unk_1004E9180);
        v85 = sub_1004A4A74();
        v86 = *(v85 - 8);
        result = (*(v86 + 48))(v84, 1, v85);
        if (result == 1)
        {
          goto LABEL_76;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v87 = sub_1004A4A54();
        v88 = sub_1004A6034();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v150[0] = swift_slowAlloc();
          v90 = v150[0];
          *v89 = v136;
          *(v89 + 4) = 2;
          *(v89 + 8) = 256;
          *(v89 + 10) = *(v2 + v137);

          *(v89 + 11) = 2082;
          v91 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v93 = sub_10015BA6C(v91, v92, v150);

          *(v89 + 13) = v93;
          v2 = v142;
          _os_log_impl(&_mh_execute_header, v87, v88, "[%.*hhx] Connection %{public}s is connecting.", v89, 0x15u);
          sub_1000197E0(v90);

          v5 = v138;
        }

        else
        {
        }

        v28 = v149;
        v127 = v146;
        (*(v86 + 8))(v131, v85);
        sub_10024DD58(v5, type metadata accessor for ConnectionState);
        goto LABEL_65;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v50 = v132;
        sub_10000E268(v2 + v147, v132, &qword_1005D5968, &unk_1004E9180);
        v51 = sub_1004A4A74();
        v52 = *(v51 - 8);
        result = (*(v52 + 48))(v50, 1, v51);
        if (result == 1)
        {
          goto LABEL_79;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v53 = sub_1004A4A54();
        v54 = sub_1004A6034();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v150[0] = v56;
          *v55 = v136;
          *(v55 + 4) = 2;
          *(v55 + 8) = 256;
          *(v55 + 10) = *(v2 + v137);

          *(v55 + 11) = 2082;
          v57 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v59 = sub_10015BA6C(v57, v58, v150);

          *(v55 + 13) = v59;
          v2 = v142;
          _os_log_impl(&_mh_execute_header, v53, v54, "[%.*hhx] Connection %{public}s is unauthenticated.", v55, 0x15u);
          sub_1000197E0(v56);

          v5 = v138;
        }

        else
        {
        }

        v28 = v149;
        v40 = v146;
        (*(v52 + 8))(v132, v51);
        sub_10024DD58(v5, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_10024DD58(v5, type metadata accessor for ConnectionState);
        sub_10000E268(v2 + v147, v28, &qword_1005D5968, &unk_1004E9180);
        v104 = sub_1004A4A74();
        v105 = *(v104 - 8);
        result = (*(v105 + 48))(v28, 1, v104);
        if (result == 1)
        {
          goto LABEL_78;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v106 = sub_1004A4A54();
        v107 = sub_1004A6034();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v150[0] = v109;
          *v108 = v136;
          *(v108 + 4) = 2;
          *(v108 + 8) = 256;
          *(v108 + 10) = *(v2 + v137);

          *(v108 + 11) = 2082;
          v110 = ConnectionID.debugDescription.getter(*(v41 + v43));
          v112 = sub_10015BA6C(v110, v111, v150);

          *(v108 + 13) = v112;
          v2 = v142;
          _os_log_impl(&_mh_execute_header, v106, v107, "[%.*hhx] Connection %{public}s is authenticated.", v108, 0x15u);
          sub_1000197E0(v109);

          v5 = v138;
        }

        else
        {
        }

        v40 = v146;
        v28 = v149;
        (*(v105 + 8))(v149, v104);
      }

LABEL_14:
      v26 = v145;
LABEL_15:
      if (v8 == v40)
      {
        goto LABEL_66;
      }
    }
  }

  v48 = ~v46;
  while (*(*(v26 + 48) + 4 * v47) != v44)
  {
    v47 = (v47 + 1) & v48;
    if (((*(v141 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v74 = v135;
  sub_10000E268(v2 + v147, v135, &qword_1005D5968, &unk_1004E9180);
  v75 = sub_1004A4A74();
  v76 = *(v75 - 8);
  result = (*(v76 + 48))(v74, 1, v75);
  if (result != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v77 = sub_1004A4A54();
    v78 = sub_1004A6034();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v150[0] = v80;
      *v79 = v136;
      *(v79 + 4) = 2;
      *(v79 + 8) = 256;
      *(v79 + 10) = *(v142 + v137);

      *(v79 + 11) = 2082;
      v81 = ConnectionID.debugDescription.getter(*(v41 + v43));
      v83 = sub_10015BA6C(v81, v82, v150);
      v26 = v145;

      *(v79 + 13) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "[%.*hhx] Cancelling idle connection %{public}s.", v79, 0x15u);
      sub_1000197E0(v80);
      v2 = v142;

      v5 = v138;
    }

    else
    {
    }

    v28 = v149;
    v40 = v146;
    v126 = (*(v76 + 8))(v135, v75);
    (*(*v41 + 536))(v126);

    goto LABEL_15;
  }

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
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_10024402C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange;
  *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;

  sub_10024D618(v5, a1);

  if (*(v2 + v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10022F81C();
      result = swift_unknownObjectRelease();
    }

    *(v2 + v4) = 0;
  }

  return result;
}

uint64_t sub_1002440C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 64);
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 4);
      v5 = *(v2 - 1);
      v6 = *v2;
      v7 = *(v2 - 8);
      v8 = v3;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      sub_1000CB7C8(v3);

      sub_100244168(&v7);
      sub_1000CB848(v3);

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_100244168(unsigned int *a1)
{
  v3 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v3 - 8);
  v106 = &v104 - v4;
  v116 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v116);
  v117 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v104 - v7;
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v8 - 8);
  v118 = &v104 - v9;
  v115 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v115);
  v120 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v123 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v104 - v13;
  __chkstk_darwin(v15);
  v17 = (&v104 - v16);
  v18 = sub_1004A53F4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v22 = v23;
  v24 = *(v19 + 104);
  v107 = enum case for DispatchPredicate.onQueue(_:);
  v108 = v24;
  v109 = v19 + 104;
  v24(v22, v20);
  v25 = v23;
  v26 = sub_1004A5404();
  v28 = *(v19 + 8);
  v27 = v19 + 8;
  v111 = v22;
  v112 = v27;
  v110 = v28;
  v28(v22, v18);
  if ((v26 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v29 = *(a1 + 1);
  v128 = v29;
  v30 = v29 >> 60;
  if (v29 >> 60 == 1)
  {
    v105 = v18;
    v121 = a1;
    v52 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v116) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v113 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
    v114 = v1;
    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState + 8);
    v53 = *(v52 + 16);
    v118 = v52;
    if (v53)
    {
      v54 = 0;
      v55 = _swiftEmptyArrayStorage;
      v117 = v53;
      while (v54 < *(v52 + 16))
      {
        v56 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v57 = *(v123 + 72);
        sub_10024DECC(v52 + v56 + v57 * v54, v17, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v27 >= *v17)
        {
          sub_10024DD58(v17, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          sub_10024DDB8(v17, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v129 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024AADC(0, v55[2] + 1, 1);
            v55 = v129;
          }

          v60 = v55[2];
          v59 = v55[3];
          if (v60 >= v59 >> 1)
          {
            sub_10024AADC((v59 > 1), v60 + 1, 1);
            v55 = v129;
          }

          v55[2] = v60 + 1;
          sub_10024DDB8(v122, v55 + v56 + v60 * v57, type metadata accessor for CommandConnection.RecentErrors.Error);
          v53 = v117;
          v52 = v118;
        }

        if (v53 == ++v54)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v55 = _swiftEmptyArrayStorage;
LABEL_43:
    *&v129 = v55;

    sub_10024979C(&v129);

    v67 = v129;
    v68 = *(v129 + 16);
    if (!v68)
    {
      v73 = v27;
LABEL_66:

      v76 = v113;
      v77 = *v113;
      *v113 = v116;
      *(v76 + 1) = v73;
      sub_10023C770(v77);
      if (CommandConnection.RecentErrors.containsAuthenticationFailure.getter(v118))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v40 = Strong;
          v79 = *(Strong + 16);
          v80 = v111;
          *v111 = v79;
          v81 = v105;
          v108(v80, v107, v105);
          v82 = v79;
          LOBYTE(v79) = sub_1004A5404();
          v110(v80, v81);
          if ((v79 & 1) == 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          (*(v40 + 32))(0xB000000000000010);
          swift_unknownObjectRelease();
        }
      }

      sub_10024549C(v121);
      return;
    }

    v69 = 0;
    v70 = v129 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    while (1)
    {
      if (v69 >= *(v67 + 16))
      {
        goto LABEL_82;
      }

      sub_10024DECC(v70 + *(v123 + 72) * v69, v14, type metadata accessor for CommandConnection.RecentErrors.Error);
      v73 = *v14;
      if (v27 >= *v14)
      {
        v71 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v72 = v14;
      }

      else
      {
        v74 = v120;
        sub_10024DECC(v14 + *(v119 + 20), v120, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (!swift_getEnumCaseMultiPayload())
        {
          v27 = *v74;
          v122 = v74[1];
          v40 = v74[2];
          sub_10000C9C0(&qword_1005D5D18, &unk_1004E9378);
          if (v40)
          {
            if (v116 != 1)
            {
              if (v116 == 2)
              {
                sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_100191E44(v27, v122, v40);
                v75 = 2;
              }

              else if (v40 == 1)
              {
                sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                v75 = 2;
              }

              else
              {
                if (v116 && v116 != 3)
                {
                  goto LABEL_89;
                }

                sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
                sub_100191E44(v27, v122, v40);
                v75 = 3;
              }

              goto LABEL_59;
            }

            sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
            sub_100191E44(v27, v122, v40);
          }

          else
          {
            sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
          }

          v75 = 1;
LABEL_59:
          LODWORD(v116) = v75;
          goto LABEL_47;
        }

        sub_10024DD58(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
        v71 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v72 = v74;
      }

      sub_10024DD58(v72, v71);
      v73 = v27;
LABEL_47:
      ++v69;
      v27 = v73;
      if (v68 == v69)
      {
        goto LABEL_66;
      }
    }
  }

  if (v30 == 8 && v29 == 0x8000000000000010)
  {
    *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 1;
    return;
  }

  v123 = v29;
  v31 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v14 = *(v1 + v31);
  v114 = v1;
  v121 = a1;
  v104 = v30;
  v105 = v18;
  if (!(v14 >> 62))
  {
    v32 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_85:
  v32 = sub_1004A6A34();
LABEL_8:

  if (v32)
  {
    v33 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v34 = sub_1004A6794();
        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v33 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v34 = *(v14 + 8 * v33 + 32);

        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      if (v35 == *v121)
      {
        break;
      }

      ++v33;
      if (v27 == v32)
      {
        goto LABEL_19;
      }
    }

    v62 = v113;
    (*(*v34 + 304))(v61);
    v63 = v117;
    sub_10024DDB8(v62, v117, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
LABEL_80:

        return;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_10024DD58(v63, type metadata accessor for ConnectionState);
      if (v104)
      {
        if (v104 != 2)
        {
          v65 = v121;
          if (v104 == 8 && v123 == 0x8000000000000000)
          {
            v131 = 0u;
            memset(v132, 0, 27);
            v129 = 0u;
            v130 = 0u;
            v66 = v121;
            sub_100245BFC(&v129, v35);
            v65 = v66;
          }

          goto LABEL_79;
        }

        v83 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v84 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v85 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *(v127 + 11) = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v86 = *(v127 + 11);
        v126[2] = v84;
        v127[0] = v85;
        v126[1] = v83;
        v126[0] = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *(v132 + 11) = v86;
        v87 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v130 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v131 = v87;
        v132[0] = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v129 = *((v123 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1000CB914(v126, v125);
        sub_100245BFC(&v129, v35);
        sub_1000CB970(v126);
LABEL_78:
        v65 = v121;
LABEL_79:
        sub_1002450B0(v65);
        goto LABEL_80;
      }

      v88 = static MonotonicTime.now()();
      v89 = v114;
      v90 = v114 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
      v91 = *(v114 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
      *v90 = 0;
      *(v90 + 8) = v88;
      sub_10023C770(v91);
      v92 = swift_unknownObjectWeakLoadStrong();
      if (!v92)
      {
LABEL_77:
        v97 = v89 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
        swift_beginAccess();
        *v97 = 0;
        *(v97 + 8) = 0;
        *(v97 + 16) = 1;
        v98 = *(**(v89 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);
        v99 = v89;

        v98(v100);

        v101 = type metadata accessor for ConnectionStatus.Error(0);
        v102 = v106;
        (*(*(v101 - 8) + 56))(v106, 1, 1, v101);
        v103 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
        swift_beginAccess();
        sub_10024DB8C(v102, v99 + v103);
        swift_endAccess();
        goto LABEL_78;
      }

      v40 = v92;
      v93 = *(v92 + 16);
      v94 = v111;
      *v111 = v93;
      v95 = v105;
      v108(v94, v107, v105);
      v96 = v93;
      LOBYTE(v93) = sub_1004A5404();
      v110(v94, v95);
      if (v93)
      {
        (*(v40 + 32))(0xB000000000000008);
        swift_unknownObjectRelease();
        goto LABEL_77;
      }

      goto LABEL_87;
    }

    sub_10024DD58(v63, type metadata accessor for ConnectionState);
    return;
  }

LABEL_19:

  v36 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v37 = v114;
  swift_beginAccess();
  v38 = v37 + v36;
  v39 = v118;
  sub_10000E268(v38, v118, &qword_1005D5968, &unk_1004E9180);
  v40 = sub_1004A4A74();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v42 = v121;
    v43 = *(v121 + 4);
    *&v126[0] = *(v121 + 3);
    v125[0] = v43;
    sub_10024DBFC(&v128, &v124);
    sub_10000E268(v126, &v124, &qword_1005D5D10, &qword_1004E9370);
    sub_10000E268(v125, &v124, &qword_1005D5D10, &qword_1004E9370);
    v44 = sub_1004A4A54();
    v45 = v37;
    v46 = sub_1004A6014();
    sub_10024DC58(&v128);
    sub_100025F40(v126, &qword_1005D5D10, &qword_1004E9370);
    sub_100025F40(v125, &qword_1005D5D10, &qword_1004E9370);
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124 = v48;
      *v47 = 68158210;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      *(v47 + 10) = *(v45 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v47 + 11) = 2082;
      v49 = ConnectionID.debugDescription.getter(*v42);
      v51 = sub_10015BA6C(v49, v50, &v124);

      *(v47 + 13) = v51;
      _os_log_impl(&_mh_execute_header, v44, v46, "[%.*hhx] Got callback for connection %{public}s but this connection is unknown to the pool.", v47, 0x15u);
      sub_1000197E0(v48);
    }

    else
    {
    }

    (*(v41 + 8))(v118, v40);
    return;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  sub_1001978DC(v27, v122, v40);
  sub_1004A6D24();
  __break(1u);

  __break(1u);
}

uint64_t sub_1002450B0(__int128 *a1)
{
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    swift_beginAccess();
    v7 = *(v1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1001EBC5C(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + v6) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1001EBC5C((v9 > 1), v10 + 1, 1, v7);
    }

    v11 = *(a1 + 1);
    v12 = *(a1 + 4);
    v32 = *(a1 + 3);
    v33 = v11;
    v31 = v12;
    *(v7 + 2) = v10 + 1;
    v13 = &v7[40 * v10];
    v14 = *a1;
    v15 = a1[1];
    *(v13 + 8) = *(a1 + 4);
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    *(v1 + v6) = v7;
    swift_endAccess();
    sub_10024DBFC(&v33, v30);
    sub_10000E268(&v32, v30, &qword_1005D5D10, &qword_1004E9370);
    return sub_10000E268(&v31, v30, &qword_1005D5D10, &qword_1004E9370);
  }

  else
  {
    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v1 + v17, v5, &qword_1005D5968, &unk_1004E9180);
    v18 = sub_1004A4A74();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v5, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v20 = v1;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v21 = sub_1004A4A54();
      v22 = sub_1004A6014();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 68157952;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        *(v23 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx] Trying to enqueue event outside withEnqueuedSend.", v23, 0xBu);
      }

      else
      {
      }

      (*(v19 + 8))(v5, v18);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_10000C9C0(&qword_1005D35D8, &qword_1004DD1C0);
        inited = swift_initStackObject();
        v25 = *(a1 + 1);
        v26 = *(a1 + 4);
        v32 = *(a1 + 3);
        v33 = v25;
        v31 = v26;
        v27 = *a1;
        *(inited + 16) = xmmword_1004CEAA0;
        *(inited + 32) = v27;
        *(inited + 48) = a1[1];
        *(inited + 64) = v26;
        sub_10024DBFC(&v33, v29);
        sub_10000E268(&v32, v29, &qword_1005D5D10, &qword_1004E9370);
        sub_10000E268(&v31, v29, &qword_1005D5D10, &qword_1004E9370);
        sub_10022F130(inited);
        swift_unknownObjectRelease();
        swift_setDeallocating();
        return sub_10024DD04(inited + 32);
      }
    }
  }

  return result;
}

void sub_10024549C(unsigned int *a1)
{
  v3 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v3 - 8);
  v55 = &v47[-v4];
  v5 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v5 - 8);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v47[-v9];
  v11 = type metadata accessor for ConnectionStatus.Error(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59[0] = *(a1 + 1);
  if (v59[0] >> 60 != 1)
  {
    return;
  }

  v49 = v7;
  v52 = a1;
  v15 = *a1;

  sub_100245F48(v53, v15);
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v54 = v1;
  v50 = v12;
  v51 = v16;
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
LABEL_29:
    v18 = sub_1004A6A34();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  while (1)
  {
    if (v18 == v19)
    {

      v26 = v53;
      goto LABEL_24;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v17 + 8 * v19 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v15)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_28;
    }
  }

  v48 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_unknownObjectRelease();
  if (v48 != v15)
  {
    goto LABEL_9;
  }

LABEL_13:

  v21 = v54;
  swift_beginAccess();
  v22 = sub_100169180(v19);
  v23 = swift_endAccess();
  v24 = (*(*v22 + 352))(v23);
  sub_100226190(v24, v10);

  v25 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    sub_100025F40(v10, &qword_1005CCEB0, &qword_1004E9140);
  }

  else
  {
    sub_10024DDB8(v10, v14, type metadata accessor for ConnectionStatus.Error);
    v27 = v49;
    sub_10024DDB8(v14, v49, type metadata accessor for ConnectionStatus.Error);
    (*(v25 + 56))(v27, 0, 1, v11);
    v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_10024DB8C(v27, v21 + v28);
    swift_endAccess();
  }

  v29 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v30 = v55;
  sub_10000E268(v21 + v29, v55, &qword_1005D5968, &unk_1004E9180);
  v31 = sub_1004A4A74();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v50 = v31;
  if (v33(v30, 1) == 1)
  {
    __break(1u);
    return;
  }

  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v34 = *(v52 + 3);
  v57 = *(v52 + 4);
  v58 = v34;

  sub_10024DBFC(v59, v56);
  sub_10000E268(&v58, v56, &qword_1005D5D10, &qword_1004E9370);
  sub_10000E268(&v57, v56, &qword_1005D5D10, &qword_1004E9370);
  v35 = sub_1004A4A54();
  v36 = sub_1004A6034();
  sub_10024DC58(v59);
  sub_100025F40(&v58, &qword_1005D5D10, &qword_1004E9370);
  sub_100025F40(&v57, &qword_1005D5D10, &qword_1004E9370);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56[0] = v38;
    *v37 = 68158466;
    *(v37 + 4) = 2;
    *(v37 + 8) = 256;
    *(v37 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v37 + 11) = 2082;
    v39 = ConnectionID.debugDescription.getter(v15);
    v41 = sub_10015BA6C(v39, v40, v56);

    *(v37 + 13) = v41;
    *(v37 + 21) = 2048;
    v42 = *(v21 + v51);
    if (v42 >> 62)
    {
      v43 = sub_1004A6A34();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v52;
    v26 = v53;

    *(v37 + 23) = v43;

    _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx] Closing connection %{public}s. Remaining connection count: %ld.", v37, 0x1Fu);
    sub_1000197E0(v38);

    v30 = v55;
  }

  else
  {

    v44 = v52;
    v26 = v53;
  }

  v45 = (*(v32 + 8))(v30, v50);
  (*(*v22 + 536))(v45);
  sub_1002450B0(v44);

LABEL_24:
  v46 = CommandConnection.RecentErrors.backOffBehavior.getter(v26);

  if (v46 != 3)
  {
    swift_beginAccess();
    sub_100222E4C(v46);
    swift_endAccess();
    sub_1002414F4();
  }
}

uint64_t sub_100245BFC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v3 + v8, v7, &qword_1005D5968, &unk_1004E9180);
  v9 = sub_1004A4A74();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v12 = sub_1004A4A54();
    v13 = sub_1004A5FF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v14 = 68158210;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      *(v14 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v14 + 11) = 2082;
      v15 = ConnectionID.debugDescription.getter(a2);
      v17 = sub_10015BA6C(v15, v16, v27);

      *(v14 + 13) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx] Mailbox selection changed on %{public}s.", v14, 0x15u);
      sub_1000197E0(v24);
    }

    else
    {
    }

    (*(v10 + 8))(v7, v9);
    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v19 = *(v3 + v18);
    if (v19 >> 62)
    {
LABEL_19:
      v20 = sub_1004A6A34();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v21 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = sub_1004A6794();
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_16:
            __break(1u);
          }
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v22 = *(v19 + 8 * v21 + 32);

          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_16;
          }
        }

        v26 = v22;
        sub_100247ED8(&v26, a2, v25, v3);

        ++v21;
      }

      while (v23 != v20);
    }
  }

  return result;
}

uint64_t sub_100245F48(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v279) = a2;
  v5 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v5 - 8);
  v267 = &v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v266 = &v252 - v8;
  v272 = sub_1004A5214();
  v277 = *(v272 - 8);
  __chkstk_darwin(v272);
  v275 = &v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v265 = &v252 - v11;
  __chkstk_darwin(v12);
  v257 = &v252 - v13;
  __chkstk_darwin(v14);
  v262 = &v252 - v15;
  v16 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v16 - 8);
  v18 = &v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v263 = &v252 - v20;
  __chkstk_darwin(v21);
  v264 = &v252 - v22;
  __chkstk_darwin(v23);
  v274 = &v252 - v24;
  __chkstk_darwin(v25);
  v271 = (&v252 - v26);
  __chkstk_darwin(v27);
  v260 = &v252 - v28;
  __chkstk_darwin(v29);
  v261 = &v252 - v30;
  __chkstk_darwin(v31);
  v273 = (&v252 - v32);
  __chkstk_darwin(v33);
  v35 = &v252 - v34;
  v270 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  __chkstk_darwin(v270);
  v259 = &v252 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v256 = &v252 - v38;
  __chkstk_darwin(v39);
  v276 = &v252 - v40;
  __chkstk_darwin(v41);
  v258 = &v252 - v42;
  __chkstk_darwin(v43);
  v269 = (&v252 - v44);
  __chkstk_darwin(v45);
  v268 = &v252 - v46;
  __chkstk_darwin(v47);
  v254 = &v252 - v48;
  __chkstk_darwin(v49);
  v51 = &v252 - v50;
  __chkstk_darwin(v52);
  v255 = &v252 - v53;
  __chkstk_darwin(v54);
  v253 = &v252 - v55;
  __chkstk_darwin(v56);
  v58 = &v252 - v57;
  __chkstk_darwin(v59);
  v61 = &v252 - v60;
  __chkstk_darwin(v62);
  v64 = &v252 - v63;
  __chkstk_darwin(v65);
  v67 = &v252 - v66;
  __chkstk_darwin(v68);
  v70 = &v252 - v69;
  v278 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
  if (CommandConnection.RecentErrors.isEmpty.getter(a1))
  {
    v71 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v3 + v71, v18, &qword_1005D5968, &unk_1004E9180);
    v72 = sub_1004A4A74();
    v73 = *(v72 - 8);
    result = (*(v73 + 48))(v18, 1, v72);
    if (result != 1)
    {
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v75 = sub_1004A4A54();
      v76 = sub_1004A6034();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v280[0] = v78;
        *v77 = 68158210;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        v79 = v279;
        *(v77 + 10) = v278;
        *(v77 + 11) = 2082;
        v80 = ConnectionID.debugDescription.getter(v79);
        v82 = sub_10015BA6C(v80, v81, v280);

        *(v77 + 13) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx-%{public}s] Connection did close.", v77, 0x15u);
        sub_1000197E0(v78);
      }

      return (*(v73 + 8))(v18, v72);
    }

    __break(1u);
    goto LABEL_53;
  }

  CommandConnection.RecentErrors.Statistics.init(_:)(v83, v70);
  if (*v70 == 1)
  {
    v84 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(v3 + v84, v35, &qword_1005D5968, &unk_1004E9180);
    v85 = sub_1004A4A74();
    isa = v85[-1].isa;
    result = (*(isa + 6))(v35, 1, v85);
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v87 = v70;
    sub_10024DECC(v70, v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    sub_10024DECC(v70, v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    v88 = sub_1004A4A54();
    v89 = sub_1004A6024();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v280[0] = v277;
      *v90 = 68158722;
      *(v90 + 4) = 2;
      *(v90 + 8) = 256;
      v91 = v279;
      *(v90 + 10) = v278;
      *(v90 + 11) = 2082;
      v92 = ConnectionID.debugDescription.getter(v91);
      v279 = v85;
      v94 = sub_10015BA6C(v92, v93, v280);

      *(v90 + 13) = v94;
      *(v90 + 21) = 2048;
      v95 = *(v67 + 1);
      sub_10024DD58(v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v90 + 23) = v95;
      *(v90 + 31) = 2048;
      v96 = *(v64 + 2);
      sub_10024DD58(v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v90 + 33) = v96;
      _os_log_impl(&_mh_execute_header, v88, v89, "[%.*hhx-%{public}s] Connection failed to parse server response. Failed commands: %ld. Network errors: %ld.", v90, 0x29u);
      sub_1000197E0(v277);

      v97 = v87;
      v85 = v279;
    }

    else
    {
      sub_10024DD58(v64, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_10024DD58(v67, type metadata accessor for CommandConnection.RecentErrors.Statistics);

      v97 = v87;
    }

    sub_10024DD58(v97, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    return (*(isa + 1))(v35, v85);
  }

  else if (v70[1] == 1)
  {
    v98 = *(v70 + 6);
    if (v98)
    {
      v99 = *(v70 + 4);
      v275 = *(v70 + 5);
      v100 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v101 = v3 + v100;
      v102 = v273;
      sub_10000E268(v101, v273, &qword_1005D5968, &unk_1004E9180);
      v103 = sub_1004A4A74();
      v104 = *(v103 - 8);
      result = (*(v104 + 48))(v102, 1, v103);
      if (result == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v277 = v104;
      sub_1000110B0(v99);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10024DECC(v70, v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_10024DECC(v70, v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1000110B0(v99);

      v105 = sub_1004A4A54();
      v106 = sub_1004A6014();
      sub_10001114C(v99);

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v274 = v103;
        v108 = v107;
        v272 = swift_slowAlloc();
        v280[0] = v272;
        *v108 = 68158978;
        *(v108 + 4) = 2;
        *(v108 + 8) = 256;
        v109 = v279;
        *(v108 + 10) = v278;
        *(v108 + 11) = 2082;
        v110 = ConnectionID.debugDescription.getter(v109);
        v112 = sub_10015BA6C(v110, v111, v280);

        *(v108 + 13) = v112;
        *(v108 + 21) = 2048;
        v276 = v70;
        v113 = *(v61 + 1);
        sub_10024DD58(v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v108 + 23) = v113;
        *(v108 + 31) = 2048;
        v114 = *(v58 + 2);
        sub_10024DD58(v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v108 + 33) = v114;
        *(v108 + 41) = 2082;
        v115 = ResponseText.debugDescription.getter(v99, v275, v98);
        v117 = sub_10015BA6C(v115, v116, v280);

        *(v108 + 43) = v117;
        _os_log_impl(&_mh_execute_header, v105, v106, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. '%{public}s'", v108, 0x33u);
        swift_arrayDestroy();

        v103 = v274;

        sub_10001114C(v99);

        v118 = v276;
        v102 = v273;
      }

      else
      {
        sub_10024DD58(v58, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DD58(v61, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10001114C(v99);

        v118 = v70;
      }

      sub_10024DD58(v118, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v277[1])(v102, v103);
    }

    else
    {
      v161 = v266;
      sub_10000E268(&v70[*(v270 + 48)], v266, &unk_1005D54F0, &unk_1004E8DA0);
      v162 = v277;
      v163 = v272;
      if ((v277[6])(v161, 1, v272) == 1)
      {
        sub_100025F40(v161, &unk_1005D54F0, &unk_1004E8DA0);
        v164 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v165 = v260;
        sub_10000E268(v3 + v164, v260, &qword_1005D5968, &unk_1004E9180);
        v166 = sub_1004A4A74();
        v167 = v166[-1].isa;
        result = (*(v167 + 6))(v165, 1, v166);
        if (result == 1)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_10024DECC(v70, v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v168 = v254;
        sub_10024DECC(v70, v254, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v169 = sub_1004A4A54();
        v170 = sub_1004A6014();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v280[0] = v172;
          *v171 = 68158722;
          *(v171 + 4) = 2;
          *(v171 + 8) = 256;
          v173 = v279;
          *(v171 + 10) = v278;
          *(v171 + 11) = 2082;
          v174 = ConnectionID.debugDescription.getter(v173);
          v279 = v166;
          v176 = sub_10015BA6C(v174, v175, v280);

          *(v171 + 13) = v176;
          *(v171 + 21) = 2048;
          v276 = v70;
          v177 = *(v51 + 1);
          sub_10024DD58(v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v171 + 23) = v177;
          *(v171 + 31) = 2048;
          v178 = v168;
          v179 = *(v168 + 16);
          sub_10024DD58(v178, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v171 + 33) = v179;
          _os_log_impl(&_mh_execute_header, v169, v170, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld.", v171, 0x29u);
          sub_1000197E0(v172);
          v165 = v260;

          v180 = v276;
          v166 = v279;
        }

        else
        {
          sub_10024DD58(v168, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v51, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v180 = v70;
        }

        sub_10024DD58(v180, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v167 + 1))(v165, v166);
      }

      else
      {
        v200 = v262;
        (v162[4])(v262, v161, v163);
        v201 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v202 = v3 + v201;
        v203 = v261;
        sub_10000E268(v202, v261, &qword_1005D5968, &unk_1004E9180);
        v204 = sub_1004A4A74();
        v205 = *(v204 - 8);
        result = (*(v205 + 48))(v203, 1, v204);
        if (result == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v274 = v205;
        v275 = v204;
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v206 = v253;
        sub_10024DECC(v70, v253, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v276 = v70;
        v207 = v255;
        sub_10024DECC(v70, v255, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v208 = v257;
        v273 = v162[2];
        (v273)(v257, v200, v163);
        v209 = sub_1004A4A54();
        v210 = sub_1004A6014();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          LODWORD(v270) = v210;
          v212 = v211;
          v269 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v280[0] = v271;
          *v212 = 68158978;
          *(v212 + 4) = 2;
          *(v212 + 8) = 256;
          v213 = v279;
          *(v212 + 10) = v278;
          *(v212 + 11) = 2082;
          v214 = ConnectionID.debugDescription.getter(v213);
          v216 = sub_10015BA6C(v214, v215, v280);
          v279 = v209;
          v217 = v162;
          v218 = v163;
          v219 = v216;

          *(v212 + 13) = v219;
          *(v212 + 21) = 2048;
          v220 = *(v206 + 8);
          sub_10024DD58(v206, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v212 + 23) = v220;
          v203 = v261;
          *(v212 + 31) = 2048;
          v221 = v207;
          v222 = *(v207 + 16);
          sub_10024DD58(v221, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v212 + 33) = v222;
          *(v212 + 41) = 2112;
          sub_10024DCAC();
          swift_allocError();
          (v273)(v223, v208, v218);
          v224 = _swift_stdlib_bridgeErrorToNSError();
          v225 = v217[1];
          v225(v208, v218);
          *(v212 + 43) = v224;
          v226 = v269;
          *v269 = v224;
          v227 = v279;
          _os_log_impl(&_mh_execute_header, v279, v270, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. %@", v212, 0x33u);
          sub_100025F40(v226, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v271);

          v225(v262, v218);
        }

        else
        {
          sub_10024DD58(v207, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v206, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v250 = v162[1];
          v250(v208, v163);
          v250(v200, v163);
        }

        sub_10024DD58(v276, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v274 + 8))(v203, v275);
      }
    }
  }

  else
  {
    v119 = v276;
    v120 = v277;
    v121 = v275;
    if (v70[2] == 1)
    {
      v122 = v70;
      v123 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v124 = v3;
      v125 = v271;
      sub_10000E268(v3 + v123, v271, &qword_1005D5968, &unk_1004E9180);
      v126 = sub_1004A4A74();
      v127 = *(v126 - 8);
      result = (*(v127 + 48))(v125, 1, v126);
      if (result == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v128 = sub_1004A4A54();
      v129 = sub_1004A6014();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v282 = v131;
        *v130 = 68158210;
        *(v130 + 4) = 2;
        *(v130 + 8) = 256;
        v132 = v279;
        *(v130 + 10) = v278;
        *(v130 + 11) = 2082;
        v133 = ConnectionID.debugDescription.getter(v132);
        v135 = sub_10015BA6C(v133, v134, &v282);
        v125 = v271;

        *(v130 + 13) = v135;
        _os_log_impl(&_mh_execute_header, v128, v129, "[%.*hhx-%{public}s] Server is temporarily unavailable.", v130, 0x15u);
        sub_1000197E0(v131);
        v120 = v277;

        v121 = v275;
      }

      v119 = v276;
      (*(v127 + 8))(v125, v126);
      v3 = v124;
      v70 = v122;
    }

    v136 = *(v70 + 6);
    if (v136)
    {
      v137 = *(v70 + 4);
      v277 = *(v70 + 5);
      v138 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v139 = v274;
      sub_10000E268(v3 + v138, v274, &qword_1005D5968, &unk_1004E9180);
      v140 = sub_1004A4A74();
      v141 = *(v140 - 8);
      result = (v141[6].isa)(v139, 1, v140);
      if (result == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      sub_1000110B0(v137);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v142 = v268;
      sub_10024DECC(v70, v268, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      v143 = v269;
      sub_10024DECC(v70, v269, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1000110B0(v137);

      v144 = sub_1004A4A54();
      v145 = sub_1004A6014();
      sub_10001114C(v137);

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v275 = v140;
        v147 = v143;
        v148 = v146;
        v273 = swift_slowAlloc();
        v281 = v273;
        *v148 = 68158978;
        *(v148 + 4) = 2;
        *(v148 + 8) = 256;
        v149 = v279;
        *(v148 + 10) = v278;
        *(v148 + 11) = 2082;
        v150 = ConnectionID.debugDescription.getter(v149);
        v279 = v141;
        v152 = sub_10015BA6C(v150, v151, &v281);
        v276 = v70;
        v153 = v152;

        *(v148 + 13) = v153;
        *(v148 + 21) = 2048;
        v154 = *(v142 + 8);
        sub_10024DD58(v142, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v148 + 23) = v154;
        *(v148 + 31) = 2048;
        v155 = v147[2];
        v156 = v147;
        v140 = v275;
        sub_10024DD58(v156, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v148 + 33) = v155;
        *(v148 + 41) = 2082;
        v157 = ResponseText.debugDescription.getter(v137, v277, v136);
        v159 = sub_10015BA6C(v157, v158, &v281);

        *(v148 + 43) = v159;
        _os_log_impl(&_mh_execute_header, v144, v145, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. '%{public}s'", v148, 0x33u);
        swift_arrayDestroy();

        v139 = v274;

        sub_10001114C(v137);

        v160 = v276;
        v141 = v279;
      }

      else
      {
        sub_10024DD58(v143, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DD58(v142, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10001114C(v137);

        v160 = v70;
      }

      sub_10024DD58(v160, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v141[1].isa)(v139, v140);
    }

    else
    {
      v181 = v267;
      sub_10000E268(&v70[*(v270 + 48)], v267, &unk_1005D54F0, &unk_1004E8DA0);
      v182 = v272;
      if ((v120[6])(v181, 1, v272) == 1)
      {
        sub_100025F40(v181, &unk_1005D54F0, &unk_1004E8DA0);
        v183 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v184 = v263;
        sub_10000E268(v3 + v183, v263, &qword_1005D5968, &unk_1004E9180);
        v185 = sub_1004A4A74();
        v186 = v185[-1].isa;
        result = (*(v186 + 6))(v184, 1, v185);
        if (result == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v187 = v256;
        sub_10024DECC(v70, v256, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v188 = v259;
        sub_10024DECC(v70, v259, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v189 = sub_1004A4A54();
        v190 = sub_1004A6014();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v281 = v192;
          *v191 = 68158722;
          *(v191 + 4) = 2;
          *(v191 + 8) = 256;
          v193 = v279;
          *(v191 + 10) = v278;
          *(v191 + 11) = 2082;
          v194 = ConnectionID.debugDescription.getter(v193);
          v279 = v185;
          v196 = sub_10015BA6C(v194, v195, &v281);

          *(v191 + 13) = v196;
          *(v191 + 21) = 2048;
          v197 = v187;
          v198 = *(v187 + 8);
          sub_10024DD58(v197, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v191 + 23) = v198;
          *(v191 + 31) = 2048;
          v199 = *(v188 + 16);
          v185 = v279;
          sub_10024DD58(v188, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v191 + 33) = v199;
          _os_log_impl(&_mh_execute_header, v189, v190, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld.", v191, 0x29u);
          sub_1000197E0(v192);
          v184 = v263;
        }

        else
        {
          sub_10024DD58(v188, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v187, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        }

        sub_10024DD58(v70, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v186 + 1))(v184, v185);
      }

      else
      {
        v228 = v265;
        (v120[4])(v265, v181, v182);
        v229 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v230 = v3 + v229;
        v231 = v264;
        sub_10000E268(v230, v264, &qword_1005D5968, &unk_1004E9180);
        v232 = sub_1004A4A74();
        v274 = *(v232 - 1);
        v233 = *(v274 + 48);
        v277 = v232;
        result = v233(v231, 1);
        if (result == 1)
        {
LABEL_60:
          __break(1u);
          return result;
        }

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v234 = v258;
        sub_10024DECC(v70, v258, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_10024DECC(v70, v119, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v276 = v70;
        v235 = v120[2];
        v235(v121, v228, v182);
        v236 = sub_1004A4A54();
        LODWORD(v273) = sub_1004A6014();
        if (os_log_type_enabled(v236, v273))
        {
          v237 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v281 = v271;
          *v237 = 68158978;
          *(v237 + 4) = 2;
          *(v237 + 8) = 256;
          v238 = v279;
          *(v237 + 10) = v278;
          *(v237 + 11) = 2082;
          v239 = ConnectionID.debugDescription.getter(v238);
          v241 = sub_10015BA6C(v239, v240, &v281);

          *(v237 + 13) = v241;
          *(v237 + 21) = 2048;
          v242 = v120;
          v243 = *(v234 + 8);
          sub_10024DD58(v234, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v237 + 23) = v243;
          *(v237 + 31) = 2048;
          v244 = *(v119 + 16);
          sub_10024DD58(v119, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v237 + 33) = v244;
          *(v237 + 41) = 2112;
          sub_10024DCAC();
          swift_allocError();
          v245 = v275;
          v235(v246, v275, v182);
          v247 = _swift_stdlib_bridgeErrorToNSError();
          v248 = v242[1];
          v248(v245, v182);
          *(v237 + 43) = v247;
          v249 = v270;
          *v270 = v247;
          _os_log_impl(&_mh_execute_header, v236, v273, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. %@", v237, 0x33u);
          sub_100025F40(v249, &qword_1005D51A0, &qword_1004D0940);

          sub_1000197E0(v271);

          v248(v265, v182);
          v231 = v264;
        }

        else
        {
          sub_10024DD58(v119, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_10024DD58(v234, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v251 = v120[1];
          v251(v275, v182);
          v251(v228, v182);
        }

        sub_10024DD58(v276, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v274 + 8))(v231, v277);
      }
    }
  }
}

uint64_t sub_100247ED8(uint64_t *a1, int a2, __int128 *a3, uint64_t a4)
{
  v8 = a3[3];
  v106 = a3[2];
  v107[0] = v8;
  *(v107 + 11) = *(a3 + 59);
  v9 = a3[1];
  v104 = *a3;
  v105 = v9;
  v10 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v10 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v83 - v14;
  __chkstk_darwin(v16);
  v88 = &v83 - v17;
  v19 = __chkstk_darwin(v18);
  v21 = &v83 - v20;
  v22 = *a1;
  v23 = (*(**a1 + 608))(v19);
  v25 = *(v22 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v108 = v23;
  v109 = v24;
  *&v114[11] = *(v107 + 11);
  v113 = v106;
  *v114 = v107[0];
  v111 = v104;
  v112 = v105;
  LODWORD(v87) = a2;
  v110 = v25 == a2;
  if (v25 != a2)
  {
    if (v23)
    {
      v46 = v23;
      LODWORD(v88) = v25;
      v86 = v24;
      v47 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(a4 + v47, v21, &qword_1005D5968, &unk_1004E9180);
      v48 = sub_1004A4A74();
      v87 = *(v48 - 8);
      result = (*(v87 + 48))(v21, 1, v48);
      if (result != 1)
      {
        swift_retain_n();
        sub_10000E268(a3, &v99, &qword_1005CF260, &qword_1004D2420);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();

        v49 = sub_1004A4A54();
        v50 = sub_1004A5FF4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v85 = v48;
          v52 = v51;
          *&v95[0] = swift_slowAlloc();
          *v52 = 68158723;
          *(v52 + 4) = 2;
          *(v52 + 8) = 256;
          v53 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v52 + 10) = v53;

          *(v52 + 11) = 2082;
          v54 = ConnectionID.debugDescription.getter(v88);
          v56 = sub_10015BA6C(v54, v55, v95);

          *(v52 + 13) = v56;
          *(v52 + 21) = 2160;
          *(v52 + 23) = 0x786F626C69616DLL;
          *(v52 + 31) = 2085;
          v99 = v46;
          LODWORD(v100) = v86;
          v57 = sub_1004A5824();
          v59 = sub_10015BA6C(v57, v58, v95);

          *(v52 + 33) = v59;
          _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s'", v52, 0x29u);
          swift_arrayDestroy();

          v48 = v85;

          sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);
        }

        else
        {

          sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);
        }

        return (*(v87 + 8))(v21, v48);
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    LODWORD(v88) = v25;
    v60 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a4 + v60, v12, &qword_1005D5968, &unk_1004E9180);
    v61 = sub_1004A4A74();
    v62 = *(v61 - 8);
    result = (*(v62 + 48))(v12, 1, v61);
    if (result != 1)
    {
      sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
      sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v63 = sub_1004A4A54();
      v64 = sub_1004A6034();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v87 = v61;
        v67 = v66;
        *&v97[0] = v66;
        *v65 = 68158210;
        *(v65 + 4) = 2;
        *(v65 + 8) = 256;
        *(v65 + 10) = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v65 + 11) = 2082;
        v68 = ConnectionID.debugDescription.getter(v88);
        v70 = sub_10015BA6C(v68, v69, v97);

        *(v65 + 13) = v70;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%.*hhx] %{public}s: -", v65, 0x15u);
        sub_1000197E0(v67);
        v61 = v87;
      }

      else
      {
      }

      return (*(v62 + 8))(v12, v61);
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*a3)
  {
    v71 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    v72 = a4;
    swift_beginAccess();
    sub_10000E268(a4 + v71, v15, &qword_1005D5968, &unk_1004E9180);
    v73 = sub_1004A4A74();
    v74 = *(v73 - 8);
    result = (*(v74 + 48))(v15, 1, v73);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v75 = sub_1004A4A54();
      v76 = sub_1004A6034();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v88 = v73;
        v78 = v77;
        v79 = swift_slowAlloc();
        *&v97[0] = v79;
        *v78 = 68158210;
        *(v78 + 4) = 2;
        *(v78 + 8) = 256;
        *(v78 + 10) = *(v72 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v78 + 11) = 2082;
        v80 = ConnectionID.debugDescription.getter(v87);
        v82 = sub_10015BA6C(v80, v81, v97);

        *(v78 + 13) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx] %{public}s: - *", v78, 0x15u);
        sub_1000197E0(v79);

        v73 = v88;
      }

      else
      {
      }

      sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);
      return (*(v74 + 8))(v15, v73);
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v99 = *a3;
  v101 = *(a3 + 24);
  v102 = *(a3 + 40);
  *v103 = *(a3 + 56);
  *&v103[15] = *(a3 + 71);
  v100 = *(a3 + 8);
  if (!v23)
  {
    goto LABEL_17;
  }

  v26 = v23;
  v86 = v24;
  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v28 = v88;
  sub_10000E268(a4 + v27, v88, &qword_1005D5968, &unk_1004E9180);
  v29 = sub_1004A4A74();
  v84 = *(v29 - 8);
  v85 = v29;
  result = (*(v84 + 48))(v28, 1);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_retain_n();
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);
  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);

  sub_10000E268(a3, v97, &qword_1005CF260, &qword_1004D2420);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v97[2] = v106;
  v98[0] = v107[0];
  *(v98 + 11) = *(v107 + 11);
  v97[0] = v104;
  v97[1] = v105;
  sub_10000E268(a3, v95, &qword_1005CF260, &qword_1004D2420);
  sub_1000CB914(v97, v95);
  v31 = sub_1004A4A54();
  v32 = sub_1004A6034();

  v83 = v31;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *&v93[0] = swift_slowAlloc();
    *v33 = 68160003;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v34 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v33 + 10) = v34;

    *(v33 + 11) = 2082;
    v35 = ConnectionID.debugDescription.getter(v87);
    v37 = sub_10015BA6C(v35, v36, v93);

    *(v33 + 13) = v37;
    *(v33 + 21) = 2160;
    *(v33 + 23) = 0x786F626C69616DLL;
    *(v33 + 31) = 2085;
    *&v95[0] = v26;
    DWORD2(v95[0]) = v86;
    v38 = sub_1004A5824();
    v40 = sub_10015BA6C(v38, v39, v93);

    *(v33 + 33) = v40;
    *(v33 + 41) = 2048;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 43) = v101;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 51) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v41 = DWORD2(v101);
    if (BYTE12(v101))
    {
      v41 = 0;
    }

    *(v33 + 53) = v41;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 57) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v42 = DWORD2(v102);
    if (BYTE12(v102))
    {
      v42 = 0;
    }

    *(v33 + 59) = v42;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 63) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v43 = *v103;
    if (v103[4])
    {
      v43 = 0;
    }

    *(v33 + 65) = v43;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 69) = 1024;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    *(v33 + 71) = v103[18] & 1;
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v44 = v32;
    v45 = v83;
    _os_log_impl(&_mh_execute_header, v83, v44, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s' * messageCount %ld, firstUnseenMessage %u, nextUID %u, uidValidity 0x%x, isReadOnly %{BOOL}d", v33, 0x4Bu);
    swift_arrayDestroy();

    sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);
  }

  else
  {
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v89[2] = v106;
    v90[0] = v107[0];
    *(v90 + 11) = *(v107 + 11);
    v89[0] = v104;
    v89[1] = v105;
    sub_1000CB970(v89);
    v91[2] = v106;
    v92[0] = v107[0];
    *(v92 + 11) = *(v107 + 11);
    v91[0] = v104;
    v91[1] = v105;
    sub_1000CB970(v91);
    v93[2] = v106;
    v94[0] = v107[0];
    *(v94 + 11) = *(v107 + 11);
    v93[0] = v104;
    v93[1] = v105;
    sub_1000CB970(v93);

    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    sub_100025F40(a3, &qword_1005CF260, &qword_1004D2420);
    v95[2] = v106;
    v96[0] = v107[0];
    *(v96 + 11) = *(v107 + 11);
    v95[0] = v104;
    v95[1] = v105;
    sub_1000CB970(v95);
    sub_1000CB970(&v99);
    sub_1000CB970(&v99);

    sub_100025F40(&v108, &qword_1005D5D20, &qword_1004E9388);
  }

  return (*(v84 + 8))(v88, v85);
}

uint64_t sub_100248D88(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_100248DE8()
{
  v1 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  if (*(v12 + 16))
  {
    return sub_100241B8C();
  }

  v13 = *(v12 + 8);
  result = static MonotonicTime.now()();
  v14 = __OFSUB__(v13, result);
  v15 = v13 - result;
  if (v13 >= result)
  {
LABEL_8:
    if (!v14)
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (__OFSUB__(result, v13))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(0, result - v13);
  v15 = v13 - result;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v16 = v15 / 1000000000.0;
  if (v16 < 0.0)
  {
    return sub_100241B8C();
  }

  v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_10000E268(v0 + v17, v3, &qword_1005D5968, &unk_1004E9180);
  v18 = sub_1004A4A74();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v3, 1, v18);
  if (result == 1)
  {
    goto LABEL_19;
  }

  v20 = v0;

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 68158208;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    *(v23 + 10) = *(v20 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v23 + 11) = 2048;
    *(v23 + 13) = v16;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx] Backoff timer expired, but we still have to wait %f seconds.", v23, 0x15u);
  }

  else
  {
  }

  (*(v19 + 8))(v3, v18);
  return sub_1002414F4();
}

uint64_t sub_100249160(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v6 = *(v1 + v6);
      v9 = v6 >> 62 ? sub_1004A6A34() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {
          goto LABEL_21;
        }

        if ((v6 & 0xC000000000000001) == 0)
        {
          break;
        }

        v1 = sub_1004A6794();
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:

          return 1;
        }

LABEL_12:
        (*(*v1 + 304))();
        if (swift_getEnumCaseMultiPayload() == 2)
        {

          sub_10024DD58(v5, type metadata accessor for ConnectionState);
          return 0;
        }

        v12 = sub_10024DD58(v5, type metadata accessor for ConnectionState);
        v13 = (*(*v1 + 440))(v12);

        if (v13 <= a1)
        {
          v11 = a1 - v13;
          if (__OFSUB__(a1, v13))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (__OFSUB__(v13, a1))
          {
            goto LABEL_27;
          }

          v11 = a1 - v13;
          if (__OFSUB__(0, v13 - a1))
          {
            goto LABEL_29;
          }
        }

        if (v11 / 1000000000.0 < 60.0)
        {

          return 0;
        }
      }

      if (i < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1004A6A34();
      if (!result)
      {
        return result;
      }
    }

    v1 = *(v6 + 8 * i + 32);

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100249404()
{
  v1 = *v0;
  v2 = 0x656D614E676F6CLL;
  v3 = 0x697463656E6E6F63;
  v4 = 0x6F7272457473616CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656E69676E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002494B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10024E298(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002494D8(uint64_t a1)
{
  v2 = sub_10024E054();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249514(uint64_t a1)
{
  v2 = sub_10024E054();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249550(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D5D48, &qword_1004E94D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10002587C(a1, a1[3]);
  sub_10024E054();
  sub_1004A6FA4();
  v13 = 0;
  sub_1004A6C44();
  if (!v2)
  {
    v12 = 1;
    sub_1004A6C44();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_10000C9C0(&qword_1005D5D58, &qword_1004E94E0);
    sub_10024E0A8();
    sub_1004A6C74();
    v10[14] = 3;
    sub_1004A6BE4();
    v10[13] = 4;
    sub_1004A6C44();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10024979C(uint64_t *a1)
{
  v2 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10024AFB0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100249844(v5);
  *a1 = v3;
}

void sub_100249844(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004A6CC4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CommandConnection.RecentErrors.Error(0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100249BC4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100249970(0, v2, 1, a1);
  }
}

void sub_100249970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v26 - v10);
  __chkstk_darwin(v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_10024DECC(v21, v15, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DECC(v18, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      v22 = *v15;
      v23 = *v11;
      sub_10024DD58(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DD58(v15, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_10024DDB8(v21, v34, type metadata accessor for CommandConnection.RecentErrors.Error);
      swift_arrayInitWithTakeFrontToBack();
      sub_10024DDB8(v24, v18, type metadata accessor for CommandConnection.RecentErrors.Error);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100249BC4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v120 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v9 = *(v120 - 8);
  __chkstk_darwin(v120);
  v111 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v103 - v12;
  __chkstk_darwin(v13);
  v122 = (&v103 - v14);
  __chkstk_darwin(v15);
  v121 = (&v103 - v16);
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a4;
    }

    else
    {
LABEL_129:
      v98 = sub_100141810(a4);
    }

    v123 = v98;
    a4 = *(v98 + 2);
    if (a4 >= 2)
    {
      v99 = v9;
      while (*a3)
      {
        v100 = *&v98[16 * a4];
        v101 = v98;
        v9 = *&v98[16 * a4 + 24];
        sub_10024A4FC(*a3 + *(v99 + 72) * v100, *a3 + *(v99 + 72) * *&v98[16 * a4 + 16], *a3 + *(v99 + 72) * v9, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v9 < v100)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_100141810(v101);
        }

        if ((a4 - 2) >= *(v101 + 2))
        {
          goto LABEL_123;
        }

        v102 = &v101[16 * a4];
        *v102 = v100;
        *(v102 + 1) = v9;
        v123 = v101;
        sub_100141784(a4 - 1);
        v98 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v109 = a3;
  v107 = a4;
  v105 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v112 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = v22 + v23 * v21;
      v24 = v121;
      sub_10024DECC(v5, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
      v25 = v122;
      sub_10024DECC(v22 + v23 * v20, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
      v26 = *v24;
      v114 = *v25;
      v115 = v26;
      sub_10024DD58(v25, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_10024DD58(v24, type metadata accessor for CommandConnection.RecentErrors.Error);
      v106 = v20;
      v27 = v20 + 2;
      v116 = v23;
      v117 = v17;
      v28 = v22 + v23 * v27;
      while (v17 != v27)
      {
        LODWORD(v118) = v115 < v114;
        v29 = v121;
        sub_10024DECC(v28, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
        v30 = v6;
        v31 = v122;
        sub_10024DECC(v5, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
        v32 = *v29;
        v33 = *v31;
        v34 = v31;
        v6 = v30;
        sub_10024DD58(v34, type metadata accessor for CommandConnection.RecentErrors.Error);
        v17 = v117;
        sub_10024DD58(v29, type metadata accessor for CommandConnection.RecentErrors.Error);
        ++v27;
        v28 += v116;
        v5 += v116;
        if (((v118 ^ (v32 >= v33)) & 1) == 0)
        {
          v17 = v27 - 1;
          break;
        }
      }

      a3 = v109;
      v9 = v105;
      v20 = v106;
      a4 = v107;
      if (v115 < v114)
      {
        if (v17 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v17)
        {
          v35 = v116 * (v17 - 1);
          v36 = v17 * v116;
          v117 = v17;
          v37 = v17;
          v38 = v106;
          v39 = v106 * v116;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!v40)
              {
                goto LABEL_132;
              }

              v5 = v40 + v39;
              sub_10024DDB8(v40 + v39, v111, type metadata accessor for CommandConnection.RecentErrors.Error);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10024DDB8(v111, v40 + v35, type metadata accessor for CommandConnection.RecentErrors.Error);
              a3 = v109;
            }

            ++v38;
            v35 -= v116;
            v36 -= v116;
            v39 += v116;
          }

          while (v38 < v37);
          v9 = v105;
          v20 = v106;
          a4 = v107;
          v17 = v117;
        }
      }
    }

    v41 = a3[1];
    if (v17 < v41)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_125;
      }

      if (v17 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_127;
        }

        if (v20 + a4 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v20 + a4;
        }

        if (v42 < v20)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v17 != v42)
        {
          break;
        }
      }
    }

    v43 = v17;
    if (v17 < v20)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v112;
    }

    else
    {
      v19 = sub_100085288(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_100085288((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v113 = v43;
    if (a4)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v19[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v19[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v19[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_10024A4FC(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_100141810(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v123 = v85;
        sub_100141784(v47);
        v19 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v19[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    v18 = v113;
    a4 = v107;
    if (v113 >= v17)
    {
      goto LABEL_95;
    }
  }

  v104 = v6;
  v88 = *a3;
  v89 = *(v9 + 72);
  v90 = *a3 + v89 * (v17 - 1);
  v91 = -v89;
  v106 = v20;
  v92 = v20 - v17;
  v110 = v89;
  v118 = v88;
  v5 = v88 + v17 * v89;
  v113 = v42;
LABEL_85:
  v116 = v90;
  v117 = v17;
  v114 = v5;
  v115 = v92;
  v93 = v90;
  while (1)
  {
    v94 = v121;
    sub_10024DECC(v5, v121, type metadata accessor for CommandConnection.RecentErrors.Error);
    v95 = v122;
    sub_10024DECC(v93, v122, type metadata accessor for CommandConnection.RecentErrors.Error);
    a4 = *v94;
    v96 = *v95;
    sub_10024DD58(v95, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_10024DD58(v94, type metadata accessor for CommandConnection.RecentErrors.Error);
    if (a4 >= v96)
    {
LABEL_84:
      v17 = v117 + 1;
      v90 = v116 + v110;
      v92 = v115 - 1;
      v5 = v114 + v110;
      v43 = v113;
      if (v117 + 1 != v113)
      {
        goto LABEL_85;
      }

      v6 = v104;
      v9 = v105;
      a3 = v109;
      v20 = v106;
      if (v113 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v118)
    {
      break;
    }

    a4 = v119;
    sub_10024DDB8(v5, v119, type metadata accessor for CommandConnection.RecentErrors.Error);
    swift_arrayInitWithTakeFrontToBack();
    sub_10024DDB8(a4, v93, type metadata accessor for CommandConnection.RecentErrors.Error);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_10024A4FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v44);
  v46 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v45 = (&v36 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v49 = a1;
  v48 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v16;
    if (v16 >= 1)
    {
      v25 = -v12;
      v26 = v24;
      v40 = a1;
      v41 = a4;
      v39 = v25;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v29 = a3;
          v38 = v24;
          a3 += v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_10024DECC(v31, v45, type metadata accessor for CommandConnection.RecentErrors.Error);
          v33 = v46;
          sub_10024DECC(v28, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
          v34 = *v32;
          v35 = *v33;
          sub_10024DD58(v33, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_10024DD58(v32, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v34 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            v25 = v39;
            a1 = v40;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v30;
          v27 = v42;
          if (v30 <= v41)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v29 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v15;
    v47 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v42 = a3;
      do
      {
        v18 = v45;
        sub_10024DECC(a2, v45, type metadata accessor for CommandConnection.RecentErrors.Error);
        v19 = a2;
        v20 = v46;
        sub_10024DECC(a4, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
        v21 = *v18;
        v22 = *v20;
        sub_10024DD58(v20, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_10024DD58(v18, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
            a2 = v19;
          }

          else
          {
            v23 = v42;
            a2 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v12;
          a4 += v12;
        }

        else
        {
          a2 = v19 + v12;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
          }

          else
          {
            v23 = v42;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v23);
    }
  }

LABEL_58:
  sub_10024A9F8(&v49, &v48, &v47);
}

uint64_t sub_10024A9F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10024AADC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024ABA4(a1, a2, a3, *v3, &qword_1005D4AA8, &unk_1004E2A90, type metadata accessor for CommandConnection.RecentErrors.Error);
  *v3 = result;
  return result;
}

void *sub_10024AB20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024ABA4(a1, a2, a3, *v3, &qword_1005D5D28, &qword_1004E9398, type metadata accessor for ConnectionState);
  *v3 = result;
  return result;
}

char *sub_10024AB64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024AD80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10024AB84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024AE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10024ABA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
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

char *sub_10024AD80(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D5900, &qword_1004E9120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10024AE8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D5D38, &qword_1004E93A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10024AFFC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v54 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v54);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v49 - v5;
  v53 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v8 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v51 = v9;
LABEL_2:
  v10 = *&v9[a2];
  if (v10 >> 62)
  {
    v11 = sub_1004A6A34();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
LABEL_17:

    *(a2 + v52) = v8 + 1;
    v15 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10024DECC(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v7, type metadata accessor for ConnectionConfiguration);
    v16 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v18 = v7;
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v20 = v53;
    v21 = v18;
    v22 = v18[*(v53 + 28)];
    LODWORD(v52) = v15;
    v51 = v17;
    if (v22 >> 6)
    {
      if (v22 >> 6 == 1)
      {
        v23 = v22 & 0x3F | 0x40;
      }

      else
      {
        v23 = 0x80;
      }
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_1004A4C04();
    v25 = v57;
    (*(*(v24 - 8) + 16))(v57, v21, v24);
    v26 = *(v21 + v20[5]);
    v27 = *(v21 + v20[6]);
    v28 = (v21 + v20[8]);
    v29 = *v28;
    v50 = v28[1];
    v30 = v50;
    v31 = (v21 + v20[10]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v54;
    v35 = v55;
    v36 = (v25 + v54[8]);
    v37 = (v25 + v54[9]);
    v38 = v54[6];
    *(v25 + v54[5]) = v26;
    *(v25 + v38) = v27;
    *(v25 + v34[7]) = v23;
    *v36 = v29;
    v36[1] = v30;
    *v37 = v32;
    v37[1] = v33;
    sub_10024DECC(v25, v35, type metadata accessor for ConnectionConfiguration);
    type metadata accessor for CommandConnection(0);
    v54 = swift_allocObject();

    v39 = v56;

    swift_retain_n();

    v40 = v51;

    CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v8, v52, v35, v16, sub_10024DB10, a2, sub_10024DB14, a2, v41, v42, v43, v44, v45, v46, v47, v48, sub_10024DB18, a2, v40, v39, &off_1005A9CB8, sub_10024DB20, v19, 0.0, 1);
    sub_10024DD58(v21, type metadata accessor for ConnectionConfiguration);
    sub_10024DD58(v25, type metadata accessor for ConnectionConfiguration);
    return;
  }

  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = sub_1004A6794();
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v50) = *(v13 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v50 == v8)
    {
LABEL_15:

      v8 = (v8 + 1);
      v9 = v51;
      goto LABEL_2;
    }

LABEL_11:
    if (v12 == v11)
    {
      goto LABEL_17;
    }
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v10 + 32 + 8 * v12) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v8)
    {
      goto LABEL_15;
    }

    ++v12;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_10024B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v58 = a4;
  v55 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v55);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v51 - v7;
  v54 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v54);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID;
  v10 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID);
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v52 = v11;
LABEL_2:
  v12 = *&v11[a2];
  if (v12 >> 62)
  {
    v13 = sub_1004A6A34();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
LABEL_17:

    *(a2 + v53) = v10 + 1;
    v17 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_10024DECC(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, v9, type metadata accessor for ConnectionConfiguration);
    v18 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
    v19 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
    v20 = v9;
    v21 = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);
    v22 = v54;
    v23 = v20;
    v24 = v20[*(v54 + 28)];
    LODWORD(v53) = v17;
    v52 = v19;
    if (v24 >> 6)
    {
      if (v24 >> 6 == 1)
      {
        v25 = v24 & 0x3F | 0x40;
      }

      else
      {
        v25 = 0x80;
      }
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_1004A4C04();
    v27 = v59;
    (*(*(v26 - 8) + 16))(v59, v23, v26);
    v28 = *(v23 + v22[5]);
    v29 = *(v23 + v22[6]);
    v30 = (v23 + v22[8]);
    v31 = *v30;
    v51 = v30[1];
    v32 = v51;
    v33 = (v23 + v22[10]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v55;
    v37 = v56;
    v38 = (v27 + v55[8]);
    v39 = (v27 + v55[9]);
    v40 = v55[6];
    *(v27 + v55[5]) = v28;
    *(v27 + v40) = v29;
    *(v27 + v36[7]) = v25;
    *v38 = v31;
    v38[1] = v32;
    *v39 = v34;
    v39[1] = v35;
    sub_10024DECC(v27, v37, type metadata accessor for ConnectionConfiguration);
    type metadata accessor for CommandConnection(0);
    v55 = swift_allocObject();

    v41 = v57;
    swift_unknownObjectRetain();
    swift_retain_n();

    v42 = v52;

    CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(v10, v53, v37, v18, sub_10024E464, a2, sub_10024E468, a2, v43, v44, v45, v46, v47, v48, v49, v50, sub_10024E45C, a2, v42, v41, v58, sub_10024E460, v21, 0.0, 1);
    sub_10024DD58(v23, type metadata accessor for ConnectionConfiguration);
    sub_10024DD58(v27, type metadata accessor for ConnectionConfiguration);
    return;
  }

  v14 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = sub_1004A6794();
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_25;
    }

    LODWORD(v51) = *(v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v51 == v10)
    {
LABEL_15:

      v10 = (v10 + 1);
      v11 = v52;
      goto LABEL_2;
    }

LABEL_11:
    if (v14 == v13)
    {
      goto LABEL_17;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(*(v12 + 32 + 8 * v14) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v10)
    {
      goto LABEL_15;
    }

    ++v14;
    goto LABEL_11;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_10024B954(void *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v86 = a6;
  v79 = a5;
  v80 = a4;
  v78 = a3;
  v89 = a2;
  v87 = a1;
  v7 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v7 - 8);
  v9 = &v76[-v8];
  v82 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v82);
  v83 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v81 = &v76[-v12];
  __chkstk_darwin(v13);
  v15 = &v76[-v14];
  v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v90 = v16;
  v17 = *(v6 + v16);
  if (v17 >> 62)
  {
    goto LABEL_32;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = 0;
  while ((v17 & 0xC000000000000001) == 0)
  {
    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v18 = sub_1004A6A34();
      goto LABEL_3;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    (*(*v20 + 304))();
    v95.bytes._rawValue = v87;
    v95._hashValue._value = v89;
    v22 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v95);
    sub_10024DD58(v15, type metadata accessor for ConnectionState);
    if (v22)
    {

      v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      v33 = v88;
      swift_beginAccess();
      sub_10000E268(v33 + v23, v9, &qword_1005D5968, &unk_1004E9180);
      v15 = sub_1004A4A74();
      v34 = *(v15 - 1);
      v35 = (*(v34 + 48))(v9, 1, v15);
      if (v35 != 1)
      {

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v36 = v87;

        v37 = sub_1004A4A54();
        v38 = sub_1004A5FF4();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = v9;
          v40 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          *v40 = 68158723;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          *(v40 + 10) = *(v33 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v40 + 11) = 2160;
          *(v40 + 13) = 0x786F626C69616DLL;
          *(v40 + 21) = 2085;
          v91 = v36;
          v92 = v89;

          v41 = sub_1004A5824();
          v43 = sub_10015BA6C(v41, v42, &v93);

          *(v40 + 23) = v43;
          *(v40 + 31) = 2082;
          v44 = ConnectionID.debugDescription.getter(*(v20 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v46 = sub_10015BA6C(v44, v45, &v93);

          *(v40 + 33) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx] Mailbox '%{sensitive,mask.mailbox}s' is selected (or in progress) on connection %{public}s.", v40, 0x29u);
          swift_arrayDestroy();

          v9 = v39;
        }

        else
        {
        }

        (*(v34 + 8))(v9, v15);
        return v20;
      }

      goto LABEL_35;
    }

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_14;
    }
  }

  v20 = sub_1004A6794();
  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  v23 = v88;
  v24 = *(v88 + v90);
  if (v24 >> 62)
  {
    v35 = sub_1004A6A34();
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v17 = v35;
    v25 = v87;
    if (v35)
    {
      goto LABEL_16;
    }

LABEL_37:
    v47 = *(v23 + v90);
    if (v47 >> 62)
    {
      goto LABEL_89;
    }

    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v49 = _swiftEmptyArrayStorage;
      if (v48)
      {
        v94 = _swiftEmptyArrayStorage;

        result = sub_100091B88(0, v48 & ~(v48 >> 63), 0);
        if (v48 < 0)
        {
          __break(1u);
          return result;
        }

        v51 = 0;
        v49 = v94;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v52 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
            swift_unknownObjectRelease();
          }

          else
          {
            v52 = *(*(v47 + 8 * v51 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
          }

          v94 = v49;
          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            sub_100091B88((v53 > 1), v54 + 1, 1);
            v49 = v94;
          }

          ++v51;
          v49[2] = v54 + 1;
          *(v49 + v54 + 8) = v52;
        }

        while (v48 != v51);
      }

      v55 = MailboxesSelectionUsage.sortedIdleConnections(_:)(v49, v86);

      v56 = v55;
      v86 = *(v55 + 2);
      if (!v86)
      {
LABEL_81:

        sub_10023EBF0(v78, v80);
        return 0;
      }

      v57 = 0;
      v85 = v55 + 32;
      v84 = v55;
LABEL_53:
      if (v57 >= *(v56 + 2))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        v48 = sub_1004A6A34();
        continue;
      }

      break;
    }

    v58 = *&v85[4 * v57];
    v59 = *(v88 + v90);
    if (v59 >> 62)
    {
      v47 = sub_1004A6A34();
    }

    else
    {
      v47 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v57;

    v61 = -v47;
    v62 = 4;
    while (1)
    {
      if (v61 + v62 == 4)
      {

        goto LABEL_52;
      }

      v47 = v62 - 4;
      if ((v59 & 0xC000000000000001) != 0)
      {
        v77 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
        v60 = swift_unknownObjectRelease();
        if (v77 == v58)
        {
LABEL_65:

          v63 = v88;
          v64 = v90;
          swift_beginAccess();
          v65 = *(v63 + v64);
          if ((v65 & 0xC000000000000001) != 0)
          {
            v66 = sub_1004A6794();
          }

          else
          {
            if (v47 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_87;
            }

            v66 = *(v65 + 8 * v62);
          }

          v67 = swift_endAccess();
          v68 = v81;
          (*(*v66 + 304))(v67);

          sub_10024DDB8(v68, v83, type metadata accessor for ConnectionState);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 2)
          {
            if ((EnumCaseMultiPayload - 4) < 2)
            {
              goto LABEL_52;
            }

LABEL_77:
            sub_10024DD58(v83, type metadata accessor for ConnectionState);
            goto LABEL_52;
          }

          if (EnumCaseMultiPayload < 2)
          {
            goto LABEL_77;
          }

          sub_10024DD58(v83, type metadata accessor for ConnectionState);
          v70 = v88;
          v71 = v90;
          swift_beginAccess();
          v72 = *(v70 + v71);
          if ((v72 & 0xC000000000000001) != 0)
          {
            v73 = sub_1004A6794();
          }

          else
          {
            if (v47 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            v73 = *(v72 + 8 * v62);
          }

          v74 = swift_endAccess();
          (*(*v73 + 304))(v74);

          v75 = ConnectionState.anyMailboxSelectionIsInProgress.getter();
          sub_10024DD58(v15, type metadata accessor for ConnectionState);
          if ((v75 & 1) == 0)
          {
            v60 = sub_10023FAD4(v62 - 4, v88, v87, v89);
            if (v60)
            {
              goto LABEL_85;
            }
          }

LABEL_52:
          v56 = v84;
          if (v57 == v86)
          {
            goto LABEL_81;
          }

          goto LABEL_53;
        }
      }

      else
      {
        if (v47 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          v20 = v60;

          return v20;
        }

        if (*(*(v59 + 8 * v62) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v58)
        {
          goto LABEL_65;
        }
      }

      ++v62;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_84;
      }
    }
  }

  v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v87;
  if (!v17)
  {
    goto LABEL_37;
  }

LABEL_16:
  v26 = 0;
  while (1)
  {
    v27 = v90;
    swift_beginAccess();
    v28 = *(v23 + v27);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = sub_1004A6794();
    }

    else
    {
      if (v26 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v29 = *(v28 + 8 * v26 + 32);
    }

    v30 = swift_endAccess();
    (*(*v29 + 304))(v30);

    v31 = ConnectionState.isReadyForCommandsWithoutMailboxSelection.getter();
    sub_10024DD58(v15, type metadata accessor for ConnectionState);
    if (v31)
    {
      v32 = sub_10023FAD4(v26, v23, v25, v89);
      if (v32)
      {
        return v32;
      }
    }

    if (v17 == ++v26)
    {
      goto LABEL_37;
    }
  }
}

uint64_t sub_10024C428(uint64_t a1, uint64_t a2, void *a3, Swift::UInt32 a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v44 = a7;
  v45 = a5;
  v47 = a4;
  v14 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  sub_10023F5EC();
  v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  v46 = v9;
  if ((a2 & 0x100000000) == 0)
  {
    swift_beginAccess();
    v16 = v8;
    v8 = *(v8 + v20);
    v21 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      goto LABEL_38;
    }

    v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  swift_beginAccess();
  v19 = *(v8 + v20);
  v42 = a8;
  v43 = v8;
  v41 = a6;
  v21 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    a2 = sub_1004A6A34();
  }

  else
  {
    a2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  while (1)
  {
    if (a2 == v23)
    {

      sub_10024B954(a3, v47, v45, v41, v44 & 1, v42);

      return 0;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v26 = sub_1004A6794();
      v25 = v26;
      goto LABEL_21;
    }

    if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v25 = *(v19 + 8 * v23 + 32);

LABEL_21:
    (*(*v25 + 304))(v26);
    v49.bytes._rawValue = a3;
    v49._hashValue._value = v47;
    v8 = ConnectionState.hasMailboxSelected(_:)(v49);

    sub_10024DD58(v16, type metadata accessor for ConnectionState);
    if (v8)
    {
LABEL_30:

      return v23;
    }

    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_37;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v22 = sub_1004A6A34();
LABEL_4:

  v23 = 0;
  while (v22 != v23)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v47 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      swift_unknownObjectRelease();
      if (v47 == a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (*(*(v8 + 8 * v23 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a2)
      {
        goto LABEL_30;
      }
    }

    v24 = __OFADD__(v23++, 1);
    if (v24)
    {
      goto LABEL_36;
    }
  }

  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v28 = v16;
  swift_beginAccess();
  sub_10000E268(&v16[v27], v19, &qword_1005D5968, &unk_1004E9180);
  v29 = sub_1004A4A74();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v19, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v32 = sub_1004A4A54();
    v33 = sub_1004A6014();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v28;
      v35 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v35 = 68158210;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      *(v35 + 10) = v34[OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID];

      *(v35 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(a2);
      v38 = sub_10015BA6C(v36, v37, &v48);

      *(v35 + 13) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v35, 0x15u);
      sub_1000197E0(v23);
    }

    else
    {
    }

    (*(v30 + 8))(v19, v29);
    sub_10024DABC();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    return v23;
  }

  return result;
}

void sub_10024C964(uint64_t a1, void *a2, Swift::UInt32 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v15 - 8);
  v81 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v74[-v18];
  v20 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 0x100000000) != 0)
  {
    v55 = sub_10024B954(a2, a3, a4, a5, a6 & 1, a7);
    if (v55)
    {
      (*(*v55 + 576))(v55);
    }

    return;
  }

  v76 = v22;
  v77 = a3;
  v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v79 = a2;
  v80 = v23;
  v24 = *(v7 + v23);
  v78 = v19;
  if (v24 >> 62)
  {
    goto LABEL_37;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v26 = 4;
  while (1)
  {
    if (v26 - v25 == 4)
    {

      v56 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v57 = v81;
      sub_10000E268(v7 + v56, v81, &qword_1005D5968, &unk_1004E9180);
      v58 = sub_1004A4A74();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v57, 1, v58) == 1)
      {
        goto LABEL_42;
      }

      v60 = v7;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v61 = sub_1004A4A54();
      v62 = sub_1004A6014();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v82 = v64;
        *v63 = 68158210;
        *(v63 + 4) = 2;
        *(v63 + 8) = 256;
        *(v63 + 10) = *(v60 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v63 + 11) = 2082;
        v65 = ConnectionID.debugDescription.getter(a1);
        v67 = sub_10015BA6C(v65, v66, &v82);

        *(v63 + 13) = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "[%.*hhx] Attempt to send on connection %{public}s -- but it does not exist.", v63, 0x15u);
        sub_1000197E0(v64);
      }

      else
      {
      }

      (*(v59 + 8))(v57, v58);
      v68 = 0;
      goto LABEL_29;
    }

    v27 = v26 - 4;
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (v27 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (*(*(v24 + 8 * v26) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == a1)
        {
          break;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v25 = sub_1004A6A34();
      goto LABEL_4;
    }

    v75 = *(sub_1004A6794() + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    swift_unknownObjectRelease();
    if (v75 == a1)
    {
      break;
    }

LABEL_9:
    ++v26;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_36;
    }
  }

  v28 = v80;
  swift_beginAccess();
  v29 = *(v7 + v28);
  v31 = v78;
  v30 = v79;
  v32 = v77;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = v7;
    v34 = sub_1004A6794();
LABEL_16:
    v35 = swift_endAccess();
    v36 = v76;
    (*(*v34 + 304))(v35);

    v85.bytes._rawValue = v30;
    v85._hashValue._value = v32;
    v37 = ConnectionState.hasMailboxSelectedOrSelectionIsInProgress(_:)(v85);
    sub_10024DD58(v36, type metadata accessor for ConnectionState);
    if (v37)
    {
      v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_10000E268(v33 + v38, v31, &qword_1005D5968, &unk_1004E9180);
      v39 = sub_1004A4A74();
      v81 = *(v39 - 8);
      v40 = *(v81 + 6);
      v76 = v39;
      if (v40(v31, 1) == 1)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v41 = v33;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v42 = v79;

      v43 = sub_1004A4A54();
      v44 = sub_1004A5FF4();

      v75 = v44;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v43;
        v46 = v32;
        v47 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v47 = 68158723;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        *(v47 + 10) = *(v41 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v47 + 11) = 2160;
        *(v47 + 13) = 0x786F626C69616DLL;
        *(v47 + 21) = 2085;
        v82 = v42;
        v83 = v46;

        v48 = sub_1004A5824();
        v50 = sub_10015BA6C(v48, v49, &v84);

        *(v47 + 23) = v50;
        *(v47 + 31) = 2082;
        v51 = ConnectionID.debugDescription.getter(a1);
        v53 = sub_10015BA6C(v51, v52, &v84);

        *(v47 + 33) = v53;
        v54 = v45;
        _os_log_impl(&_mh_execute_header, v45, v75, "[%.*hhx] Created mailbox affinity for '%{sensitive,mask.mailbox}s' on connection %{public}s with mailbox already selected.", v47, 0x29u);
        swift_arrayDestroy();

        v31 = v78;
      }

      else
      {
      }

      (*(v81 + 1))(v31, v76);
      v70 = v80;
      swift_beginAccess();
      v71 = *(v41 + v70);
      if ((v71 & 0xC000000000000001) != 0)
      {
        goto LABEL_40;
      }

      if (v27 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v72 = *(v71 + 8 * v26);

        goto LABEL_34;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v68 = 1;
LABEL_29:
    sub_10024DABC();
    swift_allocError();
    *v69 = v68;
    swift_willThrow();
    return;
  }

  if (v27 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = v7;
    v34 = *(v29 + 8 * v26);

    goto LABEL_16;
  }

  __break(1u);
LABEL_40:
  v72 = sub_1004A6794();
LABEL_34:
  v73 = swift_endAccess();
  (*(*v72 + 576))(v73);
}

void sub_10024D1F4(uint64_t a1, NSObject *a2, uint64_t a3, char a4, uint64_t a5)
{
  v37 = a5;
  v10 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v35[-v14];
  v16 = type metadata accessor for Command(0);
  __chkstk_darwin(v16);
  v18 = &v35[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10024DECC(a1, v18, type metadata accessor for Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10024DDB8(v18, v15, type metadata accessor for ClientCommand);
      sub_10023DD30(v15, a2, a3, a4 & 1);
      sub_10024DD58(v15, type metadata accessor for ClientCommand);
      return;
    }

    v24 = (v18 + *(sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360) + 48));
    v25 = *v24;
    v26 = *(v24 + 4);
    v27 = *(v24 + 1);
    v36 = v24[4];
    sub_10024DDB8(v18, v12, type metadata accessor for ClientCommand);

    v38 = v26;
    v28 = v39;
    v29 = sub_10024C428(v12, v25 | (v26 << 32), v27, v36, a2, a3, a4 & 1, v37);
    v31 = v30;

    if (v28)
    {

      sub_10024DD58(v12, type metadata accessor for ClientCommand);
      return;
    }

    if (v31)
    {

LABEL_18:
      sub_10024DD58(v12, type metadata accessor for ClientCommand);
      return;
    }

    v32 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v33 = *(v5 + v32);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v29 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v33 + 8 * v29 + 32);

LABEL_17:
        swift_endAccess();
        (*(*v34 + 560))(v12);

        goto LABEL_18;
      }

      __break(1u);
      return;
    }

    v34 = sub_1004A6794();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *v18;
    v21 = *(v18 + 4);
    v22 = *(v18 + 1);
    v23 = v18[4];

    v38 = v21;
    sub_10024C964(v20 | (v21 << 32), v22, v23, a2, a3, a4 & 1, v37);
    swift_bridgeObjectRelease_n();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10023E5A8(*v18, v18[2]);
  }

  else
  {
    sub_10023EBF0(a2, a3);
  }
}

uint64_t sub_10024D618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(a1 + v10))
  {
    v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a1 + v11, v9, &qword_1005D5968, &unk_1004E9180);
    v12 = sub_1004A4A74();
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v9, 1, v12);
    if (result != 1)
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v15 = sub_1004A4A54();
      v16 = sub_1004A6004();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 68157952;
        *(v17 + 4) = 2;
        *(v17 + 8) = 256;
        *(v17 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx] withEnqueuedSend() called while we already have enqueued events.", v17, 0xBu);
      }

      else
      {
      }

      (*(v13 + 8))(v9, v12);
      return sub_1002440C0(a2);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + v10) = _swiftEmptyArrayStorage;
  sub_1002440C0(a2);
  v18 = *(a1 + v10);
  if (v18)
  {
    *(a1 + v10) = 0;
    if (*(v18 + 16) && swift_unknownObjectWeakLoadStrong())
    {
      sub_10022F130(v18);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_10000E268(a1 + v19, v6, &qword_1005D5968, &unk_1004E9180);
    v20 = sub_1004A4A74();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v6, 1, v20);
    if (result == 1)
    {
      goto LABEL_19;
    }

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v22 = sub_1004A4A54();
    v23 = sub_1004A6014();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 68157952;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&_mh_execute_header, v22, v23, "[%.*hhx] nil enqueued events after enqueueing.", v24, 0xBu);
    }

    else
    {
    }

    return (*(v21 + 8))(v6, v20);
  }
}

unint64_t sub_10024DABC()
{
  result = qword_1005D5D08;
  if (!qword_1005D5D08)
  {
    result = swift_getWitnessTable(asc_1004E9494, &type metadata for ConnectionPool.Error, v0, v1);
    atomic_store(result, &qword_1005D5D08);
  }

  return result;
}

uint64_t sub_10024DB24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024DB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10024DCAC()
{
  result = qword_1005D35D0;
  if (!qword_1005D35D0)
  {
    v3 = sub_1004A5214();
    result = swift_getWitnessTable(&protocol conformance descriptor for NWError, v3, v0, v1);
    atomic_store(result, &qword_1005D35D0);
  }

  return result;
}

uint64_t sub_10024DD58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024DDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024DE20()
{
  result = qword_1005D5D30;
  if (!qword_1005D5D30)
  {
    result = swift_getWitnessTable(byte_1004E946C, &type metadata for ConnectionPool.CapturedValue, v0, v1);
    atomic_store(result, &qword_1005D5D30);
  }

  return result;
}

uint64_t sub_10024DE74()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10024DECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024DF44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10024DF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10024E000()
{
  result = qword_1005D5D40;
  if (!qword_1005D5D40)
  {
    result = swift_getWitnessTable(asc_1004E9444, &type metadata for ConnectionPool.Error, v0, v1);
    atomic_store(result, &qword_1005D5D40);
  }

  return result;
}

unint64_t sub_10024E054()
{
  result = qword_1005D5D50;
  if (!qword_1005D5D50)
  {
    result = swift_getWitnessTable(byte_1004E95AC, &type metadata for ConnectionPool.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D5D50);
  }

  return result;
}

unint64_t sub_10024E0A8()
{
  result = qword_1005D5D60;
  if (!qword_1005D5D60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005D5D58, &qword_1004E94E0);
    v4[0] = sub_10024E12C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005D5D60);
  }

  return result;
}

unint64_t sub_10024E12C()
{
  result = qword_1005D5D68;
  if (!qword_1005D5D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandConnection.CapturedValue, &type metadata for CommandConnection.CapturedValue, v0, v1);
    atomic_store(result, &qword_1005D5D68);
  }

  return result;
}

unint64_t sub_10024E194()
{
  result = qword_1005D5D70;
  if (!qword_1005D5D70)
  {
    result = swift_getWitnessTable(byte_1004E9584, &type metadata for ConnectionPool.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D5D70);
  }

  return result;
}

unint64_t sub_10024E1EC()
{
  result = qword_1005D5D78;
  if (!qword_1005D5D78)
  {
    result = swift_getWitnessTable(byte_1004E94F4, &type metadata for ConnectionPool.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D5D78);
  }

  return result;
}

unint64_t sub_10024E244()
{
  result = qword_1005D5D80;
  if (!qword_1005D5D80)
  {
    result = swift_getWitnessTable(byte_1004E951C, &type metadata for ConnectionPool.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D5D80);
  }

  return result;
}

uint64_t sub_10024E298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E69676E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEB00000000736E6FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F7272457473616CLL && a2 == 0xE900000000000072 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AC990 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10024E46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10024E4B4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10024E504(char a1, void *a2, uint64_t a3)
{
  v66 = a3;
  v65 = type metadata accessor for Engine.Logger(0);
  __chkstk_darwin(v65);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1004A44E4();
  v60 = *(v61 - 8);
  v57 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  *&v62 = &v56 - v9;
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v69 = static MonotonicTime.now()();
  sub_1004A44D4();
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v67 = v3;
  v68 = v13;
  sub_10024F088(a1 & 1, a2, v71);
  v15 = swift_allocObject();
  v16 = sub_10002587C(v71, v71[3]);
  v17 = __chkstk_darwin(v16);
  (*(v19 + 16))(&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v15[5] = swift_getAssociatedTypeWitness();
  v15[6] = swift_getAssociatedConformanceWitness();
  sub_1000B3774(v15 + 2);
  v20 = v15;
  sub_1004A5AC4();
  v21 = swift_allocObject();
  v22 = sub_10002587C(v72, v73);
  v23 = __chkstk_darwin(v22);
  (*(v25 + 16))(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v21[5] = swift_getAssociatedTypeWitness();
  v21[6] = swift_getAssociatedConformanceWitness();
  sub_1000B3774(v21 + 2);
  sub_1004A5AC4();
  v26 = v60;
  v27 = *(v60 + 32);
  v28 = v62;
  v29 = v61;
  v27(v62, v12, v61);
  v30 = *(v26 + 16);

  v30(v59, v28, v29);
  v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v32 = (v57 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v69;
  *(v33 + 16) = v20;
  *(v33 + 24) = v34;

  v35 = v33 + v31;
  v36 = v58;
  v27(v35, v62, v61);
  v37 = v59;
  v38 = (v33 + v32);
  v39 = v68;
  *v38 = v68;
  v38[1] = v14;
  *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_10000C9C0(&qword_1005D5D88, &qword_1004E9680);
  inited = swift_initStackObject();
  *(inited + 16) = sub_10024F8E0;
  *(inited + 24) = v33;

  sub_10024F990(v71);
  v57 = inited;

  sub_10024F348(v20, v69, v37, v39, v14, v21, &v70);
  if (v70)
  {
    v42 = &type metadata for Any;
    *&v41 = 68158210;
    v62 = v41;
    v64 = v21;
    v63 = v20;
    do
    {

      sub_10024ECB0(v51);

      isa = sub_1004A54F4().super.isa;

      PPSSendTelemetry();

      sub_10024F9E4(v66, v36);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v53 = sub_1004A4A54();
      v54 = sub_1004A6004();

      if (os_log_type_enabled(v53, v54))
      {
        v43 = swift_slowAlloc();
        v44 = v14;
        v45 = v37;
        v46 = swift_slowAlloc();
        *v43 = v62;
        *(v43 + 4) = 2;
        *(v43 + 8) = 256;
        v47 = v42;
        v48 = v36;
        v49 = *(v36 + *(v65 + 20));
        sub_10024FC10(v48);
        *(v43 + 10) = v49;
        *(v43 + 11) = 2112;
        sub_10000C9C0(&qword_1005D5D90, &qword_1004E9688);
        v50 = sub_1004A54F4().super.isa;

        *(v43 + 13) = v50;
        *v46 = v50;
        v36 = v48;
        v42 = v47;
        _os_log_impl(&_mh_execute_header, v53, v54, "[%.*hhx] Sending power telemetry event: %@", v43, 0x15u);
        sub_100190D30(v46);
        v37 = v45;
        v14 = v44;
        v20 = v63;
        v21 = v64;
      }

      else
      {
        sub_10024FC10(v36);
      }

      sub_10024F348(v20, v69, v37, v68, v14, v21, &v70);
    }

    while (v70);
  }

  (*(v60 + 8))(v37, v61);
}

void sub_10024ECB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C9C0(&unk_1005D51C0, &qword_1004E6C48);
    v2 = sub_1004A6A74();
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
    sub_100104D00(*(a1 + 56) + 40 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    *&v34[5] = v37;
    v35[0] = v38[0];
    v35[1] = v38[1];
    v36 = v39;
    v25 = v15;
    v26 = v14;

    swift_dynamicCast();
    sub_1000B364C(v35, v24);
    sub_10000C9C0(&qword_1005D5D90, &qword_1004E9688);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_10019A8D4(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_10019A8D4(v34, v24);
    v16 = sub_1004A6644(v2[5]);
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
    *v10 = v27;
    *(v10 + 16) = v28;
    *(v10 + 32) = v29;
    sub_10019A8D4(v24, (v2[7] + 32 * v9));
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

Swift::Int sub_10024EFBC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

Swift::Int sub_10024F010(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10024F058(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_10024F088@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *v3 = a2;
  swift_bridgeObjectRetain_n();
  RunningSyncRequests.Change.init(previous:current:)(v7, a2, v21);
  v8 = sub_10002587C(v21, v21[3]);
  v9 = __chkstk_darwin(v8);
  (*(v11 + 16))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = a1 & 1;
  v20[48] = a1 & 1;
  v13 = sub_1004A5B64();
  v14 = sub_10002587C(v22, v22[3]);
  v15 = __chkstk_darwin(v14);
  (*(v17 + 16))(&v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
  v20[16] = v12;
  v18 = sub_1004A5B64();
  a3[3] = sub_10000C9C0(&qword_1005D5DA0, &unk_1004E96A0);
  a3[4] = sub_1000CBB00(&qword_1005D5DA8, &qword_1005D5DA0, &unk_1004E96A0);
  *a3 = v13;
  a3[8] = sub_10000C9C0(&qword_1005D0E00, &qword_1004D5CA8);
  a3[9] = sub_1000CBB00(&qword_1005D0E08, &qword_1005D0E00, &qword_1004D5CA8);
  a3[5] = v18;
  return sub_10024F990(v21);
}

uint64_t sub_10024F310()
{
  sub_1000197E0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10024F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v25 = a2;
  v27 = a7;
  v12 = sub_1004A44E4();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_100025928(a1 + 16, *(a1 + 40));
  sub_1004A6414();
  swift_endAccess();
  if (BYTE4(v28) == 5)
  {
    swift_beginAccess();
    sub_100025928(a6 + 16, *(a6 + 40));
    sub_1004A6414();
    result = swift_endAccess();
    v16 = v28;
    if ((v28 & 0xFF00000000) == 0x500000000)
    {
      v17 = 0;
    }

    else
    {
      v21 = v29;
      (*(v26 + 16))(v14, a3, v12);
      sub_10000C9C0(&qword_1005D5D98, &unk_1004E9690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004D2DE0;
      *(inited + 32) = 0x7472617473;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = sub_10024FA48(v25, v14, v21);
      *(inited + 88) = 0x746E756F636361;
      *(inited + 96) = 0xE700000000000000;
      *(inited + 72) = &type metadata for Int64;
      *(inited + 80) = &protocol witness table for Int64;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = a4;
      *(inited + 112) = a5;
      *(inited + 144) = 1684957547;
      *(inited + 152) = 0xE400000000000000;
      if ((BYTE4(v16) - 2) >= 3u)
      {
        v23 = 3;
      }

      else
      {
        v23 = qword_1004E9798[(BYTE4(v16) - 2)];
      }

      *(inited + 184) = &type metadata for Int64;
      *(inited + 192) = &protocol witness table for Int64;
      *(inited + 160) = v23;
      *(inited + 200) = 1668184435;
      *(inited + 208) = 0xE400000000000000;
      *(inited + 240) = &type metadata for UInt32;
      *(inited + 248) = &protocol witness table for UInt32;
      *(inited + 216) = v16;
      *(inited + 256) = 0x746E657665;
      *(inited + 264) = 0xE500000000000000;
      *(inited + 296) = &type metadata for Int;
      *(inited + 304) = &protocol witness table for Int;
      *(inited + 272) = 2;

      v17 = sub_1002236EC(inited);
      swift_setDeallocating();
      sub_10000C9C0(&unk_1005D53C0, &unk_1004E8CA0);
      swift_arrayDestroy();
      result = (*(v26 + 8))(v14, v12);
    }
  }

  else
  {
    v18 = v28 | (BYTE4(v28) << 32);
    sub_10000C9C0(&qword_1005D5D98, &unk_1004E9690);
    v19 = swift_initStackObject();
    *(v19 + 32) = 0x746E756F636361;
    *(v19 + 16) = xmmword_1004D1B20;
    *(v19 + 72) = &type metadata for String;
    *(v19 + 80) = &protocol witness table for String;
    *(v19 + 40) = 0xE700000000000000;
    *(v19 + 48) = a4;
    *(v19 + 56) = a5;
    *(v19 + 88) = 1684957547;
    *(v19 + 96) = 0xE400000000000000;
    if ((BYTE4(v18) - 2) >= 3u)
    {
      v20 = 3;
    }

    else
    {
      v20 = qword_1004E9798[(BYTE4(v18) - 2)];
    }

    *(v19 + 128) = &type metadata for Int64;
    *(v19 + 136) = &protocol witness table for Int64;
    *(v19 + 104) = v20;
    *(v19 + 144) = 1668184435;
    *(v19 + 152) = 0xE400000000000000;
    *(v19 + 184) = &type metadata for UInt32;
    *(v19 + 192) = &protocol witness table for UInt32;
    *(v19 + 160) = v18;
    *(v19 + 200) = 0x746E657665;
    *(v19 + 208) = 0xE500000000000000;
    *(v19 + 240) = &type metadata for Int;
    *(v19 + 248) = &protocol witness table for Int;
    *(v19 + 216) = 1;
    v24 = v19;

    v17 = sub_1002236EC(v24);
    swift_setDeallocating();
    sub_10000C9C0(&unk_1005D53C0, &unk_1004E8CA0);
    result = swift_arrayDestroy();
  }

  *v27 = v17;
  return result;
}

uint64_t sub_10024F7EC()
{
  v1 = sub_1004A44E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10024F8E0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(sub_1004A44E4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  return sub_10024F348(v7, v8, v1 + v4, v10, v11, v12, a1);
}

uint64_t sub_10024F9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Engine.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024FA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A44E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v20 - v12;
  result = (*(v7 + 16))(v9, a2, v6, v11);
  v15 = __OFSUB__(a3, a1);
  if (a3 < a1)
  {
    v16 = a1 - a3;
    if (__OFSUB__(a1, a3))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v15 = __OFSUB__(0, v16);
    if (!__OFSUB__(0, v16))
    {
LABEL_7:
      sub_1004A4474();
      v17 = *(v7 + 8);
      v17(v9, v6);
      sub_1004A44A4();
      v19 = round(v18);
      result = (v17)(v13, v6);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          return v19;
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10024FC10(uint64_t a1)
{
  v2 = type metadata accessor for Engine.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024FC9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10024FCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10024FD6C()
{
  result = qword_1005D5DB0;
  if (!qword_1005D5DB0)
  {
    result = swift_getWitnessTable(asc_1004E972C, &type metadata for PowerTelemetry.AccountID, v0, v1);
    atomic_store(result, &qword_1005D5DB0);
  }

  return result;
}

uint64_t CircularBuffer._buffer.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for AtomicFlag.Storage(uint64_t a1)
{
  result = qword_1005D5DE8;
  if (!qword_1005D5DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall AtomicFlag.testAndSet()()
{
  if (qword_1005D5DC0 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return atomicFlag_testAndSet(v0 + 16);
}

uint64_t (**atomicFlag_testAndSet.unsafeMutableAddressor())(void)
{
  if (qword_1005D5DC0 != -1)
  {
    swift_once();
  }

  return &atomicFlag_testAndSet;
}

Swift::Void __swiftcall AtomicFlag.clear()()
{
  if (qword_1005D5DC8 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v2 = atomicFlag_clear;
  v3 = v0 + 16;

  v2(v3);
}

_UNKNOWN **atomicFlag_clear.unsafeMutableAddressor()
{
  if (qword_1005D5DC8 != -1)
  {
    swift_once();
  }

  return &atomicFlag_clear;
}

void *sub_100250010(uint64_t a1, const char *a2, void *a3)
{
  result = dlsym(0xFFFFFFFFFFFFFFFELL, a2);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CertUITrustManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CertUITrustManager.init()();
  return v0;
}

void CertUITrustManager.init()()
{
  v1 = sub_1004A5734();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_1004A46A4();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1004A46A4();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1004A46A4();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1004A46A4();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, "rawTrustResultForSSLTrust:hostname:service:");
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, "allowTrust:forHost:service:");
  if (v13)
  {
    v14 = method_getImplementation(v13);
    swift_unknownObjectRelease();
    v0[4] = v14;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t CertUITrustManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v10 = v5 + 16;
  v8 = *(v5 + 16);
  v9 = *(v10 + 8);
  if (!a3)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = sub_1004A5734();
  if (v6)
  {
LABEL_3:
    v6 = sub_1004A5734();
  }

LABEL_4:
  v12 = v9(v8, "rawTrustResultForSSLTrust:hostname:service:", a1, v11, v6);

  return v12;
}

Swift::Void __swiftcall CertUITrustManager.allow(_:forHost:service:)(SecTrustRef_optional _, Swift::String_optional forHost, Swift::String_optional service)
{
  object = service.value._object;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  if (forHost.value._object)
  {
    v8 = sub_1004A5734();
    if (object)
    {
LABEL_3:
      v9 = sub_1004A5734();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (service.value._object)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  v6(v7, "allowTrust:forHost:service:", _.value, v8);
}

uint64_t CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for CertUIPrompt();
  inited = swift_initStackObject();
  sub_1002507BC();
  v15 = a2;
  v16 = *(inited + 32);
  v17 = *(inited + 16);
  if (v15)
  {
    v18 = sub_1004A5734();
  }

  else
  {
    v18 = 0;
  }

  v16(v17, "setHost:", v18);

  v19 = *(inited + 40);
  v20 = *(inited + 16);
  if (a4)
  {
    a4 = sub_1004A5734();
  }

  v19(v20, "setService:", a4);

  (*(inited + 24))(*(inited + 16), "setTrust:", a5);
  sub_1002506B0(a6, a7, a8);
}

void sub_1002506B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  if (a1)
  {
    v8.super.isa = sub_1004A54F4().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100250B40;
  v10[3] = &unk_1005AA258;
  v9 = _Block_copy(v10);

  v6(v7, "showPromptWithOptions:responseBlock:", v8.super.isa, v9);
  _Block_release(v9);
}

void sub_1002507BC()
{
  v1 = sub_1004A5734();
  v2 = NSClassFromString(v1);

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_1004A46A4();
  ClassMethod = class_getClassMethod(v2, v3);
  if (!ClassMethod)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  Implementation = method_getImplementation(ClassMethod);
  v6 = sub_1004A46A4();
  v7 = (Implementation)(v2, v6);
  v8 = sub_1004A46A4();
  InstanceMethod = class_getInstanceMethod(v2, v8);
  if (!InstanceMethod)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = method_getImplementation(InstanceMethod);
  v11 = sub_1004A46A4();
  v0[2] = (v10)(v7, v11);
  v12 = class_getInstanceMethod(v2, "setTrust:");
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v0[3] = method_getImplementation(v12);
  v13 = class_getInstanceMethod(v2, "setHost:");
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v0[4] = method_getImplementation(v13);
  v14 = class_getInstanceMethod(v2, "setService:");
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v0[5] = method_getImplementation(v14);
  v15 = class_getInstanceMethod(v2, "showPromptWithOptions:responseBlock:");
  if (v15)
  {
    v16 = method_getImplementation(v15);
    swift_unknownObjectRelease();
    v0[6] = v16;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100250978()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100250B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100250C60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100250CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(char *, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v77 = a7;
  v78 = a8;
  v74 = a6;
  v73 = a5;
  v72 = a4;
  v71 = a3;
  v86 = a2;
  v11 = *(*(*a2 + class metadata base offset for KeyPath) - 8);
  v89 = a10;
  __chkstk_darwin(a9);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  v90 = *(v16 + 8);
  v17 = *(v90 - 8);
  __chkstk_darwin(v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v87 = v24;
  v79 = v25;
  if (sub_1004A5CB4() < 1)
  {
    v27 = 0;
    v26 = 0;
    v82 = 0;
    v29 = v79;
  }

  else
  {
    v83 = a1;
    v84 = v15;
    v26 = 0;
    v27 = 0;
    v81 = v20;
    v82 = 0;
    v28 = (v11 + 8);
    v80 = (v17 + 8);
    v29 = v79;
    v85 = v23;
    v75 = (v11 + 8);
    while (v27 < sub_1004A5CB4())
    {
      v36 = v84;
      sub_1004A5D14();
      swift_getAtKeyPath();
      v88 = v27;
      v37 = *v28;
      (*v28)(v36, v29);
      sub_1004A5D14();
      swift_getAtKeyPath();
      v37(v36, v29);
      if (sub_1004A5724())
      {
        v30 = v26;
        v31 = v88;
        sub_1004A5D14();
        v32 = v76;
        sub_1004A5D14();
        v77(v36, v32);
        v33 = v81;
        v37(v32, v29);
        v37(v36, v29);
        v34 = *v80;
        v35 = v90;
        (*v80)(v33, v90);
        v34(v85, v35);
        v27 = v31 + 1;
        v26 = v30 + 1;
      }

      else
      {
        result = sub_1004A5CB4();
        if (result < v26)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v93 = sub_1004A5D04();
        v94 = v39;
        v95 = v40;
        v96 = v41;
        __chkstk_darwin(v93);
        v42 = v85;
        v43 = v86;
        *(&v71 - 4) = v89;
        *(&v71 - 3) = v43;
        *(&v71 - 2) = v42;
        v44 = sub_1004A64F4();
        swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v44);
        v45 = v82;
        sub_1004A5EC4();
        result = swift_unknownObjectRelease();
        if (v92)
        {
          v82 = v45;
          v46 = v84;
          v47 = v88;
          sub_1004A5D14();
          v73(v46);
          v28 = v75;
          v37(v46, v29);
          v48 = *v80;
          v49 = v90;
          (*v80)(v81, v90);
          v27 = v47 + 1;
        }

        else
        {
          v50 = v91;
          if (v91 < v26)
          {
            goto LABEL_18;
          }

          v51 = v79;
          v93 = sub_1004A5D04();
          v94 = v52;
          v95 = v53;
          v96 = v54;
          *&v55 = __chkstk_darwin(v93).n128_u64[0];
          v56 = v89;
          v49 = v90;
          *(&v71 - 6) = v51;
          *(&v71 - 5) = v49;
          v57 = v71;
          *(&v71 - 4) = v56;
          *(&v71 - 3) = v57;
          *(&v71 - 2) = v72;
          swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v44, v55);
          sub_1004A5B84();
          v82 = v45;
          swift_unknownObjectRelease();
          v48 = *v80;
          (*v80)(v81, v49);
          v26 = v50;
          v27 = v88;
          v28 = v75;
        }

        v48(v85, v49);
        v29 = v79;
      }

      if (v26 >= sub_1004A5CB4())
      {
        break;
      }
    }
  }

  result = sub_1004A5CB4();
  if (result < v26)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    v93 = sub_1004A5D04();
    v94 = v58;
    v95 = v59;
    v96 = v60;
    __chkstk_darwin(v93);
    v62 = v89;
    v61 = v90;
    *(&v71 - 6) = v29;
    *(&v71 - 5) = v61;
    v63 = v71;
    *(&v71 - 4) = v62;
    *(&v71 - 3) = v63;
    *(&v71 - 2) = v72;
    v64 = sub_1004A64F4();
    swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v64);
    sub_1004A5B84();
    swift_unknownObjectRelease();
    result = sub_1004A5CB4();
    if (result >= v27)
    {
      v93 = sub_1004A5D04();
      v94 = v65;
      v95 = v66;
      v96 = v67;
      __chkstk_darwin(v93);
      v69 = v89;
      v68 = v90;
      *(&v71 - 6) = v29;
      *(&v71 - 5) = v68;
      v70 = v73;
      *(&v71 - 4) = v69;
      *(&v71 - 3) = v70;
      *(&v71 - 2) = v74;
      sub_1004A5B84();
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100251498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + class metadata base offset for KeyPath + 8);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  v8 = sub_1004A5724();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t static DispatchData.makeMappedRead(fileDescriptor:count:)(int a1, size_t a2)
{
  v4 = sub_1004A52D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = mmap(0, a2, 1, 1, a1, 0);
  if (!v8 || v8 == sub_1004A4B44())
  {
    sub_10025177C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v7, enum case for DispatchData.Deallocator.unmap(_:), v4);
    return sub_1004A52E4();
  }
}

unint64_t sub_10025177C()
{
  result = qword_1005D5FB0;
  if (!qword_1005D5FB0)
  {
    result = swift_getWitnessTable(byte_1004E98F4, &_s19MemoryMappingFailedVN, v0, v1);
    atomic_store(result, &qword_1005D5FB0);
  }

  return result;
}

uint64_t static URL.makeTemporaryFile(baseDirectory:pathExtension:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004A4374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4304();
  sub_1004A4314();
  v10 = *(v7 + 8);
  v10(v9, v6);
  result = sub_100251AA0(sub_100251930, 0);
  if (v4)
  {
    v12 = result;
    v10(a1, v6);
    return v12;
  }

  return result;
}

uint64_t sub_100251930@<X0>(char *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = sub_1004A3ED4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = mkstemps(a1, a2);
  if (result <= 0)
  {
    sub_1004A4B74();
    v11 = sub_1004A4B54();
    if ((v11 & 0x100000000) != 0)
    {
      sub_100252358();
      swift_allocError();
    }

    else
    {
      v13 = v11;
      sub_100252424(_swiftEmptyArrayStorage);
      sub_100252534();
      sub_1004A4254();
      sub_1004A3EC4();
      (*(v7 + 8))(v9, v6);
    }

    return swift_willThrow();
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100251AA0(uint64_t a1, uint64_t a2)
{
  v20[0] = a2;
  v4 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1004A4374();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A42A4();
  v11 = sub_1004A5924();

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  v13 = v20[0];
  v20[-4] = a1;
  v20[-3] = v13;
  LODWORD(v20[-2]) = v14;
  __chkstk_darwin(v15);
  v20[-2] = sub_1002521F0;
  v20[-1] = v16;
  v17 = v20[1];
  sub_1004A4324();
  if (!v17)
  {
    (*(v8 + 8))(v2, v7);
    v18 = *(v4 + 48);
    v4 = *v6;
    v19 = *(v8 + 32);
    v19(v10, &v6[v18], v7);
    v19(v2, v10, v7);
  }

  return v4;
}

uint64_t sub_100251D00@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v31 = a4;
  v11 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  __chkstk_darwin(v11 - 8);
  v13 = &v28[-v12];
  v14 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  __chkstk_darwin(v14);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v28[-v19];
  v30 = a6;
  if (a1)
  {
    v29 = a5;
    v21 = a2 - a1;
    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (v21 >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v27 = swift_slowAlloc();
        sub_100251FE4(v27, a1, a2, a3, v29, a6);
      }
    }

    __chkstk_darwin(isStackAllocationSafe);
    v23 = &v28[-v22];
    memmove(&v28[-v22], a1, v21);
    a5 = v29;
  }

  else
  {
    __chkstk_darwin(isStackAllocationSafe);
    v23 = &v28[-16];
  }

  v24 = v32;
  a3(&v33, v23, a5);
  if (v24)
  {
    return swift_willThrow();
  }

  v26 = sub_1004A4374();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  sub_1004A4334();
  sub_100252280(v13);
  *v16 = v33;
  sub_1002522E8(v16, v20);
  return sub_1002522E8(v20, v30);
}

void sub_100251FE4(void *a1@<X0>, const void *a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v13 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  __chkstk_darwin(v13 - 8);
  v15 = &v17 - v14;
  if (a1 && a2)
  {
    memmove(a1, a2, a3 - a2);
  }

  else if (!a1)
  {
    __break(1u);
    return;
  }

  a4(&v18, a1, a5);
  if (!v6)
  {
    v16 = sub_1004A4374();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
    sub_1004A4334();
    sub_100252280(v15);
    *a6 = v18;
  }
}

size_t sub_100252154(const char *a1, uint64_t (*a2)(const char *, const char *))
{
  if (a1)
  {
    result = strlen(a1);
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      return a2(a1, &a1[result + 1]);
    }
  }

  else
  {
    sub_10025222C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10025222C()
{
  result = qword_1005D5FC0;
  if (!qword_1005D5FC0)
  {
    result = swift_getWitnessTable(byte_1004E99E0, &type metadata for InvalidTemporaryFileTemplate, v0, v1);
    atomic_store(result, &qword_1005D5FC0);
  }

  return result;
}

uint64_t sub_100252280(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002522E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5FB8, &qword_1004E9938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100252358()
{
  result = qword_1005D5FD0;
  if (!qword_1005D5FD0)
  {
    result = swift_getWitnessTable(a1_7, &_s25UnableToMakeTemporaryFileVN, v0, v1);
    atomic_store(result, &qword_1005D5FD0);
  }

  return result;
}

unint64_t sub_1002523AC(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1004A6F14();

  return sub_100065170(a1, a2, v4);
}

unint64_t sub_100252424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D5FE0, &unk_1004F79C0);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10025258C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1002523AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10019A8D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100252534()
{
  result = qword_1005D5FD8;
  if (!qword_1005D5FD8)
  {
    v3 = sub_1004A3ED4();
    result = swift_getWitnessTable(&protocol conformance descriptor for POSIXError, v3, v0, v1);
    atomic_store(result, &qword_1005D5FD8);
  }

  return result;
}

uint64_t sub_10025258C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5FE8, &unk_1004E9950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MillisecondDate.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  sub_1004A4464();
  v5 = v4;
  v6 = sub_1004A44E4();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  v8 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    *v2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*MillisecondDate.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1004A44E4();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  sub_1004A4454();
  return sub_100252814;
}

void sub_100252814(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v14 = v2[1];
    v15 = v2[2];
    sub_1004A4464();
    v17 = v16;
    (*(v15 + 8))(v3, v14);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
          v12 = v2[3];
          v11 = v2[4];
          **v2 = v18;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[1];
  (*(v5 + 16))(v4, v3, v6);
  sub_1004A4464();
  v8 = v7;
  v9 = *(v5 + 8);
  v9(v4, v6);
  v10 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v2[3];
  v11 = v2[4];
  v13 = v2[1];
  **v2 = v10;
  v9(v11, v13);
LABEL_10:
  free(v11);
  free(v12);

  free(v2);
}

uint64_t MillisecondDate.init(wrappedValue:)(uint64_t a1)
{
  sub_1004A4464();
  v3 = v2;
  v4 = sub_1004A44E4();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  v6 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Int ModificationSequenceValue.hashValue.getter(Swift::UInt64 a1)
{
  sub_1004A6E94();
  sub_1004A6EF4(a1);
  return sub_1004A6F14();
}

Swift::Int sub_100252AF4()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100252B68(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EF4(v2);
  return sub_1004A6F14();
}

NIOIMAPCore2::AppendData __swiftcall AppendData.init(byteCount:withoutContentTransferEncoding:)(Swift::Int byteCount, Swift::Bool withoutContentTransferEncoding)
{
  v2 = withoutContentTransferEncoding;
  result.byteCount = byteCount;
  result.withoutContentTransferEncoding = v2;
  return result;
}