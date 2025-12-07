void sub_1001A6808(Swift::Int64 a1, uint64_t a2)
{
  v77 = a1;
  v4 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v68 - v5;
  v7 = type metadata accessor for ConnectionEvent(0);
  v84 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v80 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v81 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v81);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v85 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v68 - v19;
  __chkstk_darwin(v20);
  v78 = &v68 - v21;
  __chkstk_darwin(v22);
  v72 = &v68 - v23;
  __chkstk_darwin(v24);
  v71 = &v68 - v25;
  __chkstk_darwin(v26);
  v74 = (&v68 - v27);
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  v31 = *v2;
  v32 = *(*v2 + 16);
  v82 = (*v2 + 16);
  if (v32)
  {
    v33 = 0;
    while (v33 < *v82)
    {
      v34 = v31;
      sub_1001AD9FC(v31 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v33, v30, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1001ADC1C(&v30[*(v85 + 20)], v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1001AD938(v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1001AD938(v16, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v75 = 0;
        v31 = v34;
        goto LABEL_10;
      }

      ++v33;
      v31 = v34;
      if (v32 == v33)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_9:
  v75 = 1;
LABEL_10:
  v69 = v31;
  v70 = v2;
  v36 = *(a2 + 16);
  v37 = v77;
  if (v36)
  {
    v38 = a2 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v79 = v84[9];
    v39 = (v83 + 48);
    v84 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001AD9FC(v38, v11, type metadata accessor for ConnectionEvent);
      v40 = v80;
      sub_1001AD9FC(v11, v80, type metadata accessor for ConnectionEvent);
      sub_1001FDA58(v37, v40, v6);
      sub_1001AD938(v11, type metadata accessor for ConnectionEvent);
      if ((*v39)(v6, 1, v85) == 1)
      {
        sub_100025F40(v6, &qword_1005D35E0, &qword_1004DD1C8);
      }

      else
      {
        v41 = v76;
        sub_1001ADC1C(v6, v76, type metadata accessor for CommandConnection.RecentErrors.Error);
        if (v75)
        {
          goto LABEL_18;
        }

        sub_1001AD9FC(v41 + *(v85 + 20), v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v42 = swift_getEnumCaseMultiPayload();
        if ((v42 - 1) < 5)
        {
          sub_1001AD938(v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_18:
          v43 = v73;
          sub_1001ADC1C(v41, v73, type metadata accessor for CommandConnection.RecentErrors.Error);
          sub_1001ADC1C(v43, v78, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_1001EBC34(0, v84[2] + 1, 1, v84);
          }

          v45 = v84[2];
          v44 = v84[3];
          if (v45 >= v44 >> 1)
          {
            v84 = sub_1001EBC34((v44 > 1), v45 + 1, 1, v84);
          }

          v47 = v83;
          v46 = v84;
          v84[2] = v45 + 1;
          sub_1001ADC1C(v78, v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45, type metadata accessor for CommandConnection.RecentErrors.Error);
          v37 = v77;
          goto LABEL_13;
        }

        if (v42)
        {
          goto LABEL_18;
        }

        sub_1001AD938(v13, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1001AD938(v41, type metadata accessor for CommandConnection.RecentErrors.Error);
      }

LABEL_13:
      v38 += v79;
      if (!--v36)
      {
        goto LABEL_26;
      }
    }
  }

  v84 = _swiftEmptyArrayStorage;
LABEL_26:
  v48.rawValue = MonotonicTime.init(seconds:since:)(-4.0, v37).rawValue;
  v49 = *v82;
  if (!*v82)
  {
    v57 = 0;
    goto LABEL_42;
  }

  v50 = 0;
  v51 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v52 = *(v83 + 72);
  v85 = v51;
  v54 = v69;
  v53 = v70;
  while (1)
  {
    v55 = *(v69 + v51);
    v56 = v48.rawValue - v55;
    if (v48.rawValue >= v55)
    {
      if (__OFSUB__(v48.rawValue, v55))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (__OFSUB__(v55, v48.rawValue))
      {
        goto LABEL_65;
      }

      v56 = v48.rawValue - v55;
      if (__OFSUB__(0, v55 - v48.rawValue))
      {
        goto LABEL_66;
      }
    }

    if (v56 > 0)
    {
      break;
    }

    ++v50;
    v51 += v52;
    if (v49 == v50)
    {
      v57 = v49;
      goto LABEL_42;
    }
  }

  v57 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
    goto LABEL_76;
  }

  if (v57 != v49)
  {
    v58 = v52 + v51;
    while (v57 < v49)
    {
      v59 = v54;
      v60 = v74;
      sub_1001AD9FC(v54 + v58, v74, type metadata accessor for CommandConnection.RecentErrors.Error);
      v61 = *v60;
      v62 = __OFSUB__(v48.rawValue, *v60);
      v63 = v48.rawValue - *v60;
      if (v63 < 0 != v62)
      {
        v62 = __OFSUB__(v61, v48.rawValue);
        v64 = v61 - v48.rawValue;
        if (v62)
        {
          goto LABEL_69;
        }

        v63 = -v64;
        if (__OFSUB__(0, v64))
        {
          goto LABEL_70;
        }
      }

      else if (v62)
      {
        goto LABEL_68;
      }

      sub_1001AD938(v74, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v63 <= 0)
      {
        if (v57 != v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v65 = *v82;
          if (v50 >= *v82)
          {
            goto LABEL_72;
          }

          sub_1001AD9FC(v54 + v85 + v50 * v52, v71, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v57 >= v65)
          {
            goto LABEL_73;
          }

          sub_1001AD9FC(v54 + v58, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1001EDF14(v54);
          }

          sub_1001AD998(v72, v59 + v85 + v50 * v52, v66);
          if (v57 >= v59[2])
          {
            goto LABEL_74;
          }

          sub_1001AD998(v71, v59 + v58, v67);
          v54 = v59;
          *v53 = v59;
        }

        ++v50;
      }

      ++v57;
      v49 = v54[2];
      v82 = v54 + 2;
      v58 += v52;
      if (v57 == v49)
      {
        goto LABEL_41;
      }
    }

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
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v57 = v49;
LABEL_41:
  v49 = v50;
  if (v57 >= v50)
  {
LABEL_42:
    sub_1001AC628(v49, v57);
    sub_100215A50(v84);
    return;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t sub_1001A7100(uint64_t a1)
{
  v2 = v1;
  v106 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v106);
  v107 = &v92[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v105 = &v92[-v6];
  __chkstk_darwin(v7);
  v104 = &v92[-v8];
  __chkstk_darwin(v9);
  v103 = &v92[-v10];
  __chkstk_darwin(v11);
  v101 = &v92[-v12];
  __chkstk_darwin(v13);
  v100 = &v92[-v14];
  v97 = _s6LoggerVMa(0);
  __chkstk_darwin(v97);
  v16 = &v92[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v92[-v18];
  v20 = sub_1004A5214();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v96 = &v92[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v99 = &v92[-v24];
  __chkstk_darwin(v25);
  v98 = &v92[-v26];
  __chkstk_darwin(v27);
  v29 = &v92[-v28];
  v30 = sub_1004A4E34();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v92[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v31 + 16);
  v102 = a1;
  v35(v34, a1, v30, v32);
  if ((*(v31 + 88))(v34, v30) == enum case for NWConnection.State.failed(_:))
  {
    (*(v31 + 96))(v34, v30);
    if ((*(v21 + 88))(v34, v20) == enum case for NWError.posix(_:) && ((*(v21 + 16))(v29, v34, v20), (*(v21 + 96))(v29, v20), *v29 == 89))
    {
      v99 = v20;
      v36 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v37 = sub_1004A4A54();
      v38 = sub_1004A4A74();
      (*(*(v38 - 8) + 8))(v19, v38);
      v39 = sub_1004A6034();
      if (os_log_type_enabled(v37, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v108[0] = v41;
        *v40 = 68158466;
        *(v40 + 4) = 2;
        *(v40 + 8) = 256;
        v42 = v36 + *(v97 + 20);
        *(v40 + 10) = *v42;

        *(v40 + 11) = 2082;
        v43 = ConnectionID.debugDescription.getter(*(v42 + 4));
        v45 = sub_10015BA6C(v43, v44, v108);

        *(v40 + 13) = v45;
        *(v40 + 21) = 2048;
        v46 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v40 + 23) = v46;

        _os_log_impl(&_mh_execute_header, v37, v39, "[%.*hhx-%{public}s] [C%llu] Connection did fail: Operation canceled", v40, 0x1Fu);
        sub_1000197E0(v41);
      }

      else
      {
      }

      (*(v21 + 8))(v34, v99);
    }

    else
    {
      v47 = v98;
      (*(v21 + 32))(v98, v34, v20);
      v48 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v49 = v99;
      v95 = *(v21 + 16);
      v95(v99, v47, v20);

      v50 = sub_1004A4A54();
      v51 = sub_1004A4A74();
      (*(*(v51 - 8) + 8))(v16, v51);
      v52 = sub_1004A6014();
      if (os_log_type_enabled(v50, v52))
      {
        v53 = swift_slowAlloc();
        v93 = v52;
        v54 = v53;
        v94 = swift_slowAlloc();
        v108[0] = v94;
        *v54 = 68158722;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = v48 + *(v97 + 20);
        *(v54 + 10) = *v55;

        *(v54 + 11) = 2082;
        v56 = ConnectionID.debugDescription.getter(*(v55 + 4));
        v58 = v50;
        v59 = sub_10015BA6C(v56, v57, v108);

        *(v54 + 13) = v59;
        *(v54 + 21) = 2048;
        v60 = *(*(v2 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

        *(v54 + 23) = v60;

        *(v54 + 31) = 2080;
        v61 = v99;
        v95(v96, v99, v20);
        v62 = sub_1004A5824();
        v64 = v63;
        v65 = *(v21 + 8);
        v65(v61, v20);
        v66 = sub_10015BA6C(v62, v64, v108);
        v67 = v47;
        v68 = v66;

        *(v54 + 33) = v68;
        _os_log_impl(&_mh_execute_header, v58, v93, "[%.*hhx-%{public}s] [C%llu] Connection did fail: %s", v54, 0x29u);
        swift_arrayDestroy();

        v65(v67, v20);
      }

      else
      {

        v69 = *(v21 + 8);
        v69(v49, v20);
        v69(v47, v20);
      }
    }
  }

  else
  {
    (*(v31 + 8))(v34, v30);
  }

  v70 = v101;
  v71 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v72 = v100;
  sub_1001AD9FC(v2 + v71, v100, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v72, v70, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001AD938(v70, type metadata accessor for ConnectionState);
LABEL_14:
    v74 = 0;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001AD938(v70, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_14;
  }

  v74 = 1;
LABEL_17:
  v75 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v76 = *(v2 + v75);
  v77 = v103;
  sub_1001AD9FC(v2 + v71, v103, type metadata accessor for ConnectionState);

  sub_1001C4728(v102, v76);

  v78 = v104;
  sub_1001AD9FC(v2 + v71, v104, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v77, v2 + v71);
  swift_endAccess();
  sub_10019AB14(v78);
  sub_1001AD938(v78, type metadata accessor for ConnectionState);
  sub_1001AD938(v77, type metadata accessor for ConnectionState);
  v79 = v105;
  sub_1001AD9FC(v2 + v71, v105, type metadata accessor for ConnectionState);
  v80 = v79;
  v81 = v107;
  sub_1001ADC1C(v80, v107, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    sub_1001AD938(v81, type metadata accessor for ConnectionState);
    return sub_1001A86A0();
  }

  if (result == 3)
  {
    result = sub_1001AD938(v81, type metadata accessor for ConnectionState);
  }

  else if (result != 4)
  {
    return sub_1001A86A0();
  }

  if ((v74 & 1) == 0)
  {
    v83 = *(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v84 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
    swift_beginAccess();
    v85 = *(v2 + v84);

    LODWORD(v83) = sub_1001B4154(v83, v85);
    v87 = v86;
    v89 = v88;

    v90 = swift_allocObject();
    v91 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
    swift_beginAccess();
    *(v90 + 16) = *(v2 + v91);
    *(v90 + 24) = v83;
    *(v90 + 32) = v87;
    *(v90 + 40) = v89;

    sub_10019FE78(v90 | 0x1000000000000000);
  }

  return result;
}

uint64_t sub_1001A7D2C()
{
  v1 = _s6LoggerVMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v13, v12, type metadata accessor for ConnectionState);
  sub_1001AD9FC(v12, v9, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1001AD938(v9, type metadata accessor for ConnectionState);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1001AD938(v12, type metadata accessor for ConnectionState);
    v15 = v9;
    return sub_1001AD938(v15, type metadata accessor for ConnectionState);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v15 = v12;
    return sub_1001AD938(v15, type metadata accessor for ConnectionState);
  }

LABEL_6:
  sub_1001ADC1C(v12, v6, type metadata accessor for ConnectionState);
  v16 = swift_getEnumCaseMultiPayload();
  result = sub_1001AD938(v6, type metadata accessor for ConnectionState);
  if (v16 == 5)
  {
    return result;
  }

  v18 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v3, _s6LoggerVMa);
  v21 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  result = swift_beginAccess();
  if (!*(v21 + 40))
  {
    __break(1u);
    return result;
  }

  v22 = static MonotonicTime.now()();
  v23 = *(v21 + 8);
  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  if (!*(v21 + 32))
  {
    *&v32 = *v21;
    *(&v32 + 1) = v23;
    LOBYTE(v33) = v25 & 1;
    *(&v33 + 1) = v24;
    if ((sub_1001E7F80(v19, v20, v22) & 1) == 0)
    {
      sub_1001AB5C0();
    }

    v30 = v33;
    v31 = *(&v33 + 1);
    *v21 = v32;
    *(v21 + 16) = v30;
    *(v21 + 24) = v31;
    *(v21 + 32) = 0;
    if (v30)
    {
      goto LABEL_13;
    }

LABEL_19:
    RestartableTimer.start()();
    goto LABEL_20;
  }

  if (*(v21 + 32) == 1)
  {
    *&v32 = *v21;
    BYTE8(v32) = v23 & 1;
    *&v33 = v25;
    *(&v33 + 1) = v24;
    __chkstk_darwin(v22);
    *(&v32 - 2) = sub_1001AD630;
    *(&v32 - 1) = v0;
    __chkstk_darwin(v26);
    *(&v32 - 2) = sub_1001AD638;
    *(&v32 - 1) = v0;
    if ((sub_1001E80AC(v19, v20, sub_1001AD640, v27, sub_1001AD648, (&v32 - 2), v28, v3) & 1) == 0)
    {
      sub_1001AADFC();
    }

    v29 = BYTE8(v32);
    *v21 = v32;
    *(v21 + 8) = v29;
    *(v21 + 16) = v33;
    *(v21 + 32) = 1;
    if ((v29 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  RestartableTimer.stop()();
LABEL_20:
  sub_1001AD938(v3, _s6LoggerVMa);
  return swift_endAccess();
}

uint64_t sub_1001A817C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _s6LoggerVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v41 - v16;
  if (!(a1 >> 62))
  {
    return sub_1001D8288(a1 & 0x101FF);
  }

  if (a1 >> 62 == 1)
  {
    v41 = a4;
    v18 = v14;
    v19 = v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v4 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v12, _s6LoggerVMa);
    v20 = v4;

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A4A74();
    (*(*(v22 - 8) + 8))(v12, v22);
    v23 = sub_1004A5FF4();
    if (os_log_type_enabled(v21, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 68158210;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      v26 = v19 + *(v18 + 20);
      *(v24 + 10) = *v26;
      v27 = v20;

      *(v24 + 11) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v26 + 4));
      v30 = sub_10015BA6C(v28, v29, &v42);

      *(v24 + 13) = v30;
      _os_log_impl(&_mh_execute_header, v21, v23, "[%.*hhx-%{public}s] Finishing push registration.", v24, 0x15u);
      sub_1000197E0(v25);
    }

    else
    {

      v27 = v20;
    }

    return (*(v27 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration))(a1, a2, a3, v41);
  }

  v32 = a3 | a2 | a4;
  if (a1 == 0x8000000000000000 && !v32)
  {
    v33 = *(v4 + 16);
    v34 = v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration;
    v35 = *(v34 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
    if (v35 >> 6)
    {
      if (v35 >> 6 != 1)
      {
        v36 = 1;
        sub_1002141F8();
        goto LABEL_21;
      }

      LOBYTE(v35) = v35 & 0x3F;
    }

    sub_100213F20(v34, v35, v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger);
    v36 = 0;
LABEL_21:
    sub_1001AD9FC(v33 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v17, _s6LoggerVMa);
    v38 = (*(v10 + 80) + 17) & ~*(v10 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    sub_1001ADC1C(v17, v39 + v38, _s6LoggerVMa);

    sub_1001D7C7C(v40, sub_1001AD724, v39);
  }

  if (a1 == 0x8000000000000001 && !v32)
  {
    return sub_1001A8CFC("[%.*hhx-%{public}s] Requesting credentials.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials, sub_1001AD798, 52886, v15);
  }

  if (a1 == 0x8000000000000002 && !v32)
  {
    v37 = swift_allocObject();
    swift_weakInit();

    sub_1001D883C(sub_1001AD650, v37);
  }

  if (a1 != 0x8000000000000003 || v32)
  {
    return sub_1001D8E48();
  }

  else
  {
    return sub_1001A8CFC("[%.*hhx-%{public}s] Requesting push information.", &OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation, sub_1001AD844, 17630, v15);
  }
}

uint64_t sub_1001A86A0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v11, v7, type metadata accessor for ConnectionState);
  v14 = sub_1001ADD94;
  v15 = v1;

  sub_1001C7C8C(sub_1001AD894, v13, sub_1001AD858, v1, (v1 + v10));
  sub_1001CB07C(v9, v1 + v10, v7, v1);

  sub_1001CC10C(v1 + v10, v7, v1);
  sub_1001AD9FC(v1 + v11, v4, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v7, v1 + v11);
  swift_endAccess();
  sub_10019AB14(v4);
  sub_1001AD938(v4, type metadata accessor for ConnectionState);
  sub_1001AD938(v7, type metadata accessor for ConnectionState);
}

uint64_t sub_1001A88B0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v40 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v40);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 24);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1004A5404();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v1 + v20, v10, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v20;
      v37 = v2;
      v38 = v7;
      v39 = v4;
      sub_1001ADC1C(v10, v41, type metadata accessor for UnauthenticatedStateWithTasks);
      v21 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD89C(v42);
      v44[8] = v42[8];
      v44[9] = v42[9];
      v44[10] = v42[10];
      v45 = v43;
      v44[4] = v42[4];
      v44[5] = v42[5];
      v44[6] = v42[6];
      v44[7] = v42[7];
      v44[2] = v42[2];
      v44[3] = v42[3];
      v44[0] = v42[0];
      v44[1] = v42[1];
      v22 = sub_100218558(v44, v1 + v21);
      v23 = v22[2];
      if (v23)
      {
        v24 = (v22 + 7);
        do
        {
          v25 = *(v24 - 3);
          v26 = *(v24 - 2);
          v28 = *(v24 - 1);
          v27 = *v24;
          sub_1001AD7AC(v25, v26, v28, *v24);
          sub_1001A817C(v25, v26, v28, v27);
          sub_1001AD7F8(v25, v26, v28, v27);
          v24 += 4;
          --v23;
        }

        while (v23);
      }

      v29 = v41;
      v30 = v38;
      sub_1001AD9FC(v41, v38, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v31 = v36;
      v32 = v39;
      sub_1001AD9FC(v1 + v36, v39, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v30, v1 + v31);
      swift_endAccess();
      sub_10019AB14(v32);
      sub_1001AD938(v32, type metadata accessor for ConnectionState);
      sub_1001AD938(v30, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v33 = type metadata accessor for UnauthenticatedStateWithTasks;
      v34 = v29;
    }

    else
    {
      v33 = type metadata accessor for ConnectionState;
      v34 = v10;
    }

    return sub_1001AD938(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A8CFC(const char *a1, void *a2, uint64_t a3, ...)
{
  v7 = v3;
  v8 = _s6LoggerVMa(0);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A4A74();
  (*(*(v13 - 8) + 8))(v10, v13);
  v14 = sub_1004A5FF4();
  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v18 = v11 + *(v8 + 20);
    *(v16 + 10) = *v18;

    *(v16 + 11) = 2082;
    v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
    v21 = sub_10015BA6C(v19, v20, &v26);

    *(v16 + 13) = v21;
    _os_log_impl(&_mh_execute_header, v12, v14, a1, v16, 0x15u);
    sub_1000197E0(v17);

    a2 = v25;
  }

  else
  {
  }

  v22 = *(v7 + *a2);
  v23 = swift_allocObject();
  swift_weakInit();

  v22(a3, v23);
}

uint64_t sub_1001A8F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = sub_1001B86D0();
  if (v11 == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0x8000000000000000;
  }

  else
  {
    v12 = v10;
    v13 = v11;
    if (*(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v5 + 28)) >= 0)
    {
      v14 = v9 | 0x4000000000000000;
    }

    else
    {
      v14 = v9;
    }
  }

  sub_1001AD9FC(v8 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v7, type metadata accessor for ConnectionConfiguration);
  v15 = sub_1001B8394();
  v17 = v16;
  v19 = v18;
  result = sub_1001AD938(v7, type metadata accessor for ConnectionConfiguration);
  *a2 = v14;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v19;
  return result;
}

void sub_1001A90C0()
{
  v1 = v0;
  v2 = _s6LoggerVMa(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    *(v1 + v5) = 0;
    if (*(v6 + 16) && (v7 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate, swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v6, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v10 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v4, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v11 = sub_1004A4A54();
    v12 = sub_1004A4A74();
    (*(*(v12 - 8) + 8))(v4, v12);
    v13 = sub_1004A6014();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 68158210;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      v16 = v10 + *(v2 + 20);
      *(v14 + 10) = *v16;

      *(v14 + 11) = 2082;
      v17 = ConnectionID.debugDescription.getter(*(v16 + 4));
      v19 = sub_10015BA6C(v17, v18, &v20);

      *(v14 + 13) = v19;
      _os_log_impl(&_mh_execute_header, v11, v13, "[%.*hhx-%{public}s] Trying to send nil enqueued events.", v14, 0x15u);
      sub_1000197E0(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1001A9360(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A93C0(a1, v4);
  }

  return result;
}

uint64_t sub_1001A93C0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v59 = a1;
  v57 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v57);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v6);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v50 - v9;
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v58 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v58);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  v21 = sub_1004A5404();
  result = (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v23 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v3 + v23, v12, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001ADC1C(v12, v62, type metadata accessor for UnauthenticatedStateWithTasks);
      v24 = *(v3 + 16);
      v25 = sub_1001B86D0();
      v55 = v23;
      v56 = v6;
      v53 = v26;
      v54 = v25;
      v52 = v27;
      if (v27 == 1)
      {
        v57 = 0;
        v28 = 0;
        v29 = 0x8000000000000000;
      }

      else
      {
        if (*(v24 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v57 + 28)) >= 0)
        {
          v29 = v25 | 0x4000000000000000;
        }

        else
        {
          v29 = v25;
        }

        v57 = v26;
        v28 = v27;
      }

      v32 = v59;
      sub_1001AD9FC(v24 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v5, type metadata accessor for ConnectionConfiguration);
      v33 = sub_1001B8394();
      v35 = v34;
      v37 = v36;
      sub_1001AD938(v5, type metadata accessor for ConnectionConfiguration);
      v38 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      *&v63 = v32;
      *(&v63 + 1) = v29;
      *&v64 = v57;
      *(&v64 + 1) = v28;
      v59 = v33;
      *&v65 = v33;
      *(&v65 + 1) = v35;
      v57 = v35;
      v51 = v37;
      *&v66 = v37;
      sub_1001AD7A0(&v63);
      v75[8] = v71;
      v75[9] = v72;
      v75[10] = v73;
      v76 = v74;
      v75[4] = v67;
      v75[5] = v68;
      v75[6] = v69;
      v75[7] = v70;
      v75[2] = v65;
      v75[3] = v66;
      v75[0] = v63;
      v75[1] = v64;
      v39 = sub_100218558(v75, v3 + v38);
      v40 = v39[2];
      if (v40)
      {
        v41 = (v39 + 7);
        do
        {
          v43 = *(v41 - 3);
          v42 = *(v41 - 2);
          v44 = *(v41 - 1);
          v45 = *v41;
          sub_1001AD7AC(v43, v42, v44, *v41);
          sub_1001A817C(v43, v42, v44, v45);
          sub_1001AD7F8(v43, v42, v44, v45);
          v41 += 4;
          --v40;
        }

        while (v40);
      }

      sub_100175584(v54, v53, v52);
      sub_100175584(v59, v57, v51);
      v46 = v62;
      v47 = v60;
      sub_1001AD9FC(v62, v60, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v48 = v55;
      v49 = v61;
      sub_1001AD9FC(v3 + v55, v61, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v47, v3 + v48);
      swift_endAccess();
      sub_10019AB14(v49);
      sub_1001AD938(v49, type metadata accessor for ConnectionState);
      sub_1001AD938(v47, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v30 = type metadata accessor for UnauthenticatedStateWithTasks;
      v31 = v46;
    }

    else
    {
      v30 = type metadata accessor for ConnectionState;
      v31 = v12;
    }

    return sub_1001AD938(v31, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A9950(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A99B0(a1);
  }

  return result;
}

uint64_t sub_1001A99B0(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v58 = *a1;
  v59 = v3;
  v4 = a1[3];
  v60 = a1[2];
  v61 = v4;
  v5 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v37 - v9;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v41 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v41);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1004A5404();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v2 + v22, v12, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v22;
      v39 = v5;
      v40 = v7;
      sub_1001ADC1C(v12, v43, type metadata accessor for UnauthenticatedStateWithTasks);
      v23 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      sub_1001AD84C(&v44);
      v56[8] = v52;
      v56[9] = v53;
      v56[10] = v54;
      v57 = v55;
      v56[4] = v48;
      v56[5] = v49;
      v56[6] = v50;
      v56[7] = v51;
      v56[2] = v46;
      v56[3] = v47;
      v56[0] = v44;
      v56[1] = v45;
      v24 = sub_100218558(v56, v2 + v23);
      v25 = v24[2];
      if (v25)
      {
        v26 = (v24 + 7);
        do
        {
          v27 = *(v26 - 3);
          v28 = *(v26 - 2);
          v30 = *(v26 - 1);
          v29 = *v26;
          sub_1001AD7AC(v27, v28, v30, *v26);
          sub_1001A817C(v27, v28, v30, v29);
          sub_1001AD7F8(v27, v28, v30, v29);
          v26 += 4;
          --v25;
        }

        while (v25);
      }

      v31 = v42;
      v32 = v43;
      sub_1001AD9FC(v43, v42, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      v33 = v38;
      v34 = v40;
      sub_1001AD9FC(v2 + v38, v40, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v31, v2 + v33);
      swift_endAccess();
      sub_10019AB14(v34);
      sub_1001AD938(v34, type metadata accessor for ConnectionState);
      sub_1001AD938(v31, type metadata accessor for ConnectionState);
      sub_1001A86A0();
      v35 = type metadata accessor for UnauthenticatedStateWithTasks;
      v36 = v32;
    }

    else
    {
      v35 = type metadata accessor for ConnectionState;
      v36 = v12;
    }

    return sub_1001AD938(v36, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A9E1C(uint64_t a1)
{
  v3 = _s6LoggerVMa(0);
  __chkstk_darwin(v3);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v96 - v7;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  __chkstk_darwin(v12);
  v14 = &v96 - v13;
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  v18 = static MonotonicTime.now()();
  v19 = sub_1001AA9D8(v18);
  if ((v20 & 1) == 0 || v19)
  {
    return;
  }

  v96 = v1;
  v21 = (v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v22 = 0;
  v23 = *v21;
  v24 = *(*v21 + 16);
  v25 = v24 + 1;
  v26 = 56;
  while (--v25)
  {
    v27 = *(v23 + v26);
    v26 += 40;
    v28 = v27 == 2;
    v29 = __OFADD__(v22, v28);
    v22 += v28;
    if (v29)
    {
      __break(1u);
      break;
    }
  }

  if (v22 > 2)
  {
    v30 = v96 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v96 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v31 = sub_1004A4A54();
    v32 = sub_1004A4A74();
    (*(*(v32 - 8) + 8))(v5, v32);
    v33 = sub_1004A6014();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98[0] = v35;
      *v34 = 68158466;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v36 = v30 + *(v3 + 20);
      *(v34 + 10) = *v36;

      *(v34 + 11) = 2082;
      v37 = ConnectionID.debugDescription.getter(*(v36 + 4));
      v39 = sub_10015BA6C(v37, v38, v98);

      *(v34 + 13) = v39;
      *(v34 + 21) = 2048;
      *(v34 + 23) = v22;
      _os_log_impl(&_mh_execute_header, v31, v33, "[%.*hhx-%{public}s] Connection has %ld IDLE running.", v34, 0x1Fu);
      sub_1000197E0(v35);

LABEL_31:
      CommandConnection.cancel()();
      return;
    }

LABEL_30:

    goto LABEL_31;
  }

  v40 = a1;
  if (!v24)
  {
    goto LABEL_23;
  }

  v41 = (v23 + 64);
  v40 = a1;
  do
  {
    v42 = *v41;
    if (*v41 >= v40)
    {
      v42 = v40;
    }

    if (*(v41 - 8) == 2)
    {
      v40 = v42;
    }

    v41 += 5;
    --v24;
  }

  while (v24);
  if (v40 <= a1)
  {
    goto LABEL_23;
  }

  if (__OFSUB__(v40, a1))
  {
    goto LABEL_53;
  }

  v43 = a1 - v40;
  if (__OFSUB__(0, v40 - a1))
  {
    __break(1u);
LABEL_23:
    v43 = a1 - v40;
    if (!__OFSUB__(a1, v40))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_24:
  v44 = v43 / 1000000000.0;
  if (v44 >= 570.0)
  {
    v57 = v96 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v96 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v8, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v31 = sub_1004A4A54();
    v58 = sub_1004A4A74();
    (*(*(v58 - 8) + 8))(v8, v58);
    v59 = sub_1004A6014();
    if (os_log_type_enabled(v31, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v98[0] = v61;
      *v60 = 68158466;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v62 = v57 + *(v3 + 20);
      *(v60 + 10) = *v62;

      *(v60 + 11) = 2082;
      v63 = ConnectionID.debugDescription.getter(*(v62 + 4));
      v65 = sub_10015BA6C(v63, v64, v98);

      *(v60 + 13) = v65;
      *(v60 + 21) = 2048;
      *(v60 + 23) = v44;
      _os_log_impl(&_mh_execute_header, v31, v59, "[%.*hhx-%{public}s] Connection has IDLE that has been running for %f s.", v60, 0x1Fu);
      sub_1000197E0(v61);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  sub_1002090DC(v45, v98);

  if (v98[1])
  {
    sub_100025F40(v98, &qword_1005D3608, &unk_1004DD1F0);
    v46 = v96;
    goto LABEL_27;
  }

  v66 = *v21;
  v46 = v96;
  if (!*(v66 + 16))
  {
LABEL_27:
    v47 = v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v11, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v48 = sub_1004A4A54();
    v49 = sub_1004A4A74();
    (*(*(v49 - 8) + 8))(v11, v49);
    v50 = sub_1004A6004();
    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v97 = v52;
      *v51 = 68158210;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v53 = v47 + *(v3 + 20);
      *(v51 + 10) = *v53;

      *(v51 + 11) = 2082;
      v54 = ConnectionID.debugDescription.getter(*(v53 + 4));
      v56 = sub_10015BA6C(v54, v55, &v97);

      *(v51 + 13) = v56;
      _os_log_impl(&_mh_execute_header, v48, v50, "[%.*hhx-%{public}s] Stuck check: no (non-IDLE) commands are currently running.", v51, 0x15u);
      sub_1000197E0(v52);

LABEL_29:

      return;
    }

    goto LABEL_50;
  }

  v67 = *(*(v96 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime);
  if (v67 <= a1)
  {
LABEL_42:
    v68 = a1 - v67;
    if (!__OFSUB__(a1, v67))
    {
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
    return;
  }

  if (__OFSUB__(v67, a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v68 = a1 - v67;
  if (__OFSUB__(0, v67 - a1))
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  v69 = v68 / 1000000000.0;
  if (v69 >= 2.0)
  {
    v70 = *(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    LOBYTE(v70) = sub_1001B4154(v70, v66);
    v72 = v71;
    v74 = v73;

    v75 = sub_1001AFA54(v70, v72, v74);
    v77 = v76;

    v78 = v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v69 >= 87.0)
    {
      sub_1001AD9FC(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v14, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v87 = sub_1004A4A54();
      v88 = sub_1004A4A74();
      (*(*(v88 - 8) + 8))(v14, v88);
      v89 = sub_1004A6014();

      if (os_log_type_enabled(v87, v89))
      {
        v90 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v90 = 68158978;
        *(v90 + 4) = 2;
        *(v90 + 8) = 256;
        v91 = v78 + *(v3 + 20);
        *(v90 + 10) = *v91;

        *(v90 + 11) = 2082;
        v92 = ConnectionID.debugDescription.getter(*(v91 + 4));
        v94 = sub_10015BA6C(v92, v93, &v97);

        *(v90 + 13) = v94;
        *(v90 + 21) = 1040;
        *(v90 + 23) = 1;
        *(v90 + 27) = 2048;
        *(v90 + 29) = v69;
        *(v90 + 37) = 2082;
        v95 = sub_10015BA6C(v75, v77, &v97);

        *(v90 + 39) = v95;
        _os_log_impl(&_mh_execute_header, v87, v89, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s. Cancelling.", v90, 0x2Fu);
        swift_arrayDestroy();
      }

      else
      {
      }

      goto LABEL_31;
    }

    sub_1001AD9FC(v46 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v17, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v48 = sub_1004A4A54();
    v79 = sub_1004A4A74();
    (*(*(v79 - 8) + 8))(v17, v79);
    v80 = sub_1004A6014();

    if (os_log_type_enabled(v48, v80))
    {
      v81 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v81 = 68158978;
      *(v81 + 4) = 2;
      *(v81 + 8) = 256;
      v82 = v78 + *(v3 + 20);
      *(v81 + 10) = *v82;

      *(v81 + 11) = 2082;
      v83 = ConnectionID.debugDescription.getter(*(v82 + 4));
      v85 = sub_10015BA6C(v83, v84, &v97);

      *(v81 + 13) = v85;
      *(v81 + 21) = 1040;
      *(v81 + 23) = 1;
      *(v81 + 27) = 2048;
      *(v81 + 29) = v69;
      *(v81 + 37) = 2082;
      v86 = sub_10015BA6C(v75, v77, &v97);

      *(v81 + 39) = v86;
      _os_log_impl(&_mh_execute_header, v48, v80, "[%.*hhx-%{public}s] Connection appears to have been stuck for %.*f s. Running commands: %{public}s.", v81, 0x2Fu);
      swift_arrayDestroy();

      goto LABEL_29;
    }

LABEL_50:
  }
}

uint64_t sub_1001AA9D8(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v9, v5, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_7;
  }

  sub_1001ADC1C(v5, v8, type metadata accessor for UnauthenticatedStateWithTasks);
  v10 = *(v8 + 1);
  *&result = COERCE_DOUBLE(sub_1001AD938(v8, type metadata accessor for UnauthenticatedStateWithTasks));
  if (v10 <= a1)
  {
    v12 = a1 - v10;
    if (!__OFSUB__(a1, v10))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v10, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = a1 - v10;
  if (__OFSUB__(0, v10 - a1))
  {
    __break(1u);
LABEL_7:
    sub_1001AD938(v5, type metadata accessor for ConnectionState);
    *&result = 0.0;
    return result;
  }

LABEL_9:
  if (v12 / 1000000000.0 <= 180.0)
  {
    return 1;
  }

  *&result = v12 / 1000000000.0;
  return result;
}

double sub_1001AABB8@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();

  sub_1002090DC(v3, v6);

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1001AAC44(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v7 = &v16[-v6 - 8];
  v8 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(a1 + v8, v7, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v7, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v16, v4, 0x162uLL);
    v9 = *(v4 + 21);
    v17[8] = *(v4 + 20);
    v17[9] = v9;
    v18 = *(v4 + 176);
    v10 = *(v4 + 17);
    v17[4] = *(v4 + 16);
    v17[5] = v10;
    v11 = *(v4 + 19);
    v17[6] = *(v4 + 18);
    v17[7] = v11;
    v12 = *(v4 + 13);
    v17[0] = *(v4 + 12);
    v17[1] = v12;
    v13 = *(v4 + 15);
    v17[2] = *(v4 + 14);
    v17[3] = v13;
    if (sub_1001ACFC0(v17) == 2)
    {
      sub_1001AD074(v17);
      sub_1001ACFCC(v16);
      return 1;
    }

    sub_1001ACFCC(v16);
  }

  else
  {
    sub_1001AD938(v4, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1001AADFC()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v51);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _s6LoggerVMa(0);
  __chkstk_darwin(v54);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v0[3];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  v18 = sub_1004A5404();
  (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v53 = v10;
    v47 = v7;
    v48 = v4;
    v49 = v2;
    v50 = v1;
    v19 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v7 = (*(v0 + v19) + 1) & 0xFFFFFF;
    *(v0 + v19) = v7;
    v4 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
    v18 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
    swift_beginAccess();
    v15 = v0;
    v10 = static MonotonicTime.now()();
    v2 = *v18;
    v0 = _swiftEmptySetSingleton;
    sub_10020924C(_swiftEmptySetSingleton, 0, *v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v2 = sub_1001EBFD0(0, *(v2 + 16) + 1, 1, v2);
  *v18 = v2;
LABEL_3:
  v21 = v4;
  v23 = *(v2 + 16);
  v22 = *(v2 + 24);
  if (v23 >= v22 >> 1)
  {
    v45 = sub_1001EBFD0((v22 > 1), v23 + 1, 1, v2);
    v24 = v7;
    v2 = v45;
  }

  else
  {
    v24 = v7;
  }

  *(v2 + 16) = v23 + 1;
  v25 = v2 + 40 * v23;
  *(v25 + 32) = v4;
  *(v25 + 36) = v24;
  *(v25 + 40) = v0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 2;
  *(v25 + 64) = v10;
  *v18 = v2;
  v26 = v24;
  swift_endAccess();
  swift_endAccess();
  v27 = v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v28 = v47;
  sub_1001AD9FC(v15 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v47, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v29 = sub_1004A4A54();
  v30 = sub_1004A4A74();
  (*(*(v30 - 8) + 8))(v28, v30);
  v31 = sub_1004A6004();
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55[0] = v53;
    *v32 = 68158466;
    *(v32 + 4) = 2;
    *(v32 + 8) = 256;
    v33 = &v27[*(v54 + 20)];
    *(v32 + 10) = *v33;

    *(v32 + 11) = 2082;
    v34 = ConnectionID.debugDescription.getter(*(v33 + 1));
    v36 = sub_10015BA6C(v34, v35, v55);

    *(v32 + 13) = v36;
    *(v32 + 21) = 2082;
    v21 = v4;
    v37 = v26 << 32;
    v38 = Tag.debugDescription.getter(v21 | ((v26 & 0xFFFFFF) << 32));
    v40 = sub_10015BA6C(v38, v39, v55);

    *(v32 + 23) = v40;
    _os_log_impl(&_mh_execute_header, v29, v31, "[%.*hhx-%{public}s] Sending IDLE as %{public}s", v32, 0x1Fu);
    swift_arrayDestroy();
  }

  else
  {

    v37 = v26 << 32;
  }

  v41 = v50;
  v42 = v52;
  swift_storeEnumTagMultiPayload();
  sub_1001B78AC(v37 | v21, v42);
  sub_1001AD938(v42, type metadata accessor for OutboundContent);
  v43 = v48;
  sub_1004A4914();
  sub_1001D75AC(v43);
  return (*(v49 + 8))(v43, v41);
}

uint64_t sub_1001AB5C0()
{
  v1 = sub_1004A4904();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v60 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s6LoggerVMa(0);
  __chkstk_darwin(v64);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v65 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v65);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = sub_1004A53F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v20, v19, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1001AD938(v19, type metadata accessor for ConnectionState);
  if (EnumCaseMultiPayload != 2)
  {
    return result;
  }

  v23 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  result = swift_beginAccess();
  if (*(*v23 + 16))
  {
    return result;
  }

  v24 = *(v0 + 24);
  *v16 = v24;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v25 = v24;
  LOBYTE(v24) = sub_1004A5404();
  v27 = *(v14 + 8);
  v26 = v14 + 8;
  v27(v16, v13);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v28 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
  swift_beginAccess();
  LODWORD(v56) = *(v0 + v28);
  v29 = (v56 + 1) & 0xFFFFFF;
  *(v0 + v28) = v29;
  v57 = v0;
  v55 = *(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  v30 = sub_1001FBAA0();
  sub_1001AD938(v12, type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v0 = sub_1001FBFB0();
  sub_1001AD938(v9, type metadata accessor for ClientCommand);
  v31 = static MonotonicTime.now()();
  v16 = *v23;
  sub_10020924C(v30, 0, *v23);
  v56 = v31;
  v26 = v29;
  v7 = v55;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    v16 = sub_1001EBFD0(0, *(v16 + 2) + 1, 1, v16);
    *v23 = v16;
  }

  v33 = v57;
  v34 = v63;
  v35 = v64;
  v37 = *(v16 + 2);
  v36 = *(v16 + 3);
  if (v37 >= v36 >> 1)
  {
    v16 = sub_1001EBFD0((v36 > 1), v37 + 1, 1, v16);
  }

  *(v16 + 2) = v37 + 1;
  v38 = &v16[40 * v37];
  *(v38 + 8) = v7;
  *(v38 + 9) = v26;
  *(v38 + 5) = v0;
  *(v38 + 6) = 0;
  v38[56] = 1;
  *(v38 + 8) = v56;
  *v23 = v16;
  swift_endAccess();
  swift_endAccess();
  v39 = v33 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v33 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v34, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v40 = sub_1004A4A54();
  v41 = sub_1004A4A74();
  (*(*(v41 - 8) + 8))(v34, v41);
  v42 = sub_1004A6004();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v43 = 68158466;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    v44 = v39 + *(v35 + 20);
    *(v43 + 10) = *v44;

    *(v43 + 11) = 2082;
    v45 = ConnectionID.debugDescription.getter(*(v44 + 4));
    v47 = sub_10015BA6C(v45, v46, v66);

    *(v43 + 13) = v47;
    *(v43 + 21) = 2082;
    v48 = v26 << 32;
    v49 = Tag.debugDescription.getter(v7 | ((v26 & 0xFFFFFF) << 32));
    v51 = sub_10015BA6C(v49, v50, v66);

    *(v43 + 23) = v51;
    _os_log_impl(&_mh_execute_header, v40, v42, "[%.*hhx-%{public}s] Sending NOOP as %{public}s", v43, 0x1Fu);
    swift_arrayDestroy();
  }

  else
  {

    v48 = v26 << 32;
  }

  v52 = v59;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1001B78AC(v48 | v7, v52);
  sub_1001AD938(v52, type metadata accessor for OutboundContent);
  v53 = v60;
  sub_1004A4914();
  sub_1001D75AC(v53);
  return (*(v61 + 8))(v53, v62);
}

uint64_t sub_1001ABF8C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A7D2C();
  }

  return result;
}

uint64_t sub_1001ABFE4(uint64_t a1, unint64_t a2)
{
  sub_100014CEC(a1, a2);
  sub_1001AC1B8(a1, a2);
  v4 = sub_1004A58D4();

  return v4;
}

uint64_t sub_1001AC050@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1004A58D4();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001AC08C(uint64_t a1, char a2)
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

  sub_1004A6A34();
LABEL_9:
  result = sub_1004A67A4();
  *v2 = result;
  return result;
}

unint64_t sub_1001AC12C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001AC1B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004A4444();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_100014D40(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_10015BEAC(v9, 0);
      v12 = sub_1004A43B4();
      sub_100014D40(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1001AC334(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1004A58D4();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1004A58D4();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1004A40D4();
  if (a1)
  {
    a1 = sub_1004A4104();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1004A40D4() || !__OFSUB__(v5, sub_1004A4104()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1004A40F4();
  return sub_1004A58D4();
}

unint64_t sub_1001AC4E0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = *v4;
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1001AC628(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1001EBC34(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1001AC4E0(v6, a2, 0, v10);
  *v2 = v4;
  return result;
}

uint64_t sub_1001AC6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1004A5154();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1004A6A34();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1004A6A34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001AC808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1004A6A34();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1004A6A34();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1001AC08C(result, 1);

  return sub_1001AC6E8(v7, v6, 1, v4);
}

uint64_t sub_1001AC8F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AC934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AC94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1001AC9B0()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v44[-1] - v3);
  v5 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v5);
  v7 = (&v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s6LoggerVMa(0);
  __chkstk_darwin(v8);
  v10 = &v44[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44[-1] - v12;
  v14 = static MonotonicTime.now()();
  v15 = sub_1001AA9D8(v14);
  v16 = *&v15;
  if ((v17 & 1) == 0)
  {
    v28 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v29 = sub_1004A4A54();
    v30 = sub_1004A4A74();
    (*(*(v30 - 8) + 8))(v10, v30);
    v31 = sub_1004A6014();
    if (!os_log_type_enabled(v29, v31))
    {

      goto LABEL_11;
    }

    v32 = v16;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44[0] = v34;
    *v33 = 68158466;
    *(v33 + 4) = 2;
    *(v33 + 8) = 256;
    v35 = v28 + *(v8 + 20);
    *(v33 + 10) = *v35;

    *(v33 + 11) = 2082;
    v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
    v38 = sub_10015BA6C(v36, v37, v44);

    *(v33 + 13) = v38;
    *(v33 + 21) = 2048;
    v39 = round(v32);
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v39 > -9.22337204e18)
    {
      if (v39 < 9.22337204e18)
      {
        *(v33 + 23) = v39;
        _os_log_impl(&_mh_execute_header, v29, v31, "[%.*hhx-%{public}s] Stuck for %ld seconds trying in unauthenticated state. Closing connection.", v33, 0x1Fu);
        sub_1000197E0(v34);

LABEL_11:
        v40 = static MonotonicTime.now()();
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 2;
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v41 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
        swift_beginAccess();
        sub_1001AD9FC(v7, v4, type metadata accessor for ConnectionEvent);
        sub_1001A5C90(v40, v4);
        sub_100025F40(v4, &qword_1005D35E8, &unk_1004DD1D0);
        sub_1001AD938(v7, type metadata accessor for ConnectionEvent);
        swift_endAccess();
        v42 = swift_allocObject();
        *(v42 + 16) = *(v1 + v41);

        *(v42 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
        *(v42 + 32) = _swiftEmptySetSingleton;
        *(v42 + 40) = _swiftEmptySetSingleton;
        sub_10019FE78(v42 | 0x1000000000000000);

        sub_1004A4E64();
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v15)
  {
    v18 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v19 = sub_1004A4A54();
    v20 = sub_1004A4A74();
    (*(*(v20 - 8) + 8))(v13, v20);
    v21 = sub_1004A6034();
    if (os_log_type_enabled(v19, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44[0] = v23;
      *v22 = 68158210;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v24 = v18 + *(v8 + 20);
      *(v22 + 10) = *v24;

      *(v22 + 11) = 2082;
      v25 = ConnectionID.debugDescription.getter(*(v24 + 4));
      v27 = sub_10015BA6C(v25, v26, v44);

      *(v22 + 13) = v27;
      _os_log_impl(&_mh_execute_header, v19, v21, "[%.*hhx-%{public}s] Checking stuck: waiting", v22, 0x15u);
      sub_1000197E0(v23);
    }

    else
    {
    }
  }
}

unint64_t sub_1001AD108()
{
  result = qword_1005D32E8;
  if (!qword_1005D32E8)
  {
    v3 = sub_10000DEFC(&qword_1005D32E0, &qword_1004DD0C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D32E8);
  }

  return result;
}

unint64_t sub_1001AD16C()
{
  result = qword_1005D32F0;
  if (!qword_1005D32F0)
  {
    result = swift_getWitnessTable(byte_1004E64B8, &_s13CapturedValueVN_0, v0, v1);
    atomic_store(result, &qword_1005D32F0);
  }

  return result;
}

uint64_t sub_1001AD214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1001AD9FC(v3 + v4, a2, type metadata accessor for ConnectionState);
}

double sub_1001AD288@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_1001AD304@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t type metadata accessor for CommandConnection(uint64_t a1)
{
  result = qword_1005D3330;
  if (!qword_1005D3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AD3D4(uint64_t a1)
{
  result = _s6LoggerVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConnectionState(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1001AD534(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  sub_1001A1E9C(a1, a2, a3 & 1, a4);

  CommandConnection.flush()();
}

uint64_t sub_1001AD560()
{
  sub_100173584(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001AD5A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AD5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AD658()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001AD724(uint64_t a1)
{
  v3 = *(_s6LoggerVMa(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_1001BE954(a1, v4, v5);
}

double sub_1001AD7AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_1001AD7F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_1001AD858(uint64_t a1)
{
  v1 = CommandConnection.send(_:)(a1);
  CommandConnection.flush()();
  return v1;
}

double sub_1001AD89C(uint64_t a1)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1001AD8E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AD998(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AD9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001ADA64(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000CB848(result);
  }

  return result;
}

double sub_1001ADA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {

    return sub_10010E780(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1001ADAD0()
{

  if (*(v0 + 48))
  {
    if ((~*(v0 + 32) & 0xF000000000000007) != 0)
    {
      sub_100011160(*(v0 + 32));
    }
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001ADB8C()
{

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1001ADC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001ADC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ADCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ADD98(void *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  v263 = *(a1 + 2);
  v264 = v2;
  v265 = *(a1 + 4);
  v3 = *(a1 + 1);
  v261 = *a1;
  v262 = v3;
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[7];
  if ((v8 & 0x1000000000000000) != 0)
  {
    v9 = a1[6];
    v253 = *a1;
    v254 = v5;
    v255 = v7;
    v256 = v6;
    v257 = *(a1 + 2);
    v258 = v9;
    v259 = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v260 = *(a1 + 4);
    sub_1004A6EB4(1uLL);
    sub_1001EEF30(&v248);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v10 = sub_1004A6F14();
  v11 = a2;
  v12 = a2 + 56;
  v13 = -1 << *(a2 + 32);
  v14 = v10 & ~v13;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v240 = ~v13;
  while (1)
  {
    v17 = (*(v11 + 48) + 80 * v14);
    v248 = *v17;
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[2];
    v249 = v17[1];
    v250 = v20;
    v251 = v19;
    v252 = v18;
    v21 = *(&v248 + 1);
    v22 = *(&v249 + 1);
    v23 = v249;
    v24 = *(&v19 + 1);
    if ((*(&v19 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(a1 + 63) & 0x10) == 0)
      {
        v25 = a1[2];
        v26 = a1[3];
        if (v248 == *a1 || (v27 = sub_1004A6D34(), v15 = v240, v12 = a2 + 56, (v27 & 1) != 0))
        {
          if (v23 == v25 && v22 == v26)
          {
            return 1;
          }

LABEL_7:
          v16 = sub_1004A6D34();
          v15 = v240;
          v12 = a2 + 56;
          if (v16)
          {
            return 1;
          }

          goto LABEL_8;
        }
      }

      goto LABEL_8;
    }

    v28 = a1[7];
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

    v30 = *a1;
    v29 = a1[1];
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[9];
    v34 = (*(&v252 + 1) >> 59) & 6 | ((*(&v251 + 1) & 0x2000000000000000) != 0);
    if (v34 <= 2)
    {
      break;
    }

    if (v34 > 4)
    {
      v37 = (v28 >> 61) & 1;
      v38 = v33 >> 59;
      if (v34 == 5)
      {
        if ((v38 & 6 | v37) != 5)
        {
          goto LABEL_8;
        }
      }

      else if ((v38 & 6 | v37) != 6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 != 3)
      {
        if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_8;
        }

        v43 = *(&v248 + 1) >> 62;
        v44 = v29 >> 62;
        v238 = a1[3];
        if (*(&v248 + 1) >> 62 == 3)
        {
          v45 = 0;
          if (v248 != __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_142;
          }

          if (v29 >> 62 != 3)
          {
            goto LABEL_142;
          }

          v45 = 0;
          if (v30 || v29 != 0xC000000000000000)
          {
            goto LABEL_142;
          }

          goto LABEL_157;
        }

        if (v43 > 1)
        {
          if (v43 == 2)
          {
            v54 = *(v248 + 16);
            v53 = *(v248 + 24);
            v50 = __OFSUB__(v53, v54);
            v45 = v53 - v54;
            if (v50)
            {
              goto LABEL_411;
            }
          }

          else
          {
            v45 = 0;
          }
        }

        else if (v43)
        {
          LODWORD(v45) = DWORD1(v248) - v248;
          if (__OFSUB__(DWORD1(v248), v248))
          {
            goto LABEL_413;
          }

          v45 = v45;
        }

        else
        {
          v45 = BYTE14(v248);
        }

LABEL_142:
        if (v44 > 1)
        {
          if (v44 != 2)
          {
            if (v45)
            {
              goto LABEL_8;
            }

            goto LABEL_157;
          }

          v87 = *(v30 + 16);
          v86 = *(v30 + 24);
          v50 = __OFSUB__(v86, v87);
          v85 = v86 - v87;
          if (v50)
          {
            goto LABEL_407;
          }
        }

        else if (v44)
        {
          LODWORD(v85) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_405;
          }

          v85 = v85;
        }

        else
        {
          v85 = BYTE6(v29);
        }

        if (v45 != v85)
        {
          goto LABEL_8;
        }

        if (v45 >= 1)
        {
          v225 = a1[2];
          if (v43 > 1)
          {
            if (v43 != 2)
            {
              *&v241[6] = 0;
              *v241 = 0;
              v145 = v29;
              v146 = v30;
              sub_100014CEC(v30, v29);
              sub_10019782C(&v248, &v242);
              sub_100014CEC(v146, v145);
              sub_100066884(v241, v146, v145, &v242);
              sub_100014D40(v146, v145);
              v90 = v146;
              v91 = v145;
              goto LABEL_248;
            }

            v108 = *(v248 + 16);
            v109 = *(v248 + 24);
          }

          else
          {
            if (!v43)
            {
              *v241 = v248;
              *&v241[8] = DWORD2(v248);
              *&v241[12] = WORD6(v248);
              v88 = v29;
              v89 = v30;
              sub_100014CEC(v30, v29);
              sub_10019782C(&v248, &v242);
              sub_100014CEC(v89, v88);
              sub_100066884(v241, v89, v88, &v242);
              sub_100014D40(v89, v88);
              v90 = v89;
              v91 = v88;
LABEL_248:
              sub_100014D40(v90, v91);
              v11 = a2;
              v93 = v225;
              if ((v242 & 1) == 0)
              {
                goto LABEL_394;
              }

LABEL_158:
              v94 = v22 >> 62;
              v95 = v238 >> 62;
              if (v22 >> 62 == 3)
              {
                v96 = 0;
                v97 = v238;
                if (!v23 && v22 == 0xC000000000000000 && v238 >> 62 == 3)
                {
                  v96 = 0;
                  if (!v93 && v238 == 0xC000000000000000)
                  {
                    goto LABEL_402;
                  }
                }
              }

              else if (v94 == 2)
              {
                v131 = *(v23 + 16);
                v130 = *(v23 + 24);
                v50 = __OFSUB__(v130, v131);
                v96 = v130 - v131;
                if (v50)
                {
                  goto LABEL_427;
                }

                v97 = v238;
              }

              else
              {
                v97 = v238;
                if (v94 == 1)
                {
                  LODWORD(v96) = HIDWORD(v23) - v23;
                  if (__OFSUB__(HIDWORD(v23), v23))
                  {
                    goto LABEL_426;
                  }

                  v96 = v96;
                }

                else
                {
                  v96 = BYTE6(v22);
                }
              }

              if (v95 > 1)
              {
                if (v95 != 2)
                {
                  goto LABEL_393;
                }

                v134 = *(v93 + 16);
                v133 = *(v93 + 24);
                v50 = __OFSUB__(v133, v134);
                v132 = v133 - v134;
                if (v50)
                {
                  goto LABEL_418;
                }
              }

              else if (v95)
              {
                LODWORD(v132) = HIDWORD(v93) - v93;
                if (__OFSUB__(HIDWORD(v93), v93))
                {
                  goto LABEL_417;
                }

                v132 = v132;
              }

              else
              {
                v132 = BYTE6(v97);
              }

              if (v96 != v132)
              {
                goto LABEL_394;
              }

              if (v96 < 1)
              {
                goto LABEL_402;
              }

              v135 = v97;
              v136 = v93;
              sub_100014CEC(v93, v97);
              v137 = v23;
              v138 = v22;
              goto LABEL_233;
            }

            v108 = v248;
            v109 = v248 >> 32;
            if (v248 >> 32 < v248)
            {
              goto LABEL_431;
            }
          }

          v142 = a1[1];
          v143 = *a1;
          sub_100014CEC(v30, v29);
          sub_100014CEC(v143, v142);
          sub_10019782C(&v248, &v242);
          sub_100014CEC(v143, v142);
          v144 = sub_10003A0DC(v108, v109, v21 & 0x3FFFFFFFFFFFFFFFLL, v143, v142);
          sub_100014D40(v143, v142);
          sub_100014D40(v143, v142);
          sub_100014D40(v143, v142);
          v11 = a2;
          v93 = v225;
          if ((v144 & 1) == 0)
          {
            goto LABEL_394;
          }

          goto LABEL_158;
        }

LABEL_157:
        v245 = v251;
        v247 = v252;
        v243 = v249;
        v244 = v250;
        v242 = v248;
        v246 = *(&v251 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v92 = v31;
        sub_1001915E8(&v242, v241);
        v93 = v92;
        goto LABEL_158;
      }

      if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_8;
      }
    }

    if (v248 == __PAIR128__(v29, v30) || (v46 = a1[2], v47 = sub_1004A6D34(), v31 = v46, v15 = v240, v12 = a2 + 56, (v47 & 1) != 0))
    {
      if (v23 == v31 && v22 == v32)
      {
        return 1;
      }

      goto LABEL_7;
    }

LABEL_8:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v34)
  {
    if ((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0))
    {
      goto LABEL_8;
    }

    v39 = *(&v248 + 1) >> 62;
    v237 = a1[3];
    if (*(&v248 + 1) >> 62 == 3)
    {
      v40 = 0;
      if (v248 == __PAIR128__(0xC000000000000000, 0) && v29 >> 62 == 3)
      {
        v40 = 0;
        if (!v30 && v29 == 0xC000000000000000)
        {
          goto LABEL_195;
        }
      }
    }

    else if (v39 > 1)
    {
      if (v39 == 2)
      {
        v56 = *(v248 + 16);
        v55 = *(v248 + 24);
        v50 = __OFSUB__(v55, v56);
        v40 = v55 - v56;
        if (v50)
        {
          goto LABEL_422;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else if (v39)
    {
      LODWORD(v40) = DWORD1(v248) - v248;
      if (__OFSUB__(DWORD1(v248), v248))
      {
        goto LABEL_421;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE14(v248);
    }

    v110 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v110 != 2)
      {
        if (v40)
        {
          goto LABEL_8;
        }

        goto LABEL_195;
      }

      v113 = *(v30 + 16);
      v112 = *(v30 + 24);
      v50 = __OFSUB__(v112, v113);
      v111 = v112 - v113;
      if (v50)
      {
        goto LABEL_409;
      }
    }

    else if (v110)
    {
      LODWORD(v111) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_410;
      }

      v111 = v111;
    }

    else
    {
      v111 = BYTE6(v29);
    }

    if (v40 != v111)
    {
      goto LABEL_8;
    }

    if (v40 >= 1)
    {
      v226 = a1[2];
      if (v39 <= 1)
      {
        if (!v39)
        {
          *v241 = v248;
          *&v241[8] = DWORD2(v248);
          *&v241[12] = WORD6(v248);
          v114 = v29;
          v115 = v30;
          sub_10019782C(&v248, &v242);
          sub_100014CEC(v115, v114);
          sub_100066884(v241, v115, v114, &v242);
          v116 = v115;
          v117 = v114;
          goto LABEL_278;
        }

        v231 = *a1;
        v234 = a1[1];
        v157 = v248;
        if (v248 >> 32 < v248)
        {
          goto LABEL_436;
        }

        sub_10019782C(&v248, &v242);
        sub_100014CEC(v231, v234);
        v158 = sub_1004A40D4();
        if (v158)
        {
          v159 = sub_1004A4104();
          if (__OFSUB__(v157, v159))
          {
            goto LABEL_440;
          }

          v158 += v157 - v159;
        }

        sub_1004A40F4();
        v160 = v158;
        v162 = v231;
        v161 = v234;
LABEL_277:
        sub_100066884(v160, v162, v161, &v242);
        v116 = v162;
        v117 = v161;
LABEL_278:
        sub_100014D40(v116, v117);
        v11 = a2;
        v119 = v226;
        if ((v242 & 1) == 0)
        {
          goto LABEL_394;
        }

        goto LABEL_196;
      }

      if (v39 != 2)
      {
        *&v241[6] = 0;
        *v241 = 0;
        v161 = v29;
        v162 = v30;
        sub_10019782C(&v248, &v242);
        sub_100014CEC(v162, v161);
        v160 = v241;
        goto LABEL_277;
      }

      v126 = *(v248 + 16);
      v127 = *(v248 + 24);
      v128 = a1[1];
      v129 = *a1;
      sub_100014CEC(v30, v29);
      sub_10019782C(&v248, &v242);
      sub_100014CEC(v129, v128);
      LOBYTE(v126) = sub_10003A0DC(v126, v127, v21 & 0x3FFFFFFFFFFFFFFFLL, v129, v128);
      sub_100014D40(v129, v128);
      sub_100014D40(v129, v128);
      v11 = a2;
      v119 = v226;
      if ((v126 & 1) == 0)
      {
        goto LABEL_394;
      }

LABEL_196:
      v120 = v22 >> 62;
      if (v22 >> 62 == 3)
      {
        v121 = 0;
        if (!v23 && v22 == 0xC000000000000000 && v237 >> 62 == 3)
        {
          v121 = 0;
          if (!v119 && v237 == 0xC000000000000000)
          {
LABEL_402:
            sub_100193BF0(&v248);
            return 1;
          }
        }
      }

      else if (v120 > 1)
      {
        if (v120 == 2)
        {
          v125 = *(v23 + 16);
          v124 = *(v23 + 24);
          v50 = __OFSUB__(v124, v125);
          v121 = v124 - v125;
          if (v50)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v121 = 0;
        }
      }

      else if (v120)
      {
        LODWORD(v121) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_435;
        }

        v121 = v121;
      }

      else
      {
        v121 = BYTE6(v22);
      }

      v147 = v237 >> 62;
      if ((v237 >> 62) > 1)
      {
        if (v147 != 2)
        {
          if (!v121)
          {
            goto LABEL_402;
          }

LABEL_394:
          sub_100193BF0(&v248);
          v15 = v240;
          v12 = a2 + 56;
          goto LABEL_8;
        }

        v150 = *(v119 + 16);
        v149 = *(v119 + 24);
        v50 = __OFSUB__(v149, v150);
        v148 = v149 - v150;
        if (v50)
        {
          goto LABEL_425;
        }
      }

      else if (v147)
      {
        LODWORD(v148) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          goto LABEL_424;
        }

        v148 = v148;
      }

      else
      {
        v148 = BYTE6(v237);
      }

      if (v121 != v148)
      {
        goto LABEL_394;
      }

      if (v121 < 1)
      {
        goto LABEL_402;
      }

      if (v120 > 1)
      {
        if (v120 == 2)
        {
          v155 = *(v23 + 16);
          v156 = *(v23 + 24);
          goto LABEL_281;
        }

        *(&v242 + 6) = 0;
        *&v242 = 0;
        v152 = v237;
        v151 = v119;
        sub_100014CEC(v119, v237);
        sub_100014CEC(v151, v237);
        v153 = v151;
        v154 = v237;
      }

      else
      {
        if (v120)
        {
          v155 = v23;
          v156 = v23 >> 32;
          if (v23 >> 32 < v23)
          {
            goto LABEL_439;
          }

LABEL_281:
          v163 = v119;
          sub_100014CEC(v119, v237);
          sub_100014CEC(v163, v237);
          sub_100014CEC(v163, v237);
          v122 = sub_10003A0DC(v155, v156, v22 & 0x3FFFFFFFFFFFFFFFLL, v163, v237);
          sub_100014D40(v163, v237);
          sub_100193BF0(&v248);
          sub_100014D40(v163, v237);
          sub_100014D40(v163, v237);
LABEL_282:
          v11 = a2;
LABEL_283:
          v15 = v240;
          v12 = a2 + 56;
          if (v122)
          {
            return 1;
          }

          goto LABEL_8;
        }

        *&v242 = v23;
        WORD4(v242) = v22;
        BYTE10(v242) = BYTE2(v22);
        BYTE11(v242) = BYTE3(v22);
        BYTE12(v242) = BYTE4(v22);
        BYTE13(v242) = BYTE5(v22);
        v151 = v119;
        sub_100014CEC(v119, v237);
        sub_100014CEC(v151, v237);
        v152 = v237;
        v153 = v151;
        v154 = v237;
      }

      sub_100066884(&v242, v153, v154, v241);
      sub_100193BF0(&v248);
      sub_100014D40(v151, v152);
      sub_100014D40(v151, v152);
      v123 = v241[0];
LABEL_287:
      v11 = a2;
      v15 = v240;
      v12 = a2 + 56;
      if (v123)
      {
        return 1;
      }

      goto LABEL_8;
    }

LABEL_195:
    v245 = v251;
    v247 = v252;
    v243 = v249;
    v244 = v250;
    v242 = v248;
    v246 = *(&v251 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v118 = v31;
    sub_1001915E8(&v242, v241);
    v119 = v118;
    goto LABEL_196;
  }

  if (v34 != 1)
  {
    if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 2)
    {
      goto LABEL_8;
    }

    v41 = *(&v248 + 1) >> 62;
    if (*(&v248 + 1) >> 62 == 3)
    {
      v42 = 0;
      if (v248 == __PAIR128__(0xC000000000000000, 0) && v29 >> 62 == 3)
      {
        v42 = 0;
        if (!v30 && v29 == 0xC000000000000000)
        {
          return 1;
        }
      }
    }

    else if (v41 > 1)
    {
      if (v41 == 2)
      {
        v52 = *(v248 + 16);
        v51 = *(v248 + 24);
        v50 = __OFSUB__(v51, v52);
        v42 = v51 - v52;
        if (v50)
        {
          goto LABEL_412;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v41)
    {
      LODWORD(v42) = DWORD1(v248) - v248;
      if (__OFSUB__(DWORD1(v248), v248))
      {
        goto LABEL_414;
      }

      v42 = v42;
    }

    else
    {
      v42 = BYTE14(v248);
    }

    v73 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v73 != 2)
      {
        if (!v42)
        {
          return 1;
        }

        goto LABEL_8;
      }

      v76 = *(v30 + 16);
      v75 = *(v30 + 24);
      v50 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v50)
      {
        goto LABEL_404;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v29);
    }

    if (v42 != v74)
    {
      goto LABEL_8;
    }

    if (v42 < 1)
    {
      return 1;
    }

    if (v41 > 1)
    {
      v81 = *a1;
      v82 = a1[1];
      if (v41 == 2)
      {
        v83 = *(v248 + 16);
        v84 = *(v248 + 24);
LABEL_208:
        sub_10019782C(a1, &v242);
        sub_10019782C(a1, &v242);
        sub_10019782C(&v248, &v242);
        sub_10019782C(a1, &v242);
        v122 = sub_10003A0DC(v83, v84, v21 & 0x3FFFFFFFFFFFFFFFLL, v81, v82);
        sub_100193BF0(a1);
        sub_100193BF0(&v248);
        sub_100193BF0(a1);
        sub_100193BF0(a1);
        goto LABEL_282;
      }

      *&v241[6] = 0;
      *v241 = 0;
      sub_10019782C(a1, &v242);
      sub_10019782C(&v248, &v242);
      sub_10019782C(a1, &v242);
      v79 = v81;
      v80 = v82;
    }

    else
    {
      if (v41)
      {
        v83 = v248;
        v84 = v248 >> 32;
        if (v248 >> 32 < v248)
        {
          goto LABEL_423;
        }

        v81 = *a1;
        v82 = a1[1];
        goto LABEL_208;
      }

      *v241 = v248;
      *&v241[8] = DWORD2(v248);
      *&v241[12] = WORD6(v248);
      v77 = v29;
      v78 = v30;
      sub_10019782C(a1, &v242);
      sub_10019782C(&v248, &v242);
      sub_10019782C(a1, &v242);
      v79 = v78;
      v80 = v77;
    }

    sub_100066884(v241, v79, v80, &v242);
    sub_100193BF0(&v248);
    sub_100193BF0(a1);
    sub_100193BF0(a1);
    v123 = v242;
    goto LABEL_287;
  }

  if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 1)
  {
    goto LABEL_8;
  }

  v229 = *(&v250 + 1);
  v230 = v250;
  v222 = v252;
  v223 = v251;
  v227 = a1[4];
  v228 = a1[5];
  v35 = *(&v248 + 1) >> 62;
  v221 = a1[8];
  v236 = a1[3];
  if (*(&v248 + 1) >> 62 == 3)
  {
    v36 = 0;
    if (v248 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_94;
    }

    if (v29 >> 62 != 3)
    {
      goto LABEL_94;
    }

    v36 = 0;
    if (v30 || v29 != 0xC000000000000000)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v49 = *(v248 + 16);
      v48 = *(v248 + 24);
      v50 = __OFSUB__(v48, v49);
      v36 = v48 - v49;
      if (v50)
      {
        goto LABEL_415;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v35)
  {
    LODWORD(v36) = DWORD1(v248) - v248;
    if (__OFSUB__(DWORD1(v248), v248))
    {
      goto LABEL_416;
    }

    v36 = v36;
  }

  else
  {
    v36 = BYTE14(v248);
  }

LABEL_94:
  v57 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v57 != 2)
    {
      if (v36)
      {
        goto LABEL_8;
      }

      goto LABEL_109;
    }

    v60 = *(v30 + 16);
    v59 = *(v30 + 24);
    v50 = __OFSUB__(v59, v60);
    v58 = v59 - v60;
    if (v50)
    {
      goto LABEL_408;
    }
  }

  else if (v57)
  {
    LODWORD(v58) = HIDWORD(v30) - v30;
    if (__OFSUB__(HIDWORD(v30), v30))
    {
      goto LABEL_406;
    }

    v58 = v58;
  }

  else
  {
    v58 = BYTE6(v29);
  }

  if (v36 != v58)
  {
    goto LABEL_8;
  }

  if (v36 < 1)
  {
LABEL_109:
    v217 = a1[6];
    v245 = v251;
    v247 = v252;
    v243 = v249;
    v244 = v250;
    v242 = v248;
    v246 = *(&v251 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v65 = v31;
    v66 = v33;
    v233 = *(&v252 + 1);
    sub_1001915E8(&v242, v241);
    v67 = v233;
    v68 = v66;
    v69 = v65;
    goto LABEL_110;
  }

  v224 = a1[2];
  v217 = a1[6];
  v218 = a1[9];
  v232 = *(&v252 + 1);
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *&v241[6] = 0;
      *v241 = 0;
      v140 = v29;
      v141 = v30;
      sub_100014CEC(v30, v29);
      sub_10019782C(&v248, &v242);
      sub_100014CEC(v141, v140);
      sub_100066884(v241, v141, v140, &v242);
      sub_100014D40(v141, v140);
      v63 = v141;
      v64 = v140;
      goto LABEL_242;
    }

    v212 = *(v248 + 24);
    v214 = *(v248 + 16);
    v100 = a1[1];
    v101 = *a1;
    sub_100014CEC(v30, v29);
    sub_100014CEC(v101, v100);
    sub_10019782C(&v248, &v242);
    sub_100014CEC(v101, v100);
    v102 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v104 = v212;
    v103 = v214;
    v105 = v101;
    v106 = v100;
    v107 = v100;
    goto LABEL_239;
  }

  if (v35)
  {
    v213 = v248;
    v215 = v248 >> 32;
    if (v248 >> 32 < v248)
    {
      goto LABEL_430;
    }

    v139 = a1[1];
    v101 = *a1;
    sub_100014CEC(v30, v29);
    sub_100014CEC(v101, v139);
    sub_10019782C(&v248, &v242);
    sub_100014CEC(v101, v139);
    v102 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v103 = v213;
    v104 = v215;
    v105 = v101;
    v107 = v139;
    v106 = v139;
LABEL_239:
    v216 = sub_10003A0DC(v103, v104, v102, v105, v106);
    sub_100014D40(v101, v107);
    sub_100014D40(v101, v107);
    sub_100014D40(v101, v107);
    v11 = a2;
    v69 = v224;
    v68 = v218;
    v67 = v232;
    if ((v216 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_110;
  }

  *v241 = v248;
  *&v241[8] = DWORD2(v248);
  *&v241[12] = WORD6(v248);
  v61 = v29;
  v62 = v30;
  sub_100014CEC(v30, v29);
  sub_10019782C(&v248, &v242);
  sub_100014CEC(v62, v61);
  sub_100066884(v241, v62, v61, &v242);
  sub_100014D40(v62, v61);
  v63 = v62;
  v64 = v61;
LABEL_242:
  sub_100014D40(v63, v64);
  v11 = a2;
  v69 = v224;
  v68 = v218;
  v67 = v232;
  if ((v242 & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_110:
  v70 = v22 >> 62;
  if (v22 >> 62 != 3)
  {
    if (v70 > 1)
    {
      v72 = v236;
      if (v70 == 2)
      {
        v99 = *(v23 + 16);
        v98 = *(v23 + 24);
        v50 = __OFSUB__(v98, v99);
        v71 = v98 - v99;
        if (v50)
        {
          goto LABEL_428;
        }
      }

      else
      {
        v71 = 0;
      }
    }

    else
    {
      v72 = v236;
      if (v70)
      {
        LODWORD(v71) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_429;
        }

        v71 = v71;
      }

      else
      {
        v71 = BYTE6(v22);
      }
    }

    goto LABEL_290;
  }

  v71 = 0;
  if (v23)
  {
    v72 = v236;
    goto LABEL_290;
  }

  v72 = v236;
  if (v22 == 0xC000000000000000 && v236 >> 62 == 3)
  {
    v71 = 0;
    if (!v69 && v236 == 0xC000000000000000)
    {
      goto LABEL_313;
    }
  }

LABEL_290:
  v164 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v164 == 2)
    {
      v167 = *(v69 + 16);
      v166 = *(v69 + 24);
      v50 = __OFSUB__(v166, v167);
      v165 = v166 - v167;
      if (v50)
      {
        goto LABEL_420;
      }

      goto LABEL_299;
    }

    if (v71)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  if (v164)
  {
    LODWORD(v165) = HIDWORD(v69) - v69;
    if (__OFSUB__(HIDWORD(v69), v69))
    {
      goto LABEL_419;
    }

    v165 = v165;
  }

  else
  {
    v165 = BYTE6(v72);
  }

LABEL_299:
  if (v71 != v165)
  {
    goto LABEL_394;
  }

  if (v71 < 1)
  {
    goto LABEL_313;
  }

  v219 = v68;
  v235 = v67;
  if (v70 > 1)
  {
    if (v70 != 2)
    {
      *(&v242 + 6) = 0;
      *&v242 = 0;
      v176 = v69;
      sub_100014CEC(v69, v72);
      sub_100014CEC(v176, v72);
      sub_100066884(&v242, v176, v72, v241);
      sub_100014D40(v176, v72);
      v170 = v176;
      v171 = v72;
      goto LABEL_312;
    }

    v168 = v72;
    v172 = *(v23 + 16);
    v173 = *(v23 + 24);
    goto LABEL_309;
  }

  v168 = v72;
  if (v70)
  {
    v172 = v23;
    v173 = v23 >> 32;
    if (v23 >> 32 < v23)
    {
      goto LABEL_441;
    }

LABEL_309:
    v174 = v69;
    sub_100014CEC(v69, v168);
    sub_100014CEC(v174, v168);
    sub_100014CEC(v174, v168);
    v175 = sub_10003A0DC(v172, v173, v22 & 0x3FFFFFFFFFFFFFFFLL, v174, v168);
    sub_100014D40(v174, v168);
    sub_100014D40(v174, v168);
    sub_100014D40(v174, v168);
    v11 = a2;
    v68 = v219;
    v67 = v235;
    if ((v175 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  *&v242 = v23;
  WORD4(v242) = v22;
  BYTE10(v242) = BYTE2(v22);
  BYTE11(v242) = BYTE3(v22);
  BYTE12(v242) = BYTE4(v22);
  BYTE13(v242) = BYTE5(v22);
  v169 = v69;
  sub_100014CEC(v69, v72);
  sub_100014CEC(v169, v72);
  sub_100066884(&v242, v169, v72, v241);
  sub_100014D40(v169, v72);
  v170 = v169;
  v171 = v72;
LABEL_312:
  sub_100014D40(v170, v171);
  v11 = a2;
  v68 = v219;
  v67 = v235;
  if ((v241[0] & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_313:
  v177 = v229 >> 62;
  v178 = v228 >> 62;
  if (v229 >> 62 == 3)
  {
    v179 = 0;
    v180 = v230;
    if (v230)
    {
      goto LABEL_328;
    }

    if (v229 != 0xC000000000000000)
    {
      goto LABEL_328;
    }

    if (v228 >> 62 != 3)
    {
      goto LABEL_328;
    }

    v179 = 0;
    if (v227 || v228 != 0xC000000000000000)
    {
      goto LABEL_328;
    }
  }

  else
  {
    v180 = v230;
    if (v177 == 2)
    {
      v182 = *(v230 + 16);
      v181 = *(v230 + 24);
      v50 = __OFSUB__(v181, v182);
      v179 = v181 - v182;
      if (v50)
      {
        goto LABEL_438;
      }
    }

    else if (v177 == 1)
    {
      LODWORD(v179) = HIDWORD(v230) - v230;
      if (__OFSUB__(HIDWORD(v230), v230))
      {
        goto LABEL_437;
      }

      v179 = v179;
    }

    else
    {
      v179 = BYTE6(v229);
    }

LABEL_328:
    if (v178 > 1)
    {
      if (v178 != 2)
      {
        if (v179)
        {
          goto LABEL_394;
        }

        goto LABEL_342;
      }

      v185 = *(v227 + 16);
      v184 = *(v227 + 24);
      v50 = __OFSUB__(v184, v185);
      v183 = v184 - v185;
      if (v50)
      {
        goto LABEL_432;
      }
    }

    else if (v178)
    {
      LODWORD(v183) = HIDWORD(v227) - v227;
      if (__OFSUB__(HIDWORD(v227), v227))
      {
        goto LABEL_433;
      }

      v183 = v183;
    }

    else
    {
      v183 = BYTE6(v228);
    }

    if (v179 != v183)
    {
      goto LABEL_394;
    }

    if (v179 >= 1)
    {
      v220 = v68;
      v186 = v67;
      sub_100014CEC(v227, v228);
      v187 = sub_100039F4C(v180, v229, v227, v228);
      v67 = v186;
      v68 = v220;
      v11 = a2;
      if ((v187 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_342:
  v188 = v24 & 0xCFFFFFFFFFFFFFFFLL;
  v189 = v28 & 0xCFFFFFFFFFFFFFFFLL;
  v190 = v24 >> 62;
  v191 = v28 >> 62;
  if (v24 >> 62 == 3)
  {
    v192 = 0;
    v193 = v223;
    if (v223)
    {
      goto LABEL_357;
    }

    if (v188 != 0xC000000000000000)
    {
      goto LABEL_357;
    }

    if (v28 >> 62 != 3)
    {
      goto LABEL_357;
    }

    v192 = 0;
    if (v217 || v189 != 0xC000000000000000)
    {
      goto LABEL_357;
    }
  }

  else
  {
    v193 = v223;
    if (v190 == 2)
    {
      v195 = *(v223 + 16);
      v194 = *(v223 + 24);
      v50 = __OFSUB__(v194, v195);
      v192 = v194 - v195;
      if (v50)
      {
        goto LABEL_445;
      }
    }

    else if (v190 == 1)
    {
      LODWORD(v192) = HIDWORD(v223) - v223;
      if (__OFSUB__(HIDWORD(v223), v223))
      {
        goto LABEL_444;
      }

      v192 = v192;
    }

    else
    {
      v192 = BYTE6(v24);
    }

LABEL_357:
    if (v191 > 1)
    {
      if (v191 != 2)
      {
        if (v192)
        {
          goto LABEL_394;
        }

        goto LABEL_371;
      }

      v198 = *(v217 + 16);
      v197 = *(v217 + 24);
      v50 = __OFSUB__(v197, v198);
      v196 = v197 - v198;
      if (v50)
      {
        goto LABEL_442;
      }
    }

    else if (v191)
    {
      LODWORD(v196) = HIDWORD(v217) - v217;
      if (__OFSUB__(HIDWORD(v217), v217))
      {
        goto LABEL_443;
      }

      v196 = v196;
    }

    else
    {
      v196 = BYTE6(v28);
    }

    if (v192 != v196)
    {
      goto LABEL_394;
    }

    if (v192 >= 1)
    {
      v199 = v28 & 0xCFFFFFFFFFFFFFFFLL;
      v200 = v68;
      v201 = v67;
      sub_100014CEC(v217, v199);
      v202 = sub_100039F4C(v193, v188, v217, v189);
      v67 = v201;
      v68 = v200;
      v11 = a2;
      if ((v202 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_371:
  v203 = v67 & 0xCFFFFFFFFFFFFFFFLL;
  v135 = v68 & 0xCFFFFFFFFFFFFFFFLL;
  v204 = v67 >> 62;
  v205 = v68 >> 62;
  if (v67 >> 62 == 3)
  {
    v96 = 0;
    if (!v222 && v203 == 0xC000000000000000 && v68 >> 62 == 3)
    {
      v96 = 0;
      if (!v221 && v135 == 0xC000000000000000)
      {
        goto LABEL_402;
      }
    }
  }

  else if (v204 == 2)
  {
    v207 = *(v222 + 16);
    v206 = *(v222 + 24);
    v50 = __OFSUB__(v206, v207);
    v96 = v206 - v207;
    if (v50)
    {
      goto LABEL_448;
    }
  }

  else if (v204 == 1)
  {
    LODWORD(v96) = HIDWORD(v222) - v222;
    if (__OFSUB__(HIDWORD(v222), v222))
    {
      goto LABEL_447;
    }

    v96 = v96;
  }

  else
  {
    v96 = BYTE6(v67);
  }

  if (v205 <= 1)
  {
    if (v205)
    {
      LODWORD(v208) = HIDWORD(v221) - v221;
      if (__OFSUB__(HIDWORD(v221), v221))
      {
        goto LABEL_446;
      }

      v208 = v208;
    }

    else
    {
      v208 = BYTE6(v68);
    }

    goto LABEL_397;
  }

  if (v205 != 2)
  {
LABEL_393:
    if (!v96)
    {
      goto LABEL_402;
    }

    goto LABEL_394;
  }

  v210 = *(v221 + 16);
  v209 = *(v221 + 24);
  v50 = __OFSUB__(v209, v210);
  v208 = v209 - v210;
  if (!v50)
  {
LABEL_397:
    if (v96 != v208)
    {
      goto LABEL_394;
    }

    if (v96 < 1)
    {
      goto LABEL_402;
    }

    v136 = v221;
    sub_100014CEC(v221, v68 & 0xCFFFFFFFFFFFFFFFLL);
    v137 = v222;
    v138 = v203;
LABEL_233:
    v122 = sub_100039F4C(v137, v138, v136, v135);
    v11 = a2;
    sub_100193BF0(&v248);
    goto LABEL_283;
  }

  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
  sub_100193BF0(a1);
  sub_100193BF0(a1);
  v245 = v264;
  v247 = v265;
  v243 = v262;
  v244 = v263;
  v242 = v261;
  v246 = *(&v264 + 1) & 0xEFFFFFFFFFFFFFFFLL;
  sub_1001B4100(&v242);

  __break(1u);
  return result;
}

uint64_t CommandCounter.withNext<A>(_:)(uint64_t (*a1)(void))
{
  v3 = *v1;
  *v1 = (*v1 + 1) & 0xFFFFFF;
  result = a1();
  if (v2)
  {
    *v1 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001AFA54(char a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1001FB7F8(v5, a2);
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v9 = sub_1001EC78C(*(v6 + 16), 0);
  v10 = sub_1001390AC(&v34, v9 + 8, v8, v7);
  v11 = v34;

  sub_100020D08(v11);
  if (v10 == v8)
  {
LABEL_5:
    v34 = v9;
    sub_1001B2DE0(&v34);

    v12 = v34;
    v13 = *(v34 + 2);
    if (v13)
    {
      v34 = _swiftEmptyArrayStorage;
      sub_1001D602C(0, v13, 0);
      v14 = v34;
      v15 = *(v34 + 2);
      v16 = 8 * v15;
      v17 = 32;
      do
      {
        v18 = *&v12[v17];
        v34 = v14;
        v19 = *(v14 + 3);
        v20 = v15 + 1;
        if (v15 >= v19 >> 1)
        {
          sub_1001D602C((v19 > 1), v15 + 1, 1);
          v14 = v34;
        }

        *(v14 + 2) = v20;
        v21 = &v14[v16];
        v21[32] = a1;
        *(v21 + 9) = v18;
        v16 += 8;
        v17 += 4;
        v15 = v20;
        --v13;
      }

      while (v13);

      v22 = *(v14 + 2);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
      v22 = _swiftEmptyArrayStorage[2];
      if (v22)
      {
LABEL_11:
        v34 = _swiftEmptyArrayStorage;
        sub_100091A08(0, v22, 0);
        v23 = v34;
        v24 = (v14 + 36);
        do
        {
          v25 = Tag.debugDescription.getter(*(v24 - 4) | (*v24 << 32));
          v34 = v23;
          v28 = *(v23 + 2);
          v27 = *(v23 + 3);
          if (v28 >= v27 >> 1)
          {
            v30 = v25;
            v31 = v26;
            sub_100091A08((v27 > 1), v28 + 1, 1);
            v26 = v31;
            v25 = v30;
            v23 = v34;
          }

          v24 += 2;
          *(v23 + 2) = v28 + 1;
          v29 = &v23[16 * v28];
          *(v29 + 4) = v25;
          *(v29 + 5) = v26;
          --v22;
        }

        while (v22);

        goto LABEL_18;
      }
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_18:
    v34 = v23;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v32 = sub_1004A5614();

    return v32;
  }

  __break(1u);

  __break(1u);
  return result;
}

void CommandID.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  sub_1004A6EE4(a2);
  sub_1004A6EE4(v2);
}

Swift::Int CommandID.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_1001AFE00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EE4(v1);
  sub_1004A6EE4(v2);
  return sub_1004A6F14();
}

void sub_1001AFE5C()
{
  v1 = v0[1];
  sub_1004A6EE4(*v0);
  sub_1004A6EE4(v1);
}

Swift::Int sub_1001AFE98(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  sub_1004A6EE4(v2);
  sub_1004A6EE4(v3);
  return sub_1004A6F14();
}

BOOL sub_1001AFF4C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_1001AFF7C(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_1001AFFAC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_1001AFFDC(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

uint64_t ContentDisposition.attributes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(int a1, Swift::Int a2, Swift::Int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (sub_100083308(a2, a5))
  {
    v8 = sub_100083308(a3, a6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1001B00A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 32 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v33 = v16;
    if (v17 == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EF4(v16 >> 14);
    }

    v18 = sub_1004A6F14();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v24 = v22 + 32 * v20;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *v24 == v15 && *(v24 + 8) == v14;
      if (!v27 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_22;
      }

      if ((v26 & 1) == 0)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_30;
      }

LABEL_22:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (((v25 ^ v33) & 0xFFFFFFFFFFFFC000) != 0)
    {
      v23 = 1;
    }

    else
    {
      v23 = v17;
    }

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_30:

    v4 = v29;
    result = v30;
    v7 = v31;
    v2 = a2;
    v8 = v28;
  }

  while (v31);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B02D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v16 = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v22 = 0xE800000000000000;
        v21 = 0x6574616E6F646572;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6369646F69726570;
        }

        else
        {
          v21 = 1752397168;
        }

        if (v20 == 3)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v23 = 0x6369646F69726570;
      if (v15 != 3)
      {
        v23 = 1752397168;
      }

      v24 = 0xE400000000000000;
      if (v15 == 3)
      {
        v24 = 0xE800000000000000;
      }

      if (v15 == 2)
      {
        v25 = 0x6574616E6F646572;
      }

      else
      {
        v25 = v23;
      }

      if (v15 == 2)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = v24;
      }

      if (v21 == v25)
      {
        goto LABEL_49;
      }

LABEL_50:
      v27 = sub_1004A6D34();

      if (v27)
      {
        goto LABEL_54;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v18))
    {
      v21 = 0x6C69662D6B636162;
    }

    else
    {
      v21 = 0x72657865646E69;
    }

    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xE90000000000006CLL;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v26 = 0xE700000000000000;
      if (v21 == 0x72657865646E69)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v26 = 0xE90000000000006CLL;
    if (v21 != 0x6C69662D6B636162)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v22 != v26)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B067C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v23 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v24 = v7;
  v25 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v26 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(*(result + 48) + 16 * (v9 | (v3 << 6)) + 8);
    sub_1004A6E94();
    if (v12)
    {
      sub_1004A6EB4(0);
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

    v13 = sub_1004A6F14();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v16 = ~v14;
    while (1)
    {
      if (!*(*(a2 + 48) + 16 * v15 + 8))
      {
        if (!v12)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (!v12)
      {
        goto LABEL_19;
      }

      v17 = sub_1004A5834();
      v19 = v18;
      if (v17 == sub_1004A5834() && v19 == v20)
      {
        break;
      }

      v22 = sub_1004A6D34();

      if (v22)
      {
        goto LABEL_29;
      }

LABEL_19:
      v15 = (v15 + 1) & v16;
      if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_29:

LABEL_30:
    v7 = v24;
    result = v25;
    v6 = v26;
  }

  while (v26);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v23 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B08EC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v225 = a2 + 56;
    v221 = a1 + 56;
    v222 = a1;
    v220 = v8;
    if (v7)
    {
LABEL_7:
      v9 = __clz(__rbit64(v7));
      v223 = (v7 - 1) & v7;
      goto LABEL_13;
    }

LABEL_8:
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v223 = (v11 - 1) & v11;
LABEL_13:
    v12 = (*(a1 + 48) + 80 * (v9 | (v3 << 6)));
    v239 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    v242 = v12[3];
    v243 = v13;
    v240 = v15;
    v241 = v14;
    sub_1004A6E94();
    if ((*(&v242 + 1) & 0x1000000000000000) != 0)
    {
      v244 = v239;
      v245 = v240;
      v246 = v241;
      v247 = v242;
      v248 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v249 = v243;
      sub_1004A6EB4(1uLL);
      v236 = v241;
      *&v237 = v242;
      v238 = v243;
      v234 = v239;
      v235 = v240;
      *(&v237 + 1) = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v234, &v228);
      sub_1001EEF30(v227);
    }

    else
    {
      sub_1004A6EB4(0);

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    v16 = sub_1004A6F14();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v225;
    if ((*(v225 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v20 = ~v17;
      v224 = ~v17;
      do
      {
        v21 = (*(v2 + 48) + 80 * v18);
        v234 = *v21;
        v23 = v21[3];
        v22 = v21[4];
        v24 = v21[2];
        v235 = v21[1];
        v236 = v24;
        v237 = v23;
        v238 = v22;
        v25 = *(&v235 + 1);
        v26 = v235;
        v27 = *(&v23 + 1);
        if ((*(&v23 + 1) & 0x1000000000000000) != 0)
        {
          v29 = *(&v242 + 1);
          if ((*(&v242 + 1) & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v30 = *(&v238 + 1);
          v32 = *(&v240 + 1);
          v31 = v240;
          v33 = *(&v243 + 1);
          v34 = (*(&v238 + 1) >> 59) & 6 | ((*(&v237 + 1) & 0x2000000000000000) != 0);
          if (v34 <= 2)
          {
            if (v34)
            {
              if (v34 == 1)
              {
                if (((*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0)) == 1)
                {
                  v213 = *(&v236 + 1);
                  v214 = v236;
                  v207 = v238;
                  v208 = v237;
                  v212 = v241;
                  v35 = *(&v234 + 1) >> 62;
                  if (*(&v234 + 1) >> 62 == 3)
                  {
                    v36 = 0;
                    if (v234 == __PAIR128__(0xC000000000000000, 0) && *(&v239 + 1) >> 62 == 3)
                    {
                      v36 = 0;
                      if (v239 == __PAIR128__(0xC000000000000000, 0))
                      {
                        goto LABEL_119;
                      }
                    }
                  }

                  else if (v35 > 1)
                  {
                    if (v35 == 2)
                    {
                      v49 = *(v234 + 16);
                      v48 = *(v234 + 24);
                      v50 = __OFSUB__(v48, v49);
                      v36 = v48 - v49;
                      if (v50)
                      {
                        goto LABEL_421;
                      }
                    }

                    else
                    {
                      v36 = 0;
                    }
                  }

                  else if (v35)
                  {
                    LODWORD(v36) = DWORD1(v234) - v234;
                    if (__OFSUB__(DWORD1(v234), v234))
                    {
                      goto LABEL_418;
                    }

                    v36 = v36;
                  }

                  else
                  {
                    v36 = BYTE14(v234);
                  }

                  v57 = *(&v239 + 1) >> 62;
                  if ((*(&v239 + 1) >> 62) > 1)
                  {
                    if (v57 == 2)
                    {
                      v59 = *(v239 + 16);
                      v58 = *(v239 + 24);
                      v50 = __OFSUB__(v58, v59);
                      v60 = v58 - v59;
                      if (v50)
                      {
                        goto LABEL_412;
                      }

                      if (v36 == v60)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (!v36)
                    {
                      goto LABEL_119;
                    }
                  }

                  else if (v57)
                  {
                    if (__OFSUB__(DWORD1(v239), v239))
                    {
                      goto LABEL_411;
                    }

                    if (v36 == DWORD1(v239) - v239)
                    {
LABEL_114:
                      if (v36 < 1)
                      {
LABEL_119:
                        v203 = v243;
                        v204 = v242;
                        v231 = v237;
                        v233 = v238;
                        v229 = v235;
                        v230 = v236;
                        v228 = v234;
                        v232 = *(&v237 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                        v216 = *(&v240 + 1);
                        v62 = v240;
                        sub_1001915E8(&v228, v227);
                        v63 = v216;
                        goto LABEL_120;
                      }

                      v215 = *(&v240 + 1);
                      v209 = v240;
                      v205 = v239;
                      v203 = v243;
                      v204 = v242;
                      if (v35 > 1)
                      {
                        if (v35 == 2)
                        {
                          v196 = *(v234 + 24);
                          v198 = *(v234 + 16);
                          v200 = *(&v234 + 1);
                          v94 = v239;
                          sub_100014CEC(v239, *(&v239 + 1));
                          sub_100014CEC(v94, *(&v205 + 1));
                          sub_10019782C(&v234, &v228);
                          sub_100014CEC(v94, *(&v205 + 1));
                          v201 = sub_10003A0DC(v198, v196, v200 & 0x3FFFFFFFFFFFFFFFLL, v205, *(&v205 + 1));
                          sub_100014D40(v205, *(&v205 + 1));
                          v96 = *(&v205 + 1);
                          v95 = v205;
                          goto LABEL_255;
                        }

                        *&v227[6] = 0;
                        *v227 = 0;
                        v61 = v239;
                        sub_100014CEC(v239, *(&v239 + 1));
                        sub_10019782C(&v234, &v228);
                        sub_100014CEC(v61, *(&v205 + 1));
LABEL_258:
                        sub_100066884(v227, v61, *(&v205 + 1), &v228);
                        sub_100014D40(v205, *(&v205 + 1));
                        sub_100014D40(v205, *(&v205 + 1));
                        v63 = v215;
                        v62 = v209;
                        if (v228)
                        {
                          goto LABEL_120;
                        }

LABEL_398:
                        sub_100193BF0(&v234);
                        v2 = a2;
                      }

                      else
                      {
                        if (!v35)
                        {
                          *v227 = v234;
                          *&v227[8] = DWORD2(v234);
                          *&v227[12] = WORD6(v234);
                          v61 = v239;
                          sub_100014CEC(v239, *(&v239 + 1));
                          sub_10019782C(&v234, &v228);
                          sub_100014CEC(v61, *(&v205 + 1));
                          goto LABEL_258;
                        }

                        v199 = v234 >> 32;
                        v202 = *(&v234 + 1);
                        v197 = v234;
                        if (v234 >> 32 < v234)
                        {
                          goto LABEL_437;
                        }

                        v140 = v239;
                        sub_100014CEC(v239, *(&v239 + 1));
                        sub_100014CEC(v140, *(&v205 + 1));
                        sub_10019782C(&v234, &v228);
                        sub_100014CEC(v205, *(&v205 + 1));
                        v201 = sub_10003A0DC(v197, v199, v202 & 0x3FFFFFFFFFFFFFFFLL, v205, *(&v205 + 1));
                        v96 = *(&v205 + 1);
                        sub_100014D40(v205, *(&v205 + 1));
                        v95 = v205;
LABEL_255:
                        sub_100014D40(v95, v96);
                        sub_100014D40(v205, v96);
                        v63 = v215;
                        v62 = v209;
                        if ((v201 & 1) == 0)
                        {
                          goto LABEL_398;
                        }

LABEL_120:
                        v64 = v25 >> 62;
                        if (v25 >> 62 == 3)
                        {
                          v65 = 0;
                          if (v26)
                          {
                            goto LABEL_228;
                          }

                          if (v25 != 0xC000000000000000)
                          {
                            goto LABEL_228;
                          }

                          if (v63 >> 62 != 3)
                          {
                            goto LABEL_228;
                          }

                          v65 = 0;
                          if (v62 || v63 != 0xC000000000000000)
                          {
                            goto LABEL_228;
                          }
                        }

                        else
                        {
                          if (v64 == 2)
                          {
                            v130 = *(v26 + 16);
                            v129 = *(v26 + 24);
                            v50 = __OFSUB__(v129, v130);
                            v65 = v129 - v130;
                            if (v50)
                            {
                              goto LABEL_432;
                            }
                          }

                          else if (v64 == 1)
                          {
                            LODWORD(v65) = HIDWORD(v26) - v26;
                            if (__OFSUB__(HIDWORD(v26), v26))
                            {
                              goto LABEL_433;
                            }

                            v65 = v65;
                          }

                          else
                          {
                            v65 = BYTE6(v25);
                          }

LABEL_228:
                          v133 = v63 >> 62;
                          if ((v63 >> 62) > 1)
                          {
                            if (v133 != 2)
                            {
                              if (v65)
                              {
                                goto LABEL_398;
                              }

                              goto LABEL_242;
                            }

                            v136 = *(v62 + 16);
                            v135 = *(v62 + 24);
                            v50 = __OFSUB__(v135, v136);
                            v134 = v135 - v136;
                            if (v50)
                            {
                              goto LABEL_426;
                            }
                          }

                          else if (v133)
                          {
                            LODWORD(v134) = HIDWORD(v62) - v62;
                            if (__OFSUB__(HIDWORD(v62), v62))
                            {
                              goto LABEL_425;
                            }

                            v134 = v134;
                          }

                          else
                          {
                            v134 = BYTE6(v63);
                          }

                          if (v65 != v134)
                          {
                            goto LABEL_398;
                          }

                          if (v65 >= 1)
                          {
                            v219 = v63;
                            sub_100014CEC(v62, v63);
                            if ((sub_100039F4C(v26, v25, v62, v219) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

LABEL_242:
                        v137 = v213 >> 62;
                        v138 = *(&v212 + 1) >> 62;
                        if (v213 >> 62 == 3)
                        {
                          v139 = 0;
                          if (!v214 && v213 == 0xC000000000000000 && *(&v212 + 1) >> 62 == 3)
                          {
                            v139 = 0;
                            if (v212 == __PAIR128__(0xC000000000000000, 0))
                            {
                              goto LABEL_317;
                            }
                          }
                        }

                        else if (v137 == 2)
                        {
                          v161 = *(v214 + 16);
                          v160 = *(v214 + 24);
                          v50 = __OFSUB__(v160, v161);
                          v139 = v160 - v161;
                          if (v50)
                          {
                            goto LABEL_444;
                          }
                        }

                        else if (v137 == 1)
                        {
                          LODWORD(v139) = HIDWORD(v214) - v214;
                          if (__OFSUB__(HIDWORD(v214), v214))
                          {
                            goto LABEL_443;
                          }

                          v139 = v139;
                        }

                        else
                        {
                          v139 = BYTE6(v213);
                        }

                        if (v138 <= 1)
                        {
                          if (v138)
                          {
                            LODWORD(v162) = DWORD1(v212) - v212;
                            if (__OFSUB__(DWORD1(v212), v212))
                            {
                              goto LABEL_439;
                            }

                            v162 = v162;
                          }

                          else
                          {
                            v162 = BYTE14(v212);
                          }

                          goto LABEL_312;
                        }

                        if (v138 == 2)
                        {
                          v164 = *(v212 + 16);
                          v163 = *(v212 + 24);
                          v50 = __OFSUB__(v163, v164);
                          v162 = v163 - v164;
                          if (v50)
                          {
                            goto LABEL_438;
                          }

LABEL_312:
                          if (v139 != v162)
                          {
                            goto LABEL_398;
                          }

                          if (v139 >= 1)
                          {
                            sub_100014CEC(v212, *(&v212 + 1));
                            if ((sub_100039F4C(v214, v213, v212, *(&v212 + 1)) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

                        else if (v139)
                        {
                          goto LABEL_398;
                        }

LABEL_317:
                        v165 = v27 & 0xCFFFFFFFFFFFFFFFLL;
                        v166 = v29 & 0xCFFFFFFFFFFFFFFFLL;
                        v167 = v27 >> 62;
                        v168 = v29 >> 62;
                        if (v27 >> 62 == 3)
                        {
                          v169 = 0;
                          v170 = v208;
                          if (v208)
                          {
                            goto LABEL_355;
                          }

                          if (v165 != 0xC000000000000000)
                          {
                            goto LABEL_355;
                          }

                          if (v29 >> 62 != 3)
                          {
                            goto LABEL_355;
                          }

                          v169 = 0;
                          if (v204 || v166 != 0xC000000000000000)
                          {
                            goto LABEL_355;
                          }
                        }

                        else
                        {
                          if (v167 == 2)
                          {
                            v170 = v208;
                            v178 = *(v208 + 16);
                            v177 = *(v208 + 24);
                            v50 = __OFSUB__(v177, v178);
                            v169 = v177 - v178;
                            if (v50)
                            {
                              goto LABEL_450;
                            }
                          }

                          else if (v167 == 1)
                          {
                            v170 = v208;
                            LODWORD(v169) = HIDWORD(v208) - v208;
                            if (__OFSUB__(HIDWORD(v208), v208))
                            {
                              __break(1u);
LABEL_450:
                              __break(1u);
LABEL_451:
                              __break(1u);
LABEL_452:
                              __break(1u);
LABEL_453:
                              __break(1u);
LABEL_454:
                              __break(1u);
                              sub_100193BF0(&v239);
                              sub_100193BF0(&v239);
                              v231 = v242;
                              v233 = v243;
                              v229 = v240;
                              v230 = v241;
                              v228 = v239;
                              v232 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                              sub_1001B4100(&v228);

                              __break(1u);
                              return result;
                            }

                            v169 = v169;
                          }

                          else
                          {
                            v169 = BYTE6(v27);
                            v170 = v208;
                          }

LABEL_355:
                          if (v168 > 1)
                          {
                            if (v168 != 2)
                            {
                              if (v169)
                              {
                                goto LABEL_398;
                              }

                              goto LABEL_369;
                            }

                            v181 = *(v204 + 16);
                            v180 = *(v204 + 24);
                            v50 = __OFSUB__(v180, v181);
                            v179 = v180 - v181;
                            if (v50)
                            {
                              goto LABEL_447;
                            }
                          }

                          else if (v168)
                          {
                            LODWORD(v179) = HIDWORD(v204) - v204;
                            if (__OFSUB__(HIDWORD(v204), v204))
                            {
                              goto LABEL_448;
                            }

                            v179 = v179;
                          }

                          else
                          {
                            v179 = BYTE6(v29);
                          }

                          if (v169 != v179)
                          {
                            goto LABEL_398;
                          }

                          if (v169 >= 1)
                          {
                            sub_100014CEC(v204, v29 & 0xCFFFFFFFFFFFFFFFLL);
                            if ((sub_100039F4C(v170, v165, v204, v166) & 1) == 0)
                            {
                              goto LABEL_398;
                            }
                          }
                        }

LABEL_369:
                        v182 = v30 & 0xCFFFFFFFFFFFFFFFLL;
                        v183 = v33 & 0xCFFFFFFFFFFFFFFFLL;
                        v184 = v30 >> 62;
                        v185 = v33 >> 62;
                        if (v30 >> 62 == 3)
                        {
                          v186 = 0;
                          v187 = v207;
                          if (!v207 && v182 == 0xC000000000000000 && v33 >> 62 == 3)
                          {
                            v186 = 0;
                            if (!v203 && v183 == 0xC000000000000000)
                            {
LABEL_404:
                              sub_100193BF0(&v239);
                              sub_100193BF0(&v234);
                              a1 = v222;
                              v2 = a2;
                              goto LABEL_401;
                            }
                          }
                        }

                        else if (v184 == 2)
                        {
                          v187 = v207;
                          v189 = *(v207 + 16);
                          v188 = *(v207 + 24);
                          v50 = __OFSUB__(v188, v189);
                          v186 = v188 - v189;
                          if (v50)
                          {
                            goto LABEL_454;
                          }
                        }

                        else if (v184 == 1)
                        {
                          v187 = v207;
                          LODWORD(v186) = HIDWORD(v207) - v207;
                          if (__OFSUB__(HIDWORD(v207), v207))
                          {
                            goto LABEL_453;
                          }

                          v186 = v186;
                        }

                        else
                        {
                          v186 = BYTE6(v30);
                          v187 = v207;
                        }

                        if (v185 > 1)
                        {
                          if (v185 != 2)
                          {
                            if (!v186)
                            {
                              goto LABEL_404;
                            }

                            goto LABEL_398;
                          }

                          v192 = *(v203 + 16);
                          v191 = *(v203 + 24);
                          v50 = __OFSUB__(v191, v192);
                          v190 = v191 - v192;
                          if (v50)
                          {
                            goto LABEL_451;
                          }
                        }

                        else if (v185)
                        {
                          LODWORD(v190) = HIDWORD(v203) - v203;
                          if (__OFSUB__(HIDWORD(v203), v203))
                          {
                            goto LABEL_452;
                          }

                          v190 = v190;
                        }

                        else
                        {
                          v190 = BYTE6(v33);
                        }

                        if (v186 != v190)
                        {
                          goto LABEL_398;
                        }

                        if (v186 < 1)
                        {
                          goto LABEL_404;
                        }

                        sub_100014CEC(v203, v33 & 0xCFFFFFFFFFFFFFFFLL);
                        v193 = sub_100039F4C(v187, v182, v203, v183);
                        sub_100193BF0(&v234);
                        v2 = a2;
                        if (v193)
                        {
LABEL_399:
                          v194 = &v239;
                          goto LABEL_400;
                        }
                      }

LABEL_27:
                      v19 = v225;
LABEL_47:
                      v20 = v224;
                      goto LABEL_20;
                    }
                  }

                  else if (v36 == BYTE14(v239))
                  {
                    goto LABEL_114;
                  }
                }

LABEL_19:
                v2 = a2;
                goto LABEL_20;
              }

              if (((*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0)) != 2)
              {
                goto LABEL_19;
              }

              v39 = *(&v234 + 1) >> 62;
              v2 = a2;
              if (*(&v234 + 1) >> 62 == 3)
              {
                v40 = 0;
                if (v234 == __PAIR128__(0xC000000000000000, 0) && *(&v239 + 1) >> 62 == 3)
                {
                  v40 = 0;
                  if (v239 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_399;
                  }
                }
              }

              else if (v39 > 1)
              {
                if (v39 == 2)
                {
                  v52 = *(v234 + 16);
                  v51 = *(v234 + 24);
                  v50 = __OFSUB__(v51, v52);
                  v40 = v51 - v52;
                  if (v50)
                  {
                    goto LABEL_422;
                  }
                }

                else
                {
                  v40 = 0;
                }
              }

              else if (v39)
              {
                LODWORD(v40) = DWORD1(v234) - v234;
                if (__OFSUB__(DWORD1(v234), v234))
                {
                  goto LABEL_419;
                }

                v40 = v40;
              }

              else
              {
                v40 = BYTE14(v234);
              }

              v66 = *(&v239 + 1) >> 62;
              if ((*(&v239 + 1) >> 62) > 1)
              {
                if (v66 != 2)
                {
                  if (!v40)
                  {
                    goto LABEL_399;
                  }

                  goto LABEL_20;
                }

                v69 = *(v239 + 16);
                v68 = *(v239 + 24);
                v50 = __OFSUB__(v68, v69);
                v67 = v68 - v69;
                if (v50)
                {
                  goto LABEL_410;
                }
              }

              else if (v66)
              {
                LODWORD(v67) = DWORD1(v239) - v239;
                if (__OFSUB__(DWORD1(v239), v239))
                {
                  goto LABEL_409;
                }

                v67 = v67;
              }

              else
              {
                v67 = BYTE14(v239);
              }

              if (v40 != v67)
              {
                goto LABEL_20;
              }

              if (v40 < 1)
              {
                goto LABEL_399;
              }

              if (v39 <= 1)
              {
                if (!v39)
                {
                  *v227 = v234;
                  *&v227[8] = DWORD2(v234);
                  *&v227[12] = WORD6(v234);
                  v70 = *(&v239 + 1);
                  v71 = v239;
                  sub_10019782C(&v239, &v228);
                  sub_10019782C(&v239, &v228);
                  sub_10019782C(&v234, &v228);
                  sub_100066884(v227, v71, v70, &v228);
                  sub_100193BF0(&v234);
                  sub_100193BF0(&v239);
                  sub_100193BF0(&v239);
                  v72 = v228;
                  goto LABEL_284;
                }

                v116 = v234;
                v117 = v234 >> 32;
                if (v234 >> 32 < v234)
                {
                  goto LABEL_429;
                }

                v118 = v239;
                v119 = *(&v234 + 1);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v234, &v228);
                v77 = v119 & 0x3FFFFFFFFFFFFFFFLL;
                v78 = v116;
                v79 = v117;
                v81 = *(&v118 + 1);
                v80 = v118;
LABEL_212:
                v120 = sub_10003A0DC(v78, v79, v77, v80, v81);
                sub_100193BF0(&v239);
                sub_100193BF0(&v234);
                sub_100193BF0(&v239);
                sub_100193BF0(&v239);
LABEL_330:
                v20 = v224;
                v19 = v225;
                if (v120)
                {
                  goto LABEL_399;
                }

                goto LABEL_20;
              }

              v73 = v239;
              if (v39 == 2)
              {
                v74 = *(v234 + 16);
                v75 = *(v234 + 24);
                v76 = *(&v234 + 1);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v239, &v228);
                sub_10019782C(&v234, &v228);
                v77 = v76 & 0x3FFFFFFFFFFFFFFFLL;
                v78 = v74;
                v79 = v75;
                v81 = *(&v73 + 1);
                v80 = v73;
                goto LABEL_212;
              }

              *&v227[6] = 0;
              *v227 = 0;
              sub_10019782C(&v239, &v228);
              sub_10019782C(&v239, &v228);
              sub_10019782C(&v234, &v228);
              sub_100066884(v227, v73, *(&v73 + 1), &v228);
              sub_100193BF0(&v234);
              sub_100193BF0(&v239);
              sub_100193BF0(&v239);
              v121 = v228;
LABEL_333:
              v20 = v224;
              v19 = v225;
              if (v121 == 1)
              {
                goto LABEL_399;
              }

              goto LABEL_20;
            }

            if ((*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0))
            {
              goto LABEL_19;
            }

            v46 = *(&v234 + 1) >> 62;
            if (*(&v234 + 1) >> 62 == 3)
            {
              v47 = 0;
              if (v234 == __PAIR128__(0xC000000000000000, 0) && *(&v239 + 1) >> 62 == 3)
              {
                v47 = 0;
                if (v239 == __PAIR128__(0xC000000000000000, 0))
                {
                  goto LABEL_199;
                }
              }
            }

            else if (v46 > 1)
            {
              if (v46 == 2)
              {
                v56 = *(v234 + 16);
                v55 = *(v234 + 24);
                v50 = __OFSUB__(v55, v56);
                v47 = v55 - v56;
                if (v50)
                {
                  goto LABEL_427;
                }
              }

              else
              {
                v47 = 0;
              }
            }

            else if (v46)
            {
              LODWORD(v47) = DWORD1(v234) - v234;
              if (__OFSUB__(DWORD1(v234), v234))
              {
                goto LABEL_428;
              }

              v47 = v47;
            }

            else
            {
              v47 = BYTE14(v234);
            }

            v104 = *(&v239 + 1) >> 62;
            if ((*(&v239 + 1) >> 62) > 1)
            {
              v2 = a2;
              if (v104 == 2)
              {
                v107 = *(v239 + 16);
                v106 = *(v239 + 24);
                v50 = __OFSUB__(v106, v107);
                v105 = v106 - v107;
                if (v50)
                {
                  goto LABEL_416;
                }

                goto LABEL_193;
              }

              if (v47)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v2 = a2;
              if (v104)
              {
                LODWORD(v105) = DWORD1(v239) - v239;
                if (__OFSUB__(DWORD1(v239), v239))
                {
                  goto LABEL_415;
                }

                v105 = v105;
              }

              else
              {
                v105 = BYTE14(v239);
              }

LABEL_193:
              if (v47 != v105)
              {
                goto LABEL_20;
              }

              if (v47 >= 1)
              {
                v211 = v240;
                if (v46 > 1)
                {
                  v218 = *(&v240 + 1);
                  if (v46 == 2)
                  {
                    v124 = *(v234 + 16);
                    v125 = *(v234 + 24);
                    v126 = *(&v234 + 1);
                    v127 = *(&v239 + 1);
                    v128 = v239;
                    sub_100014CEC(v239, *(&v239 + 1));
                    sub_10019782C(&v234, &v228);
                    sub_100014CEC(v128, v127);
                    LOBYTE(v124) = sub_10003A0DC(v124, v125, v126 & 0x3FFFFFFFFFFFFFFFLL, v128, v127);
                    sub_100014D40(v128, v127);
                    sub_100014D40(v128, v127);
                    v108 = v218;
                    v113 = v211;
                    if ((v124 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_200;
                  }

                  *&v227[6] = 0;
                  *v227 = 0;
                  v158 = *(&v239 + 1);
                  v159 = v239;
                  sub_10019782C(&v234, &v228);
                  sub_100014CEC(v159, v158);
                  v157 = v227;
                }

                else
                {
                  if (!v46)
                  {
                    v108 = *(&v240 + 1);
                    *v227 = v234;
                    *&v227[8] = DWORD2(v234);
                    *&v227[12] = WORD6(v234);
                    v109 = *(&v239 + 1);
                    v110 = v239;
                    sub_10019782C(&v234, &v228);
                    sub_100014CEC(v110, v109);
                    sub_100066884(v227, v110, v109, &v228);
                    sub_100014D40(v110, v109);
                    v111 = v228;
LABEL_297:
                    v113 = v211;
                    if ((v111 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

LABEL_200:
                    v114 = v25 >> 62;
                    if (v25 >> 62 == 3)
                    {
                      v115 = 0;
                      v2 = a2;
                      if (!v26 && v25 == 0xC000000000000000 && v108 >> 62 == 3)
                      {
                        v115 = 0;
                        if (!v113 && v108 == 0xC000000000000000)
                        {
LABEL_403:
                          sub_100193BF0(&v239);
                          v194 = &v234;
LABEL_400:
                          sub_100193BF0(v194);
                          a1 = v222;
LABEL_401:
                          v8 = v220;
                          v4 = v221;
                          v7 = v223;
                          if (v223)
                          {
                            goto LABEL_7;
                          }

                          goto LABEL_8;
                        }
                      }
                    }

                    else if (v114 > 1)
                    {
                      v2 = a2;
                      if (v114 == 2)
                      {
                        v123 = *(v26 + 16);
                        v122 = *(v26 + 24);
                        v50 = __OFSUB__(v122, v123);
                        v115 = v122 - v123;
                        if (v50)
                        {
                          goto LABEL_441;
                        }
                      }

                      else
                      {
                        v115 = 0;
                      }
                    }

                    else
                    {
                      v2 = a2;
                      if (v114)
                      {
                        LODWORD(v115) = HIDWORD(v26) - v26;
                        if (__OFSUB__(HIDWORD(v26), v26))
                        {
                          goto LABEL_440;
                        }

                        v115 = v115;
                      }

                      else
                      {
                        v115 = BYTE6(v25);
                      }
                    }

                    v147 = v108 >> 62;
                    if ((v108 >> 62) > 1)
                    {
                      if (v147 != 2)
                      {
                        if (!v115)
                        {
                          goto LABEL_403;
                        }

                        goto LABEL_398;
                      }

                      v150 = *(v113 + 16);
                      v149 = *(v113 + 24);
                      v50 = __OFSUB__(v149, v150);
                      v148 = v149 - v150;
                      if (v50)
                      {
                        goto LABEL_430;
                      }
                    }

                    else if (v147)
                    {
                      LODWORD(v148) = HIDWORD(v113) - v113;
                      if (__OFSUB__(HIDWORD(v113), v113))
                      {
                        goto LABEL_431;
                      }

                      v148 = v148;
                    }

                    else
                    {
                      v148 = BYTE6(v108);
                    }

                    if (v115 != v148)
                    {
                      goto LABEL_398;
                    }

                    if (v115 < 1)
                    {
                      goto LABEL_403;
                    }

                    if (v114 <= 1)
                    {
                      if (!v114)
                      {
                        *&v228 = v26;
                        WORD4(v228) = v25;
                        BYTE10(v228) = BYTE2(v25);
                        BYTE11(v228) = BYTE3(v25);
                        BYTE12(v228) = BYTE4(v25);
                        BYTE13(v228) = BYTE5(v25);
                        v151 = v113;
                        sub_100014CEC(v113, v108);
                        sub_100014CEC(v151, v108);
                        sub_100066884(&v228, v151, v108, v227);
                        sub_100193BF0(&v234);
                        sub_100014D40(v151, v108);
                        sub_100014D40(v151, v108);
                        v72 = v227[0];
LABEL_284:
                        v20 = v224;
                        v19 = v225;
                        if (v72)
                        {
                          goto LABEL_399;
                        }

                        goto LABEL_20;
                      }

                      v152 = v26;
                      v153 = v26 >> 32;
                      if (v153 < v152)
                      {
                        goto LABEL_445;
                      }

                      goto LABEL_329;
                    }

                    if (v114 == 2)
                    {
                      v152 = *(v26 + 16);
                      v153 = *(v26 + 24);
LABEL_329:
                      v171 = v113;
                      sub_100014CEC(v113, v108);
                      sub_100014CEC(v171, v108);
                      sub_100014CEC(v171, v108);
                      v120 = sub_10003A0DC(v152, v153, v25 & 0x3FFFFFFFFFFFFFFFLL, v171, v108);
                      sub_100014D40(v171, v108);
                      sub_100193BF0(&v234);
                      sub_100014D40(v171, v108);
                      sub_100014D40(v171, v108);
                      goto LABEL_330;
                    }

                    *(&v228 + 6) = 0;
                    *&v228 = 0;
                    v172 = v113;
                    sub_100014CEC(v113, v108);
                    sub_100014CEC(v172, v108);
                    sub_100066884(&v228, v172, v108, v227);
                    sub_100193BF0(&v234);
                    sub_100014D40(v172, v108);
                    sub_100014D40(v172, v108);
                    v121 = v227[0];
                    goto LABEL_333;
                  }

                  v206 = v239;
                  v218 = *(&v240 + 1);
                  v154 = v234;
                  if (v234 >> 32 < v234)
                  {
                    goto LABEL_442;
                  }

                  sub_10019782C(&v234, &v228);
                  sub_100014CEC(v206, *(&v206 + 1));
                  v155 = sub_1004A40D4();
                  if (v155)
                  {
                    v156 = sub_1004A4104();
                    if (__OFSUB__(v154, v156))
                    {
                      goto LABEL_446;
                    }

                    v155 += v154 - v156;
                  }

                  sub_1004A40F4();
                  v157 = v155;
                  v158 = *(&v206 + 1);
                  v159 = v206;
                }

                sub_100066884(v157, v159, v158, &v228);
                sub_100014D40(v159, v158);
                v111 = v228;
                v108 = v218;
                goto LABEL_297;
              }
            }

LABEL_199:
            v231 = v237;
            v233 = v238;
            v229 = v235;
            v230 = v236;
            v228 = v234;
            v232 = *(&v237 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            v108 = *(&v240 + 1);
            v112 = v240;
            sub_1001915E8(&v228, v227);
            v113 = v112;
            goto LABEL_200;
          }

          if (v34 <= 4)
          {
            if (v34 == 3)
            {
              if (((*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0)) == 3)
              {
                v2 = a2;
                if (v234 == v239)
                {
                  goto LABEL_62;
                }

                goto LABEL_63;
              }
            }

            else if (((*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0)) == 4)
            {
              v41 = *(&v234 + 1) >> 62;
              v42 = *(&v239 + 1) >> 62;
              if (*(&v234 + 1) >> 62 == 3)
              {
                v43 = 0;
                if (v234 == __PAIR128__(0xC000000000000000, 0) && *(&v239 + 1) >> 62 == 3)
                {
                  v43 = 0;
                  if (v239 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_166;
                  }
                }
              }

              else if (v41 > 1)
              {
                if (v41 == 2)
                {
                  v54 = *(v234 + 16);
                  v53 = *(v234 + 24);
                  v50 = __OFSUB__(v53, v54);
                  v43 = v53 - v54;
                  if (v50)
                  {
                    goto LABEL_420;
                  }
                }

                else
                {
                  v43 = 0;
                }
              }

              else if (v41)
              {
                LODWORD(v43) = DWORD1(v234) - v234;
                if (__OFSUB__(DWORD1(v234), v234))
                {
                  goto LABEL_417;
                }

                v43 = v43;
              }

              else
              {
                v43 = BYTE14(v234);
              }

              if (v42 > 1)
              {
                v2 = a2;
                if (v42 == 2)
                {
                  v84 = *(v239 + 16);
                  v83 = *(v239 + 24);
                  v50 = __OFSUB__(v83, v84);
                  v82 = v83 - v84;
                  if (v50)
                  {
                    goto LABEL_414;
                  }

                  goto LABEL_160;
                }

                if (v43)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v2 = a2;
                if (v42)
                {
                  LODWORD(v82) = DWORD1(v239) - v239;
                  if (__OFSUB__(DWORD1(v239), v239))
                  {
                    goto LABEL_413;
                  }

                  v82 = v82;
                }

                else
                {
                  v82 = BYTE14(v239);
                }

LABEL_160:
                if (v43 != v82)
                {
                  goto LABEL_20;
                }

                if (v43 >= 1)
                {
                  v210 = v240;
                  if (v41 > 1)
                  {
                    v217 = *(&v240 + 1);
                    if (v41 != 2)
                    {
                      *&v227[6] = 0;
                      *v227 = 0;
                      v145 = *(&v239 + 1);
                      v146 = v239;
                      sub_100014CEC(v239, *(&v239 + 1));
                      sub_10019782C(&v234, &v228);
                      sub_100014CEC(v146, v145);
                      sub_100066884(v227, v146, v145, &v228);
                      sub_100014D40(v146, v145);
                      sub_100014D40(v146, v145);
                      v88 = v228;
                      v85 = v217;
                      goto LABEL_265;
                    }

                    v97 = *(v234 + 16);
                    v98 = *(v234 + 24);
                    v99 = *(&v234 + 1);
                    v100 = *(&v239 + 1);
                    v101 = v239;
                    sub_100014CEC(v239, *(&v239 + 1));
                    sub_100014CEC(v101, v100);
                    sub_10019782C(&v234, &v228);
                    sub_100014CEC(v101, v100);
                    v102 = sub_10003A0DC(v97, v98, v99 & 0x3FFFFFFFFFFFFFFFLL, v101, v100);
                    sub_100014D40(v101, v100);
                    sub_100014D40(v101, v100);
                    v103 = v101;
                  }

                  else
                  {
                    if (!v41)
                    {
                      v85 = *(&v240 + 1);
                      *v227 = v234;
                      *&v227[8] = DWORD2(v234);
                      *&v227[12] = WORD6(v234);
                      v86 = *(&v239 + 1);
                      v87 = v239;
                      sub_100014CEC(v239, *(&v239 + 1));
                      sub_10019782C(&v234, &v228);
                      sub_100014CEC(v87, v86);
                      sub_100066884(v227, v87, v86, &v228);
                      sub_100014D40(v87, v86);
                      sub_100014D40(v87, v86);
                      v88 = v228;
LABEL_265:
                      v90 = v210;
                      if ((v88 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

LABEL_167:
                      v91 = v25 >> 62;
                      v92 = v85 >> 62;
                      if (v25 >> 62 == 3)
                      {
                        v93 = 0;
                        if (v26)
                        {
                          v2 = a2;
                        }

                        else
                        {
                          v2 = a2;
                          if (v25 == 0xC000000000000000 && v85 >> 62 == 3)
                          {
                            v93 = 0;
                            if (!v90 && v85 == 0xC000000000000000)
                            {
                              goto LABEL_403;
                            }
                          }
                        }
                      }

                      else if (v91 == 2)
                      {
                        v132 = *(v26 + 16);
                        v131 = *(v26 + 24);
                        v50 = __OFSUB__(v131, v132);
                        v93 = v131 - v132;
                        v2 = a2;
                        if (v50)
                        {
                          goto LABEL_434;
                        }
                      }

                      else
                      {
                        v2 = a2;
                        if (v91 == 1)
                        {
                          LODWORD(v93) = HIDWORD(v26) - v26;
                          if (__OFSUB__(HIDWORD(v26), v26))
                          {
                            goto LABEL_435;
                          }

                          v93 = v93;
                        }

                        else
                        {
                          v93 = BYTE6(v25);
                        }
                      }

                      if (v92 > 1)
                      {
                        if (v92 != 2)
                        {
                          if (!v93)
                          {
                            goto LABEL_403;
                          }

                          goto LABEL_398;
                        }

                        v175 = *(v90 + 16);
                        v174 = *(v90 + 24);
                        v50 = __OFSUB__(v174, v175);
                        v173 = v174 - v175;
                        if (v50)
                        {
                          goto LABEL_424;
                        }
                      }

                      else if (v92)
                      {
                        LODWORD(v173) = HIDWORD(v90) - v90;
                        if (__OFSUB__(HIDWORD(v90), v90))
                        {
                          goto LABEL_423;
                        }

                        v173 = v173;
                      }

                      else
                      {
                        v173 = BYTE6(v85);
                      }

                      if (v93 != v173)
                      {
                        goto LABEL_398;
                      }

                      if (v93 < 1)
                      {
                        goto LABEL_403;
                      }

                      v176 = v90;
                      sub_100014CEC(v90, v85);
                      LOBYTE(v176) = sub_100039F4C(v26, v25, v176, v85);
                      sub_100193BF0(&v234);
                      if (v176)
                      {
                        goto LABEL_399;
                      }

                      goto LABEL_27;
                    }

                    v217 = *(&v240 + 1);
                    v141 = v234;
                    v142 = v234 >> 32;
                    if (v234 >> 32 < v234)
                    {
                      goto LABEL_436;
                    }

                    v143 = *(&v234 + 1);
                    v100 = *(&v239 + 1);
                    v144 = v239;
                    sub_100014CEC(v239, *(&v239 + 1));
                    sub_100014CEC(v144, v100);
                    sub_10019782C(&v234, &v228);
                    sub_100014CEC(v144, v100);
                    v102 = sub_10003A0DC(v141, v142, v143 & 0x3FFFFFFFFFFFFFFFLL, v144, v100);
                    sub_100014D40(v144, v100);
                    sub_100014D40(v144, v100);
                    v103 = v144;
                  }

                  sub_100014D40(v103, v100);
                  v85 = v217;
                  v90 = v210;
                  if ((v102 & 1) == 0)
                  {
                    goto LABEL_398;
                  }

                  goto LABEL_167;
                }
              }

LABEL_166:
              v231 = v237;
              v233 = v238;
              v229 = v235;
              v230 = v236;
              v228 = v234;
              v232 = *(&v237 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              v85 = *(&v240 + 1);
              v89 = v240;
              sub_1001915E8(&v228, v227);
              v90 = v89;
              goto LABEL_167;
            }

            goto LABEL_19;
          }

          v37 = (*(&v242 + 1) >> 61) & 1;
          v38 = *(&v243 + 1) >> 59;
          if (v34 != 5)
          {
            v2 = a2;
            if ((v38 & 6 | v37) != 6)
            {
              goto LABEL_20;
            }

LABEL_61:
            if (v234 == v239)
            {
LABEL_62:
              if (*(&v234 + 1) != *(&v239 + 1))
              {
                goto LABEL_63;
              }

LABEL_64:
              if (v26 == v31 && v25 == v32)
              {
                goto LABEL_399;
              }

LABEL_26:
              if (sub_1004A6D34())
              {
                goto LABEL_399;
              }

              goto LABEL_27;
            }

LABEL_63:
            v44 = v240;
            v45 = sub_1004A6D34();
            v32 = *(&v44 + 1);
            v31 = v44;
            v20 = v224;
            v19 = v225;
            if ((v45 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_64;
          }

          v2 = a2;
          if ((v38 & 6 | v37) == 5)
          {
            goto LABEL_61;
          }
        }

        else if ((HIBYTE(v242) & 0x10) == 0)
        {
          v28 = v240;
          if (v234 != v239 && (sub_1004A6D34() & 1) == 0)
          {
            v19 = v225;
            goto LABEL_47;
          }

          if (__PAIR128__(v25, v26) == v28)
          {
            goto LABEL_399;
          }

          goto LABEL_26;
        }

LABEL_20:
        v18 = (v18 + 1) & v20;
      }

      while (((*(v19 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }

    sub_100193BF0(&v239);
  }

  return 0;
}

uint64_t sub_1001B260C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v26 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v27 = v8;
  v28 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v14;
    v31 = v14[1];
    v16 = v14[2];
    sub_1004A6E94();
    v29 = v11;
    v30 = v15;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        sub_1004A6EB4(3uLL);
        goto LABEL_26;
      }

      if (v16 == 3)
      {
        sub_1004A6EB4(4uLL);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v16)
      {
        sub_1004A6EB4(1uLL);
        goto LABEL_26;
      }

      if (v16 == 1)
      {
        sub_1004A6EB4(2uLL);
        goto LABEL_26;
      }
    }

    sub_1004A6EB4(0);
    if ((~v15 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      sub_1000110B0(v15);

      ResponseTextCode.hash(into:)(v32, v15);
    }

    else
    {
      sub_1004A6EC4(0);
      sub_1000110B0(v15);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_26:
    v17 = sub_1004A6F14();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_46:
      sub_100191E44(v30, v31, v16);
      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 24 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      if (v24 > 1)
      {
        break;
      }

      if (v24)
      {
        if (v24 != 1)
        {
          goto LABEL_39;
        }

        if (v16 == 1)
        {
          goto LABEL_43;
        }
      }

      else if (!v16)
      {
        goto LABEL_43;
      }

LABEL_29:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (v24 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v24 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_39:
    if (v16 < 4)
    {
      goto LABEL_29;
    }

    sub_1000110B0(*v21);

    v25 = static ResponseText.__derived_struct_equals(_:_:)(v22, v23);
    sub_100191E44(v22, v23, v24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_100191E44(v30, v31, v16);
LABEL_43:
    v8 = v27;
    result = v28;
    v7 = v29;
  }

  while (v29);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v26 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B2930(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (sub_100083308(*(a1 + 8), *(a2 + 8)))
  {
    v4 = sub_100083308(v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Int ConnectionCommandIDSet.isDisjoint(with:)(int a1, uint64_t a2, uint64_t a3, int a4, Swift::Int a5)
{
  if (a1 == a4)
  {
    return sub_10012DDBC(a5, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t ConnectionCommandIDSet.normalCommandCount.getter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16) <= a2[2] >> 3)
  {

    sub_1001B2F14(a3);
    v5 = a2;
  }

  else
  {

    v5 = sub_1001B300C(a3, a2);
  }

  v6 = v5[2];

  return v6;
}

uint64_t ConnectionCommandIDSet.makeIterator()(int a1, uint64_t a2, uint64_t a3)
{
  v6 = -1 << *(a2 + 32);
  v7 = a2 + 56;
  v8 = ~v6;
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a2 + 56);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = 0;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  sub_10000C9C0(&qword_1005D3610, &qword_1004DD200);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001B351C;
  *(v14 + 24) = v13;
  swift_bridgeObjectRetain_n();

  return v14;
}

uint64_t sub_1001B2B64@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  if (v8)
  {
    v9 = a1[5];
LABEL_10:
    v13 = 0;
    v14 = *(*(a1[2] + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v8)))));
    a1[5] = v9;
    a1[6] = (v8 - 1) & v8;
    v15 = a2 | (v14 << 32);
LABEL_11:
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    v10 = (a1[4] + 64) >> 6;
    if (v10 <= v7 + 1)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = (a1[4] + 64) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        v15 = 0;
        a1[5] = v12;
        a1[6] = 0;
        v13 = 1;
        goto LABEL_11;
      }

      v8 = *(a1[3] + 8 * v9);
      ++v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001B2C48@<X0>(uint64_t *a1@<X8>)
{
  v3 = ConnectionCommandIDSet.makeIterator()(*v1, *(v1 + 8), *(v1 + 16));

  *a1 = v3;
  return result;
}

void *sub_1001B2CA8()
{
  v1 = sub_1001B3B44(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1001B2D04(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = ConnectionCommandIDSet.makeIterator()(a4, a5, a6);

  v11 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v9;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1004A6AA4();
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v13;
      while (1)
      {
        *a2 = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        sub_1004A6AA4();
        v12 = v13;
        ++v11;
        ++a2;
        if (v14)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1001B2DE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EE024(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100141044(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1001B2F14(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1001B3650(*(*(a1 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_1001B300C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 8) | (4 * v18)));
        sub_1004A6E94();
        sub_1004A6EE4(v5);
        v19 = sub_1004A6F14();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v5);
      v41 = sub_1001B3764(v40, v14, v6, v2, v50);

      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    __chkstk_darwin(v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v5);
    v24 = v6[2];
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 8) | (4 * v29)));
      sub_1004A6E94();
      v2 = v49;
      sub_1004A6EE4(v5);
      v30 = sub_1004A6F14();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 4 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = _swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 4 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_1001B393C(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_100020D08(v38);
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v6;
}

uint64_t sub_1001B3494()
{
  sub_100020D08(*(v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B34D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001B3530()
{
  result = qword_1005D3618;
  if (!qword_1005D3618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandID, &type metadata for CommandID, v0, v1);
    atomic_store(result, &qword_1005D3618);
  }

  return result;
}

unint64_t sub_1001B3588()
{
  result = qword_1005D3620;
  if (!qword_1005D3620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CommandCounter, &type metadata for CommandCounter, v0, v1);
    atomic_store(result, &qword_1005D3620);
  }

  return result;
}

unint64_t sub_1001B3650(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  sub_1004A6E94();
  sub_1004A6EE4(v2);
  v4 = sub_1004A6F14();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != v2)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002057C8();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_10013EA50(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

Swift::Int sub_1001B3764(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 4 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return _swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 4 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1001B393C(v7, a2, v9, a3);
}

uint64_t sub_1001B393C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D3638, &unk_1004DD4E0);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_1004A6E94();
    sub_1004A6EE4(v16);
    result = sub_1004A6F14();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(v9[6] + 4 * v20) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1001B3B44(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = 2 * (v9 >> 3);
    v7[2] = v6;
    v7[3] = v10;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage[3];
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  ConnectionCommandIDSet.makeIterator()(a1, a2, a3);
  if (v6)
  {
    v12 -= v6;
    do
    {
      result = sub_1004A6AA4();
      if (v30)
      {
        goto LABEL_37;
      }

      *v11++ = v29;
    }

    while (--v6);
  }

  result = sub_1004A6AA4();
  if ((v30 & 1) == 0)
  {
    v14 = v29;
    while (1)
    {
      if (!v12)
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
        v18 = swift_allocObject();
        v19 = j__malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v7[3] >> 1;
        if (v7[2])
        {
          if (v18 != v7 || v22 >= &v7[v23 + 4])
          {
            memmove(v18 + 4, v7 + 4, 8 * v23);
          }

          v7[2] = 0;
        }

        v11 = (v22 + 8 * v23);
        v12 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v7 = v18;
      }

      v25 = __OFSUB__(v12--, 1);
      if (v25)
      {
        break;
      }

      *v11++ = v14;
      result = sub_1004A6AA4();
      v14 = v29;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:

  v26 = v7[3];
  if (v26 < 2)
  {
    return v7;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v12);
  v28 = v27 - v12;
  if (!v25)
  {
    v7[2] = v28;
    return v7;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *sub_1001B3D68(uint64_t a1)
{
  v2 = sub_1004A54E4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  sub_1001B4240();
  sub_1004A5AC4();
  result = sub_10000C9C0(&qword_1005D3648, &unk_1004DD4F0);
  v7 = *(a1 + *(result + 9));
  v8 = v27[0];
  v9 = _swiftEmptyArrayStorage;
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = &_swiftEmptyArrayStorage[4];
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v18 = swift_allocObject();
        v19 = 2 * j__malloc_size(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1001B3FA0()
{
  result = sub_1004A6AA4();
  v1 = _swiftEmptyArrayStorage;
  v2 = 0;
  if ((v18 & 1) == 0)
  {
    v3 = v17;
    v4 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      if (!v2)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v8 = swift_allocObject();
        v9 = 2 * j__malloc_size(v8) - 64;
        v8[2] = v7;
        v8[3] = v9;
        v10 = (v8 + 4);
        v11 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v10 >= v1 + v11 + 32)
          {
            memmove(v8 + 4, v1 + 4, v11);
          }

          v1[2] = 0;
        }

        v4 = (v10 + v11);
        v2 = (v9 >> 1) - v11;

        v1 = v8;
      }

      v13 = __OFSUB__(v2--, 1);
      if (v13)
      {
        break;
      }

      *v4++ = v3;
      result = sub_1004A6AA4();
      v3 = v17;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v14 = v1[3];
  if (v14 < 2)
  {
    return v1;
  }

  v15 = v14 >> 1;
  v13 = __OFSUB__(v15, v2);
  v16 = v15 - v2;
  if (!v13)
  {
    v1[2] = v16;
    return v1;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1001B4154(uint64_t a1, uint64_t a2)
{
  v10 = _swiftEmptySetSingleton;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = (a2 + 36);
    v6 = *(a2 + 16);
    do
    {
      if (*(v5 - 1) == a1)
      {
        sub_10020163C(&v9, *v5);
      }

      v5 += 10;
      --v6;
    }

    while (v6);
    v10 = _swiftEmptySetSingleton;
    do
    {
      if (*v4 == a1 && *(v4 + 24) != 0)
      {
        sub_10020163C(&v9, *(v4 + 4));
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t sub_1001B4240()
{
  result = qword_1005D3640;
  if (!qword_1005D3640)
  {
    v3 = sub_1004A54E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for Insecure.MD5Digest, v3, v0, v1);
    atomic_store(result, &qword_1005D3640);
  }

  return result;
}

__n128 sub_1001B42AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001B42C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1001B4308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B435C()
{
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  __chkstk_darwin(done - 8);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s19CommandOutputBufferV9HandshakeVMa(0);
  __chkstk_darwin(v3 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s19CommandOutputBufferV12ContinuationVMa(0);
  __chkstk_darwin(v5 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7CommandVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV7ElementOMa(0);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = *v0 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    while (1)
    {
      sub_1001B6374(v19, v16, _s19CommandOutputBufferV7ElementOMa);
      sub_1001B6374(v16, v12, _s19CommandOutputBufferV7ElementOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v25 = v32;
          sub_1001B630C(v12, v32, _s19CommandOutputBufferV8IdleDoneVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV8IdleDoneVMa;
        }

        else
        {
          v25 = v31;
          sub_1001B630C(v12, v31, _s19CommandOutputBufferV9HandshakeVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v26 = _s19CommandOutputBufferV9HandshakeVMa;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1001B630C(v12, v9, _s19CommandOutputBufferV7CommandVMa);
          v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          v23 = _s19CommandOutputBufferV7CommandVMa;
          v24 = v9;
          goto LABEL_11;
        }

        v25 = v30;
        sub_1001B630C(v12, v30, _s19CommandOutputBufferV12ContinuationVMa);
        v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v26 = _s19CommandOutputBufferV12ContinuationVMa;
      }

      v23 = v26;
      v24 = v25;
LABEL_11:
      sub_1001B62AC(v24, v23);
      result = sub_1001B62AC(v16, _s19CommandOutputBufferV7ElementOMa);
      v28 = __OFADD__(v18, v22);
      v18 += v22;
      if (v28)
      {
        __break(1u);
        return result;
      }

      v19 += v20;
      if (!--v17)
      {
        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_1001B471C(uint64_t *a1, unsigned __int8 *a2, __n128 a3)
{
  v39 = a1;
  v48 = _s19CommandOutputBufferV12ContinuationVMa(0);
  __chkstk_darwin(v48);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000C9C0(&qword_1005D3658, &unk_1004DD560);
  __chkstk_darwin(v47);
  v7 = &v37 - v6;
  v49 = _s19CommandOutputBufferV7ElementOMa(0);
  v41 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v37 - v11;
  v12 = _s19CommandOutputBufferV7CommandVMa(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v17 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v18 = sub_1004A5384();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v40 = v16;
  v43 = v20;
  v44 = v19;
  v20(v15, v16, v18);
  v21 = &v15[*(v13 + 28)];
  v45 = a2;
  v46 = v17;
  *v21 = v17;
  *(v21 + 1) = a2;
  v15[*(v13 + 32)] = 0;
  v37 = v15;
  v22 = v15;
  v24 = v38;
  v23 = v39;
  sub_1001B6374(v22, v38, _s19CommandOutputBufferV7CommandVMa);
  swift_storeEnumTagMultiPayload();
  v25 = *v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1001EC1FC((v26 > 1), v27 + 1, 1, v25);
    }

    v25[2] = v27 + 1;
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v41 = *(v41 + 72);
    sub_1001B630C(v24, v25 + v42 + v41 * v27, _s19CommandOutputBufferV7ElementOMa);
    *v23 = v25;
    v28 = *&v40[*(type metadata accessor for ClientCommand.Encoded(0) + 20)];
    v40 = *(v28 + 16);
    if (!v40)
    {
      break;
    }

    v23 = 0;
    while (v23 < *(v28 + 16))
    {
      v29 = v43;
      v30 = v28 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23;
      v31 = *(v47 + 48);
      *v7 = v23;
      v29(&v7[v31], v30, v18);
      v29(v5, &v7[v31], v18);
      v32 = v48;
      v33 = &v5[*(v48 + 20)];
      v34 = v45;
      *v33 = v46;
      *(v33 + 1) = v34;
      *&v5[*(v32 + 24)] = v23;
      sub_1001B6374(v5, v9, _s19CommandOutputBufferV12ContinuationVMa);
      swift_storeEnumTagMultiPayload();
      v24 = v25[2];
      v35 = v25[3];
      if (v24 >= v35 >> 1)
      {
        v25 = sub_1001EC1FC((v35 > 1), v24 + 1, 1, v25);
      }

      v23 = (v23 + 1);
      sub_1001B62AC(v5, _s19CommandOutputBufferV12ContinuationVMa);
      v25[2] = v24 + 1;
      sub_1001B630C(v9, v25 + v42 + v24 * v41, _s19CommandOutputBufferV7ElementOMa);
      sub_1001B63DC(v7);
      if (v40 == v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    v25 = sub_1001EC1FC(0, v25[2] + 1, 1, v25);
  }

LABEL_10:
  *v39 = v25;
  return sub_1001B62AC(v37, _s19CommandOutputBufferV7CommandVMa);
}

BOOL sub_1001B4BE8(void (*a1)(uint64_t *), __n128 a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *(*v2 + 16);
  if (v9 != 1)
  {
    goto LABEL_5;
  }

  sub_1001B6374(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001B62AC(v7, _s19CommandOutputBufferV7ElementOMa);
  if (EnumCaseMultiPayload != 2)
  {
    v9 = *(v8 + 16);
LABEL_5:
    v11 = v9 != 0;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:
  a1(v2);
  return v11;
}

uint64_t sub_1001B4D30(uint64_t *a1, unsigned __int8 *a2)
{
  v38 = a1;
  v3 = sub_1004A5384();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7ElementOMa(0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v18 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v36 = v4;
  v19 = *(v4 + 16);
  v39 = v17;
  v42 = v19;
  (v19)(v16);
  v20 = &v16[*(v14 + 28)];
  v43 = a2;
  v44 = v18;
  *v20 = v18;
  v21 = v38;
  *(v20 + 1) = a2;
  v16[*(v14 + 32)] = 1;
  v37 = v16;
  sub_1001B6374(v16, v12, _s19CommandOutputBufferV7CommandVMa);
  v45 = v7;
  swift_storeEnumTagMultiPayload();
  v22 = *v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1001EC1FC(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1001EC1FC((v23 > 1), v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v40 = *(v40 + 72);
  sub_1001B630C(v12, v22 + v41 + v40 * v24, _s19CommandOutputBufferV7ElementOMa);
  *v21 = v22;
  v25 = *&v39[*(type metadata accessor for ClientCommand.Encoded(0) + 20)];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)));
    v39 = *(v36 + 72);
    v28 = (v36 + 8);
    do
    {
      v29 = v42;
      v42(v6, v27, v3);
      v29(v9, v6, v3);
      v30 = &v9[*(_s19CommandOutputBufferV8IdleDoneVMa(0) + 20)];
      v31 = v43;
      *v30 = v44;
      *(v30 + 1) = v31;
      swift_storeEnumTagMultiPayload();
      v33 = v22[2];
      v32 = v22[3];
      if (v33 >= v32 >> 1)
      {
        v22 = sub_1001EC1FC((v32 > 1), v33 + 1, 1, v22);
      }

      (*v28)(v6, v3);
      v22[2] = v33 + 1;
      sub_1001B630C(v9, v22 + v41 + v33 * v40, _s19CommandOutputBufferV7ElementOMa);
      v27 = &v39[v27];
      --v26;
    }

    while (v26);
    *v38 = v22;
  }

  return sub_1001B62AC(v37, _s19CommandOutputBufferV7CommandVMa);
}

uint64_t sub_1001B515C(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = _s19CommandOutputBufferV7ElementOMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 + *(type metadata accessor for HandshakeReply.Encoded(0) + 20);
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = sub_1004A5384();
  (*(*(v16 - 8) + 16))(v12, a2, v16);
  v17 = &v12[*(v10 + 28)];
  *v17 = v14;
  *(v17 + 1) = v15;
  sub_1001B6374(v12, v8, _s19CommandOutputBufferV9HandshakeVMa);
  swift_storeEnumTagMultiPayload();
  v18 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1001EC1FC(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1001EC1FC((v19 > 1), v20 + 1, 1, v18);
  }

  sub_1001B62AC(v12, _s19CommandOutputBufferV9HandshakeVMa);
  v18[2] = v20 + 1;
  result = sub_1001B630C(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, _s19CommandOutputBufferV7ElementOMa);
  *a1 = v18;
  return result;
}

uint64_t sub_1001B53B0@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1004A5384();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s19CommandOutputBufferV7CommandVMa(0);
  __chkstk_darwin(v43);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7ElementOMa(0);
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = *v1;
  v21 = *(*v1 + 16);
  if (!v21)
  {
    v25 = _s19CommandOutputBufferV8SendDataVMa(0);
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  v42 = a1;
  v48 = v2;
  sub_1001B6374(v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), &v42 - v18, _s19CommandOutputBufferV7ElementOMa);
  sub_1001B6374(v19, v15, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (v1[1])
      {
        goto LABEL_20;
      }

      v26 = v1 + 2;
      v27 = v1[2];
      if (v27 > 0)
      {
LABEL_14:
        *v26 = v27 - 1;
        goto LABEL_15;
      }

LABEL_23:
      sub_1001B62AC(v19, _s19CommandOutputBufferV7ElementOMa);
      v30 = _s19CommandOutputBufferV8SendDataVMa(0);
      (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
      return sub_1001B62AC(v15, _s19CommandOutputBufferV7ElementOMa);
    }

    if (v21 == 1)
    {
      goto LABEL_23;
    }

    if (v1[2])
    {
      goto LABEL_18;
    }

LABEL_13:
    v26 = v1 + 1;
    v27 = v1[1];
    if (v27 > 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload)
  {
    if (v1[2])
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v1[1])
  {
LABEL_20:
    sub_1001B64B8();
    goto LABEL_21;
  }

  if (v1[2])
  {
LABEL_18:
    sub_1001B6464();
LABEL_21:
    swift_allocError();
    swift_willThrow();
    sub_1001B62AC(v19, _s19CommandOutputBufferV7ElementOMa);
    return sub_1001B62AC(v15, _s19CommandOutputBufferV7ElementOMa);
  }

  if ((*(v1 + 33) & 1) == 0 && (v1[4] & 1) == 0)
  {
    sub_1001B62AC(v19, _s19CommandOutputBufferV7ElementOMa);
    v23 = _s19CommandOutputBufferV8SendDataVMa(0);
    (*(*(v23 - 8) + 56))(v42, 1, 1, v23);
    return sub_1001B62AC(v15, _s19CommandOutputBufferV7ElementOMa);
  }

LABEL_15:
  sub_1001B62AC(v15, _s19CommandOutputBufferV7ElementOMa);
  sub_1001EA660(0, v12);
  sub_1001B62AC(v12, _s19CommandOutputBufferV7ElementOMa);
  sub_1001B6374(v19, v9, _s19CommandOutputBufferV7ElementOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = _s19CommandOutputBufferV7ElementOMa;
    v29 = v9;
  }

  else
  {
    v31 = v44;
    sub_1001B630C(v9, v44, _s19CommandOutputBufferV7CommandVMa);
    if (*(v31 + *(v43 + 24)))
    {
      v32 = (v31 + *(v43 + 20));
      v33 = *v32;
      v34 = *(v32 + 1);
      sub_1001B62AC(v31, _s19CommandOutputBufferV7CommandVMa);
      v35 = v42;
      if ((*(v1 + 33) & 1) == 0)
      {
        v1[3] = v33 | (v34 << 32);
        *(v1 + 16) = 0;
      }

      goto LABEL_30;
    }

    v28 = _s19CommandOutputBufferV7CommandVMa;
    v29 = v31;
  }

  sub_1001B62AC(v29, v28);
  v35 = v42;
LABEL_30:
  v36 = v45;
  sub_1001B59F4(v45);
  v37 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v46 + 8))(v36, v47);
  LOBYTE(v36) = v37 > 5000;
  sub_1001B59F4(v35);
  v38 = sub_1001B5CA4();
  LOBYTE(v37) = v38;
  v39 = HIDWORD(v38);
  sub_1001B62AC(v19, _s19CommandOutputBufferV7ElementOMa);
  v40 = _s19CommandOutputBufferV8SendDataVMa(0);
  v41 = v35 + *(v40 + 20);
  *v41 = v37;
  *(v41 + 4) = v39;
  *(v35 + *(v40 + 24)) = v36;
  return (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
}