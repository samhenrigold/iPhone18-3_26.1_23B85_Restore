uint64_t sub_100001400()
{
  v0 = type metadata accessor for Logger();
  sub_100001484(v0, qword_100008280);
  sub_1000014E8(v0, qword_100008280);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001484(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000014E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100001520(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  sub_1000026B8();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000080A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000014E8(v8, qword_100008280);
  (*(v4 + 16))(v7, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = URL.absoluteString.getter();
    v15 = v14;
    (*(v4 + 8))(v7, v2);
    v16 = sub_100002030(v13, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Routing game activity universalLink to gamed: %s", v11, 0xCu);
    sub_1000025A0(v12);
  }

  else
  {

    (*(v4 + 8))(v7, v2);
  }

  v17 = [objc_opt_self() proxyForLocalPlayer];
  v18 = [v17 utilityServicePrivate];

  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  aBlock[4] = sub_100001820;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001ADC;
  aBlock[3] = &unk_1000043D0;
  v22 = _Block_copy(aBlock);
  [v18 invokeGameTrampolineWithURL:v21 handler:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

void sub_100001820(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a1)
  {
    if (qword_1000080A8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000014E8(v7, qword_100008280);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Daemon callback for game activity universalLink succeeded.", v9, 2u);
    }

    goto LABEL_12;
  }

  swift_errorRetain();
  if (qword_1000080A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000014E8(v2, qword_100008280);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Daemon callback for game activity universalLink failed with error: %@", v4, 0xCu);
    sub_10000264C(v5);

LABEL_12:

    return;
  }
}

void sub_100001ADC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100001B48()
{
  v0 = sub_100001EC8(&qword_1000080B8, &qword_100002B88);
  sub_1000026B8();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  sub_100001EC8(&qword_1000080C0, &qword_100002B90);
  v6 = sub_100001F14();
  v8[0] = &type metadata for ContentView;
  v8[1] = v6;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100001F68();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_100001CAC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100001F14();
  View.onOpenURL(perform:)();
}

uint64_t sub_100001D70(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100001520(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001E48();
  static App.main()();
  return 0;
}

unint64_t sub_100001E48()
{
  result = qword_1000080B0;
  if (!qword_1000080B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080B0);
  }

  return result;
}

uint64_t sub_100001EC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001F14()
{
  result = qword_1000080C8;
  if (!qword_1000080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080C8);
  }

  return result;
}

unint64_t sub_100001F68()
{
  result = qword_1000080D0;
  if (!qword_1000080D0)
  {
    sub_100001FCC(&qword_1000080B8, &qword_100002B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080D0);
  }

  return result;
}

uint64_t sub_100001FCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002030(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000020F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000025EC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000025A0(v11);
  return v7;
}

unint64_t sub_1000020F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000021F4(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000021F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002240(a1, a2);
  sub_100002358(&off_100004368);
  return v3;
}

char *sub_100002240(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000243C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100002358(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000024AC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000243C(uint64_t a1, uint64_t a2)
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

  sub_100001EC8(&qword_1000080D8, &qword_100002B98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000024AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EC8(&qword_1000080D8, &qword_100002B98);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1000025A0(void *a1)
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

uint64_t sub_1000025EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000264C(uint64_t a1)
{
  v2 = sub_100001EC8(&qword_1000080E0, qword_100002BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}