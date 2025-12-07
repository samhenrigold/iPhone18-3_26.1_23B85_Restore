int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001404(&qword_10000C010, &qword_100003448);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_10000276C(0xD00000000000001ELL, 0x8000000100003480);
  qword_10000C030 = 0;
  v6 = objc_autoreleasePoolPush();
  type metadata accessor for Daemon();
  swift_allocObject();
  qword_10000C030 = Daemon.init()();

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_100001794(0, 0, v5, &unk_100003458, v9);

  objc_autoreleasePoolPop(v6);

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = [objc_opt_self() mainRunLoop];
  [v10 run];

  return 0;
}

uint64_t sub_100001404(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000144C(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000014E4, v3, v2);
}

uint64_t sub_1000014E4()
{
  v1 = qword_10000C030;
  *(v0 + 48) = qword_10000C030;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1000015DC;

    return Daemon.activate()();
  }

  else
  {

    **(v0 + 16) = *(v0 + 48) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000015DC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100001720, v3, v2);
}

uint64_t sub_100001720()
{

  **(v0 + 16) = *(v0 + 48) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001404(&qword_10000C010, &qword_100003448);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100001E48(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100001EB8(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100001404(&qword_10000C018, &qword_100003470);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100001EB8(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001EB8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100001404(&qword_10000C018, &qword_100003470);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100001A68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100001B5C;

  return v5(v2 + 32);
}

uint64_t sub_100001B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100001C70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001CA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001D54;

  return sub_10000144C(a1);
}

uint64_t sub_100001D54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001404(&qword_10000C010, &qword_100003448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001EB8(uint64_t a1)
{
  v2 = sub_100001404(&qword_10000C010, &qword_100003448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001F58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000020CC;

  return sub_100001A68(a1, v4);
}

uint64_t sub_100002010(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001D54;

  return sub_100001A68(a1, v4);
}

char *sub_1000020D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001404(&qword_10000C020, &qword_100003490);
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

unint64_t sub_1000021C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002290(v11, 0, 0, 1, a1, a2);
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
    sub_100002FEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F9C(v11);
  return v7;
}

unint64_t sub_100002290(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000239C(a5, a6);
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

char *sub_10000239C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000023E8(a1, a2);
  sub_100002518(&off_1000082D8);
  return v3;
}

char *sub_1000023E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002604(v5, 0);
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
        v7 = sub_100002604(v10, 0);
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

uint64_t sub_100002518(uint64_t result)
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

  result = sub_100002678(result, v11, 1, v3);
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

void *sub_100002604(uint64_t a1, uint64_t a2)
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

  sub_100001404(&qword_10000C028, &qword_100003498);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002678(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001404(&qword_10000C028, &qword_100003498);
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

uint64_t sub_10000276C(uint64_t a1, void *a2)
{
  v70 = type metadata accessor for Logger();
  v4 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v70 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v70 - v12;
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v16 + 16) = 1024;
  bzero((v16 + 32), 0x400uLL);
  String.utf8CString.getter();

  v17 = _set_user_dir_suffix();

  if (!v17)
  {
    v22 = errno.getter();
    if (strerror(v22))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v16 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1000020D0(0, *(v16 + 16), 0, v16);
  }

  if (!confstr(65537, (v16 + 32), v7))
  {
LABEL_12:
    v23 = errno.getter();
    if (strerror(v23))
    {
      v40 = String.init(cString:)();
      v42 = v41;
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v43._countAndFlagsBits = 0xD000000000000034;
      v43._object = 0x8000000100003550;
      String.append(_:)(v43);
      v44._countAndFlagsBits = a1;
      v44._object = a2;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 10272;
      v45._object = 0xE200000000000000;
      String.append(_:)(v45);
      LODWORD(v71) = errno.getter();
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 2112041;
      v47._object = 0xE300000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = v40;
      v48._object = v42;
      String.append(_:)(v48);
      v49 = v72;
      v50 = v73;

      static Log.default.getter();

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v71 = v54;
        *v53 = 136446210;
        *(v53 + 4) = sub_1000021C4(v49, v50, &v71);
        _os_log_impl(&_mh_execute_header, v51, v52, "Sandbox bootstrap error: %{public}s", v53, 0xCu);
        sub_100002F9C(v54);
      }

      (*(v4 + 8))(v10, v70);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!mkdir((v16 + 32), 0x2BCu) && errno.getter() != 17)
  {
LABEL_14:
    v24 = errno.getter();
    if (strerror(v24))
    {
      v55 = String.init(cString:)();
      v57 = v56;
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v58._object = 0x8000000100003520;
      v58._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v58);
      v59._countAndFlagsBits = a1;
      v59._object = a2;
      String.append(_:)(v59);
      v60._countAndFlagsBits = 10272;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      LODWORD(v71) = errno.getter();
      v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 2112041;
      v62._object = 0xE300000000000000;
      String.append(_:)(v62);
      v63._countAndFlagsBits = v55;
      v63._object = v57;
      String.append(_:)(v63);
      v64 = v72;
      v65 = v73;

      static Log.default.getter();

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71 = v69;
        *v68 = 136446210;
        *(v68 + 4) = sub_1000021C4(v64, v65, &v71);
        _os_log_impl(&_mh_execute_header, v66, v67, "Sandbox bootstrap error: %{public}s", v68, 0xCu);
        sub_100002F9C(v69);
      }

      (*(v4 + 8))(v13, v70);
      goto LABEL_25;
    }

    __break(1u);
LABEL_16:
    v25 = String.init(cString:)();
    v27 = v26;
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v28._countAndFlagsBits = 0xD00000000000002DLL;
    v28._object = 0x80000001000034C0;
    String.append(_:)(v28);
    v29._countAndFlagsBits = a1;
    v29._object = a2;
    String.append(_:)(v29);
    v30._countAndFlagsBits = 10272;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    LODWORD(v71) = errno.getter();
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 2112041;
    v32._object = 0xE300000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = v25;
    v33._object = v27;
    String.append(_:)(v33);
    v34 = v72;
    v35 = v73;

    static Log.default.getter();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000021C4(v34, v35, &v71);
      _os_log_impl(&_mh_execute_header, v36, v37, "Sandbox bootstrap error: %{public}s", v38, 0xCu);
      sub_100002F9C(v39);
    }

    (*(v4 + 8))(v7, v70);
LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static Log.default.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sandbox bootstrapped successfully", v20, 2u);
  }

  return (*(v4 + 8))(v15, v70);
}

uint64_t sub_100002F9C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}