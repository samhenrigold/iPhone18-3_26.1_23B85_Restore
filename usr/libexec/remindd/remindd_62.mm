uint64_t sub_1005AF738()
{
  sub_10000607C((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1005AF7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v20 = a7;
  v21 = a8;
  v16 = sub_1000103CC(&v19);
  (*(*(a7 - 8) + 32))(v16, a3, a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_100054B6C(&v19, v17 + 32);
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = a9;
  return v17;
}

void sub_1005AF878(uint64_t a1, char a2)
{
  v3 = *(type metadata accessor for RDPublicTemplate(0) - 8);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v4 = v19 + *(v3 + 64);
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 1) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v6 + v11) & ~v6;
  v13 = (v8 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v18 = (*(v17 + 80) + v16 + 16) & ~*(v17 + 80);
  sub_1005AD244(a1, a2 & 1, *(v2 + 16), v2 + v19, *(v2 + v4), v2 + v7, *(v2 + v9), v2 + v11, v2 + v12, *(v2 + v13), *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + v16 + 8), v2 + v18, *(v2 + v18 + *(v17 + 64)), *(v2 + ((v18 + *(v17 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id sub_1005AFAE0()
{
  v1 = *(type metadata accessor for RDPublicTemplate(0) - 8);
  v18 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = v18 + *(v1 + 64);
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v3 + 80);
  v5 = (v2 + v4 + 1) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v4 + v9) & ~v4;
  v11 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v16 = (*(v15 + 80) + v14 + 16) & ~*(v15 + 80);
  return sub_1005AD998(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + v18), *(v0 + v2), v0 + v5, *(v0 + v7), (v0 + v9), (v0 + v10), *(v0 + v11), *(v0 + v12), *(v0 + v13), *(v0 + v14), *(v0 + v14 + 8), v0 + v16, *(v0 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1005AFD38(void *a1)
{
  v2 = v1;
  v108 = 0;
  v4 = [v2 existingObjectWithID:a1 error:&v108];
  v5 = v108;
  if (!v4)
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = [a1 persistentStore];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 identifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
        v13 = [v2 persistentStoreCoordinator];
        if (v13)
        {
          v21 = v13;
          v22 = [v13 persistentStoreForIdentifier:v9];

          if (!v22)
          {
            if (qword_100936618 != -1)
            {
              swift_once();
            }

            v51 = type metadata accessor for Logger();
            sub_100006654(v51, qword_10094DA50);
            v52 = v2;

            v53 = a1;
            swift_errorRetain();
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();

            v12, v56, v57, v58, v59, v60, v61, v62;

            if (os_log_type_enabled(v54, v55))
            {
              v106 = v55;
              log = v54;
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              *v70 = 138413314;
              *(v70 + 4) = v52;
              *v71 = v52;
              *(v70 + 12) = 2080;
              v72 = [v52 persistentStoreCoordinator];
              if (v72)
              {
                v73 = v72;
                v74 = [v72 description];

                v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v77 = v76;
              }

              else
              {
                v77 = 0xE300000000000000;
                v75 = 7104878;
              }

              v78 = sub_10000668C(v75, v77, &v108);
              v77, v79, v80, v81, v82, v83, v84, v85;
              *(v70 + 14) = v78;
              *(v70 + 22) = 2080;
              v86 = sub_10000668C(v10, v12, &v108);
              v12, v87, v88, v89, v90, v91, v92, v93;
              *(v70 + 24) = v86;
              *(v70 + 32) = 2112;
              *(v70 + 34) = v53;
              v71[1] = v53;
              *(v70 + 42) = 2080;
              swift_getErrorValue();
              v94 = v53;
              v95 = Error.localizedDescription.getter();
              v97 = v96;
              v98 = sub_10000668C(v95, v96, &v108);
              v97, v99, v100, v101, v102, v103, v104, v105;
              *(v70 + 44) = v98;
              _os_log_impl(&_mh_execute_header, log, v106, "The objectID's store does not exist in the PSC of MOC. This is an account store just got removed? {moc: %@, psc: %s, storeID: %s, objectID: %@, error: %s}", v70, 0x34u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();

              goto LABEL_13;
            }

            v12, v63, v64, v65, v66, v67, v68, v69;

LABEL_15:

            return 0;
          }

          v12, v23, v24, v25, v26, v27, v28, v29;

          v9 = v22;
        }

        else
        {
          v12, v14, v15, v16, v17, v18, v19, v20;
        }
      }
    }

    if (qword_100936618 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10094DA50);
    v31 = v2;
    v32 = a1;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v108 = v36;
      *v34 = 138412802;
      *(v34 + 4) = v31;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v32;
      *v35 = v31;
      v35[1] = v32;
      *(v34 + 22) = 2080;
      swift_getErrorValue();
      v37 = v31;
      v38 = v32;
      v39 = Error.localizedDescription.getter();
      v41 = v40;
      v42 = sub_10000668C(v39, v40, &v108);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v34 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v21, v33, "Failed to fetch object with ID {moc: %@, objectID: %@, error: %s}", v34, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v36);

LABEL_13:

      return 0;
    }

    goto LABEL_15;
  }

  return v4;
}

uint64_t sub_1005B0358()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DA50);
  v1 = sub_100006654(v0, qword_10094DA50);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1005B0420(unint64_t a1)
{
  v9 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_1005B0544(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_1005B0544(void *a1, id *a2)
{
  v4 = *a2;
  v5 = [*a2 entityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v16 = sub_1005B0850();
  if (*v16->clientIdentity)
  {
    v17 = sub_100005F4C(v6, v8);
    v19 = v18;
    v8, v18, v20, v21, v22, v23, v24, v25;
    if (v19)
    {
      v33 = (*&v16->clientIdentity[40] + 16 * v17);
      v35 = *v33;
      v34 = v33[1];

      v16, v36, v37, v38, v39, v40, v41, v42;
      v43 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *a1;
      v66 = *a1;
      v53 = sub_100005F4C(v35, v34);
      v54 = v45[2];
      v55 = (v46 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        __break(1u);
      }

      else
      {
        v2 = v46;
        if (v45[3] < v56)
        {
          sub_1003724C0(v56, isUniquelyReferenced_nonNull_native);
          v45 = v66;
          v57 = sub_100005F4C(v35, v34);
          if ((v2 & 1) != (v46 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v53 = v57;
          *a1 = v66;
          if ((v2 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_16:
          v34, v46, v47, v48, v49, v50, v51, v52;
LABEL_20:
          v65 = (v45[7] + 8 * v53);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          return;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          *a1 = v45;
          if (v46)
          {
            goto LABEL_16;
          }

LABEL_19:
          sub_1002CB9B4(v53, v35, v34, &_swiftEmptyArrayStorage, v45);
          goto LABEL_20;
        }
      }

      sub_100377A3C();
      v45 = v66;
      *a1 = v66;
      if (v2)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16, v26, v27, v28, v29, v30, v31, v32;
  if (qword_100936618 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100006654(v58, qword_10094DA50);
  v59 = v4;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v59;
    v64 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "Unknown root entity name for managed object ID {moid: %@}", v62, 0xCu);
    sub_100039860(v63);
  }
}

void *sub_1005B0850()
{
  v0 = sub_1000F5104(&qword_10094DAD8, &unk_1007B36F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v29 - v3;
  if (qword_100936620 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = qword_10094DA68;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = v1 + 104;
    v8 = *(v1 + 104);
    v34 = enum case for REMCache.ExecutionMode.synchronously<A, B>(_:);
    v8(v4);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v5;

    dispatch thunk of REMCache.performReadOnly(_:operations:)();

    v11 = *(v1 + 8);
    v1 += 8;
    v10 = v11;
    v11(v4, v0);
    swift_beginAccess();
    v12 = *(v6 + 16);

    if (v12)
    {
      return v12;
    }

    v32 = v4;
    v33 = v7;
    v13 = v34;
    v30 = v10;
    v31 = v8;
    v14 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = _swiftEmptyDictionarySingleton;
    v36 = _swiftEmptyDictionarySingleton;
    v23 = *(v15 + 16);
    if (!v23)
    {
      v26 = v13;
      v25 = v0;
      v4 = v32;
LABEL_9:
      v15, v16, v17, v18, v19, v20, v21, v22;
      v31(v4, v26, v25);
      v27 = swift_allocObject();
      *(v27 + 16) = v12;
      *(v27 + 24) = v5;

      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      v30(v4, v25);
      return v12;
    }

    v29 = v0;
    v24 = 0;
    v4 = v32;
    v0 = v33;
    while (v24 < *(v15 + 16))
    {
      v35 = *(v15 + 32 + 8 * v24);
      sub_1005B0E2C(&v36, &v35);
      if (v23 == ++v24)
      {
        v12 = v36;
        v25 = v29;
        v26 = v34;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

uint64_t sub_1005B0C78(uint64_t a1, uint64_t a2)
{
  v11 = sub_1005B0850();
  if (*v11->clientIdentity && (v12 = sub_100005F4C(a1, a2), (v4 & 1) != 0))
  {
    v13 = *(*&v11->clientIdentity[40] + 16 * v12);
  }

  else
  {
    v13 = 0;
  }

  v11, v4, v5, v6, v7, v8, v9, v10;
  return v13;
}

uint64_t type metadata accessor for RDRootEntityNameByEntityNameCache(uint64_t a1)
{
  result = qword_10094DA88;
  if (!qword_10094DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005B0E2C(uint64_t *a1, void *a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector:"cdEntityName"] & 1) == 0)
  {
    goto LABEL_35;
  }

  v90 = ObjCClassFromMetadata;
  v3 = [ObjCClassFromMetadata cdEntityName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v90;
  if ([v90 respondsToSelector:"cdEntityName"])
  {
    v8 = [v90 cdEntityName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v7 = v90;
    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = a1;
  sub_10031D9C4(v13, v12, v4, v6);
  v15 = [v7 entity];
  v16 = sub_1005B1224(v15);

  v17 = 0;
  v86 = v16 + 7;
  v91 = v16;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16[7];
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
LABEL_15:
    v33 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v34 = (v91[6] + ((v17 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];
    if ([v7 respondsToSelector:"cdEntityName"])
    {

      v37 = [v7 cdEntityName];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v38;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v14;
      v92 = *v14;
      v41 = v35;
      v49 = sub_100005F4C(v35, v36);
      v50 = *(v40 + 16);
      v51 = (v42 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_33;
      }

      v53 = v42;
      if (*(v40 + 24) >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = v90;
          if (v42)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_100373664();
          v7 = v90;
          if (v53)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_10036A8F0(v52, isUniquelyReferenced_nonNull_native);
        v54 = sub_100005F4C(v41, v36);
        if ((v53 & 1) != (v42 & 1))
        {
          goto LABEL_36;
        }

        v49 = v54;
        v7 = v90;
        if (v53)
        {
LABEL_8:
          v36, v42, v43, v44, v45, v46, v47, v48;
          v22 = v92;
          v23 = (v92[7] + 16 * v49);
          v24 = v23[1];
          *v23 = v88;
          v23[1] = v89;
          v24, v25, v26, v27, v28, v29, v30, v31;
          goto LABEL_9;
        }
      }

      v22 = v92;
      v92[(v49 >> 6) + 8] |= 1 << v49;
      v80 = (v92[6] + 16 * v49);
      *v80 = v41;
      v80[1] = v36;
      v81 = (v92[7] + 16 * v49);
      *v81 = v88;
      v81[1] = v89;
      v82 = v92[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_34;
      }

      v92[2] = v84;
LABEL_9:
      v14 = a1;
      *a1 = v22;
    }

    else
    {

      v55 = sub_100005F4C(v35, v36);
      v57 = v56;
      v36, v56, v58, v59, v60, v61, v62, v63;
      if (v57)
      {
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v72 = *v14;
        v93 = *v14;
        if (!v64)
        {
          sub_100373664();
          v72 = v93;
        }

        *(*(v72 + 48) + 16 * v55 + 8), v65, v66, v67, v68, v69, v70, v71;
        *(*(v72 + 56) + 16 * v55 + 8), v73, v74, v75, v76, v77, v78, v79;
        sub_1003328B8(v55, v72);
        *v14 = v72;
        v7 = v90;
      }
    }
  }

  while (1)
  {
    v32 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v32 >= v21)
    {
    }

    v20 = v86[v32];
    ++v17;
    if (v20)
    {
      v17 = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1005B1224(void *a1)
{
  v1 = [a1 subentities];
  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = _swiftEmptySetSingleton;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v2 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = [v13 name];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        sub_100378434(v30, v18, v20);
        v30[1], v21, v22, v23, v24, v25, v26, v27;
      }

      v12 = sub_1005B1224(v14);
      sub_1003564A8(v12);

      ++v11;
      if (v15 == i)
      {
        v28 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v28 = _swiftEmptySetSingleton;
LABEL_17:
  v2, v3, v4, v5, v6, v7, v8, v9;
  return v28;
}

uint64_t sub_1005B13C8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0, v1);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3, v4);
  v31[3] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v13 = type metadata accessor for RDRootEntityNameByEntityNameCache(0);
  v35 = v13;
  sub_1000F5104(&qword_10094DAE0, &qword_1007B3700);
  v14 = String.init<A>(reflecting:)();
  v31[1] = v15;
  v31[2] = v14;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = swift_allocObject();
  v17 = qword_10094DA70;
  v35 = v13;
  String.init<A>(reflecting:)();
  v19 = v18;
  v20 = objc_allocWithZone(NSString);
  v21 = String._bridgeToObjectiveC()();
  v19, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v20 initWithString:v21];

  *(v16 + v17) = v29;
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_10094DA68 = result;
  return result;
}

uint64_t sub_1005B1768(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v3 = qword_10094DA70;
  sub_1000F5104(&qword_10094DAE0, &qword_1007B3700);
  String.init<A>(reflecting:)();
  v5 = v4;
  v6 = objc_allocWithZone(NSString);
  v7 = String._bridgeToObjectiveC()();
  v5, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v6 initWithString:v7];

  *(v2 + v3) = v15;
  return REMCache.init(cacheQueue:countLimit:)();
}

void sub_1005B1850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = REMCacheContext.object(forKey:)();
  if (v4)
  {
    v5 = v4;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1005B18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  REMCacheContext.setObject(_:forKey:)();
}

uint64_t sub_1005B1970()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005B19D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DAE8);
  v1 = sub_100006654(v0, qword_10094DAE8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B1AA0(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, _TtC7remindd19RDXPCStorePerformer *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v510 = a3;
  v485 = a2;
  v511 = a1;
  v457 = a5;
  v460 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  __chkstk_darwin(v460, v6);
  v458 = &v449 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v459 = *(v463 - 8);
  __chkstk_darwin(v463, v8);
  v462 = &v449 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v479 = &v449 - v12;
  v469 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v468 = *(v469 - 8);
  __chkstk_darwin(v469, v13);
  v455 = &v449 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  __chkstk_darwin(v466, v15);
  v467 = &v449 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v482 = &v449 - v19;
  v20 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v20 - 8, v21);
  v453 = &v449 - v22;
  v477 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v476 = *(v477 - 8);
  __chkstk_darwin(v477, v23);
  v475 = &v449 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v480 = &v449 - v27;
  v483 = type metadata accessor for REMRemindersListDataView.Diff();
  v470 = *(v483 - 8);
  __chkstk_darwin(v483, v28);
  v461 = &v449 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v473 = &v449 - v32;
  __chkstk_darwin(v33, v34);
  v456 = &v449 - v35;
  __chkstk_darwin(v36, v37);
  v486 = &v449 - v38;
  v39 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v39 - 8, v40);
  v471 = &v449 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v43);
  v465 = &v449 - v44;
  __chkstk_darwin(v45, v46);
  v484 = &v449 - v47;
  __chkstk_darwin(v48, v49);
  v488 = &v449 - v50;
  v491 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v491, v51);
  v494 = (&v449 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v53, v54);
  v499 = (&v449 - v55);
  v500 = _s10PredicatesOMa(0);
  __chkstk_darwin(v500, v56);
  v472 = &v449 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58, v59);
  v493 = (&v449 - v60);
  v61 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v497 = *(v61 - 8);
  v498 = v61;
  __chkstk_darwin(v61, v62);
  v492 = &v449 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v65);
  v503 = (&v449 - v66);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v495 = *(Subtasks - 8);
  v496 = Subtasks;
  __chkstk_darwin(Subtasks, v68);
  v508 = (&v449 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v506 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v504 = *(v506 - 8);
  __chkstk_darwin(v506, v70);
  v454 = &v449 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72, v73);
  v478 = &v449 - v74;
  __chkstk_darwin(v75, v76);
  v481 = &v449 - v77;
  __chkstk_darwin(v78, v79);
  v507 = &v449 - v80;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  storeController = *(Configuration - 8);
  __chkstk_darwin(Configuration, v81);
  v474 = &v449 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83, v84);
  v464 = &v449 - v85;
  __chkstk_darwin(v86, v87);
  v490 = &v449 - v88;
  __chkstk_darwin(v89, v90);
  v92 = &v449 - v91;
  __chkstk_darwin(v93, v94);
  v96 = &v449 - v95;
  v502 = a4;
  v97 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v98 = [v97 objectID];

  v99 = REMObjectID.codable.getter();
  type metadata accessor for REMListStableSortingDataView.Invocation();
  v100 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v489 = xmmword_1007953F0;
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = v99;
  v102 = v99;
  sub_1003915C4(inited);
  v104 = v103;
  swift_setDeallocating();
  v105 = v510;
  swift_arrayDestroy();
  v106 = v509;
  sub_10026EC90(v511, v105, v104);
  if (v106)
  {

    v104, v108, v109, v110, v111, v112, v113, v114;
    return;
  }

  v115 = v107;
  v451 = v96;
  v452 = v92;
  v509 = 0;
  v116 = v503;

  v104, v117, v118, v119, v120, v121, v122, v123;
  v124 = sub_10035363C(v102, v115);
  v115, v125, v126, v127, v128, v129, v130, v131;
  if (!v124)
  {
    [objc_opt_self() noSuchObjectErrorWithObjectID:v102];
    swift_willThrow();

    return;
  }

  v132 = [v124 accountID];
  v133 = [(RDXPCStorePerformer *)v511 persistentStoreOfAccountWithAccountID:v132];

  v450 = v124;
  if (v133)
  {
    v134 = swift_allocObject();
    *(v134 + 16) = v489;
    *&v489 = v134;
    *(v134 + 32) = v133;
  }

  else
  {
    *&v489 = 0;
  }

  v135 = Configuration;
  v136 = storeController;
  v137 = v116;
  v138 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v139 = v451;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v140 = *v136->storeController;
  storeController = v136->storeController;
  v140(v139, v135);
  v141 = v452;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v140(v141, v135);
  v142 = v490;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v490 = v140;
  v140(v142, v135);
  v143 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
  v503 = v138;
  v144 = [(RDXPCStorePerformer *)v138 objectID];
  v145 = v493;
  *v493 = v144;
  v146 = (v504 + 16);
  v147 = v507;
  v452 = *(v504 + 16);
  (v452)(v145 + v143, v507, v506);
  swift_storeEnumTagMultiPayload();
  v148 = sub_100043AA8();
  sub_1001A4F3C(v145, _s10PredicatesOMa);
  v149 = v497;
  v150 = v498;
  v151 = v492;
  (*(v497 + 16))(v492, v137, v498);
  v152 = v494;
  swift_storeEnumTagMultiPayload();
  v153 = v499;
  sub_1005368D8(v151, v152, v499);
  v154 = v137;
  v155 = v511;
  v156 = v509;
  v157 = v489;
  v158 = sub_100536D54(v511, v148, v153, v147, v508, &_swiftEmptyArrayStorage, v489);
  if (v156)
  {

    v157, v159, v160, v161, v162, v163, v164, v165;
    sub_1001A4F3C(v153, _s9UtilitiesO12SortingStyleOMa);
    (*(v149 + 8))(v154, v150);
    (*(v495 + 8))(v508, v496);
    (*(v504 + 8))(v507, v506);
    return;
  }

  v493 = v146;
  v494 = v158;

  sub_1001A4F3C(v153, _s9UtilitiesO12SortingStyleOMa);
  (*(v149 + 8))(v154, v150);
  (*(v495 + 8))(v508, v496);
  v166 = *(v504 + 8);
  v166(v507, v506);
  v167 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v168 = [v167 objectID];

  v169 = sub_1001BE2C0(v155, v168);
  v170 = sub_100270978(v169);
  v171 = sub_1001BD57C(v170, v494);
  v170, v172, v173, v174, v175, v176, v177, v178;
  v179 = v487;
  sub_1005B3A94(v511, v488);
  v180 = [v179 fetchResultTokenToDiffAgainst];
  sub_100534D44(v180, v486);
  v509 = 0;
  v507 = v166;
  v508 = v171;

  v181 = v464;
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v182 = v480;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (v490)(v181, Configuration);
  v183 = v476;
  v184 = v475;
  v185 = v477;
  (*(v476 + 16))(v475, v182, v477);
  v186 = (*(v183 + 88))(v184, v185);
  if (v186 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v183 + 96))(v184, v185);
    v194 = *v184;
    v195 = Array<A>.reminders.getter();
    v196 = v194;
    v185 = v477;
    v197 = v489;
    v503 = sub_10053DB98(v196, v195, v511, v510, v489);
    v195, v198, v199, v200, v201, v202, v203, v204;
    v197, v205, v206, v207, v208, v209, v210, v211;
    v499 = &_swiftEmptyArrayStorage;
    v212 = v506;
    v213 = v472;
LABEL_16:
    v253 = v474;
    goto LABEL_17;
  }

  v212 = v506;
  v214 = v510;
  v213 = v472;
  v215 = v474;
  if (v186 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v183 = v476;
    v216 = v510;
    v217 = v475;
    (*(v476 + 96))(v475, v185);
    v218 = *v217;
    v219 = v489;
    v503 = sub_10053E698(v218, v486, v511, v216, v489);
    v219, v220, v221, v222, v223, v224, v225, v226;
    v499 = &_swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  if (v186 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v183 = v476;
    v227 = v475;
    (*(v476 + 96))(v475, v185);
    v228 = *v227;
    v229 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v230 = v453;
    sub_100031B58(v227 + *(v229 + 48), v453, &qword_10094B8E0, &unk_1007AABD0);
    v231 = Array<A>.reminders.getter();
    v232 = v228;
    v233 = v511;
    v234 = v214;
    v235 = v214;
    v236 = v489;
    v503 = sub_10053DB98(v232, v231, v511, v234, v489);
    v237 = v233;
    v185 = v477;
    v499 = sub_10053EBE4(v230, v231, v237, v235, v236);
    v231, v238, v239, v240, v241, v242, v243, v244;
    v236, v245, v246, v247, v248, v249, v250, v251;
    v252 = v230;
    v213 = v472;
    sub_1000050A4(v252, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_16;
  }

  if (v186 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
LABEL_51:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_52;
  }

  v489, v187, v188, v189, v190, v191, v192, v193;
  v499 = &_swiftEmptyArrayStorage;
  v503 = &_swiftEmptyArrayStorage;
  v183 = v476;
  v253 = v215;
LABEL_17:
  v254 = v212;
  (*(v183 + 8))(v480, v185);
  v255 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
  v256 = [v255 objectID];

  *v213 = v256;
  swift_storeEnumTagMultiPayload();
  v510 = sub_100043AA8();
  sub_1001A4F3C(v213, _s10PredicatesOMa);
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v257 = v481;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v490)(v253, Configuration);
  v258 = v482;
  sub_100010364(v488, v482, &qword_100938A70, &qword_1007ACC60);
  v259 = v466;
  (v452)(v258 + *(v466 + 48), v257, v254);
  *(v258 + *(v259 + 64)) = v494;
  v260 = v467;
  sub_100010364(v258, v467, &qword_10093AE38, &unk_100798450);
  v261 = *(v259 + 48);
  storeController = *(v260 + *(v259 + 64));
  v262 = v484;
  sub_100031B58(v260, v484, &qword_100938A70, &qword_1007ACC60);
  v263 = v260 + v261;
  v264 = v262;
  v265 = v478;
  (*(v504 + 32))(v478, v263, v254);
  v266 = v465;
  sub_100010364(v264, v465, &qword_100938A70, &qword_1007ACC60);
  v267 = v468;
  v268 = v469;
  v269 = (*(v468 + 48))(v266, 1, v469);

  if (v269 != 1)
  {
    storeController, v270, v271, v272, v273, v274, v275, v276;
    v169, v303, v304, v305, v306, v307, v308, v309;
    v310 = v266;
    v311 = v455;
    (*(v267 + 32))(v455, v310, v268);
    v312 = v506;
    v313 = v267;
    v314 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v315 = REMRemindersListDataView.CountByCompleted.completed.getter();

    (*(v313 + 8))(v311, v268);
    v316 = v265;
    v317 = v507;
    (v507)(v316, v312);
    sub_1000050A4(v484, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v482, &qword_10093AE38, &unk_100798450);
    (v317)(v481, v312);
    v297 = v483;
    v300 = v470;
    if (!__OFADD__(v314, v315))
    {
LABEL_21:
      v298 = v486;
      v299 = v488;
LABEL_22:
      v301 = v473;
      v302 = v456;
      v287 = v471;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_51;
  }

  v277 = v484;
  v278 = v510;
  sub_1000050A4(v266, &qword_100938A70, &qword_1007ACC60);
  v286 = storeController;
  v287 = v471;
  v288 = v507;
  if (*storeController->clientIdentity)
  {
    storeController, v279, v280, v281, v282, v283, v284, v285;
    v169, v289, v290, v291, v292, v293, v294, v295;

    v296 = v506;
    (v288)(v478, v506);
    sub_1000050A4(v277, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v482, &qword_10093AE38, &unk_100798450);
    (v288)(v481, v296);
    v297 = v483;
    v298 = v486;
    v299 = v488;
    v300 = v470;
    v301 = v473;
    v302 = v456;
LABEL_23:
    sub_100010364(v299, v287, &qword_100938A70, &qword_1007ACC60);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    if (qword_100936628 != -1)
    {
      swift_once();
    }

    v318 = type metadata accessor for Logger();
    sub_100006654(v318, qword_10094DAE8);
    v319 = *(v300 + 16);
    (v319)(v302, v298, v297);
    v510 = (v300 + 16);
    v508 = v319;
    (v319)(v301, v298, v297);
    v320 = v494;

    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      *v323 = 134218496;
      v324 = *v320->clientIdentity;
      v320, v325, v326, v327, v328, v329, v330, v331;
      *(v323 + 4) = v324;
      v320, v332, v333, v334, v335, v336, v337, v338;
      *(v323 + 12) = 2048;
      v339 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v339 & 0xC000000000000001) != 0)
      {
        v347 = v339;
        v348 = __CocoaSet.count.getter();
        v339 = v347;
        v301 = v473;
      }

      else
      {
        v348 = *(v339 + 16);
      }

      v352 = v461;
      v339, v340, v341, v342, v343, v344, v345, v346;
      v372 = *(v300 + 8);
      v507 = ((v300 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v511 = v372;
      (v372)(v302, v297);
      *(v323 + 14) = v348;
      *(v323 + 22) = 2048;
      v373 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v373 & 0xC000000000000001) != 0)
      {
        v381 = v373;
        v382 = __CocoaSet.count.getter();
        v373 = v381;
        v297 = v483;
      }

      else
      {
        v382 = *(v373 + 16);
      }

      v351 = v462;
      v373, v374, v375, v376, v377, v378, v379, v380;
      (v511)(v301, v297);
      *(v323 + 24) = v382;
      _os_log_impl(&_mh_execute_header, v321, v322, "reminders %ld updated %ld inserted %ld", v323, 0x20u);

      v353 = v463;
      v350 = v297;
    }

    else
    {
      v349 = *(v300 + 8);
      v507 = ((v300 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      (v349)(v301, v297);
      v511 = v349;
      (v349)(v302, v297);

      swift_bridgeObjectRelease_n();
      v350 = v297;
      v351 = v462;
      v352 = v461;
      v353 = v463;
    }

    v383 = v459;
    v384 = v351;
    v385 = v479;
    (*(v459 + 16))(v384, v479, v353);
    v386 = v450;
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v387 = v352;
    v388 = v486;
    (v508)(v387, v486, v350);
    sub_1005B3D58(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    sub_1005B3D58(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v383 + 8))(v385, v353);
    (v511)(v388, v483);
    v389 = v488;
    goto LABEL_37;
  }

  v354 = v454;
  v355 = v506;
  (v452)(v454, v478, v506);
  v356 = (*(v504 + 88))(v354, v355);
  if (v356 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    v286, v357, v358, v359, v360, v361, v362, v363;
    v169, v364, v365, v366, v367, v368, v369, v370;
    (v288)(v354, v506);
    v297 = v483;
    v300 = v470;
    p_attr = (&stru_100923FF8 + 8);
LABEL_45:
    sub_100345DB0();
    v404 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
    v405 = [swift_getObjCClassFromMetadata() entity];
    [v404 setEntity:v405];

    [v404 setAffectedStores:0];
    [v404 setPredicate:v278];
    [v404 setFetchLimit:1];
    [v404 setAffectedStores:0];
    v406 = v509;
    NSManagedObjectContext.count<A>(for:)();
    v509 = v406;
    v407 = v482;
    if (v406)
    {

      v494, v408, v409, v410, v411, v412, v413, v414;
      v508, v415, v416, v417, v418, v419, v420, v421;
      v503, v422, v423, v424, v425, v426, v427, v428;
      v499, v429, v430, v431, v432, v433, v434, v435;

      v437 = v506;
      v436 = v507;
      (v507)(v478, v506);
      sub_1000050A4(v484, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v407, &qword_10093AE38, &unk_100798450);
      (v436)(v481, v437);
      (*(v300 + 8))(v486, v297);
      v389 = v488;
LABEL_37:
      sub_1000050A4(v389, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v439 = v506;
    v438 = v507;
    (v507)(v478, v506);
    sub_1000050A4(v484, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v407, &qword_10093AE38, &unk_100798450);
    (v438)(v481, v439);
    goto LABEL_21;
  }

  p_attr = &stru_100923FF8.attr;
  if (v356 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    v286, v357, v358, v359, v360, v361, v362, v363;
    v169, v390, v391, v392, v393, v394, v395, v396;
    (v288)(v354, v506);
LABEL_44:
    v297 = v483;
    v300 = v470;
    goto LABEL_45;
  }

  if (v356 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    v286, v357, v358, v359, v360, v361, v362, v363;
    v169, v397, v398, v399, v400, v401, v402, v403;
    goto LABEL_44;
  }

  if (v356 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    v286, v357, v358, v359, v360, v361, v362, v363;
    v169, v440, v441, v442, v443, v444, v445, v446;

    v447 = v506;
    v448 = v507;
    (v507)(v478, v506);
    sub_1000050A4(v484, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v482, &qword_10093AE38, &unk_100798450);
    (v448)(v481, v447);
    v297 = v483;
    v298 = v486;
    v299 = v488;
    v300 = v470;
    goto LABEL_22;
  }

LABEL_52:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1005B3A94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v4 = _s10PredicatesOMa(0);
  __chkstk_darwin(v4, v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v9 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ListSectionsInvocation.Parameters.configuration.getter();
  v13 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v9 + 8))(v12, Configuration);
  if (v13)
  {
    v14 = REMRemindersListDataView.ListSectionsInvocation.Parameters.list.getter();
    v15 = [v14 objectID];

    *v7 = v15;
    swift_storeEnumTagMultiPayload();
    v16 = sub_100043AA8();
    sub_1001A4F3C(v7, _s10PredicatesOMa);
    sub_10053464C(v20, v16);
    if (!v2)
    {
      v17 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
    v18 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_1005B3D00(uint64_t a1)
{
  result = sub_1005B3D58(&qword_10094DB20, &type metadata accessor for REMRemindersListDataView.ListSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.ListSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005B3D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B3DA0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
  swift_allocObject();
  v4 = a1;
  return Future.init(_:)();
}

uint64_t sub_1005B3E28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1000F5104(&qword_1009399A8, &qword_1007969E8);
  swift_allocObject();

  v3 = Future.init(_:)();
  swift_beginAccess();
  v4 = *(v1 + 16);

  return v3;
}

uint64_t sub_1005B3F08()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB38);
  v1 = sub_100006654(v0, qword_10094DB38);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100007F54();
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.utility(_:), v7);

  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1005B490C;
  *(v15 + 24) = v12;
  aBlock[4] = sub_1005B48F4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F92D0;
  v16 = _Block_copy(aBlock);

  [ObjCClassFromMetadata waitForSyncEngineSystemAvailabilityBlockingQueue:a3 completionQueue:v14 completionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1005B41DC(uint64_t (*a1)(void))
{
  if (qword_100936630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094DB38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DADSystemAvailabilityChecker(Swift extension) systemAvailableFuture fulfilled", v5, 2u);
  }

  return a1(0);
}

void sub_1005B42D4(void (*a1)(void ***), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if ([ObjCClassFromMetadata hasPassedBuddy])
  {

    LOBYTE(aBlock) = 0;
    a1(&aBlock);
  }

  else
  {
    sub_100007F54();
    (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.utility(_:), v14);
    v21 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v18, v14);
    v22 = [objc_allocWithZone(DADBuddyStateObserver) initWithQueue:v21];
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_1005B4784;
    v23[4] = v19;
    v41 = sub_1005B4894;
    v42 = v23;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100019200;
    v40 = &unk_1008F91E0;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    [v25 setBuddyDidFinishHandler:v24];
    _Block_release(v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v41 = sub_1005B48A0;
    v42 = v26;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100019200;
    v40 = &unk_1008F9230;
    v27 = _Block_copy(&aBlock);
    v28 = v25;
    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v34 + 8))(v9, v6);
    (*(v32 + 8))(v13, v33);

    v29 = v35;
    swift_beginAccess();
    v30 = *(v29 + 16);
    *(v29 + 16) = v28;
  }
}

uint64_t sub_1005B4788(void *a1, uint64_t (*a2)(void))
{
  if (qword_100936630 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094DB38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DADBuddyStateObserver(Swift extension) hasPassedBuddyFuture fulfilled", v7, 2u);
  }

  [a1 stop];
  return a2(0);
}

uint64_t sub_1005B48B8(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

uint64_t sub_1005B4910()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB50);
  v1 = sub_100006654(v0, qword_10094DB50);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v34[-v5 - 8];
  v7 = *(v1 + 16);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EF0(v37, v36);
    v10 = type metadata accessor for Date();
    if (swift_dynamicCast())
    {
      sub_10000607C(v37);
      v11 = *(v10 - 8);
      v12 = *(v11 + 56);
      v12(v6, 0, 1, v10);
      (*(v11 + 32))(a1, v6, v10);
      return (v12)(a1, 0, 1, v10);
    }

    else
    {
      v16 = *(*(v10 - 8) + 56);
      v16(v6, 1, 1, v10);
      sub_1001AAD5C(v6);
      if (qword_100936638 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094DB50);
      sub_100005EF0(v37, v36);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v35 = v21;
        *v20 = 136315138;
        sub_100005EF0(v36, v34);
        v22 = String.init<A>(describing:)();
        v24 = v23;
        sub_10000607C(v36);
        v25 = sub_10000668C(v22, v24, &v35);
        v24, v26, v27, v28, v29, v30, v31, v32;
        *(v20 + 4) = v25;
        sub_10000607C(v21);
      }

      else
      {

        sub_10000607C(v36);
      }

      sub_10000607C(v37);
      return (v16)(a1, 1, 1, v10);
    }
  }

  else
  {
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDate.setter(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  sub_10012F78C(a1, &v13 - v5);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v11 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v11];
  swift_unknownObjectRelease();

  return sub_1001AAD5C(a1);
}

void (*RDSynchronizedKeyValueStore.lastDismissedDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  RDSynchronizedKeyValueStore.lastDismissedDate.getter(v4);
  return sub_1005B4FF0;
}

void sub_1005B4FF0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_10012F78C(v3, v2);
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v2);
    sub_1001AAD5C(v3);
  }

  else
  {
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t RDSynchronizedKeyValueStore.lastDismissedDateDidChangeExternally()()
{
  v0 = sub_1000F5104(&qword_10094DB68, &qword_1007B3738);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v7 - v3;
  v7[1] = RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(0xD00000000000002ELL, 0x80000001007B3720);
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  sub_10000CB48(&qword_10094DB80, &qword_10094DB68, &qword_1007B3738, &protocol conformance descriptor for Publishers.Filter<A>);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

BOOL sub_1005B5224(unsigned __int8 *a1)
{
  v1 = a1[8];
  if (v1 >= 2)
  {
    return v1 == 3;
  }

  v2 = (*a1 + 40);
  v3 = *(*a1 + 16) + 1;
  do
  {
    v4 = --v3 != 0;
    if (!v3)
    {
      break;
    }

    if (*(v2 - 1) == 0xD000000000000023 && 0x80000001007FD6B0 == *v2)
    {
      break;
    }

    v2 += 2;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
  return v4;
}

void (*sub_1005B5318(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  RDSynchronizedKeyValueStore.lastDismissedDate.getter(v4);
  return sub_1005B53D4;
}

void sub_1005B53D4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_10012F78C(v2, v3);
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v3);
    sub_1001AAD5C(v2);
  }

  else
  {
    RDSynchronizedKeyValueStore.lastDismissedDate.setter(v2);
  }

  free(v2);

  free(v3);
}

uint64_t sub_1005B5444()
{
  v0 = sub_1000F5104(&qword_10094DB68, &qword_1007B3738);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v7 - v3;
  v7[1] = RDSynchronizedKeyValueStore.storeDidChangeExternally(label:)(0xD00000000000002ELL, 0x80000001007B3720);
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  sub_10000CB48(&qword_10094DB80, &qword_10094DB68, &qword_1007B3738, &protocol conformance descriptor for Publishers.Filter<A>);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1005B560C()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC7remindd20RDDisplayDateUpdater_significantTimeNotificationStream);
  v3 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = ObjectType;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *(v2 + 16) = sub_1005B6BC8;
  *(v2 + 24) = v5;

  sub_1000FDA80(v6, v7);
}

void sub_1005B56DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayDateTimeZone];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005B5744(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDisplayDateTimeZone:?];
}

uint64_t sub_1005B57B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DB88);
  v1 = sub_100006654(v0, qword_10094DB88);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005B587C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100936640 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094DB88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Updating display dates in all stores due to significant time change…", v6, 2u);
    }

    v7 = [v2 persistentStoreCoordinator];
    v8 = [v7 persistentStores];

    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_8:
        if (v10 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          sub_1005B5A88(v12);
        }
      }
    }

    v9, v14, v15, v16, v17, v18, v19, v20;
  }
}

uint64_t sub_1005B5A88(void *a1)
{
  if (qword_100936640 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094DB88);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "UpdateDisplayDates BEGIN {store: %@}", v7, 0xCu);
    sub_100039860(v8);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd.RDDisplayDateUpdater.updateDisplayDates}", v12, 2u);
  }

  os_transaction_create();
  sub_1005B5D84(v4, v1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction RELEASE {name: com.apple.remindd.RDDisplayDateUpdater.updateDisplayDates}", v15, 2u);
  }

  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "UpdateDisplayDates END {store: %@}", v19, 0xCu);
    sub_100039860(v20);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1005B5D84(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v5 = [a1 persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setTransactionAuthor:RDStoreControllerDisplayDateUpdaterAuthor];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1005B6224;
  *(v7 + 24) = v6;
  v12[4] = sub_1000529DC;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F160;
  v12[3] = &unk_1008F9370;
  v8 = _Block_copy(v12);
  v9 = a1;
  v10 = v4;

  [v10 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1005B6230(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TimeZone.current.getter();
  Date.init()();
  v14 = TimeZone.secondsFromGMT(for:)();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v17 = sub_1003F71EC(KeyPath);

  *(inited + 32) = v17;
  v18 = swift_getKeyPath();
  v19 = sub_1003EFA90(v18, v14);

  *(inited + 40) = v19;
  v20 = sub_10000C2B0();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v21 = [objc_allocWithZone(NSFetchRequest) init];
  v22 = [swift_getObjCClassFromMetadata() entity];
  [v21 setEntity:v22];

  [v21 setAffectedStores:0];
  [v21 setPredicate:v20];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1007953F0;
  *(v23 + 32) = a1;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v24 = a1;
  v25 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23, v27, v28, v29, v30, v31, v32, v33;
  [v21 setAffectedStores:isa];

  [v21 setFetchBatchSize:64];
  v140 = v21;
  v34 = v139;
  v35 = NSManagedObjectContext.fetch<A>(_:)();
  v37 = v34;
  if (v34)
  {
    goto LABEL_2;
  }

  v38 = v35;
  v132 = v35 >> 62;
  if (v35 >> 62)
  {
LABEL_51:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
LABEL_6:
      v131 = v20;
      v20 = 0;
      v40 = v38 & 0xC000000000000001;
      v41 = v38 & 0xFFFFFFFFFFFFFF8;
      *&v36 = 134218240;
      v135 = v36;
      v133 = v25;
      v134 = v37;
      v138 = v38;
      v139 = v38 & 0xFFFFFFFFFFFFFF8;
      v136 = v39;
      v137 = v38 & 0xC000000000000001;
      do
      {
        if (v40)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v41 + 16))
          {
            goto LABEL_50;
          }

          v42 = *(v38 + 8 * v20 + 32);
        }

        v43 = v42;
        v44 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        [v42 updateDisplayDate];
        if (v44 & 0x3F) == 0 && ([v25 hasChanges])
        {
          if (qword_100936640 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_100006654(v45, qword_10094DB88);
          v46 = v25;
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = v135;
            v50 = [v46 updatedObjects];
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            sub_1003DB488();
            v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v51 & 0xC000000000000001) != 0)
            {
              v59 = __CocoaSet.count.getter();
            }

            else
            {
              v59 = *(v51 + 16);
            }

            v51, v52, v53, v54, v55, v56, v57, v58;
            *(v49 + 4) = v59;

            *(v49 + 12) = 2048;
            *(v49 + 14) = v44;
            _os_log_impl(&_mh_execute_header, v47, v48, "UpdateDisplayDates: Saving batch {updatedObjectsCount: %ld, totalUpdatedCount: %ld}", v49, 0x16u);

            v25 = v133;
            v37 = v134;
          }

          else
          {

            v47 = v46;
          }

          v141 = 0;
          v60 = [v46 save:&v141];
          v40 = v137;
          if (!v60)
          {
            v92 = v141;
            v138, v93, v94, v95, v96, v97, v98, v99;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v20 = v140;
            v140 = v43;
            goto LABEL_2;
          }

          v61 = v141;
          v38 = v138;
          v41 = v139;
          v39 = v136;
        }

        ++v20;
      }

      while (v44 != v39);
      if (![v25 hasChanges])
      {
        if (qword_100936640 != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        sub_100006654(v78, qword_10094DB88);

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();
        v81 = os_log_type_enabled(v79, v80);
        v82 = v131;
        if (!v81)
        {

          swift_bridgeObjectRelease_n();
          return;
        }

        v90 = swift_slowAlloc();
        *v90 = 134217984;
        if (v132)
        {
          v91 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v91 = *(v41 + 16);
        }

        v38, v83, v84, v85, v86, v87, v88, v89;
        *(v90 + 4) = v91;
        v38, v100, v101, v102, v103, v104, v105, v106;
        _os_log_impl(&_mh_execute_header, v79, v80, "Not saving since there are no changes {totalUpdatedCount: %ld}", v90, 0xCu);

        goto LABEL_3;
      }

      if (qword_100936640 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100006654(v62, qword_10094DB88);
      v63 = v25;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      v66 = os_log_type_enabled(v64, v65);
      v20 = v131;
      if (v66)
      {
        v67 = swift_slowAlloc();
        *v67 = v135;
        v68 = [v63 updatedObjects];
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        sub_1003DB488();
        v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v69 & 0xC000000000000001) != 0)
        {
          v77 = __CocoaSet.count.getter();
        }

        else
        {
          v77 = *(v69 + 16);
        }

        v69, v70, v71, v72, v73, v74, v75, v76;
        *(v67 + 4) = v77;

        *(v67 + 12) = 2048;
        if (v132)
        {
          v114 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v114 = *(v139 + 16);
        }

        v38, v107, v108, v109, v110, v111, v112, v113;
        *(v67 + 14) = v114;
        v38, v115, v116, v117, v118, v119, v120, v121;
        _os_log_impl(&_mh_execute_header, v64, v65, "UpdateDisplayDates: Saving last objects {updatedObjectsCount: %ld, totalUpdatedCount: %ld}", v67, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v141 = 0;
      if ([v63 save:{&v141, v131}])
      {
        v122 = v141;
      }

      else
      {
        v123 = v141;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

LABEL_2:

LABEL_3:
      return;
    }
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_6;
    }
  }

  v38, v124, v125, v126, v127, v128, v129, v130;
}

void sub_1005B6BD0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v113 = a4;
  *&v114 = a5;
  v126 = a3;
  v115 = a2;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v111 = *(v7 - 8);
  v112 = v7;
  __chkstk_darwin(v7, v8);
  v110 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v108 = type metadata accessor for UUID();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108, v10);
  v106 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v117, v17);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v116 = (&v104 - v22);
  __chkstk_darwin(v23, v24);
  v118 = &v104 - v25;
  v26 = _s10PredicatesOMa(0);
  *&v28 = __chkstk_darwin(v26, v27).n128_u64[0];
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = [a1 customContext];
  if (v32)
  {
    v33 = v32;
    v109 = v5;
    v34 = REMSmartListCustomContext.filter.getter();

    if (v34)
    {
      v35 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      *v30 = v34;
      v105 = v34;
      v36 = v31;
      *(v30 + 1) = [v31 accountID];
      v37 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v37 - 8) + 16))(&v30[v35], v126, v37);
      swift_storeEnumTagMultiPayload();
      v38 = sub_100043AA8();
      sub_1001A4F3C(v30, _s10PredicatesOMa);
      (*(v13 + 16))(v16, v114, v12);
      v39 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
      v40 = type metadata accessor for REMRemindersListDataView.SortingDirection();
      v41 = v116;
      (*(*(v40 - 8) + 104))(v116, v39, v40);
      swift_storeEnumTagMultiPayload();
      v42 = v118;
      sub_1005368D8(v16, v41, v118);
      sub_1001A4ED8(v42, v19, v43);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1001A4F3C(v19, _s9UtilitiesO12SortingStyleOMa);
      v45 = v115;
      if (EnumCaseMultiPayload == 5)
      {
        v46 = [v36 objectID];
        v47 = [v46 uuid];

        v48 = v106;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = UUID.uuidString.getter();
        v50 = v36;
        v52 = v51;
        (*(v107 + 8))(v48, v108);
        v53 = [v50 accountID];
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        v54 = swift_allocObject();
        *(v54 + 16) = 2;
        *(v54 + 24) = v49;
        *(v54 + 32) = v52;
        *(v54 + 40) = v53;
        *(v54 + 48) = v45;
        *(v54 + 56) = &v123;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_10026A4B4;
        *(v55 + 24) = v54;
        v121 = sub_1000529DC;
        v122 = v55;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F160;
        v120 = &unk_1008F9448;
        v56 = _Block_copy(aBlock);
        v57 = v53;
        v58 = v45;

        [v58 performBlockAndWait:v56];

        _Block_release(v56);
        LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

        if (v57)
        {
          __break(1u);
LABEL_17:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        v59 = v125;
        v114 = v123;
        v108 = v124;

        v60 = [v50 accountID];
        v42 = v118;
        sub_1001A4F3C(v118, _s9UtilitiesO12SortingStyleOMa);
        v61 = v116;
        v62 = v108;
        *v116 = v114;
        *(v61 + 16) = v62;
        *(v61 + 32) = v59;
        *(v61 + 40) = v60;
        swift_storeEnumTagMultiPayload();
        sub_1001B1DA0(v61, v42, v63);
        v36 = v50;
      }

      v64 = [v36 accountID];
      v65 = [v45 persistentStoreOfAccountWithAccountID:v64];

      if (v65)
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1007953F0;
        *(v66 + 32) = v65;
      }

      else
      {
        v66 = 0;
      }

      v67 = v105;
      v68 = v110;
      REMCustomSmartListFilterDescriptor.operation.getter();
      v69 = (*(v111 + 88))(v68, v112);
      if (v69 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
      {
        v70 = static Set<>.typesSupportedByCustomSmartList.getter();
        v71 = static Set<>.typesIndescribableByNSPredicate.getter();
        v73 = sub_1001A2030(v71, v70, v72);
        v71, v74, v75, v76, v77, v78, v79, v80;
LABEL_15:
        v120 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v121 = sub_10012DEEC();
        aBlock[0] = v45;
        v81 = v45;
        v82 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

        v73, v83, v84, v85, v86, v87, v88, v89;
        sub_10000607C(aBlock);
        sub_100536D54(v81, v38, v42, v126, v113, v82, v66);
        sub_1001A4F3C(v42, _s9UtilitiesO12SortingStyleOMa);
        v82, v90, v91, v92, v93, v94, v95, v96;

        v66, v97, v98, v99, v100, v101, v102, v103;
        return;
      }

      if (v69 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
      {
        v73 = static Set<>.typesSupportedByCustomSmartList.getter();
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }
}

uint64_t sub_1005B74B8(void *a1, void *a2, char *a3, uint64_t a4, void *a5)
{
  v234 = a4;
  v230 = a5;
  v231 = a3;
  v227 = a2;
  v218 = a1;
  v207 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v210 = *(v207 - 8);
  __chkstk_darwin(v207, v5);
  v206 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v221 = *(Subtasks - 8);
  v222 = Subtasks;
  __chkstk_darwin(Subtasks, v8);
  v220 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = _s10PredicatesOMa(0);
  __chkstk_darwin(v213, v10);
  v205 = (&v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v13);
  v211 = (&v205 - v14);
  v219 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v223 = *(v219 - 8);
  __chkstk_darwin(v219, v15);
  v209 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v217 = &v205 - v19;
  v20 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v232 = *(v20 - 8);
  v233 = v20;
  __chkstk_darwin(v20, v21);
  v208 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v228 = &v205 - v25;
  v240 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v26 = *(v240 - 8);
  __chkstk_darwin(v240, v27);
  v212 = &v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v226 = &v205 - v31;
  __chkstk_darwin(v32, v33);
  v236 = &v205 - v34;
  v35 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v35 - 8, v36);
  v216 = &v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v41 = &v205 - v40;
  __chkstk_darwin(v42, v43);
  v45 = &v205 - v44;
  v46 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  v47 = v46 - 8;
  __chkstk_darwin(v46, v48);
  v50 = &v205 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51, v52);
  v54 = &v205 - v53;
  sub_100010364(v231, &v205 - v53, &qword_100938A70, &qword_1007ACC60);
  v55 = &v54[*(v47 + 56)];
  v224 = *(v26 + 16);
  v225 = v26 + 16;
  v224(v55, v234, v240);
  *&v54[*(v47 + 72)] = v230;
  sub_100010364(v54, v50, &qword_10093AE38, &unk_100798450);
  v229 = *&v50[*(v47 + 72)];
  sub_100031B58(v50, v45, &qword_100938A70, &qword_1007ACC60);
  v234 = v26;
  v56 = v236;
  (*(v26 + 32))();
  v231 = v45;
  sub_100010364(v45, v41, &qword_100938A70, &qword_1007ACC60);
  v57 = v232;
  v58 = v233;
  v215 = *(v232 + 48);
  v214 = v232 + 48;
  v59 = v215(v41, 1);

  if (v59 != 1)
  {
    v229, v60, v61, v62, v63, v64, v65, v66;
    v75 = v57;
    v76 = *(v57 + 32);
    v77 = v228;
    v78 = v58;
    v76(v228, v41, v58);
    v79 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    v80 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v75 + 8))(v77, v78);
    (*(v234 + 8))(v56, v240);
    sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
    v81 = v79 + v80;
    if (!__OFADD__(v79, v80))
    {
LABEL_5:
      v82 = v81 <= 0;
      goto LABEL_6;
    }

    goto LABEL_52;
  }

  sub_1000050A4(v41, &qword_100938A70, &qword_1007ACC60);
  if (*v229->clientIdentity)
  {
    v229, v67, v68, v69, v70, v71, v72, v73;
    (*(v234 + 8))(v236, v240);
    sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
    v74 = 1;
    return v74 & 1;
  }

  v84 = v229;
  v85 = v226;
  v86 = v236;
  v87 = v240;
  v224(v226, v236, v240);
  v88 = v234;
  v89 = (*(v234 + 88))(v85, v87);
  if (v89 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v89 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    v84, v90, v91, v92, v93, v94, v95, v96;
    (*(v88 + 8))(v85, v87);
LABEL_13:
    v97 = [v227 customContext];
    if (!v97 || (v98 = v97, v99 = REMSmartListCustomContext.filter.getter(), v98, !v99))
    {
      (*(v88 + 8))(v86, v87);
      sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
      v116 = &qword_10093AE38;
      v117 = &unk_100798450;
      v118 = v54;
LABEL_18:
      sub_1000050A4(v118, v116, v117);
      v74 = 0;
      return v74 & 1;
    }

    v100 = v217;
    REMCustomSmartListFilterDescriptor.operation.getter();
    v101 = v223 + 88;
    v102 = *(v223 + 88);
    v103 = v102(v100, v219);
    v230 = v99;
    v223 = v101;
    LODWORD(v229) = enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
    if (v103 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
    {
      v104 = static Set<>.typesSupportedByCustomSmartList.getter();
      v105 = static Set<>.typesIndescribableByNSPredicate.getter();
      v107 = sub_1001A2030(v105, v104, v106);
      v105, v108, v109, v110, v111, v112, v113, v114;
      v115 = v220;
    }

    else
    {
      v115 = v220;
      if (v103 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
      {
        goto LABEL_53;
      }

      v107 = static Set<>.typesSupportedByCustomSmartList.getter();
    }

    v238 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
    v119 = sub_10012DEEC();
    v239 = v119;
    v237 = v218;
    v120 = v218;
    v121 = v230;
    v122 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

    v107, v123, v124, v125, v126, v127, v128, v129;
    sub_10000607C(&v237);
    v130 = *(v122 + 16);
    v122, v131, v132, v133, v134, v135, v136, v137;
    if (!v130)
    {
      v159 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
      v160 = v211;
      *v211 = v121;
      v161 = v121;
      *(v160 + 8) = [v227 accountID];
      v162 = v234;
      v163 = v240;
      (*(v234 + 104))(v160 + v159, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v240);
      swift_storeEnumTagMultiPayload();
      v164 = sub_100043AA8();
      sub_1001A4F3C(v160, _s10PredicatesOMa);
      sub_100345DB0();
      v165 = [objc_allocWithZone(NSFetchRequest) init];
      v166 = [swift_getObjCClassFromMetadata() entity];
      [v165 setEntity:v166];

      [v165 setAffectedStores:0];
      [v165 setPredicate:v164];
      [v165 setFetchLimit:1];
      [v165 setAffectedStores:0];
      v167 = v235;
      v168 = NSManagedObjectContext.count<A>(for:)();
      v235 = v167;
      if (v167)
      {

        (*(v162 + 8))(v236, v163);
LABEL_40:
        sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
        sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
        return v74 & 1;
      }

      v172 = v168;

      (*(v162 + 8))(v236, v163);
      sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
      v82 = v172 <= 0;
LABEL_6:
      v74 = !v82;
      return v74 & 1;
    }

    v138 = v120;
    (*(v221 + 104))(v115, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v222);
    v139 = [v227 customContext];
    if (!v139)
    {
      v169 = 1;
      v170 = v240;
      v171 = v233;
      v142 = v216;
LABEL_47:
      (*(v221 + 8))(v115, v222);
      v201 = v232;
      (*(v232 + 56))(v142, v169, 1, v171);
      if ((v215)(v142, 1, v171) == 1)
      {

        (*(v234 + 8))(v236, v170);
        sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
        sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
        v118 = v142;
        v116 = &qword_100938A70;
        v117 = &qword_1007ACC60;
        goto LABEL_18;
      }

      v202 = v208;
      (*(v201 + 32))(v208, v142, v171);
      v203 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
      v204 = REMRemindersListDataView.CountByCompleted.completed.getter();

      (*(v201 + 8))(v202, v171);
      (*(v234 + 8))(v236, v170);
      sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
      sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
      v81 = v203 + v204;
      if (!__OFADD__(v203, v204))
      {
        goto LABEL_5;
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v140 = v139;
    v141 = REMSmartListCustomContext.filter.getter();

    v142 = v216;
    if (!v141)
    {
      v169 = 1;
      v170 = v240;
LABEL_46:
      v171 = v233;
      goto LABEL_47;
    }

    v143 = v209;
    REMCustomSmartListFilterDescriptor.operation.getter();
    v144 = v102(v143, v219);
    if (v144 == v229)
    {
      v145 = static Set<>.typesSupportedByCustomSmartList.getter();
      v146 = static Set<>.typesIndescribableByNSPredicate.getter();
      v148 = sub_1001A2030(v146, v145, v147);
      v146, v149, v150, v151, v152, v153, v154, v155;
      v156 = v234;
      v157 = v210;
      v158 = v212;
LABEL_37:
      v238 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
      v239 = v119;
      v237 = v138;
      v173 = v138;
      v174 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

      v148, v175, v176, v177, v178, v179, v180, v181;
      sub_10000607C(&v237);
      v182 = *(v174 + 16);
      v174, v183, v184, v185, v186, v187, v188, v189;
      if (v182)
      {
        v190 = v240;
        (*(v156 + 104))(v158, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v240);
        v191 = v158;
        v192 = v206;
        v193 = v207;
        (*(v157 + 104))(v206, enum case for REMRemindersListDataView.SortingStyle.default(_:), v207);
        v194 = v173;
        v115 = v220;
        v195 = v235;
        sub_1005B6BD0(v227, v194, v191, v220, v192);
        v235 = v195;
        if (v195)
        {

          (*(v157 + 8))(v192, v193);
          v196 = *(v156 + 8);
          v196(v212, v190);
          (*(v221 + 8))(v115, v222);
          v196(v236, v190);
          goto LABEL_40;
        }

        (*(v157 + 8))(v192, v193);
        (*(v156 + 8))(v212, v190);
        v142 = v216;
        REMRemindersListDataView.CountByCompleted.init(reminders:)();
        v170 = v190;
      }

      else
      {
        v197 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
        v198 = v205;
        *v205 = v141;
        v199 = v141;
        *(v198 + 8) = [v227 accountID];
        v170 = v240;
        (*(v156 + 104))(v198 + v197, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v240);
        swift_storeEnumTagMultiPayload();
        v141 = sub_100043AA8();
        sub_1001A4F3C(v198, _s10PredicatesOMa);
        v142 = v216;
        v200 = v235;
        sub_10053464C(v173, v141);
        v235 = v200;
        if (v200)
        {

          (*(v221 + 8))(v220, v222);
          (*(v156 + 8))(v236, v170);
          goto LABEL_40;
        }

        v115 = v220;
      }

      v169 = 0;
      goto LABEL_46;
    }

    v156 = v234;
    v158 = v212;
    if (v144 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
    {
      v148 = static Set<>.typesSupportedByCustomSmartList.getter();
      v157 = v210;
      goto LABEL_37;
    }

LABEL_53:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_54;
  }

  if (v89 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    v84, v90, v91, v92, v93, v94, v95, v96;
    goto LABEL_13;
  }

  if (v89 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    v84, v90, v91, v92, v93, v94, v95, v96;
    (*(v88 + 8))(v86, v87);
    sub_1000050A4(v231, &qword_100938A70, &qword_1007ACC60);
    sub_1000050A4(v54, &qword_10093AE38, &unk_100798450);
    v74 = 0;
    return v74 & 1;
  }

LABEL_54:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1005B86C8(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v335 = a2;
  v319 = a5;
  v311 = type metadata accessor for UUID();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311, v9);
  v309 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  __chkstk_darwin(v11 - 8, v12);
  v318 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v326 = &v294 - v16;
  v317 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v316 = *(v317 - 8);
  __chkstk_darwin(v317, v17);
  v315 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v325 = &v294 - v21;
  v22 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v22 - 8, v23);
  v306 = &v294 - v24;
  v329 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v328 = *(v329 - 8);
  __chkstk_darwin(v329, v25);
  v330 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v332 = &v294 - v29;
  v331 = type metadata accessor for REMRemindersListDataView.Diff();
  v327 = *(v331 - 8);
  __chkstk_darwin(v331, v30);
  v314 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v324 = &v294 - v34;
  __chkstk_darwin(v35, v36);
  v323 = &v294 - v37;
  __chkstk_darwin(v38, v39);
  v337 = &v294 - v40;
  v307 = _s10PredicatesOMa(0);
  __chkstk_darwin(v307, v41);
  v308 = (&v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v322 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v321 = *(v322 - 8);
  __chkstk_darwin(v322, v43);
  v320 = &v294 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v45 - 8, v46);
  v313 = &v294 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v49);
  v333 = &v294 - v50;
  __chkstk_darwin(v51, v52);
  v336 = &v294 - v53;
  v54 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v343 = *(v54 - 1);
  v344 = v54;
  __chkstk_darwin(v54, v55);
  v312 = &v294 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57, v58);
  v341 = (&v294 - v59);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v349 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v60);
  v338 = &v294 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62, v63);
  v340 = (&v294 - v64);
  v65 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v345 = *(v65 - 8);
  __chkstk_darwin(v65, v66);
  v68 = &v294 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69, v70);
  v72 = &v294 - v71;
  __chkstk_darwin(v73, v74);
  v76 = &v294 - v75;
  __chkstk_darwin(v77, v78);
  v80 = &v294 - v79;
  __chkstk_darwin(v81, v82);
  v339 = &v294 - v83;
  v342 = a4;
  v84 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.smartList.getter();
  v347 = a1;
  sub_1005BA098(a1, a3, v84);
  if (v5)
  {

    return;
  }

  v86 = v85;
  v302 = v80;
  v303 = v76;
  v299 = v72;
  v300 = v68;
  v304 = v65;
  v301 = a3;

  v87 = v86;
  v88 = v339;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter();
  v89 = v340;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.fetchSubtasks.getter();
  v90 = v341;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.sortingStyle.getter();
  sub_1005B6BD0(v87, v347, v88, v89, v90);
  v305 = 0;
  v297 = v91;
  v298 = v87;
  v295 = *(v343 + 8);
  v295(v90, v344);
  v92 = *(v349 + 1);
  v349 += 8;
  v341 = v92;
  v92(v89, Subtasks);
  v93 = v345;
  v94 = v345 + 8;
  v95 = *(v345 + 8);
  v96 = v304;
  v95(v88, v304);
  v97 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.countCompleted.getter();
  v340 = v95;
  v296 = v94;
  if (v97 & 1) != 0 && (v98 = v302, REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter(), v99 = v303, (*(v93 + 104))(v303, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v96), v100 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)(), v95(v99, v96), v95(v98, v96), (v100))
  {

    v101 = v336;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v102 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    v103 = v337;
  }

  else
  {
    v104 = REMRemindersListDataView.CustomSmartListInvocation.Parameters.countCompleted.getter();
    REMRemindersListDataView.CustomSmartListInvocation.Parameters.fetchSubtasks.getter();
    if (v104)
    {
      v105 = [v298 customContext];
      v101 = v336;
      if (v105 && (v106 = v105, v107 = REMSmartListCustomContext.filter.getter(), v106, v107))
      {
        v108 = v320;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v109 = (*(v321 + 88))(v108, v322);
        if (v109 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v110 = static Set<>.typesSupportedByCustomSmartList.getter();
          v111 = static Set<>.typesIndescribableByNSPredicate.getter();
          v113 = sub_1001A2030(v111, v110, v112);
          v111, v114, v115, v116, v117, v118, v119, v120;
        }

        else
        {
          if (v109 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_56;
          }

          v113 = static Set<>.typesSupportedByCustomSmartList.getter();
        }

        v152 = Subtasks;
        v348[3] = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v348[4] = sub_10012DEEC();
        v348[0] = v347;
        v153 = v347;
        v154 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

        v113, v155, v156, v157, v158, v159, v160, v161;
        sub_10000607C(v348);
        v162 = *(v154 + 16);
        v154, v163, v164, v165, v166, v167, v168, v169;
        if (v162)
        {
          v170 = v299;
          v171 = v304;
          (*(v345 + 104))(v299, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v304);
          v172 = v344;
          v173 = v312;
          (*(v343 + 104))(v312, enum case for REMRemindersListDataView.SortingStyle.default(_:), v344);
          v174 = v298;
          v175 = v153;
          v176 = v338;
          v177 = v305;
          sub_1005B6BD0(v298, v175, v170, v338, v173);
          v305 = v177;
          if (v177)
          {
            v297, v178, v179, v180, v181, v182, v183, v184;

            v295(v173, v172);
            v340(v170, v171);
            v341(v176, Subtasks);
            return;
          }

          v295(v173, v172);
          v340(v170, v171);
          REMRemindersListDataView.CountByCompleted.init(reminders:)();
        }

        else
        {
          v185 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
          v186 = v308;
          *v308 = v107;
          v344 = v107;
          v187 = v298;
          *(v186 + 8) = [v298 accountID];
          (*(v345 + 104))(v186 + v185, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v304);
          swift_storeEnumTagMultiPayload();
          v107 = sub_100043AA8();
          sub_1001A4F3C(v186, _s10PredicatesOMa);
          v188 = v305;
          sub_10053464C(v153, v107);
          if (v188)
          {

            v297, v189, v190, v191, v192, v193, v194, v195;
            v341(v338, v152);
            return;
          }

          v305 = 0;
        }

        v121 = 0;
      }

      else
      {
        v121 = 1;
      }

      v103 = v337;
    }

    else
    {
      v121 = 1;
      v101 = v336;
      v103 = v337;
    }

    v341(v338, Subtasks);
    v122 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v123 = v333;
    (*(*(v122 - 8) + 56))(v333, v121, 1, v122);
    sub_100031B58(v123, v101, &qword_100938A70, &qword_1007ACC60);
  }

  v124 = [v334 fetchResultTokenToDiffAgainst];
  v125 = v305;
  sub_100534D44(v124, v103);
  if (v125)
  {
    v126 = v298;

    v297, v127, v128, v129, v130, v131, v132, v133;
    sub_1000050A4(v101, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v134 = v332;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.remindersPrefetch.getter();
  v135 = v328;
  v136 = v330;
  v137 = v329;
  (*(v328 + 16))(v330, v134, v329);
  v138 = (*(v135 + 88))(v136, v137);
  v305 = 0;
  if (v138 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v141 = v347;
    v144 = v301;
    if (v138 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v145 = v330;
      (*(v135 + 96))(v330, v137);
      v142 = sub_10053E698(*v145, v337, v141, v144, 0);
      v143 = &_swiftEmptyArrayStorage;
      v140 = v297;
      goto LABEL_32;
    }

    if (v138 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v146 = v330;
      (*(v135 + 96))(v330, v137);
      v147 = *v146;
      v148 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      v149 = v306;
      sub_100031B58(v146 + *(v148 + 48), v306, &qword_10094B8E0, &unk_1007AABD0);
      v150 = v147;
      v140 = v297;
      v142 = sub_10053DB98(v150, v297, v141, v144, 0);
      v143 = sub_10053EBE4(v149, v140, v141, v144, 0);
      v151 = v149;
      v137 = v329;
      sub_1000050A4(v151, &qword_10094B8E0, &unk_1007AABD0);
      goto LABEL_32;
    }

    if (v138 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
      v143 = &_swiftEmptyArrayStorage;
      v142 = &_swiftEmptyArrayStorage;
      v141 = v347;
      v140 = v297;
      v135 = v328;
      goto LABEL_32;
    }

LABEL_56:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  (*(v135 + 96))(v136, v137);
  v139 = *v136;
  v140 = v297;
  v141 = v347;
  v142 = sub_10053DB98(v139, v297, v347, v301, 0);
  v143 = &_swiftEmptyArrayStorage;
LABEL_32:
  (*(v135 + 8))(v332, v137);
  v196 = v300;
  REMRemindersListDataView.CustomSmartListInvocation.Parameters.showCompleted.getter();
  v197 = v141;
  v198 = v298;
  v199 = v305;
  sub_1005B74B8(v197, v298, v101, v196, v140);
  v305 = v199;
  if (v199)
  {
    v140, v200, v201, v202, v203, v204, v205, v206;
    v142, v207, v208, v209, v210, v211, v212, v213;
    v143, v214, v215, v216, v217, v218, v219, v220;

    v340(v196, v304);
    (*(v327 + 8))(v337, v331);
    v221 = v101;
  }

  else
  {
    v340(v196, v304);
    sub_100010364(v101, v313, &qword_100938A70, &qword_1007ACC60);

    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v222 = [v198 objectID];

    v223 = [v198 accountID];
    ManualOrdering = REMRemindersListDataView.CustomSmartListInvocation.Parameters.shouldFetchManualOrderingID.getter();
    v225 = v327;
    if (ManualOrdering)
    {
      v226 = [v222 uuid];
      v227 = v309;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v228 = UUID.uuidString.getter();
      v230 = v229;
      (*(v310 + 8))(v227, v311);
      sub_10053F868(2, v228, v230, v223, v347);
      v232 = v326;
      v233 = v324;
      if (!v231)
      {
        v231 = [objc_opt_self() newObjectID];
      }

      v234 = v231;
      REMObjectID.codable.getter();
      REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

      v235 = 0;
    }

    else
    {
      v235 = 1;
      v232 = v326;
      v233 = v324;
    }

    v236 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v236 - 8) + 56))(v232, v235, 1, v236);
    if (qword_100936648 != -1)
    {
      swift_once();
    }

    v237 = type metadata accessor for Logger();
    sub_100006654(v237, qword_10094DBD8);
    v238 = *(v225 + 16);
    v239 = v323;
    v240 = v337;
    v241 = v331;
    (v238)(v323, v337, v331);
    v347 = v238;
    (v238)(v233, v240, v241);
    v242 = v233;
    v243 = v297;

    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      *v246 = 134218496;
      v247 = *v243->clientIdentity;
      v243, v248, v249, v250, v251, v252, v253, v254;
      *(v246 + 4) = v247;
      v243, v255, v256, v257, v258, v259, v260, v261;
      *(v246 + 12) = 2048;
      v262 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v262 & 0xC000000000000001) != 0)
      {
        v270 = v262;
        v271 = __CocoaSet.count.getter();
        v262 = v270;
        v239 = v323;
      }

      else
      {
        v271 = *(v262 + 16);
      }

      v274 = v314;
      v262, v263, v264, v265, v266, v267, v268, v269;
      v275 = *(v225 + 8);
      Subtasks = (v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v349 = v275;
      (v275)(v239, v331);
      *(v246 + 14) = v271;
      *(v246 + 22) = 2048;
      v276 = v324;
      v277 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v277 & 0xC000000000000001) != 0)
      {
        v285 = v277;
        v286 = __CocoaSet.count.getter();
        v277 = v285;
        v276 = v324;
      }

      else
      {
        v286 = *(v277 + 16);
      }

      v277, v278, v279, v280, v281, v282, v283, v284;
      v287 = v331;
      (v349)(v276, v331);
      *(v246 + 24) = v286;
      v273 = v287;
      _os_log_impl(&_mh_execute_header, v244, v245, "reminders %ld updated %ld inserted %ld", v246, 0x20u);
    }

    else
    {
      v272 = *(v225 + 8);
      Subtasks = (v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v272(v242, v241);
      v349 = v272;
      v272(v239, v241);

      swift_bridgeObjectRelease_n();
      v273 = v241;
      v274 = v314;
    }

    v288 = v318;
    v289 = v316;
    v290 = v325;
    v291 = v317;
    (*(v316 + 16))(v315, v325, v317);
    v292 = v337;
    (v347)(v274, v337, v273);
    v293 = v326;
    sub_100010364(v326, v288, &qword_100938A68, &unk_10079DDF0);
    REMRemindersListDataView.CustomSmartListInvocation.Result.init(model:diff:smartList:manualOrderingID:)();
    sub_1000050A4(v293, &qword_100938A68, &unk_10079DDF0);
    (*(v289 + 8))(v290, v291);
    (v349)(v292, v273);
    v221 = v336;
  }

  sub_1000050A4(v221, &qword_100938A70, &qword_1007ACC60);
}

uint64_t sub_1005B9F38()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DBD8);
  v1 = sub_100006654(v0, qword_10094DBD8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1005BA018(uint64_t a1, __n128 a2)
{
  result = sub_1005BA040(a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005BA040(__n128 a1)
{
  result = qword_10094DC10;
  if (!qword_10094DC10)
  {
    type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094DC10);
  }

  return result;
}

void sub_1005BA098(void *a1, void *a2, id a3)
{
  v7 = REMSmartListTypeCustom;
  v8 = [a3 objectID];
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v10 = sub_100717244(v7, v8, a1, qword_1009752F0, v9);

  if (v3)
  {
    return;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007953F0;
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = sub_1000303FC(v11, a2);
  v11, v14, v15, v16, v17, v18, v19, v20;
  if (v13 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_11:

    v13, v29, v30, v31, v32, v33, v34, v35;
    v36 = a3;
    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *&v13->clientIdentity[16];
LABEL_9:

    v13, v22, v23, v24, v25, v26, v27, v28;
    return;
  }

  __break(1u);
}

uint64_t sub_1005BA25C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC18);
  v1 = sub_100006654(v0, qword_10094DC18);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005BA324()
{
  v0 = sub_10038D894(&off_1008DED10);
  result = swift_arrayDestroy();
  qword_10094DC30 = v0;
  return result;
}

unint64_t sub_1005BA370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v312 = &v307 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v314 = &v307 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v307 - v15;
  v323 = sub_10038E004(&_swiftEmptyArrayStorage);
  v329 = a1;
  v330 = a2;
  v334 = 10;
  v335 = 0xE100000000000000;
  v17 = sub_10013BCF4();
  v18 = StringProtocol.components<A>(separatedBy:)();
  v317 = *(v18 + 16);
  if (!v317)
  {
    goto LABEL_127;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v315 = v18 + 32;
  v328 = (v7 + 8);
  v316 = &v332 + 1;
  v313 = a3 + 32;
  v309 = 0x80000001007FD7A0;
  v320 = a3;
  v30 = &type metadata for String;
  *&v26 = 136380675;
  v308 = v26;
  *&v26 = 136446210;
  v307 = v26;
  v321 = v6;
  v327 = v17;
  v311 = v18;
  while (1)
  {
    if (v29 >= *(v18 + 16))
    {
      goto LABEL_129;
    }

    v38 = (v315 + 16 * v29);
    v40 = *v38;
    v39 = v38[1];
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      goto LABEL_5;
    }

    v334 = v40;
    v335 = v39;
    v332 = 0x88E2BFA3EF8F88E2;
    v333 = 0xA90000000000008FLL;

    v42 = StringProtocol.components<A>(separatedBy:)();
    if (*(v42 + 16) < 2uLL)
    {
      v318 = v42;
      v28, v43, v44, v45, v46, v47, v48, v49;
      v334 = v40;
      v335 = v39;
      v50 = v314;
      static CharacterSet.punctuationCharacters.getter();
      v51 = v312;
      static CharacterSet.whitespacesAndNewlines.getter();
      CharacterSet.union(_:)();
      v52 = *v328;
      (*v328)(v51, v6);
      v52(v50, v6);
      v27 = StringProtocol.trimmingCharacters(in:)();
      v28 = v53;
      v52(v16, v6);
      v39, v54, v55, v56, v57, v58, v59, v60;
      v334 = 0;
      v335 = 0xE000000000000000;

      _StringGuts.grow(_:)(45);
      v335, v61, v62, v63, v64, v65, v66, v67;
      v334 = 0xD00000000000002BLL;
      v335 = v309;
      v68._countAndFlagsBits = v27;
      v68._object = v28;
      String.append(_:)(v68);
      v28, v69, v70, v71, v72, v73, v74, v75;
      v77 = v334;
      v76 = v335;
      v78 = [objc_opt_self() daemonUserDefaults];
      LODWORD(v52) = [v78 isAutoCategorizationLoggingEnabled];

      if (v52)
      {
        if (qword_100936158 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        sub_100006654(v86, qword_100947448);

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        v76, v89, v90, v91, v92, v93, v94, v95;
        if (os_log_type_enabled(v87, v88))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v334 = v104;
          *v103 = v308;
          *(v103 + 4) = sub_10000668C(v77, v76, &v334);
          _os_log_impl(&_mh_execute_header, v87, v88, "%{private}s", v103, 0xCu);
          sub_10000607C(v104);
        }

        v318, v96, v97, v98, v99, v100, v101, v102;
        v76, v31, v32, v33, v34, v35, v36, v37;
      }

      else
      {
        v318, v79, v80, v81, v82, v83, v84, v85;
        v76, v124, v125, v126, v127, v128, v129, v130;
      }

      v6 = v321;
      v18 = v311;
      v30 = &type metadata for String;
      goto LABEL_5;
    }

    v105 = *(v42 + 32);
    v106 = *(v42 + 40);
    v107 = v42;

    v39, v108, v109, v110, v111, v112, v113, v114;
    v115 = *(v107 + 16);
    if (!v115)
    {
      goto LABEL_136;
    }

    v325 = v27;
    v116 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v107;
    v310 = v29;
    if (isUniquelyReferenced_nonNull_native && (v115 - 1) <= *(v107 + 24) >> 1)
    {
      v123 = v28;
    }

    else
    {
      v123 = v28;
      v122 = sub_100365788(isUniquelyReferenced_nonNull_native, v115, 1, v107, v118, v119, v120, v121);
    }

    v131 = v122;
    sub_100034610(&v122->clientIdentity[16]);
    v132 = *v131->clientIdentity;
    memmove(&v131->clientIdentity[16], &v131->clientIdentity[32], 16 * v132 - 16);
    v318 = v131;
    *v131->clientIdentity = v132 - 1;
    v332 = v105;
    v333 = v106;
    v133 = v314;
    static CharacterSet.punctuationCharacters.getter();
    v134 = v312;
    static CharacterSet.whitespacesAndNewlines.getter();
    CharacterSet.union(_:)();
    v135 = *v328;
    v136 = v134;
    v137 = v321;
    (*v328)(v136, v321);
    v135(v133, v137);
    v138 = StringProtocol.trimmingCharacters(in:)();
    v140 = v139;
    v326 = v135;
    v135(v16, v137);
    v106, v141, v142, v143, v144, v145, v146, v147;
    v334 = v138;
    v335 = v140;
    v155 = (v140 >> 56) & 0xF;
    v319 = v138;
    v322 = v140;
    if ((v140 & 0x2000000000000000) == 0)
    {
      v155 = v138 & 0xFFFFFFFFFFFFLL;
    }

    if (v155)
    {
      v156 = v123;
LABEL_28:
      v6 = v321;
      v156, v148, v149, v150, v151, v152, v153, v154;
      goto LABEL_29;
    }

    if (v123)
    {
      swift_beginAccess();
      v334 = v325;
      v335 = v123;
      v156 = v322;
      v322 = v123;
      v319 = v325;
      goto LABEL_28;
    }

    v6 = v321;
LABEL_29:
    v30 = v116;
    if (qword_100936658 != -1)
    {
      swift_once();
    }

    v157 = qword_10094DC30;
    v158 = v322;

    LOBYTE(v157) = sub_100240BDC(v319, v158, v157);
    v158, v159, v160, v161, v162, v163, v164, v165;
    if (v157)
    {
      if (qword_100936650 != -1)
      {
        swift_once();
      }

      v166 = type metadata accessor for Logger();
      sub_100006654(v166, qword_10094DC18);
      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v167, v168))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v332 = v177;
        *v176 = v307;
        v178 = v322;

        v179 = sub_10000668C(v319, v178, &v332);
        v178, v180, v181, v182, v183, v184, v185, v186;
        *(v176 + 4) = v179;
        _os_log_impl(&_mh_execute_header, v167, v168, "RDAutoCategorizer exclude category: %{public}s", v176, 0xCu);
        sub_10000607C(v177);

        v318, v187, v188, v189, v190, v191, v192, v193;
        v201 = v178;
      }

      else
      {
        v318, v169, v170, v171, v172, v173, v174, v175;
        v201 = v322;
      }

      v201, v194, v195, v196, v197, v198, v199, v200;

      goto LABEL_124;
    }

    if (!*v318->clientIdentity)
    {
      goto LABEL_137;
    }

    v202 = *&v318->clientIdentity[24];
    v332 = *&v318->clientIdentity[16];
    v333 = v202;

    static CharacterSet.decimalDigits.getter();
    v203 = v314;
    CharacterSet.inverted.getter();
    v204 = v326;
    v326(v16, v6);
    v205 = StringProtocol.components(separatedBy:)();
    v204(v203, v6);
    v206 = v205;
    v202, v207, v208, v209, v210, v211, v212, v213;
    v325 = *(v205 + 16);
    if (v325)
    {
      break;
    }

LABEL_121:
    v206, v214, v215, v216, v217, v218, v219, v220;
    v318, v292, v293, v294, v295, v296, v297, v298;
    v322, v299, v300, v301, v302, v303, v304, v305;
LABEL_124:
    v27 = 0;
    v28 = 0;
    v18 = v311;
    v29 = v310;
LABEL_5:
    if (++v29 == v317)
    {
      v18, v19, v20, v21, v22, v23, v24, v25;
      v18 = v28;
LABEL_127:
      v18, v19, v20, v21, v22, v23, v24, v25;
      return v323;
    }
  }

  v221 = 0;
  v324 = v205 + 32;
  while (v221 < *(v206 + 16))
  {
    v222 = *(v324 + 16 * v221 + 8);
    v332 = *(v324 + 16 * v221);
    v333 = v222;

    static CharacterSet.whitespaces.getter();
    v223 = StringProtocol.trimmingCharacters(in:)();
    v225 = v224;
    v326(v16, v6);
    v222, v226, v227, v228, v229, v230, v231, v232;
    v239 = HIBYTE(v225) & 0xF;
    v240 = v223 & 0xFFFFFFFFFFFFLL;
    if ((v225 & 0x2000000000000000) != 0)
    {
      v241 = HIBYTE(v225) & 0xF;
    }

    else
    {
      v241 = v223 & 0xFFFFFFFFFFFFLL;
    }

    if (!v241)
    {
      v225, v240, v233, v234, v235, v236, v237, v238;
      goto LABEL_39;
    }

    if ((v225 & 0x1000000000000000) != 0)
    {
      v331 = 0;
      sub_1002F62B8(v223, v225, 10);
      v244 = v291;
      v262 = v240;
      goto LABEL_103;
    }

    if ((v225 & 0x2000000000000000) != 0)
    {
      v332 = v223;
      v333 = v225 & 0xFFFFFFFFFFFFFFLL;
      if (v223 == 43)
      {
        if (!v239)
        {
          goto LABEL_131;
        }

        if (--v239)
        {
          v244 = 0;
          v254 = v316;
          while (1)
          {
            v255 = *v254 - 48;
            if (v255 > 9)
            {
              break;
            }

            v256 = 10 * v244;
            if ((v244 * 10) >> 64 != (10 * v244) >> 63)
            {
              break;
            }

            v244 = v256 + v255;
            if (__OFADD__(v256, v255))
            {
              break;
            }

            ++v254;
            if (!--v239)
            {
              goto LABEL_102;
            }
          }
        }
      }

      else if (v223 == 45)
      {
        if (!v239)
        {
          goto LABEL_133;
        }

        if (--v239)
        {
          v244 = 0;
          v248 = v316;
          while (1)
          {
            v249 = *v248 - 48;
            if (v249 > 9)
            {
              break;
            }

            v250 = 10 * v244;
            if ((v244 * 10) >> 64 != (10 * v244) >> 63)
            {
              break;
            }

            v244 = v250 - v249;
            if (__OFSUB__(v250, v249))
            {
              break;
            }

            ++v248;
            if (!--v239)
            {
              goto LABEL_102;
            }
          }
        }
      }

      else if (v239)
      {
        v244 = 0;
        v259 = &v332;
        while (1)
        {
          v260 = *v259 - 48;
          if (v260 > 9)
          {
            break;
          }

          v261 = 10 * v244;
          if ((v244 * 10) >> 64 != (10 * v244) >> 63)
          {
            break;
          }

          v244 = v261 + v260;
          if (__OFADD__(v261, v260))
          {
            break;
          }

          v259 = (v259 + 1);
          if (!--v239)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_101;
    }

    if ((v223 & 0x1000000000000000) != 0)
    {
      v242 = ((v225 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v242 = _StringObject.sharedUTF8.getter();
    }

    v243 = *v242;
    if (v243 == 43)
    {
      if (v240 < 1)
      {
        goto LABEL_132;
      }

      v239 = v240 - 1;
      if (v240 == 1)
      {
        goto LABEL_101;
      }

      v244 = 0;
      if (v242)
      {
        v251 = v242 + 1;
        while (1)
        {
          v252 = *v251 - 48;
          if (v252 > 9)
          {
            goto LABEL_101;
          }

          v253 = 10 * v244;
          if ((v244 * 10) >> 64 != (10 * v244) >> 63)
          {
            goto LABEL_101;
          }

          v244 = v253 + v252;
          if (__OFADD__(v253, v252))
          {
            goto LABEL_101;
          }

          ++v251;
          if (!--v239)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else if (v243 == 45)
    {
      if (v240 < 1)
      {
        goto LABEL_134;
      }

      v239 = v240 - 1;
      if (v240 == 1)
      {
        goto LABEL_101;
      }

      v244 = 0;
      if (v242)
      {
        v245 = v242 + 1;
        while (1)
        {
          v246 = *v245 - 48;
          if (v246 > 9)
          {
            break;
          }

          v247 = 10 * v244;
          if ((v244 * 10) >> 64 != (10 * v244) >> 63)
          {
            break;
          }

          v244 = v247 - v246;
          if (__OFSUB__(v247, v246))
          {
            break;
          }

          ++v245;
          if (!--v239)
          {
            goto LABEL_102;
          }
        }

LABEL_101:
        v244 = 0;
        LOBYTE(v239) = 1;
        goto LABEL_102;
      }
    }

    else
    {
      if (!v240)
      {
        goto LABEL_101;
      }

      v244 = 0;
      if (v242)
      {
        do
        {
          v257 = *v242 - 48;
          if (v257 > 9)
          {
            goto LABEL_101;
          }

          v258 = 10 * v244;
          if ((v244 * 10) >> 64 != (10 * v244) >> 63)
          {
            goto LABEL_101;
          }

          v244 = v258 + v257;
          if (__OFADD__(v258, v257))
          {
            goto LABEL_101;
          }

          ++v242;
        }

        while (--v240);
      }
    }

    LOBYTE(v239) = 0;
LABEL_102:
    v331 = v239;
    v262 = v239;
LABEL_103:
    v225, v240, v233, v234, v235, v236, v237, v238;
    if ((v262 & 1) != 0 || v244 < 0 || v244 >= *(v320 + 16))
    {
      goto LABEL_39;
    }

    v263 = (v313 + 16 * v244);
    v265 = *v263;
    v264 = v263[1];

    v266 = v323;
    v267 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v266;
    v268 = sub_100005F4C(v265, v264);
    v269 = *(v266 + 16);
    v270 = (v214 & 1) == 0;
    v271 = v269 + v270;
    if (__OFADD__(v269, v270))
    {
      goto LABEL_130;
    }

    v272 = v214;
    if (*(v323 + 24) >= v271)
    {
      if (v267)
      {
        if ((v214 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        sub_100373664();
        if ((v272 & 1) == 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      sub_10036A8F0(v271, v267);
      v273 = sub_100005F4C(v265, v264);
      if ((v272 & 1) != (v214 & 1))
      {
        goto LABEL_138;
      }

      v268 = v273;
      if ((v272 & 1) == 0)
      {
LABEL_110:
        v274 = v332;
        v332[(v268 >> 6) + 8] |= 1 << v268;
        v275 = (v274[6] + 16 * v268);
        *v275 = v265;
        v275[1] = v264;
        v276 = (v274[7] + 16 * v268);
        v277 = v322;
        *v276 = v319;
        v276[1] = v277;
        v323 = v274;
        v278 = v274[2];
        v279 = __OFADD__(v278, 1);
        v280 = v278 + 1;
        if (v279)
        {
          goto LABEL_135;
        }

        *(v323 + 16) = v280;
        goto LABEL_115;
      }
    }

    v264, v214, v215, v216, v217, v218, v219, v220;
    v323 = v332;
    v281 = (v332[7] + 16 * v268);
    v282 = v281[1];
    v283 = v322;
    *v281 = v319;
    v281[1] = v283;
    v282, v284, v285, v286, v287, v288, v289, v290;
LABEL_115:
    v6 = v321;
    v30 = &type metadata for String;
LABEL_39:
    if (++v221 == v325)
    {
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
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
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005BB184()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC40);
  v1 = sub_100006654(v0, qword_10094DC40);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDSavedAttachment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSavedAttachment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v19;
      [v25 setAccount:a2];
      v26._countAndFlagsBits = v22;
      v26._object = v24;
      REMCDSavedAttachment.mergeData(from:accountID:)(a1, v26);
      v24, v27, v28, v29, v30, v31, v32, v33;
      [v25 setCkServerRecord:a1];
      [v25 setInCloud:1];

      [v25 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100936660 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_10094DC40);
      v35 = a2;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = v4;
        *v38 = 136446466;
        swift_getMetatypeMetadata();
        v39 = String.init<A>(describing:)();
        v41 = v40;
        v42 = sub_10000668C(v39, v40, &v65);
        v41, v43, v44, v45, v46, v47, v48, v49;
        *(v38 + 4) = v42;
        *(v38 + 12) = 2082;
        v50 = [v35 remObjectID];
        if (v50)
        {
          v51 = v50;
          v52 = [v50 description];

          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
        }

        else
        {
          v55 = 0xE300000000000000;
          v53 = 7104878;
        }

        v56 = sub_10000668C(v53, v55, &v65);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v38 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v36, v37, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v38, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::Void __swiftcall REMCDSavedAttachment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v96 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v95 - v12;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v95 - v16;
  v18 = String._bridgeToObjectiveC()();
  v103.receiver = v2;
  v103.super_class = ObjectType;
  objc_msgSendSuper2(&v103, "mergeDataFromRecord:accountID:", from.super.isa, v18);

  v19 = [(objc_class *)from.super.isa recordID];
  v20 = [v19 recordName];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v20 = String._bridgeToObjectiveC()();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v97 = v13;
  v98 = v7;
  v99 = v6;
  v30 = [v3 ckIdentifierFromRecordName:v20];

  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    v30 = String._bridgeToObjectiveC()();
    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  [v3 setCkIdentifier:v30];

  v40 = 0;
  v100 = "LinkUpdateRequestDate";
  v41 = &type metadata for String;
  do
  {
    v42 = *(&off_1008E4030 + v40 + 32);
    if (v42 > 4)
    {
      if (v42 == 5)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v56 = swift_dynamicCastObjCClass();
          if (!v56)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v56 = 0;
        }

        v65 = sub_100128EF4(v56);

        if (v65)
        {
          type metadata accessor for REMCDSavedReminder();
          v66 = swift_dynamicCastClass();
          if (!v66)
          {
          }
        }

        else
        {
          v66 = 0;
        }

        [v3 setReminder:v66];
      }

      else
      {
        if (v42 == 6)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          v47 = *(&v102 + 1);
          if (*(&v102 + 1))
          {
            v48 = String._bridgeToObjectiveC()();
            v47, v49, v50, v51, v52, v53, v54, v55;
          }

          else
          {
            v48 = 0;
          }

          [v3 setAttachmentTypeRawValue:v48];
        }

        else
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          v57 = *(&v102 + 1);
          if (*(&v102 + 1))
          {
            v48 = String._bridgeToObjectiveC()();
            v57, v58, v59, v60, v61, v62, v63, v64;
          }

          else
          {
            v48 = 0;
          }

          [v3 setUti:v48];
        }
      }
    }

    else if (v42 >= 2 && v42 - 3 >= 2)
    {
      v43 = v41;
      sub_10018E134();
      v44 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v45 = *(v44 - 8);
      isa = 0;
      if ((*(v45 + 48))(v17, 1, v44) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v45 + 8))(v17, v44);
      }

      [v3 setLastModifiedDate:isa];

      v41 = v43;
    }

    ++v40;
  }

  while (v40 != 8);
  sub_1004DD52C(from.super.isa, 0x617461646174654DLL, 1, &v102);
  v67 = *(&v102 + 1);
  if (*(&v102 + 1) >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v69 = v102;
    v68 = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(v69, v67);
  }

  v70 = v99;
  [v3 setMetadata:v68];

  v71 = [(objc_class *)from.super.isa encryptedValues];
  v72 = String._bridgeToObjectiveC()();
  v73 = [v71 objectForKeyedSubscript:v72];
  swift_unknownObjectRelease();

  if (v73)
  {
    v101 = v73;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      v74 = v102;
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v82 = swift_dynamicCastObjCClass();
        if (!v82)
        {
LABEL_44:
          *(&v74 + 1), v83, v84, v85, v86, v87, v88, v89;
          swift_unknownObjectRelease();
          return;
        }

        v90 = [v82 fileURL];
        if (v90)
        {
          v91 = v96;
          v92 = v90;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = v97;
          v93 = v98;
          (*(v98 + 32))(v97, v91, v70);
          sub_1006D8A50(v94, v74, *(&v74 + 1), 0);
          (*(v93 + 8))(v94, v70);
          goto LABEL_44;
        }

        swift_unknownObjectRelease();
      }

      *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81;
    }
  }
}

Swift::String __swiftcall REMCDSavedAttachment.recordType()()
{
  v0 = 0x7474416465766153;
  v1 = 0xEF746E656D686361;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CKRecord_optional __swiftcall REMCDSavedAttachment.newlyCreatedRecord()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v144 - v9;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v144 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  *&v18 = __chkstk_darwin(v15, v17).n128_u64[0];
  v149 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162.receiver = v1;
  v162.super_class = ObjectType;
  v158 = objc_msgSendSuper2(&v162, "newlyCreatedRecord", v18);
  if (!v158)
  {
    v158 = 0;
    goto LABEL_80;
  }

  v22 = 0;
  v157 = 0;
  v155 = "LinkUpdateRequestDate";
  v151 = (v16 + 48);
  v152 = v15;
  v147 = (v16 + 32);
  v146 = (v16 + 8);
  *&v21 = 136446466;
  v148 = v21;
  *&v21 = 136446210;
  v150 = v21;
  v153 = v10;
  v154 = v6;
  v156 = v14;
  do
  {
    v24 = *(&off_1008E4030 + v22 + 32);
    if (v24 <= 2)
    {
      if (*(&off_1008E4030 + v22 + 32))
      {
        if (v24 != 1)
        {
          v61 = [v1 lastModifiedDate];
          if (v61)
          {
            v62 = v61;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = 0;
          }

          else
          {
            v63 = 1;
          }

          v69 = type metadata accessor for Date();
          v70 = *(v69 - 8);
          (*(v70 + 56))(v6, v63, 1, v69);
          sub_10012F7FC(v6, v10);
          if ((*(v70 + 48))(v10, 1, v69) == 1)
          {
            sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
            v159 = 0u;
            v160 = 0u;
            v161 = 0;
          }

          else
          {
            *(&v160 + 1) = v69;
            v161 = &protocol witness table for Date;
            v23 = sub_1000103CC(&v159);
            (*(v70 + 32))(v23, v10, v69);
          }

          goto LABEL_4;
        }

        v38 = [v158 encryptedValues];
        v39 = [v1 fileName];
        if (v39)
        {
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          *(&v160 + 1) = &type metadata for String;
          v161 = &protocol witness table for String;
          *&v159 = v41;
          *(&v159 + 1) = v43;
          v14 = v156;
        }

        else
        {
          v161 = 0;
          v159 = 0u;
          v160 = 0u;
        }

        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = v157;
        sub_1006D923C(v14);
        if (v49)
        {
          if (qword_100936660 != -1)
          {
            swift_once();
          }

          v157 = 0;
          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_10094DC40);
          v51 = v1;
          swift_errorRetain();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *&v159 = swift_slowAlloc();
            *v54 = v148;
            v55 = [v51 remObjectID];
            if (v55)
            {
              v56 = v55;
              v57 = [v55 description];

              v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;
            }

            else
            {
              v60 = 0xE300000000000000;
              v58 = 7104878;
            }

            v88 = sub_10000668C(v58, v60, &v159);
            v60, v89, v90, v91, v92, v93, v94, v95;
            *(v54 + 4) = v88;
            *(v54 + 12) = 2082;
            swift_getErrorValue();
            v96 = Error.rem_errorDescription.getter();
            v98 = v97;
            v99 = sub_10000668C(v96, v97, &v159);
            v98, v100, v101, v102, v103, v104, v105, v106;
            *(v54 + 14) = v99;
            _os_log_impl(&_mh_execute_header, v52, v53, "REMCDSavedAttachment+CloudKit: newlyCreatedRecord() Failed to compute file URL {savedAttachment: %{public}s, error: %{public}s}", v54, 0x16u);
            swift_arrayDestroy();

            v10 = v153;
            v6 = v154;
            v14 = v156;
          }

          else
          {

            v10 = v153;
            v6 = v154;
          }
        }

        else
        {
          v68 = v152;
          if ((*v151)(v14, 1, v152) == 1)
          {
            sub_1000050A4(v14, &unk_1009441F0, &qword_100795760);
          }

          else
          {
            v83 = v149;
            (*v147)(v149, v14, v68);
            v84 = objc_allocWithZone(CKAsset);
            URL._bridgeToObjectiveC()(v85);
            v87 = v86;
            [v84 initWithFileURL:v86];

            CKRecord.subscript.setter();
            (*v146)(v83, v68);
          }

          v157 = 0;
        }
      }
    }

    else
    {
      if (*(&off_1008E4030 + v22 + 32) > 5u)
      {
        if (v24 == 6)
        {
          v44 = [v1 attachmentTypeRawValue];
          if (v44)
          {
            goto LABEL_21;
          }

          v161 = 0;
          v159 = 0u;
          v160 = 0u;
        }

        else
        {
          v44 = [v1 uti];
          if (v44)
          {
LABEL_21:
            v45 = v44;
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v46;
            *(&v159 + 1) = v48;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }
        }

LABEL_4:
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
        goto LABEL_5;
      }

      if (v24 - 3 >= 2)
      {
        if ([v1 markedForDeletion])
        {
          if (qword_100936660 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100006654(v25, qword_10094DC40);
          v26 = v1;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v159 = v30;
            *v29 = v150;
            v31 = [v26 remObjectID];
            if (v31)
            {
              v32 = v31;
              v33 = [v31 description];
              v145 = v1;
              v34 = v33;

              v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v37 = v36;

              v1 = v145;
            }

            else
            {
              v37 = 0xE300000000000000;
              v35 = 7104878;
            }

            v107 = sub_10000668C(v35, v37, &v159);
            v37, v108, v109, v110, v111, v112, v113, v114;
            *(v29 + 4) = v107;
            _os_log_impl(&_mh_execute_header, v27, v28, "REMCDSavedAttachment+CloudKit: newlyCreatedRecord() (key=.savedReminder) unsetting savedReminder CK reference as the saved attachment is markedForDeletion {savedAttachment: %{public}s}", v29, 0xCu);
            sub_10000607C(v30);

            v10 = v153;
            v6 = v154;
            v14 = v156;
          }

          else
          {
          }

          CKRecord.subscript.setter();
        }

        else
        {
          v64 = [v1 reminder];
          if (v64)
          {
            v65 = v64;
            v66 = [v64 recordID];
            v67 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v66];

            CKRecord.subscript.setter();
          }

          else
          {
            if (qword_100936660 != -1)
            {
              swift_once();
            }

            v71 = type metadata accessor for Logger();
            sub_100006654(v71, qword_10094DC40);
            v72 = v1;
            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              *&v159 = v76;
              *v75 = v150;
              v77 = [v72 remObjectID];
              if (v77)
              {
                v78 = v77;
                v79 = [v77 description];

                v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v82 = v81;
              }

              else
              {
                v82 = 0xE300000000000000;
                v80 = 7104878;
              }

              v115 = sub_10000668C(v80, v82, &v159);
              v82, v116, v117, v118, v119, v120, v121, v122;
              *(v75 + 4) = v115;
              _os_log_impl(&_mh_execute_header, v73, v74, "REMCDSavedAttachment+CloudKit: Unexpectedly got cdSavedAttachment.reminder == nil in newlyCreatedRecord() (key=.savedReminder) {savedAttachment: %{public}s}", v75, 0xCu);
              sub_10000607C(v76);

              v10 = v153;
              v6 = v154;
              v14 = v156;
            }

            else
            {
            }
          }
        }
      }
    }

LABEL_5:
    ++v22;
  }

  while (v22 != 8);
  v123 = [v1 metadata];
  if (!v123)
  {
    v125 = 0;
    v127 = 0xF000000000000000;
    goto LABEL_76;
  }

  v124 = v123;
  v125 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;

  v129 = v127 >> 62;
  if ((v127 >> 62) > 1)
  {
    if (v129 != 2)
    {
      v130 = 0;
      goto LABEL_73;
    }

    v132 = *(v125 + 16);
    v131 = *(v125 + 24);
    v130 = v131 - v132;
    if (!__OFSUB__(v131, v132))
    {
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v129)
  {
LABEL_70:
    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v130 = HIDWORD(v125) - v125;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_82;
  }

  v130 = BYTE6(v127);
LABEL_73:
  v133 = [objc_opt_self() sharedConfiguration];
  v134 = [v133 maxInlineAssetSizeBytes];

  if (v130 >= 1 && v134 < v130)
  {
    v135 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v137 = [v135 assetForData:isa];

    CKRecord.subscript.setter();
    CKRecord.subscript.setter();
    sub_10001BBA0(v125, v127);
    goto LABEL_80;
  }

LABEL_76:
  v138 = v158;
  CKRecord.subscript.setter();
  v139 = [v138 encryptedValues];
  if (v127 >> 60 == 15)
  {
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    *&v160 = 0;
  }

  else
  {
    v143 = &protocol witness table for Data;
    v142 = &type metadata for Data;
    v140 = v125;
    v141 = v127;
  }

  *&v159 = v140;
  *(&v159 + 1) = v141;
  *(&v160 + 1) = v142;
  v161 = v143;
  swift_getObjectType();
  sub_1001CB4B8(v125, v127);
  CKRecordKeyValueSetting.subscript.setter();
  sub_100031A14(v125, v127);
  swift_unknownObjectRelease();
LABEL_80:
  v128 = v158;
LABEL_82:
  result.value.super.isa = v128;
  result.is_nil = v20;
  return result;
}

Swift::Void __swiftcall REMCDSavedAttachment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDSavedAttachment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_10094DC40);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 reminder];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for saved attachment {savedAttachmentID: %{public}s, savedReminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 reminder];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Saved reminder is marked for deletion but saved attachment is not {savedAttachmentID: %{public}s, savedReminderID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

uint64_t _s7remindd20REMCDSavedAttachmentC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd20REMCDSavedAttachmentC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936660 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094DC40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1005BDBEC(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v33 - v6;
  v34 = &_swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        KeyPath = swift_getKeyPath();
        v11 = sub_100392308(KeyPath, 1701603686, 0xE400000000000000);

        *(inited + 32) = v11;
        v12 = swift_getKeyPath();
        v13 = sub_100392308(v12, 0x6567616D69, 0xE500000000000000);

        *(inited + 40) = v13;
        sub_100025060(inited);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v34->clientIdentity >= *&v34->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = swift_getKeyPath();
        v15 = [a1 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
        sub_10039231C(v14, v7);
      }

      else
      {
        sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
        v20 = swift_initStackObject();
        *(v20 + 16) = xmmword_100791340;
        v21 = swift_getKeyPath();
        v22 = sub_100392308(v21, 1701603686, 0xE400000000000000);

        *(v20 + 32) = v22;
        v23 = swift_getKeyPath();
        v24 = sub_100392308(v23, 0x6567616D69, 0xE500000000000000);

        *(v20 + 40) = v24;
        sub_100025060(v20);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v34->clientIdentity >= *&v34->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = swift_getKeyPath();
        v26 = sub_10004FAEC(a1);
        sub_1003EF6C8(v25, v26);
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a2 >> 5)
  {
LABEL_14:
    v27 = a2 & 0x1F;
    v28 = swift_getKeyPath();
    v29 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
    sub_10039231C(v28, v7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v34->clientIdentity >= *&v34->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = swift_getKeyPath();
    sub_100392308(v31, qword_1007B3AB0[v27], (v27 << 56) - 0x1D00000000000000);
    goto LABEL_17;
  }

  v17 = swift_getKeyPath();
  v18 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_10039231C(v17, v7);
LABEL_17:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v34->clientIdentity >= *&v34->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
LABEL_20:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v34->clientIdentity >= *&v34->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

void sub_1005BE168(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1005BE2A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 attachmentTypeRawValue];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005BE30C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAttachmentTypeRawValue:?];
}

uint64_t sub_1005BE37C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100975298 = v0;
  return result;
}

void sub_1005BE3F4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastModifiedDate:isa];
}

_TtC7remindd19RDXPCStorePerformer *sub_1005BE53C()
{
  sub_100026EF4(0, 5, 0);
  result = &_swiftEmptyArrayStorage;
  v2 = *_swiftEmptyArrayStorage.clientIdentity;
  v1 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v3;
  v4 = &_swiftEmptyArrayStorage + 16 * v2;
  *(v4 + 4) = 0xD000000000000016;
  *(v4 + 5) = 0x80000001007B38D0;
  v5 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v6;
  v7 = &_swiftEmptyArrayStorage + 16 * v3;
  *(v7 + 4) = 0x656D614E656C6966;
  *(v7 + 5) = 0xE800000000000000;
  v9 = *_swiftEmptyArrayStorage.clientIdentity;
  v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v10;
  v11 = &_swiftEmptyArrayStorage + 16 * v9;
  *(v11 + 4) = 0x696669746E656469;
  *(v11 + 5) = 0xEA00000000007265;
  v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v13;
  v14 = &_swiftEmptyArrayStorage + 16 * v10;
  *(v14 + 4) = 0x617461646174656DLL;
  *(v14 + 5) = 0xE800000000000000;
  v16 = *_swiftEmptyArrayStorage.clientIdentity;
  v15 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = &_swiftEmptyArrayStorage;
  }

  *_swiftEmptyArrayStorage.clientIdentity = v16 + 1;
  v17 = &_swiftEmptyArrayStorage + 16 * v16;
  *(v17 + 4) = 6911093;
  *(v17 + 5) = 0xE300000000000000;
  return result;
}

uint64_t sub_1005BE9A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DC58);
  v1 = sub_100006654(v0, qword_10094DC58);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005BEA68(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
  v16 = sub_1005BEC40(a2, v10);
  if (v4)
  {
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v17 = v16;
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    (*(v12 + 8))(v15, v11);
    sub_1005C2B64(v17, a4);
    v17, v18, v19, v20, v21, v22, v23, v24;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
  }
}

void *sub_1005BEC40(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s10PredicatesOMa(0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C1778(v9, a1, a2);
  if (v2)
  {
    return v3;
  }

  v11 = v10;
  v117 = 0;
  v12 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v115 = qword_100974E30;
    v13 = sub_100043AA8();
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v116 = v12;
    v15 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v15];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v13];

    [v14 setFetchLimit:0];
    [v14 setFetchOffset:0];
    v126 = v11;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v17 = Predicate;
    v18 = &_swiftEmptyArrayStorage;
    v129 = &_swiftEmptyArrayStorage;
    v19 = *(v11 + 16);
    v120 = v9;
    v121 = v14;
    v118 = v11;
    v119 = a1;
    if (!v19)
    {
      v35 = &_swiftEmptyArrayStorage;
      if (!*_swiftEmptyArrayStorage.clientIdentity)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v20 = sub_100235F88(Predicate);
    v21 = sub_100277CC0(v20);
    v20, v22, v23, v24, v25, v26, v27, v28;
    v113 = v17;

    v12 = *v21->clientIdentity;
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_7:
    v128 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_52;
    }

    v9 = 0;
    v29 = v128;
    v122 = v12;
    v123 = v21 & 0xC000000000000001;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v123)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *v21->clientIdentity)
        {
          goto LABEL_22;
        }

        v18 = *&v21->clientIdentity[8 * v9 + 16];
      }

      v30 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v31)
      {
        goto LABEL_53;
      }

      v12 = v30;
      a1 = v31;

      v128 = v29;
      v33 = *v29->clientIdentity;
      v32 = *&v29->clientIdentity[8];
      if (v33 >= v32 >> 1)
      {
        sub_100026EF4((v32 > 1), v33 + 1, 1);
        v29 = v128;
      }

      *v29->clientIdentity = v33 + 1;
      v34 = v29 + 16 * v33;
      *(v34 + 4) = v12;
      *(v34 + 5) = a1;
      ++v9;
      if (v11 == v122)
      {

        v9 = v120;
        v11 = v118;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_25:

  v29 = &_swiftEmptyArrayStorage;
LABEL_26:
  sub_100271EA8(v29);
  v35 = v129;
  v14 = v121;
  v18 = &_swiftEmptyArrayStorage;
  v17 = v113;
  if (*v129->clientIdentity)
  {
LABEL_27:
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v35 = v129;
    v36 = sub_10003450C(v129);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v36, v38, v39, v40, v41, v42, v43, v44;
    [v14 setPropertiesToFetch:isa];
  }

LABEL_28:
  v114 = v35;
  v124 = sub_1003EBAD0();
  sub_100271EA8(&off_1008DD4D8);
  v45 = sub_100235FA0(v17);
  v17, v46, v47, v48, v49, v50, v51, v52;
  v53 = sub_100277CC0(v45);
  v45, v54, v55, v56, v57, v58, v59, v60;
  if ((v53 & 0x8000000000000000) != 0 || (v53 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v68 = *v53->clientIdentity;
  if (!v68)
  {
LABEL_46:
    v114, v61, v62, v63, v64, v65, v66, v67;

    v69 = &_swiftEmptyArrayStorage;
LABEL_47:
    sub_100271EA8(v69);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v84 = v124;
    v85 = Array._bridgeToObjectiveC()().super.isa;
    v84, v86, v87, v88, v89, v90, v91, v92;
    v93 = v121;
    [v121 setRelationshipKeyPathsForPrefetching:v85];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v3 = Array._bridgeToObjectiveC()().super.isa;
    [v93 setSortDescriptors:v3];

    v94 = v117;
    v95 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v94)
    {
      v104 = v95;
      v3 = sub_100155C54(v11, _swiftEmptySetSingleton, v95);
      v104, v105, v106, v107, v108, v109, v110, v111;
    }

    v11, v96, v97, v98, v99, v100, v101, v102;

    sub_1004258C8(v9, _s10PredicatesOMa);
    return v3;
  }

  while (1)
  {
    v128 = v18;
    sub_100026EF4(0, v68 & ~(v68 >> 63), 0);
    if (v68 < 0)
    {
      break;
    }

    v9 = 0;
    v69 = v128;
    v122 = v68;
    v123 = v53 & 0xC000000000000001;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v123)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *v53->clientIdentity)
        {
          goto LABEL_44;
        }

        v18 = *&v53->clientIdentity[8 * v9 + 16];
      }

      v70 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v71)
      {
        goto LABEL_53;
      }

      v72 = v70;
      v73 = v71;

      v128 = v69;
      v82 = *v69->clientIdentity;
      v81 = *&v69->clientIdentity[8];
      v18 = (v82 + 1);
      if (v82 >= v81 >> 1)
      {
        sub_100026EF4((v81 > 1), v82 + 1, 1);
        v69 = v128;
      }

      *v69->clientIdentity = v18;
      v83 = v69 + 16 * v82;
      *(v83 + 4) = v72;
      *(v83 + 5) = v73;
      ++v9;
      if (v11 == v122)
      {
        v114, v74, v75, v76, v77, v78, v79, v80;

        v9 = v120;
        v11 = v118;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v68 = _CocoaArrayWrapper.endIndex.getter();
    if (!v68)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v112._object = 0x80000001007EC120;
  v112._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v112);
  v125 = v18;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005BF3E4(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DC90, &type metadata accessor for REMRemindersListBatchDeleteInvocation.CountInvocation, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.CountInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005BF43C(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, _TtC7remindd19RDXPCStorePerformer *a2@<X3>, uint64_t a3@<X8>)
{
  v77 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v74 - v8;
  v10 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter();
  REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter();
  v15 = sub_1005BEC40(a1, v9);
  if (v3)
  {
    sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
    (*(v11 + 8))(v14, v10);
    return;
  }

  v16 = v15;
  v76 = a3;
  sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  (*(v11 + 8))(v14, v10);
  sub_1005C2B64(v16, v77);
  v18 = v17;
  v77 = v19;
  type metadata accessor for ReminderIDsMergeableOrderingHelper();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = &_swiftEmptyArrayStorage;
  v75 = inited;
  sub_1005C3014(v16, v18, inited, v21);
  v29 = [objc_allocWithZone(NSMutableDictionary) init];
  v74 = a1;
  if (v16 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_5:
      if (v30 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v30; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v32 = *(v16 + 8 * i + 32);
        }

        v33 = v32;
        [v32 updateDeletedFlagAccordingToOrphanState:{v29, v74}];
      }
    }
  }

  v16, v22, v23, v24, v25, v26, v27, v28;
  sub_100393DD8(v18);
  v35 = v34;
  v36 = v75;
  sub_1005BF7F8(v34);
  v35, v37, v38, v39, v40, v41, v42, v43;
  sub_1005BFAC0();
  v78 = 0;
  if (([(RDXPCStorePerformer *)v74 save:&v78]& 1) != 0)
  {
    v44 = v78;
    REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)();
  }

  else
  {
    v45 = v78;
    v77, v46, v47, v48, v49, v50, v51, v52;
    v18, v53, v54, v55, v56, v57, v58, v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_setDeallocating();
  *(v36 + 16), v60, v61, v62, v63, v64, v65, v66;
  *(v36 + 24), v67, v68, v69, v70, v71, v72, v73;
}

void sub_1005BF7F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a1 & 0xC000000000000001;

  v10 = 0;
  v34 = a1 & 0xC000000000000001;
  while (v7)
  {
LABEL_12:
    v13 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    if (v9)
    {

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *(a1 + 16);

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = sub_1005C27D8();
    if (v15)
    {
      v16 = v15;
      v33 = [v15 count];
      sub_100395080(a1);
      v18 = v17;
      isa = Set._bridgeToObjectiveC()().super.isa;
      v18, v20, v21, v22, v23, v24, v25, v26;
      [v16 minusSet:isa];

      if (qword_100936670 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_10094DC58);
      v28 = v16;
      v11 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v29))
      {
        v32 = v3;
        v30 = a1;
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v33;
        *(v31 + 12) = 2048;
        *(v31 + 14) = [v28 count];

        _os_log_impl(&_mh_execute_header, v11, v29, "ReminderIDsMergeableOrderingHelper orderedSet count: %ld -> %ld", v31, 0x16u);
        a1 = v30;
        v3 = v32;
      }

      else
      {

        v11 = v28;
      }

      v9 = v34;

      *(v13 + 16) = 1;
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1005BFAC0()
{
  v2 = v1;
  v45 = type metadata accessor for UUID();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45, v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v39 - v8;
  swift_beginAccess();
  v43 = v0;
  v10 = *(v0 + 24);
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = v10 & 0xC000000000000001;
    v39 = v10 & 0xFFFFFFFFFFFFFF8;
    v40 = v2;
    v12 = (v3 + 32);
    v41 = (v3 + 8);

    for (j = 0; ; ++j)
    {
      if (v44)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(v39 + 16))
        {
          goto LABEL_22;
        }

        v21 = *&v10->clientIdentity[8 * j + 16];
      }

      v3 = v21;
      v2 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v22 = [v21 identifier];
      if (v22)
      {
        v23 = i;
        v24 = v42;
        v25 = v22;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v12)(v9, v24, v45);
        v26 = v43;
        swift_beginAccess();
        v27 = *(v26 + 16);
        if (*(v27 + 16) && (v28 = sub_100363F20(v9), (v29 & 1) != 0))
        {
          v30 = *(*(v27 + 56) + 8 * v28);
          swift_endAccess();

          v31 = v40;
          sub_1005C3B30(v3, v30);
          v40 = v31;
          if (v31)
          {
            (*v41)(v9, v45);
            v10, v32, v33, v34, v35, v36, v37, v38;

            return;
          }

          (*v41)(v9, v45);
        }

        else
        {
          swift_endAccess();

          (*v41)(v9, v45);
        }

        i = v23;
      }

      else
      {
      }

      if (v2 == i)
      {
        v10, v14, v15, v16, v17, v18, v19, v20;
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }
}

id sub_1005BFDC4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v9, v10).n128_u64[0];
  v13 = &v25 - v12;
  result = [a1 identifier];
  if (result)
  {
    v15 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v8, v4);
    swift_beginAccess();
    if (*(*(v2 + 16) + 16) && (sub_100363F20(v13), (v16 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v17 = [a1 reminderIDsMergeableOrdering];
      if (v17)
      {
        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xF000000000000000;
      }

      type metadata accessor for ReminderIDsMergeableOrdering();
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 24) = v19;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_1002C7B28(v22, v13, isUniquelyReferenced_nonNull_native);
      *(v2 + 16) = v25;
      swift_endAccess();
      swift_beginAccess();
      v24 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    return (*(v5 + 8))(v13, v4);
  }

  return result;
}

uint64_t sub_1005C007C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v20 - v11;
  v13 = [a1 identifier];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v12, v7, v3);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (*(v15 + 16) && (v16 = sub_100363F20(v12), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  swift_endAccess();
  (*(v4 + 8))(v12, v3);
  return v18;
}

void sub_1005C0208(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v12 = sub_1005C27D8();
  if (!v12)
  {
    return;
  }

  v26 = v12;
  v13 = [v12 indexOfObject:a2];
  if (v13 != NSNotFound.getter())
  {
    v25 = v7;
    IndexSet.init()();
    if (v11 < 1)
    {
      __break(1u);
    }

    else
    {
      v24 = v13;
      for (i = 0; i != v11; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(a1 + 8 * i + 32);
        }

        v17 = v16;
        v18 = [v26 indexOfObject:v16];
        if (v18 != NSNotFound.getter())
        {
          IndexSet.insert(_:)(v18);
        }
      }

      if (IndexSet.isEmpty.getter())
      {
        (*(v25 + 8))(v10, v6);

        return;
      }

      IndexSet._bridgeToObjectiveC()(v19);
      v21 = v25;
      if (!__OFADD__(v24, 1))
      {
        v22 = v20;
        [v26 moveObjectsAtIndexes:v20 toIndex:v24 + 1];

        (*(v21 + 8))(v10, v6);
        *(v3 + 16) = 257;
        return;
      }
    }

    __break(1u);
    return;
  }

  v14 = v26;
}

uint64_t sub_1005C0498(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DCB8, &type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.DeleteInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005C04F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005C0538(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *&v277 = a2;
  v266 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v269 = &v257 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v264 = &v257 - v10;
  __chkstk_darwin(v11, v12);
  v271 = &v257 - v13;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v272 = (&v257 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v18);
  v270 = &v257 - v19;
  __chkstk_darwin(v20, v21);
  v265 = &v257 - v22;
  __chkstk_darwin(v23, v24);
  v26 = (&v257 - v25);
  __chkstk_darwin(v27, v28);
  v30 = &v257 - v29;
  __chkstk_darwin(v31, v32);
  v34 = &v257 - v33;
  v35 = _s10PredicatesOMa(0);
  v37 = __chkstk_darwin(v35 - 8, v36);
  v39 = (&v257 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v273 = v5;
  v42 = v5[7];
  v41 = v5 + 7;
  v40 = v42;
  v42(v34, 1, 1, v4, v37);
  v43 = v278;
  sub_1005C1778(v39, a1, v34);
  if (v43)
  {
    sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
    return;
  }

  v276 = v26;
  *&v277 = v41;
  v278 = v40;
  v268 = a1;
  v260 = v30;
  v274 = v4;
  v263 = 0;
  v45 = v44;
  sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
  if (!*(v45 + 16))
  {
    v45, v46, v47, v48, v49, v50, v51, v52;
    v75 = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    swift_getKeyPath();
    v76 = NSExpression.init<A, B>(forKeyPath:)();
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v77 = swift_allocObject();
    v277 = xmmword_100791300;
    *(v77 + 16) = xmmword_100791300;
    *(v77 + 56) = v75;
    *(v77 + 32) = v76;
    v278 = v76;
    v78 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v77, v80, v81, v82, v83, v84, v85, v86;
    v87 = [objc_opt_self() expressionForFunction:v78 arguments:isa];

    v88 = [objc_allocWithZone(NSExpressionDescription) init];
    v275 = 0x80000001007FD910;
    v89 = String._bridgeToObjectiveC()();
    [v88 setName:v89];

    [v88 setExpression:v87];
    [v88 setExpressionResultType:900];
    v90 = v39;
    v91 = sub_100043AA8();
    v92 = [objc_allocWithZone(NSFetchRequest) init];
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v93 = [swift_getObjCClassFromMetadata() entity];
    [v92 setEntity:v93];

    [v92 setAffectedStores:0];
    [v92 setPredicate:v91];
    [v92 setResultType:2];

    v94 = swift_allocObject();
    *(v94 + 16) = v277;
    *(v94 + 56) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v94 + 32) = v88;
    v95 = v88;
    v96 = Array._bridgeToObjectiveC()().super.isa;
    v94, v97, v98, v99, v100, v101, v102, v103;
    [v92 setPropertiesToFetch:v96];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v104 = v263;
    v105 = NSManagedObjectContext.fetch<A>(_:)();
    if (v104)
    {
      sub_1004258C8(v90, _s10PredicatesOMa);
    }

    else
    {
      v138 = v105;
      *&v277 = v87;
      v261 = v90;
      v281 = sub_1000F5104(&qword_10094DE48, &qword_1007B3C18);
      *&v280 = v138;
      sub_1000F5104(&qword_10094DE50, &unk_1007B3C20);
      throwingCast<A>(_:as:failureMessage:)();
      v139 = sub_10000607C(&v280);
      v273 = &v257;
      v140 = v283;
      *&v280 = v283;
      __chkstk_darwin(v139, v141);
      sub_10000CB90(&qword_10094DE58, &qword_10094DE50, &unk_1007B3C20);
      v142 = v260;
      Sequence.firstMap<A>(_:)();
      v140, v143, v144, v145, v146, v147, v148, v149;
      sub_10012F78C(v142, v276);
      REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result.init(oldestCompletionDate:)();

      sub_1000050A4(v142, &unk_100938850, qword_100795AE0);
      sub_1004258C8(v261, _s10PredicatesOMa);
    }

    return;
  }

  v261 = v39;
  v53 = v45;
  v54 = sub_100043AA8();
  v55 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v56 = [objc_allocWithZone(NSFetchRequest) init];
  v259 = v55;
  v57 = [swift_getObjCClassFromMetadata() entity];
  [v56 setEntity:v57];

  [v56 setAffectedStores:0];
  v262 = v56;
  [v56 setPredicate:v54];

  v267 = v53;
  *&v280 = v53;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v283 = sub_100235F88(Predicate);
  KeyPath = swift_getKeyPath();
  sub_100378ACC(&v280, KeyPath);

  v258 = v283;
  v60 = sub_100277CC0(v283);
  v61 = v60;
  if ((v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
  {
    goto LABEL_43;
  }

  for (i = *v60->clientIdentity; ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v63 = v274;
    v64 = v278;
    if (!i)
    {
      break;
    }

    v276 = Predicate;
    v282 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_69;
    }

    v65 = 0;
    v66 = v282;
    Predicate = v61 & 0xC000000000000001;
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (Predicate)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v65 >= *v61->clientIdentity)
        {
          goto LABEL_41;
        }

        v68 = *&v61->clientIdentity[8 * v65 + 16];
      }

      v69 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v70)
      {
        goto LABEL_85;
      }

      v71 = v69;
      v72 = v70;
      v281 = &type metadata for String;

      *&v280 = v71;
      *(&v280 + 1) = v72;
      v282 = v66;
      v74 = *v66->clientIdentity;
      v73 = *&v66->clientIdentity[8];
      if (v74 >= v73 >> 1)
      {
        sub_100010D04((v73 > 1), v74 + 1, 1);
        v66 = v282;
      }

      *v66->clientIdentity = v74 + 1;
      sub_100005EE0(&v280, &v66->clientIdentity[32 * v74 + 16]);
      ++v65;
      v64 = v278;
      if (v67 == i)
      {

        v63 = v274;
        Predicate = v276;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v66 = &_swiftEmptyArrayStorage;
LABEL_23:
  v106 = Array._bridgeToObjectiveC()().super.isa;
  v66, v107, v108, v109, v110, v111, v112, v113;
  i = v262;
  [v262 setPropertiesToFetch:v106];

  v114 = sub_100235FA0(Predicate);
  Predicate, v115, v116, v117, v118, v119, v120, v121;
  v122 = sub_100277CC0(v114);
  v114, v123, v124, v125, v126, v127, v128, v129;
  if ((v122 & 0x8000000000000000) != 0 || (v122 & 0x4000000000000000) != 0)
  {
    Predicate = _CocoaArrayWrapper.endIndex.getter();
    if (Predicate)
    {
LABEL_26:
      v282 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, Predicate & ~(Predicate >> 63), 0);
      if (Predicate < 0)
      {
        goto LABEL_70;
      }

      v130 = 0;
      v61 = v282;
      v275 = Predicate;
      v276 = (v122 & 0xC000000000000001);
      do
      {
        v131 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_40;
        }

        if (v276)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v130 >= *v122->clientIdentity)
          {
            goto LABEL_42;
          }

          v68 = *&v122->clientIdentity[8 * v130 + 16];
        }

        v132 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v133)
        {
          goto LABEL_85;
        }

        v134 = v132;
        Predicate = v133;

        v282 = v61;
        v136 = *v61->clientIdentity;
        v135 = *&v61->clientIdentity[8];
        if (v136 >= v135 >> 1)
        {
          sub_100026EF4((v135 > 1), v136 + 1, 1);
          v61 = v282;
        }

        *v61->clientIdentity = v136 + 1;
        v137 = v61 + 16 * v136;
        *(v137 + 4) = v134;
        *(v137 + 5) = Predicate;
        ++v130;
        v64 = v278;
      }

      while (v131 != v275);

      v63 = v274;
      i = v262;
      goto LABEL_46;
    }
  }

  else
  {
    Predicate = *v122->clientIdentity;
    if (Predicate)
    {
      goto LABEL_26;
    }
  }

  v61 = &_swiftEmptyArrayStorage;
LABEL_46:
  v150 = Array._bridgeToObjectiveC()().super.isa;
  v61, v151, v152, v153, v154, v155, v156, v157;
  [i setRelationshipKeyPathsForPrefetching:v150];

  v158 = v263;
  v159 = NSManagedObjectContext.fetch<A>(_:)();
  if (v158)
  {
    sub_1004258C8(v261, _s10PredicatesOMa);
    v258, v160, v161, v162, v163, v164, v165, v166;

    v267, v167, v168, v169, v170, v171, v172, v173;
    return;
  }

  v263 = 0;
  v174 = v159;
  v175 = v267;
  i = sub_100155C54(v267, _swiftEmptySetSingleton, v159);
  v174, v176, v177, v178, v179, v180, v181, v182;
  v175, v183, v184, v185, v186, v187, v188, v189;
  if (i >> 62)
  {
    goto LABEL_71;
  }

  v197 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  v198 = v273;
  if (v197)
  {
LABEL_50:
    v199 = 0;
    v275 = i & 0xFFFFFFFFFFFFFF8;
    v276 = (i & 0xC000000000000001);
    v268 = (v198 + 6);
    v200 = &_swiftEmptyArrayStorage;
    v267 = (v198 + 4);
    while (1)
    {
      if (v276)
      {
        v201 = i;
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v64 = v272;
        v202 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v64 = v272;
        if (v199 >= *(v275 + 16))
        {
          goto LABEL_68;
        }

        v201 = i;
        v63 = *(i + 8 * v199 + 32);
        v202 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v197 = _CocoaArrayWrapper.endIndex.getter();
          v198 = v273;
          if (!v197)
          {
            break;
          }

          goto LABEL_50;
        }
      }

      v203 = v197;
      v204 = [v63 completionDate];
      v205 = v64;
      if (v204)
      {
        v206 = v204;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v207 = 0;
      }

      else
      {
        v207 = 1;
      }

      v208 = v207;
      v63 = v274;
      v64 = v278;
      (v278)(v205, v208, 1, v274);
      v209 = v205;
      v210 = v270;
      sub_10012F7FC(v209, v270);
      if ((v268->super.isa)(v210, 1, v63) == 1)
      {
        sub_1000050A4(v210, &unk_100938850, qword_100795AE0);
        v197 = v203;
      }

      else
      {
        v211 = v267->super.isa;
        (v267->super.isa)(v271, v210, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v200 = sub_100365C9C(0, *v200->clientIdentity + 1, 1, v200);
        }

        v197 = v203;
        v213 = *v200->clientIdentity;
        v212 = *&v200->clientIdentity[8];
        if (v213 >= v212 >> 1)
        {
          v200 = sub_100365C9C((v212 > 1), v213 + 1, 1, v200);
        }

        *v200->clientIdentity = v213 + 1;
        v214 = v200 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + v273[9] * v213;
        v63 = v274;
        (v211)(v214, v271, v274);
        v64 = v278;
      }

      ++v199;
      i = v201;
      if (v202 == v197)
      {
        goto LABEL_73;
      }
    }
  }

  v200 = &_swiftEmptyArrayStorage;
LABEL_73:
  i, v190, v191, v192, v193, v194, v195, v196;
  v222 = *v200->clientIdentity;
  if (!v222)
  {
    v258, v215, v216, v217, v218, v219, v220, v221;
    v200, v242, v243, v244, v245, v246, v247, v248;
    v241 = v265;
    v64(v265, 1, 1, v63);
    goto LABEL_77;
  }

  v223 = v273[2];
  v224 = v264;
  v275 = v200 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
  v276 = v223;
  (v223)(v264);
  v232 = v269;
  if (v222 == 1)
  {
LABEL_75:
    v258, v225, v226, v227, v228, v229, v230, v231;
    v200, v233, v234, v235, v236, v237, v238, v239;
    v240 = v274;
    v241 = v265;
    (v273[4])(v265, v224, v274);
    (v278)(v241, 0, 1, v240);
LABEL_77:
    sub_10012F78C(v241, v260);
    REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result.init(oldestCompletionDate:)();

    sub_1000050A4(v241, &unk_100938850, qword_100795AE0);
    sub_1004258C8(v261, _s10PredicatesOMa);
    return;
  }

  v68 = v274;
  v272 = (v273 + 1);
  v249 = (v273 + 4);
  v250 = 1;
  while (v250 < *v200->clientIdentity)
  {
    v251 = v222;
    v252 = v224;
    v253 = v273;
    v276(v232, v275 + v273[9] * v250, v68);
    v254 = static Date.< infix(_:_:)();
    v255 = v253[1];
    if (v254)
    {
      v255(v252, v68);
      (*v249)(v252, v232, v68);
    }

    else
    {
      v255(v232, v68);
    }

    v224 = v252;
    ++v250;
    v222 = v251;
    v232 = v269;
    if (v251 == v250)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_85:
  *&v280 = 0;
  *(&v280 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v256._countAndFlagsBits = 0xD00000000000002CLL;
  v256._object = 0x80000001007EC120;
  String.append(_:)(v256);
  v279 = v68;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005C1778(uint64_t *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v133 = a2;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v131 = *(v6 - 1);
  v132 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v10, v11);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v15 = *(v14 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v19, v3, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.list(_:))
  {
    (*(v15 + 96))(v19, v14);
    v21 = *v19;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007953F0;
    *(v22 + 32) = v21;
    v23 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
    *a1 = v22;
    sub_10012F78C(a3, a1 + v23);
    _s10PredicatesOMa(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v129 = a1;
  v130 = a3;
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.customSmartList(_:))
  {
    (*(v15 + 96))(v19, v14);
    v24 = *v19;
    v25 = REMSmartListTypeCustom;
    v26 = qword_1009367E0;
    v10 = *v19;
    v28 = v130;
    if (v26 != -1)
    {
LABEL_65:
      swift_once();
    }

    v29 = v134;
    v30 = sub_100717244(v25, v24, v133, qword_1009752F0, v27);

    if (v29)
    {

      return;
    }

    v57 = [v30 parentAccount];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 remObjectID];

      if (v59)
      {
        v60 = [v30 filterData];
        if (v60)
        {
          v61 = v60;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for REMCustomSmartListFilterDescriptor();
          [v30 minimumSupportedVersion];
          v62 = REMCustomSmartListFilterDescriptor.__allocating_init(data:minimumSupportedVersion:)();
        }

        else
        {
          type metadata accessor for REMCustomSmartListFilterDescriptor();
          v62 = REMCustomSmartListFilterDescriptor.__allocating_init()();
        }

        v79 = v62;
        v80 = *(sub_1000F5104(&qword_100946010, &qword_1007A71C0) + 64);
        v81 = v129;
        *v129 = v79;
        v81[1] = v59;
        sub_10012F78C(v28, v81 + v80);
        _s10PredicatesOMa(0);
        swift_storeEnumTagMultiPayload();
        v82 = v79;
        v83 = v59;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v84 = (v131)[11](v9, v132);
        if (v84 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v85 = static Set<>.typesSupportedByCustomSmartList.getter();
          v86 = static Set<>.typesIndescribableByNSPredicate.getter();
          v88 = sub_1001A2030(v86, v85, v87);
          v86, v89, v90, v91, v92, v93, v94, v95;
LABEL_29:
          v136 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
          v137 = sub_10012DEEC();
          v135[0] = v133;
          v96 = v133;
          REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

          v88, v97, v98, v99, v100, v101, v102, v103;
          sub_10000607C(v135);
          return;
        }

        if (v84 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
        {
          v88 = static Set<>.typesSupportedByCustomSmartList.getter();
          goto LABEL_29;
        }

        goto LABEL_69;
      }
    }

    v75 = objc_opt_self();
    v76 = String._bridgeToObjectiveC()();
    [v75 internalErrorWithDebugDescription:v76];

    swift_willThrow();
LABEL_21:

    return;
  }

  v31 = v130;
  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.reminders(_:))
  {
    (*(v15 + 96))(v19, v14);
    v32 = *v19;
    v33 = *(sub_1000F5104(&qword_100946008, &qword_1007A71B8) + 48);
    v34 = sub_100277EBC(v32);
    v32, v35, v36, v37, v38, v39, v40, v41;
    v42 = v129;
    *v129 = v34;
    sub_10012F78C(v31, v42 + v33);
    _s10PredicatesOMa(0);
    goto LABEL_3;
  }

  if (v20 == enum case for REMRemindersListBatchDeleteInvocation.ListType.group(_:))
  {
    (*(v15 + 96))(v19, v14);
    v43 = *v19;
    *v13 = *v19;
    v13[8] = 0;
    swift_storeEnumTagMultiPayload();
    v44 = v43;
    v45 = sub_10001F6F4();
    sub_1004258C8(v13, _s10PredicatesOMa_1);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v46 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v46];

    [v30 setAffectedStores:0];
    [v30 setPredicate:v45];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v25 = swift_allocObject();
    *v25->clientIdentity = xmmword_100791300;
    *&v25->clientIdentity[40] = &type metadata for String;
    *&v25->clientIdentity[16] = 0x696669746E656469;
    *&v25->clientIdentity[24] = 0xEA00000000007265;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v25, v48, v49, v50, v51, v52, v53, v54;
    [v30 setPropertiesToFetch:isa];

    v55 = v134;
    v56 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v55)
    {
      v77 = v56;
      v136 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      v135[0] = v77;
      sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
      throwingCast<A>(_:as:failureMessage:)();
      v132 = v44;
      v134 = 0;
      sub_10000607C(v135);
      v104 = v138;
      v135[0] = &_swiftEmptyArrayStorage;
      v131 = v45;
      v9 = (v138 & 0xFFFFFFFFFFFFFF8);
      if (v138 >> 62)
      {
        v105 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v105 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      v28 = (v104 & 0xC000000000000001);
      v133 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v105 == v24)
        {

          v104, v118, v119, v120, v121, v122, v123, v124;
          goto LABEL_60;
        }

        if (v28)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v106 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v24 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v10 = *&v104->clientIdentity[8 * v24 + 16];
          swift_unknownObjectRetain();
          v106 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        v25 = [v10 remObjectID];
        swift_unknownObjectRelease();
        ++v24;
        if (v25)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v135[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v135[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v133 = v135[0];
          v24 = v106;
        }
      }
    }

    goto LABEL_21;
  }

  if (v20 != enum case for REMRemindersListBatchDeleteInvocation.ListType.all(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_69:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  swift_storeEnumTagMultiPayload();
  v63 = sub_10001F6F4();
  sub_1004258C8(v13, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v28 = [objc_allocWithZone(NSFetchRequest) init];
  v64 = [swift_getObjCClassFromMetadata() entity];
  [v28 setEntity:v64];

  [v28 setAffectedStores:0];
  [v28 setPredicate:v63];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v25 = swift_allocObject();
  *v25->clientIdentity = xmmword_100791300;
  *&v25->clientIdentity[40] = &type metadata for String;
  *&v25->clientIdentity[16] = 0x696669746E656469;
  *&v25->clientIdentity[24] = 0xEA00000000007265;
  v65 = Array._bridgeToObjectiveC()().super.isa;
  v25, v66, v67, v68, v69, v70, v71, v72;
  [v28 setPropertiesToFetch:v65];

  v73 = v134;
  v74 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v73)
  {
    v78 = v74;
    v136 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v135[0] = v78;
    sub_1000F5104(&qword_10094AEF0, &qword_1007B3C30);
    throwingCast<A>(_:as:failureMessage:)();
    v134 = 0;
    sub_10000607C(v135);
    v114 = v138;
    v135[0] = &_swiftEmptyArrayStorage;
    v132 = v63;
    v9 = (v138 & 0xFFFFFFFFFFFFFF8);
    if (v138 >> 62)
    {
      v115 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v115 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v10 = (v114 & 0xC000000000000001);
    v133 = &_swiftEmptyArrayStorage;
    while (v115 != v24)
    {
      if (v10)
      {
        v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v117 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v24 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v116 = *&v114->clientIdentity[8 * v24 + 16];
        swift_unknownObjectRetain();
        v117 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      v25 = [v116 remObjectID];
      swift_unknownObjectRelease();
      ++v24;
      if (v25)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v135[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v133 = v135[0];
        v24 = v117;
      }
    }

    v114, v107, v108, v109, v110, v111, v112, v113;

LABEL_60:
    v125 = *(sub_1000F5104(&qword_100946018, qword_1007A71C8) + 48);
    v127 = v129;
    v126 = v130;
    *v129 = v133;
    sub_10012F78C(v126, v127 + v125);
    _s10PredicatesOMa(0);
    goto LABEL_3;
  }
}

uint64_t sub_1005C24CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_100005F4C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Date();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1005C2624(uint64_t a1)
{
  result = sub_1005C04F0(&qword_10094DCE0, &type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation, &protocol conformance descriptor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005C267C(__n128 a1)
{
  v1 = sub_1005C27D8();
  if (v1)
  {
    v2 = v1;
    v6 = 0;
    v3 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v1 error:&v6];
    v4 = v6;
    if (v3)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v5 = v4;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1005C2774(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

id sub_1005C27D8()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1005C2838(v0);
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;
    v4 = v2;
    sub_1005C2B38(v3);
  }

  sub_1005C3E98(v1);
  return v2;
}

id sub_1005C2838(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = objc_opt_self();
  sub_100029344(v3, v1);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v26 = 0;
  v6 = [v4 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v26];

  if (!v6)
  {
    v9 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100936670 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10094DC58);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v26);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to decode reminderIDsMergeableOrdering {error: %s}", v13, 0xCu);
      sub_10000607C(v14);

      sub_100031A14(v3, v1);
    }

    else
    {
      sub_100031A14(v3, v1);
    }

    return 0;
  }

  v7 = v26;
  v8 = [v6 mutableCopy];
  sub_100031A14(v3, v1);

  return v8;
}

uint64_t sub_1005C2AD4()
{
  sub_100031A14(*(v0 + 24), *(v0 + 32));
  sub_1005C2B38(*(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_1005C2B38(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1005C2B64(unint64_t a1, uint64_t a2)
{
  v63 = a2;
  v2 = a1;
  v72 = _swiftEmptySetSingleton;
  isUniquelyReferenced_nonNull_native = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_55:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F5104(&qword_100944F78, qword_1007AABF0);
  Set.reserveCapacity(_:)(v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_5:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v69 = v2 & 0xFFFFFFFFFFFFFF8;
      v67 = v2 & 0xC000000000000001;
      v68 = _swiftEmptyDictionarySingleton;
      v7 = &selRef_persistentStoreForIdentifier_;
      v65 = v2;
      v66 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v69 + 16))
          {
            goto LABEL_51;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v11 = [v8 v7[106]];
        if (v11)
        {
          v12 = v11;
          v13 = REMObjectID.codable.getter();
          sub_100379240(&v71, v13);

          v14 = [v9 list];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 account];

            if (v16)
            {
              v70 = [v16 remObjectID];
              if (!v70)
              {

                goto LABEL_44;
              }

              v17 = v68;
              if ((v68 & 0xC000000000000001) != 0)
              {
                if (v68 >= 0)
                {
                  v17 = (v68 & 0xFFFFFFFFFFFFFF8);
                }

                v18 = v70;
                isUniquelyReferenced_nonNull_native = __CocoaDictionary.lookup(_:)();

                v6 = v67;
                if (!isUniquelyReferenced_nonNull_native || (sub_1000060C8(0, &qword_1009399F0, off_1008D4120), swift_dynamicCast(), (isUniquelyReferenced_nonNull_native = v71) == 0))
                {
                  v19 = v16;
                  v20 = __CocoaDictionary.count.getter();
                  if (__OFADD__(v20, 1))
                  {
                    goto LABEL_53;
                  }

                  v17 = sub_10021C924(v17, v20 + 1);
LABEL_33:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v71 = v17;
                  v27 = sub_10002B924(v70);
                  v28 = v17[2];
                  v29 = (v26 & 1) == 0;
                  v30 = v28 + v29;
                  if (__OFADD__(v28, v29))
                  {
                    goto LABEL_52;
                  }

                  v2 = v26;
                  if (v17[3] >= v30)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_100373F88();
                    }
                  }

                  else
                  {
                    sub_10036BAEC(v30, isUniquelyReferenced_nonNull_native);
                    v31 = sub_10002B924(v70);
                    if ((v2 & 1) != (v32 & 1))
                    {
                      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                      __break(1u);
                      return;
                    }

                    v27 = v31;
                  }

                  isUniquelyReferenced_nonNull_native = v66;
                  v33 = v71;
                  v68 = v71;
                  if (v2)
                  {
                    v34 = *(v71 + 7);
                    v35 = *(v34 + 8 * v27);
                    *(v34 + 8 * v27) = v16;
                  }

                  else
                  {
                    *(v71 + (v27 >> 6) + 8) |= 1 << v27;
                    *(v33[6] + 8 * v27) = v70;
                    *(v33[7] + 8 * v27) = v16;

                    v36 = v33[2];
                    v37 = __OFADD__(v36, 1);
                    v38 = v36 + 1;
                    if (v37)
                    {
                      goto LABEL_54;
                    }

                    v33[2] = v38;
                  }

                  v2 = v65;
                  v6 = v67;
LABEL_44:
                  v7 = &selRef_persistentStoreForIdentifier_;
                  goto LABEL_7;
                }
              }

              else
              {
                if (!*(v68 + 16) || (v21 = sub_10002B924(v70), (v22 & 1) == 0) || (v23 = *(*(v68 + 56) + 8 * v21), v24 = v23, !v23))
                {
                  v25 = v16;
                  goto LABEL_33;
                }

                isUniquelyReferenced_nonNull_native = v24;
              }

              isUniquelyReferenced_nonNull_native = v66;
              goto LABEL_44;
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

LABEL_7:
        ++v5;
        if (v10 == isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }
      }
    }
  }

  v68 = _swiftEmptyDictionarySingleton;
LABEL_47:

  v40 = sub_100277D70(v39);
  v68, v41, v42, v43, v44, v45, v46, v47;
  sub_100019514(v40, v63);
  if (v64)
  {
    v55 = v72;
    v68, v48, v49, v50, v51, v52, v53, v54;

    v55, v56, v57, v58, v59, v60, v61, v62;
  }

  else
  {
    v68, v48, v49, v50, v51, v52, v53, v54;
  }
}

void sub_1005C3014(unint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v126 = v5 + 32;
    v127 = v5 & 0xFFFFFFFFFFFFFF8;
    v140 = a2 + 56;
    a4.n128_u64[0] = 136315394;
    v121 = a4;
    v128 = i;
    v129 = v5;
    v130 = a3;
    v131 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v127 + 16))
        {
          goto LABEL_78;
        }

        v10 = *(v126 + 8 * v7);
      }

      v11 = v10;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v13 = [v10 list];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        sub_1005BFDC4(v15);
        [v11 setList:0];
        v16 = [v11 createResolutionTokenMapIfNecessary];
        v17 = String._bridgeToObjectiveC()();
        [v16 updateForKey:v17];
      }

      v18 = [v11 parentReminder];
      if (v18)
      {

        [v11 setParentReminder:0];
        v19 = [v11 createResolutionTokenMapIfNecessary];
        v20 = String._bridgeToObjectiveC()();
        [v19 updateForKey:v20];
      }

      v21 = [v11 children];
      if (!v21)
      {
        goto LABEL_6;
      }

      v22 = v21;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_1002F1430();
      v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v23 & 0xC000000000000001) != 0)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_4;
        }
      }

      else if (!*(v23 + 16))
      {
LABEL_4:
        v9 = v23;
LABEL_5:
        v9, v24, v25, v26, v27, v28, v29, v30;
LABEL_6:

LABEL_7:
        goto LABEL_8;
      }

      v31 = [v11 remObjectID];
      v143 = &_swiftEmptyArrayStorage;
      v132 = v11;
      v133 = v7;
      if ((v23 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v23 = v144;
        v32 = v145;
        v33 = v146;
        v5 = v147;
        v34 = v148;
      }

      else
      {
        v5 = 0;
        v35 = -1 << *(v23 + 32);
        v32 = v23 + 56;
        v33 = ~v35;
        v36 = -v35;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v34 = v37 & *(v23 + 56);
      }

      v134 = v31;
      v38 = (v33 + 64) >> 6;
      v135 = &_swiftEmptyArrayStorage;
      v137 = v23;
      v138 = v14;
      a3 = v34;
      while (1)
      {
        if (v23 < 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          swift_dynamicCast();
          v43 = v142[0];
          if (!v142[0])
          {
            break;
          }

          goto LABEL_42;
        }

        v41 = v5;
        v42 = a3;
        if (!a3)
        {
          while (1)
          {
            v5 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v5 >= v38)
            {
              goto LABEL_60;
            }

            v42 = *(v32 + 8 * v5);
            ++v41;
            if (v42)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
          goto LABEL_77;
        }

LABEL_38:
        a3 = (v42 - 1) & v42;
        v43 = *(*(v23 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v42)))));
        if (!v43)
        {
          break;
        }

LABEL_42:
        v44 = [v43 remObjectID];
        if (v44)
        {
          v45 = v44;
          v139 = a3;
          v46 = REMObjectID.codable.getter();

          if ((a2 & 0xC000000000000001) != 0)
          {
            v39 = v46;
            v40 = __CocoaSet.contains(_:)();

            if (v40)
            {
              goto LABEL_31;
            }
          }

          else if (*(a2 + 16))
          {
            type metadata accessor for REMObjectID_Codable();
            v47 = NSObject._rawHashValue(seed:)(*(a2 + 40));
            v48 = -1 << *(a2 + 32);
            v49 = v47 & ~v48;
            if ((*(v140 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
            {
              v50 = ~v48;
              while (1)
              {
                v51 = *(*(a2 + 48) + 8 * v49);
                v52 = static NSObject.== infix(_:_:)();

                if (v52)
                {
                  break;
                }

                v49 = (v49 + 1) & v50;
                if (((*(v140 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

LABEL_31:

              v23 = v137;
              v14 = v138;
              a3 = v139;
              goto LABEL_32;
            }
          }

LABEL_49:
          if (qword_100936670 != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          sub_100006654(v53, qword_10094DC58);
          v54 = v46;
          v55 = v134;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v124 = v57;
            log = v56;
            v58 = v54;
            v59 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v142[0] = v123;
            *v59 = 138412546;
            *(v59 + 4) = v58;
            *v122 = v58;
            *(v59 + 12) = 2080;
            v136 = v58;
            v60 = v58;
            if (v134)
            {
              v61 = [v55 description];
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v64 = v63;
            }

            else
            {
              v64 = 0xE300000000000000;
              v62 = 7104878;
            }

            v23 = v137;
            a3 = v139;
            v65 = sub_10000668C(v62, v64, v142);
            v64, v66, v67, v68, v69, v70, v71, v72;
            *(v59 + 14) = v65;
            _os_log_impl(&_mh_execute_header, log, v124, "Found subtasks not to be deleted; make them top level instead. {subtaskID: %@, parentID: %s}", v59, 0x16u);
            sub_1000050A4(v122, &unk_100938E70, &unk_100797230);

            sub_10000607C(v123);

            v54 = v136;
          }

          else
          {

            v23 = v137;
            a3 = v139;
          }

          [v43 setParentReminder:0];
          v73 = [v43 createResolutionTokenMapIfNecessary];
          v74 = String._bridgeToObjectiveC()();
          [v73 updateForKey:v74];

          [v43 updateChangeCount];
          swift_beginAccess();
          v75 = v54;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v138;
          if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a3 = v139;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v135 = v143;
          swift_endAccess();
        }

        else
        {
LABEL_32:
        }
      }

LABEL_60:
      sub_10002CF84(v23);
      if (v135 >> 62)
      {
        v76 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v76 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v129;
      a3 = v130;
      i = v128;
      v11 = v132;
      v7 = v133;
      v8 = v131;
      if (!v76)
      {
        v135, v24, v25, v26, v27, v28, v29, v30;

        goto LABEL_7;
      }

      if (!v134)
      {
        v9 = v135;
        goto LABEL_5;
      }

      if (v14)
      {
        if (sub_1005C007C(v14))
        {
          if (qword_100936670 != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          sub_100006654(v84, qword_10094DC58);
          v85 = v134;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v142[0] = swift_slowAlloc();
            *v88 = v121.n128_u32[0];
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

            v89 = Array.description.getter();
            v91 = v90;
            v135, v90, v92, v93, v94, v95, v96, v97;
            v98 = sub_10000668C(v89, v91, v142);
            v91, v99, v100, v101, v102, v103, v104, v105;
            *(v88 + 4) = v98;
            *(v88 + 12) = 2080;
            v106 = [v85 description];
            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v108;

            v110 = v107;
            v8 = v131;
            v111 = sub_10000668C(v110, v109, v142);
            v112 = v109;
            v7 = v133;
            v112, v113, v114, v115, v116, v117, v118, v119;
            *(v88 + 14) = v111;
            v14 = v138;
            _os_log_impl(&_mh_execute_header, v86, v87, "Moving subtask IDs to reflect top level ordering. {subtaskIDs: %s, parentID: %s}", v88, 0x16u);
            swift_arrayDestroy();

            v11 = v132;
          }

          sub_1005C0208(v120, v85);

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v135, v77, v78, v79, v80, v81, v82, v83;
        }
      }

      else
      {
        v135, v24, v25, v26, v27, v28, v29, v30;
      }

LABEL_8:
      if (v7 == i)
      {
        return;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }
}

void sub_1005C3B30(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100936670 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094DC58);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v53 = v9;
    v10 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v10 = 136315650;
    v11 = [v7 remObjectID];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 description];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v18 = sub_10000668C(v14, v16, &v54);
    v16, v19, v20, v21, v22, v23, v24, v25;
    *(v10 + 4) = v18;
    *(v10 + 12) = 2080;
    if (*(a2 + 16))
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (*(a2 + 16))
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_10000668C(v26, v27, &v54);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v10 + 14) = v28;
    *(v10 + 22) = 2080;
    if (*(a2 + 17))
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (*(a2 + 17))
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_10000668C(v36, v37, &v54);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v10 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v8, v53, "REMRemindersListBatchDeleteInvocation: updating REMCDList ordering {listID: %s, orderingChanged: %s, needsSortReminders: %s}", v10, 0x20u);
    swift_arrayDestroy();

    v3 = v2;
  }

  else
  {
  }

  if (*(a2 + 16) == 1)
  {
    sub_1005C267C(v17);
    if (v3)
    {
      return;
    }

    if (v47 >> 60 != 15)
    {
      v48 = v46;
      v49 = v47;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v7 setReminderIDsMergeableOrdering:isa];

      v51 = [v7 createResolutionTokenMapIfNecessary];
      v52 = String._bridgeToObjectiveC()();
      [v51 updateForKey:v52];

      [v7 updateChangeCount];
      sub_100031A14(v48, v49);
    }
  }

  if (*(a2 + 17) == 1)
  {
    sub_100357E44();
  }
}

id sub_1005C3E98(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1005C3EA8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DE60);
  v1 = sub_100006654(v0, qword_10094DE60);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005C3F88()
{
  v0 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  __chkstk_darwin(v9, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_100043AA8();
  sub_1001A4F3C(v11, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];

  v15 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v16 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  swift_storeEnumTagMultiPayload();
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v0);
  v17 = sub_10053CE0C(v8, v4, 0);
  (*(v1 + 8))(v4, v0);
  sub_1001A4F3C(v8, _s9UtilitiesO12SortingStyleOMa);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 setSortDescriptors:isa];

  return v13;
}

void sub_1005C42B0(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = sub_1005C3F88();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v4 = NSManagedObjectContext.fetch<A>(_:)();
  v5 = v1;

  if (!v1)
  {
    v11 = [objc_opt_self() defaultFetchOptions];
    sub_1003EBF14(v4, v11, a1, v6, v7, v8, v9, v10);
    v13 = v12;

    v13, v14, v15, v16, v17, v18, v19, v20;
    type metadata accessor for REMReminderStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936678 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v21 = type metadata accessor for Logger();
      v22 = sub_100006654(v21, qword_10094DE60);
      __chkstk_darwin(v22, v23);
      sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      sub_10055B9E4();
      v24 = Sequence.map<A>(skippingError:_:)();
      if (v5)
      {

        v4, v32, v33, v34, v35, v36, v37, v38;
        v46 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v46 = v24;
        v4, v25, v26, v27, v28, v29, v30, v31;
      }

      if (v46 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_25:
          v46, v39, v40, v41, v42, v43, v44, v45;
          v52 = objc_allocWithZone(type metadata accessor for REMComplicationDataView.FetchModelInvocation.Result());
          REMComplicationDataView.FetchModelInvocation.Result.init(accountStorages:listStorages:reminderStorages:)();
          return;
        }
      }

      else
      {
        v4 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_25;
        }
      }

      v47 = 0;
      v5 = v46 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v47 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v48 = *(v46 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          break;
        }

        v51 = [v48 displayDate];
        if (v51)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v47;
        if (v50 == v4)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }
  }
}

void *sub_1005C4608(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v54 = a3;
  v57 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57, v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v56 = &v45 - v18;
  v19 = _swiftEmptyDictionarySingleton;
  v59 = _swiftEmptyDictionarySingleton;
  v51 = *(a1 + 16);
  if (v51)
  {
    v20 = 0;
    v50 = v6 + 16;
    v55 = (v6 + 32);
    v45 = xmmword_100791300;
    v48 = v6;
    v49 = a1;
    while (v20 < *(a1 + 16))
    {
      v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v23 = *(v6 + 72);
      v24 = v56;
      (*(v6 + 16))(v56, a1 + v22 + v23 * v20, v57);
      v53(&v58, v24);
      if (v4)
      {
        (*(v6 + 8))(v56, v57);

        goto LABEL_19;
      }

      v25 = v58;
      v27 = sub_100364118(v58);
      v28 = v19[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_21;
      }

      v31 = v26;
      if (v19[3] < v30)
      {
        sub_10036AF70(v30, 1);
        v19 = v59;
        v32 = sub_100364118(v25);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_23;
        }

        v27 = v32;
      }

      if (v31)
      {
        v47 = 0;
        v34 = v19[7];
        v35 = *v55;
        (*v55)(v52, v56, v57);
        v36 = *(v34 + 8 * v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + 8 * v27) = v36;
        v46 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_100365A24(0, *v36->clientIdentity + 1, 1, v36);
          *(v34 + 8 * v27) = v36;
        }

        v39 = *v36->clientIdentity;
        v38 = *&v36->clientIdentity[8];
        if (v39 >= v38 >> 1)
        {
          v36 = sub_100365A24((v38 > 1), v39 + 1, 1, v36);
          *(v34 + 8 * v27) = v36;
        }

        v21 = v46;
        v4 = v47;
        *v36->clientIdentity = v39 + 1;
        v21(v36 + v22 + v39 * v23, v52, v57);
      }

      else
      {
        sub_1000F5104(&unk_1009430D0, &qword_10079D4F0);
        v40 = swift_allocObject();
        *(v40 + 16) = v45;
        (*v55)((v40 + v22), v56, v57);
        v19[(v27 >> 6) + 8] |= 1 << v27;
        *(v19[6] + v27) = v25;
        *(v19[7] + 8 * v27) = v40;
        v41 = v19[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_22;
        }

        v19[2] = v43;
      }

      ++v20;
      v6 = v48;
      a1 = v49;
      if (v51 == v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_19:
    a1, v11, v12, v13, v14, v15, v16, v17;
    return v19;
  }

  return result;
}

void *sub_1005C49A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(Swift::UInt *__return_ptr, id *))
{
  v6 = _swiftEmptyDictionarySingleton;
  v34 = _swiftEmptyDictionarySingleton;
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    if (a3 > v7)
    {
      v7 = a3;
    }

    v9 = v7 - a3;
    v10 = (a2 + 8 * a3);
    while (v9)
    {
      v33 = *v10;
      v12 = v33;
      a5(&v31, &v33);
      if (v5)
      {

        swift_unknownObjectRelease();

        return v6;
      }

      v30 = v8;
      v13 = v31;
      v14 = v32;
      v15 = sub_1003642E4(v31, v32);
      v17 = v6[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_21;
      }

      v21 = v16;
      if (v6[3] < v20)
      {
        sub_10036BDCC(v20, 1);
        v6 = v34;
        v15 = sub_1003642E4(v13, v14);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_23;
        }
      }

      if (v21)
      {
        v11 = (v6[7] + 8 * v15);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v23 = v15;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1007953F0;
        *(v24 + 32) = v12;
        v6[(v23 >> 6) + 8] |= 1 << v23;
        v25 = (v6[6] + 16 * v23);
        *v25 = v13;
        v25[1] = v14;
        *(v6[7] + 8 * v23) = v24;
        v26 = v6[2];
        v19 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v19)
        {
          goto LABEL_22;
        }

        v6[2] = v27;
      }

      --v9;
      ++v10;
      v8 = v30 - 1;
      if (v30 == 1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_1005C4BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, id *))
{
  v6 = _swiftEmptyDictionarySingleton;
  v30 = _swiftEmptyDictionarySingleton;
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    if (a3 > v7)
    {
      v7 = a3;
    }

    v9 = v7 - a3;
    v10 = (a2 + 8 * a3);
    while (v9)
    {
      v29 = *v10;
      v12 = v29;
      a5(&v28, &v29);
      if (v5)
      {

        swift_unknownObjectRelease();

        return v6;
      }

      v13 = v28;
      v14 = sub_100364364(v28);
      v16 = v6[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_21;
      }

      v20 = v15;
      if (v6[3] < v19)
      {
        sub_10036C06C(v19, 1);
        v6 = v30;
        v14 = sub_100364364(v13);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_23;
        }
      }

      if (v20)
      {
        v11 = (v6[7] + 8 * v14);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v22 = v14;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1007953F0;
        *(v23 + 32) = v12;
        v6[(v22 >> 6) + 8] |= 1 << v22;
        *(v6[6] + 8 * v22) = v13;
        *(v6[7] + 8 * v22) = v23;
        v24 = v6[2];
        v18 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v18)
        {
          goto LABEL_22;
        }

        v6[2] = v25;
      }

      --v9;
      ++v10;
      if (!--v8)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void sub_1005C4E20(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436450(v2);
  }

  v3 = *v2->clientIdentity;
  v29[0] = &v2->clientIdentity[16];
  v29[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = &v2->clientIdentity[16];
      do
      {
        v15 = *&v2->clientIdentity[16 * v13 + 16];
        v16 = v12;
        v17 = v14;
        do
        {
          if (v15 >= *v17)
          {
            break;
          }

          v18 = *(v17 + 3);
          *(v17 + 1) = *v17;
          *v17 = v15;
          *(v17 + 1) = v18;
          v17 -= 16;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        v14 += 16;
        --v12;
      }

      while (v13 != v3);
    }
  }

  else
  {
    v9 = v4;
    v10 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1000F5104(&qword_10093ED90, &unk_10079D510);
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v11->clientIdentity = v10;
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }

    v27[0] = &v11->clientIdentity[16];
    v27[1] = v10;
    sub_1005C7678(v27, v28, v29, v9, v5, v6, v7, v8);
    *v11->clientIdentity = 0;
    v11, v20, v21, v22, v23, v24, v25, v26;
  }

  *a1 = v2;
}

void sub_1005C4F74(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, _TtC7remindd19RDXPCStorePerformer *a2@<X2>, void *a3@<X3>, _TtC7remindd19RDXPCStorePerformer *a4@<X4>, uint64_t a5@<X8>)
{
  v314 = a4;
  v308 = a3;
  v303 = a2;
  v295 = a5;
  v296 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel();
  v310 = *(v296 - 8);
  __chkstk_darwin(v296, v6);
  v319 = &v275[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v294 = &v275[-v10];
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v11 - 8, v12);
  v292 = &v275[-v13];
  v318 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v306 = *(v318 - 8);
  __chkstk_darwin(v318, v14);
  v316 = &v275[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16, v17);
  v317 = &v275[-v18];
  __chkstk_darwin(v19, v20);
  v298 = &v275[-v21];
  v313 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v305 = *(v313 - 8);
  __chkstk_darwin(v313, v22);
  v293 = &v275[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24, v25);
  v304 = &v275[-v26];
  __chkstk_darwin(v27, v28);
  v307 = &v275[-v29];
  __chkstk_darwin(v30, v31);
  v312 = &v275[-v32];
  v33 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v301 = *(v33 - 8);
  v302 = v33;
  __chkstk_darwin(v33, v34);
  v299 = &v275[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36, v37);
  v300 = &v275[-v38];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v297 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v40);
  v42 = &v275[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = type metadata accessor for REMRemindersListDataView.Diff();
  v309 = *(v43 - 8);
  __chkstk_darwin(v43, v44);
  v46 = &v275[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v47, v48);
  v50 = &v275[-v49];
  v51 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v51 - 8, v52);
  v54 = &v275[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v55, v56);
  v58 = &v275[-v57];
  v59 = a1;
  v60 = v315;
  v61 = sub_1005C9018(a1, v314);
  if (v60)
  {
    return;
  }

  v290 = v54;
  v291 = v46;
  v288 = v50;
  v287 = v43;
  v62 = v61;
  v63 = v311;
  sub_1005C669C(v59, v61, v58);
  v289 = v62;
  v64 = [(RDXPCStorePerformer *)v63 fetchResultTokenToDiffAgainst];
  sub_100534D44(v64, v288);
  v285 = 0;
  v283 = v58;
  v282 = v59;

  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v65 = v300;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v297 + 8))(v42, Configuration);
  v66 = v301;
  v67 = v299;
  v68 = v65;
  v69 = v302;
  (*(v301 + 16))(v299, v68, v302);
  v70 = (*(v66 + 88))(v67, v69);
  if (v70 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
LABEL_47:
    v79 = v309;
    v80 = v310;
    v81 = v319;
    v163 = v308;
    v83 = v291;
    v84 = v290;
    v164 = v305;
    if (v70 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v166 = v301;
      v165 = v302;
      v167 = v299;
      (*(v301 + 96))(v299, v302);
      sub_10053E698(*v167, v288, v282, v163, 0);
      (*(v166 + 8))(v300, v165);
      goto LABEL_98;
    }

    if (v70 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      if (v70 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_122;
      }

      (*(v301 + 8))(v300, v302);
      goto LABEL_98;
    }

    v168 = v299;
    (*(v301 + 96))(v299, v302);
    v277 = *v168;
    v169 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100226AD8(v168 + *(v169 + 48), v292);
    v170 = v289;
    v307 = *v289->clientIdentity;
    if (!v307)
    {
      v314 = &_swiftEmptyArrayStorage;
LABEL_103:
      v264 = v314;
      v265 = v282;
      sub_10053DB98(v277, v314, v282, v163, 0);
      v266 = v292;
      v267 = v265;
      v79 = v309;
      sub_10053EBE4(v292, v264, v267, v163, 0);
      v264, v268, v269, v270, v271, v272, v273, v274;
      sub_1000050A4(v266, &qword_10094B8E0, &unk_1007AABD0);
      (*(v301 + 8))(v300, v302);
      v80 = v310;
      goto LABEL_98;
    }

    v171 = 0;
    v303 = (v164 + 16);
    v299 = (v164 + 88);
    LODWORD(v297) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
    v281 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
    v280 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
    LODWORD(v279) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    v276 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
    v286 = (v164 + 96);
    v278 = (v306 + 32);
    v317 = (v306 + 8);
    v284 = (v164 + 8);
    v314 = &_swiftEmptyArrayStorage;
    v315 = v306 + 16;
    v172 = v293;
    while (1)
    {
      if (v171 >= *v170->clientIdentity)
      {
        goto LABEL_117;
      }

      v173 = v170 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v174 = *(v164 + 72);
      v312 = v171;
      v175 = *(v164 + 16);
      v176 = v304;
      v177 = v313;
      v175(v304, &v173[v174 * v171], v313);
      v175(v172, v176, v177);
      v178 = (*(v164 + 88))(v172, v177);
      if (v178 == v297)
      {
        break;
      }

      if (v178 == v281)
      {
        (*v286)(v172, v177);
        goto LABEL_59;
      }

      v221 = v318;
      v222 = v298;
      if (v178 != v280)
      {
        if (v178 == v279)
        {
          v177 = v313;
          (*v286)(v172, v313);
LABEL_59:
          v186 = *(v172 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
          v187 = type metadata accessor for Date();
          (*(*(v187 - 8) + 8))(v172, v187);
LABEL_60:
          v188 = v306;
          v189 = *(v186 + 16);
          if (v189)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v188 = v306;
          v177 = v313;
          if (v178 != v276)
          {
            goto LABEL_46;
          }

          (*v286)(v172, v313);
          v186 = *(v172 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
          v225 = type metadata accessor for Date();
          (*(*(v225 - 8) + 8))(v172, v225);
          v189 = *(v186 + 16);
          if (v189)
          {
LABEL_61:
            v190 = *(v188 + 80);
            v311 = v186;
            v191 = v186 + ((v190 + 32) & ~v190);
            v192 = *(v188 + 72);
            v193 = *(v188 + 16);
            v194 = &_swiftEmptyArrayStorage;
            v195 = v316;
            do
            {
              v196 = v318;
              v197 = v195;
              v193();
              v198 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*v317)(v197, v196);
              v199 = *(v198 + 16);
              v200 = *v194->clientIdentity;
              v201 = v200 + v199;
              if (__OFADD__(v200, v199))
              {
                goto LABEL_108;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v201 > *&v194->clientIdentity[8] >> 1)
              {
                if (v200 <= v201)
                {
                  v210 = v200 + v199;
                }

                else
                {
                  v210 = v200;
                }

                v194 = sub_100365A24(isUniquelyReferenced_nonNull_native, v210, 1, v194);
              }

              v81 = v319;
              if (*(v198 + 16))
              {
                v211 = (*&v194->clientIdentity[8] >> 1) - *v194->clientIdentity;
                type metadata accessor for REMRemindersListDataView.ReminderLite();
                if (v211 < v199)
                {
                  goto LABEL_110;
                }

                swift_arrayInitWithCopy();
                v198, v212, v213, v214, v215, v216, v217, v218;
                v81 = v319;
                v195 = v316;
                if (v199)
                {
                  v219 = *v194->clientIdentity;
                  v133 = __OFADD__(v219, v199);
                  v220 = v219 + v199;
                  if (v133)
                  {
                    goto LABEL_111;
                  }

                  *v194->clientIdentity = v220;
                }
              }

              else
              {
                v198, v203, v204, v205, v206, v207, v208, v209;
                v195 = v316;
                if (v199)
                {
                  goto LABEL_109;
                }
              }

              v191 += v192;
              --v189;
            }

            while (v189);
            v311, v71, v72, v73, v74, v75, v76, v77;
            v84 = v290;
            v177 = v313;
            v164 = v305;
            v172 = v293;
            goto LABEL_84;
          }
        }

        v186, v179, v180, v181, v182, v183, v184, v185;
        v194 = &_swiftEmptyArrayStorage;
        goto LABEL_84;
      }

      v223 = v313;
      (*v286)(v172, v313);
      (*v278)(v222, v172, v221);
      v194 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
      v224 = v222;
      v177 = v223;
      (*v317)(v224, v221);
LABEL_84:
      (*v284)(v304, v177);
      v226 = *v194->clientIdentity;
      v227 = *v314->clientIdentity;
      v228 = v227 + v226;
      if (__OFADD__(v227, v226))
      {
        goto LABEL_118;
      }

      v229 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v314;
      if (!v229 || v228 > *&v314->clientIdentity[8] >> 1)
      {
        if (v227 <= v228)
        {
          v238 = v227 + v226;
        }

        else
        {
          v238 = v227;
        }

        v237 = sub_100365A24(v229, v238, 1, v314);
      }

      v163 = v308;
      v239 = *v194->clientIdentity;
      v314 = v237;
      if (v239)
      {
        v240 = (*&v237->clientIdentity[8] >> 1) - *v237->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v240 < v226)
        {
          goto LABEL_120;
        }

        swift_arrayInitWithCopy();
        v194, v241, v242, v243, v244, v245, v246, v247;
        v163 = v308;
        v83 = v291;
        v170 = v289;
        if (v226)
        {
          v248 = *v314->clientIdentity;
          v133 = __OFADD__(v248, v226);
          v249 = v248 + v226;
          if (v133)
          {
            goto LABEL_121;
          }

          *v314->clientIdentity = v249;
        }
      }

      else
      {
        v194, v230, v231, v232, v233, v234, v235, v236;
        v83 = v291;
        v170 = v289;
        if (v226)
        {
          goto LABEL_119;
        }
      }

      v171 = (v312 + 1);
      if (v312 + 1 == v307)
      {
        goto LABEL_103;
      }
    }

    (*v286)(v172, v177);
    v186 = *v172;
    goto LABEL_60;
  }

  (*(v66 + 96))(v67, v69);
  v278 = *v67;
  v78 = v289;
  v79 = v309;
  v80 = v310;
  v81 = v319;
  v82 = v308;
  v83 = v291;
  v84 = v290;
  v85 = v305;
  v303 = *v289->clientIdentity;
  if (!v303)
  {
    v314 = &_swiftEmptyArrayStorage;
LABEL_97:
    v250 = v314;
    sub_10053DB98(v278, v314, v282, v82, 0);
    v250, v251, v252, v253, v254, v255, v256, v257;
    (*(v301 + 8))(v300, v302);
LABEL_98:
    sub_100010364(v283, v84, &qword_100938A70, &qword_1007ACC60);
    v258 = v294;
    REMRemindersListDataView.ScheduledDateBucketsModel.init(buckets:remindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v259 = v81;
    v260 = v296;
    (*(v80 + 16))(v259, v258, v296);
    v261 = v83;
    v262 = v288;
    v263 = v287;
    (*(v79 + 16))(v261, v288, v287);
    sub_1005CC954(&qword_10094DEC0, &type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel, &protocol conformance descriptor for REMRemindersListDataView.ScheduledDateBucketsModel);
    sub_1005CC954(&qword_10094DEC8, &type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel, &protocol conformance descriptor for REMRemindersListDataView.ScheduledDateBucketsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v80 + 8))(v258, v260);
    (*(v79 + 8))(v262, v263);
    sub_1000050A4(v283, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v86 = 0;
  v299 = (v305 + 16);
  v297 = v305 + 88;
  LODWORD(v293) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
  LODWORD(v284) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
  v281 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v280 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
  LODWORD(v277) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
  v292 = (v305 + 96);
  v279 = (v306 + 32);
  v316 = (v306 + 8);
  v286 = (v305 + 8);
  v314 = &_swiftEmptyArrayStorage;
  v315 = v306 + 16;
  v87 = v317;
  while (1)
  {
    if (v86 >= *v78->clientIdentity)
    {
      goto LABEL_112;
    }

    v89 = v78 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v90 = *(v85 + 72);
    v311 = v86;
    v91 = *(v85 + 16);
    v93 = v312;
    v92 = v313;
    v91(v312, &v89[v90 * v86], v313);
    v94 = v307;
    v91(v307, v93, v92);
    v95 = (*(v85 + 88))(v94, v92);
    if (v95 == v293)
    {
      (*v292)(v94, v92);
      v103 = *v94;
      v104 = *(*v94 + 16);
      if (v104)
      {
        break;
      }

      goto LABEL_29;
    }

    if (v95 != v284)
    {
      if (v95 == v281)
      {
        (*v292)(v94, v92);
        v136 = v298;
        v137 = v318;
        (*v279)(v298, v94, v318);
        v109 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
        v138 = v136;
        v92 = v313;
        (*v316)(v138, v137);
        goto LABEL_32;
      }

      if (v95 != v280 && v95 != v277)
      {
LABEL_46:
        v70 = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_47;
      }
    }

    (*v292)(v94, v92);
    v103 = *&v94[*(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48)];
    v135 = type metadata accessor for Date();
    (*(*(v135 - 8) + 8))(v94, v135);
    v104 = *(v103 + 16);
    if (v104)
    {
      break;
    }

LABEL_29:
    v103, v96, v97, v98, v99, v100, v101, v102;
    v109 = &_swiftEmptyArrayStorage;
LABEL_32:
    (*v286)(v93, v92);
    v139 = *v109->clientIdentity;
    v140 = v314;
    v141 = *v314->clientIdentity;
    v142 = v141 + v139;
    if (__OFADD__(v141, v139))
    {
      goto LABEL_113;
    }

    v143 = swift_isUniquelyReferenced_nonNull_native();
    if (!v143 || v142 > *&v140->clientIdentity[8] >> 1)
    {
      if (v141 <= v142)
      {
        v151 = v141 + v139;
      }

      else
      {
        v151 = v141;
      }

      v140 = sub_100365A24(v143, v151, 1, v140);
    }

    v83 = v291;
    v152 = *v109->clientIdentity;
    v314 = v140;
    if (v152)
    {
      v153 = (*&v140->clientIdentity[8] >> 1) - *v140->clientIdentity;
      type metadata accessor for REMRemindersListDataView.ReminderLite();
      if (v153 < v139)
      {
        goto LABEL_115;
      }

      swift_arrayInitWithCopy();
      v109, v154, v155, v156, v157, v158, v159, v160;
      v80 = v310;
      v88 = v311;
      v83 = v291;
      v84 = v290;
      v78 = v289;
      if (v139)
      {
        v161 = *v314->clientIdentity;
        v133 = __OFADD__(v161, v139);
        v162 = v161 + v139;
        if (v133)
        {
          goto LABEL_116;
        }

        *v314->clientIdentity = v162;
      }
    }

    else
    {
      v109, v144, v145, v146, v147, v148, v149, v150;
      v80 = v310;
      v88 = v311;
      v84 = v290;
      v78 = v289;
      if (v139)
      {
        goto LABEL_114;
      }
    }

    v86 = (&v88->super.isa + 1);
    v79 = v309;
    if (v86 == v303)
    {
      goto LABEL_97;
    }
  }

  v105 = *(v306 + 80);
  v304 = v103;
  v106 = v103 + ((v105 + 32) & ~v105);
  v107 = *(v306 + 72);
  v108 = *(v306 + 16);
  v109 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v110 = v318;
    v108(v87, v106, v318);
    v111 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
    (*v316)(v87, v110);
    v112 = *(v111 + 16);
    v113 = *v109->clientIdentity;
    v114 = v113 + v112;
    if (__OFADD__(v113, v112))
    {
      break;
    }

    v115 = swift_isUniquelyReferenced_nonNull_native();
    if (v115 && v114 <= *&v109->clientIdentity[8] >> 1)
    {
      if (*(v111 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v113 <= v114)
      {
        v123 = v113 + v112;
      }

      else
      {
        v123 = v113;
      }

      v109 = sub_100365A24(v115, v123, 1, v109);
      if (*(v111 + 16))
      {
LABEL_22:
        v124 = (*&v109->clientIdentity[8] >> 1) - *v109->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v124 < v112)
        {
          goto LABEL_106;
        }

        swift_arrayInitWithCopy();
        v111, v125, v126, v127, v128, v129, v130, v131;
        v81 = v319;
        v87 = v317;
        if (v112)
        {
          v132 = *v109->clientIdentity;
          v133 = __OFADD__(v132, v112);
          v134 = v132 + v112;
          if (v133)
          {
            goto LABEL_107;
          }

          *v109->clientIdentity = v134;
        }

        goto LABEL_12;
      }
    }

    v111, v116, v117, v118, v119, v120, v121, v122;
    v81 = v319;
    v87 = v317;
    if (v112)
    {
      goto LABEL_105;
    }

LABEL_12:
    v106 += v107;
    if (!--v104)
    {
      v304, v71, v72, v73, v74, v75, v76, v77;
      v82 = v308;
      v93 = v312;
      v92 = v313;
      v85 = v305;
      goto LABEL_32;
    }
  }

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
  v289, v71, v72, v73, v74, v75, v76, v77;
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}