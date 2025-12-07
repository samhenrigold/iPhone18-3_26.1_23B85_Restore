uint64_t sub_10004FD18()
{
  FeedItemAndScoreEntity.feedItem.getter();
  FeedItemAndScoreEntity.forYouScore.getter();
  dispatch thunk of Column.value.getter();

  if ((v1 & 1) == 0)
  {
    return ScoredFeedItem.init(feedItem:score:)();
  }

  __break(1u);
  return result;
}

BOOL sub_10004FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = ScoredFeedItem.feedItem.getter();
  v6 = NDManagedFeedItemPoolOptions.preferredFilterOptions.getter();
  v7 = objc_autoreleasePoolPush();
  sub_10004FE14(v5, v6, a4, &v9);
  objc_autoreleasePoolPop(v7);

  return (v9 & 1) == 0;
}

uint64_t sub_10004FE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v6 = a1;
  result = [a1 sourceChannelID];
  if (!result)
  {
    goto LABEL_35;
  }

  v9 = result;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if ((a2 & 0x200000) != 0)
  {
    v50 = a2;
    v12 = v6;
    result = [v6 articleID];
    if (!result)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = result;
    v14 = a3[2];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    LOBYTE(v13) = sub_10002DAF8(v15, v17, v14);

    v6 = v12;
    a2 = v50;
    if (v13)
    {
      goto LABEL_34;
    }
  }

  if ((a2 & 0x100000) == 0)
  {
LABEL_8:
    if ((a2 & 0x20) == 0 || (sub_10002DAF8(v49, v11, a3[1]) & 1) == 0)
    {
      if ((a2 & 0x20000) != 0)
      {
        v26 = [v6 topicIDs];
        if (v26)
        {
          v27 = v26;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        result = _swiftEmptyArrayStorage;
        v28 = _swiftEmptyArrayStorage[2];
        if (v28)
        {
          v44 = v11;
          v45 = a4;
          v29 = 0;
          v30 = a3[1];
          v31 = v30 + 56;
          v47 = v6;
          v48 = a3;
          v46 = _swiftEmptyArrayStorage[2];
          do
          {
            if (v29 >= *(result + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            if (*(v30 + 16))
            {
              v32 = result;
              v33 = &_swiftEmptyArrayStorage[2 * v29 + 4];
              v34 = *v33;
              v35 = v33[1];
              Hasher.init(_seed:)();

              String.hash(into:)();
              v36 = Hasher._finalize()();
              v37 = -1 << *(v30 + 32);
              v38 = v36 & ~v37;
              if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
              {
                v39 = ~v37;
                while (1)
                {
                  v40 = (*(v30 + 48) + 16 * v38);
                  v41 = *v40 == v34 && v40[1] == v35;
                  if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v38 = (v38 + 1) & v39;
                  if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                  {
                    goto LABEL_15;
                  }
                }

                v42 = 1;
                a4 = v45;
                goto LABEL_36;
              }

LABEL_15:

              v6 = v47;
              a3 = v48;
              result = v32;
              v28 = v46;
            }

            ++v29;
          }

          while (v29 != v28);

          a4 = v45;
          v11 = v44;
          if ((a2 & 0x4000) != 0)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }

      if ((a2 & 0x4000) == 0)
      {
LABEL_32:
        if ((a2 & 0x20000000) != 0)
        {
          v43 = sub_10002DAF8(v49, v11, *a3);

          if ((v43 & 1) == 0)
          {
            result = [v6 storyType];
            if (result != 5)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
        }

        if ((a2 & 0x4000000000) == 0 || (result = FCFeedTransformationItemIsRecipe(), (result & 1) == 0))
        {
          v42 = 0;
          goto LABEL_36;
        }

LABEL_35:
        v42 = 1;
LABEL_36:
        *a4 = v42;
        return result;
      }

LABEL_31:
      if (sub_10002DAF8(v49, v11, *a3))
      {
        goto LABEL_32;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  v51 = a2;
  v18 = v6;
  result = [v6 articleID];
  if (result)
  {
    v19 = result;
    v20 = a3;
    v21 = a3[3];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v21;
    a3 = v20;
    LOBYTE(v19) = sub_10002DAF8(v22, v24, v25);

    v6 = v18;
    a2 = v51;
    if (v19)
    {
      goto LABEL_34;
    }

    goto LABEL_8;
  }

LABEL_46:
  __break(1u);
  return result;
}

id FeedItemPoolManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1000503A0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TaskPriority();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000504B0(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForWritingURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_1000505FC()
{
  result = qword_10007F498;
  if (!qword_10007F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F498);
  }

  return result;
}

uint64_t sub_100050650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017F58;

  return sub_100046FF8(a1, v4, v5, v6);
}

void *sub_10005074C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000516C0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100015140(&qword_10007F318, &qword_10005BD98);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100050854(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10005182C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100015140(&qword_10007F310, qword_10005BD58);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10005098C()
{
  result = qword_10007F500;
  if (!qword_10007F500)
  {
    sub_100032974(&qword_10007F4C8, &qword_10005BED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F500);
  }

  return result;
}

uint64_t sub_1000509F8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100050A60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015140(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100050AC8()
{
  result = qword_10007F508;
  if (!qword_10007F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F508);
  }

  return result;
}

uint64_t sub_100050B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for FeedItemPoolManager.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedItemPoolManager.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedItemPoolManager.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100050BC8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050BE4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100050C38()
{
  result = sub_100050C58();
  qword_1000817C8 = result;
  return result;
}

uint64_t sub_100050C58()
{
  v0 = type metadata accessor for Container.Environment();
  v46 = *(v0 - 8);
  v47 = v0;
  __chkstk_darwin(v0);
  v48 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  sub_100015140(&qword_10007F540, &qword_10005BF78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10005A4E0;
  v10 = objc_opt_self();
  v11 = [v10 newsdDocumentsURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [v10 newsdCachesURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = objc_allocWithZone(NDAssembly);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  [v13 initWithDocumentDirectoryFileURL:v16 cacheDirectoryFileURL:v18];

  v20 = *(v3 + 8);
  v20(v6, v2);
  v20(v8, v2);
  v21 = type metadata accessor for BridgedAssembly();
  swift_allocObject();
  v22 = BridgedAssembly.init(_:)();
  *(v9 + 56) = v21;
  *(v9 + 64) = &protocol witness table for BridgedAssembly;
  *(v9 + 32) = v22;
  v23 = [v10 newsdCachesURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = type metadata accessor for NotificationsAssembly(0);
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + OBJC_IVAR____TtC5newsd21NotificationsAssembly_cacheDirectoryFileURL, v8, v2);
  *(v9 + 96) = v24;
  *(v9 + 104) = sub_1000514A0(&qword_10007F548, type metadata accessor for NotificationsAssembly, &unk_10005A7A8);
  *(v9 + 72) = v25;
  v26 = type metadata accessor for PersonalizationAssembly();
  v27 = swift_allocObject();
  *(v9 + 136) = v26;
  *(v9 + 144) = sub_1000514A0(&qword_10007F550, type metadata accessor for PersonalizationAssembly, &unk_10005BFA8);
  *(v9 + 112) = v27;
  v28 = type metadata accessor for PrivateDataAssembly();
  v29 = swift_allocObject();
  *(v9 + 176) = v28;
  *(v9 + 184) = sub_1000514A0(&qword_10007F558, type metadata accessor for PrivateDataAssembly, &unk_10005AA34);
  *(v9 + 152) = v29;
  v30 = type metadata accessor for ServiceAssembly();
  v31 = swift_allocObject();
  *(v9 + 216) = v30;
  *(v9 + 224) = sub_1000514A0(&qword_10007F560, type metadata accessor for ServiceAssembly, &unk_10005B2C4);
  *(v9 + 192) = v31;
  v32 = type metadata accessor for LiveActivityAssembly();
  v33 = swift_allocObject();
  v35 = *(v9 + 16);
  v34 = *(v9 + 24);
  if (v35 >= v34 >> 1)
  {
    v9 = sub_1000516E4((v34 > 1), v35 + 1, 1, v9, &qword_10007F540, &qword_10005BF78, &unk_10007F590, &qword_10005BF88);
  }

  v50 = v32;
  v51 = sub_1000514A0(&qword_10007F568, type metadata accessor for LiveActivityAssembly, &unk_10005A6F8);
  *&v49 = v33;
  *(v9 + 16) = v35 + 1;
  sub_10000390C(&v49, v9 + 40 * v35 + 32);
  v36 = type metadata accessor for Assembly();
  v37 = [objc_allocWithZone(v36) init];
  v39 = *(v9 + 16);
  v38 = *(v9 + 24);
  if (v39 >= v38 >> 1)
  {
    v9 = sub_1000516E4((v38 > 1), v39 + 1, 1, v9, &qword_10007F540, &qword_10005BF78, &unk_10007F590, &qword_10005BF88);
  }

  v50 = v36;
  v51 = sub_1000514A0(&qword_10007F570, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *&v49 = v37;
  *(v9 + 16) = v39 + 1;
  sub_10000390C(&v49, v9 + 40 * v39 + 32);
  sub_100015140(&qword_10007F578, &qword_10005BF80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10005A9A0;
  v41 = type metadata accessor for Assembly();
  v42 = [objc_allocWithZone(v41) init];
  *(v40 + 56) = v41;
  *(v40 + 64) = sub_1000514A0(&qword_10007F580, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v40 + 32) = v42;
  v43 = type metadata accessor for Assembly();
  v44 = [objc_allocWithZone(v43) init];
  *(v40 + 96) = v43;
  *(v40 + 104) = sub_1000514A0(&qword_10007F588, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v40 + 72) = v44;
  type metadata accessor for SingletonPool();
  swift_allocObject();
  SingletonPool.init()();
  (*(v46 + 104))(v48, enum case for Container.Environment.normal(_:), v47);
  type metadata accessor for Container();
  swift_allocObject();
  return Container.init(bundleAssemblies:assemblies:singletonPool:environment:)();
}

uint64_t sub_1000514A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000514E8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015140(&qword_10007F338, &qword_10005BDB8);
  v10 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
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
  v15 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
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

void *sub_1000516E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100015140(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015140(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10005182C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100015140(&qword_10007F4F8, &unk_10005BF00);
  v10 = *(sub_100015140(&qword_10007F310, qword_10005BD58) - 8);
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
  v15 = *(sub_100015140(&qword_10007F310, qword_10005BD58) - 8);
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

char *sub_100051A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007F340, &qword_10005BDC0);
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

id sub_100051B28()
{
  v0 = objc_allocWithZone(type metadata accessor for ProxyFeedPersonalizer());

  return [v0 init];
}

uint64_t sub_100051B84()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007F638, &qword_10005BFD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  return (*(v1 + 8))(v3, v0);
}

void sub_100051CD8()
{
  v0 = [objc_allocWithZone(COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScores) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(NTPBFeedItem) init];
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      [v3 setArticleID:v4];

      v5 = objc_allocWithZone(NTPBNotificationItem);
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;
      LODWORD(v12) = 0;
      LODWORD(v11) = 7;
      v10 = [v5 initWithIdentifier:v6 canonicalID:v7 clusterID:v8 notabilityScores:v1 suppressIfFollowingTagIDs:isa targetMinNewsVersion:0 targetDeviceTypes:v11 feedItem:v3 source:v12 algoID:0];

      qword_1000817D0 = v10;
      qword_1000817D8 = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100051E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100051E84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100051F14()
{
  type metadata accessor for MyArticlesRequest();
  v1 = static MyArticlesRequest.lastRequestIssued.getter();
  if (v1)
  {
    v2 = MyArticlesRequest.copy(with:)();

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    sub_100052008();
    swift_allocError();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

unint64_t sub_100052008()
{
  result = qword_10007F6D8;
  if (!qword_10007F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F6D8);
  }

  return result;
}

unint64_t sub_100052070()
{
  result = qword_10007F6E0;
  if (!qword_10007F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F6E0);
  }

  return result;
}

void sub_1000522A8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "client"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052370()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052438()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchQueue"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052500()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_1000525C4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "parameters"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052688()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_10005274C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "operationInfo"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052810()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "syncCompletion"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_1000528D4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "analyticsElements"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052998()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "date"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052A5C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "analyticsElement"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052B20()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "date"];
  sub_1000065F8();
  sub_1000065E8();
  sub_1000065D4();
  sub_100006608(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void sub_100052BE4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "service"];
  *buf = 136315906;
  v2 = "[NDAnalyticsServiceListenerDelegate initWithService:]";
  v3 = 2080;
  v4 = "NDAnalyticsServiceListenerDelegate.m";
  v5 = 1024;
  v6 = 29;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100052CD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pendingMessages];
  v6 = [v5 count];
  v7 = [*(a1 + 32) connectionDescription];
  v8 = 134218242;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "consumer proxy lost connection, will drop %lu messages, connection=%{public}@", &v8, 0x16u);
}

void sub_100052DAC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000081C0(&_mh_execute_header, a2, a3, "failed to load last known requests from store with error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100052E18()
{
  sub_1000081E8(__stack_chk_guard);
  sub_1000081DC();
  sub_1000081C0(&_mh_execute_header, v0, v1, "failed to save last known requests to store with error: %{public}@", v2, v3, v4, v5);
}

void sub_100052E80(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000081C0(&_mh_execute_header, a2, a3, "failed to load last known limits from store with error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100052EEC()
{
  sub_1000081E8(__stack_chk_guard);
  sub_1000081DC();
  sub_1000081C0(&_mh_execute_header, v0, v1, "failed to save last known limits to store with error: %{public}@", v2, v3, v4, v5);
}

void sub_100052F54()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
  *buf = 136315906;
  v2 = "[NDContentDownloadService initWithContentContext:ANFHelper:]";
  v3 = 2080;
  v4 = "NDContentDownloadService.m";
  v5 = 1024;
  v6 = 69;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100053040()
{
  v0 = [[NSString alloc] initWithFormat:@"replacing XPC connection while a consumer is already active"];
  v6 = 136315906;
  sub_10000C7B8();
  sub_10000C7A8();
  sub_10000C794();
  sub_10000C7C8(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000530F8()
{
  v0 = [[NSString alloc] initWithFormat:@"registering a consumer without an XPC connection"];
  v6 = 136315906;
  sub_10000C7B8();
  sub_10000C7A8();
  sub_10000C794();
  sub_10000C7C8(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000531B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to clear AV asset downloads directory, error=%{public}@", &v2, 0xCu);
}

void sub_100053250()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v2 = "[NDURLResolutionService _determineWhetherResolutionIsAllowedWithCompletion:]";
  v3 = 2080;
  v4 = "NDURLResolutionService.m";
  v5 = 1024;
  v6 = 110;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10005333C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "URLResolutionService != nil"];
  *buf = 136315906;
  v2 = "[NDURLResolutionListenerDelegate initWithURLResolutionService:]";
  v3 = 2080;
  v4 = "NDURLResolutionListenerDelegate.m";
  v5 = 1024;
  v6 = 31;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10005346C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to update notification pool refresh task, error=%{public}@", &v2, 0xCu);
}

void sub_1000534E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to submit notification pool refresh task, error=%{public}@", &v2, 0xCu);
}

void sub_10005355C()
{
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000535D8()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v0, v1, "content archive store failed to encode archive for contentID=%{public}@, error=%{public}@", v2, v3, v4, v5);
}

void sub_100053640()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v0, v1, "content archive store failed to add archive for contentID=%{public}@, error=%{public}@", v2, v3, v4, v5);
}

void sub_1000536A8()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v0, v1, "content archive store failed to encode manifest for contentID=%{public}@, error=%{public}@", v2, v3, v4, v5);
}

void sub_100053710()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v0, v1, "content archive store failed to add manifest for contentID=%{public}@, error=%{public}@", v2, v3, v4, v5);
}

void sub_100053778()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "content archive store failed to add blob for name=%{public}@, contentID=%{public}@, error=%{public}@", v3, 0x20u);
}

void sub_1000537F8()
{
  sub_1000127D4(__stack_chk_guard);
  sub_100012790();
  sub_1000127B8(&_mh_execute_header, v0, v1, "content archive store failed to write completion token for contentID=%{public}@, error=%{public}@", v2, v3, v4, v5);
}

void sub_100053860()
{
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000538D8()
{
  sub_100012790();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100053954()
{
  sub_1000127E0();
  sub_1000127A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000539CC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
  *buf = 136315906;
  v2 = "[NDTodayServiceListenerDelegate initWithContentContext:fetchQueue:]";
  v3 = 2080;
  v4 = "NDTodayServiceListenerDelegate.m";
  v5 = 1024;
  sub_1000065D4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_100053AAC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "fetchQueue"];
  *buf = 136315906;
  v2 = "[NDTodayServiceListenerDelegate initWithContentContext:fetchQueue:]";
  v3 = 2080;
  v4 = "NDTodayServiceListenerDelegate.m";
  v5 = 1024;
  sub_1000065D4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}