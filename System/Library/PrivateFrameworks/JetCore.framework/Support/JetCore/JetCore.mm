int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for URL();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContainerLocation.ContainerType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D38 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v27, v28);
  v12 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v23[0] = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v23[1] = v12;
  v13 = swift_allocObject();
  v26 = xmmword_1000839C0;
  *(v13 + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v27);
  type metadata accessor for ContainerLocation();
  (*(v8 + 104))(v11, enum case for ContainerLocation.ContainerType.daemonOwner(_:), v7);
  qword_1000A6318 = ContainerLocation.__allocating_init(type:consumeSandboxToken:)();
  sub_100001D04(&qword_1000A4E18, &qword_1000839D8);
  inited = swift_initStackObject();
  *(inited + 16) = v26;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100086BC0;
  ContainerLocation.cacheDirectoryUrl.getter();
  v15 = URL.path(percentEncoded:)(0);
  (*(v24 + 8))(v6, v25);
  *(inited + 48) = v15;
  v16 = sub_1000020CC(inited);
  swift_setDeallocating();
  sub_1000021E0(inited + 32);
  qword_1000A6320 = v16;
  static Sandbox.initialize(profileName:extraParameters:)();
  TaskLocal.get()();
  sub_100001CC0(v27, v28);
  *(swift_allocObject() + 16) = v26;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v27);
  v17 = objc_opt_self();
  v18 = [v17 sharedURLCache];
  [v18 setMemoryCapacity:0];

  v19 = [v17 sharedURLCache];
  [v19 setDiskCapacity:0];

  v20 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1000A4DF0 != -1)
  {
    swift_once();
  }

  v21 = qword_1000A6458;

  objc_autoreleasePoolPop(v20);
  qword_1000A6328 = v21;
  sub_100072058();
  return 0;
}

void *sub_100001CC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001D4C(void *a1)
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

unint64_t sub_100001D98(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100001ECC(a1, a2, v4);
}

unint64_t sub_100001E10(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100083A98[v1]);
  v2 = Hasher._finalize()();

  return sub_100001F84(v1, v2);
}

unint64_t sub_100001E88(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100002004(a1, v4);
}

unint64_t sub_100001ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100001F84(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_100083A98[*(*(v2 + 48) + result)] == qword_100083A98[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100002004(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000026A8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100002704(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000020CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E50, &qword_100083A10);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100001D98(v5, v6);
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

uint64_t sub_1000021E0(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4E20, &qword_1000839E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E40, &unk_100083A00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002758(v4, &v13, &qword_1000A4E48, &unk_100086440);
      v5 = v13;
      v6 = v14;
      result = sub_100001D98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002698(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100002378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100001E10(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100002458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E60, ">m");
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100001D98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10000255C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D04(&qword_1000A4E28, &qword_1000839E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002758(v4, v13, &qword_1000A4E30, &qword_1000839F0);
      result = sub_100001E88(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100002698(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_100002698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002758(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000027D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000027F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000282C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002858(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100002898(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000028E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  v2 = static LocalPreferences.currentApplication.getter();
  v5[3] = &type metadata for DefaultBagProvider;
  v5[4] = &off_10009E9C0;
  a1[3] = type metadata accessor for BagManager(0);
  a1[4] = &off_10009E9D0;
  v3 = sub_1000061A4(a1);
  return sub_100014B94(v2, v5, v3);
}

uint64_t sub_100002960(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for ContainerLocation.ContainerType();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100002A20, 0, 0);
}

uint64_t sub_100002A20()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for ContainerLocation();
  (*(v2 + 104))(v1, enum case for ContainerLocation.ContainerType.daemonOwner(_:), v3);
  default argument 1 of ContainerLocation.init(type:consumeSandboxToken:)();
  v5 = ContainerLocation.__allocating_init(type:consumeSandboxToken:)();
  v0[2] = v5;
  ContainerLocationProtocol.prepare()();
  if (v6)
  {
  }

  else
  {
    v9 = v0[3];
    v9[3] = v4;
    v9[4] = &protocol witness table for ContainerLocation;
    *v9 = v5;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100002B38(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100002C60, 0, 0);
}

uint64_t sub_100002C60()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 136) = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_100002D30;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100002D30()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100003048;
  }

  else
  {

    v2 = sub_100002E4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002E4C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v9 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v10 = *(v0 + 152);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  dispatch thunk of ContainerLocationProtocol.cacheDirectoryUrl.getter();
  strcpy((v0 + 56), "JetPackCache");
  *(v0 + 69) = 0;
  *(v0 + 70) = -5120;
  (*(v3 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_100006518();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v4, v5);
  v6 = *(v2 + 8);
  (v6)(v1, v9);
  type metadata accessor for JetPackAssetDiskCache();
  static JetPackAssetDiskCache.prepareDefaultLocation(url:)();
  if (v10)
  {
    (v6)(*(v0 + 128), *(v0 + 104));
  }

  else
  {
    v6();
  }

  sub_100001D4C((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100003048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000030D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AssetSQLiteDatabase.Mode();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for URL();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100003218, 0, 0);
}

uint64_t sub_100003218()
{
  type metadata accessor for BaseObjectGraph();
  v0[10] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1000032D0;
  v2 = v0[9];
  v3 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v2, v3, v3);
}

uint64_t sub_1000032D0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10000353C;
  }

  else
  {

    v2 = sub_1000033EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000033EC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v10 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  type metadata accessor for AssetSQLiteDatabase();
  JetPackAssetDiskCache.DefaultLocation.databaseURL.getter();
  (*(v4 + 104))(v5, enum case for AssetSQLiteDatabase.Mode.daemon(_:), v6);
  v7 = AssetSQLiteDatabase.__allocating_init(url:mode:)();
  (*(v3 + 8))(v2, v10);
  if (!v1)
  {
    **(v0 + 16) = v7;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000353C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000035E4()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 32) = static BaseObjectGraph.current.getter();
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000036A8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_1000036A8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100003840;
  }

  else
  {

    v2 = sub_1000037C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000037C4()
{
  v1 = *(v0 + 24);
  type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  *v1 = JetPackAssetDiskCacheSQLiteMetadataStore.__allocating_init(database:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100003840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000038A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  type metadata accessor for URL();
  v3[4] = swift_task_alloc();
  v4 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100003990, 0, 0);
}

uint64_t sub_100003990()
{
  v0[8] = type metadata accessor for BaseObjectGraph();
  v0[9] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100003A4C;
  v2 = v0[7];
  v3 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v2, v3, v3);
}

uint64_t sub_100003A4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100003EA0;
  }

  else
  {

    v2 = sub_100003B68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003B68()
{
  v0[12] = static BaseObjectGraph.current.getter();
  v1 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_100003C28;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100003C28()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100003F18;
  }

  else
  {
    v2 = sub_100003D5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003D5C()
{
  v1 = v0[15];
  type metadata accessor for JetPackAssetDiskCache();
  JetPackAssetDiskCache.DefaultLocation.assetsURL.getter();

  v2 = JetPackAssetDiskCache.__allocating_init(assetsURL:metadataStore:)();
  v4 = v0[6];
  v3 = v0[7];
  if (v1)
  {
    (*(v4 + 8))(v3, v0[5]);
  }

  else
  {
    v6 = v0[3];
    (*(v4 + 8))(v3);

    *v6 = v2;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100003EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003F18()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100003FC0()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 32) = static BaseObjectGraph.current.getter();
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100004084;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100004084()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10000656C;
  }

  else
  {

    v2 = sub_1000041A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000041A0()
{
  v1 = *(v0 + 24);
  v1[3] = type metadata accessor for AssetPushSubscriptionSQLiteStore();
  v1[4] = &protocol witness table for AssetPushSubscriptionSQLiteStore;
  sub_1000061A4(v1);
  AssetPushSubscriptionSQLiteStore.init(database:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100004248()
{
  v1 = v0[53];
  type metadata accessor for BaseObjectGraph();
  v0[54] = static BaseObjectGraph.current.getter();
  v0[26] = type metadata accessor for SystemDateProvider();
  v0[27] = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v0 + 23);
  SystemDateProvider.init()();
  v2 = [objc_opt_self() sharedScheduler];
  v0[31] = sub_1000063C0();
  v0[32] = &off_10009F4F8;
  v0[28] = v2;
  v0[36] = &type metadata for DefaultRandomizer;
  v0[37] = &off_10009FAC8;
  v1[3] = &type metadata for Scheduler;
  v1[4] = &off_10009FA88;
  v3 = swift_allocObject();
  v0[55] = v3;
  *v1 = v3;
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_1000043C8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 38, v4, v4);
}

uint64_t sub_1000043C8()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1000046B8;
  }

  else
  {
    v2 = sub_1000044DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000044DC()
{
  sub_10000626C((v0 + 304), v0 + 16);
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v2[1] = sub_1000045A4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 344, v1, v1);
}

uint64_t sub_1000045A4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10000484C;
  }

  else
  {
    v2 = sub_10000473C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000046B8()
{

  sub_100001D4C((v0 + 264));
  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  sub_100006464(*(v0 + 424));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000473C()
{
  v1 = *(v0 + 440);
  sub_10000626C((v0 + 344), v0 + 56);
  sub_1000064B4(v0 + 184, v0 + 96);
  sub_100001D04(&qword_1000A4EC0, &qword_100083B38);
  sub_1000064B4(v0 + 224, v0 + 384);
  v2 = SendableWrapper.__allocating_init(_:)();

  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  *(v0 + 136) = v2;
  sub_10000626C((v0 + 264), v0 + 144);
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  v5 = *(v0 + 112);
  v7 = *(v0 + 64);
  v6 = *(v0 + 80);
  *(v1 + 96) = *(v0 + 96);
  *(v1 + 112) = v5;
  *(v1 + 64) = v7;
  *(v1 + 80) = v6;
  v9 = *(v0 + 144);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  *(v1 + 176) = *(v0 + 176);
  *(v1 + 144) = v9;
  *(v1 + 160) = v8;
  *(v1 + 128) = v10;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000484C()
{

  sub_100001D4C((v0 + 264));
  sub_100001D4C((v0 + 184));
  sub_100001D4C((v0 + 224));
  sub_100001D4C((v0 + 16));
  sub_100006464(*(v0 + 424));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000048F8()
{
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1000A4D20 != -1)
  {
    swift_once();
  }

  v2 = qword_1000A6370;
  type metadata accessor for LocalPreferences();
  v3 = v2;
  v4 = static LocalPreferences.currentApplication.getter();
  v0[5] = type metadata accessor for SystemDateProvider();
  v0[6] = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v0 + 2);
  SystemDateProvider.init()();
  v5 = type metadata accessor for PushManager(0);
  v0[8] = v5;
  objc_allocWithZone(v5);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100004A40;

  return sub_100024D24(v1, v3, v4, (v0 + 2));
}

uint64_t sub_100004A40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_100004B98;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_100004B68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004B68()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v2[3] = *(v0 + 64);
  v2[4] = &off_10009F238;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100004BD0()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 104) = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100004CA0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_100004CA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100004EA8;
  }

  else
  {

    v2 = sub_100004DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004DBC()
{
  v1 = v0[12];
  sub_1000064B4((v0 + 2), (v0 + 7));
  sub_100006284();
  v4 = swift_allocObject();
  sub_100006310((v0 + 7), v4 + 16);
  default argument 0 of CoreAnalyticsLogger.init(provider:decorator:)();
  v1[3] = type metadata accessor for CoreAnalyticsLogger();
  v1[4] = &protocol witness table for CoreAnalyticsLogger;
  sub_1000061A4(v1);
  CoreAnalyticsLogger.init(provider:decorator:)();
  sub_10000636C((v0 + 7));
  sub_100001D4C(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100004EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004F0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalPreferences();
  v2 = static LocalPreferences.currentApplication.getter();
  type metadata accessor for KillSwitchManager(0);
  v3 = swift_allocObject();
  result = PreferenceKey.init(_:)();
  *(v3 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences) = v2;
  *a1 = v3;
  a1[1] = &off_10009FEB8;
  return result;
}

uint64_t sub_100004FC0@<X0>(uint64_t *a1@<X8>)
{
  UnlockChecker = type metadata accessor for DefaultBeforeFirstUnlockChecker();
  result = swift_allocObject();
  a1[3] = UnlockChecker;
  a1[4] = &off_10009EEE0;
  *a1 = result;
  return result;
}

uint64_t sub_100005040()
{
  v0[23] = type metadata accessor for BaseObjectGraph();
  v0[24] = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100005114;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100005114()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100005588;
  }

  else
  {

    v2 = sub_100005230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005230()
{
  *(v0 + 216) = static BaseObjectGraph.current.getter();
  v1 = sub_100001D04(&qword_1000A4EA0, &qword_100083B20);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_1000052F8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v1, v1);
}

uint64_t sub_1000052F8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000055EC;
  }

  else
  {
    v2 = sub_100005428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005428()
{
  v1 = v0[22];
  sub_1000064B4((v0 + 2), (v0 + 12));
  sub_1000064B4((v0 + 7), (v0 + 17));
  v2 = v0[15];
  v3 = sub_100006154((v0 + 12), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  sub_100006154((v0 + 17), v0[20]);
  v6 = sub_100005650(v5);
  sub_100001D4C(v0 + 17);
  sub_100001D4C(v0 + 12);

  v1[3] = type metadata accessor for MetricsPipelineManager(0);
  v1[4] = &off_1000A0070;
  *v1 = v6;
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100005588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000055EC()
{
  sub_100001D4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005650(uint64_t a1)
{
  v2 = type metadata accessor for BagManager(0);
  v21 = v2;
  v22 = &off_10009E9D0;
  v3 = sub_1000061A4(v20);
  sub_100006208(a1, v3);
  v19[3] = &type metadata for SystemRestrictions;
  v19[4] = &off_10009FEF8;
  type metadata accessor for MetricsPipelineManager(0);
  v4 = swift_allocObject();
  v5 = sub_100006154(v20, v21);
  __chkstk_darwin(v5, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  sub_100006154(v19, &type metadata for SystemRestrictions);
  v17 = v2;
  v18 = &off_10009E9D0;
  v9 = sub_1000061A4(&v16);
  sub_100006208(v7, v9);
  v14 = &type metadata for SystemRestrictions;
  v15 = &off_10009FEF8;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  v11 = type metadata accessor for MetricsPipeline();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  sub_10000626C(&v16, v4 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager);
  sub_10000626C(&v13, v4 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_restrictions);
  sub_100001D4C(v19);
  sub_100001D4C(v20);
  return v4;
}

uint64_t sub_100005834()
{
  v70 = type metadata accessor for Dependency();
  v59 = *(v70 - 8);
  v0 = v59;
  v2 = __chkstk_darwin(v70, v1);
  v66 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2, v4);
  v64 = v55 - v6;
  v8 = __chkstk_darwin(v5, v7);
  v62 = v55 - v9;
  v11 = __chkstk_darwin(v8, v10);
  v61 = v55 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v71 = v55 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v72 = v55 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v60 = v55 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v25 = v55 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = v55 - v28;
  v31 = __chkstk_darwin(v27, v30);
  v33 = v55 - v32;
  v35 = __chkstk_darwin(v31, v34);
  v63 = v55 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v65 = v55 - v39;
  v41 = __chkstk_darwin(v38, v40);
  v67 = v55 - v42;
  v44 = __chkstk_darwin(v41, v43);
  v68 = v55 - v45;
  __chkstk_darwin(v44, v46);
  v69 = v55 - v47;
  sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCache.DefaultLocation();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for AssetSQLiteDatabase();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetDiskCache();
  v58 = v33;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5730, &unk_100084200);
  v57 = v29;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v56 = v25;
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5740, &unk_100085540);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&unk_1000A5750, &unk_100085550);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E90, &unk_100085E40);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A4EA0, &qword_100083B20);
  Dependency.init<A>(satisfying:with:)();
  sub_100001D04(&qword_1000A5760, &qword_100085560);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100001D04(&qword_1000A4EA8, &qword_100083B30);
  v48 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000839C0;
  (*(v0 + 16))(v49 + v48, v69, v70);
  v55[7] = BaseObjectGraph.__allocating_init(name:_:)();
  v55[6] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v55[5] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v55[4] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v55[3] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v55[2] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v55[1] = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v50 = v64;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v51 = v66;
  v59 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v52 = *(v0 + 8);
  v53 = v70;
  v52(v51, v70);
  v52(v50, v53);
  v52(v62, v53);
  v52(v61, v53);
  v52(v71, v53);
  v52(v72, v53);
  v52(v60, v53);
  v52(v56, v53);
  v52(v57, v53);
  v52(v58, v53);
  v52(v63, v53);
  v52(v65, v53);
  v52(v67, v53);
  v52(v68, v53);
  v52(v69, v53);
  return v59;
}

uint64_t sub_100006154(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_1000061A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100006208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000626C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100006284()
{
  result = qword_1000A4EB0;
  if (!qword_1000A4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4EB0);
  }

  return result;
}

uint64_t sub_1000062D8()
{
  sub_100001D4C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000063C0()
{
  result = qword_1000A4EB8;
  if (!qword_1000A4EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4EB8);
  }

  return result;
}

uint64_t sub_10000640C()
{
  sub_100001D4C(v0 + 2);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 12);

  sub_100001D4C(v0 + 18);

  return _swift_deallocObject(v0, 184, 7);
}

void *sub_100006464(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1000064B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006518()
{
  result = qword_1000A4EC8;
  if (!qword_1000A4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4EC8);
  }

  return result;
}

uint64_t sub_100006570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  sub_100001D04(&qword_1000A4EE8, &qword_100083C08);
  v7[36] = swift_task_alloc();
  v8 = type metadata accessor for JetPackAsset();
  v7[37] = v8;
  v7[38] = *(v8 - 8);
  v7[39] = swift_task_alloc();
  type metadata accessor for JetPackAssetSession.Configuration();
  v7[40] = swift_task_alloc();
  sub_100001D04(&qword_1000A4EF0, &unk_100083C10);
  v7[41] = swift_task_alloc();
  v9 = type metadata accessor for URLJetPackAssetFetcher();
  v7[42] = v9;
  v7[43] = *(v9 - 8);
  v7[44] = swift_task_alloc();
  v10 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v11 = swift_task_alloc();
  v7[45] = v11;
  *v11 = v7;
  v11[1] = sub_100006790;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v10, v10);
}

uint64_t sub_100006790()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100007A84, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for JetPackAssetDiskCache();
    v2[47] = v3;
    v4 = swift_task_alloc();
    v2[48] = v4;
    *v4 = v2;
    v4[1] = sub_10000692C;

    return BaseObjectGraph.inject<A>(_:)(v2 + 27, v3, v3);
  }
}

uint64_t sub_10000692C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_100007B24;
  }

  else
  {
    v2 = sub_100006A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006A40()
{
  v0[50] = v0[27];
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_100006B04;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_100006B04()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_100007BCC;
  }

  else
  {
    v2 = sub_100006C18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006C18()
{
  v1 = v0[41];
  v3 = v0[34];
  v2 = v0[35];
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[53] = v4;
  [v4 setTimeoutIntervalForRequest:30.0];
  v5 = String._bridgeToObjectiveC()();
  [v4 set_sourceApplicationBundleIdentifier:v5];

  [v4 setURLCache:0];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_1000168D4();
  sub_100001CC0(v0 + 2, v0[5]);
  v6 = v4;
  dispatch thunk of ContainerLocationProtocol.tmpDirectoryUrl.getter();
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_10000DC48(v3, v2);
  URLJetPackAssetFetcher.init(bagPromise:urlSessionConfiguration:downloadsBaseURL:urlSessionFactoryProvider:)();

  JetPackAssetSession.Configuration.init(cache:)();
  type metadata accessor for JetPackAssetSession();
  swift_allocObject();
  v0[54] = JetPackAssetSession.init(configuration:)();
  v8 = swift_task_alloc();
  v0[55] = v8;
  v9 = sub_10000DC58(&qword_1000A4EF8, &type metadata accessor for URLJetPackAssetFetcher, &protocol conformance descriptor for URLJetPackAssetFetcher);
  *v8 = v0;
  v8[1] = sub_100006EA8;
  v10 = v0[44];
  v11 = v0[42];
  v12 = v0[39];
  v13 = v0[30];

  return JetPackAssetSession.jetPack<A>(for:fetcher:)(v12, v13, v10, v11, v9);
}

uint64_t sub_100006EA8()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_100007C7C;
  }

  else
  {
    v2 = sub_100006FBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006FBC()
{
  if (JetPackAsset.wasReadFromCache.getter())
  {
    v2 = v0[38];
    v1 = v0[39];
    v3 = v0[37];
    v4 = v0[29];
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 22, v0[25]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 22);
    (*(v2 + 16))(v4, v1, v3);
    v5 = v0[53];
    v7 = v0[43];
    v6 = v0[44];
    v8 = v0[42];
    v9 = v0[39];
    v11 = v0[37];
    v10 = v0[38];
    sub_100007FC8(v9, v0 + 2);

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    sub_100001D4C(v0 + 7);
    sub_100001D4C(v0 + 2);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v0[57] = v14;
    *v14 = v0;
    v14[1] = sub_100007290;
    v15 = v0[47];

    return BaseObjectGraph.inject<A>(_:)(v0 + 28, v15, v15);
  }
}

uint64_t sub_100007290()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_100007D64;
  }

  else
  {
    v2 = sub_1000073A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000073A4()
{
  v0[59] = v0[28];
  v1 = JetPackAsset.cacheKey.getter();
  v3 = v2;
  v0[60] = v2;
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_10000746C;
  v5 = v0[36];

  return JetPackAssetDiskCache._asset(for:)(v5, v1, v3);
}

uint64_t sub_10000746C()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_100007E8C;
  }

  else
  {

    v2 = sub_100007588;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007588()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[43];
    v19 = v0[44];
    v17 = v0[53];
    v18 = v0[42];
    v16 = v0[39];
    sub_10000DCA0(v3, &qword_1000A4EE8, &qword_100083C08);
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 12, v0[15]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 12);
    v5 = type metadata accessor for JetPackError();
    sub_10000DC58(&qword_1000A4F00, &type metadata accessor for JetPackError, &protocol conformance descriptor for JetPackError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for JetPackError.cachedAssetNotFound(_:), v5);
    swift_willThrow();

    sub_100007FC8(v16, v0 + 2);

    (*(v2 + 8))(v16, v1);
    (*(v4 + 8))(v19, v18);
  }

  else
  {
    (*(v2 + 32))(v0[29], v3, v1);
    JetPackAsset.channelID.getter();
    JetPackAsset.channelID.setter();
    JetPackAsset.wasReadFromCache.setter();
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 17, v0[20]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 17);
    v8 = v0[53];
    v10 = v0[43];
    v9 = v0[44];
    v11 = v0[42];
    v12 = v0[39];
    v14 = v0[37];
    v13 = v0[38];
    sub_100007FC8(v12, v0 + 2);

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100007A84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007B24()
{
  sub_100001D4C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007BCC()
{

  sub_100001D4C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100007C7C()
{
  v1 = v0[53];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];

  (*(v3 + 8))(v2, v4);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100007D64()
{
  v1 = v0[53];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  sub_100007FC8(v5, v0 + 2);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100007E8C()
{
  v1 = v0[53];
  v2 = v0[43];
  v9 = v0[44];
  v3 = v0[42];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];

  sub_100007FC8(v5, v0 + 2);

  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v9, v3);
  sub_100001D4C(v0 + 7);
  sub_100001D4C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100007FC8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8, v4);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001D04(&qword_1000A4F08, &qword_100083C28);
  __chkstk_darwin(v10 - 8, v11);
  v13 = v38 - v12;
  result = JetPackAsset.wasReadFromCache.getter();
  if ((result & 1) == 0)
  {
    JetPackAsset.streamSource.getter();
    sub_100001D04(&qword_1000A4F10, &qword_100083C30);
    v15 = type metadata accessor for JetPackFileStreamSource();
    v16 = swift_dynamicCast();
    v17 = *(*(v15 - 8) + 56);
    if (v16)
    {
      v18 = *(v15 - 8);
      v17(v13, 0, 1, v15);
      v19 = JetPackFileStreamSource.path.getter();
      v21 = v20;
      (*(v18 + 8))(v13, v15);
      v22 = v19;
      sub_100001CC0(a2, a2[3]);
      dispatch thunk of ContainerLocationProtocol.tmpDirectoryUrl.getter();
      v23 = URL.path(percentEncoded:)(0);
      (*(v6 + 8))(v9, v5);
      LOBYTE(v19) = String.hasPrefix(_:)(v23);

      if (v19)
      {
        static OSLogger.jetPackAssets.getter();
        sub_100001CC0(v46, v47);
        v24 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v40 = *(*(type metadata accessor for LogMessage() - 8) + 72);
        v41 = v24;
        v25 = swift_allocObject();
        v39 = xmmword_1000839C0;
        *(v25 + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._object = 0x8000000100086EF0;
        v26._countAndFlagsBits = 0xD00000000000001ALL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v26);
        v45 = &type metadata for String;
        v44[0] = v22;
        v44[1] = v21;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v27);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C(v46);
        v28 = [objc_opt_self() defaultManager];
        v29 = String._bridgeToObjectiveC()();

        v46[0] = 0;
        v30 = [v28 removeItemAtPath:v29 error:v46];

        v31 = v46[0];
        if (v30)
        {

          return v31;
        }

        else
        {
          v38[1] = v46[0];
          v32 = v46[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static OSLogger.jetPackAssets.getter();
          sub_100001CC0(v46, v47);
          *(swift_allocObject() + 16) = v39;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v33._countAndFlagsBits = 0xD000000000000022;
          v33._object = 0x8000000100086F10;
          LogMessage.StringInterpolation.appendLiteral(_:)(v33);
          swift_getErrorValue();
          v34 = v42;
          v35 = v43;
          v45 = v43;
          v36 = sub_1000061A4(v44);
          (*(*(v35 - 1) + 16))(v36, v34, v35);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
          v37._countAndFlagsBits = 0;
          v37._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v37);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          return sub_100001D4C(v46);
        }
      }

      else
      {
      }
    }

    else
    {
      v17(v13, 1, 1, v15);
      return sub_10000DCA0(v13, &qword_1000A4F08, &qword_100083C28);
    }
  }

  return result;
}

Swift::Int sub_100008630()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000086A4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000086E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 304) = a6;
  *(v7 + 168) = a5;
  *(v7 + 176) = a7;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  v8 = type metadata accessor for JetPackAsset();
  *(v7 + 184) = v8;
  *(v7 + 192) = *(v8 - 8);
  *(v7 + 200) = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A4ED0, &qword_100083B80);
  v10 = swift_task_alloc();
  *(v7 + 208) = v10;
  *v10 = v7;
  v10[1] = sub_100008810;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v7 + 56, v9, v9);
}

uint64_t sub_100008810()
{

  if (v0)
  {

    v1 = sub_100009498;
  }

  else
  {
    v1 = sub_100008928;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100008928()
{
  if (*(v0 + 80))
  {
    sub_10000626C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = &type metadata for DefaultJetPackAssetProvider;
    *(v0 + 40) = &type metadata for DefaultJetPackAssetProvider;
    *(v0 + 48) = &off_10009E618;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  v2 = sub_100001CC0((v0 + 16), v1);
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_100008A0C;
  v6 = *(v0 + 200);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  return sub_100006570(v6, v9, v7, v8, v10, v4, v3);
}

uint64_t sub_100008A0C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100008CF8;
  }

  else
  {
    v2 = sub_100008B20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008B20(uint64_t a1)
{
  if (JetPackAsset.wasReadFromCache.getter())
  {
    if (*(v1 + 304))
    {
      (*(*(v1 + 192) + 32))(*(v1 + 136), *(v1 + 200), *(v1 + 184));
      sub_100001D4C((v1 + 16));

      v2 = *(v1 + 8);

      return v2();
    }

    else
    {
      v14 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
      v15 = swift_task_alloc();
      *(v1 + 256) = v15;
      *v15 = v1;
      v15[1] = sub_100008F24;

      return BaseObjectGraph.inject<A>(_:)(v1 + 96, v14, v14);
    }
  }

  else
  {
    v4 = *(v1 + 304);
    v5 = JetPackAsset.channelID.getter();
    v7 = v6;
    *(v1 + 232) = v6;
    v8 = swift_task_alloc();
    *(v1 + 240) = v8;
    *v8 = v1;
    v8[1] = sub_100008D68;
    v9 = *(v1 + 168);
    v10 = *(v1 + 176);
    v11 = *(v1 + 152);
    v12 = *(v1 + 160);
    v13 = *(v1 + 144);

    return sub_100009704(v5, v7, v11, v12, v9, v13, v4 & 1, v10);
  }
}

uint64_t sub_100008CF8()
{
  sub_100001D4C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100008D68()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100009564;
  }

  else
  {
    v2 = sub_100008E98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008E98()
{
  (*(v0[24] + 32))(v0[17], v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100008F24()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1000095EC;
  }

  else
  {
    v2 = sub_100009038;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009038()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1000090E0;
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];

  return sub_10002C230(v5, v2, v3, v4);
}

uint64_t sub_1000090E0()
{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100009374, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[36] = v3;
    *v3 = v2;
    v3[1] = sub_100009260;
    v4 = v2[21];
    v5 = v2[22];
    v6 = v2[19];
    v7 = v2[20];
    v8 = v2[18];

    return sub_10000A104((v2 + 2), v6, v7, v4, v8, 0, v5);
  }
}

uint64_t sub_100009260()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100009674;
  }

  else
  {
    v2 = sub_100009404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009374()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009404()
{
  sub_100001D4C(v0 + 12);
  (*(v0[24] + 32))(v0[17], v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009498()
{
  v0[5] = &type metadata for DefaultJetPackAssetProvider;
  v0[6] = &off_10009E618;
  v0[3] = 0;
  v0[2] = 0;
  v1 = sub_100001CC0(v0 + 2, &type metadata for DefaultJetPackAssetProvider);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100008A0C;
  v5 = v0[25];
  v6 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  return sub_100006570(v5, v8, v6, v7, v9, v3, v2);
}

uint64_t sub_100009564()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000095EC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009674()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100009704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a6;
  v8[33] = a8;
  v8[30] = a4;
  v8[31] = a5;
  v8[28] = a2;
  v8[29] = a3;
  v8[27] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v8[34] = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();

  return _swift_task_switch(sub_100009808, 0, 0);
}

uint64_t sub_100009808()
{
  if (v0[28])
  {
    v1 = v0[27];
    v2 = v0[28];
LABEL_5:
    v0[38] = v1;
    v0[39] = v2;
    v8 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);

    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_100009CAC;

    return BaseObjectGraph.inject<A>(_:)(v0 + 12, v8, v8);
  }

  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  (*(v4 + 8))(v3, v5);
  v2 = v0[26];
  if (v2)
  {
    v1 = v0[25];

    static OSLogger.jetPackAssets.getter();
    sub_100001CC0(v0 + 7, v0[10]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._countAndFlagsBits = 0xD00000000000004CLL;
    v6._object = 0x8000000100086E00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v0[24] = &type metadata for String;
    v0[21] = v1;
    v0[22] = v2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 21), &qword_1000A5630, &unk_100083BF0);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 7);
    goto LABEL_5;
  }

  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x7461207465737341;
  v10._object = 0xEE00203A6C727520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v0[20] = type metadata accessor for URL();
  sub_1000061A4(v0 + 17);
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 17), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0xD000000000000053;
  v11._object = 0x8000000100086DA0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100009CAC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_10000A094;
  }

  else
  {
    v2 = sub_100009DC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009DC8()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_100009E74;
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];

  return sub_100029D64(v6, v4, v5, v2, v3);
}

uint64_t sub_100009E74()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10000A01C;
  }

  else
  {
    v2 = sub_100009FA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009FA4()
{
  sub_100001D4C((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A01C()
{
  sub_100001D4C((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 472) = a6;
  *(v7 + 296) = a5;
  *(v7 + 304) = a7;
  *(v7 + 280) = a3;
  *(v7 + 288) = a4;
  *(v7 + 264) = a1;
  *(v7 + 272) = a2;
  v8 = type metadata accessor for URLJetPackAssetRequest();
  *(v7 + 312) = v8;
  v9 = *(v8 - 8);
  *(v7 + 320) = v9;
  *(v7 + 328) = *(v9 + 64);
  *(v7 + 336) = swift_task_alloc();
  sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  *(v7 + 344) = swift_task_alloc();
  sub_100001D04(&qword_1000A5770, &unk_100083BB0);
  *(v7 + 352) = swift_task_alloc();
  v10 = type metadata accessor for AssetPushSubscriptionRecord();
  *(v7 + 360) = v10;
  v11 = *(v10 - 8);
  *(v7 + 368) = v11;
  *(v7 + 376) = *(v11 + 64);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  v12 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v13 = swift_task_alloc();
  *(v7 + 416) = v13;
  *v13 = v7;
  v13[1] = sub_10000A358;

  return BaseObjectGraph.inject<A>(_:)(v7 + 104, v12, v12);
}

uint64_t sub_10000A358()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_10000AF74;
  }

  else
  {
    v2 = sub_10000A46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A46C()
{
  v1 = sub_100001CC0(v0 + 13, v0[16]);
  sub_100001CC0(v1 + 5, v1[8]);
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_10000A51C;
  v3 = v0[51];

  return sub_100015738(v3);
}

uint64_t sub_10000A51C()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v7 = *v0;

  sub_100002758(v2, v3, &unk_1000A56A0, &unk_100083E10);
  v4 = swift_task_alloc();
  *(v1 + 440) = v4;
  *v4 = v7;
  v4[1] = sub_10000A6B0;
  v5 = *(v1 + 400);

  return sub_10000FD7C(v1 + 16, v5);
}

uint64_t sub_10000A6B0()
{

  return _swift_task_switch(sub_10000A7AC, 0, 0);
}

uint64_t sub_10000A7AC()
{
  sub_10000DCA0(v0[51], &unk_1000A56A0, &unk_100083E10);
  sub_10000D6E8((v0 + 2));
  v0[56] = v0[10];
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_10000A890;

  return BaseObjectGraph.inject<A>(_:)(v0 + 18, v1, v1);
}

uint64_t sub_10000A890()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_10000B02C;
  }

  else
  {
    v2 = sub_10000A9A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A9A4()
{
  v1 = *(v0 + 464);
  sub_100001CC0((v0 + 144), *(v0 + 168));
  URLJetPackAssetRequest.usageIDOrDefault.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  if (v1)
  {

    sub_100001D4C((v0 + 144));
    sub_100001D4C((v0 + 104));

    v2 = *(v0 + 8);
    goto LABEL_21;
  }

  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);

  if ((*(v4 + 48))(v5, 1, v3) != 1)
  {
    v6 = *(*(v0 + 368) + 32);
    v6(*(v0 + 392), *(v0 + 352), *(v0 + 360));
    v7 = AssetPushSubscriptionRecord.id.getter();
    v8 = *(v0 + 392);
    if ((v7 & 0x100000000) != 0)
    {
LABEL_19:
      (*(*(v0 + 368) + 8))(v8, *(v0 + 360));
      goto LABEL_20;
    }

    v58 = v7;
    v9 = AssetPushSubscriptionRecord.assetURLString.getter();
    v11 = v10;
    v12 = URLJetPackAssetRequest._cacheKey.getter();
    if (v11)
    {
      if (v9 == v12 && v11 == v13)
      {

        goto LABEL_12;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_12:
        v15 = AssetPushSubscriptionRecord.downloadAttempts.getter();
        v16 = *(v0 + 448);
        if ((v15 & 0x100000000) != 0)
        {
          if (v16 <= 0)
          {
            goto LABEL_14;
          }
        }

        else if (v16 <= v15)
        {
LABEL_14:
          v52 = *(v0 + 384);
          v54 = *(v0 + 392);
          v17 = *(v0 + 368);
          v50 = *(v0 + 360);
          v18 = *(v0 + 336);
          v19 = *(v0 + 344);
          v21 = *(v0 + 312);
          v20 = *(v0 + 320);
          v23 = *(v0 + 264);
          v22 = *(v0 + 272);
          v24 = type metadata accessor for TaskPriority();
          (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
          (*(v20 + 16))(v18, v22, v21);
          (*(v17 + 16))(v52, v54, v50);
          sub_1000064B4(v23, v0 + 184);
          sub_1000064B4(v0 + 144, v0 + 224);
          v25 = qword_1000A4DC8;

          if (v25 != -1)
          {
            swift_once();
          }

          v57 = *(v0 + 392);
          v51 = *(v0 + 384);
          v26 = *(v0 + 368);
          v27 = *(v0 + 376);
          v47 = *(v0 + 360);
          v56 = *(v0 + 344);
          v28 = *(v0 + 320);
          v29 = *(v0 + 328);
          v44 = *(v0 + 312);
          v45 = *(v0 + 336);
          v53 = *(v0 + 472);
          v55 = *(v0 + 304);
          v48 = *(v0 + 288);
          v49 = *(v0 + 296);
          v46 = *(v0 + 280);
          v43 = qword_1000A6450;
          v30 = sub_10000DC58(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
          v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          v32 = (v29 + *(v26 + 80) + v31) & ~*(v26 + 80);
          v33 = (v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
          v34 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
          v41 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
          v39 = v30;
          v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
          v42 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
          v35 = swift_allocObject();
          *(v35 + 16) = v43;
          *(v35 + 24) = v39;
          (*(v28 + 32))(v35 + v31, v45, v44);
          v6(v35 + v32, v51, v47);
          sub_10000626C((v0 + 184), v35 + v33);
          v36 = (v35 + v34);
          *v36 = v46;
          v36[1] = v48;
          *(v35 + v41) = v49;
          v37 = v35 + v40;
          *v37 = v53 & 1;
          *(v37 + 8) = v55;
          sub_10000626C((v0 + 224), v35 + v42);
          *(v35 + ((v42 + 43) & 0xFFFFFFFFFFFFFFF8)) = v58;

          sub_100023290(0, 0, v56, &unk_100083BD8, v35);

          (*(v26 + 8))(v57, v47);
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v8 = *(v0 + 392);
    goto LABEL_19;
  }

  sub_10000DCA0(*(v0 + 352), &qword_1000A5770, &unk_100083BB0);
LABEL_20:
  sub_100001D4C((v0 + 144));
  sub_100001D4C((v0 + 104));

  v2 = *(v0 + 8);
LABEL_21:

  return v2();
}

uint64_t sub_10000AF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B02C()
{
  sub_100001D4C((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1040) = v22;
  *(v8 + 616) = v21;
  *(v8 + 608) = v20;
  *(v8 + 1048) = v19;
  *(v8 + 600) = v18;
  *(v8 + 592) = a8;
  *(v8 + 584) = a7;
  *(v8 + 576) = a6;
  *(v8 + 568) = a5;
  *(v8 + 560) = a4;
  *(v8 + 624) = type metadata accessor for AssetRequestMetricsEvent(0);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset.Metadata();
  *(v8 + 664) = v9;
  *(v8 + 672) = *(v9 - 8);
  *(v8 + 680) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 688) = v10;
  *(v8 + 696) = *(v10 - 8);
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset();
  *(v8 + 720) = v11;
  *(v8 + 728) = *(v11 - 8);
  *(v8 + 736) = swift_task_alloc();
  v12 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  *(v8 + 744) = v12;
  *(v8 + 752) = *(v12 - 8);
  *(v8 + 760) = swift_task_alloc();
  v13 = type metadata accessor for URLJetPackAssetRequest();
  *(v8 + 768) = v13;
  *(v8 + 776) = *(v13 - 8);
  *(v8 + 784) = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  *(v8 + 792) = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10000DC58(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 800) = v15;
  *(v8 + 808) = v14;

  return _swift_task_switch(sub_10000B49C, v15, v14);
}

uint64_t sub_10000B49C(uint64_t a1)
{
  v2 = *(v1 + 760);
  v3 = *(v1 + 752);
  v18 = *(v1 + 744);
  v4 = *(v1 + 688);
  v19 = *(v1 + 576);
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0((v1 + 16), *(v1 + 40));
  *(v1 + 816) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v1 + 824) = *(v5 + 72);
  *(v1 + 1044) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100086C60;
  v6._countAndFlagsBits = 0xD000000000000077;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v1 + 280) = v4;
  sub_1000061A4((v1 + 256));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v1 + 256, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v1 + 16));
  (*(v3 + 104))(v2, enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:), v18);
  URLJetPackAssetRequest.withSourcePolicy(_:)();
  (*(v3 + 8))(v2, v18);
  *(v1 + 832) = AssetPushSubscriptionRecord.downloadAttempts.getter();
  *(v1 + 840) = AssetPushSubscriptionRecord.priority.getter();
  v8 = sub_100001CC0(v19, v19[3]);
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 848) = v11;
  *v11 = v1;
  v11[1] = sub_10000B76C;
  v12 = *(v1 + 784);
  v13 = *(v1 + 736);
  v14 = *(v1 + 600);
  v15 = *(v1 + 592);
  v16 = *(v1 + 584);

  return sub_100006570(v13, v12, v16, v15, v14, v10, v9);
}

uint64_t sub_10000B76C()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_10000BAC8;
  }

  else
  {
    v5 = sub_10000B8A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000B8A8(uint64_t a1)
{
  v2 = *(v1 + 1048);
  v3 = JetPackAsset.channelID.getter();
  v5 = v4;
  *(v1 + 864) = v4;
  v6 = swift_task_alloc();
  *(v1 + 872) = v6;
  *v6 = v1;
  v6[1] = sub_10000B974;
  v7 = *(v1 + 608);
  v8 = *(v1 + 600);
  v9 = *(v1 + 592);
  v10 = *(v1 + 584);
  v11 = *(v1 + 560);

  return sub_100009704(v3, v5, v11, v10, v9, v8, v2 & 1, v7);
}

uint64_t sub_10000B974()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_10000D44C;
  }

  else
  {
    v5 = sub_10000BD48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000BAC8(uint64_t a1)
{
  v1[121] = v1[107];
  v2 = v1[88];
  v3 = v1[87];
  v14 = v1[86];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v1 + 7, v1[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100086CE0;
  v4._countAndFlagsBits = 0xD000000000000050;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = v1[48];
  v6 = v1[49];
  v1[39] = v6;
  v7 = sub_1000061A4(v1 + 36);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v1 + 36), &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v1 + 7);
  v1[63] = URLJetPackAssetRequest.usageIDOrDefault.getter();
  v1[64] = v9;
  v1[122] = v9;
  URLJetPackAssetRequest.url.getter();
  v1[65] = URL.absoluteString.getter();
  v1[66] = v10;
  v1[123] = v10;
  (*(v3 + 8))(v2, v14);
  AssetPushSubscriptionRecord.serverDate.getter();
  v11 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v12 = swift_task_alloc();
  v1[124] = v12;
  *v12 = v1;
  v12[1] = sub_10000CAF0;

  return BaseObjectGraph.inject<A>(_:)(v1 + 12, v11, v11);
}

uint64_t sub_10000BD48()
{
  v1 = *(v0 + 880);
  sub_100001CC0(*(v0 + 616), *(*(v0 + 616) + 24));
  dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
  if (v1)
  {
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));
    *(v0 + 968) = v1;
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    v25 = *(v0 + 688);
    static OSLogger.jetPackAssets.getter();
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4._object = 0x8000000100086CE0;
    v4._countAndFlagsBits = 0xD000000000000050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    swift_getErrorValue();
    v5 = *(v0 + 384);
    v6 = *(v0 + 392);
    *(v0 + 312) = v6;
    v7 = sub_1000061A4((v0 + 288));
    (*(*(v6 - 8) + 16))(v7, v5, v6);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    *(v0 + 504) = URLJetPackAssetRequest.usageIDOrDefault.getter();
    *(v0 + 512) = v9;
    *(v0 + 976) = v9;
    URLJetPackAssetRequest.url.getter();
    *(v0 + 520) = URL.absoluteString.getter();
    *(v0 + 528) = v10;
    *(v0 + 984) = v10;
    (*(v3 + 8))(v2, v25);
    AssetPushSubscriptionRecord.serverDate.getter();
    v11 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v12 = swift_task_alloc();
    *(v0 + 992) = v12;
    *v12 = v0;
    v12[1] = sub_10000CAF0;
    v13 = v0 + 96;
  }

  else
  {
    v14 = *(v0 + 712);
    v15 = *(v0 + 696);
    v16 = *(v0 + 688);
    v17 = *(v0 + 680);
    v18 = *(v0 + 672);
    v19 = *(v0 + 664);
    *(v0 + 456) = URLJetPackAssetRequest.usageIDOrDefault.getter();
    *(v0 + 464) = v20;
    *(v0 + 888) = v20;
    URLJetPackAssetRequest.url.getter();
    *(v0 + 472) = URL.absoluteString.getter();
    *(v0 + 480) = v21;
    *(v0 + 896) = v21;
    (*(v15 + 8))(v14, v16);
    JetPackAsset.metadata.getter();
    *(v0 + 488) = JetPackAsset.Metadata.assetVersion.getter();
    *(v0 + 496) = v22;
    *(v0 + 904) = v22;
    (*(v18 + 8))(v17, v19);
    AssetPushSubscriptionRecord.serverDate.getter();
    v11 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v23 = swift_task_alloc();
    *(v0 + 912) = v23;
    *v23 = v0;
    v23[1] = sub_10000C128;
    v13 = v0 + 176;
  }

  return BaseObjectGraph.inject<A>(_:)(v13, v11, v11);
}

uint64_t sub_10000C128()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {

    v3 = sub_10000C56C;
  }

  else
  {
    v4 = v2[59];
    v5 = v2[57];
    v2[116] = v2[61];
    v2[117] = v4;
    v2[118] = v5;
    v3 = sub_10000C284;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C284()
{
  v19 = v0[118];
  v20 = v0[117];
  v1 = v0[116];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[80];
  v7 = v0[78];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v4;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v10 = 0;
  }

  v21 = v10;
  if ((v5 & &_mh_execute_header) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  v17 = v5;
  v18 = v0[112];
  sub_100002758(v0[82], v6 + *(v7 + 48), &qword_1000A56E0, &unk_100083BE0);
  if (v2)
  {
    v11 = v1;
  }

  else
  {
    v11 = 0;
  }

  *v6 = v9;
  *(v6 + 8) = v8;
  *(v6 + 16) = v19;
  *(v6 + 24) = v3;
  *(v6 + 32) = v20;
  *(v6 + 40) = v18;
  *(v6 + 48) = v11;
  v12 = 0xE000000000000000;
  if (v2)
  {
    v12 = v2;
  }

  *(v6 + 56) = v12;
  *(v6 + 64) = xmmword_100083B40;
  *(v6 + 80) = 0xD000000000000018;
  *(v6 + 88) = 0x8000000100086D60;
  *(v6 + 96) = 1;
  *(v6 + 104) = v17;
  v13 = v6 + *(v7 + 52);
  *v13 = v21;
  *(v13 + 8) = BYTE4(v4) & 1;
  sub_100001CC0(v0 + 22, v0[25]);

  v14 = swift_task_alloc();
  v0[119] = v14;
  *v14 = v0;
  v14[1] = sub_10000C458;
  v15 = v0[80];

  return sub_100038808(v15);
}

uint64_t sub_10000C458()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_10000C7D0;
  }

  else
  {
    v2 = sub_10000C744;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C56C(uint64_t a1)
{
  v10 = v1[82];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v1 + 27, v1[30]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100086D40;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = v1[54];
  v4 = v1[55];
  v1[47] = v4;
  v5 = sub_1000061A4(v1 + 44);
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v1 + 44), &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v10, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v1 + 27);
  v7 = v1[101];
  v8 = v1[100];

  return _swift_task_switch(sub_10000C9B8, v8, v7);
}

uint64_t sub_10000C744()
{
  v1 = v0[82];
  sub_10000DBEC(v0[80]);
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 22);
  v2 = v0[101];
  v3 = v0[100];

  return _swift_task_switch(sub_10000C9B8, v3, v2);
}

uint64_t sub_10000C7D0()
{
  sub_10000DBEC(v0[80]);
  sub_100001D4C(v0 + 22);
  v9 = v0[82];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v0 + 27, v0[30]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100086D40;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[54];
  v3 = v0[55];
  v0[47] = v3;
  v4 = sub_1000061A4(v0 + 44);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 44), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v9, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 27);
  v6 = v0[101];
  v7 = v0[100];

  return _swift_task_switch(sub_10000C9B8, v7, v6);
}

uint64_t sub_10000C9B8()
{
  (*(v0[91] + 8))(v0[92], v0[90]);
  (*(v0[97] + 8))(v0[98], v0[96]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000CAF0()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {

    v3 = sub_10000CEDC;
  }

  else
  {
    v4 = v2[63];
    v2[126] = v2[65];
    v2[127] = v4;
    v3 = sub_10000CC28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000CC28()
{
  v1 = v0[127];
  v16 = v0[123];
  v17 = v0[126];
  v2 = v0[122];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v3;
  if ((v3 & &_mh_execute_header) != 0)
  {
    v9 = 0;
  }

  v15 = v9;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  sub_100002758(v0[81], v5 + *(v6 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v5 = v8;
  *(v5 + 8) = v7;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v17;
  *(v5 + 40) = v16;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0xD000000000000018;
  *(v5 + 88) = 0x8000000100086D60;
  *(v5 + 96) = 0;
  *(v5 + 104) = v10;
  v11 = v5 + *(v6 + 52);
  *v11 = v15;
  *(v11 + 8) = BYTE4(v3) & 1;
  sub_100001CC0(v0 + 12, v0[15]);

  v12 = swift_task_alloc();
  v0[128] = v12;
  *v12 = v0;
  v12[1] = sub_10000CDC8;
  v13 = v0[79];

  return sub_100038808(v13);
}

uint64_t sub_10000CDC8()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_10000D140;
  }

  else
  {
    v2 = sub_10000D0B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000CEDC(uint64_t a1)
{
  v10 = v1[81];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v1 + 17, v1[20]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100086D40;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = v1[51];
  v4 = v1[52];
  v1[43] = v4;
  v5 = sub_1000061A4(v1 + 40);
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v1 + 40), &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v10, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v1 + 17);
  v7 = v1[101];
  v8 = v1[100];

  return _swift_task_switch(sub_10000D328, v8, v7);
}

uint64_t sub_10000D0B4()
{
  v1 = v0[81];
  sub_10000DBEC(v0[79]);
  sub_10000DCA0(v1, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 12);
  v2 = v0[101];
  v3 = v0[100];

  return _swift_task_switch(sub_10000D328, v3, v2);
}

uint64_t sub_10000D140()
{
  sub_10000DBEC(v0[79]);
  sub_100001D4C(v0 + 12);
  v9 = v0[81];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v0 + 17, v0[20]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100086D40;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[51];
  v3 = v0[52];
  v0[43] = v3;
  v4 = sub_1000061A4(v0 + 40);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 40), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_10000DCA0(v9, &qword_1000A56E0, &unk_100083BE0);
  sub_100001D4C(v0 + 17);
  v6 = v0[101];
  v7 = v0[100];

  return _swift_task_switch(sub_10000D328, v7, v6);
}

uint64_t sub_10000D328()
{

  (*(v0[97] + 8))(v0[98], v0[96]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000D44C()
{
  (*(v0[91] + 8))(v0[92], v0[90]);
  v0[121] = v0[110];
  v1 = v0[88];
  v2 = v0[87];
  v13 = v0[86];
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0(v0 + 7, v0[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100086CE0;
  v3._countAndFlagsBits = 0xD000000000000050;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = v0[48];
  v5 = v0[49];
  v0[39] = v5;
  v6 = sub_1000061A4(v0 + 36);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 36), &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v0[63] = URLJetPackAssetRequest.usageIDOrDefault.getter();
  v0[64] = v8;
  v0[122] = v8;
  URLJetPackAssetRequest.url.getter();
  v0[65] = URL.absoluteString.getter();
  v0[66] = v9;
  v0[123] = v9;
  (*(v2 + 8))(v1, v13);
  AssetPushSubscriptionRecord.serverDate.getter();
  v10 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v11 = swift_task_alloc();
  v0[124] = v11;
  *v11 = v0;
  v11[1] = sub_10000CAF0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 12, v10, v10);
}

uint64_t sub_10000D73C()
{
  v12 = type metadata accessor for URLJetPackAssetRequest();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v11 = type metadata accessor for AssetPushSubscriptionRecord();
  v5 = *(v11 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v13 = v2 | v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((((((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v12);
  (*(v5 + 8))(v0 + v7, v11);
  sub_100001D4C((v0 + v8));

  sub_100001D4C((v0 + v9));

  return _swift_deallocObject(v0, (v9 + 43) & 0xFFFFFFFFFFFFFFF8 | 4, v13 | 7);
}

uint64_t sub_10000D908(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AssetPushSubscriptionRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v9 = (v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = v9[1];
  v13 = *v9;
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DAF8;

  return sub_10000B0EC(a1, v15, v14, v1 + v4, v1 + v7, v1 + v8, v13, v12);
}

uint64_t sub_10000DAF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DBEC(uint64_t a1)
{
  v2 = type metadata accessor for AssetRequestMetricsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DC48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DCA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DD00(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for ScheduleTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000DD24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10000DD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000DDE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000DE28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AssetRetrievalCoordinator.RetrievalMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetRetrievalCoordinator.RetrievalMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000DFEC()
{
  result = qword_1000A4F18;
  if (!qword_1000A4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F18);
  }

  return result;
}

id sub_10000E050(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10000E138(uint64_t a1, uint64_t a2)
{
  sub_10000E1B8();

  result = sub_10000E050(a1, a2, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

unint64_t sub_10000E1B8()
{
  result = qword_1000A4F20;
  if (!qword_1000A4F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4F20);
  }

  return result;
}

unint64_t sub_10000E294()
{
  result = sub_100002378(&off_10009DFA8);
  qword_1000A6330 = result;
  return result;
}

unsigned __int8 *sub_10000E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000F894(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_10000E848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100083E90[v20]);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10000EAD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001D04(&qword_1000A4E40, &unk_100083A00);
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100002698(v24, v34);
      }

      else
      {
        sub_1000125A0(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100002698(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000ED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001D04(&qword_1000A4E60, ">m");
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000F030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001D04(&qword_1000A4F50, &qword_100083E38);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
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
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void *sub_10000F2D0()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E38, &qword_1000839F8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10000F41C()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E40, &unk_100083A00);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000125A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100002698(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10000F5C0()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4E60, ">m");
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

        result = v20;
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

void *sub_10000F72C()
{
  v1 = v0;
  sub_100001D04(&qword_1000A4F50, &qword_100083E38);
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

uint64_t sub_10000F894(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10000F914(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000F914(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000FA6C(v9, 0), v12 = sub_10000FAE0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10000FA6C(uint64_t a1, uint64_t a2)
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

  sub_100001D04(&qword_1000A4F48, &qword_100083E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000FAE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000FD00(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000FD00(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000FD00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000FD7C(uint64_t a1, uint64_t a2)
{
  v2[74] = a2;
  v2[73] = a1;
  v3 = sub_100001D04(&qword_1000A4F28, &qword_100083DF8);
  v2[75] = v3;
  v2[76] = *(v3 - 8);
  v2[77] = swift_task_alloc();
  v4 = sub_100001D04(&qword_1000A4F30, &unk_100083E00);
  v2[78] = v4;
  v2[79] = *(v4 - 8);
  v2[80] = swift_task_alloc();
  v5 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v2[81] = v5;
  v2[82] = *(v5 - 8);
  v2[83] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v2[84] = swift_task_alloc();
  v6 = type metadata accessor for Bag();
  v2[85] = v6;
  v2[86] = *(v6 - 8);
  v2[87] = swift_task_alloc();

  return _swift_task_switch(sub_10000FFB0, 0, 0);
}

uint64_t sub_10000FFB0()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  sub_1000124C8(v0[74], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100012538(v0[84]);
    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 20, v0[23]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C(v0 + 20);
    if (qword_1000A4D10 != -1)
    {
      swift_once();
    }

    v4 = v0[74];
    v5 = qword_1000A6330;

    sub_100012538(v4);
    v6 = v0[73];
    *v6 = 0x3FE999999999999ALL;
    *(v6 + 8) = v5;
    *(v6 + 16) = xmmword_100083DB0;
    *(v6 + 32) = xmmword_100083DC0;
    *(v6 + 48) = xmmword_100083DD0;
    *(v6 + 64) = 8;
    *(v6 + 72) = xmmword_100083DE0;

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[86] + 32))(v0[87], v0[84], v0[85]);
    v9 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v10 = swift_task_alloc();
    v0[88] = v10;
    *v10 = v0;
    v10[1] = sub_10001033C;
    v11 = v0[81];

    return Bag.Value.current(or:)(v0 + 70, sub_10000E204, 0, v11);
  }
}

uint64_t sub_10001033C()
{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 656);
  v4 = *(*v0 + 648);

  v5 = *(v3 + 8);
  *(v1 + 712) = v5;
  *(v1 + 720) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_1000104A4, 0, 0);
}

uint64_t sub_1000104A4()
{
  v0[91] = v0[70];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_1000105A0;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 69, sub_1000126D0, 0, v3);
}

uint64_t sub_1000105A0()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_100010700, 0, 0);
}

uint64_t sub_100010700()
{
  v0[93] = v0[69];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = sub_1000107FC;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 60, sub_10000E228, 0, v3);
}

uint64_t sub_1000107FC()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_10001095C, 0, 0);
}

uint64_t sub_10001095C()
{
  v0[95] = v0[60];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_100010A58;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 61, sub_10000E238, 0, v3);
}

uint64_t sub_100010A58()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_100010BB8, 0, 0);
}

uint64_t sub_100010BB8()
{
  v0[97] = v0[61];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[98] = v2;
  *v2 = v0;
  v2[1] = sub_100010CB4;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 62, sub_10000E24C, 0, v3);
}

uint64_t sub_100010CB4()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_100010E14, 0, 0);
}

uint64_t sub_100010E14()
{
  v0[99] = v0[62];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[100] = v2;
  *v2 = v0;
  v2[1] = sub_100010F10;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 63, sub_10000E25C, 0, v3);
}

uint64_t sub_100010F10()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_100011070, 0, 0);
}

uint64_t sub_100011070()
{
  v0[101] = v0[63];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[102] = v2;
  *v2 = v0;
  v2[1] = sub_10001116C;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 64, sub_10000E268, 0, v3);
}

uint64_t sub_10001116C()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_1000112CC, 0, 0);
}

uint64_t sub_1000112CC()
{
  v0[103] = v0[64];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[104] = v2;
  *v2 = v0;
  v2[1] = sub_1000113C8;
  v3 = v0[78];

  return Bag.Value.current(or:)(v0 + 65, sub_10000E274, 0, v3);
}

uint64_t sub_1000113C8()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v3 = *(*v0 + 624);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100011520, 0, 0);
}

uint64_t sub_100011520()
{
  v0[105] = v0[65];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[106] = v2;
  *v2 = v0;
  v2[1] = sub_10001161C;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 66, sub_10000E280, 0, v3);
}

uint64_t sub_10001161C()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_10001177C, 0, 0);
}

uint64_t sub_10001177C()
{
  v0[107] = v0[66];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_100011878;
  v3 = v0[81];

  return Bag.Value.current(or:)(v0 + 67, sub_1000126D0, 0, v3);
}

uint64_t sub_100011878()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 648);

  v1(v2, v3);

  return _swift_task_switch(sub_1000119D8, 0, 0);
}

uint64_t sub_1000119D8()
{
  v0[109] = v0[67];
  v1 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v2 = swift_task_alloc();
  v0[110] = v2;
  *v2 = v0;
  v2[1] = sub_100011ABC;
  v3 = v0[75];

  return Bag.Value.currentOrNil()(v0 + 68, v3);
}

uint64_t sub_100011ABC()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100011C14, 0, 0);
}

uint64_t sub_100011C14()
{
  v84 = v0;
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = sub_100002378(_swiftEmptyArrayStorage);
    v3 = 0;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v7 = (63 - v5) >> 6;
    v82 = v2;
    while (1)
    {
      while (1)
      {
        if (!v6)
        {
          if (v7 <= v3 + 1)
          {
            v9 = v3 + 1;
          }

          else
          {
            v9 = v7;
          }

          v10 = v9 - 1;
          while (1)
          {
            v8 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (v8 >= v7)
            {
              v6 = 0;
              *(v0 + 152) = 0;
              *(v0 + 136) = 0u;
              *(v0 + 120) = 0u;
              *(v0 + 104) = 0u;
              v3 = v10;
              *(v0 + 88) = 0u;
              goto LABEL_18;
            }

            v6 = *(v1 + 64 + 8 * v8);
            ++v3;
            if (v6)
            {
              v3 = v8;
              goto LABEL_17;
            }
          }

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

        v8 = v3;
LABEL_17:
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = v11 | (v8 << 6);
        sub_1000026A8(*(v1 + 48) + 40 * v12, v0 + 200);
        sub_1000125A0(*(v1 + 56) + 32 * v12, v0 + 320);
        *(v0 + 88) = *(v0 + 200);
        *(v0 + 104) = *(v0 + 216);
        *(v0 + 120) = *(v0 + 232);
        sub_100002698((v0 + 320), (v0 + 128));
LABEL_18:
        *(v0 + 80) = *(v0 + 152);
        v13 = *(v0 + 136);
        *(v0 + 48) = *(v0 + 120);
        *(v0 + 64) = v13;
        v14 = *(v0 + 104);
        *(v0 + 16) = *(v0 + 88);
        *(v0 + 32) = v14;
        if (!*(v0 + 40))
        {

          v60 = v82;
          if (v82[2])
          {
            v61 = *(v0 + 696);
            v62 = *(v0 + 688);
            v63 = *(v0 + 680);
            v64 = *(v0 + 592);
            goto LABEL_120;
          }

          goto LABEL_118;
        }

        sub_100002698((v0 + 56), (v0 + 352));
        v15 = *(v0 + 32);
        *(v0 + 240) = *(v0 + 16);
        *(v0 + 256) = v15;
        *(v0 + 272) = *(v0 + 48);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v17 = *(v0 + 448);
        v16 = *(v0 + 456);
        v18 = HIBYTE(v16) & 0xF;
        v19 = v17 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v17 & 0xFFFFFFFFFFFFLL)
        {
          break;
        }

        sub_100001D4C((v0 + 352));
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v24 = sub_10000E2BC(*(v0 + 448), *(v0 + 456), 10);
        v80 = v59;

        if (v80)
        {
          goto LABEL_6;
        }

        goto LABEL_83;
      }

      if ((v16 & 0x2000000000000000) != 0)
      {
        v83[0] = *(v0 + 448);
        v83[1] = v16 & 0xFFFFFFFFFFFFFFLL;
        if (v17 == 43)
        {
          if (!v18)
          {
            goto LABEL_127;
          }

          v21 = (v18 - 1);
          if (v18 != 1)
          {
            v24 = 0;
            v35 = v83 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v37 + v36);
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (!v18)
          {
            goto LABEL_125;
          }

          v21 = (v18 - 1);
          if (v18 != 1)
          {
            v24 = 0;
            v28 = v83 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v30 - v29);
              if (__OFSUB__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v21)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v18)
        {
          v24 = 0;
          v40 = v83;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = (v42 + v41);
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v18)
            {
LABEL_80:
              LOBYTE(v21) = 0;
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        if ((v17 & 0x1000000000000000) != 0)
        {
          v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter();
        }

        v22 = *v21;
        if (v22 == 43)
        {
          if (v19 < 1)
          {
            goto LABEL_124;
          }

          v31 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (!v21)
            {
              goto LABEL_82;
            }

            v32 = v21 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v34 + v33);
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v31)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (v19 < 1)
          {
            goto LABEL_126;
          }

          v23 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            if (!v21)
            {
              goto LABEL_82;
            }

            v25 = v21 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = (v27 - v26);
              if (__OFSUB__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v19)
        {
          v24 = 0;
          if (!v21)
          {
            goto LABEL_82;
          }

          while (1)
          {
            v38 = *v21 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = (v39 + v38);
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_80;
            }
          }
        }
      }

      v24 = 0;
      LOBYTE(v21) = 1;
LABEL_82:
      v43 = v21;

      if (v43)
      {
        goto LABEL_6;
      }

LABEL_83:
      if (v24 > 3)
      {
        if (v24 == 4)
        {
          v44 = 3;
        }

        else if (v24 == 5)
        {
          v44 = 4;
        }

        else
        {
          if (v24 != 99)
          {
            goto LABEL_6;
          }

          v44 = 5;
        }
      }

      else if (v24 == 1)
      {
        v44 = 0;
      }

      else if (v24 == 2)
      {
        v44 = 1;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_6;
        }

        v44 = 2;
      }

      sub_1000125A0(v0 + 352, v0 + 384);
      sub_100001D04(&qword_1000A4F40, &unk_100083E20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      v45 = *(v0 + 568);
      *(v0 + 464) = 0x74756F6C6C6F72;
      *(v0 + 472) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v45 + 16) || (v46 = sub_100001E88(v0 + 280), (v47 & 1) == 0))
      {

        sub_100002704(v0 + 280);
        goto LABEL_6;
      }

      sub_1000125A0(*(v45 + 56) + 32 * v46, v0 + 416);
      sub_100002704(v0 + 280);

      if (swift_dynamicCast())
      {
        v48 = *(v0 + 576);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v82;
        v50 = sub_100001E10(v44);
        v51 = v82[2];
        v52 = (v49 & 1) == 0;
        result = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          return result;
        }

        if (v82[3] >= result)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v49 & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v78 = v49;
            v81 = v50;
            sub_10000F2D0();
            v50 = v81;
            v82 = v83[0];
            if ((v78 & 1) == 0)
            {
              goto LABEL_104;
            }
          }

LABEL_108:
          *(v82[7] + 8 * v50) = v48;
          goto LABEL_6;
        }

        v77 = v49;
        sub_10000E848(result, isUniquelyReferenced_nonNull_native);
        v82 = v83[0];
        v54 = sub_100001E10(v44);
        if ((v77 & 1) != (v55 & 1))
        {
          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v50 = v54;
        if (v77)
        {
          goto LABEL_108;
        }

LABEL_104:
        v82[(v50 >> 6) + 8] |= 1 << v50;
        *(v82[6] + v50) = v44;
        *(v82[7] + 8 * v50) = v48;
        result = sub_100001D4C((v0 + 352));
        v56 = v82[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_131;
        }

        v82[2] = v58;
      }

      else
      {
LABEL_6:
        sub_100001D4C((v0 + 352));
      }
    }
  }

LABEL_118:
  if (qword_1000A4D10 != -1)
  {
LABEL_128:
    swift_once();
  }

  v61 = *(v0 + 696);
  v62 = *(v0 + 688);
  v63 = *(v0 + 680);
  v65 = *(v0 + 592);
  v60 = qword_1000A6330;

  v64 = v65;
LABEL_120:
  sub_100012538(v64);
  (*(v62 + 8))(v61, v63);
  v66 = *(v0 + 872);
  v67 = *(v0 + 856);
  v68 = *(v0 + 840);
  v69 = *(v0 + 824);
  v70 = *(v0 + 808);
  v71 = *(v0 + 792);
  v72 = *(v0 + 776);
  v73 = *(v0 + 760);
  v74 = *(v0 + 744);
  v75 = *(v0 + 584);
  *v75 = *(v0 + 728);
  v75[1] = v60;
  v75[2] = v74;
  v75[3] = v73;
  v75[4] = v72;
  v75[5] = v71;
  v75[6] = v70;
  v75[7] = v69;
  v75[8] = v68;
  v75[9] = v67;
  v75[10] = v66;

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1000124C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012538(uint64_t a1)
{
  v2 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000125A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100012600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100012624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10001266C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000126D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a2;
  v4[46] = a4;
  v4[44] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[47] = swift_task_alloc();
  v5 = type metadata accessor for DaemonPushSubscriptionRequest.State();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000127C4, 0, 0);
}

uint64_t sub_1000127C4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  DaemonPushSubscriptionRequest.state.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for DaemonPushSubscriptionRequest.State.subscribe(_:))
  {
    v5 = v0[50];
    (*(v0[49] + 96))(v5, v0[48]);
    v6 = *v5;
    v0[51] = *v5;
    v7 = v5[1];
    v0[52] = v7;
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 22, v0[25]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._object = 0x8000000100087250;
    v8._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v0[43] = &type metadata for String;
    v0[40] = v6;
    v0[41] = v7;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 40));
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 22);
    v10 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v11 = swift_task_alloc();
    v0[53] = v11;
    *v11 = v0;
    v11[1] = sub_100012B68;
    v12 = v0 + 27;
    goto LABEL_7;
  }

  if (v4 == enum case for DaemonPushSubscriptionRequest.State.unsubscribe(_:))
  {
    v13 = v0[50];
    (*(v0[49] + 96))(v13, v0[48]);
    v0[56] = *v13;
    v0[57] = v13[1];
    v10 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v14 = swift_task_alloc();
    v0[58] = v14;
    *v14 = v0;
    v14[1] = sub_100012F20;
    v12 = v0 + 2;
LABEL_7:

    return BaseObjectGraph.inject<A>(_:)(v12, v10, v10);
  }

  v15 = v0[48];

  return _diagnoseUnexpectedEnumCase<A>(type:)(v15, v15);
}

uint64_t sub_100012B68()
{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = sub_100013A2C;
  }

  else
  {
    v2 = sub_100012C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100012C84()
{
  v2 = v0[51];
  v1 = v0[52];
  sub_100001CC0(v0 + 27, v0[30]);
  v3 = type metadata accessor for PushManager(0);
  sub_100038268(v2, v1, v3, &off_10009F238);

  sub_100001CC0(v0 + 27, v0[30]);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_100012D84;

  return sub_100028A34();
}

uint64_t sub_100012D84(uint64_t a1)
{

  return _swift_task_switch(sub_100012E8C, 0, 0);
}

uint64_t sub_100012E8C()
{
  DaemonResponse.init<>(_:)();
  sub_100001D4C((v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100012F20()
{
  *(*v1 + 472) = v0;

  if (v0)
  {

    v2 = sub_100013C94;
  }

  else
  {
    v2 = sub_10001303C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001303C()
{
  v1 = v0[57];
  if (v1)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v2 = v0[56];
    TaskLocal.get()();
    sub_100001CC0(v0 + 17, v0[20]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._object = 0x8000000100087220;
    v3._countAndFlagsBits = 0xD000000000000025;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    v0[39] = &type metadata for String;
    v0[36] = v2;
    v0[37] = v1;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 36));
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 17);
    sub_100001CC0(v0 + 2, v0[5]);
    v5 = type metadata accessor for PushManager(0);
    sub_100038280(v2, v1, v5, &off_10009F238);

    sub_100001CC0(v0 + 2, v0[5]);
    v6 = swift_task_alloc();
    v0[62] = v6;
    *v6 = v0;
    v6[1] = sub_100013890;

    return sub_100028A34();
  }

  else
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v0 + 12, v0[15]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 12);
    sub_100001CC0(v0 + 2, v0[5]);
    v8 = swift_task_alloc();
    v0[60] = v8;
    *v8 = v0;
    v8[1] = sub_100013470;

    return sub_100027B34();
  }
}

uint64_t sub_100013470()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100013620;
  }

  else
  {
    v2 = sub_100013584;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013584()
{
  sub_100001CC0(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_100013890;

  return sub_100028A34();
}

uint64_t sub_100013620()
{
  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100087180;
  v2._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v3 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v3;
  v4 = sub_1000061A4(v0 + 32);
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100013890(uint64_t a1)
{

  return _swift_task_switch(sub_100013998, 0, 0);
}

uint64_t sub_100013998()
{
  DaemonResponse.init<>(_:)();
  sub_100001D4C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013A2C()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100087180;
  v2._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v3 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v3;
  v4 = sub_1000061A4(v0 + 32);
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100013C94()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100087180;
  v2._countAndFlagsBits = 0xD000000000000027;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v3 = type metadata accessor for DaemonPushSubscriptionRequest();
  v0[35] = v3;
  v4 = sub_1000061A4(v0 + 32);
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 32));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100013EFC(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A5630, &unk_100083BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013F78()
{
  result = qword_1000A4F58;
  if (!qword_1000A4F58)
  {
    type metadata accessor for DaemonPushSubscriptionRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F58);
  }

  return result;
}

uint64_t sub_100013FD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7759204;
  if (v2 != 1)
  {
    v4 = 0x7079746F746F7270;
    v3 = 0xED0000646F725065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685025392;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7759204;
  if (*a2 != 1)
  {
    v8 = 0x7079746F746F7270;
    v7 = 0xED0000646F725065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685025392;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000140D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100014174(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100014200(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001429C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001494C(*a1);
  *a2 = result;
  return result;
}

void sub_1000142CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7759204;
  if (v2 != 1)
  {
    v5 = 0x7079746F746F7270;
    v4 = 0xED0000646F725065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685025392;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_100014328()
{
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  sub_100014394(v1);

  xmmword_1000A6338 = v1[0];
  unk_1000A6348 = v1[1];
  result = *&v2;
  xmmword_1000A6358 = v2;
  qword_1000A6368 = v3;
  return result;
}

uint64_t sub_100014394@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v16 - v5;
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  (*(v3 + 8))(v6, v2);
  object = v16._object;
  v8 = "e to Cloud Channel";
  v9 = "CONTAINER_CACHE_DIR";
  if (v16._object)
  {
    v10 = _findStringSwitchCase(cases:string:)(&off_10009DF40, v16);

    v11 = "bfRfuTC1EfAAAHLUCeQW0A==";
    if (v10 != 1)
    {
      v11 = "e to Cloud Channel";
    }

    v12 = v10 == 2;
    if (v10 == 2)
    {
      object = 2;
    }

    else
    {
      object = v10 == 1;
    }

    if (v10 == 2)
    {
      v13 = 0xD000000000000020;
    }

    else
    {
      v13 = 0xD000000000000017;
    }

    if (v12)
    {
      v9 = "8Trk3gqBEfAAAMJxP4Ly2Q==";
      v8 = "k.push.prototype";
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v13 = 0xD000000000000017;
  }

  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = object;
  *(a1 + 8) = result;
  *(a1 + 16) = v15;
  *(a1 + 24) = v13;
  *(a1 + 32) = v9 | 0x8000000000000000;
  *(a1 + 40) = 0xD000000000000018;
  *(a1 + 48) = v8 | 0x8000000000000000;
  return result;
}

void sub_1000145DC()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8, v1);
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1000A6338;
  v3 = xmmword_1000A6358;
  v14 = qword_1000A6350;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v17, v17[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x8000000100087350;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v16 = &type metadata for PushEnvironment;
  v15[0] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v15);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C(v17);
  sub_100014998();
  v6 = static OS_dispatch_queue.main.getter();
  v7 = objc_allocWithZone(APSConnection);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:v6];

  if (v10)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v10 _setEnabledTopics:isa];

    sub_100001D04(&unk_1000A5650, &qword_100084490);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000839C0;
    *(v12 + 32) = v14;
    *(v12 + 40) = v3;

    v13 = Array._bridgeToObjectiveC()().super.isa;

    [v10 _setOpportunisticTopics:v13];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10001494C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009DF40, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100014998()
{
  result = qword_1000A4F80;
  if (!qword_1000A4F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A4F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushEnvironment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100014B40()
{
  result = qword_1000A4F88;
  if (!qword_1000A4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4F88);
  }

  return result;
}

uint64_t sub_100014B94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v8 = __chkstk_darwin(v6 - 8, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v19 - v12;
  PreferenceKey.init(_:)();
  v14 = type metadata accessor for BagManager(0);
  *(a3 + v14[5]) = a1;
  sub_1000064B4(a2, a3 + v14[6]);
  v15 = type metadata accessor for Bag();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_100001D04(&qword_1000A4FC0, &qword_100084028);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000124C8(v13, v10);

  sub_10000DCA0(v13, &unk_1000A56A0, &unk_100083E10);
  sub_100018BC0(v10, v16 + *(*v16 + class metadata base offset for ManagedBuffer + 16));
  *(a3 + v14[7]) = v16;
  sub_100001D04(&qword_1000A4FC8, &unk_100084030);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;

  result = sub_100001D4C(a2);
  *(v17 + 16) = 0;
  *(a3 + v14[8]) = v17;
  return result;
}

uint64_t sub_100014E00()
{
  v0 = type metadata accessor for BagService.ExpiredDataUsage();
  sub_100018750(v0, qword_1000A4F90);
  sub_100018718(v0, qword_1000A4F90);
  return static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
}

uint64_t sub_100014E58(char a1)
{
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  __chkstk_darwin(v2 - 8, v3);
  updated = type metadata accessor for BagService.UpdatePolicy();
  __chkstk_darwin(updated - 8, v5);
  v6 = type metadata accessor for BagService.ExpiredDataUsage();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1000A4D28 != -1)
      {
        v17 = v9;
        swift_once();
        v9 = v17;
      }

      v12 = v9;
      v13 = sub_100018718(v9, qword_1000A4F90);
      (*(v7 + 16))(v11, v13, v12);
      static BagService.UpdatePolicy.never.getter();
      static BagService.PermittedDataOrigin.networkAndPersistence.getter();
    }

    else
    {
      static BagService.ExpiredDataUsage.notPermitted.getter();
      static BagService.UpdatePolicy.never.getter();
      static BagService.PermittedDataOrigin.networkOnly.getter();
    }
  }

  else
  {
    if (qword_1000A4D28 != -1)
    {
      v18 = v9;
      swift_once();
      v9 = v18;
    }

    v14 = v9;
    v15 = sub_100018718(v9, qword_1000A4F90);
    (*(v7 + 16))(v11, v15, v14);
    static BagService.UpdatePolicy.never.getter();
    static BagService.PermittedDataOrigin.persistenceOnly.getter();
  }

  return BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
}

uint64_t sub_1000150C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E724F6568636163;
  v4 = 0xEE006B726F777465;
  if (v2 != 1)
  {
    v3 = 0x6552646563726F66;
    v4 = 0xED00006873657266;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6E4F6568636163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x4E724F6568636163;
  v8 = 0xEE006B726F777465;
  if (*a2 != 1)
  {
    v7 = 0x6552646563726F66;
    v8 = 0xED00006873657266;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6E4F6568636163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000151F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000152B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100015360(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001541C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001912C(*a1);
  *a2 = result;
  return result;
}

void sub_10001544C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEE006B726F777465;
  v5 = 0x4E724F6568636163;
  if (v2 != 1)
  {
    v5 = 0x6552646563726F66;
    v4 = 0xED00006873657266;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6E4F6568636163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000154D8()
{
  v1 = v0;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v16 - v9;
  (*(v3 + 16))(&v16 - v9, v1, v2);
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  sub_1000186C0();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v7, v2);
  if (v11)
  {
    v12(v10, v2);
    return 0x6574736973726570;
  }

  else
  {
    static BagService.PermittedDataOrigin.networkAndPersistence.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v7, v2);
    if (v14)
    {
      v12(v10, v2);
      return 0xD000000000000015;
    }

    else
    {
      static BagService.PermittedDataOrigin.networkOnly.getter();
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v12(v7, v2);
      v12(v10, v2);
      if (v15)
      {
        return 0x4F6B726F7774656ELL;
      }

      else
      {
        return 0x6E776F6E6B6E7528;
      }
    }
  }
}

uint64_t sub_100015738(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[27] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Bag();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10001588C, 0, 0);
}

uint64_t sub_10001588C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = type metadata accessor for BagManager(0);
  v6 = *(v4 + *(v5 + 28));
  *(v0 + 288) = v6;
  v7 = *v6;
  v8 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  *(v0 + 296) = v8;
  v9 = *(v7 + 48);
  *(v0 + 376) = v9;
  v10 = (v9 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v10));
  sub_1000124C8(v6 + v8, v3);
  os_unfair_lock_unlock((v6 + v10));
  v11 = *(v2 + 48);
  *(v0 + 304) = v11;
  *(v0 + 312) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v3, 1, v1) != 1)
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 200);
    v18 = *(v16 + 32);
    v18(v14, *(v0 + 240), v15);
    v18(v17, v14, v15);
    (*(v16 + 56))(v17, 0, 1, v15);
    goto LABEL_5;
  }

  v12 = *(v0 + 208);
  sub_10000DCA0(*(v0 + 240), &unk_1000A56A0, &unk_100083E10);
  v13 = *(v12 + *(v5 + 32));
  *(v0 + 320) = v13;
  os_unfair_lock_lock((v13 + 20));
  LODWORD(v12) = *(v13 + 16);
  os_unfair_lock_unlock((v13 + 20));
  if (v12 == 1)
  {
    (*(*(v0 + 256) + 56))(*(v0 + 200), 1, 1, *(v0 + 248));
LABEL_5:

    v19 = *(v0 + 8);

    return v19();
  }

  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v21 = *(v0 + 384);
  if (v21 != 2 && (v21 & 1) == 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v32 = *(v0 + 264);
    v33 = *(v0 + 224);
    TaskLocal.get()();
    sub_100001CC0((v0 + 96), *(v0 + 120));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 96));
    sub_10001653C();
    (*(v35 + 16))(v33, v32, v34);
    v25 = *(v35 + 56);
    v25(v33, 0, 1, v34);
    *(swift_task_alloc() + 16) = v33;
    os_unfair_lock_lock((v6 + v10));
    sub_100019178(v6 + v8);
    os_unfair_lock_unlock((v6 + v10));
    v26 = *(v0 + 248);
    v27 = *(v0 + 224);

    if (v11(v27, 1, v26) != 1)
    {
      os_unfair_lock_lock((v13 + 20));
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
    }

    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = *(v0 + 248);
    v31 = *(v0 + 200);
    sub_10000DCA0(*(v0 + 224), &unk_1000A56A0, &unk_100083E10);
    (*(v29 + 32))(v31, v28, v30);
    v25(v31, 0, 1, v30);
    goto LABEL_5;
  }

  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  *(v0 + 328) = qword_1000A63B0;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 336) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v22 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 344) = *(v22 + 72);
  *(v0 + 380) = *(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  *(v0 + 352) = sub_1000180DC(0);
  v23 = swift_task_alloc();
  *(v0 + 360) = v23;
  *v23 = v0;
  v23[1] = sub_100015F84;
  v24 = *(v0 + 272);

  return Promise.then()(v24);
}

uint64_t sub_100015F84()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1000162A4;
  }

  else
  {

    v2 = sub_1000160A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000160A0()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = (*(v0 + 376) + 3) & 0x1FFFFFFFCLL;
  (*(v5 + 16))(v6, *(v0 + 272), v4);
  v8 = *(v5 + 56);
  v8(v6, 0, 1, v4);
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v3 + v7));
  sub_10001866C(v3 + v2);
  os_unfair_lock_unlock((v3 + v7));
  if (!v1)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 248);
    v11 = *(v0 + 232);

    if (v9(v11, 1, v10) != 1)
    {
      v12 = *(v0 + 320);
      os_unfair_lock_lock((v12 + 20));
      *(v12 + 16) = 0;
      os_unfair_lock_unlock((v12 + 20));
    }

    v13 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 200);
    sub_10000DCA0(*(v0 + 232), &unk_1000A56A0, &unk_100083E10);
    (*(v15 + 32))(v16, v13, v14);
    v8(v16, 0, 1, v14);

    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_1000162A4()
{
  v1 = v0[40];
  v2 = v0[32];
  v10 = v0[25];
  v11 = v0[31];

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x80000001000873D0;
  v3._countAndFlagsBits = 0xD000000000000039;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = v0[21];
  v5 = v0[22];
  v0[20] = v5;
  v6 = sub_1000061A4(v0 + 17);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 17), &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));

  (*(v2 + 56))(v10, 1, 1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t type metadata accessor for BagManager(uint64_t a1)
{
  result = qword_1000A5028;
  if (!qword_1000A5028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001653C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setProfile:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 setProfileVersion:v7];

  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setExpirationDate:isa];

  v9 = [objc_opt_self() currentProcess];
  [v5 setProcessInfo:v9];

  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000839C0;
  *(inited + 32) = 1801678701;
  v11 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_100002248(inited);
  swift_setDeallocating();
  sub_10000DCA0(v11, &qword_1000A4E48, &unk_100086440);
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setData:v12];

  v17[0] = 0;
  if ([v5 buildWithError:v17])
  {
    v13 = v17[0];
    Bag.init(from:)();
  }

  else
  {
    v14 = v17[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v15._object = 0x8000000100087430;
    v15._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v15);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000168D4()
{
  v1 = type metadata accessor for Bag();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4, v7);
  v9 = &v21[-v8 - 8];
  v10 = type metadata accessor for BagManager(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8, v13);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v21[0] == 2 || (v21[0] & 1) != 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v21, v22);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v21);
    v14 = sub_1000180DC(1);
    sub_1000187B4(v0, &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_100006208(&v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
    v17 = sub_100014998();
    v18 = static OS_dispatch_queue.main.getter();
    v22 = v17;
    v23 = &protocol witness table for OS_dispatch_queue;
    *v21 = v18;
    Promise.always(on:perform:)();

    sub_100001D4C(v21);
  }

  else
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v21, v22);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v21);
    sub_10001653C();
    sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    (*(v2 + 16))(v6, v9, v1);
    v14 = Promise.__allocating_init(value:)();
    (*(v2 + 8))(v9, v1);
  }

  return v14;
}

uint64_t sub_100016DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8, v7);
  v8 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000187B4(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  sub_100006208(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);

  sub_100023290(0, 0, v11, &unk_100084020, v14);
}

uint64_t sub_100016F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v5[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[9] = v6;
  v7 = type metadata accessor for Bag();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[13] = v8;
  *v8 = v5;
  v8[1] = sub_1000170B0;

  return Promise.then()(v6);
}

uint64_t sub_1000170B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_10001755C;
  }

  else
  {
    v2 = sub_1000171CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000171CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v22 = *(v2 + 56);
  v22(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  v23 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[8];
  v20 = v0[12];
  v21 = v0[7];
  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C(v0 + 2);
  (*(v5 + 16))(v7, v20, v6);
  v22(v7, 0, 1, v6);
  v8 = type metadata accessor for BagManager(0);
  v9 = *(v21 + *(v8 + 28));
  *(swift_task_alloc() + 16) = v7;
  v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_100019178(v9 + v10);
  os_unfair_lock_unlock((v9 + v11));
  if (!v23)
  {
    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[8];

    if ((*(v13 + 48))(v14, 1, v12) != 1)
    {
      v15 = *(v0[7] + *(v8 + 32));
      os_unfair_lock_lock((v15 + 20));
      *(v15 + 16) = 0;
      os_unfair_lock_unlock((v15 + 20));
    }

    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    sub_10000DCA0(v0[8], &unk_1000A56A0, &unk_100083E10);
    (*(v17 + 8))(v16, v18);

    v19 = v0[1];

    v19();
  }
}

uint64_t sub_10001755C()
{
  v1 = v0[9];
  (*(v0[11] + 56))(v1, 1, 1, v0[10]);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10001760C()
{
  v1[25] = v0;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[26] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v1[27] = swift_task_alloc();
  v2 = type metadata accessor for Bag();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100017730, 0, 0);
}

uint64_t sub_100017730()
{
  *(v0 + 248) = type metadata accessor for BagManager(0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v1 = *(v0 + 308);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    *(v0 + 256) = qword_1000A63B0;
    TaskLocal.get()();
    sub_100001CC0((v0 + 16), *(v0 + 40));
    *(v0 + 264) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v2 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 272) = *(v2 + 72);
    *(v0 + 304) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 16));
    *(v0 + 280) = sub_1000180DC(2);
    v3 = swift_task_alloc();
    *(v0 + 288) = v3;
    *v3 = v0;
    v3[1] = sub_100017AF0;
    v4 = *(v0 + 240);

    return Promise.then()(v4);
  }

  else
  {
    if (qword_1000A4D58 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 96), *(v0 + 120));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C((v0 + 96));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100017AF0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100017E0C;
  }

  else
  {

    v2 = sub_100017C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100017C0C()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  (*(v4 + 16))(v5, v0[30], v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v7 = *(v6 + *(v2 + 28));
  *(swift_task_alloc() + 16) = v5;
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_100019178(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  if (!v1)
  {
    v10 = v0[28];
    v11 = v0[29];
    v12 = v0[27];

    if ((*(v11 + 48))(v12, 1, v10) != 1)
    {
      v13 = *(v0[25] + *(v0[31] + 32));
      os_unfair_lock_lock((v13 + 20));
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
    }

    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    sub_10000DCA0(v0[27], &unk_1000A56A0, &unk_100083E10);
    (*(v15 + 8))(v14, v16);

    v17 = v0[1];

    v17();
  }
}

uint64_t sub_100017E0C()
{

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100087530;
  v1._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  v0[20] = &type metadata for String;
  v0[17] = v2;
  v0[18] = v3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 17), &qword_1000A5630, &unk_100083BF0);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100017FD0(char a1)
{
  v3 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  __chkstk_darwin(v3, v4);
  (*(v6 + 16))(&v8[-v5], v1);
  v8[15] = a1;
  type metadata accessor for LocalPreferences();
  return Preferences.subscript.setter();
}

uint64_t sub_1000180DC(int a1)
{
  LODWORD(v35) = a1;
  v1 = type metadata accessor for BagService.PermittedDataOrigin();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1, v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BagService.Policy();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4, v5);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Bag.Profile();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8, v12);
  if (qword_1000A4D58 != -1)
  {
    swift_once();
  }

  v34 = qword_1000A63B0;
  TaskLocal.get()();
  sub_100001CC0(v46, v47);
  v33 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v32 = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v13 = swift_allocObject();
  v31 = xmmword_1000839C0;
  *(v13 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100087460;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v45 = &type metadata for BagFetchMode;
  v15 = v35;
  LOBYTE(v44[0]) = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v46);
  v17 = v10;
  Bag.Profile.init(name:version:)();
  v18 = objc_allocWithZone(AMSProcessInfo);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithBundleIdentifier:v19];

  v21 = v39;
  sub_100014E58(v15);
  TaskLocal.get()();
  v35 = v48;
  v34 = sub_100001CC0(v46, v47);
  *(swift_allocObject() + 16) = v31;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000026;
  v22._object = 0x8000000100087480;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v36;
  BagService.Policy.permittedDataOrigin.getter();
  v24 = sub_1000154D8();
  v26 = v25;
  (*(v37 + 8))(v23, v38);
  v45 = &type metadata for String;
  v44[0] = v24;
  v44[1] = v26;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v46);
  v28 = v20;
  v29 = static Bag.fetchBag(forProfile:as:usingPolicy:)();

  (*(v42 + 8))(v21, v43);
  (*(v40 + 8))(v17, v41);
  return v29;
}

uint64_t sub_10001866C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_10000DCA0(a1, &unk_1000A56A0, &unk_100083E10);
  return sub_1000124C8(v3, a1);
}

unint64_t sub_1000186C0()
{
  result = qword_1000A4FB0;
  if (!qword_1000A4FB0)
  {
    type metadata accessor for BagService.PermittedDataOrigin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4FB0);
  }

  return result;
}

uint64_t sub_100018718(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100018750(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000187B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagManager(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018818()
{
  v1 = (type metadata accessor for BagManager(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  sub_100001D4C((v0 + v3 + v1[8]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100018930(uint64_t a1)
{
  v3 = *(type metadata accessor for BagManager(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100016DC0(a1, v4);
}

uint64_t sub_1000189A0()
{
  v1 = (type metadata accessor for BagManager(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  sub_100001D4C((v0 + v3 + v1[8]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100018AC8(uint64_t a1)
{
  v4 = *(type metadata accessor for BagManager(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DAF8;

  return sub_100016F6C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100018BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100018D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100018E04(uint64_t a1)
{
  sub_100019018(319, &qword_1000A5038, &type metadata accessor for PreferenceKey);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalPreferences();
    if (v2 <= 0x3F)
    {
      sub_100018F08();
      if (v3 <= 0x3F)
      {
        sub_100018F6C(319);
        if (v4 <= 0x3F)
        {
          sub_100019018(319, &unk_1000A5050, &type metadata accessor for OSAllocatedUnfairLock);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100018F08()
{
  result = qword_1000A5040;
  if (!qword_1000A5040)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A5040);
  }

  return result;
}

void sub_100018F6C(uint64_t a1)
{
  if (!qword_1000A5048)
  {
    sub_100018FD0(&unk_1000A56A0, &unk_100083E10);
    v1 = type metadata accessor for OSAllocatedUnfairLock();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5048);
    }
  }
}

uint64_t sub_100018FD0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100019018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100019070()
{
  result = qword_1000A5090;
  if (!qword_1000A5090)
  {
    sub_100018FD0(&qword_1000A5098, qword_100084070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5090);
  }

  return result;
}

unint64_t sub_1000190D8()
{
  result = qword_1000A50A0;
  if (!qword_1000A50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50A0);
  }

  return result;
}

unint64_t sub_10001912C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E018, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000191A4()
{
  result = qword_1000A50A8;
  if (!qword_1000A50A8)
  {
    type metadata accessor for DaemonBagRefreshRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50A8);
  }

  return result;
}

uint64_t sub_1000191FC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[22] = swift_task_alloc();
  sub_100001D04(&qword_1000A5770, &unk_100083BB0);
  v2[23] = swift_task_alloc();
  v3 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v4 = swift_task_alloc();
  v2[24] = v4;
  *v4 = v2;
  v4[1] = sub_100019320;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_100019320()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1000197CC;
  }

  else
  {
    v2 = sub_100019434;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100019434()
{
  v1 = *(v0 + 200);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  DaemonPushDeleteRecordRequest.id.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(id:)();
  if (v1)
  {
    sub_100001D4C((v0 + 16));
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 56), *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v2._object = 0x8000000100087590;
    v2._countAndFlagsBits = 0xD00000000000002FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v2);
    swift_getErrorValue();
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    *(v0 + 120) = v4;
    v5 = sub_1000061A4((v0 + 96));
    (*(*(v4 - 8) + 16))(v5, v3, v4);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    DaemonResponse.init(_:)();
  }

  else
  {
    sub_10000DCA0(*(v0 + 184), &qword_1000A5770, &unk_100083BB0);
    sub_100001CC0((v0 + 16), *(v0 + 40));
    DaemonPushDeleteRecordRequest.id.getter();
    dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    _StringGuts.grow(_:)(57);
    v9._countAndFlagsBits = 0xD000000000000037;
    v9._object = 0x80000001000875C0;
    String.append(_:)(v9);
    *(v0 + 208) = DaemonPushDeleteRecordRequest.id.getter();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    DaemonResponse.init<>(_:)();
    sub_100001D4C((v0 + 16));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000197CC()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100087590;
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[16];
  v3 = v0[17];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

unint64_t sub_100019A5C()
{
  result = qword_1000A50D0;
  if (!qword_1000A50D0)
  {
    type metadata accessor for DaemonPushDeleteRecordRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50D0);
  }

  return result;
}

uint64_t sub_100019AB4(uint64_t a1)
{
  v1[72] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[73] = v2;
  v1[74] = *(v2 - 8);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v3 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1[77] = v3;
  v1[78] = *(v3 - 8);
  v1[79] = swift_task_alloc();
  v4 = type metadata accessor for Date.FormatStyle.DateStyle();
  v1[80] = v4;
  v1[81] = *(v4 - 8);
  v1[82] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[83] = v5;
  v1[84] = *(v5 - 8);
  v1[85] = swift_task_alloc();
  v6 = type metadata accessor for URL.DirectoryHint();
  v1[86] = v6;
  v1[87] = *(v6 - 8);
  v1[88] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v1[89] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v1[90] = v7;
  v1[91] = *(v7 - 8);
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v8 = type metadata accessor for ContainerLocation();
  v9 = swift_task_alloc();
  v1[94] = v9;
  *v9 = v1;
  v9[1] = sub_100019DD4;

  return BaseObjectGraph.inject<A>(_:)(v1 + 70, v8, v8);
}

uint64_t sub_100019DD4()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_10001ABF4;
  }

  else
  {
    v2 = sub_100019EE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100019EE8()
{
  ContainerLocation.cacheDirectoryUrl.getter();
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 736);
  v60 = *(v0 + 704);
  v61 = *(v0 + 720);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v58 = *(v0 + 672);
  v62 = *(v0 + 664);
  v63 = *(v0 + 728);
  v49 = *(v0 + 680);
  v50 = *(v0 + 656);
  v54 = *(v0 + 648);
  v55 = *(v0 + 640);
  v51 = *(v0 + 632);
  v52 = *(v0 + 624);
  v53 = *(v0 + 616);
  TaskLocal.get()();
  sub_100001CC0((v0 + 56), *(v0 + 80));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0x8000000100087630;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v4 = URL.path(percentEncoded:)(0);
  *(v0 + 352) = &type metadata for String;
  *(v0 + 328) = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v0 + 328);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  strcpy((v0 + 512), "testAsset.txt");
  *(v0 + 526) = -4864;
  (*(v1 + 104))(v60, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100006518();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v60, v2);
  v6 = URL.path(percentEncoded:)(0);
  v56 = *(v63 + 8);
  v56(v57, v61);
  TaskLocal.get()();
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x8000000100087650;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 384) = &type metadata for String;
  *(v0 + 360) = v6;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v0 + 360);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 96));
  Date.init()();
  static Date.FormatStyle.DateStyle.numeric.getter();
  static Date.FormatStyle.TimeStyle.complete.getter();
  v9 = Date.formatted(date:time:)();
  v11 = v10;
  (*(v52 + 8))(v51, v53);
  (*(v54 + 8))(v50, v55);
  (*(v58 + 8))(v49, v62);
  _StringGuts.grow(_:)(32);

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 fileExistsAtPath:v16];

  if ((v17 & 1) == 0)
  {
    v18 = [v14 defaultManager];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 createFileAtPath:v19 contents:0 attributes:0];

    if ((v20 & 1) == 0)
    {
      v38 = *(v0 + 744);
      v39 = *(v0 + 720);

      TaskLocal.get()();
      sub_100001CC0((v0 + 136), *(v0 + 160));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 136));
      DaemonResponse.init(reason:)();

      v45 = v38;
      v46 = v39;
      goto LABEL_12;
    }
  }

  v21 = *(v0 + 760);
  TaskLocal.get()();
  sub_100001CC0((v0 + 176), *(v0 + 200));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 176));
  *(v0 + 528) = 0xD00000000000001DLL;
  *(v0 + 536) = 0x8000000100087670;
  *(v0 + 544) = v6;
  static String.Encoding.utf8.getter();
  StringProtocol.write<A>(toFile:atomically:encoding:)();
  if (!v21)
  {
    (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));
    TaskLocal.get()();
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x8000000100087710;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v0 + 416) = &type metadata for String;
    *(v0 + 392) = v6;

    LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
    sub_100013EFC(v0 + 392);
    v28._object = 0x8000000100087740;
    v28._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v0 + 448) = &type metadata for String;
    *(v0 + 424) = 0xD00000000000001DLL;
    *(v0 + 432) = 0x8000000100087670;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(v0 + 424);
    v29._countAndFlagsBits = 34;
    v29._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 216));
    static String.Encoding.utf8.getter();
    v30 = String.init(contentsOfFile:encoding:)();
    v31 = *(v0 + 744);
    v32 = *(v0 + 720);
    v41 = v40;
    v59 = v30;

    TaskLocal.get()();
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 0xD00000000000001ALL;
    v42._object = 0x8000000100087760;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    *(v0 + 480) = &type metadata for String;
    *(v0 + 456) = v59;
    *(v0 + 464) = v41;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(v0 + 456);
    v43._countAndFlagsBits = 34;
    v43._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 256));
    _StringGuts.grow(_:)(20);

    v44._countAndFlagsBits = v59;
    v44._object = v41;
    String.append(_:)(v44);

    DaemonResponse.init<>(_:)();

    v45 = v31;
    v46 = v32;
LABEL_12:
    v56(v45, v46);
    goto LABEL_13;
  }

  v22 = *(v0 + 744);
  v23 = *(v0 + 720);
  v24 = *(v0 + 608);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);

  (*(v25 + 8))(v24, v26);
  v56(v22, v23);

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._countAndFlagsBits = 0xD00000000000002BLL;
  v33._object = 0x8000000100087600;
  LogMessage.StringInterpolation.appendLiteral(_:)(v33);
  swift_getErrorValue();
  v34 = *(v0 + 488);
  v35 = *(v0 + 496);
  *(v0 + 320) = v35;
  v36 = sub_1000061A4((v0 + 296));
  (*(*(v35 - 8) + 16))(v36, v34, v35);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_100013EFC(v0 + 296);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 16));
  DaemonResponse.init(_:)();
LABEL_13:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10001ABF4()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100087600;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[61];
  v3 = v0[62];
  v0[40] = v3;
  v4 = sub_1000061A4(v0 + 37);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_100013EFC((v0 + 37));
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

unint64_t sub_10001AECC()
{
  result = qword_1000A50F8;
  if (!qword_1000A50F8)
  {
    type metadata accessor for DaemonRefreshTestAssetRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50F8);
  }

  return result;
}

uint64_t sub_10001AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a2;
  v4[27] = a4;
  v4[25] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[28] = swift_task_alloc();
  sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v4[29] = swift_task_alloc();
  v5 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v6 = swift_task_alloc();
  v4[30] = v6;
  *v6 = v4;
  v6[1] = sub_10001B04C;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v5, v5);
}

uint64_t sub_10001B04C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10001BDEC;
  }

  else
  {
    v2 = sub_10001B160;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B160()
{
  if (DaemonPushInfoRequest.compactMode.getter())
  {
    v1 = _swiftEmptyArrayStorage;
LABEL_9:
    v0[32] = v1;
    v10 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = sub_10001B518;

    return BaseObjectGraph.inject<A>(_:)(v0 + 12, v10, v10);
  }

  v2 = v0[31];
  sub_100001CC0(v0 + 2, v0[5]);
  v1 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (!v2)
  {
    goto LABEL_9;
  }

  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x80000001000877A0;
  v3._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = v0[21];
  v5 = v0[22];
  v0[20] = v5;
  v6 = sub_1000061A4(v0 + 17);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse, &protocol conformance descriptor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001B518()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_10001C0B8;
  }

  else
  {
    v2 = sub_10001B634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B634()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = type metadata accessor for PushManager(0);
  v0[35] = v1;
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_10001B778;

  return (sub_1000382F4)(v1, &off_10009F238);
}

uint64_t sub_10001B778(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {

    v4 = sub_10001C38C;
  }

  else
  {
    v4 = sub_10001B894;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001B894()
{
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1000A6338;
  v2 = *(&xmmword_1000A6338 + 1);
  v3 = unk_1000A6348;
  v4 = qword_1000A6350;
  v5 = xmmword_1000A6358;
  _StringGuts.grow(_:)(35);
  v6 = 0xE300000000000000;
  v7 = 7759204;
  if (v1 != 1)
  {
    v7 = 0x7079746F746F7270;
    v6 = 0xED0000646F725065;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1685025392;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._object = 0x80000001000877D0;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v2;
  v12._object = v3;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3A6369706F74202CLL;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v4;
  v14._object = v5;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v0[39] = 0;
  v0[40] = 0xE000000000000000;
  if (DaemonPushInfoRequest.compactMode.getter())
  {
    v16 = v0[29];
    sub_10006B8B8(v0[37]);

    sub_100001CC0(v0 + 12, v0[15]);
    sub_100038558(v16);
    DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)();
    sub_100001D04(&qword_1000A5130, &unk_1000842C0);
    swift_storeEnumTagMultiPayload();
    sub_100001D4C(v0 + 12);
    sub_100001D4C(v0 + 2);

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_100001CC0(v0 + 12, v0[15]);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = sub_10001BBA4;

    return sub_100023658();
  }
}