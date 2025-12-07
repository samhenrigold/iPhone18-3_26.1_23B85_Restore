int main(int argc, const char **argv, const char **envp)
{
  if (sub_10000133C())
  {
    v3 = type metadata accessor for CallHistoryDaemon();
    v51 = v36;
    v4 = *(v3 - 8);
    __chkstk_darwin();
    v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    CallHistoryDaemon.init()();
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    __chkstk_darwin();
    v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    static Log.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v46 = v13;
      v47 = swift_slowAlloc();
      v52 = v47;
      *v13 = 136315138;
      v42 = type metadata accessor for Date();
      v43 = v36;
      v41 = *(v42 - 8);
      __chkstk_darwin();
      v44 = v11;
      v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      Date.init()();
      v37 = type metadata accessor for Date.FormatStyle.DateStyle();
      v40 = v36;
      v16 = *(v37 - 8);
      v45 = v8;
      v17 = v16;
      __chkstk_darwin();
      v50 = v3;
      v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      static Date.FormatStyle.DateStyle.complete.getter();
      v20 = type metadata accessor for Date.FormatStyle.TimeStyle();
      v39 = v12;
      v21 = v20;
      v36[1] = v36;
      v22 = *(v20 - 8);
      v49 = v6;
      v23 = v4;
      v24 = v22;
      __chkstk_darwin();
      v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      static Date.FormatStyle.TimeStyle.complete.getter();
      v27 = Date.formatted(date:time:)();
      v48 = v36;
      v28 = v27;
      v38 = v7;
      v30 = v29;
      (*(v24 + 8))(v26, v21);
      v4 = v23;
      v31 = v19;
      v6 = v49;
      v3 = v50;
      (*(v17 + 8))(v31, v37);
      (*(v41 + 8))(v15, v42);
      v32 = sub_100001420(v28, v30, &v52);

      v33 = v46;
      *(v46 + 1) = v32;
      v34 = v44;
      _os_log_impl(&_mh_execute_header, v44, v39, "Started daemon at %s", v33, 0xCu);
      sub_1000019C8(v47);

      (*(v45 + 8))(v10, v38);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    sub_1000013D4();
    Daemon.main()();
    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

BOOL sub_10000133C()
{
  if (&protocol descriptor for Daemon)
  {
    v0 = &protocol requirements base descriptor for Daemon == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &dispatch thunk of static Daemon.embeddedSandboxProfileName.getter != 0 && &method descriptor for static Daemon.embeddedSandboxProfileName.getter != 0 && &dispatch thunk of static Daemon.macOSSandboxProfileName.getter != 0 && &method descriptor for static Daemon.macOSSandboxProfileName.getter != 0 && &dispatch thunk of static Daemon.daemonEntitlementKey.getter != 0 && &method descriptor for static Daemon.daemonEntitlementKey.getter != 0 && &dispatch thunk of Daemon.start() != 0 && &method descriptor for Daemon.start() != 0 && &dispatch thunk of Daemon.enterSandbox() != 0 && &method descriptor for Daemon.enterSandbox() != 0;
}

unint64_t sub_1000013D4()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    type metadata accessor for CallHistoryDaemon();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001420(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000014EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100001A14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000019C8(v11);
  return v7;
}

unint64_t sub_1000014EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000015F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000015F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001644(a1, a2);
  sub_100001774(&off_1000041A8);
  return v3;
}

char *sub_100001644(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100001860(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001860(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100001774(uint64_t result)
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

  result = sub_1000018D4(result, v11, 1, v3);
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

void *sub_100001860(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001A70(&qword_100008008, qword_100001CF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000018D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A70(&qword_100008008, qword_100001CF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000019C8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100001A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001A70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}