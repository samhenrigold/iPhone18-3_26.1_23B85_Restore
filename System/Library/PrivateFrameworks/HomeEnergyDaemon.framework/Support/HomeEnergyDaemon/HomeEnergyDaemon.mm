int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v4 + 8))(v6, v3);
  sub_1000014E4();
  v7 = OS_os_log.init(subsystem:category:)();
  setDefaultLog(_:)();

  qword_10000C178 = 0;
  v8 = objc_autoreleasePoolPush();
  sub_100001530();
  objc_autoreleasePoolPop(v8);
  v9 = [objc_opt_self() currentRunLoop];
  [v9 run];

  exit(0);
}

unint64_t sub_1000014E4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

void sub_100001530()
{
  v1 = v0;
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v37 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = *(v3 + 104);
  v33 = enum case for Logging.daemon(_:);
  v32 = v11;
  v11(v5);
  defaultLogger(_:)();
  v31 = *(v3 + 8);
  v31(v5, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v6;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "*** HOMEENERGYD LAUNCH ***", v14, 2u);
    v1 = v0;
    v6 = v35;
  }

  v15 = *(v37 + 8);
  v37 += 8;
  v15(v10, v6);
  v16 = objc_autoreleasePoolPush();
  sub_100001994();
  if (v1)
  {
    objc_autoreleasePoolPop(v16);
    __break(1u);
  }

  else
  {
    v35 = 0;
    objc_autoreleasePoolPop(v16);
    v30 = sub_10000287C();
    v18 = v17;
    v32(v5, v33, v2);
    v19 = v34;
    defaultLogger(_:)();
    v31(v5, v2);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v19;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      v25 = v6;
      v26 = sub_100002194(v30, v18, aBlock);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Created tmp dir at %s", v23, 0xCu);
      sub_10000273C(v24);

      v27 = v22;
      v28 = v25;
    }

    else
    {

      v27 = v19;
      v28 = v6;
    }

    v15(v27, v28);
    aBlock[4] = sub_100001BA8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000211C;
    aBlock[3] = &unk_100008440;
    v29 = _Block_copy(aBlock);
    xpc_activity_register("com.apple.homeenergyd.firstlaunch", XPC_ACTIVITY_CHECK_IN, v29);
    _Block_release(v29);
  }
}

uint64_t sub_100001994()
{
  v0 = type metadata accessor for Logging();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _set_user_dir_suffix();
  if (!result)
  {
    v13 = v5;
    (*(v1 + 104))(v3, enum case for Logging.daemon(_:), v0);
    defaultLogger(_:)();
    (*(v1 + 8))(v3, v0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "_set_user_dir_suffix() failed!", v11, 2u);
    }

    (*(v13 + 8))(v7, v4);
    exit(0);
  }

  return result;
}

xpc_activity_state_t sub_100001BA8(_xpc_activity_s *a1)
{
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  if (xpc_activity_get_state(a1) != 2)
  {
    result = xpc_activity_get_state(a1);
    if (result)
    {
      return result;
    }

    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v5, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Checking in for the launch activity!", v27, 2u);
    }

    (*(v7 + 8))(v10, v6);
    type metadata accessor for DaemonInitializer();
    swift_allocObject();
    v28 = DaemonInitializer.init()();
    swift_beginAccess();
    qword_10000C178 = v28;
  }

  v35 = v6;
  v19 = (v3 + 8);
  if (xpc_activity_should_defer(a1))
  {
    v20 = xpc_activity_set_state(a1, 3);
    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    if (v20)
    {
      defaultLogger(_:)();
      (*v19)(v5, v2);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Defering the first launch activity!", v23, 2u);
      }

      return (*(v7 + 8))(v18, v35);
    }

    else
    {
      defaultLogger(_:)();
      (*v19)(v5, v2);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to defer the first launch activity!", v34, 2u);
      }

      return (*(v7 + 8))(v16, v35);
    }
  }

  (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
  defaultLogger(_:)();
  (*(v3 + 8))(v5, v2);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "No need to defer the first launch activity", v31, 2u);
  }

  (*(v7 + 8))(v13, v35);
  result = swift_beginAccess();
  if (qword_10000C178)
  {

    dispatch thunk of DaemonInitializer.firstLaunchSetup()();
  }

  return result;
}

uint64_t sub_10000211C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = swift_unknownObjectRetain();
  v3(v4);

  return _swift_unknownObjectRelease(a2);
}

uint64_t sub_10000217C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002194(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002260(v11, 0, 0, 1, a1, a2);
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
    sub_100002788(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000273C(v11);
  return v7;
}

unint64_t sub_100002260(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000236C(a5, a6);
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

void *sub_10000236C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000023B8(a1, a2);
  sub_1000024E8(&off_100008360);
  return v3;
}

void *sub_1000023B8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000025D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000025D4(v10, 0);
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

uint64_t sub_1000024E8(uint64_t result)
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

  result = sub_100002648(result, v11, 1, v3);
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

void *sub_1000025D4(uint64_t a1, uint64_t a2)
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

  sub_1000027E4(&qword_10000C0A8, &qword_100005590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002648(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C0A8, &qword_100005590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000273C(void *a1)
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

uint64_t sub_100002788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000027E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000287C()
{
  v0 = objc_autoreleasePoolPush();
  sub_1000028C8(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_1000028C8(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logging();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Logger();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_autoreleasePoolPush();
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v8 = __DataStorage.init(length:)();
  v23 = 0x40000000000;
  v24 = v8;
  sub_100004A58(&v23, 0);
  v24 |= 0x4000000000000000uLL;
  sub_100004654(&v23, 65537);
  v10 = v9;
  sub_100004FA4(v23, v24);
  objc_autoreleasePoolPop(v7);
  if (!v10)
  {
LABEL_6:
    v17 = v21;
    (*(v21 + 104))(v4, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v17 + 8))(v4, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v20, 2u);
    }

    (*(v22 + 8))(v6, v25);
    exit(1);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = String.utf8CString.getter();

  v13 = realpath_DARWIN_EXTSN((v12 + 32), 0);

  if (!v13)
  {
    objc_autoreleasePoolPop(v11);
    goto LABEL_6;
  }

  v14 = String.init(cString:)();
  v16 = v15;

  objc_autoreleasePoolPop(v11);
  if (!v16)
  {
    goto LABEL_6;
  }

  *a1 = v14;
  a1[1] = v16;
}

void sub_100002BE0(uint64_t *a1@<X8>)
{
  v70 = a1;
  v65 = type metadata accessor for Logging();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Logger();
  v66 = *(v67 - 8);
  v3 = __chkstk_darwin(v67);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v62 - v6;
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = objc_autoreleasePoolPush();
  sub_100003ED8(&v71);
  if (!v1)
  {
    objc_autoreleasePoolPop(v10);
    v68 = v71;
    v69 = v72;
    v11 = objc_autoreleasePoolPush();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v12 = __DataStorage.init(length:)();
    v71 = 0x40000000000;
    v72 = v12;
    sub_100004A58(&v71, 0);
    v72 |= 0x4000000000000000uLL;
    sub_100004654(&v71, 65537);
    v14 = v13;
    sub_100004FA4(v71, v72);
    objc_autoreleasePoolPop(v11);
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = String.utf8CString.getter();

      v17 = realpath_DARWIN_EXTSN((v16 + 32), 0);

      if (v17)
      {
        v18 = String.init(cString:)();
        v20 = v19;

        objc_autoreleasePoolPop(v15);
        if (v20)
        {
          v21 = objc_autoreleasePoolPush();
          swift_allocObject();
          v22 = __DataStorage.init(length:)();
          v71 = 0x40000000000;
          v72 = v22;
          sub_100004A58(&v71, 0);
          v72 |= 0x4000000000000000uLL;
          sub_100004654(&v71, 65538);
          v24 = v23;
          sub_100004FA4(v71, v72);
          objc_autoreleasePoolPop(v21);
          if (v24)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = String.utf8CString.getter();

            v27 = realpath_DARWIN_EXTSN((v26 + 32), 0);

            if (v27)
            {
              v28 = String.init(cString:)();
              v30 = v29;

              objc_autoreleasePoolPop(v25);
              if (v30)
              {
                v31 = objc_autoreleasePoolPush();
                swift_allocObject();
                v32 = __DataStorage.init(length:)();
                v71 = 0x40000000000;
                v72 = v32;
                sub_100004A58(&v71, 0);
                v72 |= 0x4000000000000000uLL;
                sub_100004654(&v71, 0x10000);
                v34 = v33;
                sub_100004FA4(v71, v72);
                objc_autoreleasePoolPop(v31);
                if (v34)
                {
                  v35 = objc_autoreleasePoolPush();
                  v36 = String.utf8CString.getter();

                  v37 = realpath_DARWIN_EXTSN((v36 + 32), 0);

                  if (v37)
                  {
                    v38 = String.init(cString:)();
                    v40 = v39;

                    objc_autoreleasePoolPop(v35);
                    if (v40)
                    {
                      sub_1000027E4(&qword_10000C160, &qword_100005628);
                      inited = swift_initStackObject();
                      *(inited + 32) = 0xD000000000000010;
                      *(inited + 16) = xmmword_1000055D0;
                      *(inited + 40) = 0x80000001000056D0;
                      *(inited + 48) = v28;
                      *(inited + 56) = v30;
                      *(inited + 64) = 0x555F4E4957524144;
                      *(inited + 72) = 0xEF5249445F524553;
                      *(inited + 80) = v38;
                      *(inited + 88) = v40;
                      *(inited + 96) = 1162694472;
                      v42 = v68;
                      *(inited + 104) = 0xE400000000000000;
                      *(inited + 112) = v42;
                      *(inited + 120) = v69;
                      *(inited + 128) = 0x524944504D54;
                      *(inited + 136) = 0xE600000000000000;
                      *(inited + 144) = v18;
                      *(inited + 152) = v20;
                      v43 = sub_100004C5C(inited);
                      swift_setDeallocating();
                      sub_1000027E4(&qword_10000C168, &qword_100005630);
                      swift_arrayDestroy();
                      *v70 = v43;
                      return;
                    }
                  }

                  else
                  {
                    objc_autoreleasePoolPop(v35);
                  }
                }

                v56 = v64;
                v57 = v63;
                v58 = v65;
                (*(v64 + 104))(v63, enum case for Logging.daemon(_:), v65);
                defaultLogger(_:)();
                (*(v56 + 8))(v57, v58);
                v59 = Logger.logObject.getter();
                v60 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v59, v60))
                {
                  v61 = swift_slowAlloc();
                  *v61 = 0;
                  _os_log_impl(&_mh_execute_header, v59, v60, "Unable to read _CS_DARWIN_USER_DIR!", v61, 2u);
                }

                (*(v66 + 8))(v62, v67);
LABEL_24:
                exit(1);
              }
            }

            else
            {
              objc_autoreleasePoolPop(v25);
            }
          }

          v50 = v64;
          v51 = v63;
          v52 = v65;
          (*(v64 + 104))(v63, enum case for Logging.daemon(_:), v65);
          defaultLogger(_:)();
          (*(v50 + 8))(v51, v52);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Unable to read _CS_DARWIN_USER_CACHE_DIR!", v55, 2u);
          }

          (*(v66 + 8))(v7, v67);
          goto LABEL_24;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v15);
      }
    }

    v44 = v64;
    v45 = v63;
    v46 = v65;
    (*(v64 + 104))(v63, enum case for Logging.daemon(_:), v65);
    defaultLogger(_:)();
    (*(v44 + 8))(v45, v46);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v49, 2u);
    }

    (*(v66 + 8))(v9, v67);
    goto LABEL_24;
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
}

void sub_100003458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v57 = a3;
  v4 = type metadata accessor for Logging();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v58 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v56 = objc_autoreleasePoolPush();
  String.utf8CString.getter();
  v14 = _set_user_dir_suffix();

  if (!v14)
  {
    (*(v5 + 104))(v7, enum case for Logging.daemon(_:), v4);
    defaultLogger(_:)();
    (*(v5 + 8))(v7, v4);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "_set_user_dir_suffix() failed!", v53, 2u);
    }

    v58[1](v11, v8);
    exit(1);
  }

  v15 = objc_autoreleasePoolPush();
  sub_100002BE0(&v61);
  objc_autoreleasePoolPop(v15);
  v16 = v61;
  v17 = objc_autoreleasePoolPush();
  v60 = 0;
  v18 = objc_autoreleasePoolPush();
  v19 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage;

  sub_100004D70(v20, v16, &v61);

  v21 = v61;
  objc_autoreleasePoolPop(v18);
  (*(v5 + 104))(v7, enum case for Logging.daemon(_:), v4);
  defaultLogger(_:)();
  (*(v5 + 8))(v7, v4);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v55 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v61 = v26;
    *v25 = 136315138;
    v27 = Dictionary.description.getter();
    v29 = sub_100002194(v27, v28, &v61);
    v54 = v8;
    v30 = v21;
    v31 = v29;

    *(v25 + 4) = v31;
    v21 = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Sandbox parameters: %s", v25, 0xCu);
    sub_10000273C(v26);

    v58[1](v13, v54);
  }

  else
  {

    v58[1](v13, v8);
  }

  v58 = objc_autoreleasePoolPush();
  v32 = *(v21 + 2);
  if (v32)
  {
    v61 = _swiftEmptyArrayStorage;
    sub_100004B30(0, v32, 0);
    v33 = v61;
    v34 = v21 + 40;
    do
    {
      v35 = String.utf8CString.getter();

      v36 = strdup((v35 + 32));

      v61 = v33;
      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_100004B30((v37 > 1), v38 + 1, 1);
        v33 = v61;
      }

      *(v33 + 2) = v39;
      *&v33[8 * v38 + 32] = v36;
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage[2];
    v33 = _swiftEmptyArrayStorage;
    if (!v39)
    {
      goto LABEL_16;
    }
  }

  v61 = _swiftEmptyArrayStorage;
  sub_100004B00(0, v39, 0);
  v19 = v61;
  v40 = *(v61 + 2);
  v41 = 32;
  do
  {
    v42 = *&v33[v41];
    v61 = v19;
    v43 = *(v19 + 3);
    if (v40 >= v43 >> 1)
    {
      sub_100004B00((v43 > 1), v40 + 1, 1);
      v19 = v61;
    }

    *(v19 + 2) = v40 + 1;
    *&v19[8 * v40 + 32] = v42;
    v41 += 8;
    ++v40;
    --v39;
  }

  while (v39);
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_100004420(0, *(v19 + 2) + 1, 1, v19);
  }

  v44 = v55;
  v46 = *(v19 + 2);
  v45 = *(v19 + 3);
  v47 = v59;
  if (v46 >= v45 >> 1)
  {
    v19 = sub_100004420((v45 > 1), v46 + 1, 1, v19);
  }

  *(v19 + 2) = v46 + 1;
  *&v19[8 * v46 + 32] = 0;
  sub_100003B58(v19, v57, v47, &v60);

  v48 = *(v33 + 2);
  if (v48)
  {
    v49 = (v33 + 32);
    do
    {
      v50 = *v49++;
      free(v50);
      --v48;
    }

    while (v48);
  }

  objc_autoreleasePoolPop(v58);

  objc_autoreleasePoolPop(v44);
  objc_autoreleasePoolPop(v56);
}

uint64_t sub_100003B04@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100003B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for Logging();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  String.utf8CString.getter();
  v15 = sandbox_init_with_parameters();

  if (v15)
  {
    v32 = v8;
    v17 = v9;
    v18 = *a4;
    v19 = v33 + 104;
    (*(v33 + 104))(v7, enum case for Logging.daemon(_:), v5);
    v20 = (v19 - 96);
    if (v18)
    {
      defaultLogger(_:)();
      (*v20)(v7, v5);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v34 = v27;
        *v26 = 136315138;
        v28 = String.init(cString:)();
        v30 = sub_100002194(v28, v29, &v34);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "sandbox_init_with_parameters failed!: [%s]", v26, 0xCu);
        sub_10000273C(v27);
      }

      (*(v17 + 8))(v12, v32);
    }

    else
    {
      defaultLogger(_:)();
      (*v20)(v7, v5);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "sandbox_init_with_parameters failed! (no error)", v23, 2u);
      }

      (*(v17 + 8))(v14, v32);
    }

    exit(1);
  }

  return result;
}

uint64_t sub_100003ED8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = getuid();
  v14 = getpwuid(v13);
  if (!v14 || !v14->pw_dir)
  {
    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v5, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = getuid();
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get passwd entry for uid %u", v20, 8u);
    }

    (*(v7 + 8))(v10, v6);
    exit(1);
  }

  if (!realpath_DARWIN_EXTSN(v14->pw_dir, 0))
  {
    v32 = v7;
    (*(v3 + 104))(v5, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v5, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v23 = 136315650;
      v24 = String.init(cString:)();
      v26 = sub_100002194(v24, v25, v33);

      *(v23 + 4) = v26;
      *(v23 + 12) = 1024;
      *(v23 + 14) = errno.getter();
      *(v23 + 18) = 2080;
      v27 = errno.getter();
      if (!strerror(v27))
      {
        __break(1u);
      }

      v28 = String.init(cString:)();
      v30 = sub_100002194(v28, v29, v33);

      *(v23 + 20) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Sandbox: realpath(%s)\nfor home directory failed %d (%s)", v23, 0x1Cu);
      swift_arrayDestroy();
    }

    (*(v32 + 8))(v12, v6);
    exit(1);
  }

  v33[0] = String.init(cString:)();
  v33[1] = v15;
  *a1 = String.init<A>(_:)();
  a1[1] = v16;
}

char *sub_100004314(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C158, &qword_100005620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100004420(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C148, &qword_100005610);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_100004524(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000459C(a1, a2, v4);
}

unint64_t sub_10000459C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100004654(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v15 = a2;
      sub_100004FA4(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_100003B04(v16, v15, &v17);
      if (!v2)
      {
        result = v17;
      }

      v9 = *&v16[8] | ((*&v16[12] | (v16[14] << 16)) << 32);
      *a1 = *v16;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100004FA4(v6, v5);
    *a1 = xmmword_1000055E0;
    sub_100004FA4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1000049B8(v6, v6 >> 32, v11, v3);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {

    sub_100004FA4(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000055E0;
    sub_100004FA4(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v17;
    result = sub_1000049B8(*(v17 + 16), *(v17 + 24), v18, v3);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = sub_100003B04(v16, a2, &v17);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1000049B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100003B04((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100004A58(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

char *sub_100004B00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004B60(a1, a2, a3, *v3, &qword_10000C148, &qword_100005610);
  *v3 = result;
  return result;
}

char *sub_100004B30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004B60(a1, a2, a3, *v3, &qword_10000C150, &qword_100005618);
  *v3 = result;
  return result;
}

char *sub_100004B60(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000027E4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

unint64_t sub_100004C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000027E4(&qword_10000C170, &qword_100005638);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100004524(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100004D70(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v33 = a3;
  v31 = result;
  while (v9)
  {
    v14 = v9;
LABEL_12:
    v9 = (v14 - 1) & v14;
    if (*(a2 + 16))
    {
      v16 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
      v17 = *v16;
      v18 = v16[1];

      v34 = v17;
      v19 = sub_100004524(v17, v18);
      if (v20)
      {
        v21 = (*(a2 + 56) + 16 * v19);
        v22 = v21[1];
        v32 = *v21;
        v23 = *a3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_100004314(0, *(v23 + 2) + 1, 1, v23);
          *a3 = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100004314((v25 > 1), v26 + 1, 1, v23);
          *v33 = v23;
        }

        *(v23 + 2) = v26 + 1;
        v27 = &v23[16 * v26];
        *(v27 + 4) = v34;
        *(v27 + 5) = v18;
        v28 = *v33;
        v30 = *(*v33 + 2);
        v29 = *(*v33 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_100004314((v29 > 1), v30 + 1, 1, v28);
          *v33 = v28;
        }

        *(v28 + 2) = v30 + 1;
        v13 = &v28[16 * v30];
        *(v13 + 4) = v32;
        *(v13 + 5) = v22;
        v5 = v31;
        a3 = v33;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v14 = *(v6 + 8 * v15);
    ++v12;
    if (v14)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004FA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}