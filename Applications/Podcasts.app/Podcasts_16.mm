double sub_10026B8D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MPModelObject.adamID.getter();
  v18 = v5 & 1;
  v6 = [a1 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 podcast];
  if (v11 && (v12 = v11, v13 = [v11 title], v12, v13))
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v4;
  *(a2 + 40) = v18;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  return result;
}

unint64_t sub_10026BA14()
{
  result = qword_10057A090;
  if (!qword_10057A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A090);
  }

  return result;
}

void sub_10026BA68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 guid];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v7;
    v27 = v6;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v8 = [a1 podcast];
  if (v8 && (v9 = v8, v10 = [v8 feedURL], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  [a1 storeTrackId];
  v14 = AdamID.init(rawValue:)();
  v15 = [a1 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 podcast];
  if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0;
  }

  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v23;
  *(a2 + 72) = v25;
}

uint64_t sub_10026BC28(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v4 = *(v1 + 5);
  v11 = *(v1 + 4);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = *(v1 + 8);
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C51C;

  return sub_100266B1C(v8, a1, v13, v12, v11, v4, v5, v6, v7);
}

uint64_t sub_10026BD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A0A0, &qword_100407188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10026BDB4()
{
  sub_100168088(&unk_10057A0C0, &qword_100407198);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];

  sub_10026A458(v1, v2, v3, v4, v5);
}

void sub_10026BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {

LABEL_4:

    return;
  }

  if (!a5)
  {

    goto LABEL_4;
  }
}

uint64_t sub_10026BE94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[15];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10026504C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10026BF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10026BFD4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100168088(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10026C0C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_100168088(a1, a2) - 8);
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a3(v5, v6, v7, v8);
}

unint64_t sub_10026C13C()
{
  result = qword_10057A0F0;
  if (!qword_10057A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A0F0);
  }

  return result;
}

id sub_10026C2C4(void *a1)
{
  v2 = v1;
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v5 = &v17 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.userActivity.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received request to pause playback (receiver has confirmed handoff)", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v15 = v2;
  sub_100217CC4(0, 0, v5, &unk_1004071C8, v14);

  return [a1 close];
}

uint64_t sub_10026C4FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_100269E14(a1, v4, v5, v6);
}

__n128 sub_10026C5D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10026C5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10026C648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10026C6D0()
{
  result = qword_10057A100;
  if (!qword_10057A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A100);
  }

  return result;
}

unint64_t sub_10026C728()
{
  result = qword_10057A108;
  if (!qword_10057A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A108);
  }

  return result;
}

__n128 sub_10026C77C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10026C7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_10026C7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026C850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026C898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t LegacyEnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10026C9BC;

  return sub_10026F688(a1, a2);
}

uint64_t sub_10026C9BC(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

void sub_10026CAEC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = sub_100168088(&qword_10057A148, &unk_100407680);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin();
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 11) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_1002706F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10026D330;
  aBlock[3] = &unk_1004E7E38;
  v17 = _Block_copy(aBlock);

  [a2 resolveActivePlayerPathWithCompletion:v17];
  _Block_release(v17);
}

void sub_10026CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v24 = a5;
  v23 = a4;
  v8 = sub_100168088(&qword_10057A148, &unk_100407680);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v16 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v15, v12);
    (*(v9 + 16))(v11, a3, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    aBlock[4] = sub_1002707BC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10026D2DC;
    aBlock[3] = &unk_1004E7E88;
    v19 = _Block_copy(aBlock);

    MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer();
    _Block_release(v19);
  }

  else
  {
    v20 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
    v21 = swift_allocError();
    *v22 = a2;
    (*(*(v20 - 8) + 104))(v22, enum case for RemoteQueueOperationError.pathResolutionError(_:), v20);
    aBlock[0] = v21;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10026D034(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.playback.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v20[1] = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v21 = a1;
      type metadata accessor for MRMediaRemoteError(0);
      v13 = String.init<A>(describing:)();
      v15 = sub_1000153E0(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to resolve active player path with error: %s", v11, 0xCu);
      sub_100004590(v12);
    }

    (*(v5 + 8))(v7, v4);
    v16 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
    v17 = swift_allocError();
    *v18 = a1;
    (*(*(v16 - 8) + 104))(v18, enum case for RemoteQueueOperationError.mediaRemoteError(_:), v16);
    v22 = v17;
    sub_100168088(&qword_10057A148, &unk_100407680);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100168088(&qword_10057A148, &unk_100407680);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10026D2DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10026D330(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10026D3AC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1001A77CC(0, v4, 0);
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v9 >= v10 >> 1)
      {
        sub_1001A77CC((v10 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v11 = &_swiftEmptyArrayStorage[3 * v9];
      v11[4] = v7;
      v11[5] = v8;
      *(v11 + 48) = 2;
      v6 += 2;
      --v4;
    }

    while (v4);
    v3 = a2;
    v2 = v21;
  }

  v12 = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)();
  if (v2)
  {
  }

  v14 = v12;

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_20:

    *v3 = _swiftEmptyArrayStorage;
    return result;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_11:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v15 & 0x8000000000000000) == 0)
  {
    sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        IMPlayerItem.init(episode:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 = v17;
      }

      while (v15 != v17);
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v14 + v18);
        IMPlayerItem.init(episode:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 += 8;
        --v15;
      }

      while (v15);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10026D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10026D6E4;

  return sub_10026F688(a2, a3);
}

uint64_t sub_10026D6E4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10026D7F8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for EpisodeOffer();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  EpisodeOffersIntent = type metadata accessor for FetchEpisodeOffersIntent();
  v2[14] = EpisodeOffersIntent;
  v2[15] = *(EpisodeOffersIntent - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_100168088(&qword_10057A158, &qword_1004076A8);
  v6 = swift_task_alloc();
  v2[17] = v6;
  *v6 = v2;
  v6[1] = sub_10026D970;

  return BaseObjectGraph.inject<A>(_:)(v2 + 7, v5, v5);
}

uint64_t sub_10026D970()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10026E1BC;
  }

  else
  {
    v2 = sub_10026DA84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026DA84()
{
  v0[19] = v0[7];
  v1 = sub_100168088(&qword_10057A160, &qword_1004076B0);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_10026DB48;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10026DB48()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10026E22C;
  }

  else
  {
    v2 = sub_10026DC5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026DC5C()
{
  if ([*(v0 + 152) isReachable])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_1000044A0((v0 + 16), v1);

    FetchEpisodeOffersIntent.init(adamIDs:)();
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    v4 = sub_1002708F4(&unk_10057A170, &type metadata accessor for FetchEpisodeOffersIntent, &protocol conformance descriptor for FetchEpisodeOffersIntent);
    *v3 = v0;
    v3[1] = sub_10026DE94;
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 64, v5, v7, v6, v4, v1, v2);
  }

  else
  {
    v8 = type metadata accessor for PodcastsPlaybackError.PlayerError();
    sub_1002708F4(&qword_10057A168, &type metadata accessor for PodcastsPlaybackError.PlayerError, &protocol conformance descriptor for PodcastsPlaybackError.PlayerError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PodcastsPlaybackError.PlayerError.noInternet(_:), v8);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100004590((v0 + 16));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10026DE94()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_10026E2A4;
  }

  else
  {
    v3 = sub_10026DFFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026DFFC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = v0[13];
      v10 = v0[11];
      v5(v9, v7, v10);
      v11 = sub_100294534();
      (*(v4 - 8))(v9, v10);
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  swift_unknownObjectRelease();
  sub_100004590(v0 + 2);

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_10026E1BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E22C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E2A4()
{
  swift_unknownObjectRelease();
  sub_100004590((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026E324(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for TaskPriority();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_100168088(&unk_1005738E0, &qword_1004010A0);
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_10026E49C;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v4, v4);
}

uint64_t sub_10026E49C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10026E9D8;
  }

  else
  {
    v2 = sub_10026E5B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026E5B0()
{
  v1 = v0[12];
  swift_getObjectType();
  static Task<>.currentPriority.getter();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v0[13] = v2;
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v10 = swift_allocObject();
    v0[14] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v9;
    (*(v8 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v5;

    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_100168088(&qword_100575C00, &qword_100402E48);
    *v11 = v0;
    v11[1] = sub_10026E7C8;
    v13 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v13, sub_10027093C, v10, v12);
  }
}

uint64_t sub_10026E7C8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_10026EA48;
  }

  else
  {
    v3 = sub_10026E94C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E94C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026E9D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026EA48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10026EAC0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_100168088(&qword_10057A0A0, &qword_100407188);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for MediaIdentifier();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10026EBC4, 0, 0);
}

uint64_t sub_10026EBC4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  EnqueueEpisodeForPlaybackIntent.episodeID.getter();
  MediaIdentifier.init(episodeID:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100270838(v0[10]);
    sub_1002708A0();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  (*(v7 + 32))(v5, v0[10], v6);
  (*(v7 + 16))(v4, v5, v6);
  v8 = (*(v7 + 88))(v4, v6);
  if (v8 == enum case for MediaIdentifier.podcast(_:))
  {
LABEL_4:
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v12 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for RemoteQueueOperationError.podcastsNotSupported(_:), v12);
    swift_willThrow();
    (*(v11 + 8))(v9, v10);
    goto LABEL_5;
  }

  if (v8 == enum case for MediaIdentifier.episodes(_:))
  {
    v16 = v0[13];
    (*(v0[12] + 96))(v16, v0[11]);
    v17 = *v16;
    v0[15] = v17;
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_10026F1A0;
    v19 = v0[9];

    return sub_10026D7F8(v17, v19);
  }

  else
  {
    if (v8 != enum case for MediaIdentifier.localEpisodes(_:))
    {
      if (v8 != enum case for MediaIdentifier.localPodcast(_:))
      {
        if (v8 == enum case for MediaIdentifier.station(_:))
        {
          v23 = v0[14];
          v24 = v0[11];
          v25 = *(v0[12] + 8);
          v25(v0[13], v24);
          v26 = type metadata accessor for RemoteQueueOperationError();
          sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
          swift_allocError();
          (*(*(v26 - 8) + 104))(v27, enum case for RemoteQueueOperationError.stationsNotSupported(_:), v26);
          swift_willThrow();
          v25(v23, v24);
        }

        else
        {
          v28 = v0[12];
          v29 = enum case for MediaIdentifier.library(_:);
          v30 = v8;
          v31 = type metadata accessor for RemoteQueueOperationError();
          sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
          swift_allocError();
          v33 = *(*(v31 - 8) + 104);
          v34 = (v28 + 8);
          v35 = v0[14];
          if (v30 == v29)
          {
            v36 = v0[11];
            v33(v32, enum case for RemoteQueueOperationError.libraryNotSupported(_:), v31);
            swift_willThrow();
            (*v34)(v35, v36);
          }

          else
          {
            v37 = v0[13];
            v38 = v0[11];
            v33(v32, enum case for RemoteQueueOperationError.unknownRequest(_:), v31);
            swift_willThrow();
            v39 = *v34;
            (*v34)(v35, v38);
            v39(v37, v38);
          }
        }

LABEL_5:

        v14 = v0[1];

        return v14();
      }

      (*(v0[12] + 8))(v0[13], v0[11]);
      goto LABEL_4;
    }

    v20 = v0[13];
    (*(v0[12] + 96))(v20, v0[11]);
    v21 = *v20;
    v0[18] = v21;
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_10026F414;

    return sub_10026E324(v21);
  }
}

uint64_t sub_10026F1A0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_10026F37C;
  }

  else
  {
    v4 = sub_10026F2D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026F2D8()
{
  v1 = v0[3];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10026F37C()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10026F414(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_10026F5F0;
  }

  else
  {
    v4 = sub_10026F54C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026F54C()
{
  v1 = v0[6];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10026F5F0()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10026F688(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for PlaybackController.QueueCommand.Location();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100009F1C(0, &qword_10057A120, off_1004D1B28);
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_10026F7A8;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v4, v4);
}

uint64_t sub_10026F7A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10027055C;
  }

  else
  {
    v2 = sub_10026F8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026F8BC()
{
  v0[11] = v0[2];
  v1 = sub_100009F1C(0, &qword_10057A128, off_1004D1B20);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10026F984;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v1, v1);
}

uint64_t sub_10026F984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1002705C0;
  }

  else
  {
    v2 = sub_10026FA98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026FA98()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v0 + 112) = v4;
  EnqueueEpisodeForPlaybackIntent.location.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for PlaybackController.QueueCommand.Location.before(_:) || v5 == enum case for PlaybackController.QueueCommand.Location.after(_:))
  {
    v7 = *(v0 + 88);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v8 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for RemoteQueueOperationError.unsupportedQueuePosition(_:), v8);
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    if (v5 == enum case for PlaybackController.QueueCommand.Location.queueHead(_:))
    {
      v12 = 0;
    }

    else
    {
      if (v5 != enum case for PlaybackController.QueueCommand.Location.queueTail(_:))
      {
        (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      }

      v12 = 1;
    }

    *(v0 + 168) = v12;
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_10026FCE4;
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);

    return sub_10026EAC0(v15, v14);
  }
}

uint64_t sub_10026FCE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1002702D4;
  }

  else
  {
    v4 = sub_10026FDF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026FDF8()
{
  v33 = v0;
  v1 = *(v0 + 128);
  v32 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v2; i = *(v0 + 128))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v7 + 8 * v4);
      }

      v9 = v8;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v1 = type metadata accessor for RestrictionsController();
      if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || ([v9 isExplicit] & 1) == 0) && (objc_msgSend(v9, "isEntitled"))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v32;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v0 == v2)
      {
        v0 = v31;
        v10 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_20:
  v11 = *(v0 + 112);

  sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [v11 playbackQueueWithAccountInfoForPlayerItems:isa];

  if (v13)
  {
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
LABEL_43:
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *(v10 + 16);
    }

    v15 = 0;
    do
    {
      if (v14 == v15)
      {

        v23 = type metadata accessor for PodcastsPlaybackError.FairPlayError();
        sub_1002708F4(&qword_10057A140, &type metadata accessor for PodcastsPlaybackError.FairPlayError, &protocol conformance descriptor for PodcastsPlaybackError.FairPlayError);
        swift_allocError();
        (*(*(v23 - 8) + 104))(v24, enum case for PodcastsPlaybackError.FairPlayError.notEntitled(_:), v23);
        swift_willThrow();
        v19 = *(v0 + 112);
        v20 = *(v0 + 88);
        goto LABEL_35;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v10 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v18 = [v16 isEntitled];

      ++v15;
    }

    while ((v18 & 1) == 0);
    v27 = *(v0 + 168);
    v28 = *(v0 + 88);

    v29 = swift_task_alloc();
    *(v0 + 144) = v29;
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v27;
    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *v30 = v0;
    v30[1] = sub_100270348;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, 0, 0, 0xD000000000000022, 0x800000010046B900, sub_1002706EC, v29, &type metadata for () + 1);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);

    v21 = type metadata accessor for RemoteQueueOperationError();
    sub_1002708F4(&qword_10057A138, &type metadata accessor for RemoteQueueOperationError, &protocol conformance descriptor for RemoteQueueOperationError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for RemoteQueueOperationError.unableToIdentifyQueue(_:), v21);
    swift_willThrow();
LABEL_35:

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1002702D4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100270348()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1002704E0;
  }

  else
  {

    v2 = sub_100270464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100270464()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1002704E0()
{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027055C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002705C0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100270630()
{
  result = qword_10057A110;
  if (!qword_10057A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A110);
  }

  return result;
}

void sub_1002706F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100168088(&qword_10057A148, &unk_100407680) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 11) & 0xFFFFFFFFFFFFFFF8));

  sub_10026CCC8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1002707BC(int a1)
{
  v3 = *(sub_100168088(&qword_10057A148, &unk_100407680) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10026D034(a1, v4);
}

uint64_t sub_100270838(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057A0A0, &qword_100407188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002708A0()
{
  result = qword_10057A150;
  if (!qword_10057A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A150);
  }

  return result;
}

uint64_t sub_1002708F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100270A4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_100168088(&qword_10057A270, &qword_1004076D8);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_100270D80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100270DF4(uint64_t a1)
{
  v74 = type metadata accessor for URL();
  v2 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_10057A278, UIOpenURLContext_ptr);
    sub_100031980(&qword_10057A280, &qword_10057A278, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v80;
    v4 = v81;
    v5 = v82;
    v6 = v83;
    v7 = v84;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v63 = v5;
  v11 = (v5 + 64) >> 6;
  v73 = (v2 + 8);
  v68 = UIApplicationOpenURLOptionsSourceApplicationKey;
  v67 = UIApplicationOpenURLOptionsAnnotationKey;
  v66 = UIApplicationOpenURLOptionsOpenInPlaceKey;
  v65 = xmmword_100400790;
  v12 = &type metadata for String;
  v71 = v4;
  v69 = a1;
  v64 = v11;
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (*&v77[0] = v18, sub_100009F1C(0, &qword_10057A278, UIOpenURLContext_ptr), swift_dynamicCast(), v17 = v78, v15 = v6, v16 = v7, !v78))
    {
LABEL_40:
      sub_1000319D8(a1);
      return;
    }

LABEL_20:
    v75 = v16;
    v19 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v20 = static OS_os_log.launch.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v21 = v12;
    v22 = swift_allocObject();
    *(v22 + 16) = v65;
    v23 = [v17 URL];
    v24 = v72;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = URL.absoluteString.getter();
    v27 = v26;
    v70 = *v73;
    v70(v24, v74);
    *(v22 + 56) = v21;
    *(v22 + 64) = sub_100022C18();
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Open URL context: %s", v63);

    v28 = v68;
    v29 = [v17 options];
    v30 = [v29 sourceApplication];

    if (v30)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(&v79 + 1) = v21;
      *&v78 = v31;
      *(&v78 + 1) = v33;
      sub_10016B7CC(&v78, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = &_swiftEmptyDictionarySingleton;
      sub_10025F224(v77, v28, isUniquelyReferenced_nonNull_native);

      v35 = v76;
      v12 = v21;
      v36 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
    }

    else
    {
      v35 = &_swiftEmptyDictionarySingleton;
      v37 = sub_100202D0C();
      v12 = v21;
      if (v38)
      {
        v39 = v37;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = &_swiftEmptyDictionarySingleton;
        v36 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
        if ((v40 & 1) == 0)
        {
          sub_100260338();
          v35 = *&v77[0];
        }

        sub_10016B7CC((v35[7] + 32 * v39), &v78);
        sub_1002927D8(v39, v35);
      }

      else
      {
        v78 = 0u;
        v79 = 0u;
        v36 = &selRef__frcDidChangeResults_uuidToManagedObjectIDMap_;
      }

      sub_10016B3CC(&v78);
    }

    v41 = v67;
    v42 = [v17 options];
    v43 = [v42 annotation];

    if (v43)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10016B7CC(&v78, v77);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v35;
      sub_10025F224(v77, v41, v44);

      v35 = v76;
    }

    else
    {
      v45 = sub_100202D0C();
      if (v46)
      {
        v47 = v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v35;
        if ((v48 & 1) == 0)
        {
          sub_100260338();
          v35 = *&v77[0];
        }

        sub_10016B7CC((v35[7] + 32 * v47), &v78);
        sub_1002927D8(v47, v35);
      }

      else
      {
        v78 = 0u;
        v79 = 0u;
      }

      sub_10016B3CC(&v78);
    }

    v49 = [v17 options];
    v50 = [v49 openInPlace];

    *(&v79 + 1) = &type metadata for Bool;
    LOBYTE(v78) = v50;
    sub_10016B7CC(&v78, v77);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v35;
    sub_10025F224(v77, v66, v51);
    v52 = objc_opt_self();
    v53 = [v52 sharedApplication];
    v54 = [v53 delegate];

    if (!v54)
    {

LABEL_9:

      goto LABEL_10;
    }

    if (([v54 respondsToSelector:v36[510]] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v55 = v12;
    v56 = [v52 sharedApplication];
    v57 = [v17 URL];
    v58 = v72;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    type metadata accessor for OpenURLOptionsKey(0);
    sub_100271CA4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 v36[510]];
    swift_unknownObjectRelease();

    v12 = v55;
    v11 = v64;

    v70(v58, v74);
LABEL_10:
    v6 = v15;
    v7 = v75;
    a1 = v69;
    v4 = v71;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_40;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1002715E8(uint64_t a1, uint64_t a2)
{
  v4 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v5 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100022C18();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Will continue user activity type: %{public}s", 44, 2, v6);

  v7 = objc_opt_self();
  v8 = [v7 sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    if ([v9 respondsToSelector:"application:willContinueUserActivityWithType:"])
    {
      v10 = [v7 sharedApplication];
      v11 = String._bridgeToObjectiveC()();
      [v9 application:v10 willContinueUserActivityWithType:v11];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002717D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v6 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004007C0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100022C18();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  swift_getErrorValue();

  v9 = Error.localizedDescription.getter();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Did fail to continue user activity type: %{public}s\nerror: %{public}s", 69, 2, v7);

  v11 = objc_opt_self();
  v12 = [v11 sharedApplication];
  v13 = [v12 delegate];

  if (v13)
  {
    if ([v13 respondsToSelector:"application:didFailToContinueUserActivityWithType:error:"])
    {
      v14 = [v11 sharedApplication];
      v15 = String._bridgeToObjectiveC()();
      v16 = _convertErrorToNSError(_:)();
      [v13 application:v14 didFailToContinueUserActivityWithType:v15 error:v16];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002719DC(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v6 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100400790;
  v8 = [a1 type];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100022C18();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Perform shortcut action type: %{public}s", 40, 2, v7);

  v12 = objc_opt_self();
  v13 = [v12 sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    if ([v14 respondsToSelector:"application:performActionForShortcutItem:completionHandler:"])
    {
      swift_unknownObjectRetain();
      v15 = [v12 sharedApplication];
      v18[4] = sub_1002353FC;
      v18[5] = v4;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_1002016BC;
      v18[3] = &unk_1004E7F28;
      v16 = _Block_copy(v18);

      [v14 application:v15 performActionForShortcutItem:a1 completionHandler:v16];
      swift_unknownObjectRelease_n();

      _Block_release(v16);
    }

    swift_unknownObjectRelease();
  }

  a2[2](a2, 0);
}

unint64_t sub_100271CA4()
{
  result = qword_100573110;
  if (!qword_100573110)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573110);
  }

  return result;
}

id sub_100271D14(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = a3;
  v34 = a4;
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v35 = &v33[-v5];
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v7 = &v33[-v6];
  v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v13 = &v33[-v12];
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  BaseObjectGraph.inject<A>(_:)();
  v38 = aBlock[0];
  LegacyLockup.title.getter();
  v15 = v14;
  v37 = a1;
  sub_1002722D0();
  v17 = v16;
  if (v15)
  {
    v18 = String._bridgeToObjectiveC()();

    if (v17)
    {
LABEL_3:
      v19 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v18 detailText:v19 image:0 accessoryImage:0 accessoryType:1];

  LegacyLockup.artwork.getter();
  CarPlayPageLoadCoordinator.loadImage(for:into:)(v13, v20);
  sub_10021F030(v13);
  v21 = v36;
  v22 = *(v36 + 64);
  if (v22 == 255)
  {
    *v11 = LibraryShowLockup.uuid.getter();
    *(v11 + 1) = v26;
    v25 = 16;
    LOBYTE(v22) = v34;
  }

  else
  {
    v23 = *(v36 + 16);
    *v11 = *v36;
    *(v11 + 1) = v23;
    v24 = *(v21 + 48);
    *(v11 + 2) = *(v21 + 32);
    *(v11 + 3) = v24;
    v25 = 64;
  }

  v11[v25] = v22;
  swift_storeEnumTagMultiPayload();
  v27 = v35;
  sub_1002724B0(v11, v35);
  v28 = *(v9 + 56);
  v28(v27, 0, 1, v8);
  v28(v7, 1, 1, v8);
  v29 = type metadata accessor for CarPlayTemplateInfo(0);
  v30 = *(v29 + 20);
  sub_100272514(v21, aBlock);
  sub_1001FBB44(v27, v7);
  v7[v30] = 0;
  (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  sub_1001D2AD4(v7);
  aBlock[4] = sub_100272584;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004E7FA0;
  v31 = _Block_copy(aBlock);

  [v20 setHandler:v31];
  _Block_release(v31);

  sub_10027258C(v11);
  return v20;
}

uint64_t sub_10027217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_1004076E8, v12);
}

uint64_t sub_1002722D0()
{
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v0 = LegacyLockup.subtitle.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v0;
  v3 = v1;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

LABEL_9:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v5 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100243134((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v3;
LABEL_10:
  if (LegacyLockup.isExplicit.getter())
  {
    v9 = ExplicitContentPresenter.symbol.getter();
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_100243134((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0, &qword_100403E20);
  sub_1001A4604();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_1002724B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100575040, &qword_100402708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027258C(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002725E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_1002726BC(uint64_t a1)
{
  sub_100168088(&qword_10057A428, &qword_1004077B0);
  __chkstk_darwin();
  v4 = &v27 - v3;
  v36 = type metadata accessor for MediaLibraryPid();
  v5 = *(v36 - 8);
  __chkstk_darwin();
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v27 - v7;
  v32 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
    sub_100276194();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v31 = v10;
  v34 = (v5 + 48);
  v35 = (v5 + 56);
  v33 = _swiftEmptyArrayStorage;
  v27 = v5;
  v28 = (v5 + 32);
  while (a1 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v37 = v19, sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr), swift_dynamicCast(), (v18 = v43) == 0))
    {
LABEL_24:
      sub_1000319D8(a1);
      return v33;
    }

LABEL_17:
    [v18 persistentID];
    MediaLibraryPid.init(uint64Value:)();
    v20 = v36;
    (*v35)(v4, 0, 1, v36);

    if ((*v34)(v4, 1, v20) == 1)
    {
      result = sub_100009104(v4, &qword_10057A428, &qword_1004077B0);
    }

    else
    {
      v21 = *v28;
      v22 = v36;
      (*v28)(v29, v4, v36);
      v21(v30, v29, v22);
      v23 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_100243BFC(0, v33[2] + 1, 1, v33);
      }

      v25 = v33[2];
      v24 = v33[3];
      if (v25 >= v24 >> 1)
      {
        v33 = sub_100243BFC((v24 > 1), v25 + 1, 1, v33);
      }

      v26 = v33;
      v33[2] = v25 + 1;
      result = (v23)(v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, v30, v36);
    }
  }

  v16 = v11;
  v17 = v12;
  if (v12)
  {
LABEL_13:
    v12 = (v17 - 1) & v17;
    v18 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v11 >= ((v10 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v17 = *(v9 + 8 * v11);
    ++v16;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100272B30@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100276534(v1 + 88, &v5);
  if (v6)
  {
    return sub_1000109E4(&v5, a1);
  }

  v4 = sub_100009104(&v5, &qword_10057A478, &qword_1004077F8);
  (*(v1 + 72))(v4);
  sub_100004428(a1, &v5);
  swift_beginAccess();
  sub_1002765A4(&v5, v1 + 88);
  return swift_endAccess();
}

uint64_t sub_100272BFC(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  sub_100168088(&qword_100573600, &qword_100400B70);
  __chkstk_darwin();
  v6 = (&v37 - v5);
  v40 = type metadata accessor for URL();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  *&v11 = __chkstk_darwin().n128_u64[0];
  v39 = &v37 - v12;
  v13 = [a1 mediaLibraryDictionary];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_100257E20(v14);

  v16 = sub_100275D9C(v15, v3[2], v3[3]);

  if (v16)
  {
    v17 = [a1 itemFilePath];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = v38;
      v20 = *(v38 + 32);
      v21 = v39;
      v22 = v10;
      v23 = v40;
      v20(v39, v22, v40);
      sub_100272B30(v46);
      v37 = v3[21];
      sub_100004428((v3 + 16), v45);
      (*(v19 + 16))(v8, v21, v23);
      sub_100004428(v46, v44);
      v24 = (*(v19 + 80) + 88) & ~*(v19 + 80);
      v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v26[2] = v3;
      v26[3] = v16;
      v27 = v42;
      v26[4] = v41;
      v26[5] = v27;
      sub_1000109E4(v45, (v26 + 6));
      v28 = v26 + v24;
      v29 = v40;
      v20(v28, v8, v40);
      sub_1000109E4(v44, v26 + v25);
      aBlock[4] = sub_1002763C0;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100273A94;
      aBlock[3] = &unk_1004E81F8;
      v30 = _Block_copy(aBlock);

      v31 = v16;

      [v37 requestMediaLibraryWriteTransaction:v30];
      _Block_release(v30);

      sub_100004590(v46);
      return (*(v19 + 8))(v39, v29);
    }

    sub_100276208();
    v35 = swift_allocError();
    *v36 = 3;
    *v6 = v35;
    swift_storeEnumTagMultiPayload();
    v41(v6);
  }

  else
  {
    sub_100276208();
    v33 = swift_allocError();
    *v34 = 0;
    *v6 = v33;
    swift_storeEnumTagMultiPayload();
    v41(v6);
  }

  return sub_100009104(v6, &qword_100573600, &qword_100400B70);
}

uint64_t sub_1002730AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a4;
  v24 = a3;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = a2[7];
  v16 = a2[8];
  sub_1000044A0(a2 + 4, v15);
  sub_100004428(a6, v26);
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  sub_100004428(v22, v25);
  v17 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = a5;
  sub_1000109E4(v26, v18 + 32);
  (*(v13 + 32))(v18 + v17, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_1000109E4(v25, v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(v16 + 8);

  v19(v24, 6, UInt64.int64Representation.getter, 0, sub_100276468, v18, v15, v16);

  return 1;
}

uint64_t sub_1002732A4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), void (*a6)(char *, char *, uint64_t), void *a7, uint64_t a8, void *a9)
{
  v69 = a8;
  v70 = a7;
  v15 = type metadata accessor for MediaLibraryPid();
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  __chkstk_darwin();
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v64 - v19;
  __chkstk_darwin();
  v71 = &v64 - v21;
  sub_100168088(&qword_100573600, &qword_100400B70);
  __chkstk_darwin();
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v26 = (&v64 - v25);
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v29 = a2;
    }

    else
    {
      sub_100276208();
      v29 = swift_allocError();
      *v34 = 1;
    }

    *v23 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a5(v23);
    v33 = v23;
    return sub_100009104(v33, &qword_100573600, &qword_100400B70);
  }

  v68 = v24;
  if (a4 >> 60 == 15)
  {
    sub_100276208();
    v27 = swift_allocError();
    *v28 = 2;
    *v26 = v27;
    swift_storeEnumTagMultiPayload();
    a5(v26);
LABEL_8:
    v33 = v26;
    return sub_100009104(v33, &qword_100573600, &qword_100400B70);
  }

  sub_100009F1C(0, &qword_10057A440, NSKeyedUnarchiver_ptr);
  sub_100168088(&qword_10057A448, &unk_1004077C8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004007C0;
  *(v30 + 32) = sub_100009F1C(0, &qword_10057A450, NSArray_ptr);
  *(v30 + 40) = sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
  sub_10027636C(a3, a4);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v77)
  {
    sub_100009104(v76, &unk_1005783D0, &qword_1004031E0);
    goto LABEL_7;
  }

  sub_100168088(&qword_100573BD8, &qword_1004012A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_100276208();
    v31 = swift_allocError();
    *v32 = 2;
    *v26 = v31;
    swift_storeEnumTagMultiPayload();
    a5(v26);
    sub_1001F6D60(a3, a4);
    goto LABEL_8;
  }

  v36 = *(v74 + 16);
  if (v36)
  {
    v64 = a3;
    v65 = a4;
    v66 = a6;
    v67 = a5;
    v76[0] = _swiftEmptyArrayStorage;
    sub_1001A7804(0, v36, 0);
    v37 = v76[0];
    v38 = 32;
    do
    {
      MediaLibraryPid.init(_:)();
      v76[0] = v37;
      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        sub_1001A7804((v39 > 1), v40 + 1, 1);
        v37 = v76[0];
      }

      v37[2] = v40 + 1;
      (*(v73 + 32))(v37 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v40, v18, v72);
      v38 += 8;
      --v36;
    }

    while (v36);

    a5 = v67;
    a3 = v64;
    a4 = v65;
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v42 = v72;
  v41 = v73;
  if (!v37[2])
  {

    goto LABEL_7;
  }

  v43 = v37 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v66 = *(v73 + 16);
  v67 = (v73 + 16);
  v66(v20, v43, v72);

  v44 = v71;
  (*(v41 + 32))(v71, v20, v42);
  v45 = v41;
  v46 = v70[3];
  v47 = v70[4];
  sub_1000044A0(v70, v46);
  (*(*(v47 + 8) + 8))(&v74, v44, v46);
  if (v75)
  {
    v48 = a3;
    sub_1000109E4(&v74, v76);
    v49 = URL.path.getter();
    v51 = v50;
    v52 = v77;
    v53 = v78;
    sub_1000044A0(v76, v77);
    (*(v53 + 8))(v49, v51, 0, v52, v53);

    v54 = a9[3];
    v55 = a9[4];
    sub_1000044A0(a9, v54);
    v56 = v71;
    v57 = MediaLibraryPid.uint64Value.getter();
    v58 = (*(v55 + 8))(v57, 1, v54, v55);
    if (v58)
    {

      v59 = v72;
      v66(v26, v56, v72);
      swift_storeEnumTagMultiPayload();
      a5(v26);
      sub_1001F6D60(v48, a4);
      sub_100009104(v26, &qword_100573600, &qword_100400B70);
      (*(v73 + 8))(v56, v59);
    }

    else
    {
      sub_100276208();
      v62 = swift_allocError();
      *v63 = 4;
      *v26 = v62;
      swift_storeEnumTagMultiPayload();
      a5(v26);
      sub_1001F6D60(v48, a4);
      sub_100009104(v26, &qword_100573600, &qword_100400B70);
      (*(v73 + 8))(v56, v72);
    }

    return sub_100004590(v76);
  }

  else
  {
    sub_100009104(&v74, &qword_10057A438, &unk_1004077B8);
    sub_100276208();
    v60 = swift_allocError();
    *v61 = 4;
    *v26 = v60;
    swift_storeEnumTagMultiPayload();
    a5(v26);
    sub_1001F6D60(a3, a4);
    sub_100009104(v26, &qword_100573600, &qword_100400B70);
    return (*(v45 + 8))(v71, v72);
  }
}

uint64_t sub_100273A94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_100273AEC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v33 = a1;
  v5 = type metadata accessor for MediaLibraryPid();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_autoreleasePoolPush();
  v34 = _swiftEmptyArrayStorage;
  v9 = *(a2 + 16);
  v28 = v9;
  if (v9)
  {
    v12 = *(v6 + 16);
    v10 = v6 + 16;
    v11 = v12;
    v13 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    v32 = _swiftEmptyArrayStorage;
    v12(v8, v13, v5);
    while (1)
    {
      v15 = [v33 itemWithPersistentID:MediaLibraryPid.uint64Value.getter() verifyExistence:0];
      (*(v10 - 8))(v8, v5);
      if (v15)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v34;
      }

      v13 += v14;
      if (!--v9)
      {
        break;
      }

      v11(v8, v13, v5);
    }
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  v16 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v17 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004007C0;
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = v28;
  v19 = v32;
  if (v32 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v18 + 96) = &type metadata for Int;
  *(v18 + 104) = &protocol witness table for Int;
  *(v18 + 72) = v20;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Asked to delete %d episodes. About to delete %d episodes", v27, v28);

  sub_1001A5550(v19);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v33 deleteItems:isa];

  objc_autoreleasePoolPop(v29);
  if (v22)
  {
    v31(0, 0);
  }

  else
  {
    v23 = static os_log_type_t.error.getter();
    v24 = static OS_os_log.mediaLibrary.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Unsuccessful result code received while deleting items from Media Library.", 74, 2, _swiftEmptyArrayStorage);

    sub_100276208();
    swift_allocError();
    *v25 = 7;
    (v31)();
  }

  return v22;
}

void sub_100273E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for MediaLibraryPid();
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + 168);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, v21, v9);
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v7 + 32))(v16 + v15, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v25;
  *v17 = v24;
  v17[1] = v18;
  aBlock[4] = sub_100276264;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100273A94;
  aBlock[3] = &unk_1004E81A8;
  v19 = _Block_copy(aBlock);

  [v23 requestMediaLibraryWriteTransaction:v19];
  _Block_release(v19);
}

uint64_t sub_100274168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong[19];
    v10 = Strong[20];
    sub_1000044A0(Strong + 16, v9);
    (*(*(v10 + 8) + 8))(&v38, a4, v9);
    if (v39)
    {
      sub_1000109E4(&v38, v40);
      v11 = v41;
      v12 = v42;
      sub_1000044A0(v40, v41);
      v13 = (*(v12 + 24))(v11, v12);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v17 = v8[19];
        v18 = v8[20];
        sub_1000044A0(v8 + 16, v17);
        (*(v18 + 32))(v15, v16, v17, v18);

        v21 = Data.init(contentsOf:options:)();
        v23 = v22;
        v24 = v41;
        v25 = v42;
        sub_1000044A0(v40, v41);
        v26 = *(v25 + 16);
        sub_10027636C(v21, v23);
        v27 = v26(v21, v23, v24, v25);
        sub_1001F6D74(v21, v23);
        if (v27)
        {
          sub_1001F6D74(v21, v23);
          sub_100004590(v40);

          goto LABEL_12;
        }

        sub_100276208();
        swift_allocError();
        *v28 = 5;
        swift_willThrow();
        sub_1001F6D74(v21, v23);
      }

      else
      {
        sub_100276208();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
      }

      sub_100004590(v40);
    }

    else
    {
      sub_100009104(&v38, &qword_10057A438, &unk_1004077B8);
      sub_100276208();
      swift_allocError();
      *v19 = 4;
      swift_willThrow();
    }

    v29 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v30 = static OS_os_log.mediaLibrary.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100400790;
    v32 = _convertErrorToNSError(_:)();
    v33 = [v32 description];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100022C18();
    *(v31 + 32) = v34;
    *(v31 + 40) = v36;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Failed to add artwork: %@", 25, 2, v31);
  }

LABEL_12:
  a5(0, 0);
  return 1;
}

void sub_100274520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v7 = static OS_os_log.mediaLibrary.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "About to fetch restore candidates from Media Library.", 53, 2, _swiftEmptyArrayStorage);

  v8 = *(v3 + 168);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_10027625C;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100273A94;
  v11[3] = &unk_1004E8068;
  v10 = _Block_copy(v11);

  [v8 requestMediaLibraryWriteTransaction:v10];
  _Block_release(v10);
}

void sub_10027466C(void *a1, void (*a2)(void))
{
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.mediaLibrary.getter();
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Fetch restore candidates from Media Library.", 44, 2, _swiftEmptyArrayStorage);

  v4 = [objc_opt_self() downloadCandidateMediaItems];
  sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
  sub_100276194();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = static os_log_type_t.default.getter();
  v7 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v5 + 16);
  }

  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Found %d restore candidates in Media Library", v49);

  static Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;

  v13 = sub_1002753D4(v12, v11, 2592000.0);
  v54 = sub_1002726BC(v13);

  v57 = v13;
  v14 = sub_100274D08(v13, v5);
  v15 = static os_log_type_t.default.getter();
  v16 = static OS_os_log.mediaLibrary.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007E0;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *(v5 + 16);
  }

  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  if ((v57 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *(v57 + 16);
  }

  *(v17 + 96) = &type metadata for Int;
  *(v17 + 104) = &protocol witness table for Int;
  *(v17 + 72) = v19;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *(v14 + 16);
  }

  *(v17 + 136) = &type metadata for Int;
  *(v17 + 144) = &protocol witness table for Int;
  *(v17 + 112) = v20;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Reconcile podcasts downloads. Number of episodes %d. Downloaded within last 30 days %d, download post-restore %d", v50, v52, v57 & 1);

  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v22 = v59;
    v21 = v60;
    v23 = v61;
    v24 = v62;
    v25 = v63;
  }

  else
  {
    v26 = -1 << *(v14 + 32);
    v21 = (v14 + 56);
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v14 + 56);

    v24 = 0;
    v22 = v14;
  }

  v29 = (v23 + 64) >> 6;
  v30 = MPMediaEntityPropertyKeepLocal;
  if (v22 < 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v31 = v24;
    v32 = v25;
    v33 = v24;
    if (!v25)
    {
      break;
    }

LABEL_24:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v22 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
LABEL_30:
      sub_1000319D8(v22);

      v37 = sub_100275324(v57);
      sub_1001A5550(v37);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v39 = [a1 deleteItems:isa];

      if (v39)
      {
        v40 = static os_log_type_t.default.getter();
        v41 = static OS_os_log.mediaLibrary.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100400790;
        if (v53)
        {
          v43 = __CocoaSet.count.getter();
        }

        else
        {
          v43 = *(v57 + 16);
        }

        *(v42 + 56) = &type metadata for Int;
        *(v42 + 64) = &protocol witness table for Int;
        *(v42 + 32) = v43;
        os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Successfully deleted %d episodes, downloaded with last 30 days.", v51);

        (a2)(v54, 0);
      }

      else
      {

        v44 = static os_log_type_t.error.getter();
        v45 = static OS_os_log.mediaLibrary.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100400790;
        if (v53)
        {
          v47 = __CocoaSet.count.getter();
        }

        else
        {
          v47 = *(v57 + 16);
        }

        *(v46 + 56) = &type metadata for Int;
        *(v46 + 64) = &protocol witness table for Int;
        *(v46 + 32) = v47;
        os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Failed to delete %d episodes, downloaded with last 30 days.", v51);

        sub_100276208();
        swift_allocError();
        *v48 = 7;
        a2();
      }

      return;
    }

    while (1)
    {
      v36 = Int._bridgeToObjectiveC()().super.super.isa;
      [v35 setValue:v36 forProperty:v30];

      v24 = v33;
      v25 = v34;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_26:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v35 = v58;
        v33 = v24;
        v34 = v25;
        if (v58)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
      goto LABEL_30;
    }

    v32 = v21[v33];
    ++v31;
    if (v32)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

void *sub_100274D08(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_10036DA88(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100291B78(v5, v6);
LABEL_10:

  return sub_10036DFF0(a1, v2);
}

uint64_t sub_100274DFC()
{

  sub_100004590((v0 + 32));

  sub_100009104(v0 + 88, &qword_10057A478, &qword_1004077F8);
  sub_100004590((v0 + 128));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100274E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 168);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v10[4] = sub_1002761FC;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100273A94;
  v10[3] = &unk_1004E8018;
  v9 = _Block_copy(v10);

  [v7 requestMediaLibraryWriteTransaction:v9];
  _Block_release(v9);
}

void sub_100274FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100168088(&qword_100574690, &unk_100401BA0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002750B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100168088(&unk_100574680, &qword_100401740);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

int64_t sub_1002751A8(int64_t result, int64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v2)
  {
    if (v2 < 1)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v3 = a2;
    v4 = result;
    sub_100168088(&qword_100574820, &qword_1004066D0);
    v5 = swift_allocObject();
    result = j__malloc_size(v5);
    v6 = result - 32;
    if (result < 32)
    {
      v6 = result - 25;
    }

    if (v3 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    v5[1].i64[0] = v2;
    v5[1].i64[1] = 2 * (v6 >> 3);
    if (v3 != v4)
    {
      v8 = v3 - v7;
      v9 = v5 + 2;
      v10 = ~v4 + v3;
      if (v10 >= v8)
      {
        v10 = v8;
      }

      v11 = v10 + 1;
      if (v11 < 5)
      {
        v13 = 0;
        v14 = 1;
      }

      else
      {
        v12 = v11 & 3;
        if ((v11 & 3) == 0)
        {
          v12 = 4;
        }

        v13 = v11 - v12;
        v14 = v13 + 1;
        v9 = (v9 + 8 * v13);
        v15 = vaddq_s64(vdupq_n_s64(v3), xmmword_1004076F0);
        v16 = v5 + 3;
        v17.i64[0] = -1;
        v17.i64[1] = -1;
        v18 = vdupq_n_s64(0xFFFFFFFFFFFFFFFDLL);
        v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
        v20 = v13;
        do
        {
          v16[-1] = vaddq_s64(v15, v17);
          *v16 = vaddq_s64(v15, v18);
          v15 = vaddq_s64(v15, v19);
          v16 += 2;
          v20 -= 4;
        }

        while (v20);
        v3 -= v13;
      }

      v21 = v4 - v3;
      v22 = v3 - 1;
      while (v13 != v8)
      {
        v13 = v14;
        v9->i64[0] = v22;
        if (v2 == v14)
        {
          return v5;
        }

        v9 = (v9 + 8);
        ++v14;
        --v22;
        if (__CFADD__(v21++, 1))
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_23:
    __break(1u);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100275324(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100245200();

    v1 = sub_1002FE184(&v5, (v3 + 32), v2, v1);
    sub_1000319D8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_1002753D4(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31[1] = v10;
    v11 = &_swiftEmptySetSingleton;
    v33 = &_swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v12 = __CocoaSet.Iterator.next()();
    if (v12)
    {
      v13 = v12;
      sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
      v14 = v13;
      v15 = (v7 + 8);
      do
      {
        v31[3] = v14;
        swift_dynamicCast();
        v16 = [v32 dateAdded];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v18 = v17;
        (*v15)(v9, v6);
        v19 = v32;
        if (a2 - v18 >= a3)
        {
        }

        else
        {
          v20 = v11[2];
          if (v11[3] <= v20)
          {
            sub_10038F208(v20 + 1);
          }

          v11 = v33;
          result = NSObject._rawHashValue(seed:)(v33[5]);
          v22 = (v11 + 7);
          v23 = -1 << *(v11 + 32);
          v24 = result & ~v23;
          v25 = v24 >> 6;
          if (((-1 << v24) & ~v11[(v24 >> 6) + 7]) != 0)
          {
            v26 = __clz(__rbit64((-1 << v24) & ~v11[(v24 >> 6) + 7])) | v24 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = 0;
            v28 = (63 - v23) >> 6;
            do
            {
              if (++v25 == v28 && (v27 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v29 = v25 == v28;
              if (v25 == v28)
              {
                v25 = 0;
              }

              v27 |= v29;
              v30 = *&v22[8 * v25];
            }

            while (v30 == -1);
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          }

          *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
          *(v11[6] + 8 * v26) = v19;
          ++v11[2];
        }

        v14 = __CocoaSet.Iterator.next()();
      }

      while (v14);
    }
  }

  else
  {
    v11 = sub_1002756F8(a1, a2, a3);
  }

  return v11;
}

Swift::Int sub_1002756F8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v37 = type metadata accessor for Date();
  v8 = *(v37 - 8);
  __chkstk_darwin();
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = v13;
    v33 = v11;
    v34 = v4;
    v31[1] = v31;
    __chkstk_darwin();
    v35 = v31 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v14);
    v36 = 0;
    v15 = 0;
    v38 = a1;
    v4 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    a1 = v17 & *(a1 + 56);
    v18 = (v16 + 63) >> 6;
    v19 = v8 + 1;
    while (a1)
    {
      v20 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_12:
      v13 = v20 | (v15 << 6);
      v8 = *(*(v38 + 48) + 8 * v13);
      v23 = [v8 dateAdded];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v25 = v24;
      (*v19)(v10, v37);

      if (a2 - v25 < a3)
      {
        *&v35[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v27 = sub_100370020(v35, v32, v36, v38);

          return v27;
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v18)
      {
        goto LABEL_16;
      }

      v22 = *(v4 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        a1 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v29 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v29;
  }

  v30 = swift_slowAlloc();
  v27 = sub_100275CBC(v30, v13, a1, a2, a3);

  return v27;
}

void sub_100275A68(unint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v32 = a2;
  v33 = a1;
  v35 = type metadata accessor for Date();
  v8 = *(v35 - 8);
  __chkstk_darwin();
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v34 = 0;
  v12 = 0;
  v36 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v31[1] = v11;
  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v20 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = *(*(v36 + 48) + 8 * v24);
    v26 = [v25 dateAdded];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    (*v20)(v10, v35);

    if (a4 - v28 < a5)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_15:
        v30 = v36;

        sub_100370020(v33, v32, v34, v30);

        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_15;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100275CBC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    sub_100275A68(a1, a2, a3, a4, a5);
    v13 = v12;

    return v13;
  }

  return result;
}

id sub_100275D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&qword_10057A458, &qword_1004077D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = 0x74695F6B63617274;
  *(inited + 40) = 0xEB00000000736D65;
  sub_100168088(&qword_10057A460, &qword_1004077E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  *(v5 + 32) = a1;
  *(inited + 48) = v5;

  sub_10016A218(inited);
  swift_setDeallocating();
  sub_100009104(inited + 32, &qword_10057A468, &qword_1004077E8);
  v6 = objc_opt_self();
  sub_100168088(&qword_10057A470, &qword_1004077F0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = 0;
  v8 = [v6 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v18];

  v9 = v18;
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v13 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v14 = String._bridgeToObjectiveC()();

  if (v12 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = Data._bridgeToObjectiveC()().super.isa;
    sub_1001F6D60(v10, v12);
  }

  v16 = [objc_allocWithZone(ML3DatabaseImport) initWithLibraryPath:v14 trackData:v15 playlistData:0];

  return v16;
}

void *sub_100276010()
{
  v0 = [objc_opt_self() postRestoreCandidateMediaItems];
  sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
  sub_100276194();
  v1 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_1002726BC(v1);
  v3 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v4 = static OS_os_log.mediaLibrary.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004007C0;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v1 + 16);
  }

  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = v2[2];
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Number of post-restore episodes in the Media Library %d, Number of created ids %d", v9, v10);

  return v2;
}

unint64_t sub_100276194()
{
  result = qword_10057E3D0;
  if (!qword_10057E3D0)
  {
    sub_100009F1C(255, &qword_1005747D0, MPMediaItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E3D0);
  }

  return result;
}

unint64_t sub_100276208()
{
  result = qword_10057A430;
  if (!qword_10057A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A430);
  }

  return result;
}

uint64_t sub_100276264(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for MediaLibraryPid() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100274168(a1, v8, v1 + v4, v1 + v7, v9);
}

uint64_t sub_10027636C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1002763C0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1002730AC(a1, v5, v6, v7, v8, (v1 + 6), v1 + v4, v9);
}

uint64_t sub_100276468(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  return sub_1002732A4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), (v4 + 32), v4 + v10, (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100276534(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A478, &qword_1004077F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002765A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057A478, &qword_1004077F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MediaLibraryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaLibraryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027676C()
{
  result = qword_10057A480;
  if (!qword_10057A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A480);
  }

  return result;
}

id sub_1002767D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v80 = a5;
  v84 = a3;
  v79 = a2;
  v93 = a1;
  v81 = *(type metadata accessor for ArtworkModel() - 8);
  __chkstk_darwin();
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v78 = (&v75 - v8);
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v77 = &v75 - v9;
  sub_100168088(&qword_10057A490, "ܪ\b");
  __chkstk_darwin();
  v11 = &v75 - v10;
  v96 = _s19EpisodeImageRowItemVMa(0);
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v75 - v13;
  __chkstk_darwin();
  v16 = &v75 - v15;
  if (a4 >> 62)
  {
    goto LABEL_49;
  }

  v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v89 = v7;
  if (v17)
  {
    v18 = 0;
    v95 = a4 & 0xC000000000000001;
    v19 = a4 & 0xFFFFFFFFFFFFFF8;
    v20 = (v91 + 48);
    v94 = _swiftEmptyArrayStorage;
    v90 = v16;
    v7 = v17;
    while (1)
    {
      if (v95)
      {
        v22 = a4;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a4 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v18 >= *(v19 + 16))
        {
          goto LABEL_48;
        }

        v22 = a4;

        a4 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v17 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_1002774F4(v11);
      if ((*v20)(v11, 1, v96) == 1)
      {
        sub_100009104(v11, &qword_10057A490, "ܪ\b");
      }

      else
      {
        sub_1002782D0(v11, v16, _s19EpisodeImageRowItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100243C24(0, v94[2] + 1, 1, v94);
        }

        v24 = v94[2];
        v23 = v94[3];
        if (v24 >= v23 >> 1)
        {
          v94 = sub_100243C24((v23 > 1), v24 + 1, 1, v94);
        }

        v25 = v94;
        v94[2] = v24 + 1;
        v26 = v25 + ((v91[80] + 32) & ~v91[80]) + *(v91 + 9) * v24;
        v16 = v90;
        sub_1002782D0(v90, v26, _s19EpisodeImageRowItemVMa);
      }

      ++v18;
      v21 = a4 == v7;
      a4 = v22;
      if (v21)
      {
        goto LABEL_20;
      }
    }
  }

  v94 = _swiftEmptyArrayStorage;
LABEL_20:
  v83 = a4;
  v27 = v94[2];
  if (v27 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = v94[2];
  }

  v29 = v89;
  if (!v27)
  {

    return 0;
  }

  v30 = v91;
  v31 = v94 + ((v30[80] + 32) & ~v30[80]);
  v76 = (2 * v28) | 1;
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  BaseObjectGraph.inject<A>(_:)();
  v87 = aBlock;
  aBlock = _swiftEmptyArrayStorage;
  v32 = &v14[*(v96 + 28)];
  v90 = objc_opt_self();
  v95 = *(v30 + 9);
  v86 = "defaultCoverImage";
  v85 = "CarPlayLoadArtwork";
  v82 = v31;
  v33 = v28;
  v88 = _swiftEmptyArrayStorage;
  v91 = v32;
  do
  {
    sub_100278454(v31, v14, _s19EpisodeImageRowItemVMa);
    [v90 maximumImageSize];
    v34 = v32[64];
    if (v34 == 255)
    {
      v43 = String._bridgeToObjectiveC()();
      v42 = [objc_opt_self() imageNamed:v43];

      if (!v42)
      {
LABEL_25:
        sub_10027870C(v14, _s19EpisodeImageRowItemVMa);
        goto LABEL_26;
      }
    }

    else
    {
      v35 = *(v32 + 7);
      sub_1002448C4(v35, v32[64]);
      static CGSize.* infix(_:_:)();
      v37 = v36;
      v39 = v38;
      v40 = Color.color.getter();
      v41 = objc_opt_self();
      v42 = [v41 imageWithSolidColor:v40 atSize:{v37, v39}];

      if (v42)
      {
        sub_1002448D8(v35, v34);
      }

      else
      {
        v44 = String._bridgeToObjectiveC()();
        v42 = [v41 imageNamed:v44];
        sub_1002448D8(v35, v34);

        if (!v42)
        {
          goto LABEL_25;
        }
      }
    }

    v45 = *&v14[*(v96 + 32) + 8];
    v46 = String._bridgeToObjectiveC()();
    v47 = String._bridgeToObjectiveC()();
    if (v45)
    {
      v45 = String._bridgeToObjectiveC()();
    }

    [objc_allocWithZone(CPListImageRowItemCondensedElement) initWithImage:v42 imageShape:1 title:v46 subtitle:v47 accessorySymbolName:v45];

    sub_10027870C(v14, _s19EpisodeImageRowItemVMa);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v29 = v89;
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v88 = aBlock;
LABEL_26:
    v31 += v95;
    --v33;
    v32 = v91;
  }

  while (v33);
  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v49 = v79;
  v50 = String._bridgeToObjectiveC()();
  sub_100009F1C(0, &qword_10057A498, CPListImageRowItemCondensedElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v52 = [v48 initWithText:v50 condensedElements:isa allowsMultipleLines:1];

  aBlock = _swiftEmptyArrayStorage;
  v53 = v52;
  sub_1001A7650(0, v28, 0);
  v54._rawValue = aBlock;
  v55 = v82;
  v56 = v81;
  do
  {
    v57 = v92;
    sub_100278454(v55, v92, _s19EpisodeImageRowItemVMa);
    sub_100278454(v57 + *(v96 + 28), v29, &type metadata accessor for ArtworkModel);
    sub_10027870C(v57, _s19EpisodeImageRowItemVMa);
    aBlock = v54._rawValue;
    v58 = v29;
    v60 = *(v54._rawValue + 2);
    v59 = *(v54._rawValue + 3);
    if (v60 >= v59 >> 1)
    {
      sub_1001A7650((v59 > 1), v60 + 1, 1);
      v56 = v81;
      v54._rawValue = aBlock;
    }

    *(v54._rawValue + 2) = v60 + 1;
    sub_1002782D0(v58, v54._rawValue + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v60, &type metadata accessor for ArtworkModel);
    v55 += v95;
    --v28;
    v29 = v58;
  }

  while (v28);
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v54, v53);

  v61 = v78;
  *v78 = v83;
  v62 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v63 = *(*(v62 - 8) + 56);
  v63(v61, 0, 1, v62);
  v64 = v77;
  v63(v77, 1, 1, v62);
  v65 = type metadata accessor for CarPlayTemplateInfo(0);
  v66 = *(v65 + 20);
  sub_1001FBB44(v61, v64);
  *(v64 + v66) = 0;
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  sub_1001D2AD4(v64);
  v67 = v93;
  v101 = sub_100278338;
  v102 = v93;
  aBlock = _NSConcreteStackBlock;
  v98 = 1107296256;
  v99 = sub_100372F30;
  v100 = &unk_1004E82D8;
  v68 = _Block_copy(&aBlock);

  [v53 setHandler:v68];
  _Block_release(v68);
  v69 = swift_allocObject();
  v70 = v82;
  *(v69 + 16) = v94;
  *(v69 + 24) = v70;
  v71 = v76;
  *(v69 + 32) = 0;
  *(v69 + 40) = v71;
  v72 = v84;
  *(v69 + 48) = v49;
  *(v69 + 56) = v72;
  *(v69 + 64) = v80;
  *(v69 + 72) = v67;
  v101 = sub_100278340;
  v102 = v69;
  aBlock = _NSConcreteStackBlock;
  v98 = 1107296256;
  v99 = sub_1002B1CD0;
  v100 = &unk_1004E8328;
  v73 = _Block_copy(&aBlock);

  [v53 setListImageRowHandler:v73];
  _Block_release(v73);

  return v53;
}

uint64_t sub_1002774F4@<X0>(uint64_t a3@<X8>)
{
  v48 = a3;
  v43 = _s27CarPlayEpisodeSubtitleStyleOMa(0);
  __chkstk_darwin();
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodePlayState();
  __chkstk_darwin();
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v6 = &v41 - v5;
  v7 = type metadata accessor for ArtworkModel();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s19EpisodeImageRowItemVMa(0);
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin();
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = LegacyLockup.title.getter();
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (v19 = dispatch thunk of LegacyLockup.playAction.getter()) == 0)
  {

LABEL_9:

    goto LABEL_10;
  }

  v42 = v19;
  LegacyLockup.artwork.getter();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1002782D0(v6, v10, &type metadata accessor for ArtworkModel);
    sub_100168088(&unk_100578420, &unk_100402000);
    BaseObjectGraph.inject<A>(_:)();
    sub_100168088(&unk_10057A4A0, &qword_100409850);
    BaseObjectGraph.inject<A>(_:)();
    LegacyLockup.adamId.getter();
    EpisodeStateController.stateMachine(for:)();
    v24 = v45;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    *v13 = v16;
    v13[1] = v17;
    LegacyEpisodeLockup.showTypeIsSerial.getter();
    v25 = LegacyLockup.isExplicit.getter();
    v26 = sub_100168088(&qword_1005812A0, qword_100401BB0);
    v27 = v44;
    v28 = &v44[*(v26 + 64)];
    *v27 = LegacyEpisodeLockup.episodeNumber.getter();
    *(v27 + 8) = v29 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v28 = LegacyEpisodeLockup.duration.getter();
    v28[8] = v30 & 1;
    swift_storeEnumTagMultiPayload();
    v31 = sub_1001A3250(v49, v25 & 1, v27);
    v33 = v32;
    sub_10027870C(v27, _s27CarPlayEpisodeSubtitleStyleOMa);
    v13[2] = v31;
    v13[3] = v33;
    v34 = v47;
    v35 = v13 + *(v47 + 24);
    *(v35 + 3) = type metadata accessor for Action();
    *(v35 + 4) = sub_100036A24();
    *v35 = v42;
    v35[40] = 0;
    type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    sub_100278454(v10, v13 + *(v34 + 28), &type metadata accessor for ArtworkModel);

    v36 = sub_100278590();
    v38 = v37;

    sub_10027870C(v24, &type metadata accessor for EpisodePlayState);
    sub_100004590(v49);
    sub_10027870C(v10, &type metadata accessor for ArtworkModel);
    v39 = (v13 + *(v34 + 32));
    *v39 = v36;
    v39[1] = v38;
    v40 = v48;
    sub_1002782D0(v13, v48, _s19EpisodeImageRowItemVMa);
    v22 = v34;
    v21 = v40;
    v20 = 0;
    return (*(v46 + 56))(v21, v20, 1, v22);
  }

  sub_100009104(v6, &unk_100578C10, &qword_100400B60);
LABEL_10:
  v20 = 1;
  v22 = v47;
  v21 = v48;
  return (*(v46 + 56))(v21, v20, 1, v22);
}

uint64_t sub_100277A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100407970, v12);
}

void sub_100277BAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v55 = a6;
  v59 = a3;
  v60 = a4;
  v15 = type metadata accessor for Logger();
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin();
  v17 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v58 = &v52[-v18];
  v19 = type metadata accessor for CarPlayTemplateInfo(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v54 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_100575AE0, &unk_100405E80);
  __chkstk_darwin();
  v23 = &v52[-v22];
  sub_100168088(&unk_100578410, &qword_100402DB0);
  __chkstk_darwin();
  v25 = &v52[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v27 = &v52[-v26];
  v28 = _s19EpisodeImageRowItemVMa(0);
  __chkstk_darwin();
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Attempted to select list image row item with invalid index!", v50, 2u);
    }

    v51 = (*(v56 + 8))(v17, v57);
    v59(v51);
  }

  else
  {
    v56 = a12;
    v53 = a11;
    v31 = &v52[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_100278454(v55 + *(v29 + 72) * a2, v31, _s19EpisodeImageRowItemVMa);
    v32 = objc_allocWithZone(CPListImageRowItem);
    v33 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_10057A498, CPListImageRowItemCondensedElement_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v32 initWithText:v33 condensedElements:isa allowsMultipleLines:1];

    v36 = *(v28 + 24);
    v57 = v31;
    sub_100278454(&v31[v36], v23, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v37 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v23, 0, 1, v37);
    v38(v27, 1, 1, v37);
    v39 = *(v19 + 20);
    sub_1001FBB44(v23, v27);
    v27[v39] = v53;
    (*(v20 + 56))(v27, 0, 1, v19);
    sub_1001D2D08(v27, v25);
    v40 = 0;
    if ((*(v20 + 48))(v25, 1, v19) != 1)
    {
      sub_100278454(v25, v54, type metadata accessor for CarPlayTemplateInfo);
      v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_10027870C(v25, type metadata accessor for CarPlayTemplateInfo);
    }

    [v35 setUserInfo:v40];
    swift_unknownObjectRelease();
    sub_100009104(v27, &unk_100578410, &qword_100402DB0);
    v41 = v58;
    static TaskPriority.userInitiated.getter();
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    type metadata accessor for MainActor();
    v43 = v56;

    v44 = v35;
    v45 = v60;

    v46 = static MainActor.shared.getter();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = &protocol witness table for MainActor;
    v47[4] = v43;
    v47[5] = v44;
    v47[6] = v59;
    v47[7] = v45;
    sub_10023EE80(0, 0, v41, &unk_100407958, v47);

    sub_10027870C(v57, _s19EpisodeImageRowItemVMa);
  }
}

uint64_t _s19EpisodeImageRowItemVMa(uint64_t a1)
{
  result = qword_10057A508;
  if (!qword_10057A508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002782D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100278380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100278454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002784BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100278590()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90, &unk_100401380);
  BaseObjectGraph.inject<A>(_:)();
  LegacyLockup.adamId.getter();
  EpisodeStateController.stateMachine(for:)();
  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {

    (*(v1 + 8))(v3, v0);
    return 0xD000000000000016;
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }
}

uint64_t sub_10027870C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100278794(uint64_t a1)
{
  type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkModel();
    if (v2 <= 0x3F)
    {
      sub_100278840();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100278840()
{
  if (!qword_1005779C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005779C8);
    }
  }
}

BOOL sub_100278890(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      return v2 == 1;
    }

    v4 = *a2;
    v3 = a2[1];
    if (*a1 == 0)
    {
      v5 = v3 | v4;
      return v2 == 2 && v5 == 0;
    }

    if (*a1 ^ 1 | *(a1 + 8))
    {
      if (v2 != 2 || v4 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v4 != 1)
    {
      return 0;
    }

    if (!v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  return 0;
}

void sub_10027891C(char a1)
{
  sub_1000044A0(v1 + 2, v1[5]);
  dispatch thunk of MediaLibraryClientProtocol.mostRecentRestoreToken.getter();
  if (v3)
  {
    if ((a1 & 1) == 0)
    {
      v4 = v1[10];
      v11 = String._bridgeToObjectiveC()();

LABEL_11:
      v12 = String._bridgeToObjectiveC()();
      [v4 setValue:v11 forKey:v12];

      return;
    }

    v4 = v1[10];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 valueForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {
        v11 = String._bridgeToObjectiveC()();

        goto LABEL_11;
      }
    }

    else
    {
      sub_100009104(v15, &unk_1005783D0, &qword_1004031E0);
    }

    v8 = 0x800000010046C260;
    sub_100030C30();
    swift_allocError();
    v10 = 0;
    v9 = 0xD000000000000050;
  }

  else
  {
    sub_100030C30();
    swift_allocError();
    v8 = 0;
    v9 = 2;
    v10 = 2;
  }

  *v7 = v9;
  *(v7 + 8) = v8;
  *(v7 + 16) = v10;
  swift_willThrow();
}

uint64_t sub_100278B4C(char a1)
{
  v2 = *(v1 + 80);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100009104(v9, &unk_1005783D0, &qword_1004031E0);
    return 0;
  }
}

void sub_100278C70(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10027B410(a5, a1 & 1);
  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100400790;
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = a5;
  if (a1)
  {
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "User decided to redownload all post-restore episodes.", 53, 2, v11);

    sub_10027A0B4(1, a2, a3);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "User decided to delete all post-restore episodes.", 49, 2, v11);

    sub_100278EF4(a2, a3);
  }
}

uint64_t sub_100278DC4(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v5 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100022C18();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Failed check if post-restore needed, error: %{public}s", 54, 2, v6);

  return a2(a1, 0, 1, 1);
}

void sub_100278EF4(void (*a1)(void), uint64_t a2)
{
  v5 = sub_10002F07C(1);
  if ((v7 & 0x100) == 0)
  {
    v8 = sub_100168088(&qword_10057A6D0, &qword_100407AE8);
    v9 = objc_allocWithZone(v8);
    v10 = &v9[*((swift_isaMask & *v9) + 0x180)];
    *v10 = 0;
    v10[8] = 2;
    v11 = &v9[*((swift_isaMask & *v9) + 0x188)];
    *v11 = sub_10027B784;
    v11[1] = v2;
    v117.receiver = v9;
    v117.super_class = v8;

    v108.super_class = objc_msgSendSuper2(&v117, "init");
    v12 = swift_allocObject();
    *(v12 + 16) = *(v2 + 64);
    v13 = sub_100168088(&qword_10057A6D8, &qword_100407AF0);
    v14 = objc_allocWithZone(v13);
    v15 = &v14[*((swift_isaMask & *v14) + 0x180)];
    *v15 = 0;
    v15[8] = 2;
    v16 = &v14[*((swift_isaMask & *v14) + 0x188)];
    *v16 = sub_10027B7E4;
    v16[1] = v12;
    v116.receiver = v14;
    v116.super_class = v13;
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v116, "init");
    v18 = *(v2 + 56);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = a1;
    v21 = sub_100168088(&qword_10057A6E0, &qword_100407AF8);
    v22 = objc_allocWithZone(v21);
    v23 = &v22[*((swift_isaMask & *v22) + 0x180)];
    *v23 = 0;
    v23[8] = 2;
    v24 = &v22[*((swift_isaMask & *v22) + 0x188)];
    *v24 = sub_10027B7EC;
    *(v24 + 1) = v19;
    v115.receiver = v22;
    v115.super_class = v21;
    swift_unknownObjectRetain();
    v25 = objc_msgSendSuper2(&v115, "init");
    v26 = sub_100168088(&qword_10057A6E8, &qword_100407B00);
    v27 = objc_allocWithZone(v26);
    v28 = &v27[*((swift_isaMask & *v27) + 0x180)];
    *v28 = 0;
    v28[8] = 2;
    v29 = &v27[*((swift_isaMask & *v27) + 0x188)];
    *v29 = sub_10027B7F4;
    v29[1] = v2;
    v114.receiver = v27;
    v114.super_class = v26;

    v108.receiver = objc_msgSendSuper2(&v114, "init");
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 2) = v30;
    *(v31 + 3) = v20;
    *(v31 + 4) = a2;
    v32 = sub_100168088(&unk_10057A690, &unk_100400AC0);
    v33 = objc_allocWithZone(v32);
    v34 = a2;
    v35 = v33;
    v36 = &v33[*((swift_isaMask & *v33) + 0x180)];
    *v36 = 0;
    v36[8] = 2;
    v37 = &v33[*((swift_isaMask & *v33) + 0x188)];
    *v37 = sub_10027B7FC;
    v37[1] = v31;
    v105 = v20;
    v106 = v34;
    sub_100013CB4(v20, v34);
    v113.receiver = v35;
    v113.super_class = v32;
    v107 = objc_msgSendSuper2(&v113, "init");
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = (v108.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v40 = *(v108.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v41 = *(v108.super_class + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    *v39 = sub_10027B81C;
    v39[1] = v38;

    sub_1000112B4(v40, v41);

    ObjectType = swift_getObjectType();
    v43 = swift_conformsToProtocol2();
    if (v43)
    {
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 24) = v44;
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v45;
      v48 = *(v44 + 72);
      v49 = v108.super_class;

      v48(sub_10003B6A0, v47, ObjectType, v44);

      v112.receiver = v17;
      v112.super_class = type metadata accessor for BaseOperation();
      v108.super_class = v112.super_class;
      objc_msgSendSuper2(&v112, "addDependency:", v49);

      v104 = v49;
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = (v17 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      v52 = *(v17 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      v53 = *(v17 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
      *v51 = sub_10027B824;
      v51[1] = v50;

      sub_1000112B4(v52, v53);

      v54 = swift_getObjectType();
      v55 = swift_conformsToProtocol2();
      if (v55)
      {
        v56 = v55;
        v57 = swift_allocObject();
        *(v57 + 24) = v56;
        swift_unknownObjectWeakInit();
        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        *(v59 + 24) = v57;
        v60 = *(v56 + 72);
        v61 = v17;

        v60(sub_10003B6A0, v59, v54, v56);

        v111.receiver = v25;
        v111.super_class = v108.super_class;
        objc_msgSendSuper2(&v111, "addDependency:", v61);

        v103 = v61;
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = (v25 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
        v64 = *(v25 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
        v65 = *(v25 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
        *v63 = sub_10027B81C;
        v63[1] = v62;

        sub_1000112B4(v64, v65);

        v66 = swift_getObjectType();
        v67 = swift_conformsToProtocol2();
        if (v67)
        {
          v68 = v67;
          v69 = swift_allocObject();
          *(v69 + 24) = v68;
          swift_unknownObjectWeakInit();
          v70 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v71 = swift_allocObject();
          *(v71 + 16) = v70;
          *(v71 + 24) = v69;
          v72 = *(v68 + 72);
          v73 = v25;

          v72(sub_10003B6A0, v71, v66, v68);

          v110 = v108;
          objc_msgSendSuper2(&v110, "addDependency:", v73);

          v102 = v73;
          v74 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v75 = (v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v76 = *(v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v77 = *(v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
          *v75 = sub_100182704;
          v75[1] = v74;

          sub_1000112B4(v76, v77);

          v78 = swift_getObjectType();
          v79 = swift_conformsToProtocol2();
          if (v79)
          {
            v80 = v79;
            v81 = swift_allocObject();
            *(v81 + 24) = v80;
            swift_unknownObjectWeakInit();
            v82 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v83 = swift_allocObject();
            *(v83 + 16) = v82;
            *(v83 + 24) = v81;
            v84 = *(v80 + 72);
            v85 = v108.receiver;
            v86 = v107;

            v84(sub_10003B6A0, v83, v78, v80);

            v109.receiver = v86;
            v109.super_class = v108.super_class;
            objc_msgSendSuper2(&v109, "addDependency:", v85);

            v87 = swift_allocObject();
            *(v87 + 16) = v105;
            *(v87 + 24) = v106;
            v88 = (v86 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
            v89 = *(v86 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
            v90 = *(v86 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8);
            *v88 = sub_10027B82C;
            v88[1] = v87;
            sub_100013CB4(v105, v106);
            sub_1000112B4(v89, v90);

            v91 = sub_10002EA1C();
            sub_100168088(&unk_100574680, &qword_100401740);
            v92 = swift_allocObject();
            *(v92 + 16) = xmmword_1004007F0;
            *(v92 + 32) = v104;
            *(v92 + 40) = v103;
            *(v92 + 48) = v102;
            *(v92 + 56) = v85;
            *(v92 + 64) = v86;
            sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
            v93 = v104;
            v94 = v103;
            v95 = v102;
            v96 = v85;
            v97 = v86;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v91 addOperations:isa waitUntilFinished:0];

            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a1)
  {
    v99 = v5;
    v100 = v6;
    v101 = v7;
    a1();
    v5 = v99;
    v6 = v100;
    LOBYTE(v7) = v101;
  }

  sub_1000316C4(v5, v6, v7, 1);
}

void sub_100279AE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10002DD30;
  *(v9 + 24) = v8;
  v10 = *(a4 + 16);

  v12 = v10(v11);

  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v12;
  v13[4] = sub_10027B890;
  v13[5] = v9;
  v16[4] = sub_10027B89C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000F038;
  v16[3] = &unk_1004E8840;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock:v14];
  _Block_release(v14);
}

uint64_t sub_100279C78(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1, 0);
  }

  sub_100217988();
  v5 = swift_allocError();
  *v6 = a1;
  swift_errorRetain();
  a3(v5, 1);
}

void sub_100279D18(uint64_t *a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        v13 = String._bridgeToObjectiveC()();

        [a4 cancelDownloadsForEpisodeUuid:v13 userInitiated:1];
      }

      while (v9);
      continue;
    }
  }

  v14 = *(v5 + 16);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = sub_100244158(*(v5 + 16), 0);
  v16 = *(type metadata accessor for MediaLibraryPid() - 8);
  sub_1002FE3A0(&v21, &v15[(*(v16 + 80) + 32) & ~*(v16 + 80)], v14, v5);
  v18 = v17;
  v19 = v21;

  sub_1000319D8(v19);
  if (v18 != v14)
  {
    __break(1u);
LABEL_14:
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = v15;
  LOBYTE(v22) = 0;
  a2(&v21);
}

uint64_t sub_100279F1C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_1000044A0(a4 + 2, a4[5]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002DD30;
  *(v8 + 24) = v7;

  dispatch thunk of MediaLibraryClientProtocol.deleteEpisodes(identifiers:completion:)();
}

uint64_t sub_10027A004@<X0>(uint64_t (*a2)(void, void, void)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result || (sub_10027891C(1), result = , !v3))
  {
    if (a2)
    {
      result = a2(0, 0, 0);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_10027A0B4(char a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002F07C(a1);
  v81 = a3;
  if ((v10 & 0x100) != 0)
  {
    v63 = v8;
    v64 = v9;
    v65 = v10;
    v66 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v67 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1004007C0;
    v69 = sub_100022C18();
    v70 = a2;
    v71 = v69;
    v72 = 28526;
    if (a1)
    {
      v72 = 7562617;
    }

    v73 = 0xE200000000000000;
    if (a1)
    {
      v73 = 0xE300000000000000;
    }

    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = v69;
    *(v68 + 32) = v72;
    *(v68 + 40) = v73;
    v86[0] = v63;
    v86[1] = v64;
    v87 = v65;
    sub_100030C30();
    v74 = Error.localizedDescription.getter();
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = v71;
    *(v68 + 72) = v74;
    *(v68 + 80) = v75;
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v67, "App is not ready to restore previously downloaded episodes, post-restore: %{public}s, error: %{public}s", 103, 2, v68);

    if (v70)
    {
      sub_10027B3E0(v63, v64, v65);
      v70(v63, v64, v65 | 0x100u);
      sub_1000316C4(v63, v64, v65, 1);
    }

    sub_1000316C4(v63, v64, v65, 1);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1 & 1;
    *(v11 + 24) = v3;
    v12 = sub_100168088(&qword_10057A688, &qword_100407AC8);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*((swift_isaMask & *v13) + 0x180)];
    *v14 = 0;
    v14[8] = 2;
    v15 = &v13[*((swift_isaMask & *v13) + 0x188)];
    *v15 = sub_10027B380;
    v15[1] = v11;
    v88.receiver = v13;
    v88.super_class = v12;

    v16 = objc_msgSendSuper2(&v88, "init");
    v17 = *(v4 + 56);
    v79 = *(v4 + 64);
    sub_100004428(v4 + 16, v86);
    v18 = type metadata accessor for RestoreDownloadedEpisodesOperation();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input];
    *v20 = 0;
    v20[8] = 2;
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue] = 0;
    sub_100004428(v86, &v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary]);
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage] = v79;
    *&v19[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_downloadsManager] = v17;
    v85.receiver = v19;
    v85.super_class = v18;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = objc_msgSendSuper2(&v85, "init");
    sub_100004590(v86);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1 & 1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    v24 = sub_100168088(&unk_10057A690, &unk_100400AC0);
    v25 = objc_allocWithZone(v24);
    v26 = v25 + *((swift_isaMask & *v25) + 0x180);
    *v26 = 0;
    v26[8] = 2;
    v27 = (v25 + *((swift_isaMask & *v25) + 0x188));
    *v27 = sub_10027B38C;
    v27[1] = v23;
    v78 = a2;
    sub_100013CB4(a2, a3);
    v84.receiver = v25;
    v84.super_class = v24;
    v80 = objc_msgSendSuper2(&v84, "init");
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = &v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v30 = *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
    v31 = *&v16[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
    *v29 = sub_10027B3B0;
    v29[1] = v28;

    sub_1000112B4(v30, v31);

    ObjectType = swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v33;
      v35 = swift_allocObject();
      *(v35 + 24) = v34;
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v35;
      v38 = *(v34 + 72);
      v39 = v16;

      v38(sub_1000319D0, v37, ObjectType, v34);

      v83.receiver = v21;
      v83.super_class = type metadata accessor for BaseOperation();
      super_class = v83.super_class;
      objc_msgSendSuper2(&v83, "addDependency:", v39);

      v77 = v39;
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = &v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v42 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v43 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
      *v41 = sub_100182704;
      v41[1] = v40;

      sub_1000112B4(v42, v43);

      v44 = swift_getObjectType();
      v45 = swift_conformsToProtocol2();
      if (v45)
      {
        v46 = v45;
        v47 = swift_allocObject();
        *(v47 + 24) = v46;
        swift_unknownObjectWeakInit();
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        *(v49 + 16) = v48;
        *(v49 + 24) = v47;
        v50 = *(v46 + 72);
        v51 = v21;
        v52 = v80;

        v50(sub_10003B6A0, v49, v44, v46);

        v82.receiver = v52;
        v82.super_class = super_class;
        objc_msgSendSuper2(&v82, "addDependency:", v51);

        v53 = swift_allocObject();
        *(v53 + 16) = v78;
        *(v53 + 24) = v81;
        v54 = &v52[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
        v55 = *&v52[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
        v56 = *&v52[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
        *v54 = sub_10027B3B8;
        v54[1] = v53;
        sub_100013CB4(v78, v81);
        sub_1000112B4(v55, v56);

        v57 = sub_10002EA1C();
        sub_100168088(&unk_100574680, &qword_100401740);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100400800;
        *(v58 + 32) = v77;
        *(v58 + 40) = v51;
        *(v58 + 48) = v52;
        sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
        v59 = v77;
        v60 = v51;
        v61 = v52;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v57 addOperations:isa waitUntilFinished:0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10027A92C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, char a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  if (a4)
  {

    sub_1000044A0(a5 + 2, a5[5]);
    v10 = dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()();
    v11 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v12 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100400790;
    v14 = *(v10 + 16);
    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v14;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Number of post-restore items %d", v19);

    v19 = v10;
    v20 = 0;
    a2(&v19);
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v17 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Will prepare most recently downloaded episodes for redownload.", 62, 2, _swiftEmptyArrayStorage);

    sub_1000044A0(a5 + 2, a5[5]);
    v18 = swift_allocObject();
    v18[2] = sub_10002DD38;
    v18[3] = v9;
    v18[4] = a5;

    dispatch thunk of MediaLibraryClientProtocol.reconcileMostRecentlyDownloadedEpisodes(completion:)();
  }
}

uint64_t sub_10027AB94(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v6 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100022C18();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Failed to prepare most recently downloaded episodes for restore, error: %{public}s", 82, 2, v7);

    v11 = a1;
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v15 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100400790;
    *(v16 + 56) = &type metadata for Int;
    *(v16 + 64) = &protocol witness table for Int;
    *(v16 + 32) = v13;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Successfully prepared %d previously downloaded episodes for redownload.", v18);

    sub_10027B5B4(v13);
    v11 = a1;
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_10027AD80@<X0>(char a2@<W2>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (sub_10027891C(a2 & 1), result = , !v4))
  {
    v9 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v10 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100400790;
    v12 = sub_100022C18();
    v13 = 0x6563655274736F6DLL;
    if (a2)
    {
      v13 = 0x7473655274736F70;
    }

    v14 = 0xEA0000000000746ELL;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = v12;
    if (a2)
    {
      v14 = 0xEB0000000065726FLL;
    }

    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%{public}s anchor has been set.", 31, 2, v11);

    if (a3)
    {
      result = a3(0, 0, 0);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_10027AF20(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3, const char *a4, uint64_t a5)
{
  v9 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v12 = Error.localizedDescription.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100022C18();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, a4, a5, 2, v11);

  if (a2)
  {
    return a2(a1, 0, 257);
  }

  return result;
}

void sub_10027B05C(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v39 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100256864(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_100256864(&v35, &v28);
    if (v29)
    {
      sub_10016B7CC(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_10016B7CC(v33, v30);
      v16 = v2[2];
      if (v2[3] <= v16)
      {

        sub_10019B010(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v17 = v31;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = (v2 + 8);
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~v2[(v21 >> 6) + 8]) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *&v19[8 * v22];
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~v2[(v21 >> 6) + 8])) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v19[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      *(v2[6] + 16 * v23) = v17;
      sub_10016B7CC(v30, (v2[7] + 32 * v23));
      ++v2[2];
      v9 = v32;
    }

    else
    {

      sub_100009104(&v34, &qword_1005817D0, &qword_100407AE0);
      v9 = &v28;
    }

    sub_100009104(v9, &unk_1005783D0, &qword_1004031E0);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_10027B328()
{
  sub_100004590((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10027B3E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    swift_errorRetain();
  }

  else if (!a3)
  {
  }
}

void sub_10027B410(uint64_t a1, char a2)
{
  sub_100168088(&unk_10057A6B0, &unk_10040F670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = a2;
  v7 = sub_10016A998(inited);
  swift_setDeallocating();
  sub_100168088(&unk_10057A6C0, &unk_100407AD0);
  swift_arrayDestroy();
  sub_10027B05C(v7);
  v9 = v8;

  sub_100009F1C(0, &unk_100573E20, off_1004D1B80);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(v9);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 reportWithType:6 userInfo:isa location:@"rstr" reason:0];
}

void sub_10027B5B4(uint64_t a1)
{
  sub_100168088(&unk_10057A6B0, &unk_10040F670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v3;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  v5 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 120) = sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
  *(inited + 96) = v5;
  v6 = sub_10016A998(inited);
  swift_setDeallocating();
  sub_100168088(&unk_10057A6C0, &unk_100407AD0);
  swift_arrayDestroy();
  sub_10027B05C(v6);
  v8 = v7;

  sub_100009F1C(0, &unk_100573E20, off_1004D1B80);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_10025810C(v8);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 reportWithType:6 userInfo:isa location:@"rstr" reason:0];
}

uint64_t sub_10027B784@<X0>(uint64_t a1@<X8>)
{
  sub_1000044A0((v1 + 16), *(v1 + 40));
  result = dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10027B854(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    a1 = 0;
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

unint64_t sub_10027B8E0()
{
  result = qword_10057A6F8;
  if (!qword_10057A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A6F8);
  }

  return result;
}

void *_s8Podcasts23CoreDataChapterIngesterC12unsafeIngest04feedD03ctx0A10Foundation9MTChapterCSgSo06MTFeedD0_p_So22NSManagedObjectContextCtF_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v41 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MTChapter.FieldNames();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  (*(v8 + 104))(v10, enum case for MTChapter.FieldNames.entity(_:), v7);
  MTChapter.FieldNames.rawValue.getter();
  (*(v8 + 8))(v10, v7);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 insertNewObjectForEntityForName:v12 inManagedObjectContext:a2];

  type metadata accessor for MTChapter();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = [a1 id];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    [v15 setId:v16];

    v17 = [a1 title];
    [v15 setTitle:v17];

    v18 = [a1 timeframesData];
    if (v18)
    {
      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001F6D74(v20, v22);
    }

    else
    {
      v23.super.isa = 0;
    }

    [v15 setTimeframesData:v23.super.isa];

    [v15 setChapterTypeIntValue:{objc_msgSend(a1, "chapterTypeIntValue")}];
    v34 = [a1 artworkWidth];
    [v15 setArtworkWidth:v34];

    v35 = [a1 artworkHeight];
    [v15 setArtworkHeight:v35];

    v36 = [a1 artworkTemplateURL];
    [v15 setArtworkTemplateURL:v36];

    v37 = [a1 artworkBackgroundColor];
    [v15 setArtworkBackgroundColor:v37];
  }

  else
  {
    v40 = v4;
    v24 = v41;

    static Logger.chapters.getter();
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v29 = [a1 id];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000153E0(v30, v32, &v42);

      *(v27 + 14) = v33;
      sub_100004590(v28);
    }

    (*(v24 + 8))(v6, v40);
    return 0;
  }

  return v15;
}

uint64_t static Result<>.success.getter()
{
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.zip<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v10, a2[3]);
    swift_getTupleTypeMetadata2();
  }

  else
  {
    v13 = a2[2];
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v13 - 8) + 32))(a4, v10, v13);
    (*(*(a3 - 8) + 16))(a4 + v14, a1, a3);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10027C14C()
{
  v0 = sub_100168088(&qword_100574040, &unk_100400AD0);
  sub_100182568(v0, qword_10057A798);
  sub_1001825CC(v0, qword_10057A798);
  return URL.init(string:)();
}

id _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  static URL.iOSAutomaticallyDownloadPreferences.getter();
  sub_1001BB0E0(v7, v5);
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    sub_1001FDD40(v7);
    return sub_1001FDD40(v5);
  }

  (*(v1 + 32))(v3, v5, v0);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 openSensitiveURL:v12 withOptions:isa];

    (*(v1 + 8))(v3, v0);
    v5 = v7;
    return sub_1001FDD40(v5);
  }

  __break(1u);
  return result;
}

void _sSo13UIApplicationC8PodcastsE18openGlobalSettingsyyF_0()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    static URL.iOSGlobalPreferences.getter();
    v4 = type metadata accessor for URL();
    v5 = *(v4 - 8);
    v7 = 0;
    if ((*(v5 + 48))(v1, 1, v4) != 1)
    {
      URL._bridgeToObjectiveC()(v6);
      v7 = v8;
      (*(v5 + 8))(v1, v4);
    }

    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 openSensitiveURL:v7 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10027C5A4()
{
  v0 = sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v12 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    if (qword_1005727D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1001825CC(v0, qword_10057A798);
    sub_1001BB0E0(v5, v2);
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    v9 = 0;
    if ((*(v7 + 48))(v2, 1, v6) != 1)
    {
      URL._bridgeToObjectiveC()(v8);
      v9 = v10;
      (*(v7 + 8))(v2, v6);
    }

    sub_10016A444(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v9 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void *sub_10027C77C(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

Swift::Void __swiftcall MTLibrary.cleanUpNeutralInterests()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Deleting all neutral interests", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 importContext];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  aBlock[4] = sub_10027CB7C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E8A50;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 performBlock:v11];
  _Block_release(v11);
}

Swift::Void __swiftcall MTLibrary.deleteAllInterestsBlockingCaller()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Immediately deleting all interests", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 importContext];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10027D07C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E8AC8;
  v12 = _Block_copy(aBlock);
  v13 = v8;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_10027CEBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

uint64_t sub_10027CF70(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 lastUpdatedDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static Date.< infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t sub_10027D0AC(void *a1)
{
  v65 = type metadata accessor for Date();
  v59 = *(v65 - 8);
  __chkstk_darwin();
  v64 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v57 - v3;
  v69 = type metadata accessor for Logger();
  v4 = *(v69 - 8);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v57 - v7;
  __chkstk_darwin();
  v9 = &v57 - v8;
  __chkstk_darwin();
  v11 = &v57 - v10;
  __chkstk_darwin();
  v13 = &v57 - v12;
  kMTInterestEntityName.getter();
  v14 = String._bridgeToObjectiveC()();

  type metadata accessor for MTInterest();
  v15 = static MTInterest.predicateForNeutralInterests()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v68 = a1;
  v17 = [a1 objectsInEntity:v14 predicate:v15 sortDescriptors:isa];

  if (v17 && (sub_1001D3D4C(), v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v17, v19 = sub_10037FEFC(v18), , v19))
  {
    static Logger.database.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, v20))
    {
      goto LABEL_7;
    }

    v22 = swift_slowAlloc();
    *v22 = 134217984;
    if (v19 >> 62)
    {
      goto LABEL_40;
    }

    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v22 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v21, v20, "Starting to delete %ld neutral interests.", v22, 0xCu);

LABEL_7:

      v25 = *(v4 + 8);
      v4 += 8;
      v24 = v25;
      v67 = v4;
      v25(v13, v69);
      type metadata accessor for SyncKeysRepository();
      v26 = static SyncKeysRepository.shared.getter();
      SyncKeysRepository.interestLastSyncTimestamp.getter();
      v28 = v27;

      v29 = v60;
      if (v28)
      {
        static Date.distantFuture.getter();
      }

      else
      {
        Date.init(timeIntervalSinceReferenceDate:)();
      }

      __chkstk_darwin();
      *(&v57 - 2) = v29;

      v34 = sub_10027C77C(sub_10027E040, &v57 - 4, v19);

      static Logger.database.getter();
      v20 = static os_log_type_t.default.getter();

      v21 = Logger.logObject.getter();
      v35 = os_log_type_enabled(v21, v20);
      v13 = (v34 >> 62);
      v63 = v34;
      if (v35)
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        if (v13)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
          v34 = v63;
        }

        else
        {
          v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v19 + 4) = v36;

        _os_log_impl(&_mh_execute_header, v21, v20, "Proceeding to delete %ld interests.", v19, 0xCu);
      }

      else
      {
      }

      v22 = v24(v11, v69);
      if (v13)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v11 = v22;
        v57 = v13;
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v57 = 0;
        if (!v11)
        {
          goto LABEL_30;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_40:
      v56 = v22;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v56;
    }

    v66 = v34 & 0xC000000000000001;
    v62 = (v59 + 8);

    v37 = 0;
    *&v38 = 134218496;
    v61 = v38;
    do
    {
      if (v66)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v34 + 8 * v37 + 32);
      }

      v41 = v40;
      static Logger.database.getter();
      v42 = static os_log_type_t.default.getter();
      v43 = v41;
      v39 = Logger.logObject.getter();
      if (os_log_type_enabled(v39, v42))
      {
        v44 = swift_slowAlloc();
        *v44 = v61;
        *(v44 + 4) = [v43 adamID];

        *(v44 + 12) = 2048;
        [v43 interestValue];
        *(v44 + 14) = v45;
        *(v44 + 22) = 2048;
        v46 = v24;
        v47 = [v43 lastUpdatedDate];
        v48 = v64;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = v46;
        v34 = v63;
        Date.timeIntervalSinceReferenceDate.getter();
        v50 = v49;
        (*v62)(v48, v65);
        *(v44 + 24) = v50;
        _os_log_impl(&_mh_execute_header, v39, v42, "Deleting interest as part of interest cleanup. AdamID: %llu, interestValue: %f, lastUpdatedDate: %f", v44, 0x20u);
      }

      else
      {

        v39 = v43;
      }

      ++v37;

      v24(v9, v69);
      [v68 deleteObject:v43];
    }

    while (v11 != v37);

    v29 = v60;
LABEL_30:
    v51 = v58;
    static Logger.database.getter();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      if (v57)
      {
        v55 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v55 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v54 + 4) = v55;

      _os_log_impl(&_mh_execute_header, v52, v53, "Finished deleting %ld interests.", v54, 0xCu);
    }

    else
    {
    }

    v24(v51, v69);
    [v68 saveInCurrentBlock];
    (*(v59 + 8))(v29, v65);
  }

  else
  {
    static Logger.database.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to fetch interests when attempting to cleanup. Cannot delete any interests.", v32, 2u);
    }

    return (*(v4 + 8))(v6, v69);
  }
}

id sub_10027D968(void *a1)
{
  v55 = type metadata accessor for Date();
  *&v52 = *(v55 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Logger();
  v3 = *(v60 - 8);
  __chkstk_darwin();
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v50 - v6;
  __chkstk_darwin();
  v9 = &v50 - v8;
  __chkstk_darwin();
  v11 = &v50 - v10;
  kMTInterestEntityName.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() truePredicate];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v59 = a1;
  v15 = [a1 objectsInEntity:v12 predicate:v13 sortDescriptors:isa];

  if (v15 && (sub_1001D3D4C(), v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = sub_10037FEFC(v16), , v17))
  {
    static Logger.database.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = Logger.logObject.getter();
    v20 = os_log_type_enabled(v19, v18);
    v21 = v17 >> 62;
    v53 = v17;
    if (!v20)
    {

      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    *v22 = 134217984;
    if (v21)
    {
      goto LABEL_31;
    }

    v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v19, v18, "Starting to delete all %ld interests.", v24, 0xCu);

LABEL_11:
      v51 = v7;
      v57 = *(v3 + 8);
      v58 = v3 + 8;
      v22 = v57(v11, v60);
      v50 = v21;
      if (v21)
      {
        v3 = v53;
        v22 = _CocoaArrayWrapper.endIndex.getter();
        v30 = v22;
        if (!v22)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v3 = v53;
        v30 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
          goto LABEL_23;
        }
      }

      if (v30 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_31:
      v49 = v22;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v49;
    }

    v31 = 0;
    v56 = v3 & 0xC000000000000001;
    v32 = (v52 + 8);
    *&v29 = 134218496;
    v52 = v29;
    do
    {
      if (v56)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v3 + 8 * v31 + 32);
      }

      v35 = v34;
      static Logger.database.getter();
      v36 = static os_log_type_t.default.getter();
      v37 = v35;
      v33 = Logger.logObject.getter();
      if (os_log_type_enabled(v33, v36))
      {
        v38 = swift_slowAlloc();
        *v38 = v52;
        *(v38 + 4) = [v37 adamID];

        *(v38 + 12) = 2048;
        [v37 interestValue];
        *(v38 + 14) = v39;
        *(v38 + 22) = 2048;
        v40 = [v37 lastUpdatedDate];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v3 = v53;
        Date.timeIntervalSinceReferenceDate.getter();
        v43 = v42;
        (*v32)(v41, v55);
        *(v38 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v33, v36, "Deleting interest as part of interest cleanup. AdamID: %llu, interestValue: %f, lastUpdatedDate: %f", v38, 0x20u);
      }

      else
      {

        v33 = v37;
      }

      ++v31;

      v57(v9, v60);
      [v59 deleteObject:v37];
    }

    while (v30 != v31);
LABEL_23:
    v44 = v51;
    static Logger.database.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      if (v50)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v48 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 4) = v48;

      _os_log_impl(&_mh_execute_header, v45, v46, "Finished deleting %ld interests.", v47, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v57(v44, v60);
    return [v59 saveInCurrentBlock];
  }

  else
  {
    static Logger.database.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to fetch interests when attempting to cleanup. Cannot delete any interests.", v27, 2u);
    }

    return (*(v3 + 8))(v5, v60);
  }
}

uint64_t PlayNextChapterIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10027E120;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_10027E120()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10027E2D4;
  }

  else
  {
    v2 = sub_10027E234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E234()
{
  v1 = v0[4];

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10027E2D4()
{
  v1 = *(v0 + 32);

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PlayNextChapterIntentImplementation.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001B9784;

  return PlaybackController.seekToNextChapter()();
}

unint64_t sub_10027E408()
{
  result = qword_10057A7B0;
  if (!qword_10057A7B0)
  {
    type metadata accessor for PlayNextChapterIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A7B0);
  }

  return result;
}

uint64_t sub_10027E460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for PlaybackController();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_10027E518;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_10027E518()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10027E6D4;
  }

  else
  {
    v2 = sub_10027E62C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E62C()
{
  v1 = v0[5];
  v2 = v0[3];

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  *v2 = v0[2];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10027E6D4()
{
  v1 = *(v0 + 40);

  ChapterIntent = type metadata accessor for PlayNextChapterIntent();
  (*(*(ChapterIntent - 8) + 8))(v1, ChapterIntent);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027E770(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001B9C88;

  return PlaybackController.seekToNextChapter()();
}

void sub_10027E818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  [v3 updatePlaylistWithUuid:v5 inContext:a3];
}

uint64_t sub_10027E874(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() mainBundle];
  v15._object = 0x800000010046C5D0;
  v4._object = 0x800000010046C5B0;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000013;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  *(v1 + 72) = v6;
  *(v1 + 88) = xmmword_100403760;
  v7 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v8 = enum case for MetricsLabel.removeFromUpNext(_:);
  v9 = type metadata accessor for MetricsLabel();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType;
  v11 = enum case for ContextActionType.removeFromUpNext(_:);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v1 + v10, v11, v12);
  (*(v13 + 56))(v1 + v10, 0, 1, v12);
  sub_100184658(a1, v1 + 32);
  return v1;
}

uint64_t sub_10027EA24()
{
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InteractionContext();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v12 - v7;
  swift_beginAccess();
  v9 = *(v0 + 16);
  if (v9)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    (*(v4 + 32))(v8, v6, v3);
    InteractionContext.page.getter();
    See = InteractionContext.Page.isUpNextSeeAll.getter();
    sub_10027F15C(v2, &type metadata accessor for InteractionContext.Page);
    if (See & 1) != 0 || (InteractionContext.view.getter(), (static InteractionContext.View.== infix(_:_:)()))
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      InteractionContext.view.getter();
      LOBYTE(v9) = static InteractionContext.View.== infix(_:_:)();
    }

    (*(v4 + 8))(v8, v3);
  }

  return v9 & 1;
}

void sub_10027EC0C(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[3];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3, v6);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10027F15C(v3, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(v1 + 4, v1[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }
}

uint64_t sub_10027ED38()
{

  sub_100004590((v0 + 32));

  v1 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveFromUpNextEpisodeContextAction(uint64_t a1)
{
  result = qword_10057A7E0;
  if (!qword_10057A7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027EE60(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10027EF54()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_10027EF84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_10027F014@<D0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() systemGrayColor];
  v5 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  *(a1 + 8) = xmmword_100403760;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;

  return result;
}

uint64_t sub_10027F090(uint64_t a1)
{
  result = sub_10027F118(&qword_10057A898, &unk_100407E68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10027F0D4(uint64_t a1)
{
  result = sub_10027F118(&qword_10057A8A0, &unk_100407EC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10027F118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromUpNextEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027F15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027F1BC()
{
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(type metadata accessor for InteractionContext() - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText))
    {
      v7 = v4;
      swift_beginAccess();
      if (*(v0 + 24))
      {

        dispatch thunk of ContextActionsConfiguration.context.getter();
        InteractionContext.page.getter();

        (*(v3 + 8))(v6, v7);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          return v2[9];
        }

        sub_10027F15C(v2, &type metadata accessor for InteractionContext.Page);
      }
    }
  }

  return 0;
}

void sub_10027F36C()
{
  v1 = v0;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v25 - v4;
  __chkstk_darwin();
  v7 = &v25 - v6;
  __chkstk_darwin();
  v9 = &v25 - v8;
  sub_10035402C();

  v11 = sub_10027F7C8(v10);

  if (v11)
  {
    v12 = [v11 shortURL];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    sub_1001B8A3C(v5, v7);
    type metadata accessor for URL();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v7, 1, v14) != 1)
    {
      (*(v16 + 32))(v9, v7, v14);
      (*(v16 + 56))(v9, 0, 1, v14);
      goto LABEL_14;
    }

    v17 = [v11 shareURL];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    (*(v16 + 56))(v3, v19, 1, v14);
    sub_1001B8A3C(v3, v9);
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = *(*(v14 - 8) + 56);
    v15(v7, 1, 1, v14);
    v15(v9, 1, 1, v14);
  }

  type metadata accessor for URL();
  if ((*(*(v14 - 8) + 48))(v7, 1, v14) != 1)
  {
    sub_1001FDD40(v7);
  }

LABEL_14:
  v20 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
  swift_beginAccess();
  sub_1001FDDA8(v9, v1 + v20);
  swift_endAccess();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;

      v23 = *(v22 + qword_1005766D0);
    }

    else
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      v23 = swift_dynamicCastClass();
      if (v23)
      {

        v23 = NowPlayingTranscriptSelectionContextActionConfiguration.selectedText.getter();
      }
    }
  }

  else
  {

    v23 = 0;
  }

  v24 = *(v1 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText);
  *(v1 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText) = v23;
}

id sub_10027F7C8(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v48 - v7;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = &v48 - v11;
  __chkstk_darwin();
  v14 = &v48 - v13;
  if (!a1)
  {
    return 0;
  }

  v48 = v1;
  v15 = v3;
  v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  v17 = a1 + v16;
  v18 = v14;
  sub_1001EAFE4(v17, v12, v19);
  sub_1002288DC(v12, v14, v20);
  sub_1001EAFE4(v14, v10, v21);
  LODWORD(v22) = swift_getEnumCaseMultiPayload();
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      v4 = v48;
      if (v22 != 3)
      {
        sub_10027F15C(v14, type metadata accessor for EpisodeContextActionDataType);
        v34 = v10;
LABEL_40:
        sub_10027F15C(v34, type metadata accessor for EpisodeContextActionDataType);
        return 0;
      }

      v8 = *v10;
      v23 = sub_10039779C(*v10);

      if (v23 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
LABEL_7:
          if ((v23 & 0xC000000000000001) == 0)
          {
            if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_10;
            }

            goto LABEL_24;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_7;
        }
      }

LABEL_46:
      v33 = 0;
      goto LABEL_47;
    }

    v23 = *v10;
    v4 = v48;
    if (*v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_46;
      }
    }

    else
    {
      result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    if ((v23 & 0xC000000000000001) == 0)
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

LABEL_24:
      v32 = *(v23 + 32);
LABEL_25:
      v33 = v32;
LABEL_47:

      if (*(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
      {
        v46 = 0.0;
      }

      else
      {
        v46 = *(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
      }

      if (*(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
      {
        v47 = 0.0;
      }

      else
      {
        v47 = *(v4 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
      }

      v30 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v33 selectedReferenceTime:v46 selectedPlayerTime:v47 currentPlayerTime:0.0];

      goto LABEL_54;
    }

LABEL_42:
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

LABEL_10:
  if (!v22)
  {
    v24 = *v10;

    if (!*(v24 + 16))
    {
      sub_10027F15C(v18, type metadata accessor for EpisodeContextActionDataType);

      return 0;
    }

    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 mediaItemForEpisodeWithUUID:v26];

    if (v27)
    {
      if (*(v48 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
      {
        v28 = 0.0;
      }

      else
      {
        v28 = *(v48 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
      }

      if (*(v48 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
      {
        v29 = 0.0;
      }

      else
      {
        v29 = *(v48 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
      }

      v30 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v27 selectedReferenceTime:v28 selectedPlayerTime:v29 currentPlayerTime:0.0];

LABEL_54:
      sub_10027F15C(v18, type metadata accessor for EpisodeContextActionDataType);
      return v30;
    }

    goto LABEL_39;
  }

  v35 = *v10;
  if (!*(*v10 + 16))
  {

LABEL_39:
    v34 = v18;
    goto LABEL_40;
  }

  v36 = v48;
  v37 = v4;
  v38 = *(v4 + 16);
  v39 = v35 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v40 = v15;
  v38(v6, v39, v15);

  (*(v37 + 32))(v8, v6, v15);
  v41 = sub_100294534();
  if (!v41)
  {
    (*(v37 + 8))(v8, v15);
    goto LABEL_39;
  }

  v42 = v41;
  if (*(v36 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime + 8))
  {
    v43 = 0.0;
  }

  else
  {
    v43 = *(v36 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_referenceTime);
  }

  if (*(v36 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime + 8))
  {
    v44 = 0.0;
  }

  else
  {
    v44 = *(v36 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_playerTime);
  }

  v45 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v41 selectedReferenceTime:v43 selectedPlayerTime:v44 currentPlayerTime:0.0];

  (*(v37 + 8))(v8, v40);
  sub_10027F15C(v18, type metadata accessor for EpisodeContextActionDataType);
  return v45;
}

void sub_10027FDC0()
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v2 = &v19[-v1];
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_selectedText);
    if (v6)
    {
      v7 = v6;

      v8 = [v7 string];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      swift_beginAccess();
      sub_1001EAFE4(v5 + v12, v4, v13);
      v14 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL;
      swift_beginAccess();
      sub_1001BB0E0(v0 + v14, v2);
      sub_1002AB204(v9, v11, v4, v2);
      v16 = v15;

      sub_1001FDD40(v2);
      sub_10027F15C(v4, type metadata accessor for EpisodeContextActionDataType);
      if (v16)
      {
        v17 = [objc_opt_self() generalPasteboard];
        v18 = String._bridgeToObjectiveC()();

        [v17 setString:v18];

        v7 = v18;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10027FFF4()
{

  v1 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001FDD40(v0 + OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_shareURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyTranscriptSelectionContextAction(uint64_t a1)
{
  result = qword_10057A8E0;
  if (!qword_10057A8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100280124(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_100012E4C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100280228()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100280258()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_100280288@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts36CopyTranscriptSelectionContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100280300@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.copyTranscriptSelection(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002803E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_100280440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002804A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100280504(uint64_t a1)
{
  result = sub_1002805D0(&qword_10057AA90, &unk_100407FC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100280548(uint64_t a1)
{
  result = sub_1002805D0(&qword_10057AA98, &unk_100408058);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028058C(uint64_t a1)
{
  result = sub_1002805D0(&unk_10057AAA0, &unk_100408020);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002805D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CopyTranscriptSelectionContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MTWelcomeViewController.deferUntilAcknowledged(_:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E8C98;
  v3 = _Block_copy(v4);

  [v2 addAcknowledgementCompletionBlock:v3];
  _Block_release(v3);
}

void sub_1002806C8(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000F038;
  v4[3] = &unk_1004E8CC0;
  v3 = _Block_copy(v4);

  [v2 addAcknowledgementCompletionBlock:v3];
  _Block_release(v3);
}

id sub_10028079C@<X0>(void *a1@<X8>)
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PodcastsStateCoordinator.shared;
  *a1 = static PodcastsStateCoordinator.shared;

  return v2;
}

uint64_t sub_100280844@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TranscriptReportConcernURLBuilder();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10028087C@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  a1[3] = type metadata accessor for TranscriptReportConcernURLBuilder();
  a1[4] = &off_1004E6A50;
  BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_100280900@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  result = sub_100020360(v2);
  *a1 = result;
  return result;
}

id sub_100280980@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = objc_allocWithZone(type metadata accessor for ClassKitManager());
  result = sub_100334A0C(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1002809D4@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  type metadata accessor for EpisodeController();
  swift_allocObject();
  v3 = sub_100021D60(v2);

  *a1 = v3;
  return result;
}

id sub_100280A5C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100280AD8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  sub_100009F1C(0, a1, a2);
  result = [swift_getObjCClassFromMetadata() *a3];
  *a4 = result;
  return result;
}

uint64_t sub_100280B38@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  sub_100009F1C(0, a1, a2);
  BaseObjectGraph.inject<A>(_:)();

  *a3 = v7;
  return result;
}

id sub_100280BB0@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_10057AFD8, off_1004D1AF0);
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  *a1 = result;
  return result;
}

uint64_t sub_100280C30@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for PageIntentInstrumentation();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin();
  v23 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IntentDispatchTimeout();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin();
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeIntentDispatcher();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v19 - v9;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v11 = type metadata accessor for LazyJSStack();
  BaseObjectGraph.inject<A>(_:)();

  v12 = v28[0];
  sub_100281018();
  v29 = v11;
  v30 = sub_100283980(&qword_10057AE98, &type metadata accessor for LazyJSStack, &protocol conformance descriptor for LazyJSStack);
  v28[0] = v12;
  v19 = v12;
  v13 = *(v6 + 16);
  v13(v10, v8, v5);
  sub_100010430(v28, v27, &qword_10057AEA0, &unk_10040C190);

  NativeIntentDispatcher.next.setter();
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_100009104(v28, &qword_10057AEA0, &unk_10040C190);
  static BaseObjectGraph.current.getter();
  v29 = v5;
  v30 = &protocol witness table for NativeIntentDispatcher;
  v15 = sub_10000E680(v28);
  v13(v15, v10, v5);
  (*(v21 + 104))(v20, enum case for IntentDispatchTimeout.none(_:), v22);
  (*(v24 + 104))(v23, enum case for PageIntentInstrumentation.notInstrumented(_:), v25);
  v16 = type metadata accessor for PodcastsIntentDispatcher();
  v17 = v26;
  v26[3] = v16;
  v17[4] = sub_100283980(&qword_10057AEA8, &type metadata accessor for PodcastsIntentDispatcher, &protocol conformance descriptor for PodcastsIntentDispatcher);
  sub_10000E680(v17);
  PodcastsIntentDispatcher.init(asPartOf:intentDispatcher:timeout:instrumentation:)();

  return (v14)(v10, v5);
}

uint64_t sub_100281018()
{
  v0 = type metadata accessor for ReferenceLinkMetadataIntentImplementation();
  v1 = *(v0 - 8);
  v137 = v0;
  v138 = v1;
  __chkstk_darwin();
  v136 = &UpNextEpisodesIntentImplementation - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodeTimedReferenceLinksIntentImplementation();
  v4 = *(v3 - 8);
  v134 = v3;
  v135 = v4;
  __chkstk_darwin();
  v133 = &UpNextEpisodesIntentImplementation - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlayEpisodeIntentImplementation();
  v7 = *(v6 - 8);
  v131 = v6;
  v132 = v7;
  __chkstk_darwin();
  v130 = &UpNextEpisodesIntentImplementation - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnqueueEpisodeForPlaybackIntentImplementation();
  v10 = *(v9 - 8);
  v128 = v9;
  v129 = v10;
  __chkstk_darwin();
  v127 = &UpNextEpisodesIntentImplementation - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugLibraryStorageTipSuggestedLimitIntentImplementation();
  v13 = *(v12 - 8);
  v125 = v12;
  v126 = v13;
  __chkstk_darwin();
  v124 = &UpNextEpisodesIntentImplementation - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  PodcastForEpisodeIntentImplementation = type metadata accessor for FetchPodcastForEpisodeIntentImplementation();
  v123 = *(PodcastForEpisodeIntentImplementation - 8);
  __chkstk_darwin();
  v121 = &UpNextEpisodesIntentImplementation - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100168088(&qword_10057AEB0, &qword_1004082E0);
  v120 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &UpNextEpisodesIntentImplementation - v16;
  v116 = sub_100168088(&qword_10057AEB8, &qword_1004082E8);
  v117 = *(v116 - 8);
  __chkstk_darwin();
  v115 = &UpNextEpisodesIntentImplementation - v17;
  v112 = sub_100168088(&qword_10057AEC0, &unk_1004082F0);
  v113 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &UpNextEpisodesIntentImplementation - v18;
  ShowLatestCatalogEpisodesIntentImplementation = type metadata accessor for FetchShowLatestCatalogEpisodesIntentImplementation();
  v110 = *(ShowLatestCatalogEpisodesIntentImplementation - 8);
  __chkstk_darwin();
  v108 = &UpNextEpisodesIntentImplementation - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowEpisodesIntentImplementation = type metadata accessor for FindShowEpisodesIntentImplementation();
  v107 = *(ShowEpisodesIntentImplementation - 8);
  __chkstk_darwin();
  v105 = &UpNextEpisodesIntentImplementation - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for FollowFeedIntentImplementation();
  v104 = *(v103 - 8);
  __chkstk_darwin();
  v102 = &UpNextEpisodesIntentImplementation - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UnfollowShowIntentImplementation();
  v101 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &UpNextEpisodesIntentImplementation - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for RemoveEpisodesDownloadIntentImplementation();
  v98 = *(v97 - 8);
  __chkstk_darwin();
  v96 = &UpNextEpisodesIntentImplementation - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DownloadEpisodesIntentImplementation();
  v95 = *(v94 - 8);
  __chkstk_darwin();
  v93 = &UpNextEpisodesIntentImplementation - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UnbookmarkEpisodeIntentImplementation();
  v92 = *(v91 - 8);
  __chkstk_darwin();
  v90 = &UpNextEpisodesIntentImplementation - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for BookmarkEpisodeIntentImplementation();
  v89 = *(v88 - 8);
  __chkstk_darwin();
  v87 = &UpNextEpisodesIntentImplementation - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOfferContentIDsIntentsIntentImplementation = type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation();
  v86 = *(EpisodeOfferContentIDsIntentsIntentImplementation - 8);
  __chkstk_darwin();
  v84 = &UpNextEpisodesIntentImplementation - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalEpisodeContentIDsIntentImplementation = type metadata accessor for FindOrCreateLocalEpisodeContentIDsIntentImplementation();
  v83 = *(LocalEpisodeContentIDsIntentImplementation - 8);
  __chkstk_darwin();
  v29 = &UpNextEpisodesIntentImplementation - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  UpNextEpisodesIntentImplementation = type metadata accessor for FetchUpNextEpisodesIntentImplementation();
  v30 = *(UpNextEpisodesIntentImplementation - 8);
  __chkstk_darwin();
  v32 = &UpNextEpisodesIntentImplementation - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NativeIntentDispatcher.Configuration();
  v34 = *(v33 - 8);
  __chkstk_darwin();
  v36 = &UpNextEpisodesIntentImplementation - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &UpNextEpisodesIntentImplementation - v37;
  type metadata accessor for LRUIntentCache.Configuration();
  __chkstk_darwin();
  LRUIntentCache.Configuration.init(cacheLimit:)();
  v39 = type metadata accessor for LRUIntentCache();
  swift_allocObject();
  v40 = LRUIntentCache.init(configuration:)();
  v140 = v39;
  v141 = &protocol witness table for LRUIntentCache;
  v114 = v40;
  v139 = v40;

  NativeIntentDispatcher.Configuration.init(cache:)();
  v41 = v33;
  (*(v34 + 16))(v36, v38, v33);
  NativeIntentDispatcher.init(configuration:)();
  sub_10001E75C();
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for OpenTranscriptIntentImplementation(0);
  sub_100283980(&qword_10057AED0, type metadata accessor for OpenTranscriptIntentImplementation, &unk_100410A48);
  NativeIntentDispatcher.register<A>(_:)();
  FetchUpNextEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AED8, &type metadata accessor for FetchUpNextEpisodesIntentImplementation, &protocol conformance descriptor for FetchUpNextEpisodesIntentImplementation);
  v42 = UpNextEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v30 + 8))(v32, v42);
  FindOrCreateLocalEpisodeContentIDsIntentImplementation.init()();
  sub_100283980(&qword_10057AEE0, &type metadata accessor for FindOrCreateLocalEpisodeContentIDsIntentImplementation, &protocol conformance descriptor for FindOrCreateLocalEpisodeContentIDsIntentImplementation);
  v43 = LocalEpisodeContentIDsIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v83 + 8))(v29, v43);
  v44 = v84;
  FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init()();
  sub_100283980(&qword_10057AEE8, &type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation, &protocol conformance descriptor for FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation);
  v45 = EpisodeOfferContentIDsIntentsIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v86 + 8))(v44, v45);
  v46 = v87;
  BookmarkEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AEF0, &type metadata accessor for BookmarkEpisodeIntentImplementation, &protocol conformance descriptor for BookmarkEpisodeIntentImplementation);
  v47 = v88;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v89 + 8))(v46, v47);
  v48 = v90;
  UnbookmarkEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AEF8, &type metadata accessor for UnbookmarkEpisodeIntentImplementation, &protocol conformance descriptor for UnbookmarkEpisodeIntentImplementation);
  v49 = v91;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v92 + 8))(v48, v49);
  v50 = v93;
  DownloadEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF00, &type metadata accessor for DownloadEpisodesIntentImplementation, &protocol conformance descriptor for DownloadEpisodesIntentImplementation);
  v51 = v94;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v95 + 8))(v50, v51);
  v52 = v96;
  RemoveEpisodesDownloadIntentImplementation.init()();
  sub_100283980(&qword_10057AF08, &type metadata accessor for RemoveEpisodesDownloadIntentImplementation, &protocol conformance descriptor for RemoveEpisodesDownloadIntentImplementation);
  v53 = v97;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v98 + 8))(v52, v53);
  type metadata accessor for UpdateEpisodeDownloadBehaviorImplementation();
  sub_100283980(&qword_10057AF10, &type metadata accessor for UpdateEpisodeDownloadBehaviorImplementation, &protocol conformance descriptor for UpdateEpisodeDownloadBehaviorImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for ReevaluateAutoDownloadsIntentImplementation(0);
  sub_100283980(&qword_10057AF18, type metadata accessor for ReevaluateAutoDownloadsIntentImplementation, &unk_1004038E0);
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F078();
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F114();
  NativeIntentDispatcher.register<A>(_:)();
  sub_10001F2A4();
  NativeIntentDispatcher.register<A>(_:)();
  v54 = v99;
  UnfollowShowIntentImplementation.init()();
  sub_100283980(&qword_10057AF38, &type metadata accessor for UnfollowShowIntentImplementation, &protocol conformance descriptor for UnfollowShowIntentImplementation);
  v55 = v100;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v101 + 8))(v54, v55);
  v56 = v102;
  FollowFeedIntentImplementation.init()();
  sub_100283980(&qword_10057AF40, &type metadata accessor for FollowFeedIntentImplementation, &protocol conformance descriptor for FollowFeedIntentImplementation);
  v57 = v103;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v104 + 8))(v56, v57);
  v58 = v105;
  FindShowEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF48, &type metadata accessor for FindShowEpisodesIntentImplementation, &protocol conformance descriptor for FindShowEpisodesIntentImplementation);
  v59 = ShowEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v107 + 8))(v58, v59);
  v60 = v108;
  FetchShowLatestCatalogEpisodesIntentImplementation.init()();
  sub_100283980(&qword_10057AF50, &type metadata accessor for FetchShowLatestCatalogEpisodesIntentImplementation, &protocol conformance descriptor for FetchShowLatestCatalogEpisodesIntentImplementation);
  v61 = ShowLatestCatalogEpisodesIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v110 + 8))(v60, v61);
  type metadata accessor for ServerChannel();
  v62 = v111;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF58, &qword_10057AEC0, &unk_1004082F0, &protocol conformance descriptor for FetchMediaAPIRepresentableIntentImplementation<A>);
  v63 = v112;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v113 + 8))(v62, v63);
  type metadata accessor for ServerPodcast();
  v64 = v115;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF60, &qword_10057AEB8, &qword_1004082E8, &protocol conformance descriptor for FetchMediaAPIRepresentableIntentImplementation<A>);
  v65 = v116;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v117 + 8))(v64, v65);
  type metadata accessor for ServerPodcastEpisode();
  v66 = v118;
  FetchMediaAPIRepresentableIntentImplementation.init()();
  sub_100009FAC(&qword_10057AF68, &qword_10057AEB0, &qword_1004082E0, &protocol conformance descriptor for FetchMediaAPIRepresentableIntentImplementation<A>);
  v67 = v119;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v120 + 8))(v66, v67);
  v68 = v121;
  FetchPodcastForEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AF70, &type metadata accessor for FetchPodcastForEpisodeIntentImplementation, &protocol conformance descriptor for FetchPodcastForEpisodeIntentImplementation);
  v69 = PodcastForEpisodeIntentImplementation;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v123 + 8))(v68, v69);
  sub_100283A1C();
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283A70();
  NativeIntentDispatcher.register<A>(_:)();
  v70 = v124;
  DebugLibraryStorageTipSuggestedLimitIntentImplementation.init()();
  sub_100283980(&qword_10057AF88, &type metadata accessor for DebugLibraryStorageTipSuggestedLimitIntentImplementation, &protocol conformance descriptor for DebugLibraryStorageTipSuggestedLimitIntentImplementation);
  v71 = v125;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v126 + 8))(v70, v71);
  v72 = v127;
  EnqueueEpisodeForPlaybackIntentImplementation.init()();
  sub_100283980(&qword_10057AF90, &type metadata accessor for EnqueueEpisodeForPlaybackIntentImplementation, &protocol conformance descriptor for EnqueueEpisodeForPlaybackIntentImplementation);
  v73 = v128;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v129 + 8))(v72, v73);
  v74 = v130;
  PlayEpisodeIntentImplementation.init()();
  sub_100283980(&qword_10057AF98, &type metadata accessor for PlayEpisodeIntentImplementation, &protocol conformance descriptor for PlayEpisodeIntentImplementation);
  v75 = v131;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v132 + 8))(v74, v75);
  type metadata accessor for PlayStationIntentImplementation(0);
  sub_100283980(&qword_10057AFA0, type metadata accessor for PlayStationIntentImplementation, &unk_10040C360);
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283AC4();
  NativeIntentDispatcher.register<A>(_:)();
  sub_100283B18();
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for CategoryPageFromYourShowsShelfIntentImplementation();
  sub_100283980(&qword_10057AFB8, &type metadata accessor for CategoryPageFromYourShowsShelfIntentImplementation, &protocol conformance descriptor for CategoryPageFromYourShowsShelfIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  type metadata accessor for NewsFromYourShowsShelfIntentImplementation();
  sub_100283980(&qword_10057AFC0, &type metadata accessor for NewsFromYourShowsShelfIntentImplementation, &protocol conformance descriptor for NewsFromYourShowsShelfIntentImplementation);
  NativeIntentDispatcher.register<A>(_:)();
  v76 = v133;
  EpisodeTimedReferenceLinksIntentImplementation.init()();
  sub_100283980(&qword_10057AFC8, &type metadata accessor for EpisodeTimedReferenceLinksIntentImplementation, &protocol conformance descriptor for EpisodeTimedReferenceLinksIntentImplementation);
  v77 = v134;
  NativeIntentDispatcher.register<A>(_:)();
  (*(v135 + 8))(v76, v77);
  v78 = v136;
  ReferenceLinkMetadataIntentImplementation.init()();
  sub_100283980(&qword_10057AFD0, &type metadata accessor for ReferenceLinkMetadataIntentImplementation, &protocol conformance descriptor for ReferenceLinkMetadataIntentImplementation);
  v79 = v137;
  NativeIntentDispatcher.register<A>(_:)();

  (*(v138 + 8))(v78, v79);
  return (*(v34 + 8))(v38, v41);
}

void *sub_100282828@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  type metadata accessor for UserActivityController();
  swift_allocObject();
  result = sub_100009B18(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1002828B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  [objc_allocWithZone(MTSubscribeUtil) init];
  v2 = objc_allocWithZone(type metadata accessor for RemoteFollowCommandCenter());
  result = RemoteFollowCommandCenter.init(asPartOf:subscriptionUtility:)();
  *a1 = result;
  return result;
}

unint64_t sub_10028292C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  a1[3] = &type metadata for UIAppSettingsBridge;
  result = sub_1002839C8();
  a1[4] = result;
  *a1 = v2;
  return result;
}

id sub_100282988@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  *a1 = result;
  return result;
}

unint64_t sub_100282A04@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_100573E00, off_1004D1B18);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  result = sub_100021698();
  *a1 = v2;
  a1[1] = result;
  return result;
}

id sub_100282A60@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  *a1 = result;
  return result;
}

uint64_t sub_100282AB8@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  a5[3] = a1(0);
  a5[4] = sub_100283980(a2, a3, a4);
  BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_100282B84@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LibraryViewControllerProvider();
  v3 = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  result = sub_100283980(&qword_10057AC40, type metadata accessor for LibraryViewControllerProvider, &unk_100404740);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100282C0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v2 = type metadata accessor for LibraryRemovalController();
  swift_allocObject();
  result = LibraryRemovalController.init(asPartOf:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for LibraryRemovalController;
  *a1 = result;
  return result;
}

uint64_t sub_100282CAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for HomePageProvider();
  swift_allocObject();
  result = HomePageProvider.init(asPartOf:platformContext:)();
  *a1 = result;
  return result;
}

uint64_t sub_100282D38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v6 = static BaseObjectGraph.current.getter();
  a1(0);
  swift_allocObject();
  result = a2(v6);
  *a3 = result;
  return result;
}

uint64_t sub_100282DAC@<X0>(void *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for PodcastsContextActionProvider();
  swift_allocObject();
  v4 = sub_1000201A8(v2);

  a1[3] = v3;
  result = sub_100283980(&qword_10057AC38, type metadata accessor for PodcastsContextActionProvider, &unk_10040FF70);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_100282E58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  v2 = static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for TranscriptsContextActionsProviderImplementation();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_100168088(&unk_10057AB00, &qword_100406C50);

  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057A4A0, &qword_100409850);
  BaseObjectGraph.inject<A>(_:)();

  *(v4 + 64) = v6;
  a1[3] = v3;
  result = sub_100283980(&qword_10057AC30, type metadata accessor for TranscriptsContextActionsProviderImplementation, &unk_100409460);
  a1[4] = result;
  *a1 = v4;
  return result;
}

void sub_100282F64(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v28 - v6;
  __chkstk_darwin();
  v9 = v28 - v8;
  v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v29 = a1;
    v28[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v16 = [v10 URLForKey:v15];

    if (v16)
    {
      v28[1] = v14;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v9, v7, v2);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v10 BOOLForKey:v17];

      if ((v18 & 1) == 0)
      {
        (*(v3 + 16))(v5, v9, v2);
        v25 = type metadata accessor for KCUTranscriptProvider();
        v26 = v29;
        v29[3] = v25;
        v26[4] = &protocol witness table for KCUTranscriptProvider;
        sub_10000E680(v26);
        KCUTranscriptProvider.init(bearerToken:basePath:kcuTranscriptPath:kcuSignaturePath:)();

        (*(v3 + 8))(v9, v2);
        return;
      }

      (*(v3 + 8))(v9, v2);
    }

    a1 = v29;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v10 stringForKey:v19];

  if (v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = String._bridgeToObjectiveC()();
    v22 = [v10 stringForKey:v21];

    if (v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = String._bridgeToObjectiveC()();
      v24 = [v10 BOOLForKey:v23];

      if ((v24 & 1) == 0)
      {
        v27 = [objc_opt_self() mainBundle];
        a1[3] = type metadata accessor for BundleAssetTranscriptProvider();
        a1[4] = &protocol witness table for BundleAssetTranscriptProvider;
        sub_10000E680(a1);
        BundleAssetTranscriptProvider.init(ttmlFileName:signatureFileName:bundle:)();
        goto LABEL_13;
      }
    }
  }

  a1[3] = type metadata accessor for TimeBombedTranscriptProvider();
  a1[4] = &protocol witness table for TimeBombedTranscriptProvider;
  sub_10000E680(a1);
  static TimeBombedTranscriptProvider.foreground.getter();
LABEL_13:
}

uint64_t sub_100283408@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageContextTracker();
  result = static PageContextTracker.shared.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10028343C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AMSOAuthEndpointSubscriber();
  __chkstk_darwin();
  AMSOAuthEndpointSubscriber.init()();
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for OAuthHUDViewHandler();
  swift_allocObject();
  OAuthHUDViewHandler.init(asPartOf:)();
  sub_100283980(&qword_10057AC28, &type metadata accessor for OAuthHUDViewHandler, &protocol conformance descriptor for OAuthHUDViewHandler);
  type metadata accessor for OAuthController();
  swift_allocObject();
  result = OAuthController.init(endpointSubscriber:hudViewHandler:)();
  *a1 = result;
  return result;
}

id sub_1002835A8@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

uint64_t sub_100283604@<X0>(uint64_t *a1@<X8>)
{
  sub_100168088(&qword_10057ABF8, &qword_100408248);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004080E0;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  v3 = type metadata accessor for RestorePurgedEpisodesTipProvider();
  swift_allocObject();
  v4 = RestorePurgedEpisodesTipProvider.init(asPartOf:)();
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for RestorePurgedEpisodesTipProvider;
  *(v2 + 32) = v4;
  v5 = type metadata accessor for RemoveOlderDownloadsTipProvider();
  static BaseObjectGraph.current.getter();
  v6 = RemoveOlderDownloadsTipProvider.__allocating_init(asPartOf:)();
  *(v2 + 96) = v5;
  *(v2 + 104) = &protocol witness table for RemoveOlderDownloadsTipProvider;
  *(v2 + 72) = v6;
  static BaseObjectGraph.current.getter();
  v7 = type metadata accessor for AddFavoriteCategoriesSearchTipProvider();
  swift_allocObject();
  v8 = AddFavoriteCategoriesSearchTipProvider.init(asPartOf:)();
  *(v2 + 136) = v7;
  *(v2 + 144) = sub_100283980(&qword_10057AC00, &type metadata accessor for AddFavoriteCategoriesSearchTipProvider, &protocol conformance descriptor for AddFavoriteCategoriesSearchTipProvider);
  *(v2 + 112) = v8;
  static BaseObjectGraph.current.getter();
  v9 = type metadata accessor for CategoriesSavedTipProvider();
  swift_allocObject();
  v10 = CategoriesSavedTipProvider.init(asPartOf:)();
  *(v2 + 176) = v9;
  *(v2 + 184) = sub_100283980(&qword_10057AC08, &type metadata accessor for CategoriesSavedTipProvider, &protocol conformance descriptor for CategoriesSavedTipProvider);
  *(v2 + 152) = v10;
  static BaseObjectGraph.current.getter();
  v11 = type metadata accessor for NotFindingAnythingTipProvider();
  swift_allocObject();
  v12 = NotFindingAnythingTipProvider.init(asPartOf:)();
  *(v2 + 216) = v11;
  *(v2 + 224) = sub_100283980(&qword_10057AC10, &type metadata accessor for NotFindingAnythingTipProvider, &protocol conformance descriptor for NotFindingAnythingTipProvider);
  *(v2 + 192) = v12;
  static BaseObjectGraph.current.getter();
  v13 = type metadata accessor for AddFavoriteCategoriesButtonTipProvider();
  swift_allocObject();
  v14 = AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)();
  *(v2 + 256) = v13;
  *(v2 + 264) = &protocol witness table for AddFavoriteCategoriesButtonTipProvider;
  *(v2 + 232) = v14;
  static BaseObjectGraph.current.getter();
  v15 = type metadata accessor for StayUpToDateTipProvider();
  swift_allocObject();
  v16 = StayUpToDateTipProvider.init(asPartOf:)();
  *(v2 + 296) = v15;
  *(v2 + 304) = &protocol witness table for StayUpToDateTipProvider;
  *(v2 + 272) = v16;
  a1[3] = sub_100168088(&qword_10057AC18, &qword_100408250);
  a1[4] = sub_100009FAC(&qword_10057AC20, &qword_10057AC18, &qword_100408250, &protocol conformance descriptor for OrderedTipProvider<A>);
  sub_10000E680(a1);
  return OrderedTipProvider<>.init(providers:)();
}

uint64_t sub_100283930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ForegroundSessionPreconnecter();
  swift_allocObject();
  result = ForegroundSessionPreconnecter.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100283980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002839C8()
{
  result = qword_10057AC58;
  if (!qword_10057AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AC58);
  }

  return result;
}

unint64_t sub_100283A1C()
{
  result = qword_10057AF78;
  if (!qword_10057AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF78);
  }

  return result;
}

unint64_t sub_100283A70()
{
  result = qword_10057AF80;
  if (!qword_10057AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AF80);
  }

  return result;
}

unint64_t sub_100283AC4()
{
  result = qword_10057AFA8;
  if (!qword_10057AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AFA8);
  }

  return result;
}

unint64_t sub_100283B18()
{
  result = qword_10057AFB0;
  if (!qword_10057AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AFB0);
  }

  return result;
}

double sub_100283B74@<D0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() systemOrangeColor];
  v4 = [objc_opt_self() mainBundle];
  v12._object = 0xE600000000000000;
  v12._countAndFlagsBits = 0x657661736E55;
  v5._object = 0x800000010046C780;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v12);

  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;

  return result;
}

void sub_100283C64()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BookmarksControllerEpisodeData();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v31[-v9];
  v11 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 16))
  {
    v36 = v12;
    v37 = v3;
    v35 = v2;

    static Logger.podcastsStatesCoordination.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v38 = v5;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v34 = v6;
      v19 = v18;
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v19 = 136315394;
      v32 = v16;
      sub_1003972E0(v10);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000153E0(v20, v21, v40);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1000153E0(v24, v26, v40);

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v32, "RemoveEpisodeFromBookmarksContextAction.handler() - Unbookmarking episode %s %s", v19, 0x16u);
      swift_arrayDestroy();

      v6 = v34;
    }

    (*(v11 + 8))(v14, v36);
    sub_1003972E0(v8);
    swift_beginAccess();
    v28 = v37;
    if (*(v1 + 24))
    {

      v29 = v39;
      dispatch thunk of ContextActionsConfiguration.context.getter();

      v30 = InteractionContext.view.getter();
      (*(v28 + 8))(v29, v35);
      if ((v30 - 5) > 2u)
      {
        InteractionContext.EpisodeCellType.showsEpisodeControls.getter();
      }
    }

    BookmarksController.removeEpisodesFromBookmarks(with:showHUDConfirmation:)();

    (*(v6 + 8))(v8, v38);
  }
}

uint64_t sub_1002840D0()
{

  v1 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveEpisodeFromBookmarksContextAction(uint64_t a1)
{
  result = qword_10057B030;
  if (!qword_10057B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100284200(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10028430C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_10028439C@<D0>(uint64_t a1@<X8>)
{
  sub_100283B74(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1002843DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028443C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028449C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002844FC()
{
  v1 = type metadata accessor for BookmarksControllerEpisodeData();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 16))
  {

    sub_1003972E0(v4);
    v5 = BookmarksController.containsBookmarkedEpisodes(in:)();

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100284608(uint64_t a1)
{
  result = sub_100284690(&qword_10057B1A0, &unk_1004083B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028464C(uint64_t a1)
{
  result = sub_100284690(&qword_10057B1A8, &unk_100408408);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100284690(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveEpisodeFromBookmarksContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1002846D4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1002846E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10028473C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1002847B4()
{
  result = qword_10057B1B0;
  if (!qword_10057B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B1B0);
  }

  return result;
}

void sub_100284820(uint64_t *a1)
{
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v4 = &v24 - v3;
  v5 = type metadata accessor for ArtworkRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  sub_100226208();
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v13 = v12;
    v24 = 0;
    v29 = v11;
    if (v12 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = v29;
      v25 = a1;
      if (!i)
      {
        break;
      }

      v32 = v10;
      v26 = v8;
      v27 = v6;
      v10 = 0;
      v34 = v13 & 0xC000000000000001;
      v33 = v13 & 0xFFFFFFFFFFFFFF8;
      v30 = (v6 + 32);
      a1 = _swiftEmptyArrayStorage;
      v28 = v5;
      v31 = i;
      while (1)
      {
        if (v34)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v33 + 16))
          {
            goto LABEL_23;
          }

          v16 = *(v13 + 8 * v10 + 32);
        }

        v17 = v16;
        v6 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v8 = v13;
        MTPodcast.uberBackgroundArtworkModel.getter();
        v18 = type metadata accessor for ArtworkModel();
        if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
        {

          sub_10021F030(v4);
        }

        else
        {
          v19 = v26;
          ArtworkModel.preferredRequest.getter();

          sub_1001A0664(v4);
          v20 = *v30;
          (*v30)(v32, v19, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100036414(0, a1[2] + 1, 1, a1);
          }

          v22 = a1[2];
          v21 = a1[3];
          v15 = v29;
          if (v22 >= v21 >> 1)
          {
            a1 = sub_100036414((v21 > 1), v22 + 1, 1, a1);
          }

          a1[2] = v22 + 1;
          v23 = a1 + ((v27[80] + 32) & ~v27[80]) + *(v27 + 9) * v22;
          v5 = v28;
          v20(v23, v32, v28);
        }

        ++v10;
        if (v6 == v31)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_21:

    *v25 = a1;
  }
}

id sub_100284BE0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v19 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v19];

  if (v6)
  {
    return v19;
  }

  v8 = v19;
  v9 = _convertNSErrorToError(_:)();

  swift_willThrow();
  static Logger.artwork.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v0;
    v18[1] = v9;
    v14 = v13;
    v19 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000153E0(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to remove uber artwork: %s", v12, 0xCu);
    sub_100004590(v14);

    return (*(v1 + 8))(v3, v18[0]);
  }

  else
  {

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_100284EBC()
{
  v110 = type metadata accessor for Logger();
  v106 = *(v110 - 8);
  __chkstk_darwin();
  v105 = &v102 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for ArtworkRequest();
  v2 = *(v1 - 8);
  v114 = v1;
  v115 = v2;
  __chkstk_darwin();
  v113 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100168088(&qword_100577B28, qword_100408580);
  v4 = *(v111 - 8);
  __chkstk_darwin();
  v6 = &v102 - v5;
  v7 = sub_100168088(&qword_100577B30, &qword_100405020);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v102 - v9;
  v11 = type metadata accessor for AssetCaches();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for URL();
  v112 = *(v116 - 8);
  __chkstk_darwin();
  v108 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v102 - v16;
  __chkstk_darwin();
  v109 = &v102 - v17;
  __chkstk_darwin();
  v19 = &v102 - v18;
  static AssetCaches.shared.getter();
  AssetCaches.artwork.getter();
  (*(v12 + 8))(v14, v11);
  CacheDomain.disk.getter();
  (*(v8 + 8))(v10, v7);
  v20 = v111;
  CacheDomain.DiskCaches.directory.getter();
  (*(v4 + 8))(v6, v20);
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23._countAndFlagsBits = URL.path.getter();
  LOBYTE(v14) = NSFileManager.fileExists(at:isDirectory:)(v23, 1);

  if (v14)
  {
    v24 = [objc_opt_self() sharedInstance];
    v25 = [v24 privateQueueContext];

    v119 = _swiftEmptyArrayStorage;
    __chkstk_darwin();
    *(&v102 - 2) = &v119;
    *(&v102 - 1) = v25;
    v26 = v107;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v107 = v26;
    if (v26)
    {

      (*(v112 + 8))(v19, v116);
    }

    v106 = v25;
    v32 = v119;
    v33 = v119[2];
    v34 = _swiftEmptyArrayStorage;
    v103 = v19;
    v105 = v119;
    if (v33)
    {
      v102 = v21;
      v117[0] = _swiftEmptyArrayStorage;
      sub_1001A7364(0, v33, 0);
      v34 = v117[0];
      v35 = v115[2];
      v36 = v32 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v110 = v115[9];
      v111 = v35;
      v115 += 2;
      v37 = v115 - 1;
      do
      {
        v38 = v113;
        v39 = v114;
        (v111)(v113, v36, v114);
        v40 = ArtworkRequest.stableFilePrefix.getter();
        v42 = v41;
        (*v37)(v38, v39);
        v117[0] = v34;
        v44 = v34[2];
        v43 = v34[3];
        if (v44 >= v43 >> 1)
        {
          sub_1001A7364((v43 > 1), v44 + 1, 1);
          v34 = v117[0];
        }

        v34[2] = v44 + 1;
        v45 = &v34[2 * v44];
        v45[4] = v40;
        v45[5] = v42;
        v36 += v110;
        --v33;
      }

      while (v33);
      v19 = v103;
      v21 = v102;
    }

    v46 = sub_10039B51C(v34);

    v47 = [v21 defaultManager];
    URL.path.getter();
    v48 = String._bridgeToObjectiveC()();

    v117[0] = 0;
    v49 = [v47 subpathsOfDirectoryAtPath:v48 error:v117];

    v50 = v117[0];
    v51 = v112;
    if (!v49)
    {
      v75 = v117[0];

      v76 = _convertNSErrorToError(_:)();

      v107 = v76;
      swift_willThrow();

      (*(v51 + 8))(v19, v116);
    }

    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v50;

    v114 = *(v52 + 16);
    if (v114)
    {
      v54 = 0;
      v113 = (v52 + 32);
      v55 = v46 + 56;
      v115 = _swiftEmptyArrayStorage;
      v111 = v52;
      while (v54 < *(v52 + 16))
      {
        v56 = &v113[16 * v54];
        v58 = *v56;
        v57 = *(v56 + 1);
        ++v54;

        v59 = static ArtworkRequest.comparablePrefix(from:)();
        v61 = v60;
        if (*(v46 + 16) && (v62 = v59, Hasher.init(_seed:)(), String.hash(into:)(), v63 = Hasher._finalize()(), v64 = -1 << *(v46 + 32), v65 = v63 & ~v64, ((*(v55 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0))
        {
          v66 = ~v64;
          while (1)
          {
            v67 = (*(v46 + 48) + 16 * v65);
            v68 = *v67 == v62 && v67[1] == v61;
            if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v65 = (v65 + 1) & v66;
            if (((*(v55 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v69 = v115;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001A7364(0, v69[2] + 1, 1);
            v69 = v118;
          }

          v72 = v69[2];
          v71 = v69[3];
          v73 = v69;
          if (v72 >= v71 >> 1)
          {
            sub_1001A7364((v71 > 1), v72 + 1, 1);
            v73 = v118;
          }

          v73[2] = v72 + 1;
          v115 = v73;
          v74 = &v73[2 * v72];
          v74[4] = v58;
          v74[5] = v57;
        }

        else
        {
LABEL_17:
        }

        v52 = v111;
        v51 = v112;
        if (v54 == v114)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v115 = _swiftEmptyArrayStorage;
LABEL_37:

    v112 = *(v51 + 16);
    v113 = (v51 + 16);
    (v112)(v109, v103, v116);
    v77 = v115[2];
    if (v77)
    {
      v117[0] = _swiftEmptyArrayStorage;
      sub_1001A7384(0, v77, 0);
      v78 = v115;
      v79 = 0;
      v80 = v117[0];
      v114 = (v51 + 32);
      v81 = v115 + 5;
      v82 = v104;
      do
      {
        if (v79 >= v78[2])
        {
          goto LABEL_58;
        }

        URL.appendingPathComponent(_:)();

        v117[0] = v80;
        v84 = v80[2];
        v83 = v80[3];
        if (v84 >= v83 >> 1)
        {
          sub_1001A7384((v83 > 1), v84 + 1, 1);
          v80 = v117[0];
        }

        ++v79;
        v80[2] = v84 + 1;
        (*(v51 + 32))(v80 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v84, v82, v116);
        v81 += 2;
        v78 = v115;
      }

      while (v77 != v79);
    }

    else
    {

      v80 = _swiftEmptyArrayStorage;
    }

    v114 = *(v51 + 8);
    v115 = (v51 + 8);
    v114(v109, v116);
    v85 = v80[2];
    if (v85)
    {
      v117[0] = _swiftEmptyArrayStorage;
      sub_1001A7364(0, v85, 0);
      v86 = v117[0];
      v87 = v80 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v111 = *(v51 + 72);
      do
      {
        v88 = v108;
        v89 = v116;
        (v112)(v108, v87, v116);
        v90 = URL.path.getter();
        v92 = v91;
        v114(v88, v89);
        v117[0] = v86;
        v94 = v86[2];
        v93 = v86[3];
        if (v94 >= v93 >> 1)
        {
          sub_1001A7364((v93 > 1), v94 + 1, 1);
          v86 = v117[0];
        }

        v86[2] = (v94 + 1);
        v95 = &v86[2 * v94];
        v95[4] = v90;
        v95[5] = v92;
        v87 += v111;
        --v85;
      }

      while (v85);
    }

    else
    {

      v86 = _swiftEmptyArrayStorage;
    }

    v96 = v86[2];
    v97 = v107;
    v98 = v103;
    if (v96)
    {
      v99 = 0;
      v100 = v86 + 5;
      while (v99 < v86[2])
      {
        ++v99;
        v101 = *v100;
        v117[0] = *(v100 - 1);
        v117[1] = v101;
        sub_100284BE0();
        v100 += 2;
        if (v96 == v99)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_59;
    }

LABEL_56:
    v107 = v97;

    v114(v98, v116);
  }

  else
  {
    v28 = v105;
    static Logger.artwork.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Uber migration unnecessary, artwork cache never created", v31, 2u);
    }

    (*(v106 + 1))(v28, v110);
    return (*(v112 + 8))(v19, v116);
  }
}