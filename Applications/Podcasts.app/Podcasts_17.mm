unint64_t sub_100285C20@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for EpisodeEntity();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    return result;
  }

  v26 = 0;
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v23 = result;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  result = v23;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v12 = result;
  v28 = _swiftEmptyArrayStorage;
  result = sub_1001A7848(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = a2;
    v13 = v28;
    v14 = v12;
    v27 = v4;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v14;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        EpisodeEntity.init(model:)();
        v28 = v13;
        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          sub_1001A7848((v17 > 1), v18 + 1, 1);
          v13 = v28;
        }

        ++v15;
        v13[2] = v18 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v9, v27);
        v14 = v16;
      }

      while (v11 != v15);
    }

    else
    {
      v19 = 32;
      do
      {
        v20 = *(v12 + v19);
        EpisodeEntity.init(model:)();
        v28 = v13;
        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          sub_1001A7848((v21 > 1), v22 + 1, 1);
          v13 = v28;
        }

        v13[2] = v22 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v27);
        v19 += 8;
        --v11;
      }

      while (v11);
    }

    *v25 = v13;
  }

  return result;
}

uint64_t sub_100285F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1001B9C88;

  return (sub_100285FCC)(a2, a3);
}

uint64_t sub_100285FCC(uint64_t a1)
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
  v5[1] = sub_100286144;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v4, v4);
}

uint64_t sub_100286144()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10026E9D8;
  }

  else
  {
    v2 = sub_100286258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100286258()
{
  v1 = v0[12];
  v0[13] = v0[2];
  swift_getObjectType();
  j___sScTss5NeverORszABRs_rlE15currentPriorityScPvgZ();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v0[14] = v2;
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  if (v1)
  {
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = v0[4];
    (*(v4 + 8))(v0[10], v0[8]);
    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
    v0[15] = v10;
    [v10 setFetchLimit:*(v9 + *(type metadata accessor for FetchShowLatestLocalEpisodesIntent(0) + 20))];
    isa = [objc_opt_self() sortDescriptorsForFirstAvailableAscending:0];
    if (!isa)
    {
      sub_100009F1C(0, &qword_10057B1F0, NSSortDescriptor_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v12 = v0[6];
    v25 = v0[7];
    v13 = v0[5];
    [v10 setSortDescriptors:isa];

    sub_100009F1C(0, &qword_100573660, MTEpisode_ptr);
    v14 = ShowEntity.preferredIdentifier()();
    v16 = v15;
    v18 = v17;
    v19 = static MTEpisode.predicateForAllEpisodes(forPodcast:)();
    sub_1001CEA68(v14, v16, v18);
    [v10 setPredicate:v19];

    v20 = swift_allocObject();
    v0[16] = v20;
    *(v20 + 16) = v8;
    *(v20 + 24) = v10;
    (*(v12 + 104))(v25, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v13);
    v8;
    v21 = v10;
    v22 = swift_task_alloc();
    v0[17] = v22;
    v23 = sub_100168088(&unk_10057B200, qword_100408628);
    *v22 = v0;
    v22[1] = sub_1002865B0;
    v24 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v24, sub_100286858, v20, v23);
  }
}

uint64_t sub_1002865B0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_1002867D0;
  }

  else
  {
    v3 = sub_100286734;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100286734()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002867D0()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100286960(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncabilityController;
  swift_beginAccess();
  sub_100010430(v1 + v2, v7, &qword_10057B380, &qword_100408738);
  if (!v8)
  {
    return sub_100009104(v7, &qword_10057B380, &qword_100408738);
  }

  sub_100004428(v7, v6);
  sub_100009104(v7, &qword_10057B380, &qword_100408738);
  v3 = v6[4];
  sub_1000044A0(v6, v6[3]);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v3 + 16))(v4);

  return sub_100004590(v6);
}

id sub_100286ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformContentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100286B80()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100286BB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100184658(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10025ED70(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10028A5E4(a2, type metadata accessor for DownloadJob);
    *v2 = v6;
  }

  else
  {
    sub_100009104(a1, &unk_1005817B0, &unk_10040F660);
    sub_10028A308(a2, v7);
    sub_10028A5E4(a2, type metadata accessor for DownloadJob);
    return sub_100009104(v7, &unk_1005817B0, &unk_10040F660);
  }

  return result;
}

void sub_100286C9C(uint64_t a1, void *a2)
{
  sub_100168088(&qword_10057B4F0, &qword_1004087F8);
  __chkstk_darwin();
  v6 = &v12 - v5;
  type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  v7 = __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_100009104(a1, &qword_10057B4F0, &qword_1004087F8);
    sub_10028A3E8(a2, v6);

    sub_100009104(v6, &qword_10057B4F0, &qword_1004087F8);
  }

  else
  {
    sub_10028A1DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_10025F364(v9, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
  }
}

uint64_t sub_100286E40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v32 = a3;
  v33 = a4;
  v31 = *v4;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  __chkstk_darwin();
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4[5];
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = a1;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v31;
  v19 = v32;
  *(v17 + v15) = v32;
  v20 = v33;
  *(v17 + v16) = v33;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_10028A53C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E9098;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  v23 = v19;
  v24 = v20;
  v25 = v30;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  v26 = v35;
  v27 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v38);
}

uint64_t sub_100287278(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = a2;
  v8 = *v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4[5];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v23;
  v16[7] = v8;
  aBlock[4] = sub_10028A0E0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E9048;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  v19 = a3;
  v20 = a4;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100015E58(&qword_10057D390, &unk_100575CD0, &unk_100400B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v26 + 8))(v11, v9);
  (*(v12 + 8))(v14, v25);
}

uint64_t sub_1002875BC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v64 = a4;
  v65 = a5;
  v73 = a3;
  sub_100168088(&qword_10057B4F0, &qword_1004087F8);
  __chkstk_darwin();
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v55 - v8;
  __chkstk_darwin();
  v69 = &v55 - v9;
  v10 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  v68 = *(v10 - 8);
  __chkstk_darwin();
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v66 = *(v17 - 8);
  v67 = v17;
  __chkstk_darwin();
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v72 = result;
  if (result)
  {
    static Logger.downloads.getter();
    v60 = *(v14 + 16);
    v61 = v14 + 16;
    v60(v16, v73, v13);
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v59 = v23;
    v24 = os_log_type_enabled(v22, v23);
    v62 = v13;
    v63 = v14;
    v71 = v21;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v74[0] = v57;
      *v25 = 136316163;
      *(v25 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v74);
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      v26 = [v21 description];
      v56 = v22;
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v12;
      v29 = v10;
      v30 = v7;
      v32 = v31;

      v33 = sub_1000153E0(v28, v32, v74);
      v7 = v30;
      v10 = v29;
      v12 = v58;

      *(v25 + 24) = v33;
      *(v25 + 32) = 2160;
      *(v25 + 34) = 1752392040;
      *(v25 + 42) = 2081;
      v34 = URL.path(percentEncoded:)(1);
      (*(v14 + 8))(v16, v13);
      v35 = sub_1000153E0(v34._countAndFlagsBits, v34._object, v74);

      *(v25 + 44) = v35;
      v36 = v56;
      _os_log_impl(&_mh_execute_header, v56, v59, "%s didFinishDownloading %{private,mask.hash}s to %{private,mask.hash}s.", v25, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    (*(v66 + 8))(v19, v67);
    v37 = v70;
    v38 = v72;
    swift_beginAccess();
    v39 = *(v38 + 32);
    v41 = v68;
    v40 = v69;
    if (*(v39 + 16) && (v42 = sub_1002021B8(v71), (v43 & 1) != 0))
    {
      sub_10028A178(*(v39 + 56) + *(v41 + 72) * v42, v40);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *(v41 + 56);
    v45(v40, v44, 1, v10);
    sub_10028A0F0(v40, v37);
    if ((*(v41 + 48))(v37, 1, v10) == 1)
    {
      v47 = v62;
      v46 = v63;
      (*(v63 + 56))(v12 + *(v10 + 24), 1, 1, v62);
      v48 = v64;
      v49 = v65;
      *v12 = v64;
      v12[1] = v49;
      v50 = v12 + *(v10 + 28);
      *v50 = 0;
      v50[8] = -1;
      v51 = v48;
      v52 = v49;
      sub_100009104(v37, &qword_10057B4F0, &qword_1004087F8);
    }

    else
    {
      sub_10028A1DC(v37, v12);
      v47 = v62;
      v46 = v63;
    }

    swift_endAccess();
    v53 = *(v10 + 24);
    sub_100009104(v12 + v53, &qword_100574040, &unk_100400AD0);
    v60(v12 + v53, v73, v47);
    (*(v46 + 56))(v12 + v53, 0, 1, v47);
    sub_10028A178(v12, v7);
    v45(v7, 0, 1, v10);
    swift_beginAccess();
    v54 = v71;
    sub_100286C9C(v7, v54);
    swift_endAccess();
    sub_100287CAC(v54);

    return sub_10028A5E4(v12, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
  }

  return result;
}

uint64_t sub_100287CAC(void *a1)
{
  sub_100168088(&qword_10057B4F0, &qword_1004087F8);
  __chkstk_darwin();
  v4 = &v103 - v3;
  v109 = sub_100168088(&qword_100582810, &unk_100408800);
  __chkstk_darwin();
  v111 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v110 = (&v103 - v6);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v119 = (&v103 - v7);
  v8 = type metadata accessor for URL();
  v116 = *(v8 - 8);
  v117 = v8;
  __chkstk_darwin();
  v105 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v103 - v10;
  v11 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin();
  v113 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v103 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v121 = v14;
  v122 = v15;
  __chkstk_darwin();
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v103 - v18;
  __chkstk_darwin();
  v106 = &v103 - v19;
  __chkstk_darwin();
  v21 = &v103 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin();
  v26 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 40);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22, v24);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v26, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v108 = v4;
  v120 = v1;
  static Logger.downloads.getter();
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v34 = 136315651;
    *(v34 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v123);
    *(v34 + 12) = 2160;
    *(v34 + 14) = 1752392040;
    *(v34 + 22) = 2081;
    v35 = [v31 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v31;
    v39 = v38;

    v40 = sub_1000153E0(v36, v39, v123);
    v31 = v37;

    *(v34 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s Validating download status for %{private,mask.hash}s.", v34, 0x20u);
    swift_arrayDestroy();
  }

  v41 = *(v122 + 8);
  v42 = v21;
  v43 = v121;
  v41(v42, v121);
  v44 = v119;
  v45 = v120;
  swift_beginAccess();
  v46 = *(v45 + 32);
  if (!*(v46 + 16) || (v47 = sub_1002021B8(v31), (v48 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_10;
  }

  v49 = v113;
  sub_10028A178(*(v46 + 56) + *(v114 + 72) * v47, v113);
  v50 = v118;
  sub_10028A1DC(v49, v118);
  swift_endAccess();
  v51 = v50 + *(v115 + 28);
  LODWORD(v52) = *(v51 + 8);
  if (v52 == 255)
  {
    sub_10028A5E4(v50, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
    goto LABEL_10;
  }

  v53 = *v51;
  sub_100010430(v50 + *(v115 + 24), v44, &qword_100574040, &unk_100400AD0);
  v55 = v116;
  v54 = v117;
  if ((*(v116 + 48))(v44, 1, v117) == 1)
  {
    sub_10028A5E4(v50, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
    sub_100009104(v44, &qword_100574040, &unk_100400AD0);
    v43 = v121;
LABEL_10:
    static Logger.downloads.getter();
    v56 = v31;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v59 = 136315651;
      *(v59 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v123);
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      v60 = [v56 description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_1000153E0(v61, v63, v123);

      *(v59 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s Incomplete download data for %{private,mask.hash}s.", v59, 0x20u);
      swift_arrayDestroy();
    }

    return (v41)(v17, v43);
  }

  v66 = *(v55 + 32);
  v65 = v55 + 32;
  v119 = v66;
  v66(v112, v44, v54);
  v104 = v31;
  if (v52)
  {
    sub_10028A240(v53, v52);
    sub_10028A258(v53, 1);
    v67 = v107;
    static Logger.downloads.getter();
    v68 = v31;
    sub_10028A240(v53, v52);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    sub_10028A160(v53, v52);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      LODWORD(v115) = v52;
      v52 = v71;
      v72 = swift_slowAlloc();
      v114 = v65;
      v123[0] = v72;
      *v52 = 136316163;
      *(v52 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v123);
      *(v52 + 12) = 2160;
      *(v52 + 14) = 1752392040;
      *(v52 + 22) = 2081;
      v73 = [v68 description];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_1000153E0(v74, v76, v123);

      *(v52 + 24) = v77;
      *(v52 + 32) = 2160;
      *(v52 + 34) = 1752392040;
      *(v52 + 42) = 2081;
      swift_getErrorValue();
      v78 = Error.localizedDescription.getter();
      v80 = sub_1000153E0(v78, v79, v123);

      *(v52 + 44) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "%s Download for %{private,mask.hash}s failed with %{private,mask.hash}s.", v52, 0x34u);
      swift_arrayDestroy();

      LOBYTE(v52) = v115;

      v81 = v107;
    }

    else
    {

      v81 = v67;
    }

    v41(v81, v121);
    v96 = v110;
    *v110 = v53;
    swift_storeEnumTagMultiPayload();
    sub_10028A258(v53, 1);
    sub_1002892BC(v68, v112);
    sub_10028A160(v53, v52);
    v97 = v111;
  }

  else
  {
    sub_10028A258(v53, 0);
    v82 = v106;
    static Logger.downloads.getter();
    v83 = v31;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      LODWORD(v114) = v85;
      v87 = v86;
      v115 = swift_slowAlloc();
      v123[0] = v115;
      *v87 = 136315651;
      *(v87 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v123);
      *(v87 + 12) = 2160;
      *(v87 + 14) = 1752392040;
      *(v87 + 22) = 2081;
      v88 = [v83 description];
      v89 = v52;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v53;
      v92 = v91;

      v93 = v52;
      LOBYTE(v52) = v89;
      v94 = sub_1000153E0(v93, v92, v123);
      v53 = v90;

      *(v87 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v84, v114, "%s Download for %{private,mask.hash}s successfully completed.", v87, 0x20u);
      swift_arrayDestroy();

      v95 = v106;
    }

    else
    {

      v95 = v82;
    }

    v41(v95, v121);
    v96 = v110;
    v97 = v111;
    (*(v116 + 16))(v110, v112, v117);
    swift_storeEnumTagMultiPayload();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v98 = *(v118 + 8);
    sub_100010430(v96, v97, &qword_100582810, &unk_100408800);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025AA40(v98, *v97);
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = v105;
      v100 = v97;
      v101 = v117;
      v119(v105, v100, v117);
      sub_10025A574(v98, v99);
      swift_unknownObjectRelease();
      (*(v116 + 8))(v99, v101);
    }
  }

  swift_beginAccess();
  v102 = v108;
  sub_10028A3E8(v104, v108);
  swift_endAccess();
  sub_10028A160(v53, v52);
  sub_100009104(v102, &qword_10057B4F0, &qword_1004087F8);
  sub_100009104(v96, &qword_100582810, &unk_100408800);
  (*(v116 + 8))(v112, v117);
  return sub_10028A5E4(v118, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
}

uint64_t sub_100288B2C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v60 = a4;
  v65 = a2;
  v7 = type metadata accessor for Logger();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin();
  v61 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v59 - v9;
  sub_100168088(&qword_10057B4F0, &qword_1004087F8);
  __chkstk_darwin();
  v64 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v59 - v12;
  __chkstk_darwin();
  v15 = v59 - v14;
  v16 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    v22 = *(v21 + 32);
    if (*(v22 + 16) && (v23 = sub_1002021B8(v65), (v24 & 1) != 0))
    {
      sub_10028A178(*(v22 + 56) + *(v17 + 72) * v23, v15);
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v59[0] = *(v17 + 56);
    v59[1] = v17 + 56;
    (v59[0])(v15, v25, 1, v16);
    sub_10028A0F0(v15, v13);
    if ((*(v17 + 48))(v13, 1, v16) == 1)
    {
      v26 = *(v16 + 24);
      v27 = type metadata accessor for URL();
      (*(*(v27 - 8) + 56))(&v19[v26], 1, 1, v27);
      v28 = v60;
      *v19 = a3;
      *(v19 + 1) = v28;
      v29 = &v19[*(v16 + 28)];
      *v29 = 0;
      v29[8] = -1;
      v30 = a3;
      v31 = v28;
      sub_100009104(v13, &qword_10057B4F0, &qword_1004087F8);
    }

    else
    {
      sub_10028A1DC(v13, v19);
    }

    swift_endAccess();
    if (a5)
    {
      swift_errorRetain();
      static Logger.downloads.getter();
      swift_errorRetain();
      v32 = v65;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v66[0] = v61;
        *v35 = 136316163;
        *(v35 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v66);
        *(v35 + 12) = 2160;
        *(v35 + 14) = 1752392040;
        *(v35 + 22) = 2081;
        v36 = [v32 description];
        LODWORD(v60) = v34;
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = sub_1000153E0(v38, v40, v66);

        *(v35 + 24) = v41;
        *(v35 + 32) = 2160;
        *(v35 + 34) = 1752392040;
        *(v35 + 42) = 2081;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_1000153E0(v42, v43, v66);

        *(v35 + 44) = v44;
        _os_log_impl(&_mh_execute_header, v33, v60, "%s didCompleteDownload %{private,mask.hash}s with %{private,mask.hash}s.", v35, 0x34u);
        swift_arrayDestroy();
      }

      (*(v62 + 8))(v10, v63);
      v45 = 1;
    }

    else
    {
      v46 = v61;
      static Logger.downloads.getter();
      v47 = v65;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v50 = 136315651;
        *(v50 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v66);
        *(v50 + 12) = 2160;
        *(v50 + 14) = 1752392040;
        *(v50 + 22) = 2081;
        v51 = [v47 description];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = sub_1000153E0(v52, v54, v66);

        *(v50 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "%s didCompleteDownload %{private,mask.hash}s.", v50, 0x20u);
        swift_arrayDestroy();

        (*(v62 + 8))(v61, v63);
      }

      else
      {

        (*(v62 + 8))(v46, v63);
      }

      a5 = 0;
      v45 = 0;
    }

    v56 = &v19[*(v16 + 28)];
    sub_10028A160(*v56, v56[8]);
    *v56 = a5;
    v56[8] = v45;
    v57 = v64;
    sub_10028A178(v19, v64);
    (v59[0])(v57, 0, 1, v16);
    swift_beginAccess();
    v58 = v65;
    sub_100286C9C(v57, v58);
    swift_endAccess();
    sub_100287CAC(v58);

    return sub_10028A5E4(v19, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
  }

  return result;
}

uint64_t sub_1002892BC(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v124 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v116 = &v112[-v8];
  __chkstk_darwin();
  v123 = &v112[-v9];
  __chkstk_darwin();
  v127 = &v112[-v10];
  v126 = type metadata accessor for Logger();
  v128 = *(v126 - 8);
  __chkstk_darwin();
  v12 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v117 = &v112[-v13];
  __chkstk_darwin();
  v125 = &v112[-v14];
  __chkstk_darwin();
  v16 = &v112[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin();
  v21 = &v112[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v2 + 40);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17, v19);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
  }

  v115 = v12;
  static Logger.downloads.getter();
  v24 = *(v6 + 16);
  v120 = (v6 + 16);
  v121 = a2;
  v118 = v24;
  v24(v127, a2, v5);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v5;
  v122 = v6;
  v119 = v25;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v129 = v114;
    *v30 = 136316163;
    *(v30 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v129);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    v31 = [v25 description];
    v113 = v27;
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_1000153E0(v33, v35, &v129);
    v37 = v126;
    v38 = v128;

    *(v30 + 24) = v36;
    *(v30 + 32) = 2160;
    *(v30 + 34) = 1752392040;
    *(v30 + 42) = 2081;
    v39 = v127;
    v40 = URL.path(percentEncoded:)(1);
    v127 = *(v6 + 8);
    (v127)(v39, v29);
    v41 = sub_1000153E0(v40._countAndFlagsBits, v40._object, &v129);

    *(v30 + 44) = v41;
    _os_log_impl(&_mh_execute_header, v26, v113, "%s Removing asset %{private,mask.hash}s at %{private,mask.hash}s.", v30, 0x34u);
    swift_arrayDestroy();

    v42 = v38;
    v43 = v37;
    v44 = *(v42 + 8);
    v44(v16, v37);
  }

  else
  {

    v45 = v127;
    v127 = *(v6 + 8);
    (v127)(v45, v5);
    v44 = *(v128 + 8);
    v43 = v126;
    v44(v16, v126);
  }

  v46 = v125;
  v47 = [objc_opt_self() defaultManager];
  v48 = v121;
  URL.path(percentEncoded:)(0);
  v49 = String._bridgeToObjectiveC()();

  v50 = [v47 fileExistsAtPath:v49];

  v52 = v123;
  v53 = v124;
  if (!v50)
  {
    v73 = v117;
    static Logger.downloads.getter();
    v74 = v116;
    v118(v116, v48, v29);
    v75 = v119;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v121 = v47;
      v79 = v78;
      v80 = swift_slowAlloc();
      v125 = v29;
      v129 = v80;
      *v79 = 136316163;
      *(v79 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v129);
      *(v79 + 12) = 2160;
      *(v79 + 14) = 1752392040;
      *(v79 + 22) = 2081;
      v81 = [v75 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v44;
      v83 = v82;
      v85 = v84;

      v86 = sub_1000153E0(v83, v85, &v129);

      *(v79 + 24) = v86;
      *(v79 + 32) = 2160;
      *(v79 + 34) = 1752392040;
      *(v79 + 42) = 2081;
      v87 = URL.path(percentEncoded:)(1);
      (v127)(v74, v125);
      v88 = sub_1000153E0(v87._countAndFlagsBits, v87._object, &v129);

      *(v79 + 44) = v88;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s Unable to remove %{private,mask.hash}s at %{private,mask.hash}s since the file doesn't exist.", v79, 0x34u);
      swift_arrayDestroy();

      v72 = v117;
      return v120(v72, v126);
    }

    (v127)(v74, v29);
    v110 = v73;
    goto LABEL_16;
  }

  URL._bridgeToObjectiveC()(v51);
  v55 = v54;
  v129 = 0;
  v56 = [v47 removeItemAtURL:v54 error:&v129];

  if (v56)
  {
    v57 = v129;
    static Logger.downloads.getter();
    v118(v52, v48, v29);
    v58 = v119;
    v59 = Logger.logObject.getter();
    v60 = v29;
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v59, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v121 = v47;
      v129 = v63;
      *v62 = 136316163;
      *(v62 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v129);
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2081;
      v64 = [v58 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v44;
      v66 = v65;
      v68 = v67;

      v69 = sub_1000153E0(v66, v68, &v129);

      *(v62 + 24) = v69;
      *(v62 + 32) = 2160;
      *(v62 + 34) = 1752392040;
      *(v62 + 42) = 2081;
      v70 = URL.path(percentEncoded:)(1);
      (v127)(v52, v60);
      v71 = sub_1000153E0(v70._countAndFlagsBits, v70._object, &v129);

      *(v62 + 44) = v71;
      _os_log_impl(&_mh_execute_header, v59, v61, "%s Removed asset %{private,mask.hash}s at %{private,mask.hash}s.", v62, 0x34u);
      swift_arrayDestroy();

      v72 = v125;
      return v120(v72, v126);
    }

    (v127)(v52, v60);
    v110 = v46;
LABEL_16:
    v111 = v126;
    return (v44)(v110, v111);
  }

  v89 = v43;
  v90 = v129;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v91 = v115;
  static Logger.downloads.getter();
  v118(v53, v48, v29);
  v92 = v119;
  swift_errorRetain();
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v121 = v47;
    v96 = v95;
    v129 = swift_slowAlloc();
    *v96 = 136316419;
    *(v96 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v129);
    *(v96 + 12) = 2160;
    *(v96 + 14) = 1752392040;
    *(v96 + 22) = 2081;
    v97 = [v92 description];
    LODWORD(v125) = v94;
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v44;
    v100 = v99;
    v102 = v101;

    v103 = sub_1000153E0(v100, v102, &v129);

    *(v96 + 24) = v103;
    *(v96 + 32) = 2160;
    *(v96 + 34) = 1752392040;
    *(v96 + 42) = 2081;
    v104 = URL.path(percentEncoded:)(1);
    (v127)(v53, v29);
    v105 = sub_1000153E0(v104._countAndFlagsBits, v104._object, &v129);

    *(v96 + 44) = v105;
    *(v96 + 52) = 2080;
    swift_getErrorValue();
    v106 = Error.localizedDescription.getter();
    v108 = sub_1000153E0(v106, v107, &v129);

    *(v96 + 54) = v108;
    _os_log_impl(&_mh_execute_header, v93, v125, "%s Unable to remove %{private,mask.hash}s at %{private,mask.hash}s with %s.", v96, 0x3Eu);
    swift_arrayDestroy();

    v72 = v91;
    return v120(v72, v126);
  }

  (v127)(v53, v29);
  v110 = v91;
  v111 = v89;
  return (v44)(v110, v111);
}

uint64_t sub_10028A070()
{
  sub_100184228(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10028A0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B4F0, &qword_1004087F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A160(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100182C18(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10028A178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A240(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10028A258(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10028A258(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

double sub_10028A264@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100202028(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10025FB74();
      v9 = v11;
    }

    sub_10016BE9C(*(v9 + 48) + 40 * v7);
    sub_10016B7CC((*(v9 + 56) + 32 * v7), a2);
    sub_1002921A8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_10028A308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100202104(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10025FF98();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for DownloadJob(0);
    sub_10028A5E4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for DownloadJob);
    sub_100184658((*(v9 + 56) + 40 * v7), a2);
    sub_10029234C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10028A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1002021B8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002604B8();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
    v18 = *(v11 - 8);
    sub_10028A1DC(v10 + *(v18 + 72) * v7, a2);
    sub_1002929A0(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_10028A53C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002875BC(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_10028A5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028A64C()
{
  v1 = v0;
  v2 = v0[2];
  sub_100004428((v0 + 3), v6);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  v0[12] = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();

  v4 = v0[9];
  if (v4)
  {
    type metadata accessor for EpisodeOfferStateCenter();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v1[10] = v5;
  }

  return result;
}

uint64_t sub_10028A71C()
{
  sub_100168088(&unk_10057BBB0, &qword_100403860);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = *(v0 + 72);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v3 + v4, v2, v5);
    v6 = type metadata accessor for EpisodeContextActionDataType(0);
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    sub_100009104(v2, &unk_10057BBB0, &qword_100403860);
    v7 = sub_10028A888();
  }

  else
  {
    v8 = type metadata accessor for EpisodeContextActionDataType(0);
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    sub_100009104(v2, &unk_10057BBB0, &qword_100403860);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028A888()
{
  if (!*(v0 + 80))
  {
    return 0;
  }

  result = sub_1001EA484();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
LABEL_3:
  v5 = 24 * v3;
  while (1)
  {
    if (v4 == v3)
    {

      v13 = _swiftEmptyArrayStorage[2];

      return v13 != 0;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v6 = v5 + 24;
    v7 = *(v2 + v5 + 48);
    v5 += 24;
    if (v7 != 2)
    {
      v9 = *(v2 + v6 + 8);
      v8 = *(v2 + v6 + 16);
      if (v7)
      {
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001A7598(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_1001A7598((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v11];
      v12[4] = v9;
      v12[5] = v8;
      *(v12 + 48) = v7;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_10028A9F0()
{
  v1 = type metadata accessor for EpisodeDeletionActionProvider.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 72);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v7 + v8, v6, v9);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1001EDA30(v6, v10);
      return;
    }

    if (*(v0 + 96))
    {
      (*(v2 + 104))(v4, enum case for EpisodeDeletionActionProvider.Context.action(_:), v1);

      v11 = dispatch thunk of EpisodeDeletionActionProvider.deleteEpisodesOrProvideDeleteActions(episodeUuids:stationUuids:context:noConfirmation:)();
      v13 = v12;
      v15 = v14;

      (*(v2 + 8))(v4, v1);
      if (!v13)
      {
        return;
      }

      sub_10028ADE4(v11, v13, v15);
    }
  }
}

uint64_t sub_10028AC0C(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 72);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v4 + v5, v3, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EDA30(v3, v7);
LABEL_6:
    v10 = [objc_opt_self() mainBundle];
    v17 = 0x800000010046CA20;
    v13 = 0x442065766F6D6552;
    v11 = 0xEF64616F6C6E776FLL;
    v12 = 0xD00000000000003BLL;
    goto LABEL_7;
  }

  v8 = *v3;

  v9 = *(v8 + 16);

  if (v9 < 2)
  {
    goto LABEL_6;
  }

  v10 = [objc_opt_self() mainBundle];
  v17 = 0x800000010046CA80;
  v11 = 0x800000010046CA60;
  v12 = 0xD00000000000003DLL;
  v13 = 0xD000000000000010;
LABEL_7:
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, 0, v10, v14, *&v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_10028ADE4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v36 = v35 - v6;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() alertControllerWithTitle:v8 message:0 preferredStyle:0];

  if (a3 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v37 = objc_opt_self();
  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  v12 = a3;
  v13 = v9;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v12 + 8 * v11 + 32);
    }

    Action.presentationStyle.getter();
    v19 = static Link.Presentation.alertDestructive.getter();
    Link.Presentation.init(rawValue:)();
    v20 = Link.Presentation.init(rawValue:)() == v19;
    Action.title.getter();
    if (v21)
    {

      v14 = String._bridgeToObjectiveC()();
    }

    else
    {

      v14 = 0;
    }

    ++v11;
    v15 = 2 * v20;
    aBlock[4] = sub_10028B940;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E8240;
    aBlock[3] = &unk_1004E9158;
    v16 = _Block_copy(aBlock);

    v17 = [v37 actionWithTitle:v14 style:v15 handler:v16];
    _Block_release(v16);

    v9 = v13;
    [v13 addAction:v17];

    v12 = a3;
  }

  while (v10 != v11);
LABEL_18:
  v22 = [v9 actions];
  sub_10028B980();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {

    return;
  }

  v25 = [objc_opt_self() mainBundle];
  v39._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0x6C65636E6143;
  v26._object = 0xE600000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v39);

  v28 = String._bridgeToObjectiveC()();

  v29 = [objc_opt_self() actionWithTitle:v28 style:1 handler:0];

  [v9 addAction:v29];
  v30 = v35[1];
  swift_beginAccess();
  if (!*(v30 + 88))
  {

    v34 = type metadata accessor for PresentationSource();
    v31 = v36;
    (*(*(v34 - 8) + 56))(v36, 1, 1, v34);
    goto LABEL_26;
  }

  v31 = v36;
  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v32 = type metadata accessor for PresentationSource();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {

LABEL_26:
    sub_100009104(v31, &unk_10057BB90, &unk_100402D60);
    return;
  }

  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

  (*(v33 + 8))(v31, v32);
}

char *sub_10028B340()
{

  sub_100004590((v0 + 24));

  v1 = OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10028B3D8()
{
  sub_10028B340();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveDownloadContextAction(uint64_t a1)
{
  result = qword_10057B520;
  if (!qword_10057B520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028B484(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10028B57C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10028B5F4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.removeEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

double sub_10028B6D4@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemRedColor];
  v3 = v2;
  v5 = sub_10028AC0C(v4);
  v7 = v6;

  *a1 = v2;
  result = 4.58823646e199;
  *(a1 + 8) = xmmword_100408810;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_10028B754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028B7B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028B814(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10028B874(uint64_t a1)
{
  result = sub_10028B8FC(&qword_10057B6B8, &unk_1004088C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028B8B8(uint64_t a1)
{
  result = sub_10028B8FC(&qword_10057B6C0, &unk_100408918);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028B8FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveDownloadContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028B940()
{
  v0 = ClosureAction.closure.getter();
  v0();
}

unint64_t sub_10028B980()
{
  result = qword_10057B6C8;
  if (!qword_10057B6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B6C8);
  }

  return result;
}

uint64_t sub_10028B9D0()
{
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DC00(v0 + v5, v4);
  v6 = type metadata accessor for EpisodePlayState();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    goto LABEL_6;
  }

  sub_10028DC00(v4, v2);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v2, &type metadata accessor for EpisodePlayState);
LABEL_6:
    v8 = [objc_opt_self() mainBundle];
    v15 = 0xEC00000065646F73;
    v9 = 0x6970452079616C50;
    v11 = 0x800000010046CAF0;
    v10 = 0xD000000000000013;
    goto LABEL_7;
  }

  v7 = v2[16];
  v8 = [objc_opt_self() mainBundle];
  if (v7 == 1)
  {
    v15 = 0xEE0065646F736970;
    v9 = 0x4520656D75736552;
    v10 = 0xD000000000000015;
    v11 = 0x800000010046CB30;
  }

  else
  {
    v15 = 0xED000065646F7369;
    v9 = 0x7045206573756150;
    v10 = 0xD000000000000014;
    v11 = 0x800000010046CB10;
  }

LABEL_7:
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v8, v12, *&v9)._countAndFlagsBits;

  sub_100009104(v4, &qword_100578FE0, &unk_100408A60);
  return countAndFlagsBits;
}

uint64_t sub_10028BC74()
{
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DC00(v0 + v5, v4);
  v6 = type metadata accessor for EpisodePlayState();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    goto LABEL_6;
  }

  sub_10028DC00(v4, v2);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v2, &type metadata accessor for EpisodePlayState);
    goto LABEL_6;
  }

  if (v2[16])
  {
LABEL_6:
    v7 = 2036427888;
    goto LABEL_7;
  }

  v7 = 0x6573756170;
LABEL_7:
  sub_100009104(v4, &qword_100578FE0, &unk_100408A60);
  return v7;
}

uint64_t sub_10028BE04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v55 = a2;
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeOffer();
  v54 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = (&v53 - v12);
  __chkstk_darwin();
  v15 = &v53 - v14;
  v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(a1 + v16, v15, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v54;
    if (EnumCaseMultiPayload)
    {
      sub_10028DC70(v15, type metadata accessor for EpisodeContextActionDataType);
      v33 = sub_1003982E0(1);
      v21 = v55;
      if (v33[2])
      {
        (*(v25 + 16))(v7, v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v5);

        (*(v25 + 32))(v9, v7, v5);
        EpisodeOffer.contentId.getter();
        EpisodeStateController.stateMachine(for:)();
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        (*(v25 + 8))(v9, v5);
        goto LABEL_72;
      }
    }

    else
    {
      sub_10028DC70(v15, type metadata accessor for EpisodeContextActionDataType);
      v27 = sub_100398118(1, v26);
      v21 = v55;
      if (v27[2])
      {

        EpisodeStateController.stateMachine(for:)();

        dispatch thunk of EpisodeStateMachine.currentState.getter();

        goto LABEL_72;
      }
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10028DC70(v15, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(a1 + v16, v13, v28);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10028DC70(v13, type metadata accessor for EpisodeContextActionDataType);
      v34 = _swiftEmptyArrayStorage;
      v21 = v55;
      goto LABEL_43;
    }

    v9 = *v13;
    v56 = _swiftEmptyArrayStorage;
    v21 = v55;
    if (!(v9 >> 62))
    {
      v29 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v15, v4);
    EpisodeStateController.stateMachine(for:)();
    v21 = v55;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    sub_10028DC70(v4, type metadata accessor for EpisodeContextActionDataType.Reference);
    goto LABEL_72;
  }

  sub_10028DC70(v15, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(a1 + v16, v11, v19);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v11, type metadata accessor for EpisodeContextActionDataType);
    v35 = _swiftEmptyArrayStorage;
    v21 = v55;
    goto LABEL_58;
  }

  v9 = *v11;
  v56 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_55;
  }

  v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v55;
  if (!v20)
  {
LABEL_56:
    v35 = _swiftEmptyArrayStorage;
LABEL_57:

LABEL_58:
    if (v35 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_60;
      }
    }

    else
    {
      result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_60:
        if ((v35 & 0xC000000000000001) != 0)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v42 = *(v35 + 32);
        }

        v38 = v42;

        v43 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v43)
        {
          v44 = v43;
          MPModelObject.uuid.getter();
          v46 = v45;

          if (v46)
          {
            EpisodeStateController.stateMachine(for:)();
LABEL_66:

            goto LABEL_71;
          }
        }

        v47 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v47)
        {
          v48 = v47;
          MPModelObject.adamID.getter();
          v50 = v49;

          if ((v50 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

LABEL_75:
        v51 = 1;
        goto LABEL_76;
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  while (1)
  {
    v22 = 0;
    v21 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v21)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v23 = *&v9[8 * v22 + 32];
      }

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v22;
      if (v24 == v20)
      {
        v21 = v55;
        v35 = v56;
        goto LABEL_57;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (!v29)
      {
        break;
      }

LABEL_21:
      v30 = 0;
      v21 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v31 = *&v9[8 * v30 + 32];
        }

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if ([v31 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v30;
        if (v32 == v29)
        {
          v21 = v55;
          v34 = v56;
          goto LABEL_42;
        }
      }

      __break(1u);
    }

LABEL_41:
    v34 = _swiftEmptyArrayStorage;
LABEL_42:

LABEL_43:
    if (v34 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_74;
      }
    }

    else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v34 + 32);
      goto LABEL_48;
    }

    __break(1u);
LABEL_55:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v55;
    if (!v20)
    {
      goto LABEL_56;
    }
  }

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
  v37 = v36;

  v38 = v37;
  v39 = [v38 episodeUuid];
  if (v39)
  {
    v40 = v39;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    EpisodeStateController.stateMachine(for:)();
    goto LABEL_66;
  }

  [v38 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_70:
  EpisodeStateController.stateMachine(for:)();
LABEL_71:
  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_72:
  v51 = 0;
LABEL_76:
  v52 = type metadata accessor for EpisodePlayState();
  return (*(*(v52 - 8) + 56))(v21, v51, 1, v52);
}

uint64_t sub_10028C6A8()
{
  v1 = type metadata accessor for InteractionContext();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

  if (!sub_100397D28(v5) || (swift_beginAccess(), !*(v0 + 24)))
  {

LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  dispatch thunk of ContextActionsConfiguration.context.getter();

  InteractionContext.view.getter();
  (*(v2 + 8))(v4, v1);
  v6 = static InteractionContext.View.== infix(_:_:)();

  return v6 & 1;
}

void sub_10028C7F8()
{
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v80 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for EpisodeOffer();
  v77 = *(v2 - 8);
  v78 = v2;
  __chkstk_darwin();
  v75 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v73 - v4;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v6 = &v73 - v5;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = &v73 - v9;
  __chkstk_darwin();
  v12 = &v73 - v11;
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v73 - v15;
  __chkstk_darwin();
  v18 = &v73 - v17;
  v19 = v0[2];
  if (!v19)
  {
    return;
  }

  v74 = v6;

  sub_10028BE04(v20, v18);
  v21 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DB90(v18, v0 + v21);
  swift_endAccess();
  v79 = v0;
  sub_10028DC00(v0 + v21, v16);
  v22 = type metadata accessor for EpisodePlayState();
  v23 = *(*(v22 - 8) + 48);
  v81 = v16;
  if (v23(v16, 1, v22) != 1)
  {
    sub_10028DC00(v81, v14);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v24 = v14[16];
      sub_1000044A0(v79 + 4, v79[7]);
      if (v24 == 1)
      {
        dispatch thunk of EpisodeControllerProtocol.playPlayer()();
      }

      else
      {
        dispatch thunk of EpisodeControllerProtocol.pausePlayer()();
      }

      goto LABEL_81;
    }

    sub_10028DC70(v14, &type metadata accessor for EpisodePlayState);
  }

  v25 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v19 + v25, v12, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = v19;
  if (EnumCaseMultiPayload <= 1)
  {
    v34 = v74;
    if (EnumCaseMultiPayload)
    {
      sub_10028DC70(v12, type metadata accessor for EpisodeContextActionDataType);
      v45 = sub_1003982E0(1);
      if (v45[2])
      {
        v47 = v77;
        v46 = v78;
        v48 = v75;
        (*(v77 + 16))(v75, v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v78);

        v49 = v76;
        (*(v47 + 32))(v76, v48, v46);
        v50 = v79;
        sub_1000044A0(v79 + 4, v79[7]);
        v83 = type metadata accessor for PlayEpisodeContextAction(0);
        v82 = v50;

        dispatch thunk of EpisodeControllerProtocol.play(episodeOffer:sender:)();

        (*(v47 + 8))(v49, v46);
        goto LABEL_78;
      }
    }

    else
    {
      sub_10028DC70(v12, type metadata accessor for EpisodeContextActionDataType);
      if (sub_100398118(1, v35)[2])
      {

        v36 = v79;
        sub_1000044A0(v79 + 4, v79[7]);
        v37 = type metadata accessor for EpisodeListSettings();
        (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
        v83 = type metadata accessor for PlayEpisodeContextAction(0);
        v82 = v36;

        EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

        sub_100009104(v34, &unk_100573A80, &unk_100401160);
        goto LABEL_78;
      }
    }

    goto LABEL_80;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10028DC70(v12, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(v19 + v25, v10, v38);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10028DC70(v10, type metadata accessor for EpisodeContextActionDataType);
      v51 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    v10 = *v10;
    v82 = _swiftEmptyArrayStorage;
    if (!(v10 >> 62))
    {
      v39 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v43 = v80;
    sub_100200004(v12, v80);
    v44 = v79;
    sub_1000044A0(v79 + 4, v79[7]);
    v83 = type metadata accessor for PlayEpisodeContextAction(0);
    v82 = v44;

    dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

    sub_10028DC70(v43, type metadata accessor for EpisodeContextActionDataType.Reference);
    goto LABEL_78;
  }

  sub_10028DC70(v12, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v19 + v25, v8, v29);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v8, type metadata accessor for EpisodeContextActionDataType);
    v52 = _swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v10 = *v8;
  v82 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_62;
  }

  v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_63:
    v52 = _swiftEmptyArrayStorage;
LABEL_64:

LABEL_65:
    if (v52 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_67;
      }
    }

    else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_67:
      if ((v52 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v61 = *(v52 + 32);
      }

      v55 = v61;

      v62 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v62)
      {
        v63 = v62;
        MPModelObject.uuid.getter();
        v65 = v64;

        if (v65)
        {
          v66 = v79;
          sub_1000044A0(v79 + 4, v79[7]);
          v67 = type metadata accessor for EpisodeListSettings();
          v60 = v74;
          (*(*(v67 - 8) + 56))(v74, 1, 1, v67);
          v83 = type metadata accessor for PlayEpisodeContextAction(0);
          v82 = v66;

          EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

LABEL_73:
          sub_100009104(v60, &unk_100573A80, &unk_100401160);
          goto LABEL_78;
        }
      }

      v68 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v68)
      {
        v69 = v68;
        MPModelObject.adamID.getter();
        v71 = v70;

        if ((v71 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

LABEL_81:

      goto LABEL_82;
    }

LABEL_80:

    goto LABEL_81;
  }

  while (1)
  {
    v31 = 0;
    v28 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v28)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v32 = *(v10 + 8 * v31 + 32);
      }

      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v31;
      if (v33 == v30)
      {
        v52 = v82;
        goto LABEL_64;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
        break;
      }

LABEL_27:
      v80 = v28;
      v40 = 0;
      v28 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v40 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v41 = *(v10 + 8 * v40 + 32);
        }

        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if ([v41 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v40;
        if (v42 == v39)
        {
          v51 = v82;
          goto LABEL_49;
        }
      }

      __break(1u);
    }

LABEL_48:
    v51 = _swiftEmptyArrayStorage;
LABEL_49:

LABEL_50:
    if (v51 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_80;
      }
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v51 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_62:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (!v30)
    {
      goto LABEL_63;
    }
  }

  v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
  v54 = v53;

  v55 = v54;
  v56 = [v55 episodeUuid];
  if (v56)
  {
    v57 = v56;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v79;
    sub_1000044A0(v79 + 4, v79[7]);
    v59 = type metadata accessor for EpisodeListSettings();
    v60 = v74;
    (*(*(v59 - 8) + 56))(v74, 1, 1, v59);
    v83 = type metadata accessor for PlayEpisodeContextAction(0);
    v82 = v58;

    EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

    goto LABEL_73;
  }

  [v55 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_77:
  v72 = v79;
  sub_1000044A0(v79 + 4, v79[7]);
  v83 = type metadata accessor for PlayEpisodeContextAction(0);
  v82 = v72;

  dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

LABEL_78:
  sub_100009104(&v82, &unk_1005783D0, &qword_1004031E0);
LABEL_82:
  sub_100009104(v81, &qword_100578FE0, &unk_100408A60);
}

uint64_t sub_10028D54C()
{

  sub_100004590((v0 + 32));

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state, &qword_100578FE0, &unk_100408A60);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayEpisodeContextAction(uint64_t a1)
{
  result = qword_10057B700;
  if (!qword_10057B700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028D634(uint64_t a1)
{
  sub_10028D6E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10028D6E8(uint64_t a1)
{
  if (!qword_100578F00)
  {
    type metadata accessor for EpisodePlayState();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100578F00);
    }
  }
}

uint64_t sub_10028D748@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.playEpisode(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10028D7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_10028D898()
{
  v1 = v0;
  sub_100168088(&qword_100578FE0, &unk_100408A60);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = *(v0 + 16);
  if (v4)
  {

    if (sub_100397D28(v5))
    {
      sub_10028BE04(v4, v3);

      v6 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
      swift_beginAccess();
      sub_10028DB90(v3, v1 + v6);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_10028D9A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028DA00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028DA60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10028DAC4(uint64_t a1)
{
  result = sub_10028DB4C(&qword_10057B838, &unk_1004089D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028DB08(uint64_t a1)
{
  result = sub_10028DB4C(&qword_10057B840, &unk_100408A28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028DB4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028DB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578FE0, &unk_100408A60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028DC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578FE0, &unk_100408A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028DC70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_10028DCD0(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for InteractionContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + 56);
  if (!v10)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 64))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v7 + 8))(v9, v6);
    v11 = InteractionContext.Page.isEpisodePage.getter();
    sub_10028F518(v5, &type metadata accessor for InteractionContext.Page);
    if (v11)
    {

      return 0;
    }
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v10 + v13, v3, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v20 = *(*v3 + 16);
    }

    else
    {

      v19 = *v3;

      v20 = *(v19 + 16);
    }

    return v20 == 1;
  }

  else
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {

      sub_10028F518(v3, type metadata accessor for EpisodeContextActionDataType);
      return 1;
    }

    v16 = *v3;
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v17 == 1;
  }
}

void sub_10028DFBC()
{
  v93 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v95 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for EpisodeOffer();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v90 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v96 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v81 - v5;
  __chkstk_darwin();
  v98 = &v81 - v6;
  __chkstk_darwin();
  v94 = &v81 - v7;
  v8 = type metadata accessor for URL();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin();
  v88 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v81 - v10;
  __chkstk_darwin();
  v89 = &v81 - v12;
  v13 = type metadata accessor for PreviewingPresentationHint();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v81 - v19;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v22 = &v81 - v21;
  v101 = v0[7];
  if (!v101)
  {
    return;
  }

  swift_beginAccess();
  if (!v0[8])
  {
    return;
  }

  v84 = v11;
  v86 = v16;

  v23 = ContextActionsConfiguration.objectGraph.getter();

  v85 = v0;
  if (!v0[8])
  {

    v26 = type metadata accessor for PresentationSource();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    goto LABEL_7;
  }

  v87 = v23;
  v82 = v14;
  v83 = v13;

  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v24 = type metadata accessor for PresentationSource();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {

LABEL_7:
    v27 = &unk_10057BB90;
    v28 = &unk_100402D60;
LABEL_8:
    v29 = v22;
LABEL_9:
    sub_100009104(v29, v27, v28);
    return;
  }

  v30 = PresentationSource.viewController.getter();
  (*(v25 + 8))(v22, v24);
  v31 = v101;
  if (!v30)
  {

LABEL_52:

    return;
  }

  v32 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v31 + v32, v20, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v44 = v83;
    v45 = v86;
    if (EnumCaseMultiPayload)
    {
      v61 = *v20;
      v62 = v85;
      if (*(*v20 + 16))
      {
        v63 = v90;
        v64 = v91;
        v65 = v92;
        (*(v91 + 16))(v90, v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v92);

        v66 = v94;
        EpisodeOffer.storeUrl.getter();
        (*(v64 + 8))(v63, v65);
        v68 = v99;
        v67 = v100;
        if ((*(v99 + 48))(v66, 1, v100) != 1)
        {
          (*(v68 + 32))(v89, v66, v67);
          sub_1000044A0(v62 + 2, v62[5]);
          v69 = v82;
          (*(v82 + 16))(v45, v31 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v44);
          v70 = v89;
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v69 + 8))(v45, v83);
          (*(v68 + 8))(v70, v100);
          return;
        }
      }

      else
      {

        v66 = v94;
        (*(v99 + 56))(v94, 1, 1, v100);
      }

      v27 = &qword_100574040;
      v28 = &unk_100400AD0;
      v29 = v66;
      goto LABEL_9;
    }

    sub_10028F518(v20, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(v31 + v32, v18, v46);
    v48 = sub_100398A94(v47);
    sub_10028F518(v18, type metadata accessor for EpisodeContextActionDataType);
    if (v48)
    {
      v49 = [v48 uuid];

      if (v49)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000044A0(v85 + 2, v85[5]);
        v50 = v82;
        (*(v82 + 16))(v45, v31 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v44);
        dispatch thunk of EpisodeControllerProtocol.presentEpisodePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

        (*(v50 + 8))(v45, v83);
        return;
      }
    }

    goto LABEL_51;
  }

  v35 = v83;
  v36 = v86;
  if (EnumCaseMultiPayload == 2)
  {
    v51 = *v20;
    v52 = v82;
    if (*v20 >> 62)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
      v53 = v97;
      v54 = v98;
      if (v80)
      {
LABEL_30:
        if ((v51 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_57;
          }

          v55 = *(v51 + 32);
        }

        v56 = v55;

        v57 = [objc_opt_self() episodeUrlForPodcastStoreId:objc_msgSend(v56 episodeStoreId:{"podcastStoreId"), objc_msgSend(v56, "episodeStoreId")}];
        if (v57)
        {
          v58 = v57;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v59 = 0;
        }

        else
        {
          v59 = 1;
        }

        v77 = v99;
        v76 = v100;
        (*(v99 + 56))(v53, v59, 1, v100);
        sub_1001B8A3C(v53, v54);
        if ((*(v77 + 48))(v54, 1, v76) != 1)
        {
          v78 = v84;
          (*(v77 + 32))(v84, v54, v76);
          v79 = v85[5];
          v98 = v85[6];
          sub_1000044A0(v85 + 2, v79);
          (*(v52 + 16))(v36, v101 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v35);
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v52 + 8))(v36, v35);
          (*(v99 + 8))(v78, v100);
          return;
        }

        v27 = &qword_100574040;
        v28 = &unk_100400AD0;
        v29 = v54;
        goto LABEL_9;
      }
    }

    else
    {
      v53 = v97;
      v54 = v98;
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

LABEL_50:

LABEL_51:

    goto LABEL_52;
  }

  v37 = v82;
  if (EnumCaseMultiPayload != 3)
  {
    v60 = v95;
    sub_100200004(v20, v95);
    sub_1000044A0(v85 + 2, v85[5]);
    (*(v37 + 16))(v36, v101 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v35);
    dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

    (*(v37 + 8))(v36, v35);
    sub_10028F518(v60, type metadata accessor for EpisodeContextActionDataType.Reference);
    return;
  }

  v38 = *v20;
  if (*v20 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v99;
  v22 = v96;
  if (!v39)
  {
    goto LABEL_50;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:
    __break(1u);
    return;
  }

  v41 = *(v38 + 32);
LABEL_21:
  v42 = v41;

  sub_10028F4CC();
  sub_10028EDE8(v22);
  v43 = v100;
  if ((*(v40 + 48))(v22, 1, v100) == 1)
  {

    v27 = &qword_100574040;
    v28 = &unk_100400AD0;
    goto LABEL_8;
  }

  v71 = v35;
  v72 = v88;
  (*(v40 + 32))(v88, v22, v43);
  v73 = v30;
  v74 = v40;
  v75 = v85[5];
  v98 = v85[6];
  sub_1000044A0(v85 + 2, v75);
  (*(v37 + 16))(v36, v101 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v71);
  dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

  (*(v37 + 8))(v36, v83);
  (*(v74 + 8))(v72, v100);
}

void sub_10028EDE8(uint64_t a1@<X8>)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v21 - v2;
  v4 = MPCPlayerResponseItem.podcastEpisode.getter();
  if (!v4 || (v5 = v4, v6 = [v4 podcast], v5, !v6) || (v7 = MPModelObject.adamID.getter(), v9 = v8, v6, (v9 & 1) != 0))
  {
LABEL_7:
    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 56);

    v16(a1, 1, 1, v15);
    return;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = MPCPlayerResponseItem.podcastEpisode.getter();
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = MPModelObject.adamID.getter();
  v14 = v13;

  if (v14)
  {
    goto LABEL_7;
  }

  if (v12 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = [swift_getObjCClassFromMetadata() episodeUrlForPodcastStoreId:v7 episodeStoreId:v12];
  if (v17)
  {
    v18 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  }

  sub_1001B8A3C(v3, a1);
}

uint64_t sub_10028F010()
{
  sub_100004590((v0 + 16));

  v1 = OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, &qword_100575870, &unk_100402BE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GoToEpisodeContextAction(uint64_t a1)
{
  result = qword_10057B870;
  if (!qword_10057B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028F148(uint64_t a1)
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

uint64_t sub_10028F260()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_10028F290@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10028F35C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_10028F400(uint64_t a1)
{
  result = sub_10028F488(&qword_10057B930, &unk_100408B30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F444(uint64_t a1)
{
  result = sub_10028F488(&qword_10057B938, &unk_100408B88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F488(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GoToEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10028F4CC()
{
  result = qword_10057B940;
  if (!qword_10057B940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B940);
  }

  return result;
}

uint64_t sub_10028F518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CarPlayFlowBackActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  v3 = type metadata accessor for Models.FlowBackAction();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[56] = v4;
  v2[57] = *(v4 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = type metadata accessor for MainActor();
  v2[60] = static MainActor.shared.getter();
  v5 = sub_100009F1C(0, &qword_100575D00, CPInterfaceController_ptr);
  v6 = swift_task_alloc();
  v2[61] = v6;
  *v6 = v2;
  v6[1] = sub_10028F710;

  return BaseObjectGraph.inject<A>(_:)(v2 + 50, v5, v5);
}

uint64_t sub_10028F710()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_100290350;
  }

  else
  {
    *(v2 + 504) = v3;
    *(v2 + 512) = v4;
    v5 = sub_10028F874;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10028F874()
{
  v46 = v0;
  v1 = v0[50];
  v0[65] = v1;
  v2 = Models.FlowBackAction.dismissal.getter();
  v4 = v3;
  if (static Models.FlowBackAction.Dismissal.sheetDismiss.getter() == v2 && v5 == v4)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (static Models.FlowBackAction.Dismissal.stackPop.getter() == v2 && v13 == v4)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          if (static Models.FlowBackAction.Dismissal.stackPopToRoot.getter() == v2 && v16 == v4)
          {
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v17 & 1) == 0)
            {
              v20 = v0[54];
              v19 = v0[55];
              v22 = v0[52];
              v21 = v0[53];

              sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
              static OS_os_log.carPlay.getter();
              (*(v20 + 16))(v19, v22, v21);
              v23 = Logger.logObject.getter();
              v24 = static os_log_type_t.error.getter();
              v25 = os_log_type_enabled(v23, v24);
              v27 = v0[57];
              v26 = v0[58];
              v28 = v0[55];
              v29 = v0[56];
              v31 = v0[53];
              v30 = v0[54];
              if (v25)
              {
                log = v23;
                v32 = swift_slowAlloc();
                v41 = v24;
                v33 = swift_slowAlloc();
                v45 = v33;
                *v32 = 136315138;
                v43 = v29;
                v44 = v26;
                v34 = Models.FlowBackAction.dismissal.getter();
                v36 = v35;
                (*(v30 + 8))(v28, v31);
                v37 = sub_1000153E0(v34, v36, &v45);

                *(v32 + 4) = v37;
                _os_log_impl(&_mh_execute_header, log, v41, "Unsupported flow back action dismissal: %s", v32, 0xCu);
                sub_100004590(v33);

                (*(v27 + 8))(v44, v43);
              }

              else
              {

                (*(v30 + 8))(v28, v31);
                (*(v27 + 8))(v26, v29);
              }

              v38 = v0[51];
              v39 = enum case for ActionOutcome.unsupported(_:);
              v40 = type metadata accessor for ActionOutcome();
              (*(*(v40 - 8) + 104))(v38, v39, v40);

              v11 = v0[1];
              goto LABEL_11;
            }
          }

          v9 = v0 + 2;
          v0[2] = v0;
          v0[7] = v0 + 69;
          v0[3] = sub_100290220;
          v18 = swift_continuation_init();
          v0[33] = sub_100168088(&qword_100575028, &qword_100402648);
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_1001BAE40;
          v0[29] = &unk_1004E92B0;
          v0[30] = v18;
          [v1 popToRootTemplateAnimated:1 completion:v0 + 26];
          goto LABEL_19;
        }
      }

      v9 = v0 + 10;
      v0[10] = v0;
      v0[15] = v0 + 553;
      v0[11] = sub_1002900F0;
      v15 = swift_continuation_init();
      v0[41] = sub_100168088(&qword_100575028, &qword_100402648);
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_1001BAE40;
      v0[37] = &unk_1004E92D8;
      v0[38] = v15;
      [v1 popTemplateAnimated:1 completion:v0 + 34];
      goto LABEL_19;
    }
  }

  v8 = [v1 presentedTemplate];
  if (v8)
  {

    v9 = v0 + 18;
    v0[18] = v0;
    v0[23] = v0 + 554;
    v0[19] = sub_10028FEE4;
    v10 = swift_continuation_init();
    v0[49] = sub_100168088(&qword_100575028, &qword_100402648);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1001BAE40;
    v0[45] = &unk_1004E9300;
    v0[46] = v10;
    [v1 dismissTemplateAnimated:1 completion:v0 + 42];
LABEL_19:

    return _swift_continuation_await(v9);
  }

  sub_10029067C();
  swift_allocError();
  swift_willThrow();

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_10028FEE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 528) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_1002903C8;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290014()
{

  v1 = *(v0 + 408);
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = type metadata accessor for ActionOutcome();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002900F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_100290458;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_1002904E8;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002903C8()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100290458()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002904E8()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100290578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return CarPlayFlowBackActionImplementation.perform(_:asPartOf:)(a1, a2);
}

uint64_t sub_100290628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002907AC();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10029067C()
{
  result = qword_10057B948;
  if (!qword_10057B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B948);
  }

  return result;
}

unint64_t sub_1002906D4()
{
  result = qword_10057B950;
  if (!qword_10057B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B950);
  }

  return result;
}

unint64_t sub_10029072C()
{
  result = qword_10057B958;
  if (!qword_10057B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B958);
  }

  return result;
}

unint64_t sub_1002907AC()
{
  result = qword_10057B960;
  if (!qword_10057B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B960);
  }

  return result;
}

uint64_t (*sub_100290810(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  *a1 = *v4;
  a1[1] = v6;
  sub_100013CB4(v5, v6);
  return sub_100290868;
}

uint64_t sub_100290868(uint64_t *a1, char a2)
{
  v3 = a1[2] + a1[3];
  v4 = *a1;
  v5 = a1[1];
  v6 = *v3;
  v7 = *(v3 + 8);
  *v3 = *a1;
  *(v3 + 8) = v5;
  sub_100013CB4(v4, v5);
  if (a2)
  {
    sub_100013CB4(v4, v5);
    sub_100013D44(v6);
    sub_1000112B4(v6, v7);
    v8 = v4;
    v9 = v5;
  }

  else
  {
    sub_100013D44(v6);
    v8 = v6;
    v9 = v7;
  }

  sub_1000112B4(v8, v9);

  return sub_1000112B4(v4, v5);
}

uint64_t sub_10029091C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&qword_10057B9D0, &qword_100408E78);
  __chkstk_darwin();
  v7 = &v15[-v6];
  v22 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for EpisodeDownloadState();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v21 = v3;
  v16 = a1;
  v17 = v7;
  v18 = a2;
  v19 = v3;
  v20 = &v22;
  type metadata accessor for DownloadingEpisodeStateDataSource();
  sub_1000136E4(&qword_10057B9C8, v9, type metadata accessor for DownloadingEpisodeStateDataSource, &unk_100408E38);
  SynchronizedEpisodeStateDataSource.performExpectedEpisodeStateUpdates(_:)();
  v10 = v22;
  if (v22[2])
  {
    v11 = v3 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates;
    v12 = *(v3 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates);
    if (v12)
    {
      v13 = *(v11 + 8);

      v12(v10);
      sub_1000112B4(v12, v13);
    }
  }

  sub_100009104(v7, &qword_10057B9D0, &qword_100408E78);
}

uint64_t sub_100290AC8(uint64_t a1, char *a2, void *a3, uint64_t a4, char **a5)
{
  v119 = a5;
  v110 = sub_100168088(&qword_10057B9D8, &qword_100408E80);
  __chkstk_darwin();
  v111 = v101 - v9;
  v10 = type metadata accessor for EpisodeDownloadState();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v102 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = v101 - v13;
  sub_100168088(&qword_10057B9D0, &qword_100408E78);
  __chkstk_darwin();
  v117 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = v101 - v15;
  __chkstk_darwin();
  __chkstk_darwin();
  v17 = v101 - v16;
  __chkstk_darwin();
  v128 = v101 - v18;
  *&v19 = __chkstk_darwin().n128_u64[0];
  v21 = v101 - v20;
  v105 = v22;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_8;
      case 4:
        [a3 percentComplete];
        *v21 = v23;
        v21[8] = 1;
LABEL_9:
        (*(v11 + 104))(v21, enum case for EpisodeDownloadState.downloading(_:), v10);
        v121 = *(v11 + 56);
        v122 = v11 + 56;
        v121(v21, 0, 1, v10);
        sub_100294004(v21, a2);
        goto LABEL_10;
      case 5:
LABEL_8:
        [a3 percentComplete];
        *v21 = v24;
        v21[8] = 0;
        goto LABEL_9;
    }

LABEL_62:
    type metadata accessor for LegacyDownloadPhase(0);
    v131 = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    goto LABEL_63;
  }

  if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  sub_100009104(a2, &qword_10057B9D0, &qword_100408E78);
  v121 = *(v11 + 56);
  v122 = v11 + 56;
  v121(a2, 1, 1, v10);
LABEL_10:
  swift_getObjectType();
  v25 = sub_100291790();
  v26 = *(v25 + 56);
  v116 = v25 + 56;
  v115 = v25;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v126 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_expectedEpisodeStates;
  swift_beginAccess();
  v30 = 0;
  v31 = (v27 + 63) >> 6;
  v103 = v11 + 16;
  v125 = (v11 + 48);
  v118 = (v11 + 32);
  v101[1] = v11 + 40;
  v114 = v11;
  v104 = (v11 + 8);
  v32 = v10;
  v123 = v10;
  v113 = v17;
  v109 = v31;
  v107 = a2;
  v108 = a4;
  while (v29)
  {
    v34 = a4;
    v35 = a2;
    v36 = v126;
LABEL_23:
    v38 = *(v115 + 48) + 24 * (__clz(__rbit64(v29)) | (v30 << 6));
    v40 = *v38;
    v39 = *(v38 + 8);
    v41 = *(v38 + 16);
    v42 = *(v34 + v36);
    v43 = *(v42 + 16);
    v127 = v40;
    v129 = v41;
    if (v43)
    {
      sub_1001C1A3C(v40, v39, v41);

      v44 = sub_1002022A8(v40, v39, v41);
      if (v45)
      {
        v46 = v128;
        (*(v114 + 16))(v128, *(v42 + 56) + *(v114 + 72) * v44, v32);

        v47 = v46;
        v36 = v126;
        v48 = 0;
      }

      else
      {

        v47 = v128;
        v48 = 1;
      }

      v121(v47, v48, 1, v32);
      v49 = v35;
      v40 = v127;
    }

    else
    {
      v121(v128, 1, 1, v32);
      sub_1001C1A3C(v40, v39, v41);
      v49 = v35;
    }

    v50 = v113;
    sub_100293F94(v49, v113);
    swift_beginAccess();
    v124 = *v125;
    if (v124(v50, 1, v32) == 1)
    {
      sub_100009104(v50, &qword_10057B9D0, &qword_100408E78);
      v51 = sub_1002022A8(v40, v39, v129);
      if (v52)
      {
        v53 = v51;
        v54 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(v34 + v36);
        v130 = v56;
        *(v34 + v36) = 0x8000000000000000;
        v57 = v36;
        v58 = v111;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002606F4();
          v56 = v130;
        }

        sub_1001C1A4C(*(*(v56 + 48) + 24 * v53), *(*(v56 + 48) + 24 * v53 + 8), *(*(v56 + 48) + 24 * v53 + 16));
        v59 = v105;
        v60 = v123;
        (*(v114 + 32))(v105, *(v56 + 56) + *(v114 + 72) * v53, v123);
        sub_100292B68(v53, v56);
        *(v34 + v57) = v56;

        v61 = 0;
        v39 = v54;
        v49 = v107;
      }

      else
      {
        v61 = 1;
        v60 = v123;
        v59 = v105;
        v58 = v111;
      }

      v121(v59, v61, 1, v60);
      sub_100009104(v59, &qword_10057B9D0, &qword_100408E78);
      v75 = v60;
    }

    else
    {
      v106 = *v118;
      v106(v112, v50, v32);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v34;
      v64 = v62;
      v130 = *(v63 + v36);
      v65 = v130;
      v66 = v63;
      *(v63 + v36) = 0x8000000000000000;
      v68 = sub_1002022A8(v40, v39, v129);
      v69 = v65[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_64;
      }

      v72 = v67;
      if (v65[3] >= v71)
      {
        if ((v64 & 1) == 0)
        {
          sub_1002606F4();
        }
      }

      else
      {
        sub_10025D208(v71, v64);
        v73 = sub_1002022A8(v127, v39, v129);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_66;
        }

        v68 = v73;
      }

      v76 = v66;
      v77 = v130;
      v49 = v107;
      if (v72)
      {
        v75 = v123;
        (*(v114 + 40))(v130[7] + *(v114 + 72) * v68, v112, v123);
      }

      else
      {
        v130[(v68 >> 6) + 8] |= 1 << v68;
        v78 = v77[6] + 24 * v68;
        v79 = v127;
        *v78 = v127;
        *(v78 + 8) = v39;
        v80 = v129;
        *(v78 + 16) = v129;
        v81 = v123;
        (v106)(v77[7] + *(v114 + 72) * v68, v112);
        v82 = v77[2];
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          goto LABEL_65;
        }

        v77[2] = v84;
        sub_1001C1A3C(v79, v39, v80);
        v75 = v81;
      }

      *(v76 + v126) = v77;

      v58 = v111;
    }

    v29 &= v29 - 1;
    swift_endAccess();
    a2 = v49;
    v85 = v120;
    sub_100293F94(v49, v120);
    v86 = *(v110 + 48);
    sub_100293F94(v128, v58);
    sub_100293F94(v85, v58 + v86);
    v87 = v124;
    if (v124(v58, 1, v75) == 1)
    {
      sub_100009104(v85, &qword_10057B9D0, &qword_100408E78);
      if (v87(v58 + v86, 1, v75) == 1)
      {
        v33 = v58;
        v32 = v75;
        sub_1001C1A4C(v127, v39, v129);
        sub_100009104(v33, &qword_10057B9D0, &qword_100408E78);
        a4 = v108;
LABEL_14:
        sub_100009104(v128, &qword_10057B9D0, &qword_100408E78);
        goto LABEL_15;
      }

      goto LABEL_52;
    }

    sub_100293F94(v58, v117);
    if (v87(v58 + v86, 1, v75) == 1)
    {
      sub_100009104(v120, &qword_10057B9D0, &qword_100408E78);
      (*v104)(v117, v75);
LABEL_52:
      sub_100009104(v58, &qword_10057B9D8, &qword_100408E80);
      goto LABEL_53;
    }

    v95 = *v118;
    v124 = v39;
    v96 = v102;
    v95(v102, v58 + v86, v75);
    sub_1000136E4(&qword_10057B9E0, 255, &type metadata accessor for EpisodeDownloadState, &protocol conformance descriptor for EpisodeDownloadState);
    v97 = dispatch thunk of static Equatable.== infix(_:_:)();
    v98 = *v104;
    (*v104)(v96, v75);
    sub_100009104(v120, &qword_10057B9D0, &qword_100408E78);
    v98(v117, v75);
    v39 = v124;
    sub_100009104(v58, &qword_10057B9D0, &qword_100408E78);
    if (v97)
    {
      v32 = v75;
      sub_1001C1A4C(v127, v39, v129);
      a4 = v108;
      goto LABEL_14;
    }

LABEL_53:
    v88 = v119;
    v89 = *v119;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v89;
    a4 = v108;
    if ((v90 & 1) == 0)
    {
      v89 = sub_100243C4C(0, *(v89 + 2) + 1, 1, v89);
      *v119 = v89;
    }

    v92 = *(v89 + 2);
    v91 = *(v89 + 3);
    if (v92 >= v91 >> 1)
    {
      v99 = sub_100243C4C((v91 > 1), v92 + 1, 1, v89);
      *v119 = v99;
    }

    sub_100009104(v128, &qword_10057B9D0, &qword_100408E78);
    v93 = *v119;
    *(v93 + 2) = v92 + 1;
    v94 = &v93[24 * v92];
    *(v94 + 4) = v127;
    *(v94 + 5) = v39;
    v94[48] = v129;
    v32 = v123;
LABEL_15:
    v31 = v109;
  }

  v36 = v126;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v31)
    {
    }

    v29 = *(v116 + 8 * v37);
    ++v30;
    if (v29)
    {
      v34 = a4;
      v35 = a2;
      v30 = v37;
      goto LABEL_23;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100291790()
{
  v1 = [v0 episodeUuid];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3 = [v0 storeItemId];
  if (v3)
  {
    v4 = v3;
    [v4 unsignedLongLongValue];
    AdamID.init(rawValue:)();
  }

  v5 = static EpisodeStateIdentifier.generateIdsFrom(uuid:adamID:)();

  return v5;
}

id sub_1002918A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadingEpisodeStateDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100291954()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1002919D8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates);
  v2 = *v1;
  sub_100013CB4(*v1, v1[1]);
  return v2;
}

void (*sub_100291A1C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100290810(v2);
  return sub_1001A60EC;
}

uint64_t sub_100291A90(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DownloadingEpisodeStateDataSource();
  v8 = sub_1000136E4(&qword_10057B9C8, v7, type metadata accessor for DownloadingEpisodeStateDataSource, &unk_100408E38);

  return SynchronizedEpisodeStateDataSource.state(for:)(a1, a2, a3 & 1, v6, v8);
}

Swift::Int sub_100291B78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&unk_100581840, &qword_100408E88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F208(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100291D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&unk_100582800, &qword_100408E70);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DownloadingEpisodeStateDataSource();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F21C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100291F44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&qword_10057B9E8, &qword_100408E90);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for MTCategory();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F230(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100292124(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1002921A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10016BE40(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10016BE9C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10029234C(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for DownloadJob(0);
  v4 = *(v26 - 8);
  __chkstk_darwin();
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v7;
    v11 = *(v4 + 72);
    v27 = a2 + 64;
    v12 = v28;
    do
    {
      v13 = v11;
      v14 = v11 * v8;
      sub_1001BE270(*(a2 + 48) + v11 * v8, v12);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000136E4(&unk_100577210, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      sub_1001BE660(v12);
      v16 = v15 & v9;
      if (a1 >= v10)
      {
        if (v16 < v10)
        {
          v6 = v27;
          v11 = v13;
          goto LABEL_4;
        }

        v11 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v13;
        if (v16 >= v10 || a1 >= v16)
        {
LABEL_11:
          if (v11 * a1 < v14 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v14 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v27;
          }

          else
          {
            v17 = v11 * a1 == v14;
            v6 = v27;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = v18 + 40 * a1;
          v20 = (v18 + 40 * v8);
          if (a1 != v8 || v19 >= v20 + 40)
          {
            v21 = *v20;
            v22 = v20[1];
            *(v19 + 32) = *(v20 + 4);
            *v19 = v21;
            *(v19 + 16) = v22;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v27;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_10029264C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1002927D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1002929A0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for FairPlayDownloadsObserver.DownloadState(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_100292B68(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      sub_1001C1A3C(v11, v12, v13);
      EpisodeStateIdentifier.hash(into:)();
      v14 = Hasher._finalize()();
      result = sub_1001C1A4C(v11, v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 + 24 * v3;
      v18 = (v16 + v9);
      if (24 * v3 < v9 || v17 >= v18 + 24 || v3 != v6)
      {
        v19 = *v18;
        *(v17 + 16) = *(v18 + 2);
        *v17 = v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for EpisodeDownloadState() - 8) + 72);
      v22 = v21 * v3;
      result = v20 + v21 * v3;
      v23 = v21 * v6;
      v24 = v20 + v21 * v6 + v21;
      if (v22 >= v23 && result < v24)
      {
        v3 = v6;
        v4 = v29;
        if (v22 != v23)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v3 = v6;
        }

        goto LABEL_5;
      }

      result = swift_arrayInitWithTakeFrontToBack();
      v3 = v6;
LABEL_4:
      v4 = v29;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v3 < v15)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100292DA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100292F50(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100293658(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003901F4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100293914(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1002930E8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1002937C0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for DownloadingEpisodeStateDataSource();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100390208();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100293914(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10029326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShowInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000136E4(&qword_10057E770, 255, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1000136E4(&unk_100581820, 255, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10039035C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100293AB4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10029351C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10038FF3C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100293DC0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100293658(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100291B78(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_100293914(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002937C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100291D68(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for DownloadingEpisodeStateDataSource();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_100293914(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100293914(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100293AB4(int64_t a1)
{
  v3 = type metadata accessor for ShowInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1000136E4(&qword_10057E770, 255, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_100293DC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100293F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B9D0, &qword_100408E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B9D0, &qword_100408E78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100294078()
{
  result = [objc_allocWithZone(type metadata accessor for MTNotificationSettingsPresentationController()) init];
  qword_100593468 = result;
  return result;
}

Swift::Void __swiftcall MTNotificationSettingsPresentationController.presentModal(highlightedPodcastUuid:)(Swift::String_optional highlightedPodcastUuid)
{
  object = highlightedPodcastUuid.value._object;
  countAndFlagsBits = highlightedPodcastUuid.value._countAndFlagsBits;
  v3 = type metadata accessor for FlowPresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowDestination();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (object)
    {
      v16 = Strong;
      sub_1001CFF48(countAndFlagsBits, object, 1);

      Strong = v16;
    }
  }

  else
  {
    *v10 = countAndFlagsBits;
    v10[1] = object;
    (*(v8 + 104))(v10, enum case for FlowDestination.notificationSettings(_:), v7);
    v12 = UIApp;
    if (UIApp)
    {

      v13 = v12;
      v14 = UIResponder.nearestFlowController.getter();

      if (v14)
      {
        swift_getObjectType();
        static FlowPresentationHints.modalFormSheet.getter();
        dispatch thunk of FlowController.show(destination:hints:referrer:)();
        swift_unknownObjectRelease();
        (*(v4 + 8))(v6, v3);
      }

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

id MTNotificationSettingsPresentationController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTNotificationSettingsPresentationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100294534()
{
  v1 = v0;
  sub_100168088(&unk_100582DE0, &qword_100406530);
  __chkstk_darwin();
  v138 = &v137 - v2;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v143 = &v137 - v3;
  sub_100168088(&qword_10057BB28, &unk_100409100);
  __chkstk_darwin();
  v150 = &v137 - v4;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v142 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v149 = &v137 - v6;
  __chkstk_darwin();
  v148 = &v137 - v7;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v145 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v137 - v9;
  v155 = type metadata accessor for ShowOffer();
  v11 = *(v155 - 8);
  __chkstk_darwin();
  v147 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v137 - v13;
  __chkstk_darwin();
  v144 = &v137 - v14;
  __chkstk_darwin();
  v153 = (&v137 - v15);
  __chkstk_darwin();
  v154 = &v137 - v16;
  __chkstk_darwin();
  v18 = &v137 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v139 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v137 - v22;
  v24 = EpisodeOffer.mediaType.getter();
  v152 = v20;
  if (v24 != 3)
  {
    v39 = EpisodeMediaType.rawValue.getter();
    v41 = v40;
    if (v39 == EpisodeMediaType.rawValue.getter() && v41 == v42)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v152;
      if ((v43 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

LABEL_2:
  EpisodeOffer.streamUrl.getter();
  v25 = objc_allocWithZone(MTPlayerItem);
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v140 = *(v20 + 8);
  v141 = v20 + 8;
  v140(v23, v19);
  v29 = [v25 initWithUrl:v28];

  v30 = v29;
  EpisodeOffer.priceType.getter();
  v31 = NSPersistentStringForMTEpisodePriceType();
  if (!v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();
  }

  [v30 setPriceType:v31];

  EpisodeOffer.showOffer.getter();
  ShowOffer.displayType.getter();
  v33 = v32;
  v34 = *(v11 + 8);
  v35 = v18;
  v36 = v11 + 8;
  v37 = v155;
  v34(v35, v155);
  if (v33)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  [v30 setPodcastDisplayType:v38];

  result = EpisodeOffer.contentId.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  [v30 setEpisodeStoreId:result];
  v45 = v154;
  EpisodeOffer.showOffer.getter();
  v46 = ShowOffer.adamId.getter();
  result = (v34)(v45, v37);
  if (v46 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v30 setPodcastStoreId:v46];
  EpisodeOffer.title.getter();
  v47 = String._bridgeToObjectiveC()();

  [v30 setTitle:v47];

  type metadata accessor for CoreDataFetcher();
  static CoreDataFetcher.episodeUuid(for:)();
  if (v48)
  {
    v49 = String._bridgeToObjectiveC()();
  }

  else
  {
    v49 = 0;
  }

  [v30 setEpisodeUuid:v49];

  EpisodeOffer.guid.getter();
  if (v50)
  {
    v51 = String._bridgeToObjectiveC()();
  }

  else
  {
    v51 = 0;
  }

  [v30 setEpisodeGuid:v51];

  EpisodeOffer.summary.getter();
  if (v52)
  {
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  [v30 setSubtitle:v53];

  v54 = v154;
  EpisodeOffer.showOffer.getter();
  ShowOffer.title.getter();
  v151 = v36;
  v34(v54, v37);
  v55 = String._bridgeToObjectiveC()();

  [v30 setAuthor:v55];

  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();

    v56 = type metadata accessor for Date();
    v57 = *(v56 - 8);
    isa = 0;
    if ((*(v57 + 48))(v10, 1, v56) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v57 + 8))(v10, v56);
    }
  }

  else
  {
    v59 = type metadata accessor for Date();
    (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
    isa = 0;
  }

  [v30 setPubDate:isa];

  v60 = EpisodeOffer.contentRating.getter();
  v137 = v19;
  if (v60 == 2)
  {
    goto LABEL_28;
  }

  v62 = ContentRating.rawValue.getter();
  v64 = v63;
  if (v62 == ContentRating.rawValue.getter() && v64 == v65)
  {

LABEL_39:
    v61 = 1;
    v70 = v144;
    goto LABEL_40;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    goto LABEL_39;
  }

LABEL_28:
  EpisodeOffer.showOffer.getter();
  if (ShowOffer.contentRating.getter() == 2)
  {
    v61 = 0;
  }

  else
  {
    v66 = ContentRating.rawValue.getter();
    v68 = v67;
    v61 = 1;
    if (v66 != ContentRating.rawValue.getter() || v68 != v69)
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v70 = v144;
  v34(v153, v37);
LABEL_40:
  [v30 setIsExplicit:{v61 & 1, v137}];
  [v30 setEntitled:EpisodeOffer.isEntitledOffer.getter() & 1];
  v72 = EpisodeOffer.seasonNumber.getter();
  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v72;
  }

  v75 = EpisodeOffer.episodeNumber.getter();
  if (v76)
  {
    v77 = 0;
  }

  else
  {
    v77 = v75;
  }

  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  v153 = v34;
  v34(v70, v37);
  v78 = ShowType.rawValue.getter();
  v80 = v79;
  if (v78 != ShowType.rawValue.getter() || v80 != v81)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v82 = [v30 pubDate];
  v83 = v149;
  v84 = v145;
  if (v82)
  {
    v85 = v82;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v87 = v137;
  v88 = type metadata accessor for Date();
  (*(*(v88 - 8) + 56))(v84, v86, 1, v88);
  type metadata accessor for AlbumStringBuilder();
  static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)();
  v90 = v89;
  sub_100009104(v84, &qword_100574760, &unk_1003FEB60);
  v91 = v150;
  if (v90)
  {
    v92 = String._bridgeToObjectiveC()();
  }

  else
  {
    v92 = 0;
  }

  [v30 setAlbum:v92];

  [v30 setSeasonNumber:v74];
  [v30 setEpisodeNumber:v77];
  v93 = v146;
  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  v153(v93, v155);
  v94 = ShowType.rawValue.getter();
  v96 = v95;
  v97 = 1;
  if (v94 != ShowType.rawValue.getter() || v96 != v98)
  {
    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  [v30 setPodcastIsSerial:v97 & 1];
  v99 = EpisodeOffer.episodeType.getter();
  if (v99 > 1)
  {
    if (v99 != 2)
    {
      goto LABEL_65;
    }

    v100 = 1;
  }

  else if (v99)
  {
    v100 = 0;
  }

  else
  {
    v100 = 2;
  }

  [v30 setEpisodeType:v100];
LABEL_65:
  EpisodeOffer.summary.getter();
  if (v101)
  {
    v102 = String._bridgeToObjectiveC()();
  }

  else
  {
    v102 = 0;
  }

  [v30 setItemDescription:v102];

  if (EpisodeOffer.mediaType.getter() == 3)
  {
    v103 = 0;
  }

  else
  {
    v104 = EpisodeMediaType.rawValue.getter();
    v106 = v105;
    v103 = 1;
    if (v104 != EpisodeMediaType.rawValue.getter() || v106 != v107)
    {
      v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  [v30 setIsVideo:v103 & 1];
  EpisodeOffer.reportingParams.getter();
  if (v108)
  {
    v109 = String._bridgeToObjectiveC()();
  }

  else
  {
    v109 = 0;
  }

  [v30 setStoreReportingParams:v109];

  v110 = v148;
  EpisodeOffer.storeUrl.getter();
  v111 = v152;
  v112 = *(v152 + 48);
  if (v112(v110, 1, v87) == 1)
  {
    sub_100009104(v110, &qword_100574040, &unk_100400AD0);
  }

  else
  {
    v113 = *(v111 + 32);
    v146 = v1;
    v114 = v83;
    v115 = v91;
    v116 = v87;
    v117 = v139;
    v113(v139, v110, v116);
    URL._bridgeToObjectiveC()(v118);
    v120 = v119;
    [v30 setEpisodeShareUrl:v119];

    v121 = v117;
    v87 = v116;
    v91 = v115;
    v83 = v114;
    v140(v121, v87);
  }

  v122 = v147;
  EpisodeOffer.showOffer.getter();
  ShowOffer.feedUrl.getter();
  v153(v122, v155);
  if (v112(v83, 1, v87) == 1)
  {
    sub_100009104(v83, &qword_100574040, &unk_100400AD0);
    v123 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    v140(v83, v87);
    v123 = String._bridgeToObjectiveC()();
  }

  [v30 setPodcastFeedUrl:v123];

  v124 = v154;
  EpisodeOffer.showOffer.getter();
  v125 = ShowOffer.adamId.getter();
  result = (v153)(v124, v155);
  if ((v125 & 0x8000000000000000) == 0)
  {
    [v30 setPodcastStoreId:v125];
    EpisodeOffer.transcriptInfo.getter();
    v126 = type metadata accessor for TranscriptRequestInformation();
    v127 = *(v126 - 8);
    if ((*(v127 + 48))(v91, 1, v126) == 1)
    {
      sub_100009104(v91, &qword_10057BB28, &unk_100409100);
      v128 = 0;
    }

    else
    {
      TranscriptRequestInformation.ttmlIdentifier.getter();
      (*(v127 + 8))(v91, v126);
      v128 = String._bridgeToObjectiveC()();
    }

    v129 = v143;
    [v30 setTranscriptIdentifier:v128];

    EpisodeOffer.artwork.getter();
    v130 = type metadata accessor for ArtworkModel();
    if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
    {
      sub_100009104(v129, &unk_100578C10, &qword_100400B60);
      (*(v152 + 56))(v142, 1, 1, v87);
      v131 = 0;
    }

    else
    {
      v132 = type metadata accessor for CropCode();
      v133 = v138;
      (*(*(v132 - 8) + 56))(v138, 1, 1, v132);
      ArtworkModel.config(_:mode:format:crop:retainAspectRatio:)();
      sub_100009104(v133, &unk_100582DE0, &qword_100406530);
      sub_1002A9028(v129, &type metadata accessor for ArtworkModel);
      v134 = v142;
      dispatch thunk of LegacyArtworkLoaderConfig.url.getter();

      v131 = 0;
      if (v112(v134, 1, v87) != 1)
      {
        URL._bridgeToObjectiveC()(v135);
        v131 = v136;
        v140(v134, v87);
      }
    }

    [v30 setArtworkUrl:v131];

    return v30;
  }

LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1002957BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1002957DC, 0, 0);
}

uint64_t sub_1002957DC()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.play(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1002958E4;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002958E4(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100295A3C, 0, 0);
  }

  else
  {

    sub_100004590((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100295A3C()
{
  sub_100004590((v0 + 16));
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100295AE4, v2, v1);
}

uint64_t sub_100295AE4()
{
  v1 = *(v0 + 112);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0, &qword_1004031E0);

  return _swift_task_switch(sub_100295B74, 0, 0);
}

uint64_t sub_100295B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100295BD4(uint64_t a1)
{
  v99 = *v1;
  v112 = type metadata accessor for PodcastsPlaybackError.FairPlayError();
  v109 = *(v112 - 8);
  __chkstk_darwin();
  v107 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v94 - v4;
  __chkstk_darwin();
  v6 = &v94 - v5;
  sub_100168088(&qword_10057BB30, &qword_100409140);
  __chkstk_darwin();
  v95 = &v94 - v7;
  v105 = type metadata accessor for PlaybackIntent.PlayerConstraint();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v94 - v9;
  __chkstk_darwin();
  v104 = &v94 - v10;
  v102 = type metadata accessor for PlaybackIntent();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v98 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v11;
  __chkstk_darwin();
  v100 = &v94 - v12;
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PodcastsPlaybackError.ValidationError();
  v114 = *(v15 - 8);
  v115 = v15;
  __chkstk_darwin();
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v113 = &v94 - v18;
  __chkstk_darwin();
  v20 = &v94 - v19;
  sub_100168088(&unk_10057BB38, &unk_100409148);
  __chkstk_darwin();
  v22 = &v94 - v21;
  v23 = type metadata accessor for PlaybackController.ErrorDialog();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = a1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50, &unk_100402650);
  v27 = swift_dynamicCast();
  v28 = *(v24 + 56);
  if (v27)
  {
    v28(v22, 0, 1, v23);
    (*(v24 + 32))(v26, v22, v23);
    v29 = PlaybackController.ErrorDialog.error.getter();
    v30 = v23;
    v31 = v29;
    (*(v24 + 8))(v26, v30);
  }

  else
  {
    v28(v22, 1, 1, v23);
    sub_100009104(v22, &unk_10057BB38, &unk_100409148);
    swift_errorRetain();
    v31 = a1;
  }

  v121 = v31;
  swift_errorRetain();
  v32 = v115;
  if (swift_dynamicCast())
  {
    v34 = v113;
    v33 = v114;
    (*(v114 + 32))(v113, v20, v32);
    (*(v33 + 16))(v17, v34, v32);
    v35 = (*(v33 + 88))(v17, v32);
    if (v35 == enum case for PodcastsPlaybackError.ValidationError.externalMedia(_:))
    {
      (*(v33 + 96))(v17, v32);
      v36 = v106;
      (*(v106 + 32))(v14, v17, v111);
      v37 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      sub_10016A31C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1002A91E8(&qword_100573120, 255, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v37 openURL:v40 options:isa completionHandler:0];

      (*(v36 + 8))(v14, v111);
LABEL_7:
      (*(v33 + 8))(v34, v32);
    }

    if (v35 == enum case for PodcastsPlaybackError.ValidationError.notEntitledShowUpsell(_:))
    {
      (*(v33 + 96))(v17, v32);
      v48 = *v17;
      v116[3] = v99;
      v116[0] = v110;
      sub_1000044A0((v110 + 40), *(v110 + 64));

      dispatch thunk of StoreDataProvider.fetchEpisodeUpsellAction(for:)();
      v49 = v32;
      v50 = swift_allocObject();
      swift_weakInit();
      sub_100010430(v116, &aBlock, &unk_1005783D0, &qword_1004031E0);
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = v48;
      v52 = v118;
      *(v51 + 32) = aBlock;
      *(v51 + 48) = v52;
      *(&v118 + 1) = type metadata accessor for SyncTaskScheduler();
      v119 = &protocol witness table for SyncTaskScheduler;
      sub_10000E680(&aBlock);
      SyncTaskScheduler.init()();
      sub_100168088(&unk_100578110, &qword_1004056D0);
      sub_100009FAC(&unk_10057DD60, &unk_100578110, &qword_1004056D0, &protocol conformance descriptor for Promise<A>);
      Promise.flatMap<A>(on:_:)();

      sub_100004590(&aBlock);

      (*(v33 + 8))(v34, v49);
      sub_100009104(v116, &unk_1005783D0, &qword_1004031E0);
    }

    if (v35 == enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:))
    {
      v112 = v31;
      (*(v33 + 96))(v17, v32);
      v58 = *(sub_100168088(&qword_10057BB58, &qword_100409158) + 48);
      v107 = *(v101 + 32);
      v108 = (v101 + 32);
      (v107)(v100, v17, v102);
      v59 = v103;
      v60 = v17 + v58;
      v61 = v104;
      v62 = v105;
      (*(v103 + 32))(v104, v60, v105);
      v109 = dispatch thunk of PlaybackController.currentRoute.getter();
      v63 = *(v59 + 16);
      v64 = v94;
      v63(v94, v61, v62);
      v65 = *(v59 + 88);
      v66 = v65(v64, v62);
      v67 = enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:);
      if (v66 == enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:))
      {
        (*(v59 + 96))(v64, v62);
        v68 = v95;
        sub_100010498(v64, v95, &qword_10057BB30, &qword_100409140);
      }

      else
      {
        v71 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
        v68 = v95;
        (*(*(v71 - 8) + 56))(v95, 1, 1, v71);
        (*(v59 + 8))(v64, v62);
      }

      v72 = v96;
      v73 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
      v74 = *(v73 - 8);
      if ((*(v74 + 48))(v68, 1, v73) == 1)
      {
        sub_100009104(v68, &qword_10057BB30, &qword_100409140);
        v111 = 0;
        v75 = v105;
      }

      else
      {
        v106 = v65;
        PodcastsMediaLibrary.MediaItem.author.getter();
        v78 = v77;
        (*(v74 + 8))(v68, v73);
        if (v78)
        {
          v111 = String._bridgeToObjectiveC()();
        }

        else
        {
          v111 = 0;
        }

        v75 = v105;
        v65 = v106;
      }

      v63(v72, v104, v75);
      v79 = v65(v72, v75);
      if (v79 == v67)
      {
        v106 = 1;
        v80 = v114;
        v81 = v103;
LABEL_32:
        (*(v81 + 8))(v72, v75);
LABEL_38:
        v83 = objc_opt_self();
        v84 = v101;
        v85 = v98;
        v86 = v100;
        v87 = v102;
        (*(v101 + 16))(v98, v100, v102);
        v88 = (*(v84 + 80) + 24) & ~*(v84 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = v110;
        (v107)(v89 + v88, v85, v87);
        v119 = sub_1002A5520;
        v120 = v89;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v118 = sub_1002016BC;
        *(&v118 + 1) = &unk_1004E94A8;
        v90 = _Block_copy(&aBlock);

        v91 = v83;
        v92 = v109;
        v93 = v111;
        [v91 promptBeforePerformingIntentAsBufferedAirPlayForRoute:v109 provider:v111 queueStatus:v106 completion:v90];
        _Block_release(v90);

        (*(v81 + 8))(v104, v105);
        (*(v84 + 8))(v86, v87);
        (*(v80 + 8))(v113, v115);
      }

      v80 = v114;
      if (v79 == enum case for PlaybackIntent.PlayerConstraint.singleItemUntransferrable(_:))
      {
        v82 = 2;
      }

      else
      {
        if (v79 != enum case for PlaybackIntent.PlayerConstraint.multipleItemsUntransferrable(_:))
        {
          v106 = 4;
          v81 = v103;
          if (v79 == enum case for PlaybackIntent.PlayerConstraint.unknown(_:))
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        v82 = 3;
      }

      v106 = v82;
      v81 = v103;
      goto LABEL_38;
    }

    if (v35 == enum case for PodcastsPlaybackError.ValidationError.authenticationRequired(_:))
    {
      sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
      v69 = [swift_getObjCClassFromMetadata() sharedInstance];
      v70 = String._bridgeToObjectiveC()();
      [v69 promptAccountAuthenticationWithDebugReason:v70 forced:1];

      goto LABEL_7;
    }

    v76 = *(v33 + 8);
    v76(v34, v32);
    v76(v17, v32);
  }

  else
  {

    *&aBlock = v31;
    swift_errorRetain();
    v42 = v112;
    if (swift_dynamicCast())
    {
      v44 = v108;
      v43 = v109;
      (*(v109 + 32))(v108, v6, v42);
      v45 = v107;
      (*(v43 + 16))(v107, v44, v42);
      if ((*(v43 + 88))(v45, v42) == enum case for PodcastsPlaybackError.FairPlayError.authenticationRequired(_:))
      {
        sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
        v46 = [swift_getObjCClassFromMetadata() sharedInstance];
        v47 = String._bridgeToObjectiveC()();
        [v46 promptAccountAuthenticationWithDebugReason:v47 forced:1];

        (*(v43 + 8))(v44, v42);
      }

      v53 = *(v43 + 8);
      v53(v44, v42);
      v53(v45, v42);
    }
  }

  v54 = static EpisodeUnavailableReason.Translator.episodeUnavailableReason(for:)();
  v55 = EpisodeUnavailableReason.rawValue.getter();
  if (v55 != EpisodeUnavailableReason.rawValue.getter())
  {
    sub_100009F1C(0, &unk_10057BB48, off_1004D1AC8);
    v56 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v56 showDialogForReason:v54 podcastTitle:0 completion:0];
  }
}

uint64_t sub_100296DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100010430(a3, v24 - v9, &qword_100578010, &qword_100401F60);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009104(v10, &qword_100578010, &qword_100401F60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100297070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100297090, 0, 0);
}

uint64_t sub_100297090()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.pause(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_100297198(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002972F0, 0, 0);
  }

  else
  {

    sub_100004590((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002972F0()
{
  sub_100004590((v0 + 16));
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297398, v2, v1);
}

uint64_t sub_100297398()
{
  v1 = *(v0 + 112);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0, &qword_1004031E0);

  return _swift_task_switch(sub_1002A979C, 0, 0);
}

uint64_t sub_100297428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a6;
  *(v6 + 96) = a1;
  *(v6 + 88) = a5;
  return _swift_task_switch(sub_100297450, 0, 0);
}

uint64_t sub_100297450()
{
  v1 = v0[12];
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  *sub_10000E680(v0 + 2) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100297568;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_100297568(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002976C0, 0, 0);
  }

  else
  {

    sub_100004590((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002976C0()
{
  sub_100004590((v0 + 16));
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297768, v2, v1);
}

uint64_t sub_100297768()
{
  v1 = *(v0 + 120);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0, &qword_1004031E0);

  return _swift_task_switch(sub_1002977F8, 0, 0);
}

uint64_t sub_1002977F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100297858(double a1)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v27 = &v24 - v3;
  v4 = type metadata accessor for PlaybackController.TransportCommand();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = (&v24 - v7);
  v8 = __chkstk_darwin();
  v10 = (&v24 - v9);
  *v10 = a1;
  *(v10 + 8) = 0;
  v10[2] = a1;
  v11 = *(v5 + 104);
  (v11)(&v24 - v9, enum case for PlaybackController.TransportCommand.scoutWith(_:), v4, v8);
  v26 = v1;
  v12 = *(v1 + 120);
  v29[3] = v4;
  v29[4] = &protocol witness table for PlaybackController.TransportCommand;
  v13 = sub_10000E680(v29);
  v14 = *(v5 + 16);
  v14(v13, v10, v4);
  v24 = v12;
  v15 = dispatch thunk of PlaybackController.canPerform(_:)();
  sub_100004590(v29);
  if (v15)
  {
    v14(v28, v10, v4);
  }

  else
  {
    *v28 = a1;
    v11();
  }

  v16 = v27;
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = v25;
  v14(v25, v28, v4);
  v19 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v24;
  (*(v5 + 32))(&v21[v19], v18, v4);
  *&v21[v20] = v26;

  sub_100296DB0(0, 0, v16, &unk_100409210, v21);

  sub_100009104(v16, &qword_100578010, &qword_100401F60);
  v22 = *(v5 + 8);
  v22(v28, v4);
  return (v22)(v10, v4);
}

uint64_t sub_100297BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  return _swift_task_switch(sub_100297BF0, 0, 0);
}

uint64_t sub_100297BF0()
{
  v1 = v0[12];
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v3 = sub_10000E680(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100297CF8;

  return (v6)(v0 + 2, 0);
}

uint64_t sub_100297CF8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100297E50, 0, 0);
  }

  else
  {

    sub_100004590((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100297E50()
{
  sub_100004590((v0 + 16));
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297EF8, v2, v1);
}

uint64_t sub_100297EF8()
{
  v1 = *(v0 + 120);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0, &qword_1004031E0);

  return _swift_task_switch(sub_1002A97A0, 0, 0);
}

uint64_t sub_100297F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100297FA8, 0, 0);
}

uint64_t sub_100297FA8()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpBackward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002980B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1002980D0, 0, 0);
}

uint64_t sub_1002980D0()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpForward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002981D8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v8 = type metadata accessor for PlaybackIntent();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v13 = &v27 - v12;
  static TaskPriority.userInitiated.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = *(v5 + 120);
  v28 = v5;
  v29 = v15;
  (*(v9 + 16))(v11, a1, v8);
  sub_100004428(v5 + 80, v34);
  sub_100010430(a5, v33, &unk_1005783D0, &qword_1004031E0);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v16, v11, v27);
  v22 = v21 + v17;
  v23 = v29;
  *v22 = v30;
  *(v22 + 8) = v31 & 1;
  *(v22 + 9) = v32;
  *(v21 + v18) = v23;
  sub_1000109E4(v34, v21 + v19);
  *(v21 + v20) = v28;
  v24 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v33[1];
  *v24 = v33[0];
  v24[1] = v25;

  sub_100296DB0(0, 0, v13, &unk_100409120, v21);

  return sub_100009104(v13, &qword_100578010, &qword_100401F60);
}

uint64_t sub_100298498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a1;
  v47 = a3;
  v48 = type metadata accessor for ActionOutcome();
  v4 = *(v48 - 8);
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v7 = type metadata accessor for OSLogger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetricsBehavior();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin();
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v14 = &v40 - v13;
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v16 = &v40 - v15;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_8;
  }

  v41 = v14;
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v17 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), v40 = v18, swift_unknownObjectRelease(), !v17))
  {

LABEL_8:
    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0xD000000000000032;
    v24._object = 0x800000010046CE80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    v51 = &type metadata for AdamID;
    v50[0] = v47;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100009104(v50, &unk_1005783D0, &qword_1004031E0);
    v25._object = 0x800000010046CEC0;
    v25._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    (*(v8 + 8))(v10, v7);
    sub_100168088(&unk_100578110, &qword_1004056D0);
    (*(v4 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v48);
    return Promise.__allocating_init(value:)();
  }

  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v19 = type metadata accessor for InteractionContext();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_100010430(v42, v50, &unk_1005783D0, &qword_1004031E0);
  if (v51)
  {
    sub_100009F1C(0, &unk_10057BB80, UIResponder_ptr);
    v20 = swift_dynamicCast();
    v21 = v43;
    if (v20)
    {
      v22 = v49;
      v23 = UIResponder.firstViewInResponderChain.getter();

      goto LABEL_11;
    }
  }

  else
  {
    sub_100009104(v50, &unk_1005783D0, &qword_1004031E0);
    v21 = v43;
  }

  v23 = 0;
LABEL_11:
  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(v16, &unk_10057BB60, &unk_100409160);
  sub_100004428(v21, v50);
  sub_100168088(&unk_10057BB70, &qword_100401CB0);
  v27 = type metadata accessor for FlowAction();
  if (swift_dynamicCast())
  {
    v28 = v49;
    v29 = v41;
    dispatch thunk of FlowAction.destination.getter();
    v30 = type metadata accessor for FlowDestination();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {

      sub_100009104(v29, &qword_10057CF40, qword_100405ED0);
    }

    else
    {
      if ((*(v31 + 88))(v29, v30) == enum case for FlowDestination.upsell(_:))
      {
        (*(v31 + 8))(v29, v30);
        swift_getObjectType();
        v51 = v27;
        v52 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        v50[0] = v28;
        v33 = v44;
        v32 = v45;
        v34 = v46;
        (*(v45 + 104))(v44, enum case for ActionMetricsBehavior.notProcessed(_:), v46);

        v35 = ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v32 + 8))(v33, v34);
        sub_100004590(v50);
        return v35;
      }

      (*(v31 + 8))(v29, v30);
    }
  }

  swift_getObjectType();
  v37 = v44;
  v36 = v45;
  v38 = v46;
  (*(v45 + 104))(v44, enum case for ActionMetricsBehavior.fromAction(_:), v46);
  v39 = ActionRunner.perform(_:withMetrics:asPartOf:)();

  swift_unknownObjectRelease();

  (*(v36 + 8))(v37, v38);
  return v39;
}

uint64_t sub_100298D3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = *v3;
  v47 = a2;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v45 = &v31 - v5;
  sub_100168088(&qword_10057A0A0, &qword_100407188);
  __chkstk_darwin();
  v44 = &v31 - v6;
  v7 = type metadata accessor for PlaybackIntent.Origin();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v43 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin();
  v42 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for EpisodeOffer();
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057BB30, &qword_100409140);
  __chkstk_darwin();
  v38 = &v31 - v11;
  v34 = type metadata accessor for MediaIdentifier();
  v12 = *(v34 - 8);
  __chkstk_darwin();
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for PlaybackIntent();
  v37 = *(v39 - 8);
  __chkstk_darwin();
  v36 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  __chkstk_darwin();
  v17 = &v31 - v16;
  v18 = type metadata accessor for PendingPlaybackMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  EpisodeOffer.contentId.getter();
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100009104(v17, &qword_10057BC50, &qword_1004062D8);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_1000044A0(v3 + 10, v3[13]);
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v19 + 8))(v21, v18);
  }

  sub_100168088(&unk_10057A0B0, &unk_100401C70);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100400790;
  *(v23 + 32) = EpisodeOffer.contentId.getter();
  v48 = v23;
  sub_1001C3C74(_swiftEmptyArrayStorage);
  *v14 = v48;
  v24 = v34;
  (*(v12 + 104))(v14, enum case for MediaIdentifier.episodes(_:), v34);
  (*(v33 + 16))(v32, v22, v35);
  v25 = v38;
  PodcastsMediaLibrary.MediaItem.init(from:)();
  v26 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  (*(v40 + 104))(v43, enum case for PlaybackIntent.Origin.default(_:), v41);
  (*(v12 + 56))(v44, 1, 1, v24);
  v27 = type metadata accessor for EpisodeListSettings();
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  static Set<>.default.getter();
  v28 = v36;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v48 = v3;
  sub_1002A91E8(&qword_10057AC48, v29, type metadata accessor for EpisodeController, &unk_100408FB0);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v37 + 8))(v28, v39);
}

uint64_t sub_10029947C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v40 = a3;
  v41 = a5;
  v39 = a4;
  v47 = a2;
  v54 = *v6;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v53 = &v35 - v8;
  sub_100168088(&qword_10057A0A0, &qword_100407188);
  __chkstk_darwin();
  v52 = &v35 - v9;
  v48 = type metadata accessor for PlaybackIntent.Origin();
  v46 = *(v48 - 8);
  __chkstk_darwin();
  v50 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin();
  v49 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodeOffer();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin();
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057BB30, &qword_100409140);
  __chkstk_darwin();
  v44 = &v35 - v14;
  v15 = type metadata accessor for MediaIdentifier();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for PlaybackIntent();
  v43 = *(v45 - 8);
  __chkstk_darwin();
  v42 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  __chkstk_darwin();
  v21 = &v35 - v20;
  v22 = type metadata accessor for PendingPlaybackMetadata();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  EpisodeOffer.contentId.getter();
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100009104(v21, &qword_10057BC50, &qword_1004062D8);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    sub_1000044A0(v6 + 10, v6[13]);
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v23 + 8))(v25, v22);
  }

  sub_100168088(&unk_10057A0B0, &unk_100401C70);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100400790;
  v27 = v51;
  *(v26 + 32) = EpisodeOffer.contentId.getter();
  if (v47)
  {
    v28 = v47;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v55 = v26;

  sub_1001C3C74(v28);
  *v18 = v55;
  (*(v16 + 104))(v18, enum case for MediaIdentifier.episodes(_:), v15);
  (*(v37 + 16))(v36, v27, v38);
  v29 = v44;
  PodcastsMediaLibrary.MediaItem.init(from:)();
  v30 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  (*(v46 + 104))(v50, enum case for PlaybackIntent.Origin.default(_:), v48);
  (*(v16 + 56))(v52, 1, 1, v15);
  v31 = type metadata accessor for EpisodeListSettings();
  (*(*(v31 - 8) + 56))(v53, 1, 1, v31);
  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  static Set<>.default.getter();
  v32 = v42;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v55 = v6;
  sub_1002A91E8(&qword_10057AC48, v33, type metadata accessor for EpisodeController, &unk_100408FB0);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v43 + 8))(v32, v45);
}

uint64_t sub_100299BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a4;
  v35 = a3;
  v7 = *v4;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = type metadata accessor for MediaIdentifier();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin();
  v32 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for PlaybackIntent();
  v12 = *(v34 - 8);
  __chkstk_darwin();
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057BC50, &qword_1004062D8);
  __chkstk_darwin();
  v15 = &v27 - v14;
  v16 = type metadata accessor for PendingPlaybackMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009104(v15, &qword_10057BC50, &qword_1004062D8);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v28 = v12;
    v29 = v7;
    sub_1000044A0(v5 + 10, v5[13]);
    v12 = v28;
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v17 + 8))(v19, v16);
  }

  sub_100168088(&unk_10057A0B0, &unk_100401C70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100400790;
  *(v20 + 32) = a1;
  v21 = v31;
  v22 = v32;
  *v32 = v20;
  (*(v30 + 104))(v22, enum case for MediaIdentifier.episodes(_:), v21);
  v23 = type metadata accessor for EpisodeListSettings();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  static Set<>.default.getter();
  v24 = v33;
  PlaybackIntent.init(id:baseListSettings:options:)();
  v38 = v5;
  sub_1002A91E8(&qword_10057AC48, v25, type metadata accessor for EpisodeController, &unk_100408FB0);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v12 + 8))(v24, v34);
}

uint64_t sub_10029A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a3;
  v26 = *v5;
  v27 = a5;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for MediaIdentifier();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PlaybackIntent();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin();
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v25;
  *v13 = v24;
  v13[1] = a2;
  v13[2] = v19;
  v13[3] = a4;
  (*(v11 + 104))(v13, enum case for MediaIdentifier.station(_:), v10, v16);
  v20 = type metadata accessor for EpisodeListSettings();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);

  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v28 = v5;
  sub_1002A91E8(&qword_10057AC48, v21, type metadata accessor for EpisodeController, &unk_100408FB0);
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v15 + 8))(v18, v14);
}

void sub_10029A308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&unk_1005738E0, &qword_1004010A0);
  BaseObjectGraph.inject<A>(_:)();
  v6 = [v11[0] mainQueueContext];
  swift_unknownObjectRelease();
  sub_100010430(a2, v12, &unk_1005783D0, &qword_1004031E0);
  v7 = swift_allocObject();
  v8 = v12[1];
  *(v7 + 40) = v12[0];
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = v3;
  *(v7 + 56) = v8;
  v11[4] = sub_1002A9230;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E96B0;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v10 performBlock:v9];
  _Block_release(v9);
}

uint64_t sub_10029A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a4;
  sub_100168088(&unk_100573A80, &unk_100401160);
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = type metadata accessor for MediaIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PlaybackIntent();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = NSManagedObjectContext.unsafeFromYourShowsEpisodeIdentifiers(forCategoryAdamID:)();
  (*(v8 + 104))(v10, enum case for MediaIdentifier.localEpisodes(_:), v7);
  v15 = type metadata accessor for EpisodeListSettings();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v18[1] = a3;
  type metadata accessor for EpisodeController();
  sub_1002A91E8(&qword_10057AC48, v16, type metadata accessor for EpisodeController, &unk_100408FB0);
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10029A700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __n128 a5)
{
  v70 = a4;
  v71 = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OSLogger();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FlowDestinationPageHeader();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowPresentationContext();
  v62 = *(v63 - 8);
  __chkstk_darwin();
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v56 - v11;
  type metadata accessor for FlowDestination();
  __chkstk_darwin();
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = &v56 - v13;
  v14 = type metadata accessor for PreviewingPresentationHint();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v19 = &v56 - v18;
  type metadata accessor for ActionMetricsBehavior();
  v20 = __chkstk_darwin();
  v74 = v22;
  v23 = *(v22 + 104);
  v73 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v24;
  v23(v20);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v25 = type metadata accessor for InteractionContext();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  v76 = 0u;
  v77 = 0u;
  v26 = [a3 view];
  v72 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v76, &unk_1005783D0, &qword_1004031E0);
  sub_100009104(v19, &unk_10057BB60, &unk_100409160);
  (*(v15 + 16))(v17, v70, v14);
  if ((*(v15 + 88))(v17, v14) == enum case for PreviewingPresentationHint.inferTab(_:))
  {
    if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v27 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), swift_unknownObjectRelease(), v27))
    {
      sub_100168088(&unk_1005747F0, &unk_1004091D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100400790;
      static FlowDestination.page(_:)();
      (*(v62 + 104))(v57, enum case for FlowPresentationContext.pushDetail(_:), v63);
      sub_100168088(&qword_1005742B0, &qword_100406C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007C0;
      v30 = static Link.Presentation.textFollowsTintColor.getter();
      *(inited + 32) = v30;
      v31 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(inited + 33) = v31;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v30)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v31)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v64 + 104))(v66, enum case for FlowDestinationPageHeader.standard(_:), v65);
      static ActionMetrics.notInstrumented.getter();
      v32 = type metadata accessor for FlowAction();
      swift_allocObject();
      v33 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      *(v28 + 56) = v32;
      *(v28 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *(v28 + 32) = v33;
      Link.Presentation.init(rawValue:)();
      static ActionMetrics.notInstrumented.getter();
      v34 = type metadata accessor for TabChangeAction();
      swift_allocObject();
      v35 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
      swift_getObjectType();
      *(&v77 + 1) = v34;
      v78 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
      *&v76 = v35;

      v36 = v73;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v74 + 8))(v36, v75);
      return sub_100004590(&v76);
    }

    else
    {
      v44 = v59;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v45._countAndFlagsBits = 0xD00000000000001FLL;
      v45._object = 0x800000010046CF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      v46 = type metadata accessor for URL();
      *(&v77 + 1) = v46;
      v47 = sub_10000E680(&v76);
      (*(*(v46 - 8) + 16))(v47, v71, v46);
      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_100009104(&v76, &unk_1005783D0, &qword_1004031E0);
      v48._object = 0x800000010046CEC0;
      v48._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      v49 = v61;
      Logger.error(_:)();

      (*(v60 + 8))(v44, v49);
      return (*(v74 + 8))(v73, v75);
    }
  }

  else
  {
    if (UIResponder.nearestActionRunner.getter())
    {
      static FlowDestination.page(_:)();
      (*(v62 + 104))(v69, enum case for FlowPresentationContext.infer(_:), v63);
      sub_100168088(&qword_1005742B0, &qword_100406C70);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1004007C0;
      v39 = static Link.Presentation.textFollowsTintColor.getter();
      *(v38 + 32) = v39;
      v40 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(v38 + 33) = v40;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v39)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v40)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v64 + 104))(v66, enum case for FlowDestinationPageHeader.standard(_:), v65);
      static ActionMetrics.notInstrumented.getter();
      v41 = type metadata accessor for FlowAction();
      swift_allocObject();
      v42 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      swift_getObjectType();
      *(&v77 + 1) = v41;
      v78 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v76 = v42;

      v43 = v73;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v74 + 8))(v43, v75);
      sub_100004590(&v76);
    }

    else
    {
      v50 = v59;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0xD00000000000001FLL;
      v51._object = 0x800000010046CF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      v52 = type metadata accessor for URL();
      *(&v77 + 1) = v52;
      v53 = sub_10000E680(&v76);
      (*(*(v52 - 8) + 16))(v53, v71, v52);
      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_100009104(&v76, &unk_1005783D0, &qword_1004031E0);
      v54._object = 0x800000010046CEC0;
      v54._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      LogMessage.init(stringInterpolation:)();
      v55 = v61;
      Logger.error(_:)();

      (*(v60 + 8))(v50, v55);
      (*(v74 + 8))(v73, v75);
    }

    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_10029B63C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v22 = a1;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v21 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100294534();
  if (!v16)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_100009104(v11, &qword_100574040, &unk_100400AD0);
  }

  v21[1] = a5;
  v17 = v16;
  v18 = [v16 episodeShareUrl];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_100010498(v9, v11, &qword_100574040, &unk_100400AD0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100009104(v11, &qword_100574040, &unk_100400AD0);
  }

  v20.n128_f64[0] = (*(v13 + 32))(v15, v11, v12);
  sub_10029A700(v22, v15, a3, a4, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10029B8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v75 = a5;
  *(&v76 + 1) = a3;
  *&v76 = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OSLogger();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FlowDestinationPageHeader();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for FlowPresentationContext();
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v58 - v12;
  v68 = type metadata accessor for FlowDestination();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = (&v58 - v15);
  v16 = type metadata accessor for PreviewingPresentationHint();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v21 = &v58 - v20;
  type metadata accessor for ActionMetricsBehavior();
  v22 = __chkstk_darwin();
  v79 = v24;
  v25 = *(v24 + 104);
  v78 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v26;
  v25(v22);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v27 = type metadata accessor for InteractionContext();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v81 = 0u;
  v82 = 0u;
  v28 = [a4 view];
  v77 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v81, &unk_1005783D0, &qword_1004031E0);
  sub_100009104(v21, &unk_10057BB60, &unk_100409160);
  (*(v17 + 16))(v19, v75, v16);
  v29 = *(v17 + 88);
  v66 = v19;
  v75 = v16;
  if (v29(v19, v16) == enum case for PreviewingPresentationHint.inferTab(_:))
  {
    if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v30 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), swift_unknownObjectRelease(), v30))
    {
      sub_100168088(&unk_1005747F0, &unk_1004091D0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100400790;
      v85 = 1;
      v84 = 1;
      v32 = v59;
      v33 = *(&v76 + 1);
      *v59 = v76;
      v32[1] = v33;
      v32[3] = 0;
      v32[4] = 0;
      v32[2] = 0;
      *(v32 + 40) = 1;
      v32[6] = 0;
      *(v32 + 56) = 1;
      (*(v67 + 104))(v32, enum case for FlowDestination.episodeDetails(_:), v68);
      (*(v69 + 104))(v60, enum case for FlowPresentationContext.pushDetail(_:), v70);
      sub_100168088(&qword_1005742B0, &qword_100406C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007C0;

      v35 = static Link.Presentation.textFollowsTintColor.getter();
      *(inited + 32) = v35;
      v36 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(inited + 33) = v36;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v35)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v36)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v71 + 104))(v73, enum case for FlowDestinationPageHeader.standard(_:), v72);
      static ActionMetrics.notInstrumented.getter();
      v37 = type metadata accessor for FlowAction();
      swift_allocObject();
      v38 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      *(v31 + 56) = v37;
      *(v31 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *(v31 + 32) = v38;
      Link.Presentation.init(rawValue:)();
      static ActionMetrics.notInstrumented.getter();
      v39 = type metadata accessor for TabChangeAction();
      swift_allocObject();
      v40 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
      swift_getObjectType();
      *(&v82 + 1) = v39;
      v83 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
      *&v81 = v40;

      v41 = v78;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v79 + 8))(v41, v80);
      return sub_100004590(&v81);
    }

    else
    {
      v50 = v63;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0xD00000000000002DLL;
      v51._object = 0x800000010046CF70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      *(&v82 + 1) = &type metadata for String;
      v81 = v76;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100009104(&v81, &unk_1005783D0, &qword_1004031E0);
      v52._object = 0x800000010046CEC0;
      v52._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      LogMessage.init(stringInterpolation:)();
      v53 = v65;
      Logger.error(_:)();

      (*(v64 + 8))(v50, v53);
      return (*(v79 + 8))(v78, v80);
    }
  }

  else
  {
    if (UIResponder.nearestActionRunner.getter())
    {
      v85 = 1;
      v84 = 1;
      v43 = *(&v76 + 1);
      *v14 = v76;
      *(v14 + 1) = v43;
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      *(v14 + 2) = 0;
      v14[40] = 1;
      *(v14 + 6) = 0;
      v14[56] = 1;
      (*(v67 + 104))(v14, enum case for FlowDestination.episodeDetails(_:), v68);
      (*(v69 + 104))(v61, enum case for FlowPresentationContext.infer(_:), v70);
      sub_100168088(&qword_1005742B0, &qword_100406C70);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_1004007C0;

      v45 = static Link.Presentation.textFollowsTintColor.getter();
      *(v44 + 32) = v45;
      v46 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(v44 + 33) = v46;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v45)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v46)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v71 + 104))(v73, enum case for FlowDestinationPageHeader.standard(_:), v72);
      static ActionMetrics.notInstrumented.getter();
      v47 = type metadata accessor for FlowAction();
      swift_allocObject();
      v48 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      swift_getObjectType();
      *(&v82 + 1) = v47;
      v83 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v81 = v48;

      v49 = v78;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v79 + 8))(v49, v80);
      sub_100004590(&v81);
    }

    else
    {
      v54 = v63;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v55._countAndFlagsBits = 0xD00000000000002DLL;
      v55._object = 0x800000010046CF70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      *(&v82 + 1) = &type metadata for String;
      v81 = v76;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100009104(&v81, &unk_1005783D0, &qword_1004031E0);
      v56._object = 0x800000010046CEC0;
      v56._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      LogMessage.init(stringInterpolation:)();
      v57 = v65;
      Logger.error(_:)();

      (*(v64 + 8))(v54, v57);
      (*(v79 + 8))(v78, v80);
    }

    return (*(v17 + 8))(v66, v75);
  }
}

uint64_t sub_10029C8EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v36 = a6;
  v35 = a5;
  v37 = a3;
  v38 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreviewingPresentationHint();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v31 = v13;
      v18 = result;
      sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
      v34 = v8;
      v19 = a1;
      v33 = static OS_dispatch_queue.main.getter();
      (*(v15 + 16))(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v14);
      v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v21 = swift_allocObject();
      v32 = v10;
      v22 = v37;
      *(v21 + 2) = v18;
      *(v21 + 3) = v22;
      v35 = v7;
      v23 = v38;
      *(v21 + 4) = v19;
      *(v21 + 5) = v23;
      (*(v15 + 32))(&v21[v20], &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v21[v20 + v16] = v36 & 1;
      aBlock[4] = sub_1002A9160;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E9638;
      v24 = _Block_copy(aBlock);
      v25 = v19;

      v26 = v23;

      v27 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002A91E8(&qword_10057D380, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
      v28 = v32;
      v29 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v33;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v34 + 8))(v28, v29);
      return (*(v39 + 8))(v27, v40);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10029CD4C(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, __n128 a6)
{
  LODWORD(v91) = a5;
  v93 = a4;
  v94 = a3;
  v95 = a2;
  v92 = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v81[1] = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = v81 - v7;
  v8 = type metadata accessor for OSLogger();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin();
  v82 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = v81 - v10;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v88 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowPresentationContext();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin();
  v87 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreviewingPresentationHint();
  v96 = *(v14 - 8);
  __chkstk_darwin();
  v16 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v18 = v81 - v17;
  v19 = type metadata accessor for ActionMetricsBehavior();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = (v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v27 = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v29 = v20;
  v30 = *(v20 + 104);
  v31 = &enum case for ActionMetricsBehavior.notProcessed(_:);
  if ((v91 & 1) == 0)
  {
    v31 = &enum case for ActionMetricsBehavior.fromAction(_:);
  }

  v32 = *v31;
  v91 = v22;
  v30(v22, v32, v19);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v33 = type metadata accessor for InteractionContext();
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
  v97 = 0u;
  v98 = 0u;
  v34 = [v94 view];
  v92 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v97, &unk_1005783D0, &qword_1004031E0);
  sub_100009104(v18, &unk_10057BB60, &unk_100409160);
  v35 = v96;
  (*(v96 + 16))(v16, v93, v14);
  v36 = v19;
  if ((*(v35 + 88))(v16, v14) != enum case for PreviewingPresentationHint.inferTab(_:))
  {
    v84 = v16;
    v93 = v14;
    v55 = UIResponder.nearestActionRunner.getter();
    v56 = v95;
    v57 = v82;
    if (v55)
    {
      v58 = v29;
      v59 = type metadata accessor for FlowAction();
      v60 = v87;
      (*(v85 + 104))(v87, enum case for FlowPresentationContext.infer(_:), v86);
      v61 = v56;
      v62 = v88;
      static ActionMetrics.notInstrumented.getter();
      v64 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v61, v60, v62, v63);
      if (v64)
      {
        v65 = v64;
        swift_getObjectType();
        *(&v98 + 1) = v59;
        v99 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *&v97 = v65;

        v66 = v91;
        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v58 + 8))(v66, v36);
        sub_100004590(&v97);
        return (*(v96 + 8))(v84, v93);
      }

      swift_unknownObjectRelease();
      v29 = v58;
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v67._countAndFlagsBits = 0xD00000000000002DLL;
    v67._object = 0x800000010046CF40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v67);
    v68 = MTPodcast.adamId.getter();
    if (v69)
    {
      v68 = 0;
      v70 = 0;
      *(&v97 + 1) = 0;
      *&v98 = 0;
    }

    else
    {
      v70 = &type metadata for AdamID;
    }

    v71 = v91;
    *&v97 = v68;
    *(&v98 + 1) = v70;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100009104(&v97, &unk_1005783D0, &qword_1004031E0);
    v72._object = 0x800000010046CEC0;
    v72._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    LogMessage.init(stringInterpolation:)();
    v73 = v90;
    Logger.error(_:)();

    (*(v89 + 8))(v57, v73);
    (*(v29 + 8))(v71, v36);
    return (*(v96 + 8))(v84, v93);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v38 = v95;
  v39 = v83;
  if (Strong)
  {
    swift_getObjectType();
    v40 = dispatch thunk of ActionRunnerProvider.actionRunner.getter();
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40)
    {
      v96 = v19;
      v43 = type metadata accessor for FlowAction();
      v44 = v87;
      (*(v85 + 104))(v87, enum case for FlowPresentationContext.pushDetail(_:), v86);
      v45 = v38;
      v46 = v88;
      static ActionMetrics.notInstrumented.getter();
      v48 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v45, v44, v46, v47);
      if (v48)
      {
        v49 = v48;
        sub_100009F1C(0, &qword_10057BC40, UITraitCollection_ptr);
        static UITraitCollection.interfaceMode.getter();
        sub_100168088(&unk_1005747F0, &unk_1004091D0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100400790;
        *(v50 + 56) = v43;
        v95 = v42;
        v51 = v29;
        *(v50 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *(v50 + 32) = v49;

        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v52 = type metadata accessor for TabChangeAction();
        swift_allocObject();
        v53 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        swift_getObjectType();
        *(&v98 + 1) = v52;
        v99 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
        *&v97 = v53;

        v54 = v91;
        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v51 + 8))(v54, v96);
        return sub_100004590(&v97);
      }

      swift_unknownObjectRelease();
      v36 = v96;
    }
  }

  static OSLogger.actions.getter();
  sub_100168088(&unk_10057E660, qword_100403D70);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_100400790;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v74._countAndFlagsBits = 0xD00000000000002DLL;
  v74._object = 0x800000010046CF40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v74);
  v75 = MTPodcast.adamId.getter();
  if (v76)
  {
    v75 = 0;
    v77 = 0;
    *(&v97 + 1) = 0;
    *&v98 = 0;
  }

  else
  {
    v77 = &type metadata for AdamID;
  }

  v78 = v91;
  *&v97 = v75;
  *(&v98 + 1) = v77;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100009104(&v97, &unk_1005783D0, &qword_1004031E0);
  v79._object = 0x800000010046CEC0;
  v79._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v79);
  LogMessage.init(stringInterpolation:)();
  v80 = v90;
  Logger.error(_:)();

  (*(v89 + 8))(v39, v80);
  return (*(v29 + 8))(v78, v36);
}

uint64_t sub_10029DA58(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(void, void, void), uint64_t a5)
{
  v242 = a4;
  v243 = a5;
  v244 = a1;
  sub_100168088(&qword_10057BBA8, &unk_100409170);
  __chkstk_darwin();
  v224 = &v222 - v7;
  v225 = type metadata accessor for AnyReferenceLink();
  v223 = *(v225 - 8);
  __chkstk_darwin();
  v222 = (&v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&qword_100577EA0, qword_1004051E8);
  __chkstk_darwin();
  v227 = &v222 - v9;
  v10 = type metadata accessor for ShowOffer();
  v230 = *(v10 - 8);
  v231 = v10;
  __chkstk_darwin();
  v228 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v232 = (&v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&qword_100574E18, &qword_100402A10);
  __chkstk_darwin();
  v14 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v222 - v15;
  v17 = type metadata accessor for EpisodeOffer();
  v255 = *(v17 - 8);
  __chkstk_darwin();
  v259 = &v222 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v234 = &v222 - v19;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v226 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = &v222 - v21;
  __chkstk_darwin();
  v239 = &v222 - v22;
  __chkstk_darwin();
  v246 = &v222 - v23;
  v24 = type metadata accessor for InteractionContext();
  v25 = *(v24 - 8);
  v240 = v24;
  v241 = v25;
  __chkstk_darwin();
  v237 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v238 = &v222 - v27;
  __chkstk_darwin();
  v248 = &v222 - v28;
  v29 = type metadata accessor for PresentationSource();
  v30 = *(v29 - 8);
  v252 = v29;
  v253 = v30;
  __chkstk_darwin();
  v247 = &v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for EpisodeContextActionDataType(0);
  v256 = *(v245 - 8);
  __chkstk_darwin();
  v236 = (&v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v257 = (&v222 - v33);
  sub_100168088(&unk_10057BBB0, &qword_100403860);
  __chkstk_darwin();
  v35 = &v222 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v258 = &v222 - v36;
  v37 = *(type metadata accessor for PreviewingPresentationHint() - 8);
  __chkstk_darwin();
  v235 = &v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin();
  v40 = *(v37 + 104);
  v249 = &v222 - v42;
  v250 = v41;
  v40(v39);
  sub_100004428(a2, &v267);
  v43 = sub_100168088(&qword_1005748C0, qword_1004060D0);
  v44 = type metadata accessor for LegacyEpisodeLockup();
  if (swift_dynamicCast())
  {
    v259 = v262;
    v45 = _swiftEmptyArrayStorage;
    v273[0] = _swiftEmptyArrayStorage;
    v46 = *(a3 + 16);
    if (v46)
    {
      v47 = a3 + 32;
      do
      {
        sub_100004428(v47, &v267);
        sub_1000109E4(&v267, &v262);
        if ((swift_dynamicCast() & 1) != 0 && v261[0])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v273[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = v273[0];
        }

        v47 += 40;
        --v46;
      }

      while (v46);
    }

    if (v45 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_24:
        v60 = sub_1002A0600(v45);
        if (v60)
        {
          v62 = v60;
          v63 = v61;

          v64 = v258;
          *v258 = v62;
          v64[1] = v63;
          v65 = v64;
        }

        else
        {
          v69 = sub_1002A096C(v45);

          if (!v69)
          {
            v71 = 1;
            v70 = v245;
            v65 = v258;
            goto LABEL_33;
          }

          v65 = v258;
          *v258 = v69;
        }

        v70 = v245;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
LABEL_33:
        v72 = v256;
        (v256[7])(v65, v71, 1, v70);
        sub_100010430(v65, v35, &unk_10057BBB0, &qword_100403860);
        if (v72[6](v35, 1, v70) == 1)
        {

          sub_100009104(v65, &unk_10057BBB0, &qword_100403860);
          (*(v37 + 8))(v249, v250);
          sub_100009104(v35, &unk_10057BBB0, &qword_100403860);
          return 0;
        }

        v74 = v257;
        sub_1002A8FC0(v35, v257, type metadata accessor for EpisodeContextActionDataType);
        v75 = v236;
        sub_1002A8F58(v74, v236, type metadata accessor for EpisodeContextActionDataType);
        v251 = v37;
        v76 = *(v37 + 16);
        v77 = v235;
        v78 = v250;
        v76(v235, v249, v250);
        type metadata accessor for EpisodeContextActionData(0);
        v79 = swift_allocObject();
        v80 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        *(v79 + v80) = [objc_opt_self() sharedInstance];
        sub_1002A8F58(v75, v79 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
        v76((v79 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v77, v78);
        *(v79 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        sub_100399908();
        v81 = *(v251 + 8);
        v251 += 8;
        v256 = v81;
        (v81)(v77, v78);
        v255 = type metadata accessor for EpisodeContextActionDataType;
        sub_1002A9028(v75, type metadata accessor for EpisodeContextActionDataType);
        v82 = *(v253 + 16);
        v83 = v247;
        v82(v247, v242, v252);
        *(&v268 + 1) = v44;
        *&v269 = sub_1002A91E8(&qword_10057BBD8, 255, &type metadata accessor for LegacyEpisodeLockup, &protocol conformance descriptor for LegacyLockup);
        *&v267 = v259;
        v84 = v240;
        v85 = v241;
        v86 = *(v241 + 16);
        v86(v248, v243, v240);
        type metadata accessor for EpisodeContextActionConfiguration(0);
        v259 = swift_allocObject();
        *&v259[qword_100576670] = v79;
        v87 = v246;
        v88 = v252;
        v82(v246, v83, v252);
        (*(v253 + 56))(v87, 0, 1, v88);
        sub_100010430(&v267, &v262, &qword_100576490, &qword_100403D40);
        v89 = v238;
        v90 = v248;
        v86(v238, v248, v84);
        sub_100010430(v87, v239, &unk_10057BB90, &unk_100402D60);
        sub_100010430(&v262, v273, &qword_100576490, &qword_100403D40);
        v86(v237, v89, v84);

        v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
        v91 = *(v85 + 8);
        v91(v89, v84);
        sub_100009104(&v262, &qword_100576490, &qword_100403D40);
        sub_100009104(v87, &unk_10057BB90, &unk_100402D60);
        v91(v90, v84);
        (*(v253 + 8))(v247, v252);
        sub_1002A9028(v257, v255);
        sub_100009104(v258, &unk_10057BBB0, &qword_100403860);
        (v256)(v249, v250);
        v92 = &v267;
LABEL_49:
        sub_100009104(v92, &qword_100576490, &qword_100403D40);
        return v73;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    sub_100168088(&unk_100574680, &qword_100401740);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1004007B0;
    *(v45 + 32) = v259;

    goto LABEL_24;
  }

  v48 = a3;
  v251 = v37;
  sub_100004428(a2, &v267);
  v49 = swift_dynamicCast();
  v50 = v255;
  v51 = *(v255 + 7);
  v52 = a2;
  if (!v49)
  {
    (v51)(v16, 1, 1, v17);
    sub_100009104(v16, &qword_100574E18, &qword_100402A10);
    sub_100004428(a2, v273);
    v66 = type metadata accessor for LibraryShowLockup();
    if (swift_dynamicCast())
    {
      v67 = v272;

      v68 = dispatch thunk of LegacyLockup.contextAction.getter();

      if (v68)
      {
        type metadata accessor for LibraryPodcastContextAction();
        if (swift_dynamicCastClass())
        {
          LibraryPodcastContextAction.groupedEpisodeListType.getter();

          v269 = v264;
          v270 = v265;
          v271 = v266;
          v267 = v262;
          v268 = v263;
LABEL_48:
          v148 = v252;
          v147 = v253;
          v149 = v246;
          (*(v253 + 16))(v246, v242, v252);
          (*(v147 + 56))(v149, 0, 1, v148);
          v150 = LibraryShowLockup.uuid.getter();
          v151 = v232;
          *v232 = v150;
          *(v151 + 8) = v152;
          type metadata accessor for PodcastContextActionDataType.Kind(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for PodcastContextActionData(0);
          v153 = swift_allocObject();
          v154 = objc_opt_self();
          sub_100010430(&v267, &v262, &qword_100575040, &qword_100402708);
          *(v153 + 16) = [v154 sharedInstance];
          sub_1002A8F58(v151, v153 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
          v155 = v153 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
          v156 = v270;
          *(v155 + 32) = v269;
          *(v155 + 48) = v156;
          *(v155 + 64) = v271;
          v157 = v268;
          *v155 = v267;
          *(v155 + 16) = v157;
          sub_100010430(&v267, &v262, &qword_100575040, &qword_100402708);
          sub_100216334();
          sub_100009104(&v267, &qword_100575040, &qword_100402708);
          sub_1002A9028(v151, type metadata accessor for PodcastContextActionDataType);
          *(&v263 + 1) = v66;
          *&v264 = sub_1002A91E8(&qword_10057BBD0, 255, &type metadata accessor for LibraryShowLockup, &protocol conformance descriptor for LegacyLockup);
          *&v262 = v67;
          v159 = v240;
          v158 = v241;
          v259 = v67;
          v160 = *(v241 + 16);
          v161 = v248;
          v160(v248, v243, v240);
          type metadata accessor for PodcastContextActionConfiguration(0);
          v258 = swift_allocObject();
          *&v258[qword_100576738] = v153;
          v162 = v149;
          v163 = v239;
          sub_100010430(v162, v239, &unk_10057BB90, &unk_100402D60);
          sub_100010430(&v262, v261, &qword_100576490, &qword_100403D40);
          v164 = v238;
          v160(v238, v161, v159);
          sub_100010430(v163, v233, &unk_10057BB90, &unk_100402D60);
          sub_100010430(v261, &v260, &qword_100576490, &qword_100403D40);
          v160(v237, v164, v159);

          v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
          sub_100009104(&v267, &qword_100575040, &qword_100402708);

          v165 = *(v158 + 8);
          v165(v164, v159);
          sub_100009104(v261, &qword_100576490, &qword_100403D40);
          sub_100009104(v163, &unk_10057BB90, &unk_100402D60);
          v165(v248, v159);
          sub_100009104(v246, &unk_10057BB90, &unk_100402D60);
          (*(v251 + 8))(v249, v250);
          v92 = &v262;
          goto LABEL_49;
        }
      }

      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      v271 = -1;
      goto LABEL_48;
    }

    v93 = v227;
    sub_1002A016C(v52, v227);
    v95 = v230;
    v94 = v231;
    if ((*(v230 + 48))(v93, 1, v231) == 1)
    {
      sub_100009104(v93, &qword_100577EA0, qword_1004051E8);
      sub_100004428(v52, &v267);
      type metadata accessor for LegacyChannelLockup();
      if (swift_dynamicCast())
      {
        v96 = v262;
        v98 = v252;
        v97 = v253;
        v99 = v246;
        (*(v253 + 16))(v246, v242, v252);
        (*(v97 + 56))(v99, 0, 1, v98);

        v100 = LegacyLockup.adamId.getter();
        v101 = LegacyLockup.title.getter();
        v103 = v102;

        v104 = v248;
        (*(v241 + 16))(v248, v243, v240);
        type metadata accessor for ChannelContextActionConfiguration(0);
        v105 = swift_allocObject();

        v107 = sub_1002A3E24(v106, v99, 0, v100, v101, v103, v96, v104, v105, &type metadata accessor for LegacyChannelLockup, &unk_10057BBE0, &type metadata accessor for LegacyChannelLockup, &protocol conformance descriptor for LegacyLockup);
LABEL_57:
        v73 = v107;
        goto LABEL_58;
      }

      sub_100004428(v52, &v267);
      type metadata accessor for ChannelPowerSwooshAction();
      if (swift_dynamicCast())
      {
        v142 = v262;
        ChannelPowerSwooshAction.channelAdamId.getter();
        if (!v143)
        {
          (*(v251 + 8))(v249, v250);

          return 0;
        }

        v145 = v252;
        v144 = v253;
        v146 = v226;
        (*(v253 + 16))(v226, v242, v252);
        (*(v144 + 56))(v146, 0, 1, v145);
        v203 = static AdamID.parse(_:)();

        v204 = ChannelPowerSwooshAction.channelName.getter();
        v206 = v205;
        v207 = v248;
        (*(v241 + 16))(v248, v243, v240);
        type metadata accessor for ChannelContextActionConfiguration(0);
        v208 = swift_allocObject();

        v107 = sub_1002A3E24(v209, v146, 0, v203, v204, v206, v142, v207, v208, &type metadata accessor for ChannelPowerSwooshAction, &qword_10057BC08, &type metadata accessor for ChannelPowerSwooshAction, &protocol conformance descriptor for Action);
        goto LABEL_57;
      }

      sub_100004428(v52, &v267);
      if (swift_dynamicCast())
      {
        v166 = v262;
        v167 = v233;
        v169 = v252;
        v168 = v253;
        v170 = v246;
        (*(v253 + 16))(v246, v242, v252);
        (*(v168 + 56))(v170, 0, 1, v169);
        v172 = v240;
        v171 = v241;
        v173 = *(v241 + 16);
        v174 = v248;
        v173(v248, v243, v240);
        *(&v268 + 1) = &type metadata for AdamID;
        *&v269 = sub_1002A8F04();
        *&v267 = v166;
        type metadata accessor for CategoryContextActionConfiguration(0);
        *(swift_allocObject() + qword_100576858) = v166;
        v175 = v239;
        sub_100010430(v170, v239, &unk_10057BB90, &unk_100402D60);
        sub_100004428(&v267, &v262);
        v176 = v238;
        v173(v238, v174, v172);
        sub_100010430(v175, v167, &unk_10057BB90, &unk_100402D60);
        sub_100010430(&v262, v273, &qword_100576490, &qword_100403D40);
        v173(v237, v176, v172);

        v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
        v177 = *(v171 + 8);
        v177(v176, v172);
        sub_100009104(&v262, &qword_100576490, &qword_100403D40);
        sub_100009104(v175, &unk_10057BB90, &unk_100402D60);
        v177(v248, v172);
        sub_100009104(v246, &unk_10057BB90, &unk_100402D60);
        (*(v251 + 8))(v249, v250);
        sub_100004590(&v267);
        return v73;
      }

      sub_100004428(v52, &v267);
      type metadata accessor for LegacyCategoryLockup();
      if (swift_dynamicCast())
      {
        v178 = type metadata accessor for CategoryContextActionConfiguration(0);
        v180 = v252;
        v179 = v253;
        v181 = v246;
        (*(v253 + 16))(v246, v242, v252);
        (*(v179 + 56))(v181, 0, 1, v180);

        v182 = LegacyLockup.adamId.getter();

        sub_100004428(v52, &v267);
        v183 = v248;
        (*(v241 + 16))(v248, v243, v240);
        v184 = *(&v268 + 1);
        v185 = v269;
        sub_100010C38(&v267, *(&v268 + 1));
        v186 = __chkstk_darwin();
        v188 = &v222 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v189 + 16))(v188, v186);

        v73 = sub_1001EDD04(v190, v181, v182, 0, v188, v183, v178, v184, v185);

        (*(v251 + 8))(v249, v250);
        sub_100004590(&v267);
        return v73;
      }

      sub_100004428(v52, &v267);
      type metadata accessor for LegacyEditorialItemLockup();
      if (!swift_dynamicCast())
      {
        sub_100004428(v52, &v267);
        v211 = v224;
        v212 = v225;
        v213 = swift_dynamicCast();
        v214 = v223;
        v215 = *(v223 + 56);
        if (v213)
        {
          v215(v211, 0, 1, v212);
          v216 = v222;
          (*(v214 + 32))(v222, v211, v212);
          v73 = sub_1002A6790(v244, v216, v242, v243);
          (*(v214 + 8))(v216, v212);
          goto LABEL_58;
        }

        v215(v211, 1, 1, v212);
        sub_100009104(v211, &qword_10057BBA8, &unk_100409170);
        v218 = v252;
        v217 = v253;
        v219 = v246;
        (*(v253 + 16))(v246, v242, v252);
        (*(v217 + 56))(v219, 0, 1, v218);
        sub_100004428(v52, &v267);
        v220 = v248;
        (*(v241 + 16))(v248, v243, v240);
        type metadata accessor for OtherContextActionConfiguration(0);
        swift_allocObject();

        v107 = sub_1001EBDC4(v221, v219, &v267, v220);
        goto LABEL_57;
      }

      v192 = v252;
      v191 = v253;
      v193 = v233;
      v194 = v246;
      (*(v253 + 16))(v246, v242, v252);
      (*(v191 + 56))(v194, 0, 1, v192);
      sub_100004428(v52, &v267);
      v196 = v240;
      v195 = v241;
      v197 = *(v241 + 16);
      v198 = v248;
      v197(v248, v243, v240);
      type metadata accessor for EditorialItemContextActionConfiguration(0);
      v259 = swift_allocObject();
      v199 = v194;
      v200 = v239;
      sub_100010430(v199, v239, &unk_10057BB90, &unk_100402D60);
      sub_100004428(&v267, &v262);
      v201 = v238;
      v197(v238, v198, v196);
      sub_100010430(v200, v193, &unk_10057BB90, &unk_100402D60);
      sub_100010430(&v262, v273, &qword_100576490, &qword_100403D40);
      v197(v237, v201, v196);

      v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v202 = *(v195 + 8);
      v202(v201, v196);
      sub_100009104(&v262, &qword_100576490, &qword_100403D40);
      sub_100009104(v200, &unk_10057BB90, &unk_100402D60);
      v202(v248, v196);
      sub_100004590(&v267);
      sub_100009104(v246, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v125 = v228;
      (*(v95 + 32))(v228, v93, v94);
      v126 = v94;
      v127 = v253;
      v128 = v246;
      v129 = v95;
      v130 = v252;
      (*(v253 + 16))(v246, v242, v252);
      (*(v127 + 56))(v128, 0, 1, v130);
      v131 = v232;
      (*(v129 + 16))(v232, v125, v126);
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PodcastContextActionData(0);
      v132 = swift_allocObject();
      *(v132 + 16) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v131, v132 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
      v133 = v132 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
      *v133 = 0u;
      *(v133 + 16) = 0u;
      *(v133 + 32) = 0u;
      *(v133 + 48) = 0u;
      *(v133 + 64) = -1;
      sub_100216334();
      sub_1002A9028(v131, type metadata accessor for PodcastContextActionDataType);
      sub_100004428(v52, &v267);
      v135 = v240;
      v134 = v241;
      v136 = *(v241 + 16);
      v137 = v248;
      v138 = v233;
      v136(v248, v243, v240);
      type metadata accessor for PodcastContextActionConfiguration(0);
      v259 = swift_allocObject();
      *&v259[qword_100576738] = v132;
      v139 = v239;
      sub_100010430(v246, v239, &unk_10057BB90, &unk_100402D60);
      sub_100010430(&v267, &v262, &qword_100576490, &qword_100403D40);
      v140 = v238;
      v136(v238, v137, v135);
      sub_100010430(v139, v138, &unk_10057BB90, &unk_100402D60);
      sub_100010430(&v262, v273, &qword_100576490, &qword_100403D40);
      v136(v237, v140, v135);

      v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v141 = *(v134 + 8);
      v141(v140, v135);
      sub_100009104(&v262, &qword_100576490, &qword_100403D40);
      sub_100009104(v139, &unk_10057BB90, &unk_100402D60);
      v141(v248, v135);
      sub_100009104(&v267, &qword_100576490, &qword_100403D40);
      sub_100009104(v246, &unk_10057BB90, &unk_100402D60);
      (*(v230 + 8))(v228, v231);
    }

LABEL_58:
    (*(v251 + 8))(v249, v250);
    return v73;
  }

  v233 = a2;
  v257 = v51;
  v258 = v43;
  (v51)(v16, 0, 1, v17);
  v53 = v234;
  v256 = *(v50 + 4);
  (v256)(v234, v16, v17);
  v54 = *(v48 + 16);
  v254 = v17;
  if (v54)
  {
    v55 = v48 + 32;
    v56 = _swiftEmptyArrayStorage;
    do
    {
      sub_100004428(v55, &v267);
      sub_1000109E4(&v267, &v262);
      v57 = swift_dynamicCast();
      (v257)(v14, v57 ^ 1u, 1, v17);
      if ((*(v50 + 6))(v14, 1, v17) == 1)
      {
        sub_100009104(v14, &qword_100574E18, &qword_100402A10);
      }

      else
      {
        (v256)(v259, v14, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_100243D84(0, v56[2] + 1, 1, v56);
        }

        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          v56 = sub_100243D84((v58 > 1), v59 + 1, 1, v56);
        }

        v56[2] = v59 + 1;
        v17 = v254;
        (v256)(v56 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 9) * v59, v259, v254);
      }

      v55 += 40;
      --v54;
    }

    while (v54);
  }

  else
  {
    sub_100168088(&qword_10057BBA0, qword_100404540);
    v108 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v56 = swift_allocObject();
    *(v56 + 1) = xmmword_100400790;
    (*(v50 + 2))(v56 + v108, v53, v17);
  }

  v258 = *(v253 + 16);
  (v258)(v247, v242, v252);
  v109 = v236;
  *v236 = v56;
  swift_storeEnumTagMultiPayload();
  v111 = v250;
  v110 = v251;
  v112 = *(v251 + 16);
  v113 = v235;
  v112(v235, v249, v250);
  type metadata accessor for EpisodeContextActionData(0);
  v114 = swift_allocObject();
  v115 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  *(v114 + v115) = [objc_opt_self() sharedInstance];
  sub_1002A8F58(v109, v114 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  v112((v114 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v113, v111);
  *(v114 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  v116 = *(v110 + 8);
  v251 = v110 + 8;
  v259 = v116;
  (v116)(v113, v111);
  sub_1002A9028(v109, type metadata accessor for EpisodeContextActionDataType);
  sub_100004428(v233, &v267);
  v117 = v240;
  v118 = v241;
  v119 = *(v241 + 16);
  v120 = v248;
  v119(v248, v243, v240);
  type metadata accessor for EpisodeContextActionConfiguration(0);
  *(swift_allocObject() + qword_100576670) = v114;
  v121 = v246;
  v122 = v252;
  (v258)(v246, v247, v252);
  (*(v253 + 56))(v121, 0, 1, v122);
  sub_100010430(&v267, &v262, &qword_100576490, &qword_100403D40);
  v123 = v238;
  v119(v238, v120, v117);
  sub_100010430(v121, v239, &unk_10057BB90, &unk_100402D60);
  sub_100010430(&v262, v273, &qword_100576490, &qword_100403D40);
  v119(v237, v123, v117);

  v73 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v124 = *(v118 + 8);
  v124(v123, v117);
  sub_100009104(&v262, &qword_100576490, &qword_100403D40);
  sub_100009104(v121, &unk_10057BB90, &unk_100402D60);
  v124(v248, v117);
  sub_100009104(&v267, &qword_100576490, &qword_100403D40);
  (*(v253 + 8))(v247, v252);
  (*(v255 + 1))(v234, v254);
  (v259)(v249, v250);
  return v73;
}

id sub_1002A0084(uint64_t a1, uint64_t a2, double (*a3)(void, void, void), uint64_t a4, char a5)
{
  if (!sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, a3, a4))
  {
    return 0;
  }

  ContextActionsConfiguration.swipeActions(leadingSwipe:)();
  sub_100009F1C(0, &qword_10057BC28, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() configurationWithActions:isa];

  [v6 setPerformsFirstActionWithFullSwipe:1];
  [v6 _setSwipeActionsStyle:1];

  return v6;
}

uint64_t sub_1002A016C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_100168088(&qword_10057BC20, &qword_1004091B8);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = type metadata accessor for ShowHero();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100577EA0, qword_1004051E8);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for ShowOffer();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004428(a1, v27);
  sub_100168088(&qword_1005748C0, qword_1004060D0);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v16 = *(v11 + 56);
    v15(v9, 0, 1, v10);
    v17 = *(v11 + 32);
    v17(v13, v9, v10);
    v17(a2, v13, v10);
    return v16(a2, 0, 1, v10);
  }

  v24 = *(v11 + 56);
  v15(v9, 1, 1, v10);
  sub_100009104(v9, &qword_100577EA0, qword_1004051E8);
  sub_100004428(a1, v27);
  type metadata accessor for LegacyLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_100004428(a1, v27);
    v19 = swift_dynamicCast();
    v20 = *(v26 + 56);
    if (v19)
    {
      v20(v5, 0, 1, v6);
      v21 = v25;
      sub_1002A8FC0(v5, v25, &type metadata accessor for ShowHero);
      if (ShowHero.contextAction.getter())
      {
        type metadata accessor for PodcastContextAction();
        if (swift_dynamicCastClass())
        {
          PodcastContextAction.podcastOffer.getter();

          sub_1002A9028(v21, &type metadata accessor for ShowHero);
          goto LABEL_14;
        }
      }

      sub_1002A9028(v21, &type metadata accessor for ShowHero);
    }

    else
    {
      v20(v5, 1, 1, v6);
      sub_100009104(v5, &qword_10057BC20, &qword_1004091B8);
    }

    v22 = 1;
    return v24(a2, v22, 1, v10);
  }

  if (!dispatch thunk of LegacyLockup.contextAction.getter())
  {
LABEL_9:

    goto LABEL_10;
  }

  type metadata accessor for PodcastContextAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_9;
  }

  PodcastContextAction.podcastOffer.getter();

LABEL_14:
  v22 = 0;
  return v24(a2, v22, 1, v10);
}

char *sub_1002A0600(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_38:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_39:
    v5 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return v5;
    }

    goto LABEL_40;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_39;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage;
  while (2)
  {
    v33 = v6;
LABEL_5:
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_37;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      v8 = dispatch thunk of LegacyLockup.buttonAction.getter();

      if (!v8)
      {

        return 0;
      }

      type metadata accessor for LibraryStationEpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for LibraryEpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        v9 = LibraryEpisodeOfferAction.episodeUuid.getter();
        v28 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100243134((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v13 = &v5[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v28;
        if (v4 != v3)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_34;
      }
    }

    v14 = LibraryEpisodeOfferAction.episodeUuid.getter();
    v29 = v15;
    v31 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v26 = sub_100243134((v16 > 1), v17 + 1, 1, v5);
      v18 = v17 + 1;
      v5 = v26;
    }

    *(v5 + 2) = v18;
    v19 = &v5[16 * v17];
    *(v19 + 4) = v31;
    *(v19 + 5) = v29;
    v20 = LibraryStationEpisodeOfferAction.stationUuid.getter();
    v30 = v21;
    v22 = v33;
    v32 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100243134(0, *(v33 + 2) + 1, 1, v33);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_100243134((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[16 * v24];
    v6 = v22;
    *(v25 + 4) = v32;
    *(v25 + 5) = v30;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_34:
  if (*(v5 + 2))
  {
    return v5;
  }

LABEL_40:

  return 0;
}