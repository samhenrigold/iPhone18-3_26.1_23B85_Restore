void sub_100044F04(uint64_t a1, void *a2, NSObject *a3)
{
  aBlock[0] = a1;
  v69 = a2;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  type metadata accessor for CKError(0);
  v7 = v6;
  if (!swift_dynamicCast() || (v8 = v67) == 0)
  {
    sub_10004C434(a1, a3);
    return;
  }

  v68 = v67;
  v9 = sub_100049490(&unk_100091870, 255, type metadata accessor for CKError, &unk_10006D4C0);
  v10 = (*(v9 + 48))(v7, v9);
  if (v10 != 14)
  {
    if (v10 == 26)
    {
      v20 = [a2 recordID];
      v12 = [v20 zoneID];

      if (qword_100090D18 == -1)
      {
LABEL_18:
        v21 = type metadata accessor for Logger();
        sub_100020D2C(v21, qword_100092EB0);
        v22 = v12;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          aBlock[0] = v26;
          *v25 = 136446210;
          v27 = [v22 zoneName];
          v28 = v22;
          v29 = v8;
          v30 = v27;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = sub_100033140(v31, v33, aBlock);

          *(v25 + 4) = v34;
          v8 = v29;
          v22 = v28;
          _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s was not found, attempting to re-save it.", v25, 0xCu);
          sub_1000208BC(v26);
        }

        v35 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v22];
        [v35 setCapabilities:8];
        v36 = swift_allocObject();
        *(v36 + 16) = a3;
        v37 = *(v65 + 24);
        aBlock[4] = sub_10004E78C;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10004EBCC;
        aBlock[3] = &unk_100087710;
        v38 = _Block_copy(aBlock);
        v39 = a3;

        [v37 saveRecordZone:v35 completionHandler:v38];

        _Block_release(v38);

        return;
      }

LABEL_40:
      swift_once();
      goto LABEL_18;
    }

    if (v10 == 33)
    {
      v11 = off_100091188[0];
      sub_100021848(0, &unk_100091850, CKShare_ptr);
      v12 = &v69;
      v13 = v11();
      v14 = v13;
      if (v13 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
LABEL_8:
          v16 = 0;
          v8 = (v14 & 0xC000000000000001);
          while (1)
          {
            if (v8)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            dispatch_group_enter(a3);
            v12 = v65;
            sub_100043ED8(v18, 0, 0xD000000000000037, 0x80000001000701C0, a3);

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_8;
        }
      }

LABEL_42:

      dispatch_group_leave(a3);

      return;
    }

    goto LABEL_29;
  }

  v40 = related decl 'e' for CKErrorCode.serverRecord.getter();
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
LABEL_28:

LABEL_29:
    aBlock[0] = v67;
    sub_100049490(&qword_100090DF0, 255, type metadata accessor for CKError, &unk_10006CFEC);
    v58 = v67;
    v59 = _getErrorEmbeddedNSError<A>(_:)();
    if (v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = swift_allocError();
      *v61 = v58;
    }

    sub_10004C434(v60, a3);

    return;
  }

  v42 = v41;
  v43 = related decl 'e' for CKErrorCode.clientRecord.getter();
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

    v40 = v43;
    goto LABEL_28;
  }

  v45 = v44;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100020D2C(v46, qword_100092EB0);
  v47 = v40;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    buf = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *buf = 136446210;
    v50 = [v42 recordID];
    v62 = v49;
    v51 = [v50 zoneID];

    v52 = [v51 zoneName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v8;
    v56 = v55;

    v57 = sub_100033140(v53, v56, aBlock);
    v8 = v54;

    *(buf + 4) = v57;
    _os_log_impl(&_mh_execute_header, v48, v62, "Updating share for: %{public}s", buf, 0xCu);
    sub_1000208BC(v64);
  }

  else
  {
  }

  if (sub_10004D184(v42, v45))
  {
    sub_100043A8C(v42, a3);
  }

  else
  {
    dispatch_group_leave(a3);
  }
}

uint64_t sub_1000456C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10[3] = sub_100021848(0, &qword_100091840, CKModifyRecordsOperation_ptr);
  v10[4] = &off_1000869C0;
  v10[0] = *(a2 + 16);
  v4 = v10[0];
  v5 = *(a1 + 24);
  sub_100020F40(v10, v9);
  v6 = v4;
  sub_100020818(&qword_100091018, qword_10006D470);
  sub_100021848(0, &qword_100091848, CKDatabaseOperation_ptr);
  swift_dynamicCast();
  [v5 addOperation:v8];

  return sub_1000208BC(v10);
}

uint64_t sub_1000457B4(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  if (a3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100020D2C(v8, qword_100092EB0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_100049B84(a2, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v13 = String.init<A>(describing:)();
      v15 = sub_100033140(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch share metadata: %{public}s", v11, 0xCu);
      sub_1000208BC(v12);
    }

    v16 = a4[12];
    v17 = a4[13];
    sub_100020908(a4 + 9, v16);
    return (*(v17 + 48))(a5, sub_100059710, 0, v16, v17);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100020D2C(v19, qword_100092EB0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully fetched share metadata", v22, 2u);
    }

    return sub_100045A48(a2, a5);
  }
}

uint64_t sub_100045A48(void *a1, void *a2)
{
  v3 = v2;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_100021848(0, &qword_100091758, CKAcceptSharesOperation_ptr);
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10006DED0;
  *(v11 + 32) = a1;
  v12 = a1;
  sub_1000216D8((v10 + 16));
  [*(v10 + 16) setQualityOfService:25];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a2;

  v14 = a2;
  CKAcceptSharesOperation.acceptSharesResultBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = v10;
  aBlock[4] = sub_100049B9C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087378;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v19 = v22;
  v18 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v19, v18);
  (*(v24 + 8))(v9, v25);
}

uint64_t sub_100045E44(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  swift_beginAccess();
  v14[3] = sub_100021848(0, a3, a4);
  v14[4] = &off_1000869C0;
  v14[0] = *(a2 + 16);
  v8 = v14[0];
  v9 = *(a1 + 16);
  sub_100020F40(v14, v13);
  v10 = v8;
  sub_100020818(&qword_100091018, qword_10006D470);
  sub_100021848(0, &qword_100091750, CKOperation_ptr);
  swift_dynamicCast();
  [v9 addOperation:v12];

  return sub_1000208BC(v14);
}

uint64_t sub_100045F38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100020D2C(v6, qword_100092EB0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v11 = String.init<A>(describing:)();
      v13 = sub_100033140(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to save verification zone: %{public}s", v9, 0xCu);
      sub_1000208BC(v10);
    }

    v14 = a3[12];
    v15 = a3[13];
    sub_100020908(a3 + 9, v14);
    (*(v15 + 48))(a4, sub_100059710, 0, v14, v15);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100020D2C(v17, qword_100092EB0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully saved verification zone", v20, 2u);
    }

    v21 = a3[12];
    v22 = a3[13];
    sub_100020908(a3 + 9, v21);
    v23 = [a4 context];
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    (*(v22 + 40))(a4, v23, sub_10004EBD0, v24, v21, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10004629C(uint64_t a1, char a2, void *a3, void *a4)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to accept share: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = a3[12];
    v16 = a3[13];
    sub_100020908(a3 + 9, v15);
    return (*(v16 + 48))(a4, sub_100059710, 0, v15, v16);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100020D2C(v18, qword_100092EB0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully accepted share", v21, 2u);
    }

    v22 = a3[12];
    v23 = a3[13];
    sub_100020908(a3 + 9, v22);
    v24 = [a4 context];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    (*(v23 + 40))(a4, v24, sub_100049BD4, v25, v22, v23);
    swift_unknownObjectRelease();
  }
}

char *sub_1000465E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_1000918A0, &qword_10006E0D8);
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

void *sub_100046714(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100020818(a5, a6);
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

char *sub_1000468F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&unk_100091880, &unk_10006E090);
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

void *sub_1000469FC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100046A1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100046A4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
  *v3 = result;
  return result;
}

void *sub_100046A90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_1000918A8, &qword_10006E0E0, &type metadata accessor for _DeviceActivityData.ApplicationActivity);
  *v3 = result;
  return result;
}

char *sub_100046AD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100046B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100046AF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
  *v3 = result;
  return result;
}

char *sub_100046B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_100091898, &qword_10006E0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100046C48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100020818(a5, a6);
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

Swift::Int sub_100046E24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100020818(&qword_100091778, &qword_10006DFE8);
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
      v24 = *(*(v5 + 56) + 8 * v20);
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

Swift::Int sub_1000470CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100020818(&qword_100091890, &qword_10006E0C8);
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

void *sub_100047370()
{
  v1 = v0;
  sub_100020818(&qword_100091778, &qword_10006DFE8);
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

id sub_1000474E0()
{
  v1 = v0;
  sub_100020818(&qword_100091890, &qword_10006E0C8);
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

void *sub_10004764C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v19 = a4;
  v24 = a2;
  v23 = a1;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v26 = type metadata accessor for DispatchQoS();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_100021848(0, &unk_1000916E8, MODeviceActivitySettingsGroup_ptr);
  v34[4] = &off_100087038;
  v34[0] = a3;
  v33[3] = sub_100021848(0, &qword_1000915B0, IDSInvitationManager_ptr);
  v33[4] = &off_100087088;
  v33[0] = a4;
  a5[14] = [objc_allocWithZone(type metadata accessor for InvitationHandler()) init];
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_100091698, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100020818(&qword_1000916A0, &qword_10006DF90);
  sub_1000495DC(&qword_1000916A8, &qword_1000916A0, &qword_10006DF90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v21 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  a5[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v24;
  a5[2] = v23;
  a5[3] = v13;
  sub_100020F40(v34, (a5 + 4));
  sub_100020F40(v33, (a5 + 9));
  *(a5[14] + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate + 8) = &off_100087BE0;
  swift_unknownObjectWeakAssign();
  [v19 setDelegate:a5[14] queue:a5[15]];
  sub_100020F40(v33, v32);
  v14 = swift_allocObject();
  sub_100028428(v32, v14 + 16);
  *(v14 + 56) = a5;
  aBlock[4] = sub_1000495B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_1000871E8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v16 = v27;
  v17 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v29 + 8))(v16, v17);
  (*(v25 + 8))(v12, v26);
  sub_1000208BC(v34);

  sub_1000208BC(v33);
  return a5;
}

uint64_t sub_100047C6C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100047C78(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_100047D34(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_100047D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a3;
  v4 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKSyncEngine.State.Serialization();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v31 = v12;
  v11(v10, a2);
  v13 = CKSyncEngine.database.getter();
  v14 = [v13 scope];

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v30[2] = sub_100020D2C(v15, qword_100092EB0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136446210;
    v21 = CKDatabaseScope.description.getter();
    v23 = sub_100033140(v21, v22, &v33);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Metadata was updated for engine with scope: %{public}s", v19, 0xCu);
    sub_1000208BC(v20);

    v4 = v30[0];
  }

  v24 = v32;
  if (v14 == 2)
  {
    v25 = &enum case for DeviceActivityDataStore.SyncStateType.private(_:);
    goto LABEL_9;
  }

  if (v14 == 3)
  {
    v25 = &enum case for DeviceActivityDataStore.SyncStateType.shared(_:);
LABEL_9:
    (*(v5 + 104))(v32, *v25, v4);
    sub_100049490(&qword_1000916D0, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    sub_100049490(&qword_1000916E0, 255, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    v26 = v31;
    DeviceActivityDataStore.write<A>(_:type:)();
    (*(v5 + 8))(v24, v4);
    (*(v8 + 8))(v10, v26);
    return;
  }

  (*(v8 + 8))(v10, v31);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unrecognized database scope: %{public}ld", v29, 0xCu);
  }
}

char *sub_100048350(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t), char *a7)
{
  v107 = a6;
  v125 = a4;
  v118 = a2;
  v121 = a1;
  v120 = type metadata accessor for CKSyncEngine.Configuration();
  v124 = *(v120 - 8);
  v10 = __chkstk_darwin(v120);
  v119 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v99 - v12;
  v117 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v123 = *(v117 - 8);
  __chkstk_darwin(v117);
  v106 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100020818(&qword_100091678, &qword_10006DF88);
  v15 = __chkstk_darwin(v14 - 8);
  v109 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v116 = &v99 - v18;
  __chkstk_darwin(v17);
  v122 = &v99 - v19;
  v114 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v21);
  v110 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v23 - 8);
  v115 = sub_100049490(&unk_100091680, v24, type metadata accessor for SyncCoordinator, &unk_10006DF30);
  v130[3] = sub_100021848(0, &qword_100091380, NSUserDefaults_ptr);
  v130[4] = &off_100086AB0;
  v112 = a3;
  v130[0] = a3;
  v25 = type metadata accessor for DeviceActivityDataLocations();
  v129[3] = v25;
  v129[4] = &protocol witness table for DeviceActivityDataLocations;
  v26 = sub_1000283C4(v129);
  (*(*(v25 - 8) + 32))(v26, a5, v25);
  *(a7 + 6) = 0;
  swift_unknownObjectWeakInit();
  v27 = *(*a7 + 200);
  v28 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithIdentifier:v29];

  *&a7[v27] = v30;
  *&a7[*(*a7 + 208)] = 0;
  v31 = *(*a7 + 216);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v127[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_100091698, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100020818(&qword_1000916A0, &qword_10006DF90);
  sub_1000495DC(&qword_1000916A8, &qword_1000916A0, &qword_10006DF90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v113 + 104))(v111, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v114);
  *&a7[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = &a7[*(*a7 + 240)];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &a7[*(*a7 + 248)];
  *v33 = 0xD000000000000013;
  *(v33 + 1) = 0x8000000100070060;
  v34 = &a7[*(*a7 + 256)];
  v105 = v34;
  *v34 = 0xD000000000000012;
  *(v34 + 1) = 0x8000000100070080;
  v35 = &a7[*(*a7 + 264)];
  *v35 = 0xD000000000000014;
  *(v35 + 1) = 0x80000001000700A0;
  v36 = &a7[*(*a7 + 272)];
  *v36 = 0xD00000000000001DLL;
  *(v36 + 1) = 0x80000001000700C0;
  *(a7 + 2) = v121;
  *(a7 + 6) = v115;
  swift_unknownObjectWeakAssign();
  sub_100020F40(v130, (a7 + 56));
  v37 = *(*a7 + 184);
  v38 = type metadata accessor for DeviceActivityDataStore();
  v113 = *(v38 - 8);
  v39 = *(v113 + 16);
  v40 = v125;
  v114 = v38;
  v39(&a7[v37], v125);
  sub_100020F40(v129, &a7[*(*a7 + 192)]);
  v41 = objc_allocWithZone(CKContainerID);
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 initWithContainerIdentifier:v42 environment:1];

  v44 = [objc_allocWithZone(CKContainerOptions) init];
  [v44 setUseZoneWidePCS:1];
  v45 = objc_allocWithZone(CKContainer);
  v111 = v43;
  v110 = v44;
  v46 = [v45 initWithContainerID:v43 options:v44];
  *(a7 + 3) = v46;
  v47 = v46;
  v48 = [v47 privateCloudDatabase];
  v49 = objc_allocWithZone(IDSInvitationManager);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 initWithServiceIdentifier:v50];

  sub_100020818(&unk_1000916B0, &qword_10006DF98);
  v52 = swift_allocObject();
  *(a7 + 4) = sub_10004764C(v47, v48, v107, v51, v52);
  v53 = [*(a7 + 3) privateCloudDatabase];
  v54 = v123;
  v55 = *(v123 + 104);
  v104 = v123 + 104;
  v107 = v55;
  v56 = v106;
  v57 = v117;
  v55(v106, enum case for DeviceActivityDataStore.SyncStateType.private(_:), v117);
  v58 = *v33;
  v59 = *(v33 + 1);

  v60 = v122;
  sub_10003E674(v56, v130, v58, v59, v40, v122);

  v61 = *(v54 + 8);
  v123 = v54 + 8;
  v103 = v61;
  v61(v56, v57);
  sub_1000297C4(v60, v116, &qword_100091678, &qword_10006DF88);
  v62 = v53;
  v99 = v118;
  v63 = v108;
  v118 = v62;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  v102 = "e.alloy.usagetracking";
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  CKSyncEngine.Configuration.useOpportunisticPushTopic.setter();
  v64 = v124;
  v101 = *(v124 + 16);
  v65 = v63;
  v66 = v120;
  v101(v119, v63, v120);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v67 = CKSyncEngine.init(_:)();
  v68 = *(v64 + 8);
  v124 = v64 + 8;
  v100 = v68;
  v68(v65, v66);
  *&a7[*(*a7 + 224)] = v67;
  v69 = [*(a7 + 3) sharedCloudDatabase];
  v70 = v117;
  v107(v56, enum case for DeviceActivityDataStore.SyncStateType.shared(_:), v117);
  v72 = *v105;
  v71 = v105[1];

  v73 = v109;
  sub_10003E674(v56, v130, v72, v71, v125, v109);
  v74 = v73;

  v103(v56, v70);
  sub_1000297C4(v73, v116, &qword_100091678, &qword_10006DF88);
  v75 = v99;
  v76 = v69;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  CKSyncEngine.Configuration.useOpportunisticPushTopic.setter();
  v77 = v120;
  v101(v119, v65, v120);
  swift_allocObject();
  v78 = CKSyncEngine.init(_:)();
  v100(v65, v77);
  *&a7[*(*a7 + 232)] = v78;
  if ([swift_getObjCClassFromMetadata() isAuthorized])
  {
    v79 = String._bridgeToObjectiveC()();
    v80 = [v112 BOOLForKey:v79];

    if ((v80 & 1) == 0)
    {
      v81 = v74;
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_100020D2C(v82, qword_100092EB0);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Performing one-time reset of local device identifier", v85, 2u);
      }

      v86 = static _SegmentInterval.allCases.getter();
      sub_1000379FC(v86);

      v87 = static _SegmentInterval.allCases.getter();
      DeviceActivityDataStore.deleteLocalData(deleteDeviceIdentifier:segmentIntervals:)(1, v87);
      if (v88)
      {

        swift_errorRetain();
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v127[0] = v92;
          *v91 = 136446210;
          v126 = v88;
          swift_errorRetain();
          sub_100020818(&qword_100091370, &qword_10006D390);
          v93 = String.init<A>(describing:)();
          v95 = sub_100033140(v93, v94, v127);

          *(v91 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v89, v90, "Failed to reset local device identifier: %{public}s", v91, 0xCu);
          sub_1000208BC(v92);
        }

        else
        {
        }

        v74 = v81;
      }

      else
      {

        v128 = &type metadata for Bool;
        LOBYTE(v127[0]) = 1;

        sub_100035A28(v127);

        sub_100028FF4(v127, &qword_100091360, &unk_10006D960);
      }
    }
  }

  else
  {
    v128 = &type metadata for Bool;
    LOBYTE(v127[0]) = 1;

    sub_100035A28(v127);

    sub_100028FF4(v127, &qword_100091360, &unk_10006D960);
  }

  v96 = [objc_opt_self() defaultCenter];
  v97 = qword_100090D58;

  if (v97 != -1)
  {
    swift_once();
  }

  [v96 addObserver:a7 selector:"retrySharingWithNotification:" name:qword_100092F10 object:0];

  (*(v113 + 8))(v125, v114);
  sub_100028FF4(v74, &qword_100091678, &qword_10006DF88);
  sub_100028FF4(v122, &qword_100091678, &qword_10006DF88);
  sub_1000208BC(v129);
  sub_1000208BC(v130);
  return a7;
}

uint64_t sub_100049490(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000494D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100034A80(&qword_100091678, &qword_10006DF88);
    sub_100049490(a2, 255, &type metadata accessor for CKSyncEngine.State.Serialization, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049578()
{
  sub_1000208BC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000495C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000495DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100034A80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100049638(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100020818(&qword_1000918B0, &qword_10006E0E8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100049490(&qword_1000918B8, 255, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100049490(&unk_1000918C0, 255, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100049960(uint64_t a1)
{
  v2 = sub_100020818(&unk_100091740, &unk_10006DFC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100020818(&qword_100091768, &qword_10006DFE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000297C4(v9, v5, &unk_100091740, &unk_10006DFC8);
      v11 = *&v5[v8];
      result = sub_1000336F8(v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      *(v7[7] + 8 * v14) = v11;
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_100049B84(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100049BC8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100049C3C()
{
  v1 = type metadata accessor for _DeviceActivityData.User();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceActivityDataSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(*v0 + 240));
  if (!v9[1])
  {
    v10 = *(*v0 + 184);
    v11 = type metadata accessor for DeviceActivityDataStore();
    v18[3] = v11;
    v18[4] = &protocol witness table for DeviceActivityDataStore;
    v12 = sub_1000283C4(v18);
    (*(*(v11 - 8) + 16))(v12, v0 + v10, v11);
    DeviceActivityDataSource.init(dataStoring:)();
    DeviceActivityDataSource.localUser.getter();
    (*(v6 + 8))(v8, v5);
    v13 = _DeviceActivityData.User.altDSID.getter();
    v15 = v14;
    (*(v2 + 8))(v4, v1);
    *v9 = v13;
    v9[1] = v15;
  }

  return *v9;
}

void *sub_100049EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_1000917D8, &qword_10006E030);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004A0A8()
{
  result = qword_1000917E8;
  if (!qword_1000917E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000917E8);
  }

  return result;
}

void sub_10004A0FC(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSyncEngine.Event.AccountChange.changeType.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = *v9;
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v12 = v11;
    v13 = 0;
    v14 = v11;
LABEL_9:
    sub_10003DCEC(v13, v14);

    return;
  }

  if (v10 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
  {
    (*(v7 + 96))(v9, v6);
    v15 = *v9;
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v12 = v15;
    v13 = v15;
    v14 = 0;
    goto LABEL_9;
  }

  if (v10 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
  {
    (*(v7 + 96))(v9, v6);
    v16 = *v9;
    v17 = *(v9 + 1);
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v18 = v16;
    v19 = v17;
    sub_10003DCEC(v16, v17);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100020D2C(v20, qword_100092EB0);
    (*(v3 + 16))(v5, a1, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 136446210;
      sub_100049490(&qword_100091808, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange, &protocol conformance descriptor for CKSyncEngine.Event.AccountChange);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v3 + 8))(v5, v2);
      v27 = sub_100033140(v24, v26, &v32);

      v28 = v30;
      *(v30 + 1) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received unknown account change: %{public}s", v28, 0xCu);
      sub_1000208BC(v31);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_10004A5C8(uint64_t a1)
{
  v1 = CKSyncEngine.database.getter();
  v2 = [v1 scope];

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = CKDatabaseScope.description.getter();
    v10 = sub_100033140(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync engine did fetch changes for %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }

  if (v2 == 2)
  {
    v11 = [objc_opt_self() defaultCenter];
    v12 = v11;
    if (qword_100090D40 != -1)
    {
      swift_once();
      v11 = v12;
    }

    [v11 postNotificationName:qword_100092F00 object:{0, v12, v14}];
  }
}

uint64_t sub_10004A7D8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.State.Serialization();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();
  v10 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[30] = v10;
  v2[31] = *(v10 - 8);
  v2[32] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[33] = v11;
  v2[34] = *(v11 - 8);
  v2[35] = swift_task_alloc();
  v12 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2[36] = v12;
  v2[37] = *(v12 - 8);
  v2[38] = swift_task_alloc();
  v13 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v2[39] = v13;
  v2[40] = *(v13 - 8);
  v2[41] = swift_task_alloc();
  v14 = type metadata accessor for CKSyncEngine.Event();
  v2[42] = v14;
  v2[43] = *(v14 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_10004AC98, 0, 0);
}

uint64_t sub_10004AC98()
{
  v209 = v0;
  v1 = v0;
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = *(v4 + 16);
  v5(v2, v0[7], v3);
  v6 = (*(v4 + 88))(v2, v3);
  v207 = v0;
  if (v6 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v7 = v0[45];
    v9 = v0[25];
    v8 = v1[26];
    v10 = v1[24];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v9 + 32))(v8, v7, v10);
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v12 = v1[25];
    v11 = v1[26];
    v14 = v1[23];
    v13 = v1[24];
    v15 = v1[21];
    v16 = v1[22];
    v17 = v1[8];
    v18 = qword_100092EF8;
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v19 = v18;
    v1 = v207;
    sub_100047D98(v17, v14, v19);
    (*(v16 + 8))(v14, v15);
    goto LABEL_5;
  }

  if (v6 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v20 = v0[45];
    v22 = v0[19];
    v21 = v1[20];
    v23 = v1[18];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v22 + 32))(v21, v20, v23);
    sub_10004A0FC(v21);
LABEL_8:
    (*(v22 + 8))(v21, v23);
    goto LABEL_49;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v24 = v0[45];
    v26 = v0[13];
    v25 = v1[14];
    v27 = v1[12];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v1[10];
      v33 = *(v30 + 16);
      v31 = v30 + 16;
      v32 = v33;
      v34 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v35 = *(v31 + 56);
      do
      {
        v32(v1[11], v34, v1[9]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v36 = v1[11];
        v37 = v1[9];
        v38 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        (*(v31 - 8))(v36, v37);
        v1 = v207;
        sub_10003D574(v38);

        v34 += v35;
        --v29;
      }

      while (v29);
    }

    v55 = v1[13];
    v54 = v1[14];
    v56 = v1[12];
LABEL_48:
    (*(v55 + 8))(v54, v56);
    goto LABEL_49;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v39 = v0[45];
    v41 = v0[34];
    v40 = v1[35];
    v42 = v1[33];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v41 + 32))(v40, v39, v42);
    v43 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = v1[31];
      v48 = *(v45 + 16);
      v46 = v45 + 16;
      v47 = v48;
      v49 = v43 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v50 = *(v46 + 56);
      do
      {
        v47(v1[32], v49, v1[30]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v51 = v1[32];
        v52 = v1[30];
        v53 = CKDatabase.RecordZoneChange.Modification.record.getter();
        (*(v46 - 8))(v51, v52);
        v1 = v207;
        sub_10003B8D8(v53);

        v49 += v50;
        --v44;
      }

      while (v44);
    }

    v66 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = v1[28];
      v70 = *(v68 + 16);
      v69 = v68 + 16;
      v196 = v70;
      v71 = v66 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
      v195 = *(v69 + 56);
      v72 = (v69 - 8);
      for (i = v67 - 1; ; --i)
      {
        v196(v1[29], v71, v1[27]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v73 = v1[29];
        v74 = v1[27];
        v75 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        CKDatabase.RecordZoneChange.Deletion.recordType.getter();
        (*v72)(v73, v74);
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_100020D2C(v76, qword_100092EB0);
        v77 = v75;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v208 = v81;
          *v80 = 136446210;
          v82 = v77;
          v83 = [v82 description];
          v194 = v71;
          v84 = v69;
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v72;
          v88 = v87;

          v1 = v207;
          v89 = sub_100033140(v85, v88, &v208);
          v72 = v86;

          *(v80 + 4) = v89;
          v69 = v84;
          v71 = v194;
          _os_log_impl(&_mh_execute_header, v78, v79, "Record was deleted: %{public}s", v80, 0xCu);
          sub_1000208BC(v81);
        }

        else
        {
        }

        if (!i)
        {
          break;
        }

        v71 += v195;
      }
    }

    v55 = v1[34];
    v54 = v1[35];
    v56 = v1[33];
    goto LABEL_48;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v57 = v0[45];
    v59 = v0[16];
    v58 = v1[17];
    v60 = v1[15];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v59 + 32))(v58, v57, v60);
    v61 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
    v62 = v61;
    if (v61 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
      if (!v63)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v63)
      {
        goto LABEL_74;
      }
    }

    if (v63 < 1)
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    for (j = 0; j != v63; ++j)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v65 = *(v62 + 8 * j + 32);
      }

      v1 = v65;
      if (qword_100090D38 != -1)
      {
        swift_once();
      }

      sub_10003CFAC(v1);
    }

LABEL_74:

    v117 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
    v62 = v117;
    if (v117 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
      if (v118)
      {
LABEL_76:
        if (v118 >= 1)
        {
          v119 = 0;
          v120 = v62 & 0xC000000000000001;
          v198 = v62 & 0xC000000000000001;
          do
          {
            if (v120)
            {
              v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v123 = *(v62 + 8 * v119 + 32);
            }

            if (qword_100090D38 != -1)
            {
              v136 = v123;
              swift_once();
              v123 = v136;
            }

            v124 = qword_100092EF8;
            v203 = v123;
            v125 = [v123 zoneName];
            v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v128 = v127;

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v129 = type metadata accessor for Logger();
            sub_100020D2C(v129, qword_100092EB0);

            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = v62;
              v133 = v118;
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v208 = v135;
              *v134 = 136446210;
              *(v134 + 4) = sub_100033140(v126, v128, &v208);
              _os_log_impl(&_mh_execute_header, v130, v131, "Deleted %{public}s", v134, 0xCu);
              sub_1000208BC(v135);

              v118 = v133;
              v62 = v132;
              v120 = v198;
            }

            ++v119;
            v121 = v124[10];
            v122 = v124[11];
            sub_100020908(v124 + 7, v121);
            *(v207 + 1) = 0u;
            *(v207 + 2) = 0u;
            (*(v122 + 40))(v207 + 2, v126, v128, v121, v122);

            sub_100028FF4((v207 + 2), &qword_100091360, &unk_10006D960);
          }

          while (v118 != v119);
          goto LABEL_89;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v118)
      {
        goto LABEL_76;
      }
    }

LABEL_89:

    if (qword_100090D38 != -1)
    {
      v137 = swift_once();
    }

    v1 = v207;
    v22 = v207[16];
    v21 = v207[17];
    v23 = v207[15];
LABEL_133:
    sub_10003EE80(v137);
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v92 = v0[45];
    v94 = v0[40];
    v93 = v1[41];
    v95 = v1[39];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v94 + 32))(v93, v92, v95);
    v96 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
    v62 = v96;
    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v97)
      {
        goto LABEL_95;
      }

LABEL_55:
      if (v97 < 1)
      {
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      for (k = 0; k != v97; ++k)
      {
        if ((v62 & 0xC000000000000001) != 0)
        {
          v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v99 = *(v62 + 8 * k + 32);
        }

        v100 = v99;
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        sub_10003A4CC(v100);
      }

LABEL_95:
      v1 = v207;

      v138 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
      v139 = *(v138 + 16);
      if (v139)
      {
        v140 = v207[37];
        v142 = *(v140 + 16);
        v141 = v140 + 16;
        v204 = v142;
        v143 = v138 + ((*(v141 + 64) + 32) & ~*(v141 + 64));
        v144 = *(v141 + 56);
        do
        {
          v204(v1[38], v143, v1[36]);
          if (qword_100090D38 != -1)
          {
            swift_once();
          }

          v145 = v1[38];
          v146 = v1[36];
          v147 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
          v148 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
          (*(v141 - 8))(v145, v146);
          v1 = v207;
          sub_10003ADE4(v147, v148);

          v143 += v144;
          --v139;
        }

        while (v139);
      }

      v149 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
      v150 = v149;
      if (v149 >> 62)
      {
        v151 = _CocoaArrayWrapper.endIndex.getter();
        if (v151)
        {
LABEL_102:
          v152 = v151 - 1;
          if (v151 >= 1)
          {
            v153 = 0;
            v154 = v150 & 0xC000000000000001;
            v155 = &OBJC_IVAR___USBudgetTracker__webDomainSubscription;
            v199 = v150 & 0xC000000000000001;
            if ((v150 & 0xC000000000000001) == 0)
            {
              goto LABEL_105;
            }

LABEL_104:
            for (m = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; m = *(v150 + 8 * v153 + 32))
            {
              v157 = m;
              if (*(v155 + 423) != -1)
              {
                swift_once();
              }

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v158 = type metadata accessor for Logger();
              sub_100020D2C(v158, qword_100092EB0);
              v159 = v157;
              v160 = Logger.logObject.getter();
              v161 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v160, v161))
              {
                v162 = swift_slowAlloc();
                v163 = swift_slowAlloc();
                v208 = v163;
                *v162 = 136446210;
                v159 = v159;
                v164 = [v159 description];
                v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v205 = v153;
                v166 = v152;
                v167 = v150;
                v169 = v168;

                v1 = v207;
                v170 = sub_100033140(v165, v169, &v208);
                v150 = v167;
                v152 = v166;
                v153 = v205;

                *(v162 + 4) = v170;
                v154 = v199;
                _os_log_impl(&_mh_execute_header, v160, v161, "Deleted record: %{public}s", v162, 0xCu);
                sub_1000208BC(v163);

                v155 = &OBJC_IVAR___USBudgetTracker__webDomainSubscription;
              }

              if (v152 == v153)
              {
                break;
              }

              ++v153;
              if (v154)
              {
                goto LABEL_104;
              }

LABEL_105:
              ;
            }

            goto LABEL_116;
          }

          goto LABEL_137;
        }
      }

      else
      {
        v151 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v151)
        {
          goto LABEL_102;
        }
      }

LABEL_116:

      v171 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
      v172 = v171;
      v173 = 0;
      v174 = v171 + 64;
      v175 = -1;
      v176 = -1 << *(v171 + 32);
      if (-v176 < 64)
      {
        v175 = ~(-1 << -v176);
      }

      v177 = v175 & *(v171 + 64);
      v178 = (63 - v176) >> 6;
      v197 = v171;
      while (v177)
      {
        v179 = v173;
LABEL_125:
        v180 = (v179 << 9) | (8 * __clz(__rbit64(v177)));
        v181 = *(*(v172 + 56) + v180);
        v182 = qword_100090D38;
        v206 = *(*(v172 + 48) + v180);
        v183 = v181;
        if (v182 != -1)
        {
          v193 = v183;
          swift_once();
          v183 = v193;
        }

        v184 = qword_100090D18;
        v185 = v183;
        if (v184 != -1)
        {
          swift_once();
        }

        v177 &= v177 - 1;
        v186 = type metadata accessor for Logger();
        sub_100020D2C(v186, qword_100092EB0);
        swift_errorRetain();
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v208 = v200;
          *v189 = 136446210;
          v207[6] = v185;
          swift_errorRetain();
          sub_100020818(&qword_100091370, &qword_10006D390);
          v190 = String.init<A>(describing:)();
          v192 = sub_100033140(v190, v191, &v208);

          *(v189 + 4) = v192;
          _os_log_impl(&_mh_execute_header, v187, v188, "Failed to delete record: %{public}s", v189, 0xCu);
          sub_1000208BC(v200);
          v1 = v207;

          v172 = v197;
        }

        v173 = v179;
      }

      while (1)
      {
        v179 = v173 + 1;
        if (__OFADD__(v173, 1))
        {
          __break(1u);
          goto LABEL_135;
        }

        if (v179 >= v178)
        {
          break;
        }

        v177 = *(v174 + 8 * v179);
        ++v173;
        if (v177)
        {
          goto LABEL_125;
        }
      }

      if (qword_100090D38 == -1)
      {
        goto LABEL_132;
      }

LABEL_135:
      v137 = swift_once();
LABEL_132:
      v22 = v1[40];
      v21 = v1[41];
      v23 = v1[39];
      goto LABEL_133;
    }

LABEL_94:
    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (!v97)
    {
      goto LABEL_95;
    }

    goto LABEL_55;
  }

  if (v6 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
  {
    if (qword_100090D38 == -1)
    {
LABEL_66:
      v11 = v1[45];
      v13 = v1[42];
      v12 = v1[43];
      sub_10004A5C8(v1[8]);
LABEL_5:
      (*(v12 + 8))(v11, v13);
      goto LABEL_49;
    }

LABEL_138:
    swift_once();
    goto LABEL_66;
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v101 = v0[44];
  v102 = v0[42];
  v103 = v0[7];
  v104 = type metadata accessor for Logger();
  sub_100020D2C(v104, qword_100092EB0);
  v5(v101, v103, v102);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  v107 = os_log_type_enabled(v105, v106);
  v109 = v0[43];
  v108 = v0[44];
  v110 = v0[42];
  if (v107)
  {
    v111 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v208 = v202;
    *v111 = 136446210;
    sub_100049490(&unk_1000917F0, 255, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v113;
    v115 = *(v109 + 8);
    v115(v108, v110);
    v116 = sub_100033140(v112, v114, &v208);

    *(v111 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v105, v106, "Received event: %{public}s", v111, 0xCu);
    sub_1000208BC(v202);
  }

  else
  {

    v115 = *(v109 + 8);
    v115(v108, v110);
  }

  v1 = v207;
  v115(v207[45], v207[42]);
LABEL_49:

  v90 = v1[1];

  return v90();
}

uint64_t sub_10004C17C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C1CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004C250(void *a1, char a2, id a3)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100020D2C(v4, qword_100092EB0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_100049B84(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v8 = String.init<A>(describing:)();
      v10 = sub_100033140(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to fetch participant: %{public}s", v6, 0xCu);
      sub_1000208BC(v7);
    }

    else
    {
    }
  }

  else
  {

    [a3 addParticipant:a1];
  }
}

void sub_10004C434(uint64_t a1, NSObject *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v8 = String.init<A>(describing:)();
    v10 = sub_100033140(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save share: %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v12 = 0x40AC200000000000;
  v13 = 0;
  [v11 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a2);
}

unint64_t sub_10004C660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_100091820, &qword_10006E060);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000297C4(v4, &v13, &qword_100091828, &qword_10006E068);
      v5 = v13;
      v6 = v14;
      result = sub_100033790(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100034094(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10004C790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_100091830, &qword_10006E070);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000297C4(v4, v13, &qword_100091838, &unk_10006E078);
      result = sub_10003380C(v13);
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
      result = sub_100034094(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10004C8CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C92C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

uint64_t sub_10004C96C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004C9B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_35:
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v28 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = [v9 userIdentity];
    v7 = [v11 lookupInfo];

    if (v7)
    {
      break;
    }

    v7 = v10;
LABEL_5:

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_34;
    }
  }

  v12 = [v7 emailAddress];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {

      return v6;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {

      goto LABEL_31;
    }
  }

  v19 = [v7 phoneNumber];
  if (!v19)
  {

    goto LABEL_5;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 != a2 || v23 != a3)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      return v6;
    }

    goto LABEL_6;
  }

LABEL_31:

  return v6;
}

uint64_t sub_10004CC04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = sub_10004C9B4(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  v41 = a2;
  v42 = a3;
  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

    v13 = *(v7 + 8 * v11 + 32);
LABEL_16:
    v14 = v13;
    v15 = [v13 userIdentity];
    v16 = [v15 lookupInfo];

    if (!v16)
    {
      v16 = v14;
LABEL_32:

      goto LABEL_33;
    }

    v17 = [v16 emailAddress];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == v41 && v21 == v42)
      {

        goto LABEL_9;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {

LABEL_29:
        goto LABEL_9;
      }
    }

    v24 = [v16 phoneNumber];
    if (!v24)
    {

      goto LABEL_32;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == v41 && v28 == v42)
    {

      goto LABEL_29;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_9;
    }

LABEL_33:
    if (v10 != v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v32)
        {
          goto LABEL_64;
        }

        if (v11 >= v32)
        {
          goto LABEL_65;
        }

        v33 = *(v7 + 32 + 8 * v11);
        v29 = *(v7 + 32 + 8 * v10);
        v30 = v33;
      }

      v34 = v30;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_100047D34(v7);
        v35 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v36 = v7 & 0xFFFFFFFFFFFFFF8;
      v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v34;

      if ((v7 & 0x8000000000000000) != 0 || v35)
      {
        v7 = sub_100047D34(v7);
        v36 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_56:
          __break(1u);
          return v10;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v11 >= *(v36 + 16))
      {
        goto LABEL_62;
      }

      v38 = v36 + 8 * v11;
      v39 = *(v38 + 32);
      *(v38 + 32) = v29;

      *a1 = v7;
    }

LABEL_8:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_61;
    }

LABEL_9:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10004CF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D0AC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100047C78(result, 1);

  return sub_10004CF9C(v5, v3, 0);
}

uint64_t sub_10004D184(void *a1, id a2)
{
  v140[1] = a2;
  v140[2] = a1;
  v2 = [a2 recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = off_100091188[0];
  v8 = sub_100021848(0, &unk_100091850, CKShare_ptr);
  v140[0] = v7();
  v122 = v8;
  v123 = v7;
  v9 = v7();
  v121 = v9;
  if (v9 >> 62)
  {
    goto LABEL_134;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = &off_10008E000;
  v129 = v6;
  if (!v11)
  {
    v130 = 0;
    goto LABEL_98;
  }

  v13 = 0;
  v130 = 0;
  v14 = v121 & 0xC000000000000001;
  v15 = v121 & 0xFFFFFFFFFFFFFF8;
  *&v10 = 136446210;
  v120 = v10;
  v124 = v11;
  do
  {
    while (1)
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_132;
        }

        v16 = *(v121 + 32 + 8 * v13);
      }

      v17 = v16;
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_131;
      }

      if ([v16 v12[427]] != 1)
      {
        break;
      }

      if (v13 == v11)
      {
        goto LABEL_98;
      }
    }

    v19 = [v17 userIdentity];
    v20 = [v19 lookupInfo];

    if (!v20)
    {
      goto LABEL_41;
    }

    v21 = [v20 emailAddress];
    if (!v21)
    {
      v21 = [v20 phoneNumber];
      if (!v21)
      {

LABEL_41:
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100020D2C(v47, qword_100092EB0);

        v48 = v17;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v51 = 136446466;
          sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
          v52 = String.init<A>(describing:)();
          v54 = v13;
          v55 = sub_100033140(v52, v53, &v139);

          *(v51 + 4) = v55;
          v13 = v54;
          *(v51 + 12) = 2082;
          *(v51 + 14) = sub_100033140(v127, v6, &v139);
          _os_log_impl(&_mh_execute_header, v49, v50, "Removing %{public}s from %{public}s", v51, 0x16u);
          swift_arrayDestroy();

          v11 = v124;
        }

        else
        {
        }

        [a1 removeParticipant:v48];
LABEL_47:
        v130 = 1;
LABEL_48:
        v14 = v121 & 0xC000000000000001;
        goto LABEL_93;
      }
    }

    v126 = v20;
    v22 = v21;
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v23;

    v24 = (v123)(v122);
    v25 = v24;
    if (v24 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v128 = v13;
      if (!v26)
      {
LABEL_86:

        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100020D2C(v85, qword_100092EB0);

        v6 = v129;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        v12 = &off_10008E000;
        v13 = v128;
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v88 = 136446466;
          v89 = sub_100033140(v132, v134, &v139);

          *(v88 + 4) = v89;
          *(v88 + 12) = 2082;
          *(v88 + 14) = sub_100033140(v127, v129, &v139);
          _os_log_impl(&_mh_execute_header, v86, v87, "Removing %{public}s from %{public}s", v88, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v11 = v124;
        v14 = v121 & 0xC000000000000001;
        [a1 removeParticipant:v17];

        goto LABEL_92;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v128 = v13;
      if (!v26)
      {
        goto LABEL_86;
      }
    }

    v6 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v28 = *(v25 + 8 * v6 + 32);
      }

      v29 = v28;
      v30 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v31 = [v28 userIdentity];
      v27 = [v31 lookupInfo];

      if (!v27)
      {
        v27 = v29;
        goto LABEL_18;
      }

      v137 = v29;
      v32 = v17;
      v33 = [v27 emailAddress];
      if (v33)
      {
        break;
      }

LABEL_30:
      v40 = [v27 phoneNumber];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v132 == v42 && v134 == v44)
        {

LABEL_52:

          goto LABEL_54;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_53;
        }

        v27 = v137;
      }

      else
      {
      }

      v17 = v32;
LABEL_18:

      ++v6;
      if (v30 == v26)
      {
        goto LABEL_86;
      }
    }

    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v132 != v35 || v134 != v37)
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        goto LABEL_52;
      }

      goto LABEL_30;
    }

LABEL_53:

LABEL_54:
    v56 = v32;

    v57 = sub_10004CC04(v140, v132, v134);

    v13 = v128;
    v6 = v129;
    v12 = &off_10008E000;
    if (v140[0] >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      if (v58 >= v57)
      {
        goto LABEL_56;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v58 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58 < v57)
    {
      goto LABEL_133;
    }

LABEL_56:
    sub_10004D0AC(v57, v58);
    v59 = [v56 acceptanceStatus];
    if (v59 < 2)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100020D2C(v65, qword_100092EB0);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v68 = 136446466;
        v69 = sub_100033140(v132, v134, &v139);

        *(v68 + 4) = v69;
        *(v68 + 12) = 2082;
        *(v68 + 14) = sub_100033140(v127, v129, &v139);
        _os_log_impl(&_mh_execute_header, v66, v67, "Re-inviting %{public}s to %{public}s", v68, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v11 = v124;
      [a1 removeParticipant:v56];
      [a1 addParticipant:v137];

      goto LABEL_47;
    }

    if (v59 == 2)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100020D2C(v70, qword_100092EB0);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v73 = 136446466;
        v74 = sub_100033140(v132, v134, &v139);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        *(v73 + 14) = sub_100033140(v127, v129, &v139);
        _os_log_impl(&_mh_execute_header, v71, v72, "%{public}s is already sharing %{public}s", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

LABEL_81:
      v84 = v126;
      goto LABEL_83;
    }

    if (v59 != 3)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100020D2C(v75, qword_100092EB0);
      v76 = v56;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v139 = v80;
        *v79 = v120;
        [v76 acceptanceStatus];
        type metadata accessor for ParticipantAcceptanceStatus(0);
        v81 = String.init<A>(describing:)();
        v83 = sub_100033140(v81, v82, &v139);
        v13 = v128;

        *(v79 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unknown acceptance status: %{public}s", v79, 0xCu);
        sub_1000208BC(v80);

        goto LABEL_81;
      }

      v84 = v137;
LABEL_83:

      v11 = v124;
      goto LABEL_48;
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100020D2C(v60, qword_100092EB0);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v63 = 136446466;
      v64 = sub_100033140(v132, v134, &v139);

      *(v63 + 4) = v64;
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_100033140(v127, v129, &v139);
      _os_log_impl(&_mh_execute_header, v61, v62, "Adding %{public}s to %{public}s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = v124;
    v14 = v121 & 0xC000000000000001;
    [a1 addParticipant:v137];

LABEL_92:
    v130 = 1;
LABEL_93:
    v15 = v121 & 0xFFFFFFFFFFFFFF8;
  }

  while (v13 != v11);
LABEL_98:

  v90 = v140[0];
  v91 = v140[0] & 0xFFFFFFFFFFFFFF8;
  if (v140[0] >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
    v93 = &off_10006C000;
    if (v92)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v92 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = &off_10006C000;
    if (v92)
    {
LABEL_100:
      v94 = v90 & 0xC000000000000001;
      v133 = *(v93 + 369);
      v135 = v90;
      v136 = v90 & 0xC000000000000001;
      v138 = v92;
      v95 = 0;
      if ((v90 & 0xC000000000000001) != 0)
      {
LABEL_126:
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_107;
      }

      while (1)
      {
        if (v95 >= *(v91 + 16))
        {
          goto LABEL_130;
        }

        v96 = *(v90 + 8 * v95 + 32);
LABEL_107:
        v97 = v96;
        v98 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_129;
        }

        if ([v96 v12[427]] == 1)
        {
        }

        else
        {
          v99 = [v97 userIdentity];
          v100 = [v99 lookupInfo];

          if (v100)
          {
            v101 = [v100 emailAddress];
            if (v101 || (v101 = [v100 phoneNumber]) != 0)
            {
              v110 = v101;
              v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v113 = type metadata accessor for Logger();
              sub_100020D2C(v113, qword_100092EB0);

              v114 = Logger.logObject.getter();
              v115 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v139 = swift_slowAlloc();
                *v116 = v133;
                v117 = v91;
                v118 = sub_100033140(v131, v112, &v139);

                *(v116 + 4) = v118;
                v91 = v117;
                v90 = v135;
                *(v116 + 12) = 2082;
                *(v116 + 14) = sub_100033140(v127, v129, &v139);
                _os_log_impl(&_mh_execute_header, v114, v115, "Adding %{public}s to %{public}s", v116, 0x16u);
                swift_arrayDestroy();
                v6 = v129;

                v12 = &off_10008E000;
              }

              else
              {
              }

              [a1 addParticipant:v97];
              v130 = 1;
              v94 = v136;
              v92 = v138;
              if (v98 == v138)
              {
                break;
              }

              v95 = v98;
              if (v136)
              {
                goto LABEL_126;
              }

              continue;
            }
          }

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          sub_100020D2C(v102, qword_100092EB0);

          v103 = v97;
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v106 = v133;
            *(v106 + 4) = sub_100033140(v127, v6, &v139);
            *(v106 + 12) = 2082;
            sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
            v107 = String.init<A>(describing:)();
            v109 = sub_100033140(v107, v108, &v139);
            v90 = v135;

            *(v106 + 14) = v109;
            v6 = v129;
            _os_log_impl(&_mh_execute_header, v104, v105, "Failed to share %{public}s with %{public}s", v106, 0x16u);
            swift_arrayDestroy();
            v12 = &off_10008E000;
          }

          else
          {
          }

          v94 = v136;
          v92 = v138;
        }

        ++v95;
        if (v98 == v92)
        {
          break;
        }

        if (v94)
        {
          goto LABEL_126;
        }
      }
    }
  }

  return v130 & 1;
}

void sub_10004E500(void *a1, char a2, NSObject *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    sub_100044F04(a1, a5, a3);
  }

  else
  {
    sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    sub_100021848(0, &unk_100091850, CKShare_ptr);
    v6 = a1;
    swift_dynamicCast();
    v7 = off_100091188[0]();
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v12 role] != 1)
        {
          dispatch_group_enter(a3);
          v15 = v17;
          v11 = v8 & 0xC000000000000001;
          sub_100043ED8(v13, v17, 0xD000000000000030, 0x8000000100070180, a3);
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    dispatch_group_leave(a3);
  }
}

uint64_t sub_10004E714()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004E754()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E794()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E7D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100029CC0;

  return sub_10003F7B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E91C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C9DC;

  return sub_100032E48(a1, v4);
}

uint64_t sub_10004E9D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029CC0;

  return sub_100032E48(a1, v4);
}

uint64_t sub_10004EA8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EAD4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EBD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DeviceActivityDataStore();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10004ED48(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100050690, v4);
}

uint64_t sub_10004EDDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = DeviceActivityDataStore.localZones.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v27 = v2;
    v28 = a1;
    v29 = a2;
    v32 = _swiftEmptyArrayStorage;
    v31 = v5;
    v14 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v15 = *(v6 + 80);
    v30 = v14;
    v16 = v14 + ((v15 + 32) & ~v15);
    v17 = *(v6 + 72);
    do
    {
      sub_1000506A4(v16, v11);
      sub_1000506A4(v11, v9);
      v18 = *v9;
      v19 = v9[1];
      v20 = *(v31 + 48);
      v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21._object = v22;
      v23._countAndFlagsBits = v18;
      v23._object = v19;
      CKRecordZoneID.init(zoneName:ownerName:)(v23, v21);
      sub_100028FF4(v11, qword_1000919E0, &unk_10006DFA0);
      v24 = type metadata accessor for _SegmentInterval();
      (*(*(v24 - 8) + 8))(v9 + v20, v24);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += v17;
      --v13;
    }

    while (v13);

    v25 = v32;
    a1 = v28;
    a2 = v29;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  sub_100051970(v25, a1, a2);
}

id sub_10004F1E0()
{
  result = [objc_allocWithZone(MOEffectiveSettingsStore) init];
  qword_1000918D0 = result;
  return result;
}

void sub_10004F214()
{
  Notification.object.getter();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      sub_10004F360(v4, v5);
      return;
    }
  }

  else
  {
    sub_100028FF4(v6, &qword_100091360, &unk_10006D960);
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100020D2C(v0, qword_100092EB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get retry urgency from notification", v3, 2u);
  }
}

uint64_t sub_10004F360(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_10004FF30();

    return sub_10004EDDC(0, 0);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100020D2C(v15, qword_100092EB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = v11;
      *v18 = 134349056;
      *(v18 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Scheduling a background activity to retry sharing in %{public}f seconds", v18, 0xCu);
      v11 = v23;
    }

    sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v20 + 24) = a1;
    aBlock[4] = sub_1000504CC;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004EB74;
    aBlock[3] = &unk_100087958;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000504F0();
    sub_100020818(&qword_100091700, qword_10006E1F0);
    sub_100050548();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10004F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10004F214();

  return (*(v4 + 8))(v6, v3);
}

char *sub_10004F808()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(&v0[*(*v0 + 152)]);

  sub_1000352D4(&v0[*(*v0 + 168)]);
  sub_1000208BC(&v0[*(*v0 + 176)]);
  v2 = *(*v0 + 184);
  v3 = type metadata accessor for DeviceActivityDataStore();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_1000208BC(&v0[*(*v0 + 192)]);

  swift_unknownObjectRelease();
  v4 = *(v1 + 96);
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[*(*v0 + 224)], v4);
  v5(&v0[*(*v0 + 232)], v4);

  return v0;
}

uint64_t sub_10004FAB8()
{
  sub_10004F808();

  return swift_deallocClassInstance();
}

uint64_t sub_10004FB30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_10004FB60(uint64_t a1, double a2)
{
  v4 = *a1;
  v5 = *a1;
  v6 = (a1 + *(*a1 + 176));
  v7 = v6[3];
  v8 = v6[4];
  sub_100020908(v6, v7);
  v14 = &type metadata for Double;
  *v13 = a2;
  (*(v8 + 40))(v13, *(a1 + *(*a1 + 264)), *(a1 + *(*a1 + 264) + 8), v7, v8);
  sub_100028FF4(v13, &qword_100091360, &unk_10006D960);
  v9 = *(a1 + *(*a1 + 200));
  [v9 setInterval:a2];
  [v9 setQualityOfService:25];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v4[10];
  *(v11 + 24) = v4[11];
  *(v11 + 32) = *(v5 + 6);
  *(v11 + 48) = v4[14];
  *(v11 + 56) = *(v5 + 15);
  *(v11 + 72) = v4[17];
  *(v11 + 80) = v10;
  v15 = sub_10005061C;
  v16 = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10004ED48;
  v14 = &unk_1000879D0;
  v12 = _Block_copy(v13);

  [v9 scheduleWithBlock:v12];
  _Block_release(v12);
}

uint64_t sub_10004FDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100020D2C(v5, qword_100092EB0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Running background activity to retry sharing", v8, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10004FF30();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004EDDC(a1, a2);
  }

  return result;
}

uint64_t sub_10004FF30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092EB0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating background sharing activity", v13, 2u);
  }

  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100050714;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087A20;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100050264(uint64_t a1)
{
  [*(a1 + *(*a1 + 200)) invalidate];
  v2 = (a1 + *(*a1 + 176));
  v3 = v2[3];
  v4 = v2[4];
  sub_100020908(v2, v3);
  memset(v6, 0, sizeof(v6));
  (*(v4 + 40))(v6, *(a1 + *(*a1 + 264)), *(a1 + *(*a1 + 264) + 8), v3, v4);
  return sub_100028FF4(v6, &qword_100091360, &unk_10006D960);
}

void sub_10005033C(uint64_t a1, unint64_t a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EB0);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100033140(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Finished sharing %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }
}

uint64_t sub_100050494()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000504D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000504F0()
{
  result = qword_1000916F8;
  if (!qword_1000916F8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000916F8);
  }

  return result;
}

unint64_t sub_100050548()
{
  result = qword_100091708;
  if (!qword_100091708)
  {
    sub_100034A80(&qword_100091700, qword_10006E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091708);
  }

  return result;
}

uint64_t sub_1000505AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000505E4()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100050658()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000506A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005071C(void *a1, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v121 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v114 = *(v116 - 8);
  v7 = __chkstk_darwin(v116);
  v113 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = (&v100 - v10);
  __chkstk_darwin(v9);
  v112 = &v100 - v12;
  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D18 == -1)
    {
LABEL_5:
      v20 = type metadata accessor for Logger();
      sub_100020D2C(v20, qword_100092EB0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not uploading local data because Device Activity is not authorized.", v23, 2u);
      }

      v24 = *(a2._rawValue + 2);

      return v24(a2._rawValue, 0);
    }

LABEL_61:
    swift_once();
    goto LABEL_5;
  }

  v120 = v4;
  v13 = *(a1 + *(*a1 + 216));
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100049BDC;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000514E0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003EE58;
  aBlock[3] = &unk_100087A70;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = *(*a1 + 184);
  v17 = 0;
  v18 = DeviceActivityDataStore.localZones.getter();
  v118 = v6;
  v101._rawValue = a2._rawValue;
  v110 = *(v18 + 16);
  v111 = a1;
  if (v110)
  {
    v26 = 0;
    v108 = *(v116 + 48);
    v109 = v16;
    v105 = *(a1 + *(*a1 + 224));
    v107 = (v18 + ((*(v114 + 80) + 32) & ~*(v114 + 80)));
    rawValue = &_swiftEmptyDictionarySingleton;
    v104 = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v19 = 134349314;
    v102 = v19;
    v103 = xmmword_10006D8A0;
    v117 = v11;
    v106 = v18;
    while (v26 < *(v18 + 16))
    {
      v115._rawValue = rawValue;
      v28 = *(v114 + 72);
      isa = v26;
      v29 = v112;
      sub_1000506A4(v107 + v28 * v26, v112);
      v30 = *(v29 + 1);
      v31 = v116;
      v32 = *(v116 + 48);
      *v11 = *v29;
      v11[1] = v30;
      v33 = type metadata accessor for _SegmentInterval();
      v34 = *(v33 - 8);
      (*(v34 + 32))(v11 + v32, &v29[v108], v33);
      v35 = v11;
      v36 = v113;
      sub_1000506A4(v35, v113);
      v38 = *v36;
      v37 = v36[1];
      (*(v34 + 8))(v36 + *(v31 + 48), v33);
      a2._rawValue = a1[10];
      v39 = a1[11];
      sub_100020908(a1 + 7, a2._rawValue);
      if (((*(v39 + 8))(v38, v37, a2, v39) & 1) == 0)
      {
        v40 = objc_allocWithZone(CKRecordZone);
        v41 = String._bridgeToObjectiveC()();
        v42 = [v40 initWithZoneName:v41];

        [v42 setCapabilities:8];
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v43 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v44 = *(v43 - 8);
        v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        a2._rawValue = swift_allocObject();
        *(a2._rawValue + 1) = v103;
        *(a2._rawValue + v45) = v42;
        v46 = v43;
        a1 = v111;
        (*(v44 + 104))(a2._rawValue + v45, v104, v46);
        v47 = v42;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(a2);
      }

      v11 = v117;
      v48 = DeviceActivityDataStore.localRecordNames(forZoneName:segmentInterval:)();
      rawValue = v115._rawValue;
      if (*(v48 + 16))
      {
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100020D2C(v49, qword_100092EB0);

        v50 = Logger.logObject.getter();
        a2._rawValue = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v50, a2._rawValue))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock[0] = v52;
          *v51 = v102;
          *(v51 + 4) = *(v48 + 16);

          *(v51 + 12) = 2082;
          *(v51 + 14) = sub_100033140(v38, v37, aBlock);
          _os_log_impl(&_mh_execute_header, v50, a2._rawValue, "Uploading %{public}ld records for %{public}s.", v51, 0x16u);
          sub_1000208BC(v52);
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = rawValue;
        v55 = sub_100033790(v38, v37);
        v56 = rawValue[2];
        v57 = (v54._rawValue & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_58;
        }

        a2._rawValue = v54._rawValue;
        if (rawValue[3] >= v58)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100047370();
          }
        }

        else
        {
          sub_100046E24(v58, isUniquelyReferenced_nonNull_native);
          v59 = sub_100033790(v38, v37);
          if ((a2._rawValue & 1) != (v60 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v55 = v59;
        }

        v11 = v117;
        rawValue = aBlock[0];
        if (a2._rawValue)
        {
          v61 = aBlock[0];
          *(*(aBlock[0] + 56) + 8 * v55) = v48;

          rawValue = v61;
        }

        else
        {
          *(aBlock[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
          v62 = (rawValue[6] + 16 * v55);
          *v62 = v38;
          v62[1] = v37;
          *(rawValue[7] + 8 * v55) = v48;
          v63 = rawValue[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_59;
          }

          rawValue[2] = v65;
        }

        sub_100028FF4(v11, qword_1000919E0, &unk_10006DFA0);
        a1 = v111;
      }

      else
      {
        sub_100028FF4(v11, qword_1000919E0, &unk_10006DFA0);
      }

      v18 = v106;
      v26 = (isa + 1);
      if (v110 == isa + 1)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_57;
  }

  rawValue = &_swiftEmptyDictionarySingleton;
LABEL_35:

  a2._rawValue = rawValue;
  CKSyncEngine.state.getter();
  v66 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.state.getter();
  CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v66);

  if (rawValue[2])
  {
    v106 = CKSyncEngine.state.getter();
    v67 = rawValue + 8;
    v68 = 1 << *(a2._rawValue + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(a2._rawValue + 8);
    v71 = (v68 + 63) >> 6;
    v107 = CKCurrentUserDefaultName;
    LODWORD(v117) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v72 = (v121 + 104);
    v116 = v121 + 32;

    v73 = 0;
    v74 = _swiftEmptyArrayStorage;
    v108 = v71;
    v109 = a2._rawValue + 64;
    v115._rawValue = a2._rawValue;
    while (v70)
    {
LABEL_45:
      v113 = v70;
      v114 = v17;
      v76 = __clz(__rbit64(v70)) | (v73 << 6);
      v77 = (*(a2._rawValue + 6) + 16 * v76);
      v78 = *v77;
      v79 = v77[1];
      v80 = *(*(a2._rawValue + 7) + 8 * v76);
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      swift_bridgeObjectRetain_n();

      v84._countAndFlagsBits = v78;
      v110 = v79;
      v84._object = v79;
      v85._countAndFlagsBits = v81;
      v85._object = v83;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v84, v85).super.isa;
      v86 = *(v80 + 16);
      v112 = v80;
      if (v86)
      {
        sub_100021848(0, &qword_100091770, CKRecordID_ptr);
        v87 = (v80 + 40);
        v88 = v118;
        v89 = v120;
        do
        {
          v90 = *(v87 - 1);
          v91 = *v87;

          v92 = isa;
          v93._countAndFlagsBits = v90;
          v93._object = v91;
          v94 = CKRecordID.init(recordName:zoneID:)(v93, v92).super.isa;
          *v88 = v94;
          (*v72)(v88, v117, v89);
          v95 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_1000466EC(0, v74[2] + 1, 1, v74);
          }

          v97 = v74[2];
          v96 = v74[3];
          if (v97 >= v96 >> 1)
          {
            v74 = sub_1000466EC((v96 > 1), v97 + 1, 1, v74);
          }

          v74[2] = v97 + 1;
          v89 = v120;
          v98 = v74 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v97;
          v88 = v118;
          (*(v121 + 32))(v98, v118, v120);
          v87 += 2;
          --v86;
        }

        while (v86);
      }

      v70 = (v113 - 1) & v113;

      v17 = v114;
      a2._rawValue = v115._rawValue;
      v71 = v108;
      v67 = v109;
    }

    while (1)
    {
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v75 >= v71)
      {

        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v74);

        goto LABEL_55;
      }

      v70 = v67[v75];
      ++v73;
      if (v70)
      {
        v73 = v75;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_10003EE80(v99);
LABEL_55:
  (*(v101._rawValue + 2))(v101, 0);
}

uint64_t initializeBufferWithCopyOfBuffer for RetryUrgency(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetryUrgency(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RetryUrgency(uint64_t result, int a2, int a3)
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

uint64_t sub_100051550(uint64_t a1)
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

uint64_t sub_100051570(uint64_t result, int a2)
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

uint64_t sub_1000515B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000516A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100020818(&qword_100091830, &qword_10006E070);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100020860(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100034094(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100034094(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100034094(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100034094(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100051970(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = a2;
  v5 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = dispatch_group_create();
  v13 = *(*v3 + 216);
  v60 = v3;
  v14 = *(v3 + v13 + 24);
  v15 = *(v3 + v13 + 32);
  sub_100020908((v3 + v13), v14);
  v16 = (*(v15 + 8))(v14, v15);
  v52 = v7;
  v53 = v6;
  v50 = v9;
  v51 = v10;
  if (!v16 || (v17 = *(v16 + 16), result = , !v17))
  {
    if (a1 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    v59 = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
    v58 = *(v5 + 88);
    result = swift_getAssociatedConformanceWitness();
    if (v23 >= 1)
    {
      v24 = 0;
      v56 = *(result + 56);
      v57 = result;
      v55 = CKRecordNameZoneWideShare;
      v54 = *(*v60 + 208);
      v25 = a1 & 0xC000000000000001;
      v26 = a1;
      do
      {
        if (v25)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(a1 + 8 * v24 + 32);
        }

        v28 = v27;
        ++v24;
        dispatch_group_enter(v12);
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
        v32 = v28;
        v33._countAndFlagsBits = v29;
        v33._object = v31;
        isa = CKRecordID.init(recordName:zoneID:)(v33, v32).super.isa;
        v35 = swift_allocObject();
        *(v35 + 16) = v32;
        *(v35 + 24) = v12;
        v36 = v32;
        v37 = v12;
        v56(isa, sub_10004EACC, v35, v58, v57);

        a1 = v26;
      }

      while (v23 != v24);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_22:
    v38 = swift_allocObject();
    v39 = v46;
    v40 = v47;
    *(v38 + 16) = v46;
    *(v38 + 24) = v40;
    aBlock[4] = sub_10004EB14;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004EB74;
    aBlock[3] = &unk_100087F28;
    v41 = _Block_copy(aBlock);
    sub_100029DB4(v39, v40);
    v42 = v48;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_1000504F0();
    sub_100020818(&qword_100091700, qword_10006E1F0);
    sub_100050548();
    v43 = v50;
    v44 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v41);

    (*(v52 + 8))(v43, v44);
    (*(v49 + 8))(v42, v51);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      dispatch_group_enter(v12);
      sub_100051EF0(v22, v12);
    }

    while (v19 != v20);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_100051EF0(void *a1, NSObject *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 120);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - v8;
  v11 = (v2 + *(v10 + 216));
  v12 = v11[3];
  v13 = v11[4];
  sub_100020908(v11, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    if (*(v14 + 16))
    {
      v15 = v14;
      (*(*(v5 + 176) + 48))(a1, v6, *(v5 + 176));
      sub_1000532A8(v15, v9, a2);

      (*(v7 + 8))(v9, v6);
      return;
    }
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100020D2C(v16, qword_100092EB0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "No Apple IDs to share with", v19, 2u);
  }

  dispatch_group_leave(a2);
}

id sub_10005218C()
{
  sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x6163696669726556;
  v2._object = 0xEC0000006E6F6974;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  v4 = [objc_allocWithZone(CKRecordZone) initWithZoneID:isa];

  result = [v4 setCapabilities:8];
  qword_100092F08 = v4;
  return result;
}

NSString sub_100052240()
{
  result = String._bridgeToObjectiveC()();
  qword_100092F10 = result;
  return result;
}

uint64_t sub_10005227C(uint64_t a1, void *a2)
{
  v3 = v2;
  v112 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v108 = *(v9 - 8);
  __chkstk_darwin(v9);
  v107 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v92 - v15;
  v17 = type metadata accessor for URL();
  v110 = *(v17 - 8);
  v111 = v17;
  __chkstk_darwin(v17);
  v109 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 context];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v102 = v8;
    v103 = v9;
    v104 = v6;
    v105 = v5;
    v22 = [v20 schemaIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == 0xD000000000000030 && 0x8000000100070180 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v106 = a2;

      v26 = [v21 dictionary];
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v27 + 16))
      {
        v28 = sub_100033790(0x6974617469766E69, 0xEE00617461446E6FLL);
        if (v29)
        {
          sub_100020860(*(v27 + 56) + 32 * v28, aBlock);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_28:
            v48 = v106;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            sub_100020D2C(v49, qword_100092EB0);
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&_mh_execute_header, v50, v51, "Failed to extract share metadata from invitation. Declining the invitation.", v52, 2u);
            }

            sub_100058508(v48);
            return swift_unknownObjectRelease();
          }

          v100 = aBlock[6];
          v101 = aBlock[7];
          v30 = [v21 dictionary];
          v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v31 + 16))
          {
            v32 = sub_100033790(0xD000000000000018, 0x8000000100070200);
            if (v33)
            {
              sub_100020860(*(v31 + 56) + 32 * v32, aBlock);

              if (swift_dynamicCast())
              {
                URL.init(string:)();

                v35 = v110;
                v34 = v111;
                v36 = *(v110 + 48);
                if (v36(v16, 1, v111) != 1)
                {
                  v59 = v109;
                  (*(v35 + 32))(v109, v16, v34);
                  v97 = *(v35 + 16);
                  v96 = v35 + 16;
                  v97(v14, v59, v34);
                  (*(v35 + 56))(v14, 0, 1, v34);
                  sub_100020CD8(v100, v101);
                  v60.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  v61 = v36(v14, 1, v34);
                  v99 = v19;
                  if (v61 == 1)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    URL._bridgeToObjectiveC()(&v114);
                    v62 = v63;
                    (*(v35 + 8))(v14, v34);
                  }

                  v93 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v60.super.isa shareURL:v62];

                  sub_100020D78(v100, v101);
                  v95 = v112[16];
                  v98 = swift_allocBox();
                  v94 = v64;
                  sub_100020818(&qword_100091730, &qword_10006DFB8);
                  v65 = (*(v35 + 80) + 32) & ~*(v35 + 80);
                  v66 = swift_allocObject();
                  v92 = xmmword_10006D8A0;
                  *(v66 + 16) = xmmword_10006D8A0;
                  v67 = v109;
                  v68 = v97;
                  v97((v66 + v65), v109, v34);
                  sub_100020818(&qword_100091738, &qword_10006DFC0);
                  v69 = v34;
                  v70 = (sub_100020818(&unk_100091740, &unk_10006DFC8) - 8);
                  v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
                  v72 = swift_allocObject();
                  *(v72 + 16) = v92;
                  v73 = v72 + v71;
                  v74 = v70[14];
                  v75 = v67;
                  v68(v73, v67, v69);
                  v76 = v93;
                  *(v73 + v74) = v93;
                  v77 = v76;
                  v78 = sub_100049960(v72);
                  swift_setDeallocating();
                  sub_100028FF4(v73, &unk_100091740, &unk_10006DFC8);
                  swift_deallocClassInstance();
                  v79 = v112[23];
                  v80 = v95;
                  (*(v79 + 16))(v66, v78, v95, v79);
                  (*(*(v79 + 8) + 16))(25, v80);
                  v81 = swift_allocObject();
                  v82 = v106;
                  *(v81 + 16) = v3;
                  *(v81 + 24) = v82;
                  v83 = *(v79 + 32);

                  v84 = v82;
                  v83(sub_100059AE4, v81, v80, v79);
                  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
                  v85 = static OS_dispatch_queue.main.getter();
                  v86 = swift_allocObject();
                  v87 = v98;
                  *(v86 + 16) = v3;
                  *(v86 + 24) = v87;
                  aBlock[4] = sub_100059AF4;
                  aBlock[5] = v86;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10004EB74;
                  aBlock[3] = &unk_100087D20;
                  v88 = _Block_copy(aBlock);

                  v89 = v107;
                  static DispatchQoS.unspecified.getter();
                  aBlock[0] = _swiftEmptyArrayStorage;
                  sub_1000504F0();
                  sub_100020818(&qword_100091700, qword_10006E1F0);
                  sub_100050548();
                  v90 = v102;
                  v91 = v105;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v88);

                  swift_unknownObjectRelease();
                  sub_100020D78(v100, v101);
                  (*(v104 + 8))(v90, v91);
                  (*(v108 + 8))(v89, v103);
                  (*(v110 + 8))(v75, v111);
                }

                sub_100020D78(v100, v101);
                sub_100028FF4(v16, &qword_100091720, &qword_10006DFB0);
              }

              else
              {
                sub_100020D78(v100, v101);
              }

              goto LABEL_28;
            }
          }

          sub_100020D78(v100, v101);
        }
      }

      goto LABEL_28;
    }

    if (v23 == 0xD000000000000037 && 0x80000001000701C0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D50 != -1)
      {
        swift_once();
      }

      v42 = qword_100092F08;
      v43 = swift_allocObject();
      *(v43 + 16) = v3;
      *(v43 + 24) = a2;
      v44 = v112[11];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v46 = *(AssociatedConformanceWitness + 48);

      v47 = a2;
      v46(v42, sub_100059ADC, v43, v44, AssociatedConformanceWitness);
    }

    else
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100020D2C(v53, qword_100092EB0);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 136446210;
        v58 = sub_100033140(v23, v25, aBlock);

        *(v56 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v54, v55, "Received invitation using unknown schema: %{public}s", v56, 0xCu);
        sub_1000208BC(v57);
      }

      else
      {
      }

      sub_100058508(a2);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100020D2C(v37, qword_100092EB0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to extract context from invitation. Declining the invitation.", v40, 2u);
    }

    return sub_100058508(a2);
  }
}

uint64_t *sub_1000530FC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 200));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1000208BC((v0 + *(*v0 + 216)));
  sub_1000208BC((v0 + *(*v0 + 224)));

  return v0;
}

uint64_t sub_100053238()
{
  sub_1000530FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000532A8(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = a3;
  v83 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v78 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  v9 = __chkstk_darwin(v79);
  v75 = v3;
  v76 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v5[15];
  v11 = *(v73 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v84 = &v58 - v13;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100020D2C(v14, qword_100092EB0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = Set.description.getter();
    v21 = sub_100033140(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching share participants with Apple IDs: %{public}s", v17, 0xCu);
    sub_1000208BC(v18);
  }

  v22 = sub_10003F534(a1);
  v23 = v6[12];
  v72 = swift_allocBox();
  v24 = v6[19];
  v25 = *(v24 + 32);
  v82 = v26;
  v25(v22, v23, v24);
  (*(*(v24 + 8) + 16))(25, v23);
  v70 = *(v11 + 16);
  v27 = v73;
  v70(v84, v83, v73);
  v28 = *(v11 + 80);
  v71 = (v28 + 144) & ~v28;
  v29 = v12 + v71;
  v60 = (v28 + 136) & ~v28;
  v30 = swift_allocObject();
  v31 = v6[10];
  *(v30 + 2) = v31;
  v32 = v6[11];
  *(v30 + 3) = v32;
  *(v30 + 4) = v23;
  v33 = v6[13];
  *(v30 + 5) = v33;
  v69 = v6[14];
  *(v30 + 6) = v69;
  *(v30 + 7) = v27;
  v34 = v6[16];
  *(v30 + 8) = v34;
  v35 = v6[17];
  *(v30 + 9) = v35;
  v36 = v6[18];
  *(v30 + 10) = v36;
  *(v30 + 11) = v24;
  v66 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v37 = v31;
  *(&v37 + 1) = v32;
  v68 = v37;
  *&v37 = v23;
  *(&v37 + 1) = v33;
  v65 = v37;
  *&v37 = v34;
  *(&v37 + 1) = v35;
  v67 = v37;
  *&v37 = v36;
  *(&v37 + 1) = v24;
  v64 = v37;
  v63 = v6[20];
  *(v30 + 12) = v63;
  v62 = v6[21];
  *(v30 + 13) = v62;
  v38 = v6[22];
  *(v30 + 14) = v38;
  v59 = v6[23];
  *(v30 + 15) = v59;
  v61 = v6[24];
  *(v30 + 16) = v61;
  v39 = *(v11 + 32);
  v40 = v84;
  v39(&v30[v60], v84, v27);
  (*(v24 + 48))(sub_100059B7C, v30, v23, v24);
  v70(v40, v83, v27);
  v41 = v66;
  v42 = swift_allocObject();
  v43 = v65;
  *(v42 + 16) = v68;
  *(v42 + 32) = v43;
  *(v42 + 48) = v69;
  *(v42 + 56) = v27;
  v44 = v64;
  *(v42 + 64) = v67;
  *(v42 + 80) = v44;
  *&v45 = v63;
  *(&v45 + 1) = v62;
  *&v44 = v38;
  *(&v44 + 1) = v59;
  *(v42 + 96) = v45;
  *(v42 + 112) = v44;
  v46 = v75;
  *(v42 + 128) = v61;
  *(v42 + 136) = v46;
  v39((v42 + v71), v84, v27);
  v47 = v74;
  *(v42 + v41) = v74;
  v48 = *(v24 + 72);

  v49 = v47;
  v48(sub_100059CD0, v42, v23, v24);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v50 = static OS_dispatch_queue.main.getter();
  v51 = swift_allocObject();
  v52 = v72;
  *(v51 + 16) = v46;
  *(v51 + 24) = v52;
  aBlock[4] = sub_100059D40;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087DC0;
  v53 = _Block_copy(aBlock);

  v54 = v76;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v55 = v78;
  v56 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);

  (*(v80 + 8))(v55, v56);
  (*(v77 + 8))(v54, v79);
}

void sub_100053A80(int a1, uint64_t a2, id a3, NSObject *a4)
{
  v6 = [a3 zoneName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100020D2C(v18, qword_100092EB0);

    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      v22 = sub_100033140(v7, v9, &v23);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v19, "Successfully stopped sharing %{public}s)", v20, 0xCu);
      sub_1000208BC(v21);
    }

    else
    {
    }

    goto LABEL_12;
  }

  swift_errorRetain();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092EB0);
  swift_errorRetain();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = sub_100033140(v7, v9, &v23);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2082;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v15 = String.init<A>(describing:)();
    v17 = sub_100033140(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to stop sharing %{public}s: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    goto LABEL_13;
  }

LABEL_13:
  dispatch_group_leave(a4);
}

void sub_100053DD0(void (*a1)(uint64_t))
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092EB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished resetting sharing permissions.", v5, 2u);
  }

  if (a1)
  {
    a1(1);
  }
}

void sub_100053ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v20 = &v34 - v19;
  sub_100034A80(&qword_100091370, &qword_10006D390);
  v21 = type metadata accessor for Result();
  __chkstk_darwin(v21);
  v23 = (&v34 - v22);
  (*(v24 + 16))(&v34 - v22, a2, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v23;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100020D2C(v26, qword_100092EB0);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v25;
      v35 = v30;
      *v29 = 136446210;
      swift_errorRetain();
      v31 = String.init<A>(describing:)();
      v33 = sub_100033140(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch participant: %{public}s", v29, 0xCu);
      sub_1000208BC(v30);
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 32))(v20, v23, AssociatedTypeWitness);
    (*(a16 + 56))(v20, a9, a16);
    (*(v18 + 8))(v20, AssociatedTypeWitness);
  }
}

void sub_100054210(uint64_t a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch participants: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v16 = 0x40AC200000000000;
    v17 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(a5);
  }

  else
  {
    sub_100054458(a4, a5);
  }
}

uint64_t sub_100054458(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v45 = *v2;
  v5 = v45;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = __chkstk_darwin(v7);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v5[15];
  v40 = *(v10 - 8);
  v11 = v40;
  v44 = *(v40 + 64);
  __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = v5[13];
  v46 = swift_allocBox();
  v15 = v5[20];
  v16 = *(v15 + 32);
  v43 = v17;
  v16(v14, v15);
  v18 = *(*(v15 + 8) + 16);
  v42 = v14;
  v18(25, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100059A68(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v39 = static Array._adoptStorage(_:count:)();
  v20 = *(v11 + 16);
  v20(v13, a1, v10);
  v21 = v13;
  v41 = v13;
  swift_dynamicCast();
  type metadata accessor for Array();
  v22 = v42;
  (*(v15 + 72))(v39, v42, v15);
  v20(v21, a1, v10);
  v23 = v40;
  v24 = (*(v40 + 80) + 152) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = *(v45 + 80);
  *(v25 + 32) = v5[12];
  *(v25 + 40) = v22;
  *(v25 + 48) = v5[14];
  *(v25 + 56) = v10;
  *(v25 + 64) = v5[16];
  *(v25 + 72) = *(v26 + 136);
  *(v25 + 88) = v5[19];
  *(v25 + 96) = v15;
  *(v25 + 104) = v5[21];
  *(v25 + 112) = *(v26 + 176);
  v27 = v5[24];
  v28 = v47;
  *(v25 + 128) = v27;
  *(v25 + 136) = v28;
  *(v25 + 144) = v3;
  (*(v23 + 32))(v25 + v24, v41, v10);
  v29 = *(v15 + 48);
  v30 = v28;

  v29(sub_100059E0C, v25, v22, v15);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  v32 = swift_allocObject();
  v33 = v46;
  *(v32 + 16) = v3;
  *(v32 + 24) = v33;
  aBlock[4] = sub_100059E48;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087E38;
  v34 = _Block_copy(aBlock);

  v35 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v37 = v49;
  v36 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v53 + 8))(v37, v36);
  (*(v51 + 8))(v35, v52);
}

uint64_t sub_100054ABC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = swift_projectBox();
  swift_beginAccess();
  v7[3] = v3;
  v7[4] = *(v2[19] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  (*(v2[18] + 72))(v7, v2[10]);
  return sub_1000208BC(v7);
}

uint64_t sub_100054BE0(uint64_t a1, void (**a2)(char *, uint64_t *, uint64_t), NSObject *a3, void *a4, void (*a5)(char *, char *, uint64_t))
{
  v63 = a3;
  v68 = a2;
  v6 = *a4;
  v7 = *a4;
  v66 = a5;
  AssociatedConformanceWitness = v7;
  v8 = v6[15];
  v59 = type metadata accessor for Optional();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v47 - v9;
  v10 = v6[19];
  v64 = v6[12];
  v65 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(AssociatedTypeWitness);
  v61 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v14;
  v15 = __chkstk_darwin(v13);
  v60 = &v47 - v16;
  v62 = v8;
  v52 = *(v8 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v47 - v24;
  sub_100034A80(&qword_100091370, &qword_10006D390);
  v26 = type metadata accessor for Result();
  __chkstk_darwin(v26);
  v28 = (&v47 - v27);
  (*(v29 + 16))(&v47 - v27, v68, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100056924(*v28, v66, v63);
  }

  v57 = a4;
  (*(v20 + 32))(v25, v28, v19);
  v49 = v20;
  v31 = *(v20 + 16);
  v48 = v25;
  v31(v23, v25, v19);
  v50 = v19;
  v32 = v62;
  swift_dynamicCast();
  v33 = (*(*(AssociatedConformanceWitness + 176) + 32))(v32);
  v34 = Array.endIndex.getter();
  v36 = v60;
  v35 = v61;
  if (v34)
  {
    v37 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v65 = *(AssociatedConformanceWitness + 48);
    v66 = (AssociatedConformanceWitness + 48);
    v68 = (v12 + 16);
    v64 = (v12 + 32);
    v55 = (v52 + 56);
    v56 = (v52 + 16);
    ++v53;
    v54 = "cCoordinator.ShareDispatcher";
    v38 = (v12 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v36, v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37, AssociatedTypeWitness);
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v51 != 8)
        {
          __break(1u);
          return result;
        }

        v69 = result;
        (*v68)(v36, &v69, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      (*v64)(v35, v36, AssociatedTypeWitness);
      if (v65(AssociatedTypeWitness, AssociatedConformanceWitness) != 1)
      {
        v41 = v63;
        dispatch_group_enter(v63);
        v42 = v12;
        v43 = v58;
        v44 = v62;
        (*v56)(v58, v18, v62);
        v45 = v44;
        v35 = v61;
        (*v55)(v43, 0, 1, v45);
        sub_100055324(v35, v43, 0xD000000000000030, v54 | 0x8000000000000000, v41);
        v46 = v43;
        v12 = v42;
        v36 = v60;
        (*v53)(v46, v59);
      }

      (*v38)(v35, AssociatedTypeWitness);
      ++v37;
    }

    while (v40 != Array.endIndex.getter());
  }

  dispatch_group_leave(v63);
  (*(v49 + 8))(v48, v50);
  return (*(v52 + 8))(v18, v62);
}

void sub_100055324(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, NSObject *a5)
{
  v158 = a5;
  v167 = a3;
  v148 = a2;
  v144 = *v5;
  v8 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  __chkstk_darwin(v8 - 8);
  v146 = &v143 - v9;
  v149 = *(v144 + 120);
  v152 = type metadata accessor for Optional();
  v147 = *(v152 - 8);
  __chkstk_darwin(v152);
  v153 = &v143 - v10;
  v11 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  __chkstk_darwin(v11 - 8);
  v143 = &v143 - v12;
  v145 = v5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v157 = *(AssociatedTypeWitness - 1);
  __chkstk_darwin(AssociatedTypeWitness);
  v156 = &v143 - v13;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v151 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v154 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  v159 = &v143 - v23;
  __chkstk_darwin(v22);
  v25 = &v143 - v24;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100020D2C(v26, qword_100092EB0);
  v28 = *(v15 + 16);
  v28(v25, a1, v14);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v162 = v28;
  v160 = a1;
  v164 = v15;
  v163 = v15 + 16;
  v155 = v27;
  if (v31)
  {
    v32 = v14;
    v33 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v33 = 136446466;
    *(v33 + 4) = sub_100033140(v167, a4, &v168);
    *(v33 + 12) = 2082;
    v28(v159, v25, v32);
    v34 = String.init<A>(describing:)();
    v35 = a4;
    v37 = v36;
    v161 = *(v15 + 8);
    v161(v25, v32);
    v38 = sub_100033140(v34, v37, &v168);
    a4 = v35;

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Sending %{public}s to participant: %{public}s", v33, 0x16u);
    swift_arrayDestroy();

    v14 = v32;
    a1 = v160;
  }

  else
  {

    v161 = *(v15 + 8);
    v161(v25, v14);
  }

  v39 = v156;
  (*(AssociatedConformanceWitness + 32))(v14, AssociatedConformanceWitness);
  v40 = AssociatedTypeWitness;
  v41 = swift_getAssociatedConformanceWitness();
  v42 = (*(v41 + 8))(v40, v41);
  (*(v157 + 8))(v39, v40);
  AssociatedTypeWitness = v42;
  if (!v42)
  {
    goto LABEL_33;
  }

  v43 = [AssociatedTypeWitness emailAddress];
  if (v43)
  {
    v44 = v154;
    goto LABEL_10;
  }

  v43 = [AssociatedTypeWitness phoneNumber];
  v44 = v154;
  if (!v43)
  {

LABEL_33:
    v101 = v151;
    v102 = v162;
    v162(v151, a1, v14);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v168 = v106;
      *v105 = 136446210;
      v107 = v101;
      v102(v159, v101, v14);
      v108 = String.init<A>(describing:)();
      v109 = v14;
      v110 = v108;
      v112 = v111;
      v161(v107, v109);
      v113 = sub_100033140(v110, v112, &v168);

      *(v105 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v103, v104, "Failed to create invitation for: %{public}s", v105, 0xCu);
      sub_1000208BC(v106);
    }

    else
    {

      v161(v101, v14);
    }

    v114 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v168 = 0x40AC200000000000;
    v169 = 0;
    [v114 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v158);
    return;
  }

LABEL_10:
  v45 = v43;
  v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v46;

  v47 = v162;
  v162(v44, a1, v14);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v50 = 136446466;
    *(v50 + 4) = sub_100033140(v167, a4, &v168);
    *(v50 + 12) = 2082;
    v47(v159, v44, v14);
    v51 = String.init<A>(describing:)();
    v52 = a4;
    v54 = v53;
    v161(v44, v14);
    v55 = sub_100033140(v51, v54, &v168);
    a4 = v52;

    *(v50 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Sending %{public}s to participant: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v161(v44, v14);
  }

  v56 = v153;
  v57 = v152;
  v154 = String._bridgeToObjectiveC()();
  if (v167 == 0xD000000000000030 && 0x8000000100070180 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v58 = (*(AssociatedConformanceWitness + 40))(v14);
    if (v58)
    {
      v59 = v58;
      v60 = [v58 sharingInvitationData];

      v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = v147;
      (*(v147 + 16))(v56, v148, v57);
      v65 = v149;
      v66 = *(v149 - 8);
      if ((*(v66 + 48))(v56, 1, v149) == 1)
      {

        sub_100020D78(v61, v63);
        (*(v64 + 8))(v56, v57);
      }

      else
      {
        AssociatedConformanceWitness = a4;
        v83 = v143;
        v84 = v65;
        (*(*(v144 + 176) + 40))(v65);
        v85 = v83;
        (*(v66 + 8))(v56, v84);
        v86 = type metadata accessor for URL();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(v85, 1, v86) != 1)
        {
          v115 = v63;
          v116 = v85;
          v117 = URL.absoluteString.getter();
          v119 = v118;
          (*(v87 + 8))(v116, v86);
          sub_100020818(&qword_100091868, &qword_10006E088);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10006D890;
          strcpy((inited + 32), "invitationData");
          *(inited + 47) = -18;
          *(inited + 48) = v61;
          v153 = v115;
          *(inited + 56) = v115;
          *(inited + 72) = &type metadata for Data;
          *(inited + 80) = 0xD000000000000018;
          *(inited + 120) = &type metadata for String;
          *(inited + 88) = 0x8000000100070200;
          *(inited + 96) = v117;
          *(inited + 104) = v119;
          sub_100020CD8(v61, v115);
          v121 = sub_10004C660(inited);
          swift_setDeallocating();
          sub_100020818(&qword_100091828, &qword_10006E068);
          swift_arrayDestroy();
          sub_1000516A8(v121);

          v122 = objc_allocWithZone(IDSDictionaryInvitationContext);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v124 = String._bridgeToObjectiveC()();
          v125 = [v122 initWithDictionary:isa schema:v124];
          v126 = v154;
          v127 = v125;

          v128 = (v145 + *(*v145 + 224));
          v129 = v128[3];
          v130 = v128[4];
          v167 = sub_100020908(v128, v129);
          v131 = v146;
          static Date.distantFuture.getter();
          v132 = type metadata accessor for Date();
          (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
          v133 = swift_allocObject();
          v134 = v157;
          v133[2] = v156;
          v133[3] = v134;
          v135 = v158;
          v133[4] = v158;
          v136 = *(v130 + 32);
          v137 = v127;
          v138 = v135;
          v136(v126, v131, v137, sub_10005C92C, v133, v129, v130);

          sub_100020D78(v61, v153);
          sub_100028FF4(v131, &qword_1000913D0, &qword_10006D9C0);
          return;
        }

        sub_100020D78(v61, v63);
        sub_100028FF4(v85, &qword_100091720, &qword_10006DFB0);
      }
    }

    else
    {
    }

    v88 = v150;
    v89 = v162;
    v162(v150, v160, v14);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v168 = v93;
      *v92 = 136446210;
      v89(v159, v88, v14);
      v94 = String.init<A>(describing:)();
      v95 = v14;
      v96 = v94;
      v98 = v97;
      v161(v88, v95);
      v99 = sub_100033140(v96, v98, &v168);

      *(v92 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to create share invitation for: %{public}s", v92, 0xCu);
      sub_1000208BC(v93);
    }

    else
    {

      v161(v88, v14);
    }

    v100 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v168 = 0x40AC200000000000;
    v169 = 0;
    [v100 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v158);
  }

  else if (v167 == 0xD000000000000037 && 0x80000001000701C0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10004C790(_swiftEmptyArrayStorage);
    v67 = objc_allocWithZone(IDSDictionaryInvitationContext);
    v68 = Dictionary._bridgeToObjectiveC()().super.isa;

    v69 = String._bridgeToObjectiveC()();
    v70 = [v67 initWithDictionary:v68 schema:v69];

    v71 = (v145 + *(*v145 + 224));
    v72 = v71[3];
    v73 = v71[4];
    sub_100020908(v71, v72);
    v74 = v154;
    v75 = v146;
    static Date.distantFuture.getter();
    v76 = type metadata accessor for Date();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = swift_allocObject();
    v78 = v157;
    v77[2] = v156;
    v77[3] = v78;
    v79 = v158;
    v77[4] = v158;
    v80 = *(v73 + 32);
    v81 = v79;
    v82 = v70;
    v80(v74, v75, v82, sub_10005A830, v77, v72, v73);

    sub_100028FF4(v75, &qword_1000913D0, &qword_10006D9C0);
  }

  else
  {

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v168 = v142;
      *v141 = 136446210;
      *(v141 + 4) = sub_100033140(v167, a4, &v168);
      _os_log_impl(&_mh_execute_header, v139, v140, "Tried to send invitation using unknown schema: %{public}s", v141, 0xCu);
      sub_1000208BC(v142);
    }

    dispatch_group_leave(v158);
  }
}

void sub_100056924(uint64_t a1, void (*a2)(char *, char *, uint64_t), NSObject *a3)
{
  v141 = a3;
  v132 = a2;
  v4 = *v3;
  v5 = *v3;
  v135 = a1;
  v136 = v5;
  v6 = *(v4 + 14);
  v137 = *(v4 + 21);
  swift_getAssociatedTypeWitness();
  v128 = type metadata accessor for Optional();
  v7 = __chkstk_darwin(v128);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v127 = &v117 - v10;
  v131 = *(*(v4 + 15) - 8);
  v11 = __chkstk_darwin(v9);
  v120 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v124 = &v117 - v14;
  __chkstk_darwin(v13);
  v129 = &v117 - v15;
  v142 = v16;
  v139 = type metadata accessor for Optional();
  v130 = *(v139 - 1);
  v17 = __chkstk_darwin(v139);
  v121 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v126 = &v117 - v20;
  __chkstk_darwin(v19);
  v22 = &v117 - v21;
  v23 = *(v4 + 19);
  v140 = v3;
  v24 = *(v4 + 12);
  v133 = v23;
  v134 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = *(AssociatedTypeWitness - 8);
  v119 = *(v138 + 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v27 = &v117 - v26;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = (&v117 - v31);
  v33 = *(v6 - 8);
  v34 = __chkstk_darwin(v30);
  v125 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v123 = &v117 - v37;
  __chkstk_darwin(v36);
  v39 = &v117 - v38;
  v143[0] = v135;
  v40 = v135;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  v41 = swift_dynamicCast();
  v42 = *(v33 + 56);
  if (!v41)
  {
LABEL_15:
    v42(v32, 1, 1, v6);
    (*(v29 + 8))(v32, v28);
    sub_10004C434(v40, v141);
    return;
  }

  v42(v32, 0, 1, v6);
  v118 = v33;
  v43 = *(v33 + 32);
  v43(v39, v32, v6);
  v44 = *(v137 + 6);
  v135 = v39;
  v45 = v44(v6);
  v46 = v6;
  switch(v45)
  {
    case 14:
      v138 = v43;
      v73 = v137;
      v74 = v135;
      (*(v137 + 5))(v6, v137);
      v75 = v126;
      v76 = v142;
      v77 = swift_dynamicCast();
      v78 = v131;
      v79 = *(v131 + 56);
      if (v77)
      {
        v79(v75, 0, 1, v76);
        v132 = *(v78 + 32);
        v132(v129, v75, v76);
        v80 = *(v73 + 32);
        v117 = v46;
        v80(v46, v73);
        v75 = v121;
        v81 = v142;
        if (swift_dynamicCast())
        {
          v79(v75, 0, 1, v81);
          v132(v124, v75, v81);
          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v82 = type metadata accessor for Logger();
          sub_100020D2C(v82, qword_100092EB0);
          v83 = v131;
          v84 = v120;
          v85 = v129;
          (*(v131 + 16))(v120, v129, v81);
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();
          v88 = os_log_type_enabled(v86, v87);
          v89 = v117;
          v90 = v136;
          if (v88)
          {
            v91 = v84;
            v92 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v143[0] = v139;
            *v92 = 136446210;
            v138 = v90[22];
            v93 = v91;
            v94 = (*(*(v138 + 1) + 8))(v81);
            v95 = [v94 zoneID];

            v96 = [v95 zoneName];
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100 = *(v83 + 8);
            v100(v93, v81);
            v101 = v97;
            v90 = v136;
            v102 = sub_100033140(v101, v99, v143);
            v85 = v129;

            *(v92 + 4) = v102;
            v89 = v117;
            _os_log_impl(&_mh_execute_header, v86, v87, "Updating share for: %{public}s", v92, 0xCu);
            sub_1000208BC(v139);

            v103 = v138;
          }

          else
          {

            v100 = *(v83 + 8);
            v100(v84, v81);
            v103 = v90[22];
          }

          v115 = v141;
          v116 = v118;
          if (sub_10005A850(v85, v124, v90[10], v90[11], v134, v90[13], v89, v81, v90[16], v90[17], v90[18], v133, v90[20], v137, v103, v90[23], v90[24]))
          {
            sub_100054458(v85, v115);
          }

          else
          {
            dispatch_group_leave(v115);
          }

          v100(v124, v81);
          v100(v85, v81);
          (*(v116 + 8))(v135, v89);
          return;
        }

        (*(v78 + 8))(v129, v81);
        v46 = v117;
      }

      v110 = v118;
      v79(v75, 1, 1, v142);
      (*(v130 + 8))(v75, v139);
      v111 = v123;
      (*(v110 + 16))(v123, v74, v46);
      v112 = _getErrorEmbeddedNSError<A>(_:)();
      if (v112)
      {
        v113 = v112;
        (*(v110 + 8))(v111, v46);
      }

      else
      {
        v113 = swift_allocError();
        v138(v114, v111, v46);
      }

      sub_10004C434(v113, v141);

      (*(v110 + 8))(v74, v46);
      return;
    case 26:
      v51 = v136;
      v52 = (*(*(*(v136 + 22) + 8) + 8))(v142);
      v53 = [v52 zoneID];

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100020D2C(v54, qword_100092EB0);
      v55 = v53;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      v58 = os_log_type_enabled(v56, v57);
      v117 = v6;
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v143[0] = v60;
        *v59 = 136446210;
        v61 = [v55 zoneName];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = sub_100033140(v62, v64, v143);

        *(v59 + 4) = v65;
        v51 = v136;
        _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s was not found, attempting to re-save it.", v59, 0xCu);
        sub_1000208BC(v60);
      }

      v66 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v55];
      [v66 setCapabilities:8];
      v67 = swift_allocObject();
      v68 = v141;
      *(v67 + 16) = v141;
      v69 = *(v51 + 11);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v71 = *(AssociatedConformanceWitness + 48);
      v72 = v68;
      v71(v66, sub_10004E78C, v67, v69, AssociatedConformanceWitness);

      goto LABEL_30;
    case 33:
      v117 = v6;
      v40 = (*(*(v136 + 22) + 32))(v142);
      if (Array.endIndex.getter())
      {
        v28 = 0;
        v136 = "Invitation.share";
        v137 = v138 + 16;
        v29 = v131 + 56;
        v47 = (v130 + 8);
        v32 = (v138 + 8);
        do
        {
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            (*(v138 + 2))(v27, v40 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 9) * v28, AssociatedTypeWitness);
            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v50 = _ArrayBuffer._getElementSlowPath(_:)();
            if (v119 != 8)
            {
              __break(1u);
              return;
            }

            v143[0] = v50;
            (*v137)(v27, v143, AssociatedTypeWitness);
            swift_unknownObjectRelease();
            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }
          }

          v49 = v141;
          dispatch_group_enter(v141);
          (*v29)(v22, 1, 1, v142);
          sub_100055324(v27, v22, 0xD000000000000037, v136 | 0x8000000000000000, v49);
          (*v47)(v22, v139);
          (*v32)(v27, AssociatedTypeWitness);
          ++v28;
        }

        while (v6 != Array.endIndex.getter());
      }

      dispatch_group_leave(v141);
LABEL_30:
      (*(v118 + 8))(v135, v117);
      return;
  }

  v104 = v118;
  v105 = v125;
  v106 = v135;
  (*(v118 + 16))(v125, v135, v6);
  v107 = _getErrorEmbeddedNSError<A>(_:)();
  if (v107)
  {
    v108 = v107;
    (*(v104 + 8))(v105, v6);
  }

  else
  {
    v108 = swift_allocError();
    v43(v109, v105, v6);
  }

  sub_10004C434(v108, v141);

  (*(v104 + 8))(v106, v6);
}

uint64_t sub_100057A4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = swift_projectBox();
  swift_beginAccess();
  v9[3] = v3;
  v9[4] = *(*(v2 + 160) + 8);
  v5 = sub_1000283C4(v9);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  v6 = *(v2 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v9, v6, AssociatedConformanceWitness);
  return sub_1000208BC(v9);
}

void sub_100057BA4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (!a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100020D2C(v12, qword_100092EB0);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "Successfully saved authorization zone", v14, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EB0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v9 = String.init<A>(describing:)();
    v11 = sub_100033140(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save authorization zone: %{public}s", v7, 0xCu);
    sub_1000208BC(v8);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v15 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v16 = 0x40AC200000000000;
  v17 = 0;
  [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a3);
}

uint64_t sub_100057EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38 = a2;
  v39 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = &v38 - v16;
  v18 = *(AssociatedConformanceWitness + 32);
  swift_checkMetadataState();
  v18();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = (*(v19 + 8))(AssociatedTypeWitness, v19);
  (*(v15 + 8))(v17, AssociatedTypeWitness);
  if (!v20)
  {
    v36 = 0;
    return v36 & 1;
  }

  v21 = [v20 emailAddress];
  v23 = v38;
  v22 = v39;
  if (v21)
  {
    v24 = v21;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v23 && v27 == v22)
    {

LABEL_19:
      v36 = 1;
      return v36 & 1;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  v30 = [v20 phoneNumber];
  if (!v30)
  {

    v36 = 0;
    return v36 & 1;
  }

  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == v23 && v34 == v22)
  {

    goto LABEL_18;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v36 & 1;
}

void sub_100058170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100020D2C(v8, qword_100092EB0);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_100033140(a3, a4, &v21);
      *(v11 + 12) = 2082;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v21);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to send invitation to %{public}s: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v21 = 0x40AC200000000000;
    v22 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100020D2C(v16, qword_100092EB0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100033140(a3, a4, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully sent invitation to %{public}s", v19, 0xCu);
      sub_1000208BC(v20);
    }
  }

  dispatch_group_leave(a5);
}

uint64_t sub_100058508(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 224));
  v4 = v3[3];
  v5 = v3[4];
  sub_100020908(v3, v4);
  return (*(v5 + 48))(a1, sub_100059710, 0, v4, v5);
}

uint64_t sub_100058590(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_10004EB94(a2, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch share metadata: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    return sub_100058508(a5);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100020D2C(v16, qword_100092EB0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully fetched share metadata", v19, 2u);
    }

    return sub_1000587E4(a2, a5);
  }
}

uint64_t sub_1000587E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 136);
  v26 = swift_allocBox();
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10006DED0;
  *(v12 + 32) = a1;
  v13 = *(v6 + 192);
  v14 = v13[2];
  v15 = a1;
  v14(v12, v11, v13);
  (*(v13[1] + 16))(25, v11);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = a2;
  v17 = v13[4];

  v18 = a2;
  v17(sub_100059A3C, v16, v11, v13);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v3;
  *(v20 + 24) = v21;
  aBlock[4] = sub_100059A48;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087C58;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v24 = v27;
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v24, v23);
  (*(v29 + 8))(v10, v30);
}

uint64_t sub_100058BC4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = swift_projectBox();
  swift_beginAccess();
  v7[3] = v3;
  v7[4] = *(v2[23] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  (*(v2[18] + 72))(v7, v2[10]);
  return sub_1000208BC(v7);
}

uint64_t sub_100058CE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100020D2C(v5, qword_100092EB0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v10 = String.init<A>(describing:)();
      v12 = sub_100033140(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save verification zone: %{public}s", v8, 0xCu);
      sub_1000208BC(v9);
    }

    sub_100058508(a4);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100020D2C(v14, qword_100092EB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully saved verification zone", v17, 2u);
    }

    return sub_100058F58(a4);
  }
}

uint64_t sub_100058F58(void *a1)
{
  v3 = (v1 + *(*v1 + 224));
  v4 = v3[3];
  v5 = v3[4];
  sub_100020908(v3, v4);
  v6 = [a1 context];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  (*(v5 + 40))(a1, v6, sub_100049BD4, v7, v4, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_100059048(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100020D2C(v6, qword_100092EB0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v11 = String.init<A>(describing:)();
      v13 = sub_100033140(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to accept share: %{public}s", v9, 0xCu);
      sub_1000208BC(v10);
    }

    return sub_100058508(a4);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100020D2C(v15, qword_100092EB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully accepted share", v18, 2u);
    }

    return sub_100058F58(a4);
  }
}

uint64_t sub_1000592A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  v4 = swift_projectBox();
  swift_beginAccess();
  v7[3] = v3;
  v7[4] = *(v2[24] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  (*(v2[18] + 72))(v7, v2[10]);
  return sub_1000208BC(v7);
}

void sub_1000593C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100020D2C(v2, qword_100092EB0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v7 = String.init<A>(describing:)();
      v9 = sub_100033140(v7, v8, &v23);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to accept invitation: %{public}s", v5, 0xCu);
      sub_1000208BC(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100020D2C(v11, qword_100092EB0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = v12;
      v17 = [v16 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100033140(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully accepted invitation %{public}s", v14, 0xCu);
      sub_1000208BC(v15);
    }

    else
    {
    }
  }
}

void sub_100059710(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100020D2C(v1, qword_100092EB0);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v6 = String.init<A>(describing:)();
      v8 = sub_100033140(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to decline invitation: %{public}s", v4, 0xCu);
      sub_1000208BC(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100020D2C(v9, qword_100092EB0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Successfully declined invitation", v11, 2u);
    }
  }
}

uint64_t sub_100059A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059A68(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100020818(&qword_100091760, &qword_10006DFD8);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_100059AFC()
{
  v1 = *(*(v0 + 56) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059C00()
{
  v1 = *(v0 + 56);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 144) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100059D48()
{
  v1 = *(v0 + 56);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100059E50(uint64_t a1, void *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100033140(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Sender canceled invitation %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }
}

void sub_100059FE8(int a1, id a2)
{
  [a2 context];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 schemaIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v5 == 0xD000000000000030 && 0x8000000100070180 == v7;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100020D2C(v9, qword_100092EB0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Receiver accepted share invitation", v12, 2u);
      }

      goto LABEL_11;
    }

    v24 = v5 == 0xD000000000000037 && 0x80000001000701C0 == v7;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100020D2C(v25, qword_100092EB0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Receiver accepted verification invitation", v28, 2u);
      }

      v29 = [objc_opt_self() defaultCenter];
      if (qword_100090D58 != -1)
      {
        swift_once();
      }

      v36 = 0;
      v37 = 1;
      [v29 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100020D2C(v30, qword_100092EB0);

      v10 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v10, v31))
      {

LABEL_11:

        swift_unknownObjectRelease();
        return;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136446210;
      v34 = sub_100033140(v5, v7, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v10, v31, "Receiver accepted invitation with unknown schema: %{public}s", v32, 0xCu);
      sub_1000208BC(v33);
    }

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100020D2C(v13, qword_100092EB0);
  v14 = a2;
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    v18 = v14;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_100033140(v20, v22, &v36);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to extract context from accepted invitation %{public}s", v16, 0xCu);
    sub_1000208BC(v17);
  }

  else
  {
  }
}

uint64_t sub_10005A600(uint64_t a1, void *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = v4;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100033140(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Receiver declined invitation %{public}s", v7, 0xCu);
    sub_1000208BC(v8);
  }

  v15 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v17 = 0x40AC200000000000;
  v18 = 0;
  [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

void *sub_10005A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v220 = a7;
  v234 = a6;
  v231 = a4;
  v230 = a3;
  v247 = a1;
  v245 = 0;
  v20 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v209 = type metadata accessor for Optional();
  v262 = *(v209 - 8);
  __chkstk_darwin(v209);
  v218 = &v202 - v22;
  v229 = a12;
  v232 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v254 = swift_getAssociatedTypeWitness();
  v206 = *(v254 - 8);
  v24 = __chkstk_darwin(v254);
  v242 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v243 = &v202 - v27;
  v28 = *(AssociatedTypeWitness - 8);
  v29 = __chkstk_darwin(v26);
  v211 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v248 = &v202 - v32;
  v33 = __chkstk_darwin(v31);
  v263 = &v202 - v34;
  v35 = __chkstk_darwin(v33);
  v212 = &v202 - v36;
  v37 = __chkstk_darwin(v35);
  v213 = &v202 - v38;
  v39 = __chkstk_darwin(v37);
  v205 = &v202 - v40;
  v41 = __chkstk_darwin(v39);
  v215 = &v202 - v42;
  v43 = __chkstk_darwin(v41);
  v238 = &v202 - v44;
  v203 = v45;
  __chkstk_darwin(v43);
  *&v244 = &v202 - v46;
  v47 = (*(*(a15 + 8) + 8))(a8);
  v48 = [v47 zoneID];

  v49 = [v48 zoneName];
  v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v255 = v50;

  v51 = *(a15 + 32);
  v219 = a2;
  v52 = v51(a8, a15);
  v266 = v52;
  v217 = a15 + 32;
  v216 = v51;
  v53 = v51(a8, a15);
  v54 = Array.endIndex.getter();
  v56 = &off_10006C000;
  v249 = a8;
  v250 = a15;
  v258 = AssociatedConformanceWitness;
  v256 = v28;
  if (!v54)
  {

    LODWORD(v246) = 0;
    v57 = AssociatedConformanceWitness;
    v59 = v28;
    v160 = v52;
    goto LABEL_64;
  }

  LODWORD(v246) = 0;
  v252 = *(AssociatedConformanceWitness + 48);
  v260 = (v28 + 16);
  v233 = a17;
  v227 = a16;
  v257 = (v28 + 32);
  v236 = AssociatedConformanceWitness + 32;
  v235 = (v206 + 8);
  v214 = (v28 + 48);
  v226 = a14;
  v225 = a13;
  v253 = AssociatedConformanceWitness + 48;
  v208 = AssociatedConformanceWitness + 24;
  v251 = (v28 + 8);
  v204 = a15 + 56;
  v224 = a11;
  v228 = a15 + 64;
  v207 = (v262 + 8);
  v223 = a10;
  v222 = a9;
  *&v55 = 136446466;
  v210 = v55;
  *&v55 = 136446210;
  v202 = v55;
  v57 = AssociatedConformanceWitness;
  v58 = 0;
  v59 = v28;
  v60 = v238;
  v61 = v244;
  v237 = v53;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v64 = v53 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58;
      v259 = *(v59 + 16);
      result = v259(v61, v64, AssociatedTypeWitness);
      v66 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v203 != 8)
    {
      goto LABEL_94;
    }

    v265 = result;
    v259 = *v260;
    v259(v61, &v265, AssociatedTypeWitness);
    result = swift_unknownObjectRelease();
    v66 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

LABEL_8:
    v261 = v66;
    v262 = v58;
    v67 = *v257;
    (*v257)(v60, v61, AssociatedTypeWitness);
    if (v252(AssociatedTypeWitness, v57) != 1)
    {
      v68 = v243;
      (*(v57 + 32))(AssociatedTypeWitness, v57);
      v69 = v254;
      v70 = swift_getAssociatedConformanceWitness();
      v71 = (*(v70 + 8))(v69, v70);
      (*v235)(v68, v69);
      if (v71)
      {
        v72 = [v71 emailAddress];
        if (v72)
        {
          v73 = v20;
          v240 = v71;
          v74 = v234;
          v75 = v233;
LABEL_14:
          v76 = v72;
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;

          v80 = v216(a8, v73);
          v241 = &v202;
          v265 = v80;
          __chkstk_darwin(v80);
          v81 = v231;
          *(&v202 - 18) = v230;
          *(&v202 - 17) = v81;
          *(&v202 - 16) = v232;
          *(&v202 - 15) = v74;
          v82 = v220;
          *(&v202 - 14) = v220;
          *(&v202 - 13) = a8;
          v83 = v223;
          *(&v202 - 12) = v222;
          *(&v202 - 11) = v83;
          v84 = v229;
          *(&v202 - 10) = v224;
          *(&v202 - 9) = v84;
          v85 = v226;
          *(&v202 - 8) = v225;
          *(&v202 - 7) = v85;
          v86 = v227;
          *(&v202 - 6) = v87;
          *(&v202 - 5) = v86;
          *(&v202 - 4) = v75;
          *(&v202 - 3) = v77;
          *(&v202 - 2) = v79;
          type metadata accessor for Array();
          swift_getWitnessTable();
          v88 = v218;
          v89 = v245;
          Sequence.first(where:)();

          v90 = (*v214)(v88, 1, AssociatedTypeWitness);
          v221 = v77;
          if (v90 == 1)
          {
            v245 = v89;
            (*v207)(v88, v209);
            v61 = v244;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_100020D2C(v91, qword_100092EB0);

            v92 = v255;

            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.default.getter();

            v95 = os_log_type_enabled(v93, v94);
            v20 = v250;
            v59 = v256;
            if (v95)
            {
              v96 = swift_slowAlloc();
              v265 = swift_slowAlloc();
              *v96 = v210;
              v97 = sub_100033140(v221, v79, &v265);

              *(v96 + 4) = v97;
              *(v96 + 12) = 2082;
              *(v96 + 14) = sub_100033140(v239, v92, &v265);
              _os_log_impl(&_mh_execute_header, v93, v94, "Removing %{public}s from %{public}s", v96, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a8 = v249;
            v57 = v258;
            v60 = v238;
            v53 = v237;
            v62 = v262;
            (*(v20 + 64))(v238, v249, v20);

            (*v251)(v60, AssociatedTypeWitness);
            LODWORD(v246) = 1;
            goto LABEL_5;
          }

          v98 = (v67)(v215, v88, AssociatedTypeWitness);
          __chkstk_darwin(v98);
          v99 = v231;
          *(&v202 - 18) = v230;
          *(&v202 - 17) = v99;
          v100 = v234;
          *(&v202 - 16) = v232;
          *(&v202 - 15) = v100;
          v101 = v249;
          *(&v202 - 14) = v82;
          *(&v202 - 13) = v101;
          v102 = v223;
          *(&v202 - 12) = v222;
          *(&v202 - 11) = v102;
          v103 = v229;
          *(&v202 - 10) = v224;
          *(&v202 - 9) = v103;
          v104 = v226;
          *(&v202 - 8) = v225;
          *(&v202 - 7) = v104;
          v105 = v227;
          *(&v202 - 6) = v250;
          *(&v202 - 5) = v105;
          *(&v202 - 4) = v233;
          *(&v202 - 3) = v77;
          v106 = v79;
          *(&v202 - 2) = v79;
          swift_getWitnessTable();
          swift_getWitnessTable();
          RangeReplaceableCollection<>.removeAll(where:)();
          v57 = v258;
          v107 = *(v258 + 24);
          v60 = v238;
          v108 = v107(AssociatedTypeWitness, v258);
          v245 = v89;
          if (v108 < 2)
          {
            v59 = v256;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            sub_100020D2C(v117, qword_100092EB0);

            v118 = v255;

            v119 = Logger.logObject.getter();
            v120 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v265 = swift_slowAlloc();
              *v121 = v210;
              v122 = v119;
              v123 = sub_100033140(v221, v106, &v265);

              *(v121 + 4) = v123;
              *(v121 + 12) = 2082;
              *(v121 + 14) = sub_100033140(v239, v118, &v265);
              _os_log_impl(&_mh_execute_header, v122, v120, "Re-inviting %{public}s to %{public}s", v121, 0x16u);
              swift_arrayDestroy();
              v60 = v238;
            }

            else
            {
            }

            a8 = v249;
            v20 = v250;
            v61 = v244;
            (*(v250 + 64))(v60, v249, v250);
            v144 = v215;
            (*(v20 + 56))(v215, a8, v20);

            v145 = *v251;
            (*v251)(v144, AssociatedTypeWitness);
            v145(v60, AssociatedTypeWitness);
            LODWORD(v246) = 1;
            v57 = v258;
            goto LABEL_41;
          }

          v59 = v256;
          v109 = v205;
          if (v108 != 2)
          {
            if (v108 == 3)
            {
              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v110 = type metadata accessor for Logger();
              sub_100020D2C(v110, qword_100092EB0);

              v111 = v255;

              v112 = Logger.logObject.getter();
              v113 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v112, v113))
              {
                v114 = swift_slowAlloc();
                v265 = swift_slowAlloc();
                *v114 = v210;
                v115 = v112;
                v116 = sub_100033140(v221, v106, &v265);

                *(v114 + 4) = v116;
                *(v114 + 12) = 2082;
                *(v114 + 14) = sub_100033140(v239, v111, &v265);
                _os_log_impl(&_mh_execute_header, v115, v113, "Adding %{public}s to %{public}s", v114, 0x16u);
                swift_arrayDestroy();
                v60 = v238;
              }

              else
              {
              }

              a8 = v249;
              v20 = v250;
              v57 = v258;
              v61 = v244;
              v157 = v215;
              (*(v250 + 56))(v215, v249, v250);

              v158 = *v251;
              (*v251)(v157, AssociatedTypeWitness);
              v158(v60, AssociatedTypeWitness);
              LODWORD(v246) = 1;
              goto LABEL_41;
            }

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v146 = type metadata accessor for Logger();
            sub_100020D2C(v146, qword_100092EB0);
            v259(v109, v60, AssociatedTypeWitness);
            v147 = Logger.logObject.getter();
            v148 = static os_log_type_t.error.getter();
            v149 = os_log_type_enabled(v147, v148);
            v20 = v250;
            if (v149)
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v265 = v151;
              *v150 = v202;
              LODWORD(v259) = v148;
              v264 = v107(AssociatedTypeWitness, v258);
              type metadata accessor for ParticipantAcceptanceStatus(0);
              v152 = String.init<A>(describing:)();
              v154 = v153;
              v155 = *v251;
              (*v251)(v109, AssociatedTypeWitness);
              v156 = sub_100033140(v152, v154, &v265);
              v60 = v238;

              *(v150 + 4) = v156;
              _os_log_impl(&_mh_execute_header, v147, v259, "Unknown acceptance status: %{public}s", v150, 0xCu);
              sub_1000208BC(v151);

              v57 = v258;
            }

            else
            {

              v155 = *v251;
              (*v251)(v109, AssociatedTypeWitness);
            }

            v155(v215, AssociatedTypeWitness);
            v155(v60, AssociatedTypeWitness);
            a8 = v249;
            v59 = v256;
LABEL_40:
            v61 = v244;
LABEL_41:
            v53 = v237;
            goto LABEL_4;
          }

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v137 = type metadata accessor for Logger();
          sub_100020D2C(v137, qword_100092EB0);

          v138 = v255;

          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v265 = swift_slowAlloc();
            *v141 = v210;
            v142 = v139;
            v143 = sub_100033140(v221, v106, &v265);

            *(v141 + 4) = v143;
            *(v141 + 12) = 2082;
            *(v141 + 14) = sub_100033140(v239, v138, &v265);
            _os_log_impl(&_mh_execute_header, v142, v140, "%{public}s is already sharing %{public}s", v141, 0x16u);
            swift_arrayDestroy();
            v60 = v238;
          }

          else
          {
          }

          v159 = *v251;
          (*v251)(v215, AssociatedTypeWitness);
          v159(v60, AssociatedTypeWitness);
          a8 = v249;
          v20 = v250;
LABEL_39:
          v57 = v258;
          goto LABEL_40;
        }

        v72 = [v71 phoneNumber];
        v74 = v234;
        v75 = v233;
        if (v72)
        {
          v73 = v20;
          v240 = v71;
          goto LABEL_14;
        }
      }

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      sub_100020D2C(v124, qword_100092EB0);
      v125 = v213;
      v126 = v259;
      v259(v213, v60, AssociatedTypeWitness);
      v127 = v255;

      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        v265 = v246;
        *v130 = v210;
        v126(v212, v125, AssociatedTypeWitness);
        v131 = String.init<A>(describing:)();
        v133 = v132;
        v134 = *v251;
        (*v251)(v125, AssociatedTypeWitness);
        v135 = sub_100033140(v131, v133, &v265);

        *(v130 + 4) = v135;
        v60 = v238;
        *(v130 + 12) = 2082;
        *(v130 + 14) = sub_100033140(v239, v127, &v265);
        _os_log_impl(&_mh_execute_header, v128, v129, "Removing %{public}s from %{public}s", v130, 0x16u);
        swift_arrayDestroy();

        a8 = v249;
      }

      else
      {

        v134 = *v251;
        (*v251)(v125, AssociatedTypeWitness);
      }

      v59 = v256;
      v136 = v250;
      (*(v250 + 64))(v60, a8, v250);
      v134(v60, AssociatedTypeWitness);
      v20 = v136;
      LODWORD(v246) = 1;
      goto LABEL_39;
    }

    (*v251)(v60, AssociatedTypeWitness);
LABEL_4:
    v62 = v262;
LABEL_5:
    v58 = v62 + 1;
    if (v261 == Array.endIndex.getter())
    {

      v160 = v266;
      v56 = &off_10006C000;
LABEL_64:
      v161 = Array.endIndex.getter();
      v163 = v248;
      if (!v161)
      {
LABEL_91:

        return (v246 & 1);
      }

      v164 = 0;
      v165 = *(v57 + 48);
      v166 = (v59 + 16);
      v259 = (v59 + 32);
      v260 = v165;
      v261 = v57 + 48;
      v251 = (v206 + 8);
      v252 = (v57 + 32);
      v245 = v20 + 56;
      v257 = (v59 + 8);
      *&v162 = *(v56 + 369);
      v244 = v162;
      v253 = v160;
      v262 = v59 + 16;
      while (1)
      {
        v168 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v168)
        {
          v169 = *(v59 + 16);
          result = (v169)(v263, v160 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v164, AssociatedTypeWitness);
          v170 = v164 + 1;
          if (__OFADD__(v164, 1))
          {
            goto LABEL_93;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v203 != 8)
          {
            goto LABEL_95;
          }

          v265 = result;
          v169 = *v166;
          (*v166)(v263, &v265, AssociatedTypeWitness);
          result = swift_unknownObjectRelease();
          v170 = v164 + 1;
          if (__OFADD__(v164, 1))
          {
            goto LABEL_93;
          }
        }

        (*v259)(v163, v263, AssociatedTypeWitness);
        if (v260(AssociatedTypeWitness, v57) == 1)
        {
          (*v257)(v163, AssociatedTypeWitness);
        }

        else
        {
          v171 = v242;
          (*(v57 + 32))(AssociatedTypeWitness, v57);
          v172 = v254;
          v173 = swift_getAssociatedConformanceWitness();
          v174 = (*(v173 + 8))(v172, v173);
          (*v251)(v171, v172);
          if (!v174)
          {
            goto LABEL_81;
          }

          v175 = [v174 emailAddress];
          if (!v175)
          {
            v175 = [v174 phoneNumber];
            if (!v175)
            {

LABEL_81:
              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v187 = type metadata accessor for Logger();
              sub_100020D2C(v187, qword_100092EB0);
              v188 = v211;
              v169(v211, v248, AssociatedTypeWitness);
              v189 = v255;

              v190 = Logger.logObject.getter();
              v191 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v190, v191))
              {
                v192 = swift_slowAlloc();
                LODWORD(v241) = v191;
                v193 = v188;
                v194 = v192;
                v243 = swift_slowAlloc();
                v265 = v243;
                *v194 = v244;
                *(v194 + 4) = sub_100033140(v239, v189, &v265);
                *(v194 + 12) = 2082;
                v169(v212, v193, AssociatedTypeWitness);
                v195 = String.init<A>(describing:)();
                v197 = v196;
                v198 = *v257;
                (*v257)(v193, AssociatedTypeWitness);
                v199 = sub_100033140(v195, v197, &v265);

                *(v194 + 14) = v199;
                _os_log_impl(&_mh_execute_header, v190, v241, "Failed to share %{public}s with %{public}s", v194, 0x16u);
                swift_arrayDestroy();

                v163 = v248;
                v198(v248, AssociatedTypeWitness);
                v20 = v250;
                v57 = v258;
                v59 = v256;
              }

              else
              {

                v200 = *v257;
                (*v257)(v188, AssociatedTypeWitness);
                v201 = v248;
                v200(v248, AssociatedTypeWitness);
                v57 = v258;
                v59 = v256;
                v163 = v201;
              }

              v160 = v253;
              goto LABEL_67;
            }
          }

          v176 = v175;
          v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v179 = v178;

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v180 = type metadata accessor for Logger();
          sub_100020D2C(v180, qword_100092EB0);
          v181 = v255;

          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            v246 = v174;
            v185 = v184;
            v265 = swift_slowAlloc();
            *v185 = v244;
            v186 = sub_100033140(v177, v179, &v265);

            *(v185 + 4) = v186;
            *(v185 + 12) = 2082;
            *(v185 + 14) = sub_100033140(v239, v181, &v265);
            _os_log_impl(&_mh_execute_header, v182, v183, "Adding %{public}s to %{public}s", v185, 0x16u);
            swift_arrayDestroy();
            v20 = v250;

            v174 = v246;
          }

          else
          {
          }

          v59 = v256;
          v160 = v253;
          v163 = v248;
          (*(v20 + 56))(v248, v249, v20);

          (*v257)(v163, AssociatedTypeWitness);
          LODWORD(v246) = 1;
          v57 = v258;
        }

LABEL_67:
        ++v164;
        v167 = v170 == Array.endIndex.getter();
        v166 = v262;
        if (v167)
        {
          goto LABEL_91;
        }
      }
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10005C7D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C87C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C8BC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10005C960()
{
  result = qword_100091A68;
  if (!qword_100091A68)
  {
    type metadata accessor for CKSyncEngine.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091A68);
  }

  return result;
}

unint64_t sub_10005C9C8()
{
  result = qword_100091AC8;
  if (!qword_100091AC8)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091AC8);
  }

  return result;
}

uint64_t sub_10005CA20(uint64_t a1)
{
  *(a1 + 8) = sub_10005CA88(&qword_1000916D0, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
  result = sub_10005CA88(&qword_1000916E0, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005CA88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005CACC()
{
  v0 = type metadata accessor for KeyRetriever();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  KeyRetriever.init()();
  v7 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v4, v6, v0);
  v8 = sub_100062928(0x656C707041, 0xE500000000000000, v4, v7);
  result = (*(v1 + 8))(v6, v0);
  qword_100092F18 = v8;
  return result;
}

id sub_10005CC64()
{
  v0 = type metadata accessor for KeyRetriever();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &token - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &token - v5;
  v7 = [objc_opt_self() currentConnection];
  if (!v7)
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100020D2C(v16, qword_100092EC8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get the current XPC connection", v19, 2u);
    }

    goto LABEL_14;
  }

  v8 = v7;
  [v7 auditToken];
  v9 = SecTaskCreateWithAuditToken(0, &token);
  if (!v9 || (v10 = sub_10005CF60(), !v11))
  {
    String.utf8CString.getter();
    v14 = os_variant_allows_internal_security_policies();

    if (v14)
    {
      v12 = sub_10005D144();
      v13 = v15;

      goto LABEL_7;
    }

LABEL_14:
    v12 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v12 = v10;
  v13 = v11;
LABEL_7:

LABEL_15:
  KeyRetriever.init()();
  v20 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v4, v6, v0);
  v21 = sub_100062928(v12, v13, v4, v20);
  (*(v1 + 8))(v6, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v21;
}

uint64_t sub_10005CF60()
{
  v14 = 0;
  v0 = SecTaskCopyTeamIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100020D2C(v3, qword_100092EC8);
    v4 = v14;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      sub_100020818(&qword_100091B90, &unk_10006E4A0);
      v9 = Optional.debugDescription.getter();
      v11 = sub_100033140(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from SecTask: %{public}s", v7, 0xCu);
      sub_1000208BC(v8);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10005D144()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_100062C3C(v11);
  }

  if (qword_100090D20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from connection entitlements", v7, 2u);
  }

  return 0;
}

Class sub_10005D330(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  sub_100062BE8();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  sub_10005D3F4(v6, v7, a4);

  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}