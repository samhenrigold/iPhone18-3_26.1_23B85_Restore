void sub_100001A50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    buf.val[0] = 134217984;
    *&buf.val[1] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received XPC event reply from [%llu]", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  xpc_dictionary_get_audit_token();
  v15 = buf;
  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v15);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.localizationswitcher", 0);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFBooleanGetTypeID())
  {
    CFRelease(v8);
LABEL_11:
    CFRelease(v6);
    goto LABEL_12;
  }

  Value = CFBooleanGetValue(v8);
  CFRelease(v8);
  CFRelease(v6);
  if (Value)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "bundleID", [*(a1 + 32) UTF8String]);
    v12 = [*(a1 + 40) publisher];
    xpc_event_publisher_fire();

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 32);
      v15.val[0] = 134218242;
      *&v15.val[1] = v13;
      LOWORD(v15.val[3]) = 2114;
      *(&v15.val[3] + 2) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Fired XPC event to [%llu] with bundle ID [%{public}@]", &v15, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004EBC();
  }

LABEL_14:
}

void start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting localizationswitcherd...", v2, 2u);
  }

  v0 = objc_opt_new();
  sub_100001DA4(v0);
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.localizationswitcherd"];
  [v1 setDelegate:v0];
  [v1 resume];
  sub_100001E98();
  dispatch_main();
}

void sub_100001DA4(void *a1)
{
  v1 = a1;
  v2 = dispatch_queue_create("com.apple.IntlPreferences.events", 0);
  v3 = xpc_event_publisher_create();
  [v1 setPublisher:v3];
  v5 = v1;
  v4 = v1;
  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
}

void sub_100001E98()
{
  v0 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.IntlPreferences.analytics"];
  [v0 setPreregistered:1];
  [v0 scheduleWithBlock:&stru_100008578];
}

void sub_100001EFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher received XPC_EVENT_PUBLISHER_ACTION_REMOVE, token = %llu", &v8, 0xCu);
    }

    [*(a1 + 32) removeSubscriber:a3];
  }

  else if (!a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher received XPC_EVENT_PUBLISHER_ACTION_ADD, token = %llu", &v8, 0xCu);
    }

    [*(a1 + 32) addSubscriber:a3];
  }
}

void sub_10000202C(id a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher error occurred: %d", v3, 8u);
  }
}

void sub_1000020CC(id a1, id a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.IntlPreferences.analytics";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running activity %@", &v3, 0xCu);
  }

  +[IPInternationalAnalytics reportStatistics];
  v2[2](v2, 1);
}

void sub_1000023B8(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = (*(a1[6] + 2))();
    v6 = sub_100002938(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Encountered an error [%{public}@] while terminating application with bundle ID [%{public}@] using FrontBoardServices", buf, 0x16u);
    }
  }

  else
  {
    v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v9 = [a1[5] bundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002544;
    v10[3] = &unk_1000085A0;
    v12 = a1[6];
    v11 = a1[4];
    [v8 openApplication:v9 withOptions:0 completion:v10];

    v6 = v12;
  }
}

void sub_100002544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 40) + 16);
  if (v4)
  {
    v6 = v5();
    v7 = sub_100002938(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v8;
      v9 = "Encountered an error [%{public}@] while launching application with bundle ID [%{public}@] using FrontBoardServices";
      v10 = v7;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  else
  {
    v12 = v5();
    v7 = sub_100002938(v12);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = 138543362;
      v15 = v13;
      v9 = "Application with bundle ID [%{public}@] was relaunched successfully";
      v10 = v7;
      v11 = 12;
      goto LABEL_6;
    }
  }
}

id sub_100002938(uint64_t a1)
{
  if (qword_10000C880 != -1)
  {
    sub_100004F04();
  }

  v2 = qword_10000C888;

  return v2;
}

void sub_10000297C(id a1)
{
  qword_10000C888 = os_log_create("com.apple.localizationswitcherd", "IPLocalizationSwitcher");

  _objc_release_x1();
}

uint64_t sub_1000029C0()
{
  v0 = type metadata accessor for Logger();
  sub_100004E10(v0, qword_10000C898);
  sub_100004BCC(v0, qword_10000C898);
  return Logger.init(subsystem:category:)();
}

unint64_t *sub_100002A40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_1000036C4(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100004CE8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000036C4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_100002BC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C8C(v11, 0, 0, 1, a1, a2);
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
    sub_100004CE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C48(v11);
  return v7;
}

unint64_t sub_100002C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D98(a5, a6);
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

char *sub_100002D98(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002DE4(a1, a2);
  sub_100002F14(&off_1000086D8);
  return v3;
}

char *sub_100002DE4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003000(v5, 0);
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
        v7 = sub_100003000(v10, 0);
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

uint64_t sub_100002F14(uint64_t result)
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

  result = sub_100003074(result, v11, 1, v3);
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

void *sub_100003000(uint64_t a1, uint64_t a2)
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

  sub_100004D44(&qword_10000C870, &qword_100005E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003074(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D44(&qword_10000C870, &qword_100005E88);
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

unint64_t sub_100003168(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100003484(a1, a2, v4);
}

Swift::Int sub_1000031E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004D44(&qword_10000C868, &qword_100005E80);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100003484(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10000353C()
{
  v1 = v0;
  sub_100004D44(&qword_10000C868, &qword_100005E80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1000036A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000036E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000036C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000038BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000036E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D44(&qword_10000C878, &unk_100005E90);
  v10 = *(type metadata accessor for ExtendedTriple() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ExtendedTriple() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000038BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D44(&qword_10000C860, &qword_100005E78);
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
    v10 = &_swiftEmptyArrayStorage;
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

BOOL sub_1000039C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_100003AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D44(&qword_10000C868, &qword_100005E80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003168(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100003BC4(void *a1)
{
  v129 = type metadata accessor for EntityPredicate();
  v124 = *(v129 - 8);
  v2 = __chkstk_darwin(v129);
  v127 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v126 = &v119 - v4;
  v128 = type metadata accessor for ExtendedTriple();
  v130 = *(v128 - 8);
  v5 = __chkstk_darwin(v128);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v125 = &v119 - v9;
  __chkstk_darwin(v8);
  v134 = &v119 - v10;
  v11 = type metadata accessor for LanguageView();
  v123 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSUserDefaults) init];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 arrayForKey:v15];

  if (!v16 || (v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v16, v18 = sub_100002A40(v17), , !v18))
  {
    v46 = v128;
LABEL_34:
    type metadata accessor for ViewService();
    v56 = static ViewService.clientService.getter();
    ViewService.languageView.getter();

    v57 = LanguageView.inferredLanguageTriples()();
    v121 = v13;
    v120 = a1;
    if (v57 >> 62)
    {
      v118 = v57;
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v57 = v118;
    }

    else
    {
      v64 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = v125;
    v122 = v11;
    if (v64)
    {
      v66 = v57;
      v137[0] = &_swiftEmptyArrayStorage;
      sub_1000036A4(0, v64 & ~(v64 >> 63), 0);
      if (v64 < 0)
      {
        __break(1u);
LABEL_97:
        _Block_release(v120);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v67 = v137[0];
      v133 = v66;
      if ((v66 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v64; ++i)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_100004C04(&qword_10000C848, &protocol conformance descriptor for ExtendedTriple);
          sub_100004C04(&qword_10000C850, &protocol conformance descriptor for ExtendedTriple);
          FetchableRecord<>.init(row:)();
          v137[0] = v67;
          v70 = v67[2];
          v69 = v67[3];
          if (v70 >= v69 >> 1)
          {
            sub_1000036A4((v69 > 1), v70 + 1, 1);
            v67 = v137[0];
          }

          v67[2] = v70 + 1;
          (*(v130 + 32))(v67 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v70, v7, v46);
        }
      }

      else
      {
        v132 = sub_100004C04(&qword_10000C848, &protocol conformance descriptor for ExtendedTriple);
        v131 = sub_100004C04(&qword_10000C850, &protocol conformance descriptor for ExtendedTriple);
        v71 = 32;
        do
        {

          FetchableRecord<>.init(row:)();
          v137[0] = v67;
          v73 = v67[2];
          v72 = v67[3];
          if (v73 >= v72 >> 1)
          {
            sub_1000036A4((v72 > 1), v73 + 1, 1);
            v67 = v137[0];
          }

          v67[2] = v73 + 1;
          (*(v130 + 32))(v67 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v73, v65, v46);
          v71 += 8;
          --v64;
        }

        while (v64);
      }
    }

    else
    {

      v67 = &_swiftEmptyArrayStorage;
    }

    v74 = sub_100003AC0(&_swiftEmptyArrayStorage);
    v132 = v67[2];
    if (!v132)
    {
LABEL_83:

      if (qword_10000C890 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_100004BCC(v106, qword_10000C898);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v137[0] = v110;
        *v109 = 136315138;
        v111 = Dictionary.description.getter();
        v113 = sub_100002BC0(v111, v112, v137);

        *(v109 + 4) = v113;

        _os_log_impl(&_mh_execute_header, v107, v108, "Megadome Query success. Languages: %s", v109, 0xCu);
        sub_100004C48(v110);
      }

      else
      {
      }

      v114 = v120;
      v116 = v121;
      v115 = v122;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v114[2](v114, isa);

      return (*(v123 + 8))(v116, v115);
    }

    v133 = 0;
    v75 = 0;
    v131 = v67 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v76 = v124 + 1;
    v124 = (v130 + 8);
    v125 = (v130 + 16);
    v20 = 0xE000000000000000;
    while (1)
    {
      if (v75 >= v67[2])
      {
        goto LABEL_91;
      }

      (*(v130 + 16))(v134, v131 + *(v130 + 72) * v75, v46);
      v77 = v126;
      ExtendedTriple.predicate.getter();
      v78 = EntityPredicate.rawValue.getter();
      v80 = v79;
      v81 = *v76;
      (*v76)(v77, v129);
      if (v78 == 859001680 && v80 == 0xE400000000000000)
      {
        break;
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v82)
      {
        goto LABEL_63;
      }

LABEL_64:
      v84 = v127;
      ExtendedTriple.predicate.getter();
      v85 = EntityPredicate.rawValue.getter();
      v87 = v86;
      v81(v84, v129);
      if (v85 == 0x69666E6F635F6D6ELL && v87 == 0xED000065636E6564)
      {
      }

      else
      {
        v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v88 & 1) == 0)
        {
          v46 = v128;
          (*v124)(v134, v128);
          goto LABEL_57;
        }
      }

      v89 = ExtendedTriple.object.getter();
      v137[0] = 0;
      v91 = sub_1000039C8(v89, v90, v137);

      if (v91)
      {
        v92 = *v137;
      }

      else
      {
        v92 = 0.0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137[0] = v74;
      v94 = sub_100003168(v133, v20);
      v96 = v74[2];
      v97 = (v95 & 1) == 0;
      v38 = __OFADD__(v96, v97);
      v98 = v96 + v97;
      if (v38)
      {
        goto LABEL_93;
      }

      v99 = v95;
      if (v74[3] >= v98)
      {
        v46 = v128;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = v94;
          sub_10000353C();
          v94 = v105;
          v74 = v137[0];
          if ((v99 & 1) == 0)
          {
LABEL_77:
            v74[(v94 >> 6) + 8] |= 1 << v94;
            v101 = (v74[6] + 16 * v94);
            *v101 = v133;
            v101[1] = v20;
            *(v74[7] + 8 * v94) = v92;
            v102 = *v124;

            v102(v134, v46);
            v103 = v74[2];
            v38 = __OFADD__(v103, 1);
            v104 = v103 + 1;
            if (v38)
            {
              goto LABEL_94;
            }

            v74[2] = v104;
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else
      {
        sub_1000031E0(v98, isUniquelyReferenced_nonNull_native);
        v94 = sub_100003168(v133, v20);
        v46 = v128;
        if ((v99 & 1) != (v100 & 1))
        {
          goto LABEL_97;
        }
      }

      v74 = v137[0];
      if ((v99 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_56:
      *(v74[7] + 8 * v94) = v92;
      (*v124)(v134, v46);
LABEL_57:
      if (v132 == ++v75)
      {

        goto LABEL_83;
      }
    }

LABEL_63:

    v133 = ExtendedTriple.object.getter();
    v20 = v83;
    goto LABEL_64;
  }

  v121 = v13;
  v122 = v11;
  v19 = sub_100003AC0(&_swiftEmptyArrayStorage);
  v133 = v18[2];
  if (!v133)
  {

LABEL_28:
    if (qword_10000C890 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100004BCC(v47, qword_10000C898);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v137[0] = v51;
      *v50 = 136315138;
      v52 = Dictionary.description.getter();
      v54 = sub_100002BC0(v52, v53, v137);

      *(v50 + 4) = v54;

      _os_log_impl(&_mh_execute_header, v48, v49, "Testing Override Specified. Languages: %s", v50, 0xCu);
      sub_100004C48(v51);
    }

    else
    {
    }

    v13 = v121;
    v46 = v128;
    v55 = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a1 + 2))(a1, v55);

    v11 = v122;
    goto LABEL_34;
  }

  v120 = a1;
  v20 = 0;
  v21 = (v18 + 5);
  v131 = v18;
  v132 = v7;
  while (v20 < v18[2])
  {
    v23 = *v21;
    v137[0] = *(v21 - 1);
    v137[1] = v23;
    v135 = 58;
    v136 = 0xE100000000000000;
    sub_100004C94();

    v24 = StringProtocol.components<A>(separatedBy:)();
    v25 = v24[2];
    if (v25)
    {
      v27 = v24[4];
      v26 = v24[5];
      v28 = &v24[2 * v25 + 4];
      v29 = *(v28 - 16);
      v30 = *(v28 - 8);
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v30 = 0xE300000000000000;
      v29 = 3157553;
    }

    v137[0] = 0;
    v31 = sub_1000039C8(v29, v30, v137);

    if (v31)
    {
      v32 = *v137;
    }

    else
    {
      v32 = 1.0;
    }

    if (!v26)
    {
      goto LABEL_6;
    }

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v137[0] = v19;
    v34 = sub_100003168(v27, v26);
    v36 = v19[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_90;
    }

    v40 = v35;
    if (v19[3] >= v39)
    {
      if ((v33 & 1) == 0)
      {
        v45 = v34;
        sub_10000353C();
        v34 = v45;
        if ((v40 & 1) == 0)
        {
LABEL_21:
          v19 = v137[0];
          *(v137[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
          v42 = (v19[6] + 16 * v34);
          *v42 = v27;
          v42[1] = v26;
          *(v19[7] + 8 * v34) = v32;
          v43 = v19[2];
          v38 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v38)
          {
            goto LABEL_92;
          }

          v19[2] = v44;
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
      sub_1000031E0(v39, v33);
      v34 = sub_100003168(v27, v26);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_97;
      }
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    v22 = v34;

    v19 = v137[0];
    *(*(v137[0] + 56) + 8 * v22) = v32;
LABEL_6:
    v18 = v131;
    v7 = v132;
    ++v20;
    v21 += 2;
    if (v133 == v20)
    {

      a1 = v120;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  swift_once();
  v58 = type metadata accessor for Logger();
  sub_100004BCC(v58, qword_10000C898);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Megadome Query failed.", v61, 2u);
  }

  sub_100003AC0(&_swiftEmptyArrayStorage);
  v62 = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v20 + 16))(v20, v62);
}

uint64_t sub_100004BCC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004C04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtendedTriple();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004C48(void *a1)
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

unint64_t sub_100004C94()
{
  result = qword_10000C858;
  if (!qword_10000C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C858);
  }

  return result;
}

uint64_t sub_100004CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004D44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_100004D90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t *sub_100004E10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}